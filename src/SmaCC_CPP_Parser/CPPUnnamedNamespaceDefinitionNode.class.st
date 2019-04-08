Class {
	#name : #CPPUnnamedNamespaceDefinitionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'namespaceToken',
		'leftBrace',
		'declarations',
		'rightBrace',
		'inlineToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnnamedNamespaceDefinition: self
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> compositeNodeVariables [
	^ #(#declarations)
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #'generated-initialize-release' }
CPPUnnamedNamespaceDefinitionNode >> initialize [
	super initialize.
	declarations := OrderedCollection new: 2.
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> inlineToken [
	^ inlineToken
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> inlineToken: aSmaCCToken [
	inlineToken := aSmaCCToken
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> namespaceToken [
	^ namespaceToken
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPUnnamedNamespaceDefinitionNode >> tokenVariables [
	^ #(#namespaceToken #leftBrace #rightBrace #inlineToken)
]
