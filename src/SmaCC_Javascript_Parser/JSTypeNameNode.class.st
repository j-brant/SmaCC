Class {
	#name : #JSTypeNameNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'names',
		'periodTokens'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTypeNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeName: self
]

{ #category : #generated }
JSTypeNameNode >> compositeNodeVariables [
	^ #(#names)
]

{ #category : #generated }
JSTypeNameNode >> compositeTokenVariables [
	^ #(#periodTokens)
]

{ #category : #'generated-initialize-release' }
JSTypeNameNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	periodTokens := OrderedCollection new: 2.
]

{ #category : #generated }
JSTypeNameNode >> names [
	^ names
]

{ #category : #generated }
JSTypeNameNode >> names: anOrderedCollection [
	self setParents: self names to: nil.
	names := anOrderedCollection.
	self setParents: self names to: self
]

{ #category : #generated }
JSTypeNameNode >> periodTokens [
	^ periodTokens
]

{ #category : #generated }
JSTypeNameNode >> periodTokens: anOrderedCollection [
	periodTokens := anOrderedCollection
]
