Class {
	#name : #JSKeyOfTypeNode,
	#superclass : #JSTypeNode,
	#instVars : [
		'keyofToken',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSKeyOfTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitKeyOfType: self
]

{ #category : #generated }
JSKeyOfTypeNode >> keyofToken [
	^ keyofToken
]

{ #category : #generated }
JSKeyOfTypeNode >> keyofToken: aSmaCCToken [
	keyofToken := aSmaCCToken
]

{ #category : #generated }
JSKeyOfTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
JSKeyOfTypeNode >> tokenVariables [
	^ #(#keyofToken)
]

{ #category : #generated }
JSKeyOfTypeNode >> type [
	^ type
]

{ #category : #generated }
JSKeyOfTypeNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
