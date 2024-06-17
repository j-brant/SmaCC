Class {
	#name : #CSFinalizerDeclarationNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'_attributes',
		'modifiers',
		'tildeToken',
		'identifierToken',
		'leftParenToken',
		'rightParenToken',
		'body'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSFinalizerDeclarationNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
CSFinalizerDeclarationNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
CSFinalizerDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFinalizerDeclaration: self
]

{ #category : #generated }
CSFinalizerDeclarationNode >> body [
	^ body
]

{ #category : #generated }
CSFinalizerDeclarationNode >> body: aCSMethodBodyNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aCSMethodBodyNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : #generated }
CSFinalizerDeclarationNode >> compositeNodeVariables [
	^ #(#_attributes)
]

{ #category : #generated }
CSFinalizerDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #generated }
CSFinalizerDeclarationNode >> identifierToken [
	^ identifierToken
]

{ #category : #generated }
CSFinalizerDeclarationNode >> identifierToken: aSmaCCToken [
	identifierToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CSFinalizerDeclarationNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CSFinalizerDeclarationNode >> leftParenToken [
	^ leftParenToken
]

{ #category : #generated }
CSFinalizerDeclarationNode >> leftParenToken: aSmaCCToken [
	leftParenToken := aSmaCCToken
]

{ #category : #generated }
CSFinalizerDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
CSFinalizerDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
CSFinalizerDeclarationNode >> nodeVariables [
	^ #(#body)
]

{ #category : #generated }
CSFinalizerDeclarationNode >> rightParenToken [
	^ rightParenToken
]

{ #category : #generated }
CSFinalizerDeclarationNode >> rightParenToken: aSmaCCToken [
	rightParenToken := aSmaCCToken
]

{ #category : #generated }
CSFinalizerDeclarationNode >> tildeToken [
	^ tildeToken
]

{ #category : #generated }
CSFinalizerDeclarationNode >> tildeToken: aSmaCCToken [
	tildeToken := aSmaCCToken
]

{ #category : #generated }
CSFinalizerDeclarationNode >> tokenVariables [
	^ #(#tildeToken #identifierToken #leftParenToken #rightParenToken)
]
