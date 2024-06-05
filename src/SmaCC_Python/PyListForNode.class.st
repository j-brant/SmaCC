Class {
	#name : #PyListForNode,
	#superclass : #PyRootNode,
	#instVars : [
		'forToken',
		'exprs',
		'commaTokens',
		'inToken',
		'values',
		'list'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyListForNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitListFor: self
]

{ #category : #generated }
PyListForNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyListForNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyListForNode >> compositeNodeVariables [
	^ #(#exprs #values)
]

{ #category : #generated }
PyListForNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyListForNode >> exprs [
	^ exprs
]

{ #category : #generated }
PyListForNode >> exprs: anOrderedCollection [
	self setParents: self exprs to: nil.
	exprs := anOrderedCollection.
	self setParents: self exprs to: self
]

{ #category : #generated }
PyListForNode >> forToken [
	^ forToken
]

{ #category : #generated }
PyListForNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
PyListForNode >> inToken [
	^ inToken
]

{ #category : #generated }
PyListForNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyListForNode >> initialize [
	super initialize.
	exprs := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
	values := OrderedCollection new: 2.
]

{ #category : #generated }
PyListForNode >> list [
	^ list
]

{ #category : #generated }
PyListForNode >> list: aPyRootNode [
	self list notNil
		ifTrue: [ self list parent: nil ].
	list := aPyRootNode.
	self list notNil
		ifTrue: [ self list parent: self ]
]

{ #category : #generated }
PyListForNode >> nodeVariables [
	^ #(#list)
]

{ #category : #generated }
PyListForNode >> tokenVariables [
	^ #(#forToken #inToken)
]

{ #category : #generated }
PyListForNode >> values [
	^ values
]

{ #category : #generated }
PyListForNode >> values: anOrderedCollection [
	self setParents: self values to: nil.
	values := anOrderedCollection.
	self setParents: self values to: self
]
