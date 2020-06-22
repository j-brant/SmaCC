Class {
	#name : #VBNetEnumMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'name',
		'statementSeparator',
		'equals',
		'value',
		'attributeBlocks'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumMemberDeclaration: self
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> compositeNodeVariables [
	^ #(#attributeBlocks)
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetEnumMemberDeclarationNode >> initialize [
	super initialize.
	attributeBlocks := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> tokenVariables [
	^ #(#name #statementSeparator #equals)
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> value [
	^ value
]

{ #category : #generated }
VBNetEnumMemberDeclarationNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
