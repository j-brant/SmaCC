Class {
	#name : #CSOperatorDeclarationNode,
	#superclass : #CSDeclarationNode,
	#instVars : [
		'_attributes',
		'modifiers',
		'returnType',
		'operatorToken',
		'operator',
		'checkedToken',
		'leftParenToken',
		'parameters',
		'rightParenToken',
		'commaToken',
		'implicitToken',
		'explicitToken',
		'body'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSOperatorDeclarationNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
CSOperatorDeclarationNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
CSOperatorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOperatorDeclaration: self
]

{ #category : #generated }
CSOperatorDeclarationNode >> body [
	^ body
]

{ #category : #generated }
CSOperatorDeclarationNode >> body: aCSMethodBodyNode [
	self body notNil
		ifTrue: [ self body parent: nil ].
	body := aCSMethodBodyNode.
	self body notNil
		ifTrue: [ self body parent: self ]
]

{ #category : #generated }
CSOperatorDeclarationNode >> checkedToken [
	^ checkedToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> checkedToken: aSmaCCToken [
	checkedToken := aSmaCCToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> commaToken [
	^ commaToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> compositeNodeVariables [
	^ #(#_attributes #parameters)
]

{ #category : #generated }
CSOperatorDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #generated }
CSOperatorDeclarationNode >> explicitToken [
	^ explicitToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> explicitToken: aSmaCCToken [
	explicitToken := aSmaCCToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> ignoredTokenVariables [
	^ #(#commaToken)
]

{ #category : #generated }
CSOperatorDeclarationNode >> implicitToken [
	^ implicitToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> implicitToken: aSmaCCToken [
	implicitToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CSOperatorDeclarationNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
]

{ #category : #generated }
CSOperatorDeclarationNode >> leftParenToken [
	^ leftParenToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> leftParenToken: aSmaCCToken [
	leftParenToken := aSmaCCToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSOperatorDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSOperatorDeclarationNode >> nodeVariables [
	^ #(#returnType #body)
]

{ #category : #generated }
CSOperatorDeclarationNode >> operator [
	^ operator
]

{ #category : #generated }
CSOperatorDeclarationNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> operatorToken [
	^ operatorToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> operatorToken: aSmaCCToken [
	operatorToken := aSmaCCToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
CSOperatorDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
CSOperatorDeclarationNode >> returnType [
	^ returnType
]

{ #category : #generated }
CSOperatorDeclarationNode >> returnType: aCSTypeNode [
	self returnType notNil ifTrue: [ self returnType parent: nil ].
	returnType := aCSTypeNode.
	self returnType notNil ifTrue: [ self returnType parent: self ]
]

{ #category : #generated }
CSOperatorDeclarationNode >> rightParenToken [
	^ rightParenToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> rightParenToken: aSmaCCToken [
	rightParenToken := aSmaCCToken
]

{ #category : #generated }
CSOperatorDeclarationNode >> tokenVariables [
	^ #(#operatorToken #operator #checkedToken #leftParenToken #rightParenToken #implicitToken #explicitToken)
]
