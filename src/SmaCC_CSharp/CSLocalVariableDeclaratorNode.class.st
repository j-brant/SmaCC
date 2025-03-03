Class {
	#name : #CSLocalVariableDeclaratorNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'name',
		'equalToken',
		'refToken',
		'expression',
		'type',
		'declarators',
		'commaTokens'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSLocalVariableDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLocalVariableDeclarator: self
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> compositeNodeVariables [
	^ #(#declarators)
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> declarators [
	^ declarators
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> declarators: anOrderedCollection [
	self setParents: self declarators to: nil.
	declarators := anOrderedCollection.
	self setParents: self declarators to: self
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> expression [
	^ expression
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> ignoredCompositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #'generated-initialize-release' }
CSLocalVariableDeclaratorNode >> initialize [
	super initialize.
	declarators := OrderedCollection new: 2.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> name [
	^ name
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> nodeVariables [
	^ #(#expression #type)
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> refToken [
	^ refToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> refToken: aSmaCCToken [
	refToken := aSmaCCToken
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> tokenVariables [
	^ #(#name #equalToken #refToken)
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> type [
	^ type
]

{ #category : #generated }
CSLocalVariableDeclaratorNode >> type: aCSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aCSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]
