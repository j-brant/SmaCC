Class {
	#name : 'JSMemberAccessorDeclarationNode',
	#superclass : 'JSProgramNode',
	#instVars : [
		'decorators',
		'accessor',
		'staticToken',
		'modifier'
	],
	#category : 'SmaCC_Javascript_Parser',
	#package : 'SmaCC_Javascript_Parser'
}

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberAccessorDeclaration: self
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> accessor [
	^ accessor
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> accessor: aJSMethodDefinitionNode [
	self accessor notNil ifTrue: [ self accessor parent: nil ].
	accessor := aJSMethodDefinitionNode.
	self accessor notNil ifTrue: [ self accessor parent: self ]
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> compositeNodeVariables [
	^ #(#decorators)
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> decorators [
	^ decorators
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : 'generated-initialize-release' }
JSMemberAccessorDeclarationNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> modifier [
	^ modifier
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> nodeVariables [
	^ #(#accessor)
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> staticToken [
	^ staticToken
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : 'generated' }
JSMemberAccessorDeclarationNode >> tokenVariables [
	^ #(#staticToken #modifier)
]
