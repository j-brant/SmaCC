Class {
	#name : #JSPropertySignatureNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'colonToken',
		'type',
		'questionMarkToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSPropertySignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPropertySignature: self
]

{ #category : #generated }
JSPropertySignatureNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSPropertySignatureNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSPropertySignatureNode >> ignoredTokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
JSPropertySignatureNode >> name [
	^ name
]

{ #category : #generated }
JSPropertySignatureNode >> name: aJSProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSPropertySignatureNode >> nodeVariables [
	^ #(#name #type)
]

{ #category : #generated }
JSPropertySignatureNode >> questionMarkToken [
	^ questionMarkToken
]

{ #category : #generated }
JSPropertySignatureNode >> questionMarkToken: aSmaCCToken [
	questionMarkToken := aSmaCCToken
]

{ #category : #generated }
JSPropertySignatureNode >> tokenVariables [
	^ #(#questionMarkToken)
]

{ #category : #generated }
JSPropertySignatureNode >> type [
	^ type
]

{ #category : #generated }
JSPropertySignatureNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
