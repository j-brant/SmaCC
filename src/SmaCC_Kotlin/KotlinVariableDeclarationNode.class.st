Class {
	#name : 'KotlinVariableDeclarationNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'name',
		'colonToken',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinVariableDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitVariableDeclaration: self
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated-initialize-release' }
KotlinVariableDeclarationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> tokenVariables [
	^ #(#name #colonToken)
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinVariableDeclarationNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
