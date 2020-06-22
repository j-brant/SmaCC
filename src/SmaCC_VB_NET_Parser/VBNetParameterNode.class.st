Class {
	#name : #VBNetParameterNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'identifier',
		'equals',
		'value',
		'asToken',
		'type',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetParameterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitParameter: self
]

{ #category : #generated }
VBNetParameterNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetParameterNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetParameterNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetParameterNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetParameterNode >> compositeNodeVariables [
	^ #(#attributeBlocks)
]

{ #category : #generated }
VBNetParameterNode >> compositeTokenVariables [
	^ #(#modifiers)
]

{ #category : #generated }
VBNetParameterNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetParameterNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetParameterNode >> identifier [
	^ identifier
]

{ #category : #generated }
VBNetParameterNode >> identifier: aVBNetParameterIdentifierNode [
	self identifier notNil
		ifTrue: [ self identifier parent: nil ].
	identifier := aVBNetParameterIdentifierNode.
	self identifier notNil
		ifTrue: [ self identifier parent: self ]
]

{ #category : #'generated-initialize-release' }
VBNetParameterNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetParameterNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetParameterNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetParameterNode >> nodeVariables [
	^ #(#identifier #value #type)
]

{ #category : #generated }
VBNetParameterNode >> tokenVariables [
	^ #(#equals #asToken)
]

{ #category : #generated }
VBNetParameterNode >> type [
	^ type
]

{ #category : #generated }
VBNetParameterNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetParameterNode >> value [
	^ value
]

{ #category : #generated }
VBNetParameterNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
