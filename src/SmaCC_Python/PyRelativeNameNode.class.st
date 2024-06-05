Class {
	#name : #PyRelativeNameNode,
	#superclass : #PyRootNode,
	#instVars : [
		'periodTokens',
		'name'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyRelativeNameNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitRelativeName: self
]

{ #category : #generated }
PyRelativeNameNode >> compositeTokenVariables [
	^ #(#periodTokens)
]

{ #category : #'generated-initialize-release' }
PyRelativeNameNode >> initialize [
	super initialize.
	periodTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyRelativeNameNode >> name [
	^ name
]

{ #category : #generated }
PyRelativeNameNode >> name: aPyExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPyExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PyRelativeNameNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
PyRelativeNameNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
PyRelativeNameNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]
