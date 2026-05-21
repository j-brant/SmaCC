Class {
	#name : 'CSStackallocExpressionNode',
	#superclass : 'CSExpressionNode',
	#instVars : [
		'stackallocToken',
		'type',
		'leftBracket',
		'expression',
		'rightBracket',
		'initializer'
	],
	#category : 'SmaCC_CSharp',
	#package : 'SmaCC_CSharp'
}

{ #category : 'generated' }
CSStackallocExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStackallocExpression: self
]

{ #category : 'generated' }
CSStackallocExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
CSStackallocExpressionNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
CSStackallocExpressionNode >> initializer [
	^ initializer
]

{ #category : 'generated' }
CSStackallocExpressionNode >> initializer: aCSStackallocInitializerNode [
	self initializer notNil ifTrue: [ self initializer parent: nil ].
	initializer := aCSStackallocInitializerNode.
	self initializer notNil ifTrue: [ self initializer parent: self ]
]

{ #category : 'generated' }
CSStackallocExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
CSStackallocExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
CSStackallocExpressionNode >> nodeVariables [
	^ #(#type #expression #initializer)
]

{ #category : 'generated' }
CSStackallocExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
CSStackallocExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : 'generated' }
CSStackallocExpressionNode >> stackallocToken [
	^ stackallocToken
]

{ #category : 'generated' }
CSStackallocExpressionNode >> stackallocToken: aSmaCCToken [
	stackallocToken := aSmaCCToken
]

{ #category : 'generated' }
CSStackallocExpressionNode >> tokenVariables [
	^ #(#stackallocToken #leftBracket #rightBracket)
]

{ #category : 'generated' }
CSStackallocExpressionNode >> type [
	^ type
]

{ #category : 'generated' }
CSStackallocExpressionNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
