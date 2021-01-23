Class {
	#name : #DOTNodeStatementNode,
	#superclass : #DOTStatementNode,
	#instVars : [
		'nodeId',
		'_attributes'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTNodeStatementNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
DOTNodeStatementNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
DOTNodeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNodeStatement: self
]

{ #category : #generated }
DOTNodeStatementNode >> compositeNodeVariables [
	^ #(#_attributes)
]

{ #category : #'generated-initialize-release' }
DOTNodeStatementNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
]

{ #category : #generated }
DOTNodeStatementNode >> nodeId [
	^ nodeId
]

{ #category : #generated }
DOTNodeStatementNode >> nodeId: aDOTNodeIdentifierNode [
	self nodeId notNil
		ifTrue: [ self nodeId parent: nil ].
	nodeId := aDOTNodeIdentifierNode.
	self nodeId notNil
		ifTrue: [ self nodeId parent: self ]
]

{ #category : #generated }
DOTNodeStatementNode >> nodeVariables [
	^ #(#nodeId)
]
