Class {
	#name : #VBNetEraseStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'eraseToken',
		'arraies',
		'commas'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetEraseStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEraseStatement: self
]

{ #category : #generated }
VBNetEraseStatementNode >> arraies [
	^ arraies
]

{ #category : #generated }
VBNetEraseStatementNode >> arraies: anOrderedCollection [
	self setParents: self arraies to: nil.
	arraies := anOrderedCollection.
	self setParents: self arraies to: self
]

{ #category : #generated }
VBNetEraseStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetEraseStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetEraseStatementNode >> compositeNodeVariables [
	^ #(#arraies)
]

{ #category : #generated }
VBNetEraseStatementNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetEraseStatementNode >> eraseToken [
	^ eraseToken
]

{ #category : #generated }
VBNetEraseStatementNode >> eraseToken: aSmaCCToken [
	eraseToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetEraseStatementNode >> initialize [
	super initialize.
	arraies := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetEraseStatementNode >> tokenVariables [
	^ #(#eraseToken)
]
