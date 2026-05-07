Class {
	#name : 'KotlinTypeAliasDeclarationNode',
	#superclass : 'KotlinDeclarationNode',
	#instVars : [
		'annotations',
		'modifiers',
		'typeAliasToken',
		'name',
		'lt',
		'parameters',
		'commaTokens',
		'gt',
		'operator',
		'type'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitTypeAliasDeclaration: self
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #parameters)
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> gt [
	^ gt
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinTypeAliasDeclarationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> lt [
	^ lt
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> nodeVariables [
	^ #(#type)
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> tokenVariables [
	^ #(#typeAliasToken #name #lt #gt #operator)
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> typeAliasToken [
	^ typeAliasToken
]

{ #category : 'generated' }
KotlinTypeAliasDeclarationNode >> typeAliasToken: aSmaCCToken [
	typeAliasToken := aSmaCCToken
]
