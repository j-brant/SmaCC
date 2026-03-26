Class {
	#name : 'ElixirScanner',
	#superclass : 'SmaCCScanner',
	#instVars : [
		'lastWasEol',
		'lastTokenValue',
		'eolSuppressionSet'
	],
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated-initialization' }
ElixirScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(56 'do' 9) #(56 'end' 10) #(56 'false' 11) #(56 'fn' 12) #(56 'in' 43) #(56 'nil' 13) #(56 'true' 14) #(56 'when' 33) #(60 'do' 9) #(60 'end' 10) #(60 'false' 11) #(60 'fn' 12) #(60 'in' 43) #(60 'nil' 13) #(60 'true' 14) #(60 'when' 33) #(53 '%{}' 30))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : 'generated' }
ElixirScanner >> aliasId [
	^ 58
]

{ #category : 'generated' }
ElixirScanner >> block_identifierId [
	^ 60
]

{ #category : 'as yet unclassified' }
ElixirScanner >> bracketDepth [
	^ bracketDepth ifNil: [ 0 ]
]

{ #category : 'generated' }
ElixirScanner >> bracket_identifierId [
	^ 155
]

{ #category : 'as yet unclassified' }
ElixirScanner >> buildEolSuppressionSet [
	"Pre-scan source text to find newline positions inside bracket nesting
	 where eol should be suppressed. Skips strings, heredocs, comments.
	 Tracks do/fn/end blocks so eol inside fn...end within brackets is preserved."
	| src size suppressSet |
	src := stream contents.
	size := src size.
	suppressSet := Set new.
	self prescanSource: src size: size into: suppressSet.
	^ suppressSet
]

{ #category : 'private' }
ElixirScanner >> prescanAt: i src: src size: size bracketDepth: bd blockDepth: bld suppressSet: set [
	"Process one character/token at position i. Return {nextI. newBd. newBld}."
	| c |
	c := src at: i.

	"Comment: skip to end of line"
	c = $# ifTrue: [
		| j | j := i.
		[j <= size and: [(src at: j) ~~ Character lf]] whileTrue: [j := j + 1].
		^ {j. bd. bld}].

	"Triple-double-quote heredoc"
	(c = $" and: [i + 2 <= size and: [(src at: i+1) = $" and: [(src at: i+2) = $"]]]) ifTrue: [
		^ {(self skipHeredoc: $" at: i in: src size: size). bd. bld}].

	"Double-quote string"
	c = $" ifTrue: [
		^ {(self skipString: $" at: i in: src size: size). bd. bld}].

	"Triple-single-quote heredoc"
	(c = $' and: [i + 2 <= size and: [(src at: i+1) = $' and: [(src at: i+2) = $']]]) ifTrue: [
		^ {(self skipHeredoc: $' at: i in: src size: size). bd. bld}].

	"Single-quote charlist"
	c = $' ifTrue: [
		^ {(self skipString: $' at: i in: src size: size). bd. bld}].

	"Open <<"
	(c = $< and: [i + 1 <= size and: [(src at: i+1) = $<]]) ifTrue: [
		^ {i + 2. bd + 1. bld}].

	"Close >>"
	(c = $> and: [i + 1 <= size and: [(src at: i+1) = $>]]) ifTrue: [
		| newBd | newBd := (bd - 1) max: 0.
		^ {i + 2. newBd. (newBd = 0 ifTrue: [0] ifFalse: [bld])}].

	"Open bracket"
	(c = $( or: [c = $[ or: [c = ${]]) ifTrue: [
		^ {i + 1. bd + 1. bld}].

	"Close bracket"
	(c = $) or: [c = $] or: [c = $}]]) ifTrue: [
		| newBd | newBd := (bd - 1) max: 0.
		^ {i + 1. newBd. (newBd = 0 ifTrue: [0] ifFalse: [bld])}].

	"Identifier/keyword"
	(c isLetter or: [c = $_]) ifTrue: [
		| j word newBld |
		j := i.
		[j <= size and: [(src at: j) isAlphaNumeric or: [(src at: j) = $_ or: [(src at: j) = $? or: [(src at: j) = $!]]]]]
			whileTrue: [j := j + 1].
		word := src copyFrom: i to: j - 1.
		newBld := bld.
		bd > 0 ifTrue: [
			(word = 'do' or: [word = 'fn']) ifTrue: [newBld := bld + 1].
			word = 'end' ifTrue: [newBld := (bld - 1) max: 0]].
		^ {j. bd. newBld}].

	"Newline"
	(c = Character lf or: [c = Character cr]) ifTrue: [
		(bd > 0 and: [bld = 0]) ifTrue: [set add: i].
		(c = Character cr and: [i + 1 <= size and: [(src at: i+1) = Character lf]])
			ifTrue: [
				(bd > 0 and: [bld = 0]) ifTrue: [set add: i + 1].
				^ {i + 2. bd. bld}].
		^ {i + 1. bd. bld}].

	"Default"
	^ {i + 1. bd. bld}
]

{ #category : 'private' }
ElixirScanner >> prescanSource: src size: size into: suppressSet [
	| i bd bld |
	i := 1. bd := 0. bld := 0.
	[i <= size] whileTrue: [
		| result |
		result := self prescanAt: i src: src size: size bracketDepth: bd blockDepth: bld suppressSet: suppressSet.
		i := result first.
		bd := result second.
		bld := result third]
]

{ #category : 'private' }
ElixirScanner >> skipHeredoc: quoteChar at: i in: src size: size [
	"Skip from opening triple-quote to closing triple-quote."
	| j |
	j := i + 3.
	"Skip to next line"
	[j <= size and: [(src at: j) ~~ Character lf]] whileTrue: [j := j + 1].
	j <= size ifTrue: [j := j + 1].
	"Find closing triple-quote"
	[j + 2 <= size and: [((src at: j) = quoteChar and: [(src at: j+1) = quoteChar and: [(src at: j+2) = quoteChar]]) not]]
		whileTrue: [j := j + 1].
	^ (j + 2 <= size ifTrue: [j + 3] ifFalse: [size + 1])
]

{ #category : 'private' }
ElixirScanner >> skipString: quoteChar at: i in: src size: size [
	"Skip from opening quote to closing quote, handling backslash escapes."
	| j |
	j := i + 1.
	[j <= size and: [(src at: j) ~= quoteChar or: [(src at: j - 1) = $\]]]
		whileTrue: [j := j + 1].
	^ j + 1 min: size + 1
]

{ #category : 'accessing' }
ElixirScanner >> currentState [
	| state |
	state := super currentState.
	state attributeNamed: #lastWasEol put: self lastWasEol.
	state attributeNamed: #lastTokenValue put: lastTokenValue.
	^ state
]

{ #category : 'generated' }
ElixirScanner >> do_identifierId [
	^ 156
]

{ #category : 'private' }
ElixirScanner >> dot_call_op [
	stream position: stream position - 1.
	^ self createTokenFor: '.'
]

{ #category : 'generated' }
ElixirScanner >> dot_call_opId [
	^ 61
]

{ #category : 'generated' }
ElixirScanner >> dot_opId [
	^ 54
]

{ #category : 'generated' }
ElixirScanner >> dual_opId [
	^ 46
]

{ #category : 'generated' }
ElixirScanner >> emptySymbolTokenId [
	^ 159
]

{ #category : 'private' }
ElixirScanner >> eol [
	"Suppress eol inside bracket nesting (but not inside do/fn blocks).
	 After comma: also suppress. Otherwise: mark lastWasEol for parser."
	(lastTokenValue = ',') ifTrue: [
		self resetScanner.
		^ self scanForToken ].
	(self eolSuppressionSet includes: start) ifTrue: [
		self resetScanner.
		^ self scanForToken ].
	lastWasEol := true.
	^ self whitespace
]

{ #category : 'generated' }
ElixirScanner >> eolId [
	^ 28
]

{ #category : 'as yet unclassified' }
ElixirScanner >> eolSuppressionSet [
	^ eolSuppressionSet ifNil: [eolSuppressionSet := self buildEolSuppressionSet]
]

{ #category : 'generated' }
ElixirScanner >> errorTokenId [
	^ 160
]

{ #category : 'generated' }
ElixirScanner >> identifierId [
	^ 56
]

{ #category : 'generated' }
ElixirScanner >> interpolatedStringEndId [
	^ 21
]

{ #category : 'generated' }
ElixirScanner >> interpolatedStringMidId [
	^ 20
]

{ #category : 'private' }
ElixirScanner >> kw_identifier [
	| string |
	string := outputStream contents.
	stream peek == $:
		ifTrue: [ stream position: stream position - 1.
			matchActions := string first isUppercase
				ifTrue: [ {self aliasId} ]
				ifFalse: [ string first = $"
						ifTrue: [ {self stringId} ]
						ifFalse: [ {self identifierId} ] ] ].
	^ self createTokenFor: string
]

{ #category : 'generated' }
ElixirScanner >> kw_identifierId [
	^ 57
]

{ #category : 'accessing' }
ElixirScanner >> lastTokenValue [
	^ lastTokenValue
]

{ #category : 'accessing' }
ElixirScanner >> lastWasEol [
	^ lastWasEol
]

{ #category : 'accessing' }
ElixirScanner >> lastWasEol: anObject [
	lastWasEol := anObject
]

{ #category : 'generated' }
ElixirScanner >> map_opId [
	^ 30
]

{ #category : 'accessing' }
ElixirScanner >> next [
	| token |
	lastWasEol := false.
	token := super next.
	token ifNotNil: [
		lastWasEol ifFalse: [ lastTokenValue := token value ].
		"Combine not + in into a single not_in token"
		(token value = 'not') ifTrue: [
			| savedPos savedState nextTok |
			savedPos := self position.
			savedState := self currentState.
			nextTok := super next.
			(nextTok notNil and: [nextTok value = 'in']) ifTrue: [
				| atEnd nextChar |
				atEnd := self position >= stream size.
				nextChar := atEnd ifTrue: [$ ] ifFalse: [stream contents at: self position + 1].
				(atEnd or: [nextChar isAlphaNumeric not and: [nextChar ~= $_]]) ifTrue: [
					token := token class
						value: 'not in'
						start: token startPosition
						ids: nextTok ids.
					lastTokenValue := token value.
					^ token]].
			self restoreState: savedState.
			self setPosition: savedPos]].
	^ token
]

{ #category : 'generated' }
ElixirScanner >> op_identifierId [
	^ 157
]

{ #category : 'generated' }
ElixirScanner >> paren_identifierId [
	^ 158
]

{ #category : 'as yet unclassified' }
ElixirScanner >> prescanAt: i src: src size: size bracketDepth: bd blockDepth: bld suppressSet: set [
	"Process one character/token at position i. Return {nextI. newBd. newBld}."
	| c |
	c := src at: i.

	"Comment: skip to end of line"
	c = $# ifTrue: [
		| j | j := i.
		[j <= size and: [(src at: j) ~~ Character lf]] whileTrue: [j := j + 1].
		^ {j. bd. bld}].

	"Triple-double-quote heredoc"
	(c = $" and: [i + 2 <= size and: [(src at: i+1) = $" and: [(src at: i+2) = $"]]]) ifTrue: [
		^ {(self skipHeredoc: $" at: i in: src size: size). bd. bld}].

	"Double-quote string"
	c = $" ifTrue: [
		^ {(self skipString: $" at: i in: src size: size). bd. bld}].

	"Triple-single-quote heredoc"
	(c = $' and: [i + 2 <= size and: [(src at: i+1) = $' and: [(src at: i+2) = $']]]) ifTrue: [
		^ {(self skipHeredoc: $' at: i in: src size: size). bd. bld}].

	"Single-quote charlist"
	c = $' ifTrue: [
		^ {(self skipString: $' at: i in: src size: size). bd. bld}].

	"Open <<"
	(c = $< and: [i + 1 <= size and: [(src at: i+1) = $<]]) ifTrue: [
		^ {i + 2. bd + 1. bld}].

	"Close >>"
	(c = $> and: [i + 1 <= size and: [(src at: i+1) = $>]]) ifTrue: [
		| newBd | newBd := (bd - 1) max: 0.
		^ {i + 2. newBd. (newBd = 0 ifTrue: [0] ifFalse: [bld])}].

	"Open bracket"
	(c = $( or: [c = $[ or: [c = ${]]) ifTrue: [
		^ {i + 1. bd + 1. bld}].

	"Close bracket"
	(c = $) or: [c = $] or: [c = $}]]) ifTrue: [
		| newBd | newBd := (bd - 1) max: 0.
		^ {i + 1. newBd. (newBd = 0 ifTrue: [0] ifFalse: [bld])}].

	"Identifier/keyword"
	(c isLetter or: [c = $_]) ifTrue: [
		| j word newBld |
		j := i.
		[j <= size and: [(src at: j) isAlphaNumeric or: [(src at: j) = $_ or: [(src at: j) = $? or: [(src at: j) = $!]]]]]
			whileTrue: [j := j + 1].
		word := src copyFrom: i to: j - 1.
		newBld := bld.
		bd > 0 ifTrue: [
			(word = 'do' or: [word = 'fn']) ifTrue: [newBld := bld + 1].
			word = 'end' ifTrue: [newBld := (bld - 1) max: 0]].
		^ {j. bd. newBld}].

	"Newline"
	(c = Character lf or: [c = Character cr]) ifTrue: [
		(bd > 0 and: [bld = 0]) ifTrue: [set add: i].
		(c = Character cr and: [i + 1 <= size and: [(src at: i+1) = Character lf]])
			ifTrue: [
				(bd > 0 and: [bld = 0]) ifTrue: [set add: i + 1].
				^ {i + 2. bd. bld}].
		^ {i + 1. bd. bld}].

	"Default"
	^ {i + 1. bd. bld}
]

{ #category : 'as yet unclassified' }
ElixirScanner >> prescanSource: src size: size into: suppressSet [
	| i bd bld |
	i := 1. bd := 0. bld := 0.
	[i <= size] whileTrue: [
		| result |
		result := self prescanAt: i src: src size: size bracketDepth: bd blockDepth: bld suppressSet: suppressSet.
		i := result first.
		bd := result second.
		bld := result third]
]

{ #category : 'accessing' }
ElixirScanner >> restoreState: aSmaCCScannerState [
	super restoreState: aSmaCCScannerState.
	self lastWasEol: (aSmaCCScannerState attributeNamed: #lastWasEol).
	lastTokenValue := aSmaCCScannerState attributeNamed: #lastTokenValue
]

{ #category : 'generated' }
ElixirScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X20 ].
	currentCharacter == $! ifTrue: [ ^ self scan1X19 ].
	currentCharacter == $" ifTrue: [ ^ self scan3 ].
	^ self scan1X25
]

{ #category : 'generated' }
ElixirScanner >> scan10 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan11 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan11 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan13 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan12 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan13 ].
					^ self scan12 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan13 ].
			^ self scan12 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan12 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan13 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan13 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(23) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan13 ].
			^ self scan12 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan12
]

{ #category : 'generated' }
ElixirScanner >> scan14 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan17 ].
	currentCharacter == $\ ifTrue: [ ^ self scan16 ].
	^ self scan15
]

{ #category : 'generated' }
ElixirScanner >> scan15 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $\ ifTrue: [ ^ self scan16 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan16 [
	self step.
	^ self scan15
]

{ #category : 'generated' }
ElixirScanner >> scan17 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan18 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ self step.
					currentCharacter == $'
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan20 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan19 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan20 ].
					^ self scan19 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan20 ].
			^ self scan19 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan19 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan20 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan21 ].
	currentCharacter == $_ ifTrue: [ ^ self scan26 ].
	currentCharacter == $b ifTrue: [ ^ self scan27 ].
	currentCharacter == $o ifTrue: [ ^ self scan28 ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ [ self recordMatch: #(17).
					self step.
					currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan25 ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X10 [
	self recordMatch: #(35).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(35 42) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(39).
			self step.
			currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(39) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X11 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(6).
			self step.
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X12 [
	self recordMatch: #(46 49).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X13 [
	self recordMatch: #(29 53).
	self step.
	currentCharacter == ${
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(30 53) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X14 [
	[ self recordMatch: #(26).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X15 [
	self recordMatch: #(49).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(44) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X16 [
	self recordMatch: #(47).
	self step.
	currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(48) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X17 [
	self recordMatch: #(46 49).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X18 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $&
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $& ifTrue: [ ^ self recordAndReportMatch: #(40) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X19 [
	self recordMatch: #(49).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan2 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X2 [
	self recordMatch: #(41).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(5).
			self step.
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(41) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(45) ].
	currentCharacter == $|
		ifTrue: [ self step.
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ].
			^ self reportLastMatch ].
	currentCharacter == $~ ifTrue: [ ^ self scan35 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X20 [
	self recordMatch: #(28).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X21 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(53) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X22 [
	self step.
	currentCharacter == $\ ifTrue: [ self step ].
	^ self recordAndReportMatch: #(52)
]

{ #category : 'generated' }
ElixirScanner >> scan1X23 [
	currentCharacter == $a ifTrue: [ ^ self scan1X4 ].
	currentCharacter == $n ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $o ifTrue: [ ^ self scan1X5 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X10 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $~ ifTrue: [ ^ self scan38 ].
	currentCharacter isDigit ifTrue: [ ^ self scan25 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X14 ].
	currentCharacter isUppercase ifTrue: [ ^ self scan1X6 ].
	(currentCharacter isLowercase or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X24 [
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $: ifTrue: [ ^ self scan29 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(4 59) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X2 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $? ifTrue: [ ^ self scan1X22 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(50) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $\ ifTrue: [ ^ self scan1X21 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $^ ifTrue: [ ^ self scan1X15 ].
	^ self scan1X23
]

{ #category : 'generated' }
ElixirScanner >> scan1X25 [
	currentCharacter == $# ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $% ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X18 ].
	currentCharacter == $' ifTrue: [ ^ self scan14 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(47) ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X17 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $/ ifTrue: [ ^ self scan1X16 ].
	^ self scan1X24
]

{ #category : 'generated' }
ElixirScanner >> scan1X3 [
	self recordMatch: #(56 60).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(56 60).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(49 56 60).
					self step.
					currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ] ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan37 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X4 [
	self recordMatch: #(56 60).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(56 60).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
			currentCharacter == $d
				ifTrue: [ self recordMatch: #(40 56 60).
					self step.
					currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ] ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan37 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X5 [
	self recordMatch: #(56 60).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(39 56 60).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ] ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan37 ].
	(currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ])
		ifTrue: [ ^ self scan36 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X6 [
	[ self recordMatch: #(58).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	('!?' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(58).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
			^ self reportLastMatch ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X7 [
	[ self recordMatch: #(27).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X8 [
	self recordMatch: #(38).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan2 ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan1X9 [
	self recordMatch: #(53 54).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(61) ].
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(45).
			self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(53) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan2 [
	self recordMatch: #(32).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(32) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan20 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''') ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan20 ].
			^ self scan19 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan19
]

{ #category : 'generated' }
ElixirScanner >> scan21 [
	self step.
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(51).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan21 ].
			currentCharacter isDigit ] whileTrue.
			('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan22 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	('+-' includes: currentCharacter) ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan23 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan24 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan24 [
	[ self recordMatch: #(51).
	self step.
	currentCharacter == $_ ifTrue: [ ^ self scan23 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan25 [
	[ self recordMatch: #(17).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan21 ].
	currentCharacter == $_ ifTrue: [ ^ self scan26 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan26 [
	self step.
	currentCharacter isDigit ifTrue: [ ^ self scan25 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan27 [
	self step.
	(currentCharacter between: $0 and: $1)
		ifTrue: [ [ self recordMatch: #(17).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan27 ].
			currentCharacter between: $0 and: $1 ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan28 [
	self step.
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(17).
			self step.
			currentCharacter == $_ ifTrue: [ ^ self scan28 ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29 [
	self step.
	currentCharacter == $! ifTrue: [ ^ self scan29X11 ].
	currentCharacter == $" ifTrue: [ ^ self scan31 ].
	currentCharacter == $% ifTrue: [ ^ self scan29X10 ].
	currentCharacter == $& ifTrue: [ ^ self scan29X15 ].
	currentCharacter == $' ifTrue: [ ^ self scan29X5 ].
	currentCharacter == $+ ifTrue: [ ^ self scan29X9 ].
	currentCharacter == $- ifTrue: [ ^ self scan29X8 ].
	currentCharacter == $. ifTrue: [ ^ self scan29X14 ].
	currentCharacter == $: ifTrue: [ ^ self scan29X2 ].
	currentCharacter == $< ifTrue: [ ^ self scan29X1 ].
	currentCharacter == $= ifTrue: [ ^ self scan29X4 ].
	^ self scan29X16
]

{ #category : 'generated' }
ElixirScanner >> scan29X1 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $<
		ifTrue: [ self step.
			currentCharacter == $> ifTrue: [ ^ self scan33 ].
			('<~' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			^ self reportLastMatch ].
	currentCharacter == $| ifTrue: [ ^ self scan33 ].
	currentCharacter == $~ ifTrue: [ ^ self scan34 ].
	(currentCharacter == $- or: [ currentCharacter between: $= and: $> ])
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X10 [
	self recordMatch: #(18).
	self step.
	currentCharacter == ${ ifTrue: [ ^ self scan32 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X11 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan30 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X12 [
	self step.
	currentCharacter == $\ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X13 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan34 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X14 [
	(self scanForString: '..' match: #(18))
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X15 [
	(self scanForString: '&&' match: #(18))
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X16 [
	currentCharacter == $> ifTrue: [ ^ self scan29X3 ].
	currentCharacter == $\ ifTrue: [ ^ self scan29X12 ].
	currentCharacter == $^ ifTrue: [ ^ self scan29X7 ].
	currentCharacter == ${ ifTrue: [ ^ self scan32 ].
	currentCharacter == $| ifTrue: [ ^ self scan29X6 ].
	currentCharacter == $~ ifTrue: [ ^ self scan29X13 ].
	('*/' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	(currentCharacter isLetter or: [ currentCharacter == $_ ])
		ifTrue: [ [ self recordMatch: #(18).
			self step.
			('!?' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			currentCharacter isAlphaNumeric or: [ '@_' includes: currentCharacter ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X2 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self step.
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X3 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $> ifTrue: [ ^ self scan33 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X4 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self scan30 ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X5 [
	self step.
	currentCharacter ~~ $'
		ifTrue: [ [ self step.
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X6 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(18).
			self step.
			currentCharacter == $| ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X7 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $^
		ifTrue: [ self step.
			currentCharacter == $^ ifTrue: [ ^ self recordAndReportMatch: #(18) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X8 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $- ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan29X9 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $+ ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan3 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan10 ].
	currentCharacter == $# ifTrue: [ ^ self scan5 ].
	currentCharacter == $\ ifTrue: [ ^ self scan6 ].
	^ self scan4
]

{ #category : 'generated' }
ElixirScanner >> scan30 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan31 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	currentCharacter == $#
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			(currentCharacter <= $z or: [ currentCharacter >= $| ])
				ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan31 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan32 [
	self step.
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan33 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan34 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan35 [
	self recordMatch: #(42).
	self step.
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(42) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan36 [
	[ self recordMatch: #(56 60).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	('!?' includes: currentCharacter) ifTrue: [ ^ self scan37 ].
	currentCharacter isAlphaNumeric or: [ currentCharacter == $_ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan37 [
	self recordMatch: #(56 60).
	self step.
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan38 [
	self step.
	currentCharacter == $> ifTrue: [ ^ self scan35 ].
	currentCharacter == $~ ifTrue: [ ^ self scan38X2 ].
	(currentCharacter between: $A and: $Z) ifTrue: [ ^ self scan39 ].
	(currentCharacter between: $a and: $z)
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan38X1 ].
			currentCharacter == $' ifTrue: [ ^ self scan52 ].
			currentCharacter == $( ifTrue: [ ^ self scan54 ].
			currentCharacter == $/ ifTrue: [ ^ self scan56 ].
			currentCharacter == $< ifTrue: [ ^ self scan58 ].
			currentCharacter == $[ ifTrue: [ ^ self scan60 ].
			currentCharacter == ${ ifTrue: [ ^ self scan62 ].
			currentCharacter == $| ifTrue: [ ^ self scan64 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan38X1 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan40 ].
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	^ self scan49
]

{ #category : 'generated' }
ElixirScanner >> scan38X2 [
	self step.
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(49) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan39 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan40 ].
			true
				ifTrue: [ [ self step.
					currentCharacter == $"
						ifTrue: [ [ self recordMatch: #(55).
							self step.
							(currentCharacter between: $A and: $Z)
								or: [ currentCharacter between: $a and: $z ] ] whileTrue.
							^ self reportLastMatch ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $' ifTrue: [ ^ self scan44 ].
	currentCharacter == $(
		ifTrue: [ [ self step.
			currentCharacter == $)
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $/
		ifTrue: [ [ self step.
			currentCharacter == $/
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $<
		ifTrue: [ [ self step.
			currentCharacter == $>
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $[
		ifTrue: [ [ self step.
			currentCharacter == $]
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == ${
		ifTrue: [ [ self step.
			currentCharacter == $}
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	currentCharacter == $|
		ifTrue: [ [ self step.
			currentCharacter == $|
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan4 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(57) ].
			^ self reportLastMatch ].
	currentCharacter == $# ifTrue: [ ^ self scan5 ].
	currentCharacter == $\ ifTrue: [ ^ self scan6 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan40 [
	self recordMatch: #(55).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan41 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan41 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ self step.
					currentCharacter == $"
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan43 ].
							(currentCharacter <= $! or: [ currentCharacter >= $# ])
								ifTrue: [ ^ self scan42 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan43 ].
					^ self scan42 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan43 ].
			^ self scan42 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan42 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan43 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan43 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan43 ].
			^ self scan42 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan42
]

{ #category : 'generated' }
ElixirScanner >> scan44 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan45 ].
	true
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan45 [
	self recordMatch: #(55).
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan46 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan46 [
	[ self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ [ self step.
			currentCharacter == $'
				ifTrue: [ self step.
					currentCharacter == $'
						ifTrue: [ self step.
							(currentCharacter == Character lf
								or: [ currentCharacter == Character cr ]) ifTrue: [ ^ self scan48 ].
							(currentCharacter <= $& or: [ currentCharacter >= $( ])
								ifTrue: [ ^ self scan47 ].
							^ self reportLastMatch ].
					(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
						ifTrue: [ ^ self scan48 ].
					^ self scan47 ].
			currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
				whileTrue.
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan48 ].
			^ self scan47 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan47 [
	[ self step.
	(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan48 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan48 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ [ self recordMatch: #(55).
					self step.
					(currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan48 ].
			^ self scan47 ].
	(currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character cr or: [ currentCharacter == Character space ] ] ]
		whileTrue.
	^ self scan47
]

{ #category : 'generated' }
ElixirScanner >> scan49 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan5 [
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == $# ifTrue: [ ^ self scan8 ].
			currentCharacter == $:
				ifTrue: [ self recordMatch: #(57).
					self step.
					currentCharacter == $# ifTrue: [ ^ self scan8 ] ].
			currentCharacter == $\ ifTrue: [ ^ self scan9 ].
			(currentCharacter <= $! or: [ currentCharacter >= $$ ])
				ifTrue: [ ^ self scan7 ].
			^ self reportLastMatch ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self scan4
]

{ #category : 'generated' }
ElixirScanner >> scan50 [
	self step.
	currentCharacter == $u
		ifTrue: [ self step.
			currentCharacter == ${
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													currentCharacter == $} ifTrue: [ ^ self scan49 ].
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step ].
															currentCharacter == $} ifTrue: [ ^ self scan49 ] ] ] ] ] ].
					^ self reportLastMatch ].
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan51 ] ].
			^ self reportLastMatch ].
	currentCharacter == $x ifTrue: [ ^ self scan51 ].
	^ self scan49
]

{ #category : 'generated' }
ElixirScanner >> scan51 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan49 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan52 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan52 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan52 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan53 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan53 ].
			^ self scan52 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan53 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan52 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan54 [
	[ self step.
	currentCharacter == $)
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan54 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan54 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan55 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan55 ].
			^ self scan54 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan55 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan54 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan56 [
	[ self step.
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan56 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan56 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan57 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan57 ].
			^ self scan56 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan57 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan56 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan58 [
	[ self step.
	currentCharacter == $>
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan58 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan58 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan59 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan59 ].
			^ self scan58 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan59 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan58 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan6 [
	self step.
	^ self scan4
]

{ #category : 'generated' }
ElixirScanner >> scan60 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan60 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan60 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan61 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan61 ].
			^ self scan60 ].
	currentCharacter == $]
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan61 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan60 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan62 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan62 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan62 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan63 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan63 ].
			^ self scan62 ].
	currentCharacter == $}
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan63 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan62 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan64 [
	[ self step.
	currentCharacter == $\
		ifTrue: [ self step.
			currentCharacter == $u
				ifTrue: [ self step.
					currentCharacter == ${
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									(currentCharacter isDigit
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											(currentCharacter isDigit
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step.
													(currentCharacter isDigit
														or: [ (currentCharacter between: $A and: $F)
																or: [ currentCharacter between: $a and: $f ] ])
														ifTrue: [ self step.
															currentCharacter == $} ifTrue: [ ^ self scan64 ].
															(currentCharacter isDigit
																or: [ (currentCharacter between: $A and: $F)
																		or: [ currentCharacter between: $a and: $f ] ])
																ifTrue: [ self step.
																	(currentCharacter isDigit
																		or: [ (currentCharacter between: $A and: $F)
																				or: [ currentCharacter between: $a and: $f ] ])
																		ifTrue: [ self step ].
																	currentCharacter == $} ifTrue: [ ^ self scan64 ] ] ] ] ] ].
							^ self reportLastMatch ].
					(currentCharacter isDigit
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ ^ self scan65 ] ].
					^ self reportLastMatch ].
			currentCharacter == $x ifTrue: [ ^ self scan65 ].
			^ self scan64 ].
	currentCharacter == $|
		ifTrue: [ [ self recordMatch: #(55).
			self step.
			(currentCharacter between: $A and: $Z)
				or: [ currentCharacter between: $a and: $z ] ] whileTrue.
			^ self reportLastMatch ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan65 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan64 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan66 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $#
		ifTrue: [ self step.
			currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(20) ].
			^ self scan66 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan66 ].
	true ] whileTrue
]

{ #category : 'generated' }
ElixirScanner >> scan7 [
	[ self step.
	currentCharacter == $# ifTrue: [ ^ self scan8 ].
	currentCharacter == $\ ifTrue: [ ^ self scan9 ].
	currentCharacter <= $! or: [ currentCharacter >= $$ ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> scan8 [
	self step.
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self scan7
]

{ #category : 'generated' }
ElixirScanner >> scan9 [
	self step.
	^ self scan7
]

{ #category : 'generated' }
ElixirScanner >> scanForToken [
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #interpolatedString
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self scan66 ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
ElixirScanner >> semicolonId [
	^ 59
]

{ #category : 'as yet unclassified' }
ElixirScanner >> skipHeredoc: quoteChar at: i in: src size: size [
	"Skip from opening triple-quote to closing triple-quote."
	| j |
	j := i + 3.
	"Skip to next line"
	[j <= size and: [(src at: j) ~~ Character lf]] whileTrue: [j := j + 1].
	j <= size ifTrue: [j := j + 1].
	"Find closing triple-quote"
	[j + 2 <= size and: [((src at: j) = quoteChar and: [(src at: j+1) = quoteChar and: [(src at: j+2) = quoteChar]]) not]]
		whileTrue: [j := j + 1].
	^ (j + 2 <= size ifTrue: [j + 3] ifFalse: [size + 1])
]

{ #category : 'as yet unclassified' }
ElixirScanner >> skipString: quoteChar at: i in: src size: size [
	"Skip from opening quote to closing quote, handling backslash escapes."
	| j |
	j := i + 1.
	[j <= size and: [(src at: j) ~= quoteChar or: [(src at: j - 1) = $\]]]
		whileTrue: [j := j + 1].
	^ j + 1 min: size + 1
]

{ #category : 'generated' }
ElixirScanner >> stringId [
	^ 22
]

{ #category : 'generated' }
ElixirScanner >> struct_opId [
	^ 29
]

{ #category : 'generated' }
ElixirScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #whitespace #comment #eol nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #kw_identifier nil nil nil #dot_call_op)
]

{ #category : 'generated' }
ElixirScanner >> unary_opId [
	^ 49
]
