Class {
	#name : #CSUnboundTypeNameNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'identifierTokens',
		'lessThanToken',
		'commas',
		'gtToken',
		'colonColonToken',
		'type',
		'periodToken'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSUnboundTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnboundTypeName: self
]

{ #category : #generated }
CSUnboundTypeNameNode >> colonColonToken [
	^ colonColonToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> colonColonToken: aSmaCCToken [
	colonColonToken := aSmaCCToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> commas [
	^ commas
]

{ #category : #generated }
CSUnboundTypeNameNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CSUnboundTypeNameNode >> compositeTokenVariables [
	^ #(#identifierTokens #commas)
]

{ #category : #generated }
CSUnboundTypeNameNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> identifierTokens [
	^ identifierTokens
]

{ #category : #generated }
CSUnboundTypeNameNode >> identifierTokens: anOrderedCollection [
	identifierTokens := anOrderedCollection
]

{ #category : #'generated-initialize-release' }
CSUnboundTypeNameNode >> initialize [
	super initialize.
	identifierTokens := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CSUnboundTypeNameNode >> lessThanToken [
	^ lessThanToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> lessThanToken: aSmaCCToken [
	lessThanToken := aSmaCCToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
CSUnboundTypeNameNode >> periodToken [
	^ periodToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> periodToken: aSmaCCToken [
	periodToken := aSmaCCToken
]

{ #category : #generated }
CSUnboundTypeNameNode >> tokenVariables [
	^ #(#lessThanToken #gtToken #colonColonToken #periodToken)
]

{ #category : #generated }
CSUnboundTypeNameNode >> type [
	^ type
]

{ #category : #generated }
CSUnboundTypeNameNode >> type: aCSUnboundTypeNameNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSUnboundTypeNameNode.
	self type notNil ifTrue: [ self type parent: self ]
]
