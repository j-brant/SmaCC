Class {
	#name : #JSCopyPropertyNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'ellipsis',
		'object'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSCopyPropertyNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCopyProperty: self
]

{ #category : #generated }
JSCopyPropertyNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
JSCopyPropertyNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
JSCopyPropertyNode >> nodeVariables [
	^ #(#object)
]

{ #category : #generated }
JSCopyPropertyNode >> object [
	^ object
]

{ #category : #generated }
JSCopyPropertyNode >> object: aJSExpressionNode [
	self object notNil
		ifTrue: [ self object parent: nil ].
	object := aJSExpressionNode.
	self object notNil
		ifTrue: [ self object parent: self ]
]

{ #category : #generated }
JSCopyPropertyNode >> tokenVariables [
	^ #(#ellipsis)
]
