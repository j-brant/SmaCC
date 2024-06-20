Class {
	#name : #CSDeconstructionExpressionNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'type',
		'leftParen',
		'elements',
		'commaTokens',
		'rightParen'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSDeconstructionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDeconstructionExpression: self
]

{ #category : #generated }
CSDeconstructionExpressionNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSDeconstructionExpressionNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSDeconstructionExpressionNode >> compositeNodeVariables [
	^ #(#elements)
]

{ #category : #generated }
CSDeconstructionExpressionNode >> elements [
	^ elements
]

{ #category : #generated }
CSDeconstructionExpressionNode >> elements: anOrderedCollection [
	self setParents: self elements to: nil.
	elements := anOrderedCollection.
	self setParents: self elements to: self
]

{ #category : #generated }
CSDeconstructionExpressionNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens #_leftParens #_rightParens)
]

{ #category : #'generated-initialize-release' }
CSDeconstructionExpressionNode >> initialize [
	super initialize.
	elements := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSDeconstructionExpressionNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
CSDeconstructionExpressionNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
CSDeconstructionExpressionNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSDeconstructionExpressionNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
CSDeconstructionExpressionNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
CSDeconstructionExpressionNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]

{ #category : #generated }
CSDeconstructionExpressionNode >> type [
	^ type
]

{ #category : #generated }
CSDeconstructionExpressionNode >> type: aCSVarTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSVarTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
