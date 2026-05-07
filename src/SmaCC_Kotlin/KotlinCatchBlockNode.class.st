Class {
	#name : 'KotlinCatchBlockNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'catchToken',
		'leftParen',
		'annotations',
		'name',
		'colonToken',
		'type',
		'commaToken',
		'rightParen',
		'block'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinCatchBlockNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitCatchBlock: self
]

{ #category : 'generated' }
KotlinCatchBlockNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinCatchBlockNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinCatchBlockNode >> block [
	^ block
]

{ #category : 'generated' }
KotlinCatchBlockNode >> block: aKotlinBlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aKotlinBlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : 'generated' }
KotlinCatchBlockNode >> catchToken [
	^ catchToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> catchToken: aSmaCCToken [
	catchToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> commaToken [
	^ commaToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> commaToken: aSmaCCToken [
	commaToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> compositeNodeVariables [
	^ #(#annotations)
]

{ #category : 'generated-initialize-release' }
KotlinCatchBlockNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinCatchBlockNode >> leftParen [
	^ leftParen
]

{ #category : 'generated' }
KotlinCatchBlockNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinCatchBlockNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> nodeVariables [
	^ #(#type #block)
]

{ #category : 'generated' }
KotlinCatchBlockNode >> rightParen [
	^ rightParen
]

{ #category : 'generated' }
KotlinCatchBlockNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : 'generated' }
KotlinCatchBlockNode >> tokenVariables [
	^ #(#catchToken #leftParen #name #colonToken #commaToken #rightParen)
]

{ #category : 'generated' }
KotlinCatchBlockNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinCatchBlockNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
