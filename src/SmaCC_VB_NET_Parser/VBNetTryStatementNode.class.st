Class {
	#name : #VBNetTryStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'tryTokens',
		'statements',
		'catches',
		'endToken',
		'finally'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetTryStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTryStatement: self
]

{ #category : #generated }
VBNetTryStatementNode >> catches [
	^ catches
]

{ #category : #generated }
VBNetTryStatementNode >> catches: anOrderedCollection [
	self setParents: self catches to: nil.
	catches := anOrderedCollection.
	self setParents: self catches to: self
]

{ #category : #generated }
VBNetTryStatementNode >> compositeNodeVariables [
	^ #(#statements #catches)
]

{ #category : #generated }
VBNetTryStatementNode >> compositeTokenVariables [
	^ #(#tryTokens)
]

{ #category : #generated }
VBNetTryStatementNode >> endToken [
	^ endToken
]

{ #category : #generated }
VBNetTryStatementNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
VBNetTryStatementNode >> finally [
	^ finally
]

{ #category : #generated }
VBNetTryStatementNode >> finally: aVBNetFinallyStatementNode [
	self finally notNil
		ifTrue: [ self finally parent: nil ].
	finally := aVBNetFinallyStatementNode.
	self finally notNil
		ifTrue: [ self finally parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetTryStatementNode >> initialize [
	super initialize.
	tryTokens := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
	catches := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetTryStatementNode >> nodeVariables [
	^ #(#finally)
]

{ #category : #generated }
VBNetTryStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetTryStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetTryStatementNode >> tokenVariables [
	^ #(#endToken)
]

{ #category : #generated }
VBNetTryStatementNode >> tryTokens [
	^ tryTokens
]

{ #category : #generated }
VBNetTryStatementNode >> tryTokens: anOrderedCollection [
	tryTokens := anOrderedCollection
]
