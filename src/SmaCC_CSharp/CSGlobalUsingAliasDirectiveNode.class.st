Class {
	#name : #CSGlobalUsingAliasDirectiveNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'globalToken',
		'usingToken',
		'name',
		'equal',
		'namespace',
		'semicolon'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGlobalUsingAliasDirective: self
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> equal [
	^ equal
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> globalToken [
	^ globalToken
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> globalToken: aSmaCCToken [
	globalToken := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> name [
	^ name
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> namespace [
	^ namespace
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> namespace: aCSTypeNode [
	self namespace notNil ifTrue: [ self namespace parent: nil ].
	namespace := aCSTypeNode.
	self namespace notNil ifTrue: [ self namespace parent: self ]
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> nodeVariables [
	^ #(#namespace)
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> tokenVariables [
	^ #(#globalToken #usingToken #name #equal #semicolon)
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
CSGlobalUsingAliasDirectiveNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
