Class {
	#name : #CPPOriginalNamespaceDefinitionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'namespaceToken',
		'names',
		'colonColons',
		'leftBrace',
		'declarations',
		'rightBrace',
		'inlineToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOriginalNamespaceDefinition: self
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> colonColons [
	^ colonColons
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> colonColons: anOrderedCollection [
	colonColons := anOrderedCollection
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> compositeNodeVariables [
	^ #(#declarations)
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> compositeTokenVariables [
	^ #(#names #colonColons)
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> declarations [
	^ declarations
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : #'generated-initialize-release' }
CPPOriginalNamespaceDefinitionNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	colonColons := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> inlineToken [
	^ inlineToken
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> inlineToken: aSmaCCToken [
	inlineToken := aSmaCCToken
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> names [
	^ names
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> namespaceToken [
	^ namespaceToken
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> namespaceToken: aSmaCCToken [
	namespaceToken := aSmaCCToken
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CPPOriginalNamespaceDefinitionNode >> tokenVariables [
	^ #(#namespaceToken #leftBrace #rightBrace #inlineToken)
]
