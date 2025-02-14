Class {
	#name : #CSGlobalUsingNamespaceDirectiveNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'globalToken',
		'usingToken',
		'namespace',
		'semicolon'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGlobalUsingNamespaceDirective: self
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> namespace [
	^ namespace
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> namespace: aCSTypeNode [
	self namespace notNil ifTrue: [ self namespace parent: nil ].
	namespace := aCSTypeNode.
	self namespace notNil ifTrue: [ self namespace parent: self ]
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> nodeVariables [
	^ #(#namespace)
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> tokenVariables [
	^ #(#globalToken #usingToken #semicolon)
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
CSGlobalUsingNamespaceDirectiveNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
