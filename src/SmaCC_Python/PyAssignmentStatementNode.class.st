Class {
	#name : #PyAssignmentStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'lhs',
		'assigns',
		'tos',
		'colonTokens',
		'typeExpressions'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyAssignmentStatementNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitAssignmentStatement: self
]

{ #category : #generated }
PyAssignmentStatementNode >> assigns [
	^ assigns
]

{ #category : #generated }
PyAssignmentStatementNode >> assigns: anOrderedCollection [
	assigns := anOrderedCollection
]

{ #category : #generated }
PyAssignmentStatementNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
PyAssignmentStatementNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
PyAssignmentStatementNode >> compositeNodeVariables [
	^ #(#tos #typeExpressions)
]

{ #category : #generated }
PyAssignmentStatementNode >> compositeTokenVariables [
	^ #(#assigns #colonTokens)
]

{ #category : #'generated-initialize-release' }
PyAssignmentStatementNode >> initialize [
	super initialize.
	assigns := OrderedCollection new: 2.
	tos := OrderedCollection new: 2.
	colonTokens := OrderedCollection new: 2.
	typeExpressions := OrderedCollection new: 2.
]

{ #category : #generated }
PyAssignmentStatementNode >> lhs [
	^ lhs
]

{ #category : #generated }
PyAssignmentStatementNode >> lhs: aPyExpressionNode [
	self lhs notNil ifTrue: [ self lhs parent: nil ].
	lhs := aPyExpressionNode.
	self lhs notNil ifTrue: [ self lhs parent: self ]
]

{ #category : #generated }
PyAssignmentStatementNode >> nodeVariables [
	^ #(#lhs)
]

{ #category : #generated }
PyAssignmentStatementNode >> tos [
	^ tos
]

{ #category : #generated }
PyAssignmentStatementNode >> tos: anOrderedCollection [
	self setParents: self tos to: nil.
	tos := anOrderedCollection.
	self setParents: self tos to: self
]

{ #category : #generated }
PyAssignmentStatementNode >> typeExpressions [
	^ typeExpressions
]

{ #category : #generated }
PyAssignmentStatementNode >> typeExpressions: anOrderedCollection [
	self setParents: self typeExpressions to: nil.
	typeExpressions := anOrderedCollection.
	self setParents: self typeExpressions to: self
]
