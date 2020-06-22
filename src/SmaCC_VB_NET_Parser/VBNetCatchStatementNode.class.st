Class {
	#name : #VBNetCatchStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'catchToken',
		'statements',
		'whenToken',
		'when',
		'name',
		'asToken',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetCatchStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCatchStatement: self
]

{ #category : #generated }
VBNetCatchStatementNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetCatchStatementNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetCatchStatementNode >> catchToken [
	^ catchToken
]

{ #category : #generated }
VBNetCatchStatementNode >> catchToken: aSmaCCToken [
	catchToken := aSmaCCToken
]

{ #category : #generated }
VBNetCatchStatementNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #'generated-initialize-release' }
VBNetCatchStatementNode >> initialize [
	super initialize.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetCatchStatementNode >> name [
	^ name
]

{ #category : #generated }
VBNetCatchStatementNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetCatchStatementNode >> nodeVariables [
	^ #(#when #type)
]

{ #category : #generated }
VBNetCatchStatementNode >> statements [
	^ statements
]

{ #category : #generated }
VBNetCatchStatementNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
VBNetCatchStatementNode >> tokenVariables [
	^ #(#catchToken #whenToken #name #asToken)
]

{ #category : #generated }
VBNetCatchStatementNode >> type [
	^ type
]

{ #category : #generated }
VBNetCatchStatementNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetCatchStatementNode >> when [
	^ when
]

{ #category : #generated }
VBNetCatchStatementNode >> when: aVBNetExpressionNode [
	self when notNil
		ifTrue: [ self when parent: nil ].
	when := aVBNetExpressionNode.
	self when notNil
		ifTrue: [ self when parent: self ]
]

{ #category : #generated }
VBNetCatchStatementNode >> whenToken [
	^ whenToken
]

{ #category : #generated }
VBNetCatchStatementNode >> whenToken: aSmaCCToken [
	whenToken := aSmaCCToken
]
