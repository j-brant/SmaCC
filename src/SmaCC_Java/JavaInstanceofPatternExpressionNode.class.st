Class {
	#name : 'JavaInstanceofPatternExpressionNode',
	#superclass : 'JavaExpressionNode',
	#instVars : [
		'object',
		'instanceofToken',
		'modifiers',
		'type',
		'variable'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInstanceofPatternExpression: self
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> compositeNodeVariables [

	^ #( #modifiers )
]

{ #category : 'generated-initialize-release' }
JavaInstanceofPatternExpressionNode >> initialize [
	super initialize.
	modifiers := OrderedCollection new: 2.
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> instanceofToken [
	^ instanceofToken
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> instanceofToken: aSmaCCToken [
	instanceofToken := aSmaCCToken
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> modifiers [

	^ modifiers
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> modifiers: anOrderedCollection [

	self setParents: self modifiers to: nil.
	modifiers := anOrderedCollection.
	self setParents: self modifiers to: self
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> nodeVariables [
	^ #(#object #type #variable)
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> object [
	^ object
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> object: aJavaExpressionNode [
	self object notNil ifTrue: [ self object parent: nil ].
	object := aJavaExpressionNode.
	self object notNil ifTrue: [ self object parent: self ]
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> tokenVariables [
	^ #(#instanceofToken)
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> type [
	^ type
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> type: aJavaTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJavaTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> variable [
	^ variable
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> variable: aJavaProgramNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aJavaProgramNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
