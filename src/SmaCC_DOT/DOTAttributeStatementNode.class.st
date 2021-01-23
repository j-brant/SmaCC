Class {
	#name : #DOTAttributeStatementNode,
	#superclass : #DOTStatementNode,
	#instVars : [
		'typeToken',
		'_attributes'
	],
	#category : #'SmaCC_DOT'
}

{ #category : #generated }
DOTAttributeStatementNode >> _attributes [
	^ _attributes
]

{ #category : #generated }
DOTAttributeStatementNode >> _attributes: anOrderedCollection [
	self setParents: self _attributes to: nil.
	_attributes := anOrderedCollection.
	self setParents: self _attributes to: self
]

{ #category : #generated }
DOTAttributeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributeStatement: self
]

{ #category : #generated }
DOTAttributeStatementNode >> compositeNodeVariables [
	^ #(#_attributes)
]

{ #category : #'generated-initialize-release' }
DOTAttributeStatementNode >> initialize [
	super initialize.
	_attributes := OrderedCollection new: 2.
]

{ #category : #generated }
DOTAttributeStatementNode >> tokenVariables [
	^ #(#typeToken)
]

{ #category : #generated }
DOTAttributeStatementNode >> typeToken [
	^ typeToken
]

{ #category : #generated }
DOTAttributeStatementNode >> typeToken: aSmaCCToken [
	typeToken := aSmaCCToken
]
