Class {
	#name : 'JavaMethodReferenceNode',
	#superclass : 'JavaExpressionNode',
	#instVars : [
		'receiver',
		'lt',
		'arguments',
		'commas',
		'gt',
		'colonColonToken',
		'methodTypeArgLeft',
		'methodTypeArguments',
		'methodTypeArgCommas',
		'methodTypeArgRight',
		'name',
		'annotations',
		'superToken',
		'superPeriod'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaMethodReferenceNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMethodReference: self
]

{ #category : 'generated' }
JavaMethodReferenceNode >> annotations [

	^ annotations
]

{ #category : 'generated' }
JavaMethodReferenceNode >> annotations: anOrderedCollection [

	self setParents: self annotations to: nil.
	annotations := anOrderedCollection.
	self setParents: self annotations to: self
]

{ #category : 'generated' }
JavaMethodReferenceNode >> arguments [
	^ arguments
]

{ #category : 'generated' }
JavaMethodReferenceNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : 'generated' }
JavaMethodReferenceNode >> colonColonToken [
	^ colonColonToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> colonColonToken: aSmaCCToken [
	colonColonToken := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> commas [
	^ commas
]

{ #category : 'generated' }
JavaMethodReferenceNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : 'generated' }
JavaMethodReferenceNode >> compositeNodeVariables [

	^ #( #arguments #methodTypeArguments #annotations )
]

{ #category : 'generated' }
JavaMethodReferenceNode >> compositeTokenVariables [

	^ #( #methodTypeArgCommas )
]

{ #category : 'generated' }
JavaMethodReferenceNode >> gt [
	^ gt
]

{ #category : 'generated' }
JavaMethodReferenceNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> ignoredCompositeTokenVariables [
	^ #(#commas #_leftParens #_rightParens)
]

{ #category : 'generated' }
JavaMethodReferenceNode >> ignoredTokenVariables [
	^ #(#lt #gt)
]

{ #category : 'generated-initialize-release' }
JavaMethodReferenceNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	methodTypeArguments := OrderedCollection new: 2.
	methodTypeArgCommas := OrderedCollection new: 2.
	annotations := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaMethodReferenceNode >> lt [
	^ lt
]

{ #category : 'generated' }
JavaMethodReferenceNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArgCommas [

	^ methodTypeArgCommas
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArgCommas: anOrderedCollection [

	methodTypeArgCommas := anOrderedCollection
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArgLeft [

	^ methodTypeArgLeft
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArgLeft: aSmaCCToken [

	methodTypeArgLeft := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArgRight [

	^ methodTypeArgRight
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArgRight: aSmaCCToken [

	methodTypeArgRight := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArguments [

	^ methodTypeArguments
]

{ #category : 'generated' }
JavaMethodReferenceNode >> methodTypeArguments: anOrderedCollection [

	self setParents: self methodTypeArguments to: nil.
	methodTypeArguments := anOrderedCollection.
	self setParents: self methodTypeArguments to: self
]

{ #category : 'generated' }
JavaMethodReferenceNode >> name [
	^ name
]

{ #category : 'generated' }
JavaMethodReferenceNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> nodeVariables [
	^ #(#receiver)
]

{ #category : 'generated' }
JavaMethodReferenceNode >> receiver [
	^ receiver
]

{ #category : 'generated' }
JavaMethodReferenceNode >> receiver: aJavaProgramNode [
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := aJavaProgramNode.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]
]

{ #category : 'generated' }
JavaMethodReferenceNode >> superPeriod [
	^ superPeriod
]

{ #category : 'generated' }
JavaMethodReferenceNode >> superPeriod: aSmaCCToken [
	superPeriod := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> superToken [
	^ superToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> superToken: aSmaCCToken [
	superToken := aSmaCCToken
]

{ #category : 'generated' }
JavaMethodReferenceNode >> tokenVariables [

	^ #( #colonColonToken #methodTypeArgLeft #methodTypeArgRight #name #superToken #superPeriod )
]
