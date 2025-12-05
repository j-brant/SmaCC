Class {
	#name : 'JSImportCallExpressionNode',
	#superclass : 'JSExpressionNode',
	#instVars : [
		'importToken',
		'left',
		'expression',
		'right'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSImportCallExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitImportCallExpression: self
]

{ #category : 'generated' }
JSImportCallExpressionNode >> expression [
	^ expression
]

{ #category : 'generated' }
JSImportCallExpressionNode >> expression: aJSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aJSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
JSImportCallExpressionNode >> ignoredTokenVariables [
	^ #(#left #right)
]

{ #category : 'generated' }
JSImportCallExpressionNode >> importToken [
	^ importToken
]

{ #category : 'generated' }
JSImportCallExpressionNode >> importToken: aSmaCCToken [
	importToken := aSmaCCToken
]

{ #category : 'generated' }
JSImportCallExpressionNode >> left [
	^ left
]

{ #category : 'generated' }
JSImportCallExpressionNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : 'generated' }
JSImportCallExpressionNode >> nodeVariables [
	^ #(#expression)
]

{ #category : 'generated' }
JSImportCallExpressionNode >> right [
	^ right
]

{ #category : 'generated' }
JSImportCallExpressionNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : 'generated' }
JSImportCallExpressionNode >> tokenVariables [
	^ #(#importToken)
]
