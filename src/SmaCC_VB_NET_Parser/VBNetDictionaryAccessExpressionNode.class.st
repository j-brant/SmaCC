Class {
	#name : #VBNetDictionaryAccessExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'bangToken',
		'name',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDictionaryAccessExpression: self
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> bangToken [
	^ bangToken
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> bangToken: aSmaCCToken [
	bangToken := aSmaCCToken
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> name [
	^ name
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> tokenVariables [
	^ #(#bangToken #name)
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> value [
	^ value
]

{ #category : #generated }
VBNetDictionaryAccessExpressionNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
