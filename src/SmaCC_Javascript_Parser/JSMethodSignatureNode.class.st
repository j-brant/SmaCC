Class {
	#name : #JSMethodSignatureNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'signature',
		'nullableIndicator',
		'modifiers',
		'semicolon'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSMethodSignatureNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethodSignature: self
]

{ #category : #generated }
JSMethodSignatureNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #generated }
JSMethodSignatureNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #'generated-initialize-release' }
JSMethodSignatureNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
]

{ #category : #generated }
JSMethodSignatureNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
JSMethodSignatureNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
JSMethodSignatureNode >> name [
	^ name
]

{ #category : #generated }
JSMethodSignatureNode >> name: aJSProgramNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSMethodSignatureNode >> nodeVariables [
	^ #(#name #signature)
]

{ #category : #generated }
JSMethodSignatureNode >> nullableIndicator [
	^ nullableIndicator
]

{ #category : #generated }
JSMethodSignatureNode >> nullableIndicator: aSmaCCToken [
	nullableIndicator := aSmaCCToken
]

{ #category : #generated }
JSMethodSignatureNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSMethodSignatureNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSMethodSignatureNode >> signature [
	^ signature
]

{ #category : #generated }
JSMethodSignatureNode >> signature: aJSCallSignatureNode [
	self signature notNil ifTrue: [ self signature parent: nil ].
	signature := aJSCallSignatureNode.
	self signature notNil ifTrue: [ self signature parent: self ]
]

{ #category : #generated }
JSMethodSignatureNode >> tokenVariables [
	^ #(#nullableIndicator)
]
