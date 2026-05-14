Class {
	#name : 'KotlinFileNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'annotations',
		'packageToken',
		'name',
		'semicolonTokens',
		'imports',
		'declarations',
		'shebang'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinFileNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitFile: self
]

{ #category : 'generated' }
KotlinFileNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinFileNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinFileNode >> compositeNodeVariables [
	^ #(#annotations #imports #declarations)
]

{ #category : 'generated' }
KotlinFileNode >> compositeTokenVariables [
	^ #(#semicolonTokens)
]

{ #category : 'generated' }
KotlinFileNode >> declarations [
	^ declarations
]

{ #category : 'generated' }
KotlinFileNode >> declarations: anOrderedCollection [
	self setParents: self declarations to: nil.
	declarations := anOrderedCollection.
	self setParents: self declarations to: self
]

{ #category : 'generated' }
KotlinFileNode >> imports [
	^ imports
]

{ #category : 'generated' }
KotlinFileNode >> imports: anOrderedCollection [
	self setParents: self imports to: nil.
	imports := anOrderedCollection.
	self setParents: self imports to: self
]

{ #category : 'generated-initialize-release' }
KotlinFileNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
	imports := OrderedCollection new: 2.
	declarations := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinFileNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinFileNode >> name: aKotlinIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aKotlinIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
KotlinFileNode >> nodeVariables [
	^ #(#name)
]

{ #category : 'generated' }
KotlinFileNode >> packageToken [
	^ packageToken
]

{ #category : 'generated' }
KotlinFileNode >> packageToken: aSmaCCToken [
	packageToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinFileNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinFileNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinFileNode >> shebang [
	^ shebang
]

{ #category : 'generated' }
KotlinFileNode >> shebang: aSmaCCToken [
	shebang := aSmaCCToken
]

{ #category : 'generated' }
KotlinFileNode >> tokenVariables [
	^ #(#packageToken #shebang)
]
