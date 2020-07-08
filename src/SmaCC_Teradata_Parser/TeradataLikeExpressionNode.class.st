Class {
	#name : #TeradataLikeExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'value',
		'likeToken',
		'like',
		'escapeToken',
		'escape',
		'notToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataLikeExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLikeExpression: self
]

{ #category : #generated }
TeradataLikeExpressionNode >> escape [
	^ escape
]

{ #category : #generated }
TeradataLikeExpressionNode >> escape: aTeradataExpressionNode [
	self escape notNil
		ifTrue: [ self escape parent: nil ].
	escape := aTeradataExpressionNode.
	self escape notNil
		ifTrue: [ self escape parent: self ]
]

{ #category : #generated }
TeradataLikeExpressionNode >> escapeToken [
	^ escapeToken
]

{ #category : #generated }
TeradataLikeExpressionNode >> escapeToken: aSmaCCToken [
	escapeToken := aSmaCCToken
]

{ #category : #generated }
TeradataLikeExpressionNode >> like [
	^ like
]

{ #category : #generated }
TeradataLikeExpressionNode >> like: aTeradataExpressionNode [
	self like notNil
		ifTrue: [ self like parent: nil ].
	like := aTeradataExpressionNode.
	self like notNil
		ifTrue: [ self like parent: self ]
]

{ #category : #generated }
TeradataLikeExpressionNode >> likeToken [
	^ likeToken
]

{ #category : #generated }
TeradataLikeExpressionNode >> likeToken: aSmaCCToken [
	likeToken := aSmaCCToken
]

{ #category : #generated }
TeradataLikeExpressionNode >> nodeVariables [
	^ #(#value #like #escape)
]

{ #category : #generated }
TeradataLikeExpressionNode >> notToken [
	^ notToken
]

{ #category : #generated }
TeradataLikeExpressionNode >> notToken: aSmaCCToken [
	notToken := aSmaCCToken
]

{ #category : #generated }
TeradataLikeExpressionNode >> tokenVariables [
	^ #(#likeToken #escapeToken #notToken)
]

{ #category : #generated }
TeradataLikeExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataLikeExpressionNode >> value: aTeradataExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
