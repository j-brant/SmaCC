Class {
	#name : #JSMethodSignatureNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'signature',
		'questionMarkToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSMethodSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethodSignature: self
]

{ #category : #generated }
JSMethodSignatureNode >> name [
	^ name
]

{ #category : #generated }
JSMethodSignatureNode >> name: aJSProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSMethodSignatureNode >> nodeVariables [
	^ #(#name #signature)
]

{ #category : #generated }
JSMethodSignatureNode >> questionMarkToken [
	^ questionMarkToken
]

{ #category : #generated }
JSMethodSignatureNode >> questionMarkToken: aSmaCCToken [
	questionMarkToken := aSmaCCToken
]

{ #category : #generated }
JSMethodSignatureNode >> signature [
	^ signature
]

{ #category : #generated }
JSMethodSignatureNode >> signature: aJSCallSignatureNode [
	self signature notNil
		ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil
		ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
JSMethodSignatureNode >> tokenVariables [
	^ #(#questionMarkToken)
]
