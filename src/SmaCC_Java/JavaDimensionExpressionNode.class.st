Class {
	#name : 'JavaDimensionExpressionNode',
	#superclass : 'JavaProgramNode',
	#instVars : [
		'annotations',
		'leftBracket',
		'expression',
		'rightBracket'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaDimensionExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDimensionExpression: self
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> compositeNodeVariables [

	^ #( #annotations )
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> expression: aJavaExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aJavaExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : 'generated-initialize-release' }
JavaDimensionExpressionNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> leftBracket [
	^ leftBracket
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> rightBracket [
	^ rightBracket
]

{ #category : 'generated' }
JavaDimensionExpressionNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]
