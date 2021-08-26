Class {
	#name : 'RubyStringLabelNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'label',
		'colon'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyStringLabelNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStringLabel: self
]

{ #category : 'generated' }
RubyStringLabelNode >> colon [
	^ colon
]

{ #category : 'generated' }
RubyStringLabelNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : 'generated' }
RubyStringLabelNode >> label [
	^ label
]

{ #category : 'generated' }
RubyStringLabelNode >> label: aRubyStringNode [
	self label notNil ifTrue: [ self label parent: nil ].
	label := aRubyStringNode.
	self label notNil ifTrue: [ self label parent: self ]
]

{ #category : 'generated' }
RubyStringLabelNode >> nodeVariables [
	^ #(#label)
]

{ #category : 'generated' }
RubyStringLabelNode >> tokenVariables [
	^ #(#colon)
]
