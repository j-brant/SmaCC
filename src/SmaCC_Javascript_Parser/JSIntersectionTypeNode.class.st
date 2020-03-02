Class {
	#name : #JSIntersectionTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'leftType',
		'operator',
		'rightType'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSIntersectionTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIntersectionType: self
]

{ #category : #generated }
JSIntersectionTypeNode >> leftType [
	^ leftType
]

{ #category : #generated }
JSIntersectionTypeNode >> leftType: aJSTypeNode [
	self leftType notNil
		ifTrue: [ self leftType parent: nil ].
	leftType := aJSTypeNode.
	self leftType notNil
		ifTrue: [ self leftType parent: self ]
]

{ #category : #generated }
JSIntersectionTypeNode >> nodeVariables [
	^ #(#leftType #rightType)
]

{ #category : #generated }
JSIntersectionTypeNode >> operator [
	^ operator
]

{ #category : #generated }
JSIntersectionTypeNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
JSIntersectionTypeNode >> rightType [
	^ rightType
]

{ #category : #generated }
JSIntersectionTypeNode >> rightType: aJSTypeNode [
	self rightType notNil
		ifTrue: [ self rightType parent: nil ].
	rightType := aJSTypeNode.
	self rightType notNil
		ifTrue: [ self rightType parent: self ]
]

{ #category : #generated }
JSIntersectionTypeNode >> tokenVariables [
	^ #(#operator)
]
