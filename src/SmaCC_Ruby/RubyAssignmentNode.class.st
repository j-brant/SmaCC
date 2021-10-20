Class {
	#name : 'RubyAssignmentNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'lhs',
		'operator',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyAssignmentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssignment: self
]

{ #category : 'generated' }
RubyAssignmentNode >> lhs [
	^ lhs
]

{ #category : 'generated' }
RubyAssignmentNode >> lhs: aRubyExpressionNode [
	self lhs notNil ifTrue: [ self lhs parent: nil ].
	lhs := aRubyExpressionNode.
	self lhs notNil ifTrue: [ self lhs parent: self ]
]

{ #category : 'generated' }
RubyAssignmentNode >> nodeVariables [
	^ #(#lhs #value)
]

{ #category : 'generated' }
RubyAssignmentNode >> operator [
	^ operator
]

{ #category : 'generated' }
RubyAssignmentNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RubyAssignmentNode >> tokenVariables [
	^ #(#operator)
]

{ #category : 'generated' }
RubyAssignmentNode >> value [
	^ value
]

{ #category : 'generated' }
RubyAssignmentNode >> value: aRubyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
