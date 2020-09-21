Class {
	#name : #JSBindingRestPropertyNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'ellipsis',
		'name'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSBindingRestPropertyNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBindingRestProperty: self
]

{ #category : #generated }
JSBindingRestPropertyNode >> ellipsis [
	^ ellipsis
]

{ #category : #generated }
JSBindingRestPropertyNode >> ellipsis: aSmaCCToken [
	ellipsis := aSmaCCToken
]

{ #category : #generated }
JSBindingRestPropertyNode >> name [
	^ name
]

{ #category : #generated }
JSBindingRestPropertyNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSBindingRestPropertyNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
JSBindingRestPropertyNode >> tokenVariables [
	^ #(#ellipsis)
]
