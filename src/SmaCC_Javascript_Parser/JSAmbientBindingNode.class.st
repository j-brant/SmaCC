Class {
	#name : #JSAmbientBindingNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'colonToken',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSAmbientBindingNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAmbientBinding: self
]

{ #category : #generated }
JSAmbientBindingNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSAmbientBindingNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSAmbientBindingNode >> ignoredTokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
JSAmbientBindingNode >> name [
	^ name
]

{ #category : #generated }
JSAmbientBindingNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSAmbientBindingNode >> nodeVariables [
	^ #(#name #type)
]

{ #category : #generated }
JSAmbientBindingNode >> type [
	^ type
]

{ #category : #generated }
JSAmbientBindingNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
