Class {
	#name : #VBNetRedimClauseNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'array',
		'leftParen',
		'bounds',
		'commas',
		'rightParen',
		'arrayTypeModifiers'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetRedimClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRedimClause: self
]

{ #category : #generated }
VBNetRedimClauseNode >> array [
	^ array
]

{ #category : #generated }
VBNetRedimClauseNode >> array: aVBNetExpressionNode [
	self array notNil
		ifTrue: [ self array parent: nil ].
	array := aVBNetExpressionNode.
	self array notNil
		ifTrue: [ self array parent: self ]
]

{ #category : #generated }
VBNetRedimClauseNode >> arrayTypeModifiers [
	^ arrayTypeModifiers
]

{ #category : #generated }
VBNetRedimClauseNode >> arrayTypeModifiers: anOrderedCollection [
	self setParents: self arrayTypeModifiers to: nil.
	arrayTypeModifiers := anOrderedCollection.
	self setParents: self arrayTypeModifiers to: self
]

{ #category : #generated }
VBNetRedimClauseNode >> bounds [
	^ bounds
]

{ #category : #generated }
VBNetRedimClauseNode >> bounds: anOrderedCollection [
	self setParents: self bounds to: nil.
	bounds := anOrderedCollection.
	self setParents: self bounds to: self
]

{ #category : #generated }
VBNetRedimClauseNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetRedimClauseNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetRedimClauseNode >> compositeNodeVariables [
	^ #(#bounds #arrayTypeModifiers)
]

{ #category : #generated }
VBNetRedimClauseNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
VBNetRedimClauseNode >> initialize [
	super initialize.
	bounds := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	arrayTypeModifiers := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetRedimClauseNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetRedimClauseNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetRedimClauseNode >> nodeVariables [
	^ #(#array)
]

{ #category : #generated }
VBNetRedimClauseNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetRedimClauseNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetRedimClauseNode >> tokenVariables [
	^ #(#leftParen #rightParen)
]
