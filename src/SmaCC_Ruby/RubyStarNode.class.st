Class {
	#name : #RubyStarNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'star',
		'value'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyStarNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStar: self
]

{ #category : #generated }
RubyStarNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RubyStarNode >> star [
	^ star
]

{ #category : #generated }
RubyStarNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : #generated }
RubyStarNode >> tokenVariables [
	^ #(#star)
]

{ #category : #generated }
RubyStarNode >> value [
	^ value
]

{ #category : #generated }
RubyStarNode >> value: aRubyExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
