Class {
	#name : #CSLocalVariableDeclarationNode,
	#superclass : #CSDeclarationNode,
	#instVars : [
		'type',
		'declarators',
		'refToken',
		'readonlyToken',
		'commaTokens'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSLocalVariableDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLocalVariableDeclaration: self
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> compositeNodeVariables [
	^ #(#declarators)
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> declarators [
	^ declarators
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> declarators: anOrderedCollection [
	self setParents: self declarators to: nil.
	declarators := anOrderedCollection.
	self setParents: self declarators to: self
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
CSLocalVariableDeclarationNode >> initialize [
	super initialize.
	declarators := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> readonlyToken [
	^ readonlyToken
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> readonlyToken: aSmaCCToken [
	readonlyToken := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> refToken [
	^ refToken
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> tokenVariables [
	^ #(#refToken #readonlyToken)
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> type [
	^ type
]

{ #category : #generated }
CSLocalVariableDeclarationNode >> type: aCSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
