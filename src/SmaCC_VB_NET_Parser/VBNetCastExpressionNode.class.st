Class {
	#name : #VBNetCastExpressionNode,
	#superclass : #VBNetExpressionNode,
	#instVars : [
		'castType',
		'value',
		'comma',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCastExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCastExpression: self
]

{ #category : #generated }
VBNetCastExpressionNode >> castType [
	^ castType
]

{ #category : #generated }
VBNetCastExpressionNode >> castType: aSmaCCToken [
	castType := aSmaCCToken
]

{ #category : #generated }
VBNetCastExpressionNode >> comma [
	^ comma
]

{ #category : #generated }
VBNetCastExpressionNode >> comma: aSmaCCToken [
	comma := aSmaCCToken
]

{ #category : #generated }
VBNetCastExpressionNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
VBNetCastExpressionNode >> tokenVariables [
	^ #(#castType #comma)
]

{ #category : #generated }
VBNetCastExpressionNode >> type [
	^ type
]

{ #category : #generated }
VBNetCastExpressionNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetCastExpressionNode >> value [
	^ value
]

{ #category : #generated }
VBNetCastExpressionNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
