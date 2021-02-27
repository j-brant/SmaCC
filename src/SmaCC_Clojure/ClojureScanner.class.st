Class {
	#name : #ClojureScanner,
	#superclass : #SmaCCScanner,
	#category : #'SmaCC_Clojure'
}

{ #category : #'generated-initialization' }
ClojureScanner class >> initializeKeywordMap [
	keywordMap := Dictionary new.
	#(#(29 'false' 16) #(29 'nil' 17) #(29 'true' 18))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap
]

{ #category : #generated }
ClojureScanner >> emptySymbolTokenId [
	^ 59
]

{ #category : #generated }
ClojureScanner >> errorTokenId [
	^ 60
]

{ #category : #generated }
ClojureScanner >> numberId [
	^ 24
]

{ #category : #private }
ClojureScanner >> radixInteger [
	| radix numberActions |
	radix := outputStream contents allButLast asInteger.
	matchActions := nil.
	numberActions := {self numberId}.
	[ self step.
	currentCharacter notNil
		and: [ ((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ])
				and: [ currentCharacter digitValue < radix ] ] ]
		whileTrue: [ self recordMatch: numberActions ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan1 [
	[ self recordMatch: #(29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $9)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan10 [
	self recordMatch: #(24 29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan10X2 ].
	(currentCharacter between: $0 and: $7)
		ifTrue:
			[ ^ self scan10X1 ].
	^ self scan10X3
]

{ #category : #generated }
ClojureScanner >> scan10X1 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan8 ].
	currentCharacter between: $0 and: $7 ] whileTrue.
	^ self scan10X1X1
]

{ #category : #generated }
ClojureScanner >> scan10X1X1 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $8 and: $9)
										or: [ (currentCharacter between: $< and: $?)
												or: [ (currentCharacter between: $A and: $M)
														or: [ (currentCharacter between: $O and: $Z)
																or: [ currentCharacter == $_
																		or: [ (currentCharacter between: $a and: $z)
																				or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan10X2 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	(currentCharacter isDigit
		or: [ currentCharacter between: $A and: $F ])
		ifTrue:
			[ ^ self scan10X2X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $G and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan10X2X1 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit or: [ currentCharacter between: $A and: $F ] ]
		whileTrue.
	^ self scan10X2X1X1
]

{ #category : #generated }
ClojureScanner >> scan10X2X1X1 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $G and: $M)
												or: [ (currentCharacter between: $O and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan10X3 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $8 and: $9)
										or: [ (currentCharacter between: $< and: $?)
												or: [ (currentCharacter between: $A and: $M)
														or: [ (currentCharacter between: $O and: $Z)
																or: [ currentCharacter == $_
																		or: [ (currentCharacter between: $a and: $w)
																				or: [ (currentCharacter between: $y and: $z)
																						or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan11 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan11X1
]

{ #category : #generated }
ClojureScanner >> scan11X1 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $M)
												or: [ (currentCharacter between: $O and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan12 [
	[ self recordMatch: #(29).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit ] whileTrue.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ ('-/' includes: currentCharacter)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan13 [
	self recordMatch: #(24 29).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $.)
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $< and: $?)
												or: [ (currentCharacter between: $A and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan14 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter == $M
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue: [ self step.
			('+-' includes: currentCharacter)
				ifTrue: [ self step ].
			currentCharacter isDigit
				ifTrue: [ ^ self scan15 ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan15 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter == $M
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan16 [
	self step.
	('+-' includes: currentCharacter)
		ifTrue: [ self step ].
	currentCharacter == $0
		ifTrue: [ ^ self scan17 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan18 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan17 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $N
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ currentCharacter between: $A and: $F ])
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					currentCharacter == $N
						ifTrue: [ ^ self recordAndReportMatch: #(24) ].
					currentCharacter isDigit
						or: [ currentCharacter between: $A and: $F ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter between: $0 and: $7)
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			currentCharacter == $N
				ifTrue: [ ^ self recordAndReportMatch: #(24) ].
			currentCharacter between: $0 and: $7 ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan18 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter == $N
		ifTrue: [ ^ self recordAndReportMatch: #(24) ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan19 [
	[ self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan14 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan2 [
	self step.
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $9)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan20 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan21 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $r
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan22 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan22 [
	[ self recordMatch: #(24).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan23 [
	[ self recordMatch: #(30).
	self step.
	currentCharacter == $:
		ifTrue: [ self step.
			(currentCharacter == $!
				or: [ (currentCharacter between: $# and: $')
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $- and: $9)
										or: [ (currentCharacter between: $< and: $?)
												or: [ (currentCharacter between: $A and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
				ifTrue: [ ^ self scan23 ].
			^ self reportLastMatch ].
	currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $9)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan24 [
	[ self recordMatch: #(30).
	self step.
	currentCharacter isDigit ] whileTrue.
	(currentCharacter == $!
		or: [ (currentCharacter between: $$ and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan25 [
	(self scanForString: 'ac')
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan26 [
	self step.
	currentCharacter == $e
		ifTrue: [ ^ self recordAndReportMatch: #(26) ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan3 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(27) ].
	currentCharacter == $\
		ifTrue: [ self step.
			^ self scan3 ].
	true ] whileTrue
]

{ #category : #generated }
ClojureScanner >> scan4 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $0
		ifTrue: [ ^ self scan5 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan4X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan4X1 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan4X1X1
]

{ #category : #generated }
ClojureScanner >> scan4X1X1 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $M)
												or: [ (currentCharacter between: $O and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan5 [
	self recordMatch: #(24 29).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan13 ].
	currentCharacter == $x
		ifTrue:
			[ ^ self scan5X2 ].
	^ self scan5X3
]

{ #category : #generated }
ClojureScanner >> scan5X1 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan6 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan13 ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan12 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan5X1X1
]

{ #category : #generated }
ClojureScanner >> scan5X1X1 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $M)
												or: [ (currentCharacter between: $O and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan5X2 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	(currentCharacter isDigit
		or: [ currentCharacter between: $A and: $F ])
		ifTrue:
			[ ^ self scan5X2X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $G and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan5X2X1 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $/
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan13 ].
	currentCharacter isDigit or: [ currentCharacter between: $A and: $F ] ]
		whileTrue.
	^ self scan5X2X1X1
]

{ #category : #generated }
ClojureScanner >> scan5X2X1X1 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $.)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $G and: $M)
												or: [ (currentCharacter between: $O and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan5X3 [
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan12 ].
	currentCharacter isDigit
		ifTrue:
			[ ^ self scan5X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $M)
												or: [ (currentCharacter between: $O and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $w)
																		or: [ (currentCharacter between: $y and: $z)
																				or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan6 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $M
		ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	('Ee' includes: currentCharacter)
		ifTrue:
			[ ^ self scan6X1 ].
	^ self scan6X2
]

{ #category : #generated }
ClojureScanner >> scan6X1 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan7 ].
	('+-' includes: currentCharacter)
		ifTrue:
			[ ^ self scan6X1X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ currentCharacter == $*
						or: [ (currentCharacter between: $. and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan6X1X1 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan7 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan6X2 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $D)
												or: [ (currentCharacter between: $F and: $L)
														or: [ (currentCharacter between: $N and: $Z)
																or: [ currentCharacter == $_
																		or: [ (currentCharacter between: $a and: $d)
																				or: [ (currentCharacter between: $f and: $z)
																						or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan7 [
	[ self recordMatch: #(24 29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $M
		ifTrue: [ ^ self scan8 ].
	currentCharacter isDigit ] whileTrue.
	^ self scan7X1
]

{ #category : #generated }
ClojureScanner >> scan7X1 [
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $L)
												or: [ (currentCharacter between: $N and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter == $| ] ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan8 [
	self recordMatch: #(24 29).
	self step.
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $9)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan9 [
	self recordMatch: #(29).
	self step.
	^ self scan9X2
]

{ #category : #generated }
ClojureScanner >> scan9X1 [
	self recordMatch: #(29).
	self step.
	currentCharacter == $0
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan11 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scan9X2 [
	currentCharacter == $0
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $:
		ifTrue: [ ^ self scan2 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan11 ].
	('+-' includes: currentCharacter)
		ifTrue:
			[ ^ self scan9X1 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $')
				or: [ currentCharacter == $*
						or: [ (currentCharacter between: $. and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForToken [
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $#
		ifTrue:
			[ ^ self scanForTokenX3 ].
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(8) ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(9) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	currentCharacter == $,
		ifTrue: [ ^ self recordAndReportMatch: #(25) ].
	currentCharacter == $0
		ifTrue:
			[ ^ self scanForTokenX4 ].
	currentCharacter == $1
		ifTrue:
			[ ^ self scanForTokenX8 ].
	currentCharacter == $2
		ifTrue:
			[ ^ self scanForTokenX6 ].
	^ self scanForTokenX12
]

{ #category : #generated }
ClojureScanner >> scanForTokenX1 [
	self step.
	currentCharacter == $b
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $a
				ifTrue: [ (self scanForString: 'cksp')
						ifTrue: [ ^ self scan25 ] ].
			^ self reportLastMatch ].
	currentCharacter == $f
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $o
				ifTrue: [ (self scanForString: 'rmfeed')
						ifTrue: [ ^ self recordAndReportMatch: #(26) ] ].
			^ self reportLastMatch ].
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $e
				ifTrue: [ (self scanForString: 'wlin')
						ifTrue: [ ^ self scan26 ] ].
			^ self reportLastMatch ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(26).
			self step.
			(currentCharacter between: $0 and: $7)
				ifTrue: [ self step.
					(currentCharacter between: $0 and: $7)
						ifTrue: [ self step.
							(currentCharacter between: $0 and: $7)
								ifTrue: [ ^ self recordAndReportMatch: #(26) ] ] ].
			^ self reportLastMatch ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $e
				ifTrue: [ (self scanForString: 'turn')
						ifTrue: [ ^ self recordAndReportMatch: #(26) ] ].
			^ self reportLastMatch ].
	currentCharacter == $s
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $p
				ifTrue: [ ^ self scan25 ].
			^ self reportLastMatch ].
	currentCharacter == $t
		ifTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $a
				ifTrue: [ self step.
					currentCharacter == $b
						ifTrue: [ ^ self recordAndReportMatch: #(26) ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scanForTokenX1X1 ].
	^ self recordAndReportMatch: #(26)
]

{ #category : #generated }
ClojureScanner >> scanForTokenX10 [
	self recordMatch: #(21).
	self step.
	currentCharacter == $@
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX11 [
	currentCharacter isDigit
		ifTrue: [ ^ self scan21 ].
	('+-' includes: currentCharacter)
		ifTrue: [ ^ self scan4 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX9 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $$ and: $&)
				or: [ currentCharacter == $*
						or: [ (currentCharacter between: $. and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX12 [
	currentCharacter == $3
		ifTrue:
			[ ^ self scanForTokenX5 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scanForTokenX2 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scanForTokenX7 ].
	currentCharacter == $@
		ifTrue: [ ^ self recordAndReportMatch: #(11) ].
	currentCharacter == $[
		ifTrue: [ ^ self recordAndReportMatch: #(12) ].
	currentCharacter == $\
		ifTrue:
			[ ^ self scanForTokenX1 ].
	currentCharacter == $]
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $^
		ifTrue: [ ^ self recordAndReportMatch: #(14) ].
	currentCharacter == $`
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(19) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $~
		ifTrue:
			[ ^ self scanForTokenX10 ].
	^ self scanForTokenX11
]

{ #category : #generated }
ClojureScanner >> scanForTokenX1X1 [
	self recordMatch: #(26).
	self step.
	(currentCharacter isDigit
		or: [ currentCharacter between: $A and: $F ])
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ currentCharacter between: $A and: $F ])
				ifTrue: [ self step.
					(currentCharacter isDigit
						or: [ currentCharacter between: $A and: $F ])
						ifTrue: [ self step.
							(currentCharacter isDigit
								or: [ currentCharacter between: $A and: $F ])
								ifTrue: [ ^ self recordAndReportMatch: #(26) ] ] ] ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX2 [
	self step.
	currentCharacter == $:
		ifTrue: [ self step ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan24 ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $$ and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ (currentCharacter between: $< and: $?)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter == $| ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX3 [
	self recordMatch: #(1).
	self step.
	currentCharacter == $"
		ifTrue: [ [ self step.
			currentCharacter == $"
				ifTrue: [ ^ self recordAndReportMatch: #(28) ].
			true ] whileTrue ].
	currentCharacter == $#
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $'
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $^
		ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter == $_
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX4 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $x
		ifTrue: [ self step.
			(currentCharacter isDigit
				or: [ currentCharacter between: $A and: $F ])
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					currentCharacter == $/
						ifTrue: [ ^ self scan16 ].
					currentCharacter == $N
						ifTrue: [ ^ self scan20 ].
					currentCharacter isDigit
						or: [ currentCharacter between: $A and: $F ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter between: $8 and: $9)
		ifTrue: [ ^ self scan19 ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			currentCharacter == $.
				ifTrue: [ ^ self scan14 ].
			currentCharacter == $/
				ifTrue: [ ^ self scan16 ].
			currentCharacter == $N
				ifTrue: [ ^ self scan20 ].
			(currentCharacter between: $8 and: $9)
				ifTrue: [ ^ self scan19 ].
			currentCharacter isDigit ] whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX5 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $r
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	(currentCharacter between: $7 and: $9)
		ifTrue: [ ^ self scan22 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX6 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan20 ].
	currentCharacter == $r
		ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX7 [
	[ self recordMatch: #(25).
	self step.
	currentCharacter <= Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX8 [
	self recordMatch: #(24).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan16 ].
	currentCharacter == $N
		ifTrue: [ ^ self scan20 ].
	currentCharacter isDigit
		ifTrue: [ ^ self scan21 ].
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> scanForTokenX9 [
	[ self recordMatch: #(31).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : #generated }
ClojureScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #radixInteger nil #comment nil nil nil nil nil #whitespace)
]
