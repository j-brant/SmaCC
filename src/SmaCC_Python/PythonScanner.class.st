Class {
	#name : #PythonScanner,
	#superclass : #SmaCCScanner,
	#instVars : [
		'lineJoiningStack',
		'indentStack',
		'tokenStack',
		'lastLineStart'
	],
	#category : #'SmaCC_Python'
}

{ #category : #'generated-initialization' }
PythonScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(76 'and' 40) #(76 'as' 41) #(76 'assert' 42) #(76 'async' 43) #(76 'await' 44) #(76 'break' 45) #(76 'class' 46) #(76 'continue' 47) #(76 'def' 48) #(76 'del' 49) #(76 'elif' 50) #(76 'else' 51) #(76 'except' 52) #(76 'exec' 53) #(76 'finally' 54) #(76 'for' 55) #(76 'from' 56) #(76 'global' 57) #(76 'if' 58) #(76 'import' 59) #(76 'in' 60) #(76 'is' 61) #(76 'lambda' 62) #(76 'not' 63) #(76 'or' 64) #(76 'pass' 65) #(76 'print' 66) #(76 'raise' 67) #(76 'return' 68) #(76 'try' 69) #(76 'while' 70) #(76 'with' 71) #(76 'yield' 72))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
PythonScanner >> DEDENTId [
	^ 241
]

{ #category : #generated }
PythonScanner >> INDENTId [
	^ 242
]

{ #category : #private }
PythonScanner >> NEWLINE [
	"Handle the newline, depending on the mode. Line joining and non-joining is not working in the scanner as I expected, but this may be for the best."

	self lineJoiningStack == 0
		ifTrue: [ 
			matchActions := Array with: self NEWLINEId.
			self scope: #lineBegin.
			lastLineStart := self position.
			^ self createTokenFor: '' ]
		ifFalse: [ ^ self whitespace ]
]

{ #category : #generated }
PythonScanner >> NEWLINEId [
	^ 98
]

{ #category : #generated }
PythonScanner >> Python2Id [
	^ 243
]

{ #category : #private }
PythonScanner >> blankLine [
	"A blank line is ignored. However, if it contains comments, we need to recover them."

	lastLineStart := self position.
	(outputStream contents indexOf: $# ifAbsent: [  ])
		ifNotNil: [ :i | comments add: (Array with: start + i with: matchEnd) ].
	^ self whitespace
]

{ #category : #accessing }
PythonScanner >> currentState [
	| state |
	state := super currentState.
	state indentStack: indentStack copy.
	state lastLineStart: lastLineStart.
	state lineJoiningStack: lineJoiningStack.
	state tokenStack: tokenStack copy.
	^ state
]

{ #category : #private }
PythonScanner >> emptyLine [
	"An empty line is also ignored in fact."

	lastLineStart := self position.
	^ self whitespace
]

{ #category : #generated }
PythonScanner >> emptySymbolTokenId [
	^ 244
]

{ #category : #generated }
PythonScanner >> errorTokenId [
	^ 245
]

{ #category : #private }
PythonScanner >> indent [
	"Here we should generate the IDENT and DEDENT tokens"

	| string count |
	self scope: #default.
	string := outputStream contents.
	count := 0.
	string
		do: [ :each | 
			each = Character newPage
				ifTrue: [ count := 0 ].
			each = Character space
				ifTrue: [ count := count + 1 ].
			each = Character tab
				ifTrue: [ count := (count // 8 + 1) * 8 ] ].
	count = 0
		ifTrue: [ ^ super whitespace ].
	count > self indentStack last
		ifTrue: [ 
			self indentStack add: count.
			matchActions := Array with: self INDENTId.
			^ self createTokenFor: '' ].
	[ count < self indentStack last ]
		whileTrue: [ 
			matchActions := Array with: self DEDENTId.
			self tokenStack add: (self createTokenFor: '').
			self indentStack removeLast ].
	count = self indentStack last
		ifFalse: [ ^ self scannerError ].	"A bit crude, but shows an indentation error."
	^ self next
]

{ #category : #accessing }
PythonScanner >> indentStack [
	^ indentStack ifNil: [ indentStack := OrderedCollection with: 0 ]
]

{ #category : #initialize }
PythonScanner >> initialize [
	super initialize.
	scope := #lineBegin
]

{ #category : #accessing }
PythonScanner >> lasLineStart [
	^ lastLineStart ifNil: [ lastLineStart := 1 ]
]

{ #category : #private }
PythonScanner >> lbrack [
	"start of line joining mode"

	self lineJoiningStack: self lineJoiningStack + 1.
	matchActions := Array with: self lbrackId.
	^ self createTokenFor: '['
]

{ #category : #generated }
PythonScanner >> lbrackId [
	^ 101
]

{ #category : #private }
PythonScanner >> lcurly [
	"start of line joining mode"

	self lineJoiningStack: self lineJoiningStack + 1.
	matchActions := Array with: self lcurlyId.
	^ self createTokenFor: '{'
]

{ #category : #generated }
PythonScanner >> lcurlyId [
	^ 103
]

{ #category : #accessing }
PythonScanner >> lineJoiningStack [
	^ lineJoiningStack ifNil: [ lineJoiningStack := 0 ]
]

{ #category : #accessing }
PythonScanner >> lineJoiningStack: anObject [
	lineJoiningStack := anObject
]

{ #category : #private }
PythonScanner >> lparen [
	"start of line joining mode"

	self lineJoiningStack: self lineJoiningStack + 1.
	matchActions := Array with: self lparenId.
	^ self createTokenFor: '('
]

{ #category : #generated }
PythonScanner >> lparenId [
	^ 99
]

{ #category : #accessing }
PythonScanner >> next [
	self tokenStack isEmpty
		ifFalse: [ ^ self tokenStack removeFirst ].
	^ super next
]

{ #category : #private }
PythonScanner >> noindent [
	"We should revert to the beginning of the scan."

	self scope: #default.
	stream position: start.
	lastLineStart = start
		ifTrue: [ 
			[ self indentStack last > 0 ]
				whileTrue: [ 
					matchActions := Array with: self DEDENTId.
					self tokenStack add: (self createTokenFor: '').
					self indentStack removeLast ] ].
	^ self next
]

{ #category : #private }
PythonScanner >> rbrack [
	"end of line joining mode"

	self lineJoiningStack: self lineJoiningStack - 1.
	matchActions := Array with: self rbrackId.
	^ self createTokenFor: ']'
]

{ #category : #generated }
PythonScanner >> rbrackId [
	^ 102
]

{ #category : #private }
PythonScanner >> rcurly [
	"end of line joining mode"

	self lineJoiningStack: self lineJoiningStack - 1.
	matchActions := Array with: self rcurlyId.
	^ self createTokenFor: '}'
]

{ #category : #generated }
PythonScanner >> rcurlyId [
	^ 104
]

{ #category : #accessing }
PythonScanner >> restoreState: aSmaCCScannerState [
	super restoreState: aSmaCCScannerState.
	indentStack := aSmaCCScannerState indentStack copy.
	lastLineStart := aSmaCCScannerState lastLineStart.
	lineJoiningStack := aSmaCCScannerState lineJoiningStack.
	tokenStack := aSmaCCScannerState tokenStack copy
]

{ #category : #private }
PythonScanner >> rparen [
	"end of line joining mode"

	self lineJoiningStack: self lineJoiningStack - 1.
	matchActions := Array with: self rparenId.
	^ self createTokenFor: ')'
]

{ #category : #generated }
PythonScanner >> rparenId [
	^ 100
]

{ #category : #generated }
PythonScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(98) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X23 ].
	currentCharacter == $! ifTrue: [ ^ self scan1X24 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $# ifTrue: [ ^ self scan1X8 ].
	^ self scan1X27
]

{ #category : #generated }
PythonScanner >> scan10 [
	[ self recordMatch: #(91).
	self step.
	currentCharacter == $j ifTrue: [ ^ self recordAndReportMatch: #(91) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan11 [
	self step.
	('+-' includes: currentCharacter)
		ifTrue: [ self step ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan12 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan12 [
	[ self recordMatch: #(91).
	self step.
	currentCharacter == $j ifTrue: [ ^ self recordAndReportMatch: #(91) ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan13 [
	[ self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter == $j ifTrue: [ ^ self recordAndReportMatch: #(91) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan14 [
	self recordMatch: #(76).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $' ifTrue: [ ^ self scan6 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan15 [
	self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan18 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(82) ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan16 [
	[ self step.
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(82) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $!)
						or: [ currentCharacter >= $# ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan17 [
	self step.
	^ self scan16
]

{ #category : #generated }
PythonScanner >> scan18 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ self step.
			currentCharacter == $"
				ifTrue: [ self step.
					currentCharacter ~~ $" ifTrue: [ ^ self scan18 ].
					^ self reportLastMatch ].
			^ self scan18 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan18 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(88) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan19 [
	self step.
	currentCharacter == $'
		ifTrue: [ self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X1 [
	self recordMatch: #(91).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X1X1 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(91).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue.
					('Ll' includes: currentCharacter)
						ifTrue: [ ^ self recordAndReportMatch: #(91) ] ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(91).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue.
					('Ll' includes: currentCharacter)
						ifTrue: [ ^ self recordAndReportMatch: #(91) ] ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scan1X1X2 ].
	('Ljl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(91) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X10 [
	self recordMatch: #(18).
	self step.
	currentCharacter == $/
		ifTrue: [ self recordMatch: #(19).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(20) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X11 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $*
		ifTrue: [ self recordMatch: #(7).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(8) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X12 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $.
		ifTrue: [ self step.
			currentCharacter == $. ifTrue: [ ^ self recordAndReportMatch: #(17) ].
			^ self reportLastMatch ].
	currentCharacter isDigit ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X13 [
	self recordMatch: #(13).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X14 [
	[ self recordMatch: #(97).
	self step.
	currentCharacter == Character tab or: [ currentCharacter == Character space ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X15 [
	self recordMatch: #(73).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(74) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X16 [
	self recordMatch: #(37).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(38) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X17 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(97) ].
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(97).
			self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(97) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X18 [
	self recordMatch: #(30).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(31) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X19 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X1X1 [
	[ self recordMatch: #(91).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	('Ljl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(91) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X1X2 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(91).
			self step.
			('Ll' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(91) ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X2 [
	self recordMatch: #(76).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan24 ].
	currentCharacter == $' ifTrue: [ ^ self scan28 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan32 ].
	('BUbu' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(76).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan24 ].
			currentCharacter == $' ifTrue: [ ^ self scan28 ].
			('Rr' includes: currentCharacter) ifTrue: [ ^ self scan32 ] ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X20 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X21 [
	self recordMatch: #(4).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X22 [
	self recordMatch: #(2).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X23 [
	self recordMatch: #(98).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(98) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X24 [
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X25 [
	currentCharacter == $f ifTrue: [ ^ self scan1X2 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(103) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X15 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(104) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(75) ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X5 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X14 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('BUbu' includes: currentCharacter) ifTrue: [ ^ self scan1X4 ].
	(currentCharacter between: $A and: $z) ifTrue: [ self scan1X6 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X26 [
	currentCharacter == $: ifTrue: [ ^ self scan1X19 ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X18 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X9 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	currentCharacter == $F ifTrue: [ ^ self scan1X3 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(101) ].
	currentCharacter == $\ ifTrue: [ ^ self scan1X17 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(102) ].
	currentCharacter == $^ ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(39) ].
	^ self scan1X25
]

{ #category : #generated }
PythonScanner >> scan1X27 [
	currentCharacter == $% ifTrue: [ ^ self scan1X22 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X21 ].
	currentCharacter == $' ifTrue: [ ^ self scan6 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(99) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(100) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X11 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X20 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $/ ifTrue: [ ^ self scan1X10 ].
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	^ self scan1X26
]

{ #category : #generated }
PythonScanner >> scan1X3 [
	self recordMatch: #(76).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan15 ].
	currentCharacter == $' ifTrue: [ ^ self scan19 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan23 ].
	('BUbu' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(76).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan15 ].
			currentCharacter == $' ifTrue: [ ^ self scan19 ].
			('Rr' includes: currentCharacter) ifTrue: [ ^ self scan23 ] ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X4 [
	self recordMatch: #(76).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $' ifTrue: [ ^ self scan6 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X5 [
	[ self recordMatch: #(91).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	('Ljl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(91) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X6 [
	[ self recordMatch: #(76).
	self step.
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue
]

{ #category : #generated }
PythonScanner >> scan1X7 [
	self recordMatch: #(25).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(27) ].
			^ self reportLastMatch ].
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(29) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X8 [
	[ self recordMatch: #(96).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X9 [
	self recordMatch: #(32).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(34).
			self step.
			currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(35) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan2 [
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(77).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan5 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan4 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan3 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan20 [
	[ self step.
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ (currentCharacter between: (Character value: 14) and: $&)
						or: [ currentCharacter >= $( ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan21 [
	self step.
	^ self scan20
]

{ #category : #generated }
PythonScanner >> scan22 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ self step.
			currentCharacter == $'
				ifTrue: [ self step.
					currentCharacter ~~ $' ifTrue: [ ^ self scan22 ].
					^ self reportLastMatch ].
			^ self scan22 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan22 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(85) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan23 [
	self recordMatch: #(76).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan15 ].
	currentCharacter == $' ifTrue: [ ^ self scan19 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan24 [
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(78).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan27 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan26 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(82) ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan25 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan25 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(78) ].
	currentCharacter == $\ ifTrue: [ ^ self scan26 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(82) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan26 [
	self step.
	^ self scan25
]

{ #category : #generated }
PythonScanner >> scan27 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(78) ].
			^ self scan27 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan27 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(88) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan28 [
	self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(78).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan31 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan30 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan29 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan29 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(78) ].
	currentCharacter == $\ ifTrue: [ ^ self scan30 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan3 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	currentCharacter == $\ ifTrue: [ ^ self scan4 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan30 [
	self step.
	^ self scan29
]

{ #category : #generated }
PythonScanner >> scan31 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''') ifTrue: [ ^ self recordAndReportMatch: #(78) ].
			^ self scan31 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan31 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(85) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan32 [
	self recordMatch: #(76).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan24 ].
	currentCharacter == $' ifTrue: [ ^ self scan28 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(76).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan33 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(90) ].
			^ self scan33 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan33 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(89) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan34 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''') ifTrue: [ ^ self recordAndReportMatch: #(87) ].
			^ self scan34 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan34 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan35 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(84) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan35 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(83) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan36 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(81) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan36 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan37 [
	self recordMatch: #(93).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(93) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan38 [
	[ self recordMatch: #(93).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(93) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan37 ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan4 [
	self step.
	^ self scan3
]

{ #category : #generated }
PythonScanner >> scan5 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""') ifTrue: [ ^ self recordAndReportMatch: #(77) ].
			^ self scan5 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan5 ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan6 [
	self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(77).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan9 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan8 ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan7 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	currentCharacter == $\ ifTrue: [ ^ self scan8 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan8 [
	self step.
	^ self scan7
]

{ #category : #generated }
PythonScanner >> scan9 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''') ifTrue: [ ^ self recordAndReportMatch: #(77) ].
			^ self scan9 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan9 ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scanForToken [
	scope == #fStringSingle
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self scan36 ].
			('!:=' includes: currentCharacter)
				ifTrue: [ [ self step.
					currentCharacter == $} ifTrue: [ ^ self scan36 ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	scope == #fStringDouble
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self scan35 ].
			('!:=' includes: currentCharacter)
				ifTrue: [ [ self step.
					currentCharacter == $} ifTrue: [ ^ self scan35 ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	scope == #fLongStringSingle
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self scan34 ].
			('!:=' includes: currentCharacter)
				ifTrue: [ [ self step.
					currentCharacter == $} ifTrue: [ ^ self scan34 ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	scope == #fLongStringDouble
		ifTrue: [ self step.
			currentCharacter == $} ifTrue: [ ^ self scan33 ].
			('!:=' includes: currentCharacter)
				ifTrue: [ [ self step.
					currentCharacter == $} ifTrue: [ ^ self scan33 ].
					true ] whileTrue ].
			^ self reportLastMatch ].
	scope == #default ifTrue: [ ^ self scan1 ].
	scope == #lineBegin ifTrue: [ ^ self scanForTokenX1 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scanForTokenX1 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(92 93 95) ].
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(92 93 95).
			self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(92 93) ].
			^ self reportLastMatch ].
	currentCharacter == $# ifTrue: [ ^ self scan38 ].
	currentCharacter isSeparator
		ifTrue: [ [ self recordMatch: #(94).
			self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(93) ].
			currentCharacter == Character cr ifTrue: [ ^ self scan37 ].
			currentCharacter == $# ifTrue: [ ^ self scan38 ].
			currentCharacter isSeparator ] whileTrue.
			^ self reportLastMatch ].
	^ self recordAndReportMatch: #(95)
]

{ #category : #private }
PythonScanner >> scannerError [
	"Override to be able to reset indents at end of file. And also if it is necessary to create a NEWLINE token."

	(stream atEnd and: [ start == stream position ])
		ifTrue: [ 
			lastLineStart = start
				ifFalse: [ 
					matchActions := Array with: self NEWLINEId.
					self tokenStack add: (self createTokenFor: '').
					lastLineStart := start ].
			[ self indentStack last > 0 ]
				whileTrue: [ 
					matchActions := Array with: self DEDENTId.
					self tokenStack add: (self createTokenFor: '').
					self indentStack removeLast ].
			self tokenStack notEmpty
				ifTrue: [ returnMatchBlock value: self tokenStack removeFirst ] ].
	super scannerError
]

{ #category : #accessing }
PythonScanner >> stateClass [
	^ PythonScannerState
]

{ #category : #generated }
PythonScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #emptyLine #blankLine #indent #noindent #comment #whitespace #NEWLINE #lparen #rparen #lbrack #rbrack #lcurly #rcurly)
]

{ #category : #accessing }
PythonScanner >> tokenStack [
	^ tokenStack ifNil: [ tokenStack := OrderedCollection new ]
]

{ #category : #accessing }
PythonScanner >> tokenStack: anObject [
	tokenStack := anObject
]
