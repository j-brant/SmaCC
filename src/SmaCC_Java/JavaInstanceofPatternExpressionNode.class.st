Class {
	#name : 'JavaInstanceofPatternExpressionNode',
	#superclass : 'JavaExpressionNode',
	#instVars : [
		'object',
		'instanceofToken',
		'pattern'
	],
	#category : 'SmaCC_Java',
	#package : 'SmaCC_Java'
}

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInstanceofPatternExpression: self
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> instanceofToken [
	^ instanceofToken
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> instanceofToken: aSmaCCToken [
	instanceofToken := aSmaCCToken
]

{ #category : 'deprecated' }
JavaInstanceofPatternExpressionNode >> modifiers [
	self deprecated: 'Use pattern instead'.
	^ pattern class = JavaTypePatternNode
		  ifTrue: [ pattern modifiers ]
		  ifFalse: [ OrderedCollection new ]
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> nodeVariables [

	^ #( #object #pattern )
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
JavaInstanceofPatternExpressionNode >> pattern [

	^ pattern
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> pattern: aJavaPatternNode [

	self pattern notNil ifTrue: [ self pattern parent: nil ].
	pattern := aJavaPatternNode.
	self pattern notNil ifTrue: [ self pattern parent: self ]
]

{ #category : 'generated' }
JavaInstanceofPatternExpressionNode >> tokenVariables [
	^ #(#instanceofToken)
]

{ #category : 'deprecated' }
JavaInstanceofPatternExpressionNode >> type [
	self deprecated: 'Use pattern instead'.
	^ pattern type
]

{ #category : 'deprecated' }
JavaInstanceofPatternExpressionNode >> variable [
	self deprecated: 'Use pattern instead'.
	^ pattern class = JavaTypePatternNode ifTrue: [ pattern variable ]
]
