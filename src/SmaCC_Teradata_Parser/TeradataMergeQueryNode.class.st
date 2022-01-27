Class {
	#name : #TeradataMergeQueryNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'mergeToken',
		'mergeTable',
		'usingToken',
		'usingTable',
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
	^ #(#whenMerges)
]

{ #category : #generated }
TeradataMergeQueryNode >> condition [
	^ condition
]

{ #category : #generated }
TeradataMergeQueryNode >> condition: aTeradataExpressionNode [
	self condition notNil ifTrue: [ self condition parent: nil ].
	condition := aTeradataExpressionNode.
	self condition notNil ifTrue: [ self condition parent: self ]
]

{ #category : #'generated-initialize-release' }
TeradataMergeQueryNode >> initialize [
	super initialize.
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
TeradataMergeQueryNode >> mergeTable [
	^ mergeTable
]

{ #category : #generated }
TeradataMergeQueryNode >> mergeTable: aTeradataProgramNode [
	self mergeTable notNil ifTrue: [ self mergeTable parent: nil ].
	mergeTable := aTeradataProgramNode.
	self mergeTable notNil ifTrue: [ self mergeTable parent: self ]
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
	^ #(#mergeTable #usingTable #condition)
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
TeradataMergeQueryNode >> tokenVariables [
	^ #(#mergeToken #usingToken #onToken #intoToken)
]

{ #category : #generated }
TeradataMergeQueryNode >> usingTable [
	^ usingTable
]

{ #category : #generated }
TeradataMergeQueryNode >> usingTable: aTeradataProgramNode [
	self usingTable notNil ifTrue: [ self usingTable parent: nil ].
	usingTable := aTeradataProgramNode.
	self usingTable notNil ifTrue: [ self usingTable parent: self ]
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
