Class {
	#name : #JSOptionalIndexedNode,
	#superclass : #JSOptionalNode,
	#instVars : [
		'leftBracket',
		'value',
		'rightBracket'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSOptionalIndexedNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOptionalIndexed: self
]

{ #category : #generated }
JSOptionalIndexedNode >> ignoredTokenVariables [
	^ #(#leftBracket #rightBracket)
]

{ #category : #generated }
JSOptionalIndexedNode >> leftBracket [
	^ leftBracket
]

{ #category : #generated }
JSOptionalIndexedNode >> leftBracket: aSmaCCToken [
	leftBracket := aSmaCCToken
]

{ #category : #generated }
JSOptionalIndexedNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
JSOptionalIndexedNode >> rightBracket [
	^ rightBracket
]

{ #category : #generated }
JSOptionalIndexedNode >> rightBracket: aSmaCCToken [
	rightBracket := aSmaCCToken
]

{ #category : #generated }
JSOptionalIndexedNode >> value [
	^ value
]

{ #category : #generated }
JSOptionalIndexedNode >> value: aJSExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aJSExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
