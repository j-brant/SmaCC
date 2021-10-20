Class {
	#name : 'RubyConditionalExpressionNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'condition',
		'questionMark',
		'trueExpression',
		'colon',
		'falseExpression'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyConditionalExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConditionalExpression: self
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> colon [
	^ colon
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> condition [
	^ condition
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> condition: aRubyExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aRubyExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> falseExpression [
	^ falseExpression
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> falseExpression: aRubyExpressionNode [
	self falseExpression notNil ifTrue: [ self falseExpression parent: nil ].
	falseExpression := aRubyExpressionNode.
	self falseExpression notNil ifTrue: [ self falseExpression parent: self ]
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> nodeVariables [
	^ #(#condition #trueExpression #falseExpression)
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> questionMark [
	^ questionMark
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> questionMark: aSmaCCToken [
	questionMark := aSmaCCToken
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> tokenVariables [
	^ #(#questionMark #colon)
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> trueExpression [
	^ trueExpression
]

{ #category : 'generated' }
RubyConditionalExpressionNode >> trueExpression: aRubyExpressionNode [
	self trueExpression notNil ifTrue: [ self trueExpression parent: nil ].
	trueExpression := aRubyExpressionNode.
	self trueExpression notNil ifTrue: [ self trueExpression parent: self ]
]
