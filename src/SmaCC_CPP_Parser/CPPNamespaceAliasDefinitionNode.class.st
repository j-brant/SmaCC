Class {
	#name : #CPPNamespaceAliasDefinitionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'namespaceToken',
		'name',
		'equal',
		'namespaceName',
		'nameSpecifier',
		'semicolon'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNamespaceAliasDefinition: self
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> equal [
	^ equal
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> name [
	^ name
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> namespaceName [
	^ namespaceName
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> namespaceName: aCPPIdentifierNode [
	self namespaceName notNil
		ifTrue: [ self namespaceName parent: nil ].
	namespaceName := aCPPIdentifierNode.
	self namespaceName notNil
		ifTrue: [ self namespaceName parent: self ]
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> namespaceToken [
	^ namespaceToken
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> nodeVariables [
	^ #(#namespaceName #nameSpecifier)
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPNamespaceAliasDefinitionNode >> tokenVariables [
	^ #(#namespaceToken #name #equal #semicolon)
]
