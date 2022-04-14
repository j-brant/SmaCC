Class {
	#name : #RustUseTreeNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'star',
		'leftBrace',
		'rightBrace',
		'uses',
		'commas',
		'colonColon',
		'basePath',
		'path',
		'asToken',
		'name'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustUseTreeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUseTree: self
]

{ #category : #generated }
RustUseTreeNode >> asToken [
	^ asToken
]

{ #category : #generated }
RustUseTreeNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
RustUseTreeNode >> basePath [
	^ basePath
]

{ #category : #generated }
RustUseTreeNode >> basePath: aRustPathNode [
	self basePath notNil ifTrue: [ self basePath parent: nil ].
	basePath := aRustPathNode.
	self basePath notNil ifTrue: [ self basePath parent: self ]
]

{ #category : #generated }
RustUseTreeNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
RustUseTreeNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
RustUseTreeNode >> commas [
	^ commas
]

{ #category : #generated }
RustUseTreeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
RustUseTreeNode >> compositeNodeVariables [
	^ #(#uses)
]

{ #category : #generated }
RustUseTreeNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
RustUseTreeNode >> initialize [
	super initialize.
	uses := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
RustUseTreeNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
RustUseTreeNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
RustUseTreeNode >> name [
	^ name
]

{ #category : #generated }
RustUseTreeNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
RustUseTreeNode >> nodeVariables [
	^ #(#basePath #path)
]

{ #category : #generated }
RustUseTreeNode >> path [
	^ path
]

{ #category : #generated }
RustUseTreeNode >> path: aRustPathNode [
	self path notNil ifTrue: [ self path parent: nil ].
	path := aRustPathNode.
	self path notNil ifTrue: [ self path parent: self ]
]

{ #category : #generated }
RustUseTreeNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
RustUseTreeNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
RustUseTreeNode >> star [
	^ star
]

{ #category : #generated }
RustUseTreeNode >> star: aSmaCCToken [
	star := aSmaCCToken
]

{ #category : #generated }
RustUseTreeNode >> tokenVariables [
	^ #(#star #leftBrace #rightBrace #colonColon #asToken #name)
]

{ #category : #generated }
RustUseTreeNode >> uses [
	^ uses
]

{ #category : #generated }
RustUseTreeNode >> uses: anOrderedCollection [
	self setParents: self uses to: nil.
	uses := anOrderedCollection.
	self setParents: self uses to: self
]
