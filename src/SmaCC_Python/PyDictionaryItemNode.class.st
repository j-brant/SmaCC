Class {
	#name : #PyDictionaryItemNode,
	#superclass : #PyRootNode,
	#instVars : [
		'object',
		'colonToken',
		'value'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyDictionaryItemNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitDictionaryItem: self
]

{ #category : #generated }
PyDictionaryItemNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
PyDictionaryItemNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
PyDictionaryItemNode >> nodeVariables [
	^ #(#object #value)
]

{ #category : #generated }
PyDictionaryItemNode >> object [
	^ object
]

{ #category : #generated }
PyDictionaryItemNode >> object: aPyExpressionNode [
	self object notNil ifTrue: [ self object parent: nil ].
	object := aPyExpressionNode.
	self object notNil ifTrue: [ self object parent: self ]
]

{ #category : #generated }
PyDictionaryItemNode >> tokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
PyDictionaryItemNode >> value [
	^ value
]

{ #category : #generated }
PyDictionaryItemNode >> value: aPyExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aPyExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
