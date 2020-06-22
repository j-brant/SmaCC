Class {
	#name : #VBNetVariableDeclaratorNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'variableIdentifiers',
		'commas',
		'asToken',
		'value',
		'equals',
		'type'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetVariableDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableDeclarator: self
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> compositeNodeVariables [
	^ #(#variableIdentifiers)
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetVariableDeclaratorNode >> initialize [
	super initialize.
	variableIdentifiers := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> nodeVariables [
	^ #(#value #type)
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> tokenVariables [
	^ #(#asToken #equals)
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> type [
	^ type
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> value [
	^ value
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> variableIdentifiers [
	^ variableIdentifiers
]

{ #category : #generated }
VBNetVariableDeclaratorNode >> variableIdentifiers: anOrderedCollection [
	self setParents: self variableIdentifiers to: nil.
	variableIdentifiers := anOrderedCollection.
	self setParents: self variableIdentifiers to: self
]
