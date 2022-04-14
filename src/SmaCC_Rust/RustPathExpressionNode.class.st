Class {
	#name : #RustPathExpressionNode,
	#superclass : #RustExpressionNode,
	#instVars : [
		'names',
		'separators',
		'genericArgses',
		'lt',
		'type',
		'gt',
		'asToken',
		'typePath'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustPathExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPathExpression: self
]

{ #category : #generated }
RustPathExpressionNode >> asToken [
	^ asToken
]

{ #category : #generated }
RustPathExpressionNode >> asToken: aSmaCCToken [
	asToken := aSmaCCToken
]

{ #category : #generated }
RustPathExpressionNode >> compositeNodeVariables [
	^ #(#genericArgses)
]

{ #category : #generated }
RustPathExpressionNode >> compositeTokenVariables [
	^ #(#names #separators)
]

{ #category : #generated }
RustPathExpressionNode >> genericArgses [
	^ genericArgses
]

{ #category : #generated }
RustPathExpressionNode >> genericArgses: anOrderedCollection [
	self setParents: self genericArgses to: nil.
	genericArgses := anOrderedCollection.
	self setParents: self genericArgses to: self
]

{ #category : #generated }
RustPathExpressionNode >> gt [
	^ gt
]

{ #category : #generated }
RustPathExpressionNode >> gt: aSmaCCToken [
	gt := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustPathExpressionNode >> initialize [
	super initialize.
	names := OrderedCollection new: 2.
	separators := OrderedCollection new: 2.
	genericArgses := OrderedCollection new: 2.
]

{ #category : #generated }
RustPathExpressionNode >> lt [
	^ lt
]

{ #category : #generated }
RustPathExpressionNode >> lt: aSmaCCToken [
	lt := aSmaCCToken
]

{ #category : #generated }
RustPathExpressionNode >> names [
	^ names
]

{ #category : #generated }
RustPathExpressionNode >> names: anOrderedCollection [
	names := anOrderedCollection
]

{ #category : #generated }
RustPathExpressionNode >> nodeVariables [
	^ #(#type #typePath)
]

{ #category : #generated }
RustPathExpressionNode >> separators [
	^ separators
]

{ #category : #generated }
RustPathExpressionNode >> separators: anOrderedCollection [
	separators := anOrderedCollection
]

{ #category : #generated }
RustPathExpressionNode >> tokenVariables [
	^ #(#lt #gt #asToken)
]

{ #category : #generated }
RustPathExpressionNode >> type [
	^ type
]

{ #category : #generated }
RustPathExpressionNode >> type: aRustProgramNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aRustProgramNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
RustPathExpressionNode >> typePath [
	^ typePath
]

{ #category : #generated }
RustPathExpressionNode >> typePath: aRustTypePathNode [
	self typePath notNil ifTrue: [ self typePath parent: nil ].
	typePath := aRustTypePathNode.
	self typePath notNil ifTrue: [ self typePath parent: self ]
]
