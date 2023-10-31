Class {
	#name : #PyRelativeNameNode,
	#superclass : #PyRootNode,
	#instVars : [
		'dots',
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
	^ #(#dots)
]

{ #category : #generated }
PyRelativeNameNode >> dots [
	^ dots
]

{ #category : #generated }
PyRelativeNameNode >> dots: anOrderedCollection [
	dots := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
PyRelativeNameNode >> initialize [
	super initialize.
	dots := OrderedCollection new: 2.
]

{ #category : #generated }
PyRelativeNameNode >> name [
	^ name
]

{ #category : #generated }
PyRelativeNameNode >> name: aPyRootNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aPyRootNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
PyRelativeNameNode >> nodeVariables [
	^ #(#name)
]
