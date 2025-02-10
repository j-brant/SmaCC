Class {
	#name : #CSLocalUsingDeclarationNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'usingToken',
		'type',
		'declarators',
		'commas'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSLocalUsingDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLocalUsingDeclaration: self
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> compositeNodeVariables [
	^ #(#declarators)
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> declarators [
	^ declarators
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> declarators: anOrderedCollection [
	self setParents: self declarators to: nil.
	declarators := anOrderedCollection.
	self setParents: self declarators to: self
]

{ #category : #'generated-initialize-release' }
CSLocalUsingDeclarationNode >> initialize [
	super initialize.
	declarators := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> tokenVariables [
	^ #(#usingToken)
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> type [
	^ type
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
CSLocalUsingDeclarationNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]
