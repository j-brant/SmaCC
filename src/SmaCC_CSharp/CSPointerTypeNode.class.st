Class {
	#name : #CSPointerTypeNode,
	#superclass : #CSTypeNode,
	#instVars : [
		'type',
		'timesTokens'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSPointerTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPointerType: self
]

{ #category : #generated }
CSPointerTypeNode >> compositeTokenVariables [
	^ #(#timesTokens)
]

{ #category : #'generated-initialize-release' }
CSPointerTypeNode >> initialize [
	super initialize.
	timesTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSPointerTypeNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSPointerTypeNode >> timesTokens [
	^ timesTokens
]

{ #category : #generated }
CSPointerTypeNode >> timesTokens: anOrderedCollection [
	timesTokens := anOrderedCollection
]

{ #category : #generated }
CSPointerTypeNode >> type [
	^ type
]

{ #category : #generated }
CSPointerTypeNode >> type: aCSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
