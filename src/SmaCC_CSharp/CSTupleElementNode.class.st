Class {
	#name : #CSTupleElementNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'value',
		'name',
		'colon'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSTupleElementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTupleElement: self
]

{ #category : #generated }
CSTupleElementNode >> colon [
	^ colon
]

{ #category : #generated }
CSTupleElementNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CSTupleElementNode >> name [
	^ name
]

{ #category : #generated }
CSTupleElementNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSTupleElementNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CSTupleElementNode >> tokenVariables [
	^ #(#name #colon)
]

{ #category : #generated }
CSTupleElementNode >> value [
	^ value
]

{ #category : #generated }
CSTupleElementNode >> value: aCSExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCSExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
