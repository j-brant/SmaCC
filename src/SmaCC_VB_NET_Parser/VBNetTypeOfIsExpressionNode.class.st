Class {
	#name : #VBNetTypeOfIsExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'typeOfToken',
		'expression',
		'_isToken',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> _isToken [
	^ _isToken
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> _isToken: aSmaCCToken [
	_isToken := aSmaCCToken
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeOfIsExpression: self
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> expression [
	^ expression
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> expression: aVBNetExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aVBNetExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> tokenVariables [
	^ #(#typeOfToken #_isToken)
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> type [
	^ type
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> typeOfToken [
	^ typeOfToken
]

{ #category : #generated }
VBNetTypeOfIsExpressionNode >> typeOfToken: aSmaCCToken [
	typeOfToken := aSmaCCToken
]
