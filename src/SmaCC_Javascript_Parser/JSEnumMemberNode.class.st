Class {
	#name : #JSEnumMemberNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'equalToken',
		'value'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSEnumMemberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumMember: self
]

{ #category : #generated }
JSEnumMemberNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSEnumMemberNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSEnumMemberNode >> name [
	^ name
]

{ #category : #generated }
JSEnumMemberNode >> name: aJSProgramNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSEnumMemberNode >> nodeVariables [
	^ #(#name #value)
]

{ #category : #generated }
JSEnumMemberNode >> tokenVariables [
	^ #(#equalToken)
]

{ #category : #generated }
JSEnumMemberNode >> value [
	^ value
]

{ #category : #generated }
JSEnumMemberNode >> value: aJSExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aJSExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
