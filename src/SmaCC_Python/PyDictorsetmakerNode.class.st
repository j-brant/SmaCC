Class {
	#name : #PyDictorsetmakerNode,
	#superclass : #PyRootNode,
	#instVars : [
		'objects',
		'colonTokens',
		'values',
		'comp',
		'commaTokens'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyDictorsetmakerNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitDictorsetmaker: self
]

{ #category : #generated }
PyDictorsetmakerNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
PyDictorsetmakerNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
PyDictorsetmakerNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyDictorsetmakerNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyDictorsetmakerNode >> comp [
	^ comp
]

{ #category : #generated }
PyDictorsetmakerNode >> comp: aPyCompForNode [
	self comp notNil
		ifTrue: [ self comp parent: nil ].
	comp := aPyCompForNode.
	self comp notNil
		ifTrue: [ self comp parent: self ]
]

{ #category : #generated }
PyDictorsetmakerNode >> compositeNodeVariables [
	^ #(#objects #values)
]

{ #category : #generated }
PyDictorsetmakerNode >> compositeTokenVariables [
	^ #(#colonTokens #commaTokens)
]

{ #category : #'generated-initialize-release' }
PyDictorsetmakerNode >> initialize [
	super initialize.
	objects := OrderedCollection new: 2.
	colonTokens := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyDictorsetmakerNode >> nodeVariables [
	^ #(#comp)
]

{ #category : #generated }
PyDictorsetmakerNode >> objects [
	^ objects
]

{ #category : #generated }
PyDictorsetmakerNode >> objects: anOrderedCollection [
	self setParents: self objects to: nil.
	objects := anOrderedCollection.
	self setParents: self objects to: self
]

{ #category : #generated }
PyDictorsetmakerNode >> values [
	^ values
]

{ #category : #generated }
PyDictorsetmakerNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
