Class {
	#name : #JSIndexSignatureNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'leftBrace',
		'name',
		'colonTokens',
		'value',
		'rightParen',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSIndexSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitIndexSignature: self
]

{ #category : #generated }
JSIndexSignatureNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
JSIndexSignatureNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
JSIndexSignatureNode >> ignoredCompositeTokenVariables [
	^ #(#colonTokens)
]

{ #category : #generated }
JSIndexSignatureNode >> ignoredTokenVariables [
	^ #(#leftBrace #rightParen)
]

{ #category : #'generated-initialize-release' }
JSIndexSignatureNode >> initialize [
	super initialize.
	colonTokens := OrderedCollection new: 2.
]

{ #category : #generated }
JSIndexSignatureNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
JSIndexSignatureNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
JSIndexSignatureNode >> name [
	^ name
]

{ #category : #generated }
JSIndexSignatureNode >> name: aJSNameExpressionNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSIndexSignatureNode >> nodeVariables [
	^ #(#name #type)
]

{ #category : #generated }
JSIndexSignatureNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
JSIndexSignatureNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
JSIndexSignatureNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
JSIndexSignatureNode >> type [
	^ type
]

{ #category : #generated }
JSIndexSignatureNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSIndexSignatureNode >> value [
	^ value
]

{ #category : #generated }
JSIndexSignatureNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
