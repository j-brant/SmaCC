Class {
	#name : 'RubyUnaryExpressionNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'operator',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyUnaryExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUnaryExpression: self
]

{ #category : 'generated' }
RubyUnaryExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyUnaryExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyUnaryExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyUnaryExpressionNode >> tokenVariables [
	^ #(#operator)
]

{ #category : 'generated' }
RubyUnaryExpressionNode >> value [
	^ value
]

{ #category : 'generated' }
RubyUnaryExpressionNode >> value: aRubyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
