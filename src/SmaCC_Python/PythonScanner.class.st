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
	#(#(71 'and' 37) #(71 'as' 38) #(71 'assert' 39) #(71 'break' 40) #(71 'class' 41) #(71 'continue' 42) #(71 'def' 43) #(71 'del' 44) #(71 'elif' 45) #(71 'else' 46) #(71 'except' 47) #(71 'exec' 48) #(71 'finally' 49) #(71 'for' 50) #(71 'from' 51) #(71 'global' 52) #(71 'if' 53) #(71 'import' 54) #(71 'in' 55) #(71 'is' 56) #(71 'lambda' 57) #(71 'not' 58) #(71 'or' 59) #(71 'pass' 60) #(71 'print' 61) #(71 'raise' 62) #(71 'return' 63) #(71 'try' 64) #(71 'while' 65) #(71 'with' 66) #(71 'yield' 67))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
PythonScanner >> DEDENTId [
	^ 228
]

{ #category : #generated }
PythonScanner >> INDENTId [
	^ 229
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
	^ 93
]

{ #category : #private }
PythonScanner >> blankLine [
	"A blank line is ignored. However, if it contains comments, we need to recover them."

	lastLineStart := self position.
	(outputStream contents indexOf: $# ifAbsent: [  ])
		ifNotNil: [ :i | comments add: (Array with: start + i with: matchEnd) ].
	^ self whitespace
]

{ #category : #private }
PythonScanner >> emptyLine [
	"An empty line is also ignored in fact."

	lastLineStart := self position.
	^ self whitespace
]

{ #category : #generated }
PythonScanner >> emptySymbolTokenId [
	^ 230
]

{ #category : #generated }
PythonScanner >> errorTokenId [
	^ 231
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
	^ 96
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
	^ 98
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
	^ 94
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
	^ 97
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
	^ 99
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
	^ 95
]

{ #category : #generated }
PythonScanner >> scan1 [
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self recordAndReportMatch: #(93) ].
	currentCharacter == Character cr ifTrue: [ ^ self scan1X20 ].
	currentCharacter == $! ifTrue: [ ^ self scan1X22 ].
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	^ self scan1X25
]

{ #category : #generated }
PythonScanner >> scan10 [
	[ self recordMatch: #(86).
	self step.
	currentCharacter == $j
		ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
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
	[ self recordMatch: #(86).
	self step.
	currentCharacter == $j
		ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan13 [
	[ self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $j
		ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan14 [
	self recordMatch: #(71).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan6 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(71).
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
		ifTrue: [ self recordMatch: #(73).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan18 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan16 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(73) ].
	currentCharacter == $\ ifTrue: [ ^ self scan17 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(77) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
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
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ ^ self recordAndReportMatch: #(73) ].
			^ self scan18 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan18 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(83) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan19 [
	self step.
	currentCharacter == $'
		ifTrue: [ self recordMatch: #(73).
			self step.
			currentCharacter == $' ifTrue: [ ^ self scan22 ].
			^ self reportLastMatch ].
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(74) ].
	(currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X1 [
	self recordMatch: #(86).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X1X1 ].
	('Bb' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $1)
				ifTrue: [ [ self recordMatch: #(86).
					self step.
					currentCharacter between: $0 and: $1 ] whileTrue.
					('Ll' includes: currentCharacter)
						ifTrue: [ ^ self recordAndReportMatch: #(86) ] ].
			^ self reportLastMatch ].
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	('Oo' includes: currentCharacter)
		ifTrue: [ self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ [ self recordMatch: #(86).
					self step.
					currentCharacter between: $0 and: $7 ] whileTrue.
					('Ll' includes: currentCharacter)
						ifTrue: [ ^ self recordAndReportMatch: #(86) ] ].
			^ self reportLastMatch ].
	('Xx' includes: currentCharacter) ifTrue: [ ^ self scan1X1X2 ].
	('Ljl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X10 [
	self recordMatch: #(6).
	self step.
	currentCharacter == $*
		ifTrue: [ self recordMatch: #(7).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(8) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X11 [
	[ self recordMatch: #(92).
	self step.
	currentCharacter == Character tab
		or: [ currentCharacter == Character space ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X12 [
	self recordMatch: #(68).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(69) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X13 [
	self recordMatch: #(34).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(35) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X14 [
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(92) ].
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(92).
			self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(92) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X15 [
	self recordMatch: #(27).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X16 [
	self recordMatch: #(13).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X17 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X18 [
	self recordMatch: #(4).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X19 [
	self recordMatch: #(2).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X1X1 [
	[ self recordMatch: #(86).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	(currentCharacter between: $8 and: $9) ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter) ifTrue: [ ^ self scan11 ].
	('Ljl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X1X2 [
	self step.
	(currentCharacter isDigit
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ [ self recordMatch: #(86).
			self step.
			('Ll' includes: currentCharacter)
				ifTrue: [ ^ self recordAndReportMatch: #(86) ].
			currentCharacter isDigit
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ] ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X2 [
	self recordMatch: #(71).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan15 ].
	currentCharacter == $' ifTrue: [ ^ self scan19 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan23 ].
	('BUbu' includes: currentCharacter)
		ifTrue: [ self recordMatch: #(71).
			self step.
			currentCharacter == $" ifTrue: [ ^ self scan15 ].
			currentCharacter == $' ifTrue: [ ^ self scan19 ].
			('Rr' includes: currentCharacter) ifTrue: [ ^ self scan23 ] ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(71).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X20 [
	self recordMatch: #(93).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(93) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X21 [
	self recordMatch: #(15).
	self step.
	currentCharacter isDigit
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X22 [
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X23 [
	currentCharacter == $f ifTrue: [ ^ self scan1X2 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(98) ].
	currentCharacter == $| ifTrue: [ ^ self scan1X12 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(99) ].
	currentCharacter == $~ ifTrue: [ ^ self recordAndReportMatch: #(70) ].
	currentCharacter isDigit ifTrue: [ ^ self scan1X4 ].
	(currentCharacter == Character tab or: [ currentCharacter == Character space ])
		ifTrue: [ ^ self scan1X11 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	('BUbu' includes: currentCharacter) ifTrue: [ ^ self scan1X3 ].
	(currentCharacter between: $A and: $z) ifTrue: [ self scan1X5 ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X24 [
	currentCharacter == $0 ifTrue: [ ^ self scan1X1 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $< ifTrue: [ ^ self scan1X6 ].
	currentCharacter == $= ifTrue: [ ^ self scan1X15 ].
	currentCharacter == $> ifTrue: [ ^ self scan1X8 ].
	currentCharacter == $@ ifTrue: [ ^ self recordAndReportMatch: #(33) ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(96) ].
	currentCharacter == $\ ifTrue: [ ^ self scan1X14 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(97) ].
	currentCharacter == $^ ifTrue: [ ^ self scan1X13 ].
	currentCharacter == $` ifTrue: [ ^ self recordAndReportMatch: #(36) ].
	^ self scan1X23
]

{ #category : #generated }
PythonScanner >> scan1X25 [
	currentCharacter == $# ifTrue: [ ^ self scan1X7 ].
	currentCharacter == $% ifTrue: [ ^ self scan1X19 ].
	currentCharacter == $& ifTrue: [ ^ self scan1X18 ].
	currentCharacter == $' ifTrue: [ ^ self scan6 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(94) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(95) ].
	currentCharacter == $* ifTrue: [ ^ self scan1X10 ].
	currentCharacter == $+ ifTrue: [ ^ self scan1X17 ].
	currentCharacter == $, ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $- ifTrue: [ ^ self scan1X16 ].
	currentCharacter == $. ifTrue: [ ^ self scan1X21 ].
	currentCharacter == $/ ifTrue: [ ^ self scan1X9 ].
	^ self scan1X24
]

{ #category : #generated }
PythonScanner >> scan1X3 [
	self recordMatch: #(71).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan2 ].
	currentCharacter == $' ifTrue: [ ^ self scan6 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan14 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(71).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X4 [
	[ self recordMatch: #(86).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan10 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ ^ self scan11 ].
	('Ljl' includes: currentCharacter)
		ifTrue: [ ^ self recordAndReportMatch: #(86) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X5 [
	[ self recordMatch: #(71).
	self step.
	(currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
		whileTrue
]

{ #category : #generated }
PythonScanner >> scan1X6 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $<
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $>
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X7 [
	[ self recordMatch: #(91).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X8 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(31).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(32) ] ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan1X9 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $/
		ifTrue: [ self recordMatch: #(17).
			self step.
			currentCharacter == $=
				ifTrue: [ ^ self recordAndReportMatch: #(18) ].
			^ self reportLastMatch ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan2 [
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(72).
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
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(73) ].
	currentCharacter == $\ ifTrue: [ ^ self scan21 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(74) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
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
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ ^ self recordAndReportMatch: #(73) ].
			^ self scan22 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan22 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(80) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan23 [
	self recordMatch: #(71).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan19 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue: [ [ self recordMatch: #(71).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan24 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ ^ self recordAndReportMatch: #(85) ].
			^ self scan24 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan24 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(84) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan25 [
	[ self step.
	currentCharacter == $'
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ ^ self recordAndReportMatch: #(82) ].
			^ self scan25 ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan25 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(81) ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan26 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(79) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan26 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(78) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan27 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(76) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan27 ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(75) ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan28 [
	self recordMatch: #(88).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(88) ].
	^ self reportLastMatch
]

{ #category : #generated }
PythonScanner >> scan29 [
	[ self recordMatch: #(88).
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self recordAndReportMatch: #(88) ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan28 ].
	true ] whileTrue
]

{ #category : #generated }
PythonScanner >> scan3 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(72) ].
	currentCharacter == $\ ifTrue: [ ^ self scan4 ].
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
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
		ifTrue: [ (self scanForString: '""')
				ifTrue: [ ^ self recordAndReportMatch: #(72) ].
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
		ifTrue: [ self recordMatch: #(72).
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
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(72) ].
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
		ifTrue: [ (self scanForString: '''''')
				ifTrue: [ ^ self recordAndReportMatch: #(72) ].
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
			currentCharacter == $}
				ifTrue: [ ^ self scan27 ].
			^ self reportLastMatch ].
	scope == #fStringDouble
		ifTrue: [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self scan26 ].
			^ self reportLastMatch ].
	scope == #fLongStringSingle
		ifTrue: [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	scope == #fLongStringDouble
		ifTrue: [ self step.
			currentCharacter == $}
				ifTrue: [ ^ self scan24 ].
			^ self reportLastMatch ].
	scope == #default
		ifTrue: [ ^ self scan1 ].
	scope == #lineBegin
		ifTrue: [ self step.
			currentCharacter == Character lf
				ifTrue: [ ^ self recordAndReportMatch: #(87 88 90) ].
			currentCharacter == Character cr
				ifTrue: [ self recordMatch: #(87 88 90).
					self step.
					currentCharacter == Character lf
						ifTrue: [ ^ self recordAndReportMatch: #(87 88) ].
					^ self reportLastMatch ].
			currentCharacter == $#
				ifTrue: [ ^ self scan29 ].
			currentCharacter isSeparator
				ifTrue: [ [ self recordMatch: #(89).
					self step.
					currentCharacter == Character lf
						ifTrue: [ ^ self recordAndReportMatch: #(88) ].
					currentCharacter == Character cr
						ifTrue: [ ^ self scan28 ].
					currentCharacter == $#
						ifTrue: [ ^ self scan29 ].
					currentCharacter isSeparator ] whileTrue.
					^ self reportLastMatch ].
			^ self recordAndReportMatch: #(90) ].
	^ self reportLastMatch
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

{ #category : #generated }
PythonScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #emptyLine #blankLine #indent #noindent #comment #whitespace #NEWLINE #lparen #rparen #lbrack #rbrack #lcurly #rcurly)
]

{ #category : #accessing }
PythonScanner >> tokenStack [
	^ tokenStack ifNil: [ tokenStack := OrderedCollection new ]
]

{ #category : #accessing }
PythonScanner >> tokenStack: anObject [
	tokenStack := anObject
]
