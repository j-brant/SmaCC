Class {
	#name : #PyAssignmentStatementNode,
	#superclass : #PyStatementNode,
	#instVars : [
		'variables',
		'assigns',
		'colonTokens',
		'typeExpressions',
		'value'
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
	^ #(#variables #typeExpressions)
]

{ #category : #generated }
PyAssignmentStatementNode >> compositeTokenVariables [
	^ #(#assigns #colonTokens)
]

{ #category : #'generated-initialize-release' }
PyAssignmentStatementNode >> initialize [
	super initialize.
	variables := OrderedCollection new: 2.
	assigns := OrderedCollection new: 2.
	colonTokens := OrderedCollection new: 2.
	typeExpressions := OrderedCollection new: 2.
]

{ #category : #'as yet unclassified' }
PyAssignmentStatementNode >> lhs [
	self deprecated: 'Use variables and value instead'.
	^ variables first
]

{ #category : #generated }
PyAssignmentStatementNode >> nodeVariables [
	^ #(#value)
]

{ #category : #'as yet unclassified' }
PyAssignmentStatementNode >> tos [
	self deprecated: 'Use variables and value instead'.
	^ variables allButFirst asArray , {value}
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

{ #category : #generated }
PyAssignmentStatementNode >> value [
	^ value
]

{ #category : #generated }
PyAssignmentStatementNode >> value: aPyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
PyAssignmentStatementNode >> variables [
	^ variables
]

{ #category : #generated }
PyAssignmentStatementNode >> variables: anOrderedCollection [
	self setParents: self variables to: nil.
	variables := anOrderedCollection.
	self setParents: self variables to: self
]
