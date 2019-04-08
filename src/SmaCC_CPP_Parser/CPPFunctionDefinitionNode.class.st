Class {
	#name : #CPPFunctionDefinitionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'declarator',
		'body',
		'constructor',
		'equal',
		'defaultToken',
		'semicolon',
		'_deleteToken',
		'virtualSpecifierTokens',
		'specifiers'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPFunctionDefinitionNode >> _deleteToken [
	^ _deleteToken
]

{ #category : #generated }
CPPFunctionDefinitionNode >> _deleteToken: aSmaCCToken [
	_deleteToken := aSmaCCToken
]

{ #category : #generated }
CPPFunctionDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionDefinition: self
]

{ #category : #generated }
CPPFunctionDefinitionNode >> body [
	^ body
]

{ #category : #generated }
CPPFunctionDefinitionNode >> body: aCPPStatementNode [
	self body notNil
		ifTrue: [ self body parent: nil ].
	body := aCPPStatementNode.
	self body notNil
		ifTrue: [ self body parent: self ]
]

{ #category : #generated }
CPPFunctionDefinitionNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPFunctionDefinitionNode >> compositeTokenVariables [
	^ #(#virtualSpecifierTokens)
]

{ #category : #generated }
CPPFunctionDefinitionNode >> constructor [
	^ constructor
]

{ #category : #generated }
CPPFunctionDefinitionNode >> constructor: aCPPCtorInitializerNode [
	self constructor notNil
		ifTrue: [ self constructor parent: nil ].
	constructor := aCPPCtorInitializerNode.
	self constructor notNil
		ifTrue: [ self constructor parent: self ]
]

{ #category : #generated }
CPPFunctionDefinitionNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPFunctionDefinitionNode >> declarator: aCPPDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPFunctionDefinitionNode >> defaultToken [
	^ defaultToken
]

{ #category : #generated }
CPPFunctionDefinitionNode >> defaultToken: aSmaCCToken [
	defaultToken := aSmaCCToken
]

{ #category : #generated }
CPPFunctionDefinitionNode >> equal [
	^ equal
]

{ #category : #generated }
CPPFunctionDefinitionNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPFunctionDefinitionNode >> initialize [
	super initialize.
	virtualSpecifierTokens := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPFunctionDefinitionNode >> nodeVariables [
	^ #(#declarator #body #constructor)
]

{ #category : #generated }
CPPFunctionDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
CPPFunctionDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
CPPFunctionDefinitionNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPFunctionDefinitionNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPFunctionDefinitionNode >> tokenVariables [
	^ #(#equal #defaultToken #semicolon #_deleteToken)
]

{ #category : #generated }
CPPFunctionDefinitionNode >> virtualSpecifierTokens [
	^ virtualSpecifierTokens
]

{ #category : #generated }
CPPFunctionDefinitionNode >> virtualSpecifierTokens: anOrderedCollection [
	virtualSpecifierTokens := anOrderedCollection
]
