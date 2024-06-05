Class {
	#name : #PyParameterListNode,
	#superclass : #PyRootNode,
	#instVars : [
		'lparenToken',
		'names',
		'commaTokens',
		'rparenToken'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyParameterListNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitParameterList: self
]

{ #category : #generated }
PyParameterListNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyParameterListNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyParameterListNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
PyParameterListNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
PyParameterListNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyParameterListNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
PyParameterListNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
PyParameterListNode >> names [
	^ names
]

{ #category : #generated }
PyParameterListNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
PyParameterListNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
PyParameterListNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
PyParameterListNode >> tokenVariables [
	^ #(#lparenToken #rparenToken)
]
