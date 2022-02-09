Class {
	#name : #TeradataCommentNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'commentToken',
		'onToken',
		'viewToken',
		'table',
		'comment'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCommentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitComment: self
]

{ #category : #generated }
TeradataCommentNode >> comment [
	^ comment
]

{ #category : #generated }
TeradataCommentNode >> comment: aSmaCCToken [
	comment := aSmaCCToken
]

{ #category : #generated }
TeradataCommentNode >> commentToken [
	^ commentToken
]

{ #category : #generated }
TeradataCommentNode >> commentToken: aSmaCCToken [
	commentToken := aSmaCCToken
]

{ #category : #generated }
TeradataCommentNode >> nodeVariables [
	^ #(#table)
]

{ #category : #generated }
TeradataCommentNode >> onToken [
	^ onToken
]

{ #category : #generated }
TeradataCommentNode >> onToken: aSmaCCToken [
	onToken := aSmaCCToken
]

{ #category : #generated }
TeradataCommentNode >> table [
	^ table
]

{ #category : #generated }
TeradataCommentNode >> table: aTeradataTableNode [
	self table notNil ifTrue: [ self table parent: nil ].
	table := aTeradataTableNode.
	self table notNil ifTrue: [ self table parent: self ]
]

{ #category : #generated }
TeradataCommentNode >> tokenVariables [
	^ #(#commentToken #onToken #viewToken #comment)
]

{ #category : #generated }
TeradataCommentNode >> viewToken [
	^ viewToken
]

{ #category : #generated }
TeradataCommentNode >> viewToken: aSmaCCToken [
	viewToken := aSmaCCToken
]
