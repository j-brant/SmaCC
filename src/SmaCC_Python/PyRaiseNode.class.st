Class {
	#name : #PyRaiseNode,
	#superclass : #PyRootNode,
	#instVars : [
		'raiseToken',
		'arg1',
		'fromToken',
		'from',
		'commaTokens',
		'arg2',
		'arg3'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyRaiseNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitRaise: self
]

{ #category : #generated }
PyRaiseNode >> arg1 [
	^ arg1
]

{ #category : #generated }
PyRaiseNode >> arg1: aPyRootNode [
	self arg1 notNil
		ifTrue: [ self arg1 parent: nil ].
	arg1 := aPyRootNode.
	self arg1 notNil
		ifTrue: [ self arg1 parent: self ]
]

{ #category : #generated }
PyRaiseNode >> arg2 [
	^ arg2
]

{ #category : #generated }
PyRaiseNode >> arg2: aPyRootNode [
	self arg2 notNil
		ifTrue: [ self arg2 parent: nil ].
	arg2 := aPyRootNode.
	self arg2 notNil
		ifTrue: [ self arg2 parent: self ]
]

{ #category : #generated }
PyRaiseNode >> arg3 [
	^ arg3
]

{ #category : #generated }
PyRaiseNode >> arg3: aPyRootNode [
	self arg3 notNil
		ifTrue: [ self arg3 parent: nil ].
	arg3 := aPyRootNode.
	self arg3 notNil
		ifTrue: [ self arg3 parent: self ]
]

{ #category : #generated }
PyRaiseNode >> commaTokens [
	^ commaTokens
]

{ #category : #generated }
PyRaiseNode >> commaTokens: anOrderedCollection [
	commaTokens := anOrderedCollection
]

{ #category : #generated }
PyRaiseNode >> compositeTokenVariables [
	^ #(#commaTokens)
]

{ #category : #generated }
PyRaiseNode >> from [
	^ from
]

{ #category : #generated }
PyRaiseNode >> from: aPyRootNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aPyRootNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #generated }
PyRaiseNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
PyRaiseNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
PyRaiseNode >> initialize [
	super initialize.
	commaTokens := OrderedCollection new: 2.
]

{ #category : #generated }
PyRaiseNode >> nodeVariables [
	^ #(#arg1 #from #arg2 #arg3)
]

{ #category : #generated }
PyRaiseNode >> raiseToken [
	^ raiseToken
]

{ #category : #generated }
PyRaiseNode >> raiseToken: aSmaCCToken [
	raiseToken := aSmaCCToken
]

{ #category : #generated }
PyRaiseNode >> tokenVariables [
	^ #(#raiseToken #fromToken)
]
