Class {
	#name : 'KotlinWhenEntryNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'whens',
		'commaTokens',
		'arrowToken',
		'body',
		'semicolonToken',
		'elseToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinWhenEntryNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitWhenEntry: self
]

{ #category : 'generated' }
KotlinWhenEntryNode >> arrowToken [
	^ arrowToken
]

{ #category : 'generated' }
KotlinWhenEntryNode >> arrowToken: aSmaCCToken [
	arrowToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenEntryNode >> body [
	^ body
]

{ #category : 'generated' }
KotlinWhenEntryNode >> body: aKotlinNodeNode [
	self body notNil ifTrue: [ self body parent: nil ].
	body := aKotlinNodeNode.
	self body notNil ifTrue: [ self body parent: self ]
]

{ #category : 'generated' }
KotlinWhenEntryNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinWhenEntryNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinWhenEntryNode >> compositeNodeVariables [
	^ #(#whens)
]

{ #category : 'generated' }
KotlinWhenEntryNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : 'generated' }
KotlinWhenEntryNode >> elseToken [
	^ elseToken
]

{ #category : 'generated' }
KotlinWhenEntryNode >> elseToken: aSmaCCToken [
	elseToken := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinWhenEntryNode >> initialize [
	super initialize.
	whens := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinWhenEntryNode >> nodeVariables [
	^ #(#body)
]

{ #category : 'generated' }
KotlinWhenEntryNode >> semicolonToken [
	^ semicolonToken
]

{ #category : 'generated' }
KotlinWhenEntryNode >> semicolonToken: aSmaCCToken [
	semicolonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinWhenEntryNode >> tokenVariables [
	^ #(#arrowToken #semicolonToken #elseToken)
]

{ #category : 'generated' }
KotlinWhenEntryNode >> whens [
	^ whens
]

{ #category : 'generated' }
KotlinWhenEntryNode >> whens: anOrderedCollection [
	self setParents: self whens to: nil.
	whens := anOrderedCollection.
	self setParents: self whens to: self
]
