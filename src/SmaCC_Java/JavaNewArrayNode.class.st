Class {
	#name : 'JavaNewArrayNode',
	#superclass : 'JavaExpressionNode',
	#instVars : [
		'newToken',
		'type',
		'dimExpressions',
		'dimensions',
		'leftBrackets',
		'rightBrackets',
		'initializer'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaNewArrayNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNewArray: self
]

{ #category : 'generated' }
JavaNewArrayNode >> compositeNodeVariables [

	^ #( #dimExpressions #dimensions )
]

{ #category : 'generated' }
JavaNewArrayNode >> dimExpressions [
	^ dimExpressions
]

{ #category : 'generated' }
JavaNewArrayNode >> dimExpressions: anOrderedCollection [
	self setParents: self dimExpressions to: nil.
	dimExpressions := anOrderedCollection.
	self setParents: self dimExpressions to: self
]

{ #category : 'generated' }
JavaNewArrayNode >> dimensions [

	^ dimensions
]

{ #category : 'generated' }
JavaNewArrayNode >> dimensions: anOrderedCollection [

	self setParents: self dimensions to: nil.
	dimensions := anOrderedCollection.
	self setParents: self dimensions to: self
]

{ #category : 'generated' }
JavaNewArrayNode >> ignoredCompositeTokenVariables [
	^ #(#leftBrackets #rightBrackets #_leftParens #_rightParens)
]

{ #category : 'generated-initialize-release' }
JavaNewArrayNode >> initialize [
	super initialize.
	dimExpressions := OrderedCollection new: 2.
	dimensions := OrderedCollection new: 2.
	leftBrackets := OrderedCollection new: 2.
	rightBrackets := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaNewArrayNode >> initializer [
	^ initializer
]

{ #category : 'generated' }
JavaNewArrayNode >> initializer: aJavaArrayInitializerNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aJavaArrayInitializerNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : 'generated' }
JavaNewArrayNode >> leftBrackets [
	^ leftBrackets
]

{ #category : 'generated' }
JavaNewArrayNode >> leftBrackets: anOrderedCollection [
	leftBrackets := anOrderedCollection
]

{ #category : 'generated' }
JavaNewArrayNode >> newToken [
	^ newToken
]

{ #category : 'generated' }
JavaNewArrayNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : 'generated' }
JavaNewArrayNode >> nodeVariables [
	^ #(#type #initializer)
]

{ #category : 'generated' }
JavaNewArrayNode >> rightBrackets [
	^ rightBrackets
]

{ #category : 'generated' }
JavaNewArrayNode >> rightBrackets: anOrderedCollection [
	rightBrackets := anOrderedCollection
]

{ #category : 'generated' }
JavaNewArrayNode >> tokenVariables [
	^ #(#newToken)
]

{ #category : 'generated' }
JavaNewArrayNode >> type [
	^ type
]

{ #category : 'generated' }
JavaNewArrayNode >> type: aJavaTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
