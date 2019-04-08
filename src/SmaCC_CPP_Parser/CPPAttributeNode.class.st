Class {
	#name : #CPPAttributeNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name',
		'namespace',
		'colonColon',
		'argumentClause'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttribute: self
]

{ #category : #generated }
CPPAttributeNode >> argumentClause [
	^ argumentClause
]

{ #category : #generated }
CPPAttributeNode >> argumentClause: aCPPAttributeArgumentClauseNode [
	self argumentClause notNil
		ifTrue: [ self argumentClause parent: nil ].
	argumentClause := aCPPAttributeArgumentClauseNode.
	self argumentClause notNil
		ifTrue: [ self argumentClause parent: self ]
]

{ #category : #generated }
CPPAttributeNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
CPPAttributeNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> name [
	^ name
]

{ #category : #generated }
CPPAttributeNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> namespace [
	^ namespace
]

{ #category : #generated }
CPPAttributeNode >> namespace: aSmaCCToken [
	namespace := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> nodeVariables [
	^ #(#argumentClause)
]

{ #category : #generated }
CPPAttributeNode >> tokenVariables [
	^ #(#name #namespace #colonColon)
]
