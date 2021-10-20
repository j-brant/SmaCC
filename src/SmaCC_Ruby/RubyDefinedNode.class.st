Class {
	#name : 'RubyDefinedNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'definedToken',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyDefinedNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDefined: self
]

{ #category : 'generated' }
RubyDefinedNode >> definedToken [
	^ definedToken
]

{ #category : 'generated' }
RubyDefinedNode >> definedToken: aSmaCCToken [
	definedToken := aSmaCCToken
]

{ #category : 'generated' }
RubyDefinedNode >> nodeVariables [
	^ #(#value)
]

{ #category : 'generated' }
RubyDefinedNode >> tokenVariables [
	^ #(#definedToken)
]

{ #category : 'generated' }
RubyDefinedNode >> value [
	^ value
]

{ #category : 'generated' }
RubyDefinedNode >> value: aRubyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
