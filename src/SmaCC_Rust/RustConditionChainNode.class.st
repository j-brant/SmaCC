Class {
	#name : 'RustConditionChainNode',
	#superclass : 'RustProgramNode',
	#instVars : [
		'left',
		'operator',
		'right'
	],
	#category : 'SmaCC_Rust',
	#package : 'SmaCC_Rust'
}

{ #category : 'generated' }
RustConditionChainNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConditionChain: self
]

{ #category : 'generated' }
RustConditionChainNode >> left [
	^ left
]

{ #category : 'generated' }
RustConditionChainNode >> left: aRustProgramNode [
	self left notNil ifTrue: [ self left parent: nil ].
	left := aRustProgramNode.
	self left notNil ifTrue: [ self left parent: self ]
]

{ #category : 'generated' }
RustConditionChainNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : 'generated' }
RustConditionChainNode >> operator [
	^ operator
]

{ #category : 'generated' }
RustConditionChainNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : 'generated' }
RustConditionChainNode >> right [
	^ right
]

{ #category : 'generated' }
RustConditionChainNode >> right: aRustProgramNode [
	self right notNil ifTrue: [ self right parent: nil ].
	right := aRustProgramNode.
	self right notNil ifTrue: [ self right parent: self ]
]

{ #category : 'generated' }
RustConditionChainNode >> tokenVariables [
	^ #(#operator)
]
