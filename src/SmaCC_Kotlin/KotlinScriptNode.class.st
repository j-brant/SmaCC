Class {
	#name : 'KotlinScriptNode',
	#superclass : 'KotlinNodeNode',
	#instVars : [
		'annotations',
		'packageToken',
		'name',
		'semicolonTokens',
		'imports',
		'statements',
		'shebangLine'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinScriptNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitScript: self
]

{ #category : 'generated' }
KotlinScriptNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinScriptNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinScriptNode >> compositeNodeVariables [
	^ #(#annotations #imports #statements)
]

{ #category : 'generated' }
KotlinScriptNode >> compositeTokenVariables [
	^ #(#semicolonTokens)
]

{ #category : 'generated' }
KotlinScriptNode >> imports [
	^ imports
]

{ #category : 'generated' }
KotlinScriptNode >> imports: anOrderedCollection [
	self setParents: self imports to: nil.
	imports := anOrderedCollection.
	self setParents: self imports to: self
]

{ #category : 'generated-initialize-release' }
KotlinScriptNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
	imports := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinScriptNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinScriptNode >> name: aKotlinIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aKotlinIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : 'generated' }
KotlinScriptNode >> nodeVariables [
	^ #(#name)
]

{ #category : 'generated' }
KotlinScriptNode >> packageToken [
	^ packageToken
]

{ #category : 'generated' }
KotlinScriptNode >> packageToken: aSmaCCToken [
	packageToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinScriptNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinScriptNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinScriptNode >> shebangLine [
	^ shebangLine
]

{ #category : 'generated' }
KotlinScriptNode >> shebangLine: aSmaCCToken [
	shebangLine := aSmaCCToken
]

{ #category : 'generated' }
KotlinScriptNode >> statements [
	^ statements
]

{ #category : 'generated' }
KotlinScriptNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : 'generated' }
KotlinScriptNode >> tokenVariables [
	^ #(#packageToken #shebangLine)
]
