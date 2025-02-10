Class {
	#name : #CSGlobalUsingStaticDirectiveNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'globalToken',
		'usingToken',
		'staticToken',
		'namespace',
		'semicolon'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGlobalUsingStaticDirective: self
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> namespace [
	^ namespace
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> namespace: aCSTypeNode [
	self namespace notNil ifTrue: [ self namespace parent: nil ].
	namespace := aCSTypeNode.
	self namespace notNil ifTrue: [ self namespace parent: self ]
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> nodeVariables [
	^ #(#namespace)
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> tokenVariables [
	^ #(#globalToken #usingToken #staticToken #semicolon)
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
CSGlobalUsingStaticDirectiveNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
