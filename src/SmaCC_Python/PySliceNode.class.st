Class {
	#name : #PySliceNode,
	#superclass : #PyRootNode,
	#instVars : [
		'colonTokens',
		'step',
		'to',
		'from'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PySliceNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitSlice: self
]

{ #category : #generated }
PySliceNode >> colonTokens [
	^ colonTokens
]

{ #category : #generated }
PySliceNode >> colonTokens: anOrderedCollection [
	colonTokens := anOrderedCollection
]

{ #category : #generated }
PySliceNode >> compositeTokenVariables [
	^ #(#colonTokens)
]

{ #category : #generated }
PySliceNode >> from [
	^ from
]

{ #category : #generated }
PySliceNode >> from: aPyExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aPyExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #'generated-initialize-release' }
PySliceNode >> initialize [
	super initialize.
	colonTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PySliceNode >> nodeVariables [
	^ #(#step #to #from)
]

{ #category : #generated }
PySliceNode >> step [
	^ step
]

{ #category : #generated }
PySliceNode >> step: aPyExpressionNode [
	self step notNil ifTrue: [ self step parent: nil ].
	step := aPyExpressionNode.
	self step notNil ifTrue: [ self step parent: self ]
]

{ #category : #generated }
PySliceNode >> to [
	^ to
]

{ #category : #generated }
PySliceNode >> to: aPyExpressionNode [
	self to notNil ifTrue: [ self to parent: nil ].
	to := aPyExpressionNode.
	self to notNil ifTrue: [ self to parent: self ]
]
