Class {
	#name : #VBNetObjectCollectionInitializerNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'fromToken',
		'initializer'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetObjectCollectionInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitObjectCollectionInitializer: self
]

{ #category : #generated }
VBNetObjectCollectionInitializerNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
VBNetObjectCollectionInitializerNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #generated }
VBNetObjectCollectionInitializerNode >> initializer [
	^ initializer
]

{ #category : #generated }
VBNetObjectCollectionInitializerNode >> initializer: aVBNetCollectionInitializerNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aVBNetCollectionInitializerNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
VBNetObjectCollectionInitializerNode >> nodeVariables [
	^ #(#initializer)
]

{ #category : #generated }
VBNetObjectCollectionInitializerNode >> tokenVariables [
	^ #(#fromToken)
]
