Class {
	#name : #TeradataMergeQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'mergeToken',
		'tables',
		'usingToken',
		'onToken',
		'condition',
		'whenMerges',
		'intoToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataMergeQueryNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMergeQuery: self
]

{ #category : #generated }
TeradataMergeQueryNode >> compositeNodeVariables [
	^ #(#tables #whenMerges)
]

{ #category : #generated }
TeradataMergeQueryNode >> condition [
	^ condition
]

{ #category : #generated }
TeradataMergeQueryNode >> condition: aTeradataExpressionNode [
	self condition notNil
		ifTrue: [ self condition parent: nil ].
	condition := aTeradataExpressionNode.
	self condition notNil
		ifTrue: [ self condition parent: self ]
]

{ #category : #'generated-initialize-release' }
TeradataMergeQueryNode >> initialize [
	super initialize.
	tables := OrderedCollection new: 2.
	whenMerges := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataMergeQueryNode >> intoToken [
	^ intoToken
]

{ #category : #generated }
TeradataMergeQueryNode >> intoToken: aSmaCCToken [
	intoToken := aSmaCCToken
]

{ #category : #generated }
TeradataMergeQueryNode >> mergeToken [
	^ mergeToken
]

{ #category : #generated }
TeradataMergeQueryNode >> mergeToken: aSmaCCToken [
	mergeToken := aSmaCCToken
]

{ #category : #generated }
TeradataMergeQueryNode >> nodeVariables [
	^ #(#condition)
]

{ #category : #generated }
TeradataMergeQueryNode >> onToken [
	^ onToken
]

{ #category : #generated }
TeradataMergeQueryNode >> onToken: aSmaCCToken [
	onToken := aSmaCCToken
]

{ #category : #generated }
TeradataMergeQueryNode >> tables [
	^ tables
]

{ #category : #generated }
TeradataMergeQueryNode >> tables: anOrderedCollection [
	self setParents: self tables to: nil.
	tables := anOrderedCollection.
	self setParents: self tables to: self
]

{ #category : #generated }
TeradataMergeQueryNode >> tokenVariables [
	^ #(#mergeToken #usingToken #onToken #intoToken)
]

{ #category : #generated }
TeradataMergeQueryNode >> usingToken [
	^ usingToken
]

{ #category : #generated }
TeradataMergeQueryNode >> usingToken: aSmaCCToken [
	usingToken := aSmaCCToken
]

{ #category : #generated }
TeradataMergeQueryNode >> whenMerges [
	^ whenMerges
]

{ #category : #generated }
TeradataMergeQueryNode >> whenMerges: anOrderedCollection [
	self setParents: self whenMerges to: nil.
	whenMerges := anOrderedCollection.
	self setParents: self whenMerges to: self
]
