Class {
	#name : #JSInferTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'inferToken',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSInferTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInferType: self
]

{ #category : #generated }
JSInferTypeNode >> inferToken [
	^ inferToken
]

{ #category : #generated }
JSInferTypeNode >> inferToken: aSmaCCToken [
	inferToken := aSmaCCToken
]

{ #category : #generated }
JSInferTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
JSInferTypeNode >> tokenVariables [
	^ #(#inferToken)
]

{ #category : #generated }
JSInferTypeNode >> type [
	^ type
]

{ #category : #generated }
JSInferTypeNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
