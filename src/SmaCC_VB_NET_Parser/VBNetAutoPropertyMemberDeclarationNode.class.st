Class {
	#name : #VBNetAutoPropertyMemberDeclarationNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'modifiers',
		'propertyToken',
		'name',
		'equals',
		'value',
		'implementsToken',
		'implements',
		'commas',
		'asToken',
		'attributeBlocks',
		'type',
		'leftParens',
		'rightParens',
		'parameters',
		'newToken',
		'arguments',
		'argumentNames',
		'colonEqualses',
		'namedArguments',
		'initializer'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAutoPropertyMemberDeclaration: self
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> argumentNames [
	^ argumentNames
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> argumentNames: anOrderedCollection [
	argumentNames := anOrderedCollection
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> arguments [
	^ arguments
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> asToken [
	^ asToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> attributeBlocks [
	^ attributeBlocks
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> attributeBlocks: anOrderedCollection [
	self setParents: self attributeBlocks to: nil.
	attributeBlocks := anOrderedCollection.
	self setParents: self attributeBlocks to: self
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> colonEqualses [
	^ colonEqualses
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> colonEqualses: anOrderedCollection [
	colonEqualses := anOrderedCollection
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> compositeNodeVariables [
	^ #(#implements #attributeBlocks #parameters #arguments #namedArguments)
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> compositeTokenVariables [
	^ #(#modifiers #commas #leftParens #rightParens #argumentNames #colonEqualses)
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> equals [
	^ equals
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> equals: aSmaCCToken [
	equals := aSmaCCToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> implements [
	^ implements
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> implements: anOrderedCollection [
	self setParents: self implements to: nil.
	implements := anOrderedCollection.
	self setParents: self implements to: self
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> implementsToken [
	^ implementsToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> implementsToken: aSmaCCToken [
	implementsToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
VBNetAutoPropertyMemberDeclarationNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
	implements := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	attributeBlocks := OrderedCollection new: 2.
	leftParens := OrderedCollection new: 2.
	rightParens := OrderedCollection new: 2.
	parameters := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
	argumentNames := OrderedCollection new: 2.
	colonEqualses := OrderedCollection new: 2.
	namedArguments := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> initializer [
	^ initializer
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> initializer: aVBNetProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aVBNetProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> leftParens [
	^ leftParens
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> leftParens: anOrderedCollection [
	leftParens := anOrderedCollection
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> modifiers [
	^ modifiers
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> modifiers: anOrderedCollection [
	modifiers := anOrderedCollection
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> name [
	^ name
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> namedArguments [
	^ namedArguments
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> namedArguments: anOrderedCollection [
	self setParents: self namedArguments to: nil.
	namedArguments := anOrderedCollection.
	self setParents: self namedArguments to: self
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> newToken [
	^ newToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> newToken: aSmaCCToken [
	newToken := aSmaCCToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> nodeVariables [
	^ #(#value #type #initializer)
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> parameters [
	^ parameters
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> parameters: anOrderedCollection [
	self setParents: self parameters to: nil.
	parameters := anOrderedCollection.
	self setParents: self parameters to: self
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> propertyToken [
	^ propertyToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> propertyToken: aSmaCCToken [
	propertyToken := aSmaCCToken
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> rightParens [
	^ rightParens
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> rightParens: anOrderedCollection [
	rightParens := anOrderedCollection
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> tokenVariables [
	^ #(#propertyToken #name #equals #implementsToken #asToken #newToken)
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> type [
	^ type
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> type: aVBNetProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aVBNetProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> value [
	^ value
]

{ #category : #generated }
VBNetAutoPropertyMemberDeclarationNode >> value: aVBNetExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aVBNetExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
