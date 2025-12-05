Class {
	#name : 'JSExportListDeclarationNode',
	#superclass : 'JSTSExportNode',
	#instVars : [
		'star',
		'fromToken',
		'from',
		'semicolon',
		'typeToken',
		'leftBrace',
		'rightBrace',
		'specifiers',
		'commas'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSExportListDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExportListDeclaration: self
]

{ #category : 'generated' }
JSExportListDeclarationNode >> commas [
	^ commas
]

{ #category : 'generated' }
JSExportListDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JSExportListDeclarationNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : 'generated' }
JSExportListDeclarationNode >> from [
	^ from
]

{ #category : 'generated' }
JSExportListDeclarationNode >> from: aSmaCCToken [
	from := aSmaCCToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> fromToken [
	^ fromToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
JSExportListDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon #leftBrace #rightBrace)
]

{ #category : 'generated-initialize-release' }
JSExportListDeclarationNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSExportListDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
JSExportListDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
JSExportListDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
JSExportListDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> specifiers [
	^ specifiers
]

{ #category : 'generated' }
JSExportListDeclarationNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : 'generated' }
JSExportListDeclarationNode >> star [
	^ star
]

{ #category : 'generated' }
JSExportListDeclarationNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> tokenVariables [
	^ #(#star #fromToken #from #typeToken #exportToken)
]

{ #category : 'generated' }
JSExportListDeclarationNode >> typeToken [
	^ typeToken
]

{ #category : 'generated' }
JSExportListDeclarationNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]
