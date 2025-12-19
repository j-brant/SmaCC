Class {
	#name : 'CSSScanner',
	#superclass : 'SmaCCScanner',
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSScanner >> emptySymbolTokenId [
	^ 60
]

{ #category : 'generated' }
CSSScanner >> errorTokenId [
	^ 61
]

{ #category : 'generated' }
CSSScanner >> keywordFor: aString [
	^ aString asUppercase
]

{ #category : 'generated' }
CSSScanner >> scan1 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan10 [
	self step.
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan11 [
	[ self recordMatch: #(19).
	self step.
	currentCharacter == $% ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $- ifTrue: [ ^ self scan12 ].
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_
				or: [ (currentCharacter between: $a and: $z)
						or: [ currentCharacter >= (Character value: 128) ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan12 [
	[ self step.
	currentCharacter == $- ] whileTrue.
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_
				or: [ (currentCharacter between: $a and: $z)
						or: [ currentCharacter >= (Character value: 128) ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan13 [
	[ self recordMatch: #(14).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan14 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan14X1 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan14X1 [
	self recordMatch: #(14).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan15 ].
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self recordMatch: #(14).
			self step.
			currentCharacter == Character cr ifTrue: [ ^ self scan15 ].
			currentCharacter == $\ ifTrue: [ ^ self scan14 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(14).
					self step.
					currentCharacter == Character cr ifTrue: [ ^ self scan15 ].
					currentCharacter == $\ ifTrue: [ ^ self scan14 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(14).
							self step.
							currentCharacter == Character cr ifTrue: [ ^ self scan15 ].
							currentCharacter == $\ ifTrue: [ ^ self scan14 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self recordMatch: #(14).
									self step.
									currentCharacter == Character cr ifTrue: [ ^ self scan15 ].
									currentCharacter == $\ ifTrue: [ ^ self scan14 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan14X1X1 ] ] ] ] ].
	^ self scan14X1X2
]

{ #category : 'generated' }
CSSScanner >> scan14X1X1 [
	self recordMatch: #(14).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan15 ].
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan14X1X2 [
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan15 [
	self recordMatch: #(14).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == $-
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan16 [
	[ self recordMatch: #(19).
	self step.
	currentCharacter == $% ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $- ifTrue: [ ^ self scan12 ].
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	currentCharacter between: $0 and: $9 ] whileTrue.
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_
				or: [ (currentCharacter between: $a and: $z)
						or: [ currentCharacter >= (Character value: 128) ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan17 [
	[ self recordMatch: #(17).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan18 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan19 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan19 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan19X1
]

{ #category : 'generated' }
CSSScanner >> scan19X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan2 [
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
			currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
			currentCharacter == $\ ifTrue: [ ^ self scan2 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
					currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
					currentCharacter == $\ ifTrue: [ ^ self scan2 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
							currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
							currentCharacter == $\ ifTrue: [ ^ self scan2 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
									currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
									currentCharacter == $\ ifTrue: [ ^ self scan2 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step ].
											currentCharacter == Character cr ifTrue: [ ^ self scan3 ].
											currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
											currentCharacter == $\ ifTrue: [ ^ self scan2 ] ] ] ] ] ].
	^ self scan1
]

{ #category : 'generated' }
CSSScanner >> scan20 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == $-
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan21 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan21X1
]

{ #category : 'generated' }
CSSScanner >> scan21X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan22 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan22X1
]

{ #category : 'generated' }
CSSScanner >> scan22X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan23 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan23X1
]

{ #category : 'generated' }
CSSScanner >> scan23X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan24 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan24X1
]

{ #category : 'generated' }
CSSScanner >> scan24X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan25 [
	self recordMatch: #(17).
	^ self scan25X1
]

{ #category : 'generated' }
CSSScanner >> scan25X1 [
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan26 [
	[ self step.
	currentCharacter == $*
		ifTrue: [ [ self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/ ifTrue: [ ^ self recordAndReportMatch: #(25) ].
			^ self scan26 ].
	true ] whileTrue
]

{ #category : 'generated' }
CSSScanner >> scan27 [
	[ self recordMatch: #(10).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan28 ].
	currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan28 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan28X1 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan28X1 [
	self recordMatch: #(10).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan29 ].
	currentCharacter == $\ ifTrue: [ ^ self scan28 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self recordMatch: #(10).
			self step.
			currentCharacter == Character cr ifTrue: [ ^ self scan29 ].
			currentCharacter == $\ ifTrue: [ ^ self scan28 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(10).
					self step.
					currentCharacter == Character cr ifTrue: [ ^ self scan29 ].
					currentCharacter == $\ ifTrue: [ ^ self scan28 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(10).
							self step.
							currentCharacter == Character cr ifTrue: [ ^ self scan29 ].
							currentCharacter == $\ ifTrue: [ ^ self scan28 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self recordMatch: #(10).
									self step.
									currentCharacter == Character cr ifTrue: [ ^ self scan29 ].
									currentCharacter == $\ ifTrue: [ ^ self scan28 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan28X1X1 ] ] ] ] ].
	^ self scan28X1X2
]

{ #category : 'generated' }
CSSScanner >> scan28X1X1 [
	self recordMatch: #(10).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan29 ].
	currentCharacter == $\ ifTrue: [ ^ self scan28 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan28X1X2 [
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan29 [
	self recordMatch: #(10).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan28 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == $-
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan3 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character pageUp
		or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan30 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self recordMatch: #(22).
			self step.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(22).
					self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(22).
							self step.
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self recordMatch: #(22).
									self step.
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self recordMatch: #(22).
											self step.
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ ^ self recordAndReportMatch: #(22) ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan31 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan32 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $? ifTrue: [ ^ self scan31 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan33 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $? ifTrue: [ ^ self scan32 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan34 [
	self recordMatch: #(22).
	self step.
	currentCharacter == $? ifTrue: [ ^ self scan33 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan35 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan45 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan36 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $( ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan37 [
	self recordMatch: #(15).
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan38 ].
	currentCharacter == $' ifTrue: [ ^ self scan42 ].
	currentCharacter isSeparator
		ifTrue: [ [ self step.
			currentCharacter == $" ifTrue: [ ^ self scan38 ].
			currentCharacter == $' ifTrue: [ ^ self scan42 ].
			currentCharacter isSeparator ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan38 [
	[ self step.
	currentCharacter == $" ifTrue: [ ^ self scan39 ].
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan39 [
	[ self step.
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(23) ].
	currentCharacter isSeparator ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan4 [
	[ self recordMatch: #(16).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan40 [
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan41 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			currentCharacter == Character cr ifTrue: [ ^ self scan41 ].
			currentCharacter == $" ifTrue: [ ^ self scan39 ].
			currentCharacter == $\ ifTrue: [ ^ self scan40 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == Character cr ifTrue: [ ^ self scan41 ].
					currentCharacter == $" ifTrue: [ ^ self scan39 ].
					currentCharacter == $\ ifTrue: [ ^ self scan40 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == Character cr ifTrue: [ ^ self scan41 ].
							currentCharacter == $" ifTrue: [ ^ self scan39 ].
							currentCharacter == $\ ifTrue: [ ^ self scan40 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == Character cr ifTrue: [ ^ self scan41 ].
									currentCharacter == $" ifTrue: [ ^ self scan39 ].
									currentCharacter == $\ ifTrue: [ ^ self scan40 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step ].
											currentCharacter == Character cr ifTrue: [ ^ self scan41 ].
											currentCharacter == $" ifTrue: [ ^ self scan39 ].
											currentCharacter == $\ ifTrue: [ ^ self scan40 ] ] ] ] ] ].
	^ self scan38
]

{ #category : 'generated' }
CSSScanner >> scan41 [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan39 ].
	currentCharacter == $\ ifTrue: [ ^ self scan40 ].
	(currentCharacter <= Character pageUp
		or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan38 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan42 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self scan39 ].
	currentCharacter == $\ ifTrue: [ ^ self scan43 ].
	currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan43 [
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan44 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			currentCharacter == Character cr ifTrue: [ ^ self scan44 ].
			currentCharacter == $' ifTrue: [ ^ self scan39 ].
			currentCharacter == $\ ifTrue: [ ^ self scan43 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == Character cr ifTrue: [ ^ self scan44 ].
					currentCharacter == $' ifTrue: [ ^ self scan39 ].
					currentCharacter == $\ ifTrue: [ ^ self scan43 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == Character cr ifTrue: [ ^ self scan44 ].
							currentCharacter == $' ifTrue: [ ^ self scan39 ].
							currentCharacter == $\ ifTrue: [ ^ self scan43 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == Character cr ifTrue: [ ^ self scan44 ].
									currentCharacter == $' ifTrue: [ ^ self scan39 ].
									currentCharacter == $\ ifTrue: [ ^ self scan43 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step ].
											currentCharacter == Character cr ifTrue: [ ^ self scan44 ].
											currentCharacter == $' ifTrue: [ ^ self scan39 ].
											currentCharacter == $\ ifTrue: [ ^ self scan43 ] ] ] ] ] ].
	^ self scan42
]

{ #category : 'generated' }
CSSScanner >> scan44 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self scan39 ].
	currentCharacter == $\ ifTrue: [ ^ self scan43 ].
	(currentCharacter <= Character pageUp
		or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan42 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan45 [
	self step.
	currentCharacter == $0 ifTrue: [ ^ self scan46 ].
	('46' includes: currentCharacter) ifTrue: [ ^ self scan45X1 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan19 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan45X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan45X1X2
]

{ #category : 'generated' }
CSSScanner >> scan45X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan49 ].
	^ self scan45X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan45X1X1X1 [
	currentCharacter == $( ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan36 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan45X1X2 [
	('Cc' includes: currentCharacter) ifTrue: [ ^ self scan45X1X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan46 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan47 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan46X2
]

{ #category : 'generated' }
CSSScanner >> scan46X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan46X1X2
]

{ #category : 'generated' }
CSSScanner >> scan46X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan49 ].
	^ self scan46X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan46X1X1X1 [
	currentCharacter == $( ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan36 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan46X1X2 [
	('Cc' includes: currentCharacter) ifTrue: [ ^ self scan46X1X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan46X2 [
	('46' includes: currentCharacter) ifTrue: [ ^ self scan46X1 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan47 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan48 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan47X2
]

{ #category : 'generated' }
CSSScanner >> scan47X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan47X1X2
]

{ #category : 'generated' }
CSSScanner >> scan47X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan49 ].
	^ self scan47X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan47X1X1X1 [
	currentCharacter == $( ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan36 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan47X1X2 [
	('Cc' includes: currentCharacter) ifTrue: [ ^ self scan47X1X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan47X2 [
	('46' includes: currentCharacter) ifTrue: [ ^ self scan47X1 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan48 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan48X1 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan48X3
]

{ #category : 'generated' }
CSSScanner >> scan48X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan48X1X2
]

{ #category : 'generated' }
CSSScanner >> scan48X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan48X1X1X2
]

{ #category : 'generated' }
CSSScanner >> scan48X1X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan49 ].
	currentCharacter == $( ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan36 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan48X1X1X2 [
	('Cc' includes: currentCharacter) ifTrue: [ ^ self scan48X1X1X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan48X1X2 [
	('46' includes: currentCharacter) ifTrue: [ ^ self scan48X1X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan48X2 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan48X2X2
]

{ #category : 'generated' }
CSSScanner >> scan48X2X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan49 ].
	^ self scan48X2X1X1
]

{ #category : 'generated' }
CSSScanner >> scan48X2X1X1 [
	currentCharacter == $( ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan36 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan48X2X2 [
	('Cc' includes: currentCharacter) ifTrue: [ ^ self scan48X2X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan48X3 [
	('46' includes: currentCharacter) ifTrue: [ ^ self scan48X2 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan49 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan36 ].
	currentCharacter == $( ifTrue: [ ^ self scan37 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan5 [
	self step.
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan5X1 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan50 [
	self step.
	currentCharacter == $0 ifTrue: [ ^ self scan51 ].
	('57' includes: currentCharacter) ifTrue: [ ^ self scan50X1 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan19 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan50X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $2 ifTrue: [ ^ self scan50X1X1 ].
	^ self scan50X1X2
]

{ #category : 'generated' }
CSSScanner >> scan50X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan54 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan50X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan50X1X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan45 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan35 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan50X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan51 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan52 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan51X2
]

{ #category : 'generated' }
CSSScanner >> scan51X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $2 ifTrue: [ ^ self scan51X1X1 ].
	^ self scan51X1X2
]

{ #category : 'generated' }
CSSScanner >> scan51X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan54 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan51X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan51X1X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan45 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan35 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan51X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan51X2 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan51X1 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan52 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan53 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan52X2
]

{ #category : 'generated' }
CSSScanner >> scan52X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $2 ifTrue: [ ^ self scan52X1X1 ].
	^ self scan52X1X2
]

{ #category : 'generated' }
CSSScanner >> scan52X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan54 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan52X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan52X1X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan45 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan35 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan52X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan52X2 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan52X1 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan53 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan53X1 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan53X3
]

{ #category : 'generated' }
CSSScanner >> scan53X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan53X1X2
]

{ #category : 'generated' }
CSSScanner >> scan53X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $2 ifTrue: [ ^ self scan53X1X1X1 ].
	^ self scan53X1X1X2
]

{ #category : 'generated' }
CSSScanner >> scan53X1X1X1 [
	self recordMatch: #(17).
	self step.
	^ self scan53X1X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan53X1X1X1X1 [
	currentCharacter == Character cr ifTrue: [ ^ self scan54 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan45 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan35 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan53X1X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan53X1X2 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan53X1X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan53X2 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $2 ifTrue: [ ^ self scan53X2X1 ].
	^ self scan53X2X2
]

{ #category : 'generated' }
CSSScanner >> scan53X2X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan54 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan53X2X1X1
]

{ #category : 'generated' }
CSSScanner >> scan53X2X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan45 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan35 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan53X2X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan53X3 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan53X2 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan54 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan35 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan45 ].
	('Ll' includes: currentCharacter) ifTrue: [ ^ self scan36 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan55 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $0 ifTrue: [ ^ self scan56 ].
	('57' includes: currentCharacter) ifTrue: [ ^ self scan55X1 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scan59 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan19 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan55X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $5 ifTrue: [ ^ self scan55X1X1 ].
	^ self scan55X1X2
]

{ #category : 'generated' }
CSSScanner >> scan55X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan60 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan55X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan55X1X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan59 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan55X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan56 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan57 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan56X2
]

{ #category : 'generated' }
CSSScanner >> scan56X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $5 ifTrue: [ ^ self scan56X1X1 ].
	^ self scan56X1X2
]

{ #category : 'generated' }
CSSScanner >> scan56X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan60 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan56X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan56X1X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan59 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan56X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan56X2 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan56X1 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan21 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan57 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan58 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan57X2
]

{ #category : 'generated' }
CSSScanner >> scan57X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $5 ifTrue: [ ^ self scan57X1X1 ].
	^ self scan57X1X2
]

{ #category : 'generated' }
CSSScanner >> scan57X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan60 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan57X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan57X1X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan59 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan57X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan57X2 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan57X1 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan22 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan58 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $0 ifTrue: [ ^ self scan58X1 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan58X3
]

{ #category : 'generated' }
CSSScanner >> scan58X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	^ self scan58X1X2
]

{ #category : 'generated' }
CSSScanner >> scan58X1X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $5 ifTrue: [ ^ self scan58X1X1X1 ].
	^ self scan58X1X1X2
]

{ #category : 'generated' }
CSSScanner >> scan58X1X1X1 [
	self recordMatch: #(17).
	self step.
	^ self scan58X1X1X1X1
]

{ #category : 'generated' }
CSSScanner >> scan58X1X1X1X1 [
	currentCharacter == Character cr ifTrue: [ ^ self scan60 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan59 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan58X1X1X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan58X1X2 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan58X1X1 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan58X2 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan20 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $5 ifTrue: [ ^ self scan58X2X1 ].
	^ self scan58X2X2
]

{ #category : 'generated' }
CSSScanner >> scan58X2X1 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan60 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scan58X2X1X1
]

{ #category : 'generated' }
CSSScanner >> scan58X2X1X1 [
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	currentCharacter isSeparator ifTrue: [ ^ self scan59 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan25 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $G and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $g and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan58X2X2 [
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan24 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan58X3 [
	('57' includes: currentCharacter) ifTrue: [ ^ self scan58X2 ].
	((currentCharacter between: $1 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ]) ifTrue: [ ^ self scan23 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan59 [
	self recordMatch: #(17).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan5X1 [
	self recordMatch: #(16).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self recordMatch: #(16).
			self step.
			currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
			currentCharacter == $\ ifTrue: [ ^ self scan5 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(16).
					self step.
					currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
					currentCharacter == $\ ifTrue: [ ^ self scan5 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(16).
							self step.
							currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
							currentCharacter == $\ ifTrue: [ ^ self scan5 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self recordMatch: #(16).
									self step.
									currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
									currentCharacter == $\ ifTrue: [ ^ self scan5 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ ^ self scan5X1X1 ] ] ] ] ].
	^ self scan5X1X2
]

{ #category : 'generated' }
CSSScanner >> scan5X1X1 [
	self recordMatch: #(16).
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan6 ].
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan5X1X2 [
	((currentCharacter between: Character tab and: Character lf)
		or: [ currentCharacter == Character newPage
				or: [ currentCharacter == Character space
						or: [ currentCharacter == $-
								or: [ (currentCharacter between: $G and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $g and: $z)
														or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan6 [
	self recordMatch: #(16).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	(currentCharacter == Character lf
		or: [ currentCharacter == $-
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ currentCharacter >= (Character value: 128) ] ] ] ] ] ])
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan60 [
	self recordMatch: #(17).
	self step.
	currentCharacter == Character lf ifTrue: [ ^ self scan59 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan7 [
	[ self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $\ ifTrue: [ ^ self scan8 ].
	currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scan8 [
	self step.
	currentCharacter == Character cr ifTrue: [ ^ self scan9 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self step.
			currentCharacter == Character cr ifTrue: [ ^ self scan9 ].
			currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
			currentCharacter == $\ ifTrue: [ ^ self scan8 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					currentCharacter == Character cr ifTrue: [ ^ self scan9 ].
					currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
					currentCharacter == $\ ifTrue: [ ^ self scan8 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self step.
							currentCharacter == Character cr ifTrue: [ ^ self scan9 ].
							currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
							currentCharacter == $\ ifTrue: [ ^ self scan8 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self step.
									currentCharacter == Character cr ifTrue: [ ^ self scan9 ].
									currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
									currentCharacter == $\ ifTrue: [ ^ self scan8 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self step.
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self step ].
											currentCharacter == Character cr ifTrue: [ ^ self scan9 ].
											currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
											currentCharacter == $\ ifTrue: [ ^ self scan8 ] ] ] ] ] ].
	^ self scan7
]

{ #category : 'generated' }
CSSScanner >> scan9 [
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $\ ifTrue: [ ^ self scan8 ].
	(currentCharacter <= Character pageUp
		or: [ currentCharacter >= (Character value: 14) ]) ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForToken [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scanForTokenX8 ].
	currentCharacter == $# ifTrue: [ ^ self scanForTokenX5 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX7 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1 26) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(2 26) ].
	currentCharacter == $* ifTrue: [ ^ self recordAndReportMatch: #(3 26) ].
	^ self scanForTokenX17
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX1 [
	self recordMatch: #(17 26).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX1X1 ].
	currentCharacter == $\ ifTrue: [ ^ self scan50 ].
	('Rr' includes: currentCharacter) ifTrue: [ ^ self scan35 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX10 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $!
		ifTrue: [ (self scanForString: '--') ifTrue: [ ^ self recordAndReportMatch: #(12) ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX11 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(18) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX12 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $= ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX13 [
	self recordMatch: #(26).
	self step.
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan11 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX14 [
	self recordMatch: #(24 26).
	self step.
	currentCharacter isSeparator
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			currentCharacter isSeparator ] whileTrue ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX15 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $* ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX16 [
	currentCharacter == $| ifTrue: [ ^ self scanForTokenX12 ].
	currentCharacter == $} ifTrue: [ ^ self recordAndReportMatch: #(9 26) ].
	currentCharacter == $~ ifTrue: [ ^ self scanForTokenX11 ].
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scanForTokenX2 ].
	('Uu' includes: currentCharacter) ifTrue: [ ^ self scanForTokenX1 ].
	currentCharacter isSeparator ifTrue: [ ^ self scanForTokenX14 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_
				or: [ (currentCharacter between: $a and: $z)
						or: [ currentCharacter >= (Character value: 128) ] ] ])
		ifTrue: [ ^ self scanForTokenX4 ].
	^ self recordAndReportMatch: #(26)
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX17 [
	currentCharacter == $+ ifTrue: [ ^ self scanForTokenX9 ].
	currentCharacter == $- ifTrue: [ ^ self scanForTokenX3 ].
	currentCharacter == $. ifTrue: [ ^ self scanForTokenX13 ].
	currentCharacter == $/ ifTrue: [ ^ self scanForTokenX15 ].
	currentCharacter == $: ifTrue: [ ^ self recordAndReportMatch: #(4 26) ].
	currentCharacter == $; ifTrue: [ ^ self recordAndReportMatch: #(5 26) ].
	currentCharacter == $< ifTrue: [ ^ self scanForTokenX10 ].
	currentCharacter == $@ ifTrue: [ ^ self scanForTokenX6 ].
	currentCharacter == $[ ifTrue: [ ^ self recordAndReportMatch: #(6 26) ].
	currentCharacter == $\ ifTrue: [ ^ self scan55 ].
	currentCharacter == $] ifTrue: [ ^ self recordAndReportMatch: #(7 26) ].
	currentCharacter == ${ ifTrue: [ ^ self recordAndReportMatch: #(8 26) ].
	^ self scanForTokenX16
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX1X1 [
	self step.
	currentCharacter == $?
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == $? ifTrue: [ ^ self scan34 ].
			^ self reportLastMatch ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $F)
				or: [ currentCharacter between: $a and: $f ] ])
		ifTrue: [ self recordMatch: #(22).
			self step.
			currentCharacter == $- ifTrue: [ ^ self scan30 ].
			currentCharacter == $? ifTrue: [ ^ self scan34 ].
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self recordMatch: #(22).
					self step.
					currentCharacter == $- ifTrue: [ ^ self scan30 ].
					currentCharacter == $? ifTrue: [ ^ self scan33 ].
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ self recordMatch: #(22).
							self step.
							currentCharacter == $- ifTrue: [ ^ self scan30 ].
							currentCharacter == $? ifTrue: [ ^ self scan32 ].
							((currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $F)
										or: [ currentCharacter between: $a and: $f ] ])
								ifTrue: [ self recordMatch: #(22).
									self step.
									currentCharacter == $- ifTrue: [ ^ self scan30 ].
									currentCharacter == $? ifTrue: [ ^ self scan31 ].
									((currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $F)
												or: [ currentCharacter between: $a and: $f ] ])
										ifTrue: [ self recordMatch: #(22).
											self step.
											currentCharacter == $- ifTrue: [ ^ self scan30 ].
											currentCharacter == $? ifTrue: [ ^ self recordAndReportMatch: #(22) ].
											((currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $F)
														or: [ currentCharacter between: $a and: $f ] ])
												ifTrue: [ self recordMatch: #(22).
													self step.
													currentCharacter == $- ifTrue: [ ^ self scan30 ] ] ] ] ] ] ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX2 [
	self recordMatch: #(19 26).
	self step.
	currentCharacter == $% ifTrue: [ ^ self recordAndReportMatch: #(20) ].
	currentCharacter == $- ifTrue: [ ^ self scan12 ].
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter == $\ ifTrue: [ ^ self scan14 ].
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan16 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_
				or: [ (currentCharacter between: $a and: $z)
						or: [ currentCharacter >= (Character value: 128) ] ] ])
		ifTrue: [ ^ self scan13 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX3 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $-
		ifTrue: [ self step.
			currentCharacter == $-
				ifTrue: [ [ self step.
					currentCharacter == $- ] whileTrue.
					currentCharacter == $\ ifTrue: [ ^ self scan18 ].
					((currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ])
						ifTrue: [ ^ self scan17 ].
					^ self reportLastMatch ].
			currentCharacter == $> ifTrue: [ ^ self recordAndReportMatch: #(11) ].
			currentCharacter == $\ ifTrue: [ ^ self scan18 ].
			((currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_
						or: [ (currentCharacter between: $a and: $z)
								or: [ currentCharacter >= (Character value: 128) ] ] ])
				ifTrue: [ ^ self scan17 ].
			^ self reportLastMatch ].
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan16 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_
				or: [ (currentCharacter between: $a and: $z)
						or: [ currentCharacter >= (Character value: 128) ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX4 [
	self recordMatch: #(17 26).
	self step.
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $\ ifTrue: [ ^ self scan18 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan17 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX5 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $\ ifTrue: [ ^ self scan5 ].
	(currentCharacter == $-
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter >= (Character value: 128) ] ] ] ] ])
		ifTrue: [ ^ self scan4 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX6 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $-
		ifTrue: [ [ self step.
			currentCharacter == $- ] whileTrue ].
	currentCharacter == $\ ifTrue: [ ^ self scan28 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_
				or: [ (currentCharacter between: $a and: $z)
						or: [ currentCharacter >= (Character value: 128) ] ] ])
		ifTrue: [ ^ self scan27 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX7 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $\ ifTrue: [ ^ self scan8 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan7 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX8 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $" ifTrue: [ ^ self recordAndReportMatch: #(21) ].
	currentCharacter == $\ ifTrue: [ ^ self scan2 ].
	(currentCharacter <= Character tab
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter >= (Character value: 14) ] ])
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> scanForTokenX9 [
	self recordMatch: #(26).
	self step.
	currentCharacter == $. ifTrue: [ ^ self scan10 ].
	(currentCharacter between: $0 and: $9) ifTrue: [ ^ self scan16 ].
	^ self reportLastMatch
]

{ #category : 'generated' }
CSSScanner >> tokenActions [
	^ #(nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil #comment)
]

{ #category : 'generated' }
CSSScanner >> tokenClass [
	^SmaCCCaseInsensitiveToken
]
