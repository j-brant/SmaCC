Class {
	#name : 'KotlinPropertyDeclarationNode',
	#superclass : 'KotlinDeclarationNode',
	#instVars : [
		'annotations',
		'modifiers',
		'valToken',
		'lt',
		'parameters',
		'commaTokens',
		'gt',
		'type',
		'dot',
		'declaration',
		'whereToken',
		'constraints',
		'operator',
		'expression',
		'semicolonTokens',
		'getter',
		'setter',
		'varToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitPropertyDeclaration: self
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> commaTokens [
	^ commaTokens
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> compositeNodeVariables [
	^ #(#annotations #modifiers #parameters #constraints)
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> compositeTokenVariables [
	^ #(#commaTokens #semicolonTokens)
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> constraints [
	^ constraints
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> constraints: anOrderedCollection [
	self setParents: self constraints to: nil.
	constraints := anOrderedCollection.
	self setParents: self constraints to: self
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> declaration [
	^ declaration
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> declaration: aKotlinMemberNode [
	self declaration notNil ifTrue: [ self declaration parent: nil ].
	declaration := aKotlinMemberNode.
	self declaration notNil ifTrue: [ self declaration parent: self ]
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> dot [
	^ dot
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> dot: aSmaCCToken [
	dot := aSmaCCToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> getter [
	^ getter
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> getter: aKotlinGetterNode [
	self getter notNil ifTrue: [ self getter parent: nil ].
	getter := aKotlinGetterNode.
	self getter notNil ifTrue: [ self getter parent: self ]
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> gt [
	^ gt
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated-initialize-release' }
KotlinPropertyDeclarationNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	constraints := OrderedCollection new: 2.
	semicolonTokens := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> lt [
	^ lt
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> nodeVariables [
	^ #(#type #declaration #expression #getter #setter)
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> parameters [
	^ parameters
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> semicolonTokens [
	^ semicolonTokens
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> semicolonTokens: anOrderedCollection [
	semicolonTokens := anOrderedCollection
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> setter [
	^ setter
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> setter: aKotlinSetterNode [
	self setter notNil ifTrue: [ self setter parent: nil ].
	setter := aKotlinSetterNode.
	self setter notNil ifTrue: [ self setter parent: self ]
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> tokenVariables [
	^ #(#valToken #lt #gt #dot #whereToken #operator #varToken)
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> valToken [
	^ valToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> valToken: aSmaCCToken [
	valToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> varToken [
	^ varToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> varToken: aSmaCCToken [
	varToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> whereToken [
	^ whereToken
]

{ #category : 'generated' }
KotlinPropertyDeclarationNode >> whereToken: aSmaCCToken [
	whereToken := aSmaCCToken
]
