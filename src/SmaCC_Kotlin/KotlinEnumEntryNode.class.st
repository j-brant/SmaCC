Class {
	#name : 'KotlinEnumEntryNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'modifiers',
		'name',
		'declarations',
		'semicolonTokens',
		'rightBrace',
		'leftBrace',
		'arguments'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinEnumEntryNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitEnumEntry: self
]

{ #category : 'generated' }
KotlinEnumEntryNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinEnumEntryNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinEnumEntryNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
KotlinEnumEntryNode >> arguments: aKotlinValueArgumentsNode [
	self arguments notNil ifTrue: [ self arguments parent: nil ].
	arguments := aKotlinValueArgumentsNode.
	self arguments notNil ifTrue: [ self arguments parent: self ]
]

{ #category : 'generated' }
KotlinEnumEntryNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #declarations)
]

{ #category : 'generated' }
KotlinEnumEntryNode >> compositeTokenVariables [
	^ #(#semicolonTokens)
]

{ #category : 'generated' }
KotlinEnumEntryNode >> declarations [
	^ declarations
]

{ #category : 'generated' }
KotlinEnumEntryNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : 'generated-initialize-release' }
KotlinEnumEntryNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinEnumEntryNode >> leftBrace [
	^ leftBrace
]

{ #category : 'generated' }
KotlinEnumEntryNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinEnumEntryNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinEnumEntryNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinEnumEntryNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinEnumEntryNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinEnumEntryNode >> nodeVariables [
	^ #(#arguments)
]

{ #category : 'generated' }
KotlinEnumEntryNode >> rightBrace [
	^ rightBrace
]

{ #category : 'generated' }
KotlinEnumEntryNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : 'generated' }
KotlinEnumEntryNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinEnumEntryNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinEnumEntryNode >> tokenVariables [
	^ #(#name #leftBrace #rightBrace)
]
