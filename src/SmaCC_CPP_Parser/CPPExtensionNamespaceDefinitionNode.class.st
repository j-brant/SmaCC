Class {
	#name : #CPPExtensionNamespaceDefinitionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'namespaceToken',
		'name',
		'leftBrace',
		'declarations',
		'rightBrace',
		'inlineToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExtensionNamespaceDefinition: self
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> compositeNodeVariables [
	^ #(#declarations)
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #'generated-initialize-release' }
CPPExtensionNamespaceDefinitionNode >> initialize [
	super initialize.
	declarations := OrderedCollection new: 2.
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> inlineToken [
	^ inlineToken
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> inlineToken: aSmaCCToken [
	inlineToken := aSmaCCToken
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> name [
	^ name
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> namespaceToken [
	^ namespaceToken
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPExtensionNamespaceDefinitionNode >> tokenVariables [
	^ #(#namespaceToken #name #leftBrace #rightBrace #inlineToken)
]
