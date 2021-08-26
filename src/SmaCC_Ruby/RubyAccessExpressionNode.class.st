Class {
	#name : 'RubyAccessExpressionNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'value',
		'operator',
		'name'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyAccessExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAccessExpression: self
]

{ #category : 'generated' }
RubyAccessExpressionNode >> name [
	^ name
]

{ #category : 'generated' }
RubyAccessExpressionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
RubyAccessExpressionNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyAccessExpressionNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyAccessExpressionNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyAccessExpressionNode >> tokenVariables [
	^ #(#operator #name)
]

{ #category : 'generated' }
RubyAccessExpressionNode >> value [
	^ value
]

{ #category : 'generated' }
RubyAccessExpressionNode >> value: aRubyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
