Class {
	#name : 'JSUnionTypeNode',
	#superclass : 'JSTypeNode',
	#instVars : [
		'leftType',
		'operator',
		'rightType'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSUnionTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnionType: self
]

{ #category : 'generated' }
JSUnionTypeNode >> leftType [
	^ leftType
]

{ #category : 'generated' }
JSUnionTypeNode >> leftType: aJSTypeNode [
	self leftType notNil ifTrue: [ self leftType parent: nil ].
	leftType := aJSTypeNode.
	self leftType notNil ifTrue: [ self leftType parent: self ]
]

{ #category : 'generated' }
JSUnionTypeNode >> nodeVariables [
	^ #(#leftType #rightType)
]

{ #category : 'generated' }
JSUnionTypeNode >> operator [
	^ operator
]

{ #category : 'generated' }
JSUnionTypeNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
JSUnionTypeNode >> rightType [
	^ rightType
]

{ #category : 'generated' }
JSUnionTypeNode >> rightType: aJSTypeNode [
	self rightType notNil ifTrue: [ self rightType parent: nil ].
	rightType := aJSTypeNode.
	self rightType notNil ifTrue: [ self rightType parent: self ]
]

{ #category : 'generated' }
JSUnionTypeNode >> tokenVariables [
	^ #(#operator)
]
