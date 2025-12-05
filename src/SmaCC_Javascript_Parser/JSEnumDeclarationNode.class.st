Class {
	#name : 'JSEnumDeclarationNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'enumToken',
		'name',
		'leftBrace',
		'rightBrace',
		'values',
		'commas',
		'constToken'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSEnumDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumDeclaration: self
]

{ #category : 'generated' }
JSEnumDeclarationNode >> commas [
	^ commas
]

{ #category : 'generated' }
JSEnumDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JSEnumDeclarationNode >> compositeNodeVariables [
	^ #(#values)
]

{ #category : 'generated' }
JSEnumDeclarationNode >> constToken [
	^ constToken
]

{ #category : 'generated' }
JSEnumDeclarationNode >> constToken: aSmaCCToken [
	constToken := aSmaCCToken
]

{ #category : 'generated' }
JSEnumDeclarationNode >> enumToken [
	^ enumToken
]

{ #category : 'generated' }
JSEnumDeclarationNode >> enumToken: aSmaCCToken [
	enumToken := aSmaCCToken
]

{ #category : 'generated' }
JSEnumDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commas)
]

{ #category : 'generated' }
JSEnumDeclarationNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightBrace)
]

{ #category : 'generated-initialize-release' }
JSEnumDeclarationNode >> initialize [
	super initialize.
	values := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSEnumDeclarationNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
JSEnumDeclarationNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
JSEnumDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
JSEnumDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
JSEnumDeclarationNode >> nodeVariables [
	^ #(#name)
]

{ #category : 'generated' }
JSEnumDeclarationNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
JSEnumDeclarationNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
JSEnumDeclarationNode >> tokenVariables [
	^ #(#enumToken #constToken)
]

{ #category : 'generated' }
JSEnumDeclarationNode >> values [
	^ values
]

{ #category : 'generated' }
JSEnumDeclarationNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
