Class {
	#name : 'KotlinClassParameterNode',
	#superclass : 'KotlinMemberNode',
	#instVars : [
		'annotations',
		'modifiers',
		'name',
		'colonToken',
		'type',
		'operator',
		'expression',
		'valToken',
		'varToken'
	],
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
KotlinClassParameterNode >> acceptVisitor: aNodeVisitor [
	^ aNodeVisitor visitClassParameter: self
]

{ #category : 'generated' }
KotlinClassParameterNode >> annotations [
	^ annotations
]

{ #category : 'generated' }
KotlinClassParameterNode >> annotations: anOrderedCollection [
	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
KotlinClassParameterNode >> colonToken [
	^ colonToken
]

{ #category : 'generated' }
KotlinClassParameterNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassParameterNode >> compositeNodeVariables [
	^ #(#annotations #modifiers)
]

{ #category : 'generated' }
KotlinClassParameterNode >> expression [
	^ expression
]

{ #category : 'generated' }
KotlinClassParameterNode >> expression: aKotlinExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aKotlinExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : 'generated-initialize-release' }
KotlinClassParameterNode >> initialize [
	super initialize.
	annotations := OrderedCollection new: 2.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
KotlinClassParameterNode >> modifiers [
	^ modifiers
]

{ #category : 'generated' }
KotlinClassParameterNode >> modifiers: anOrderedCollection [
	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
KotlinClassParameterNode >> name [
	^ name
]

{ #category : 'generated' }
KotlinClassParameterNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassParameterNode >> nodeVariables [
	^ #(#type #expression)
]

{ #category : 'generated' }
KotlinClassParameterNode >> operator [
	^ operator
]

{ #category : 'generated' }
KotlinClassParameterNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassParameterNode >> tokenVariables [
	^ #(#name #colonToken #operator #valToken #varToken)
]

{ #category : 'generated' }
KotlinClassParameterNode >> type [
	^ type
]

{ #category : 'generated' }
KotlinClassParameterNode >> type: aKotlinTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aKotlinTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
KotlinClassParameterNode >> valToken [
	^ valToken
]

{ #category : 'generated' }
KotlinClassParameterNode >> valToken: aSmaCCToken [
	valToken := aSmaCCToken
]

{ #category : 'generated' }
KotlinClassParameterNode >> varToken [
	^ varToken
]

{ #category : 'generated' }
KotlinClassParameterNode >> varToken: aSmaCCToken [
	varToken := aSmaCCToken
]
