Class {
	#name : #DOTEdgeStatementNode,
	#superclass : #DOTStatementNode,
	#instVars : [
		'from',
		'edgeTypes',
		'tos',
		'_attributes'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTEdgeStatementNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
DOTEdgeStatementNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
DOTEdgeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEdgeStatement: self
]

{ #category : #generated }
DOTEdgeStatementNode >> compositeNodeVariables [
	^ #(#tos #_attributes)
]

{ #category : #generated }
DOTEdgeStatementNode >> compositeTokenVariables [
	^ #(#edgeTypes)
]

{ #category : #generated }
DOTEdgeStatementNode >> edgeTypes [
	^ edgeTypes
]

{ #category : #generated }
DOTEdgeStatementNode >> edgeTypes: anOrderedCollection [
	edgeTypes := anOrderedCollection
]

{ #category : #generated }
DOTEdgeStatementNode >> from [
	^ from
]

{ #category : #generated }
DOTEdgeStatementNode >> from: aDOTProgramNode [
	self from notNil
		ifTrue: [ self from parent: nil ].
	from := aDOTProgramNode.
	self from notNil
		ifTrue: [ self from parent: self ]
]

{ #category : #'generated-initialize-release' }
DOTEdgeStatementNode >> initialize [
	super initialize.
	edgeTypes := OrderedCollection new: 2.
	tos := OrderedCollection new: 2.
	_attributes := OrderedCollection new: 2.
]

{ #category : #generated }
DOTEdgeStatementNode >> nodeVariables [
	^ #(#from)
]

{ #category : #generated }
DOTEdgeStatementNode >> tos [
	^ tos
]

{ #category : #generated }
DOTEdgeStatementNode >> tos: anOrderedCollection [
	self setParents: self tos to: nil.
	tos := anOrderedCollection.
	self setParents: self tos to: self
]
