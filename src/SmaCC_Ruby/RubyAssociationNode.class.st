Class {
	#name : 'RubyAssociationNode',
	#superclass : 'RubyExpressionNode',
	#instVars : [
		'key',
		'arrow',
		'value'
	],
	#category : 'SmaCC_Ruby'
}

{ #category : 'generated' }
RubyAssociationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAssociation: self
]

{ #category : 'generated' }
RubyAssociationNode >> arrow [
	^ arrow
]

{ #category : 'generated' }
RubyAssociationNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : 'generated' }
RubyAssociationNode >> key [
	^ key
]

{ #category : 'generated' }
RubyAssociationNode >> key: aRubyExpressionNode [
	self key notNil ifTrue: [ self key parent: nil ].
	key := aRubyExpressionNode.
	self key notNil ifTrue: [ self key parent: self ]
]

{ #category : 'generated' }
RubyAssociationNode >> nodeVariables [
	^ #(#key #value)
]

{ #category : 'generated' }
RubyAssociationNode >> tokenVariables [
	^ #(#arrow)
]

{ #category : 'generated' }
RubyAssociationNode >> value [
	^ value
]

{ #category : 'generated' }
RubyAssociationNode >> value: aRubyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
