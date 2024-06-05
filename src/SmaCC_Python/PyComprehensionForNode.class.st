Class {
	#name : #PyComprehensionForNode,
	#superclass : #PyRootNode,
	#instVars : [
		'forToken',
		'exprs',
		'commaTokens',
		'inToken',
		'inValue',
		'comprehension'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyComprehensionForNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitComprehensionFor: self
]

{ #category : #generated }
PyComprehensionForNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyComprehensionForNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyComprehensionForNode >> compositeNodeVariables [
	^ #(#exprs)
]

{ #category : #generated }
PyComprehensionForNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyComprehensionForNode >> comprehension [
	^ comprehension
]

{ #category : #generated }
PyComprehensionForNode >> comprehension: aPyRootNode [
	self comprehension notNil ifTrue: [ self comprehension parent: nil ].
	comprehension := aPyRootNode.
	self comprehension notNil ifTrue: [ self comprehension parent: self ]
]

{ #category : #generated }
PyComprehensionForNode >> exprs [
	^ exprs
]

{ #category : #generated }
PyComprehensionForNode >> exprs: anOrderedCollection [
	self setParents: self exprs to: nil.
	exprs := anOrderedCollection.
	self setParents: self exprs to: self
]

{ #category : #generated }
PyComprehensionForNode >> forToken [
	^ forToken
]

{ #category : #generated }
PyComprehensionForNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
PyComprehensionForNode >> inToken [
	^ inToken
]

{ #category : #generated }
PyComprehensionForNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #generated }
PyComprehensionForNode >> inValue [
	^ inValue
]

{ #category : #generated }
PyComprehensionForNode >> inValue: aPyExpressionNode [
	self inValue notNil ifTrue: [ self inValue parent: nil ].
	inValue := aPyExpressionNode.
	self inValue notNil ifTrue: [ self inValue parent: self ]
]

{ #category : #'generated-initialize-release' }
PyComprehensionForNode >> initialize [
	super initialize.
	exprs := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyComprehensionForNode >> nodeVariables [
	^ #(#inValue #comprehension)
]

{ #category : #generated }
PyComprehensionForNode >> tokenVariables [
	^ #(#forToken #inToken)
]
