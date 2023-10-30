Class {
	#name : #PyDecoratedNode,
	#superclass : #PyRootNode,
	#instVars : [
		'decorators',
		'classdef',
		'funcdef'
	],
	#category : #'SmaCC_Python'
}

{ #category : #generated }
PyDecoratedNode >> acceptVisitor: aRootVisitor [
	^ aRootVisitor visitDecorated: self
]

{ #category : #generated }
PyDecoratedNode >> classdef [
	^ classdef
]

{ #category : #generated }
PyDecoratedNode >> classdef: aPyClassdefNode [
	self classdef notNil
		ifTrue: [ self classdef parent: nil ].
	classdef := aPyClassdefNode.
	self classdef notNil
		ifTrue: [ self classdef parent: self ]
]

{ #category : #generated }
PyDecoratedNode >> compositeNodeVariables [
	^ #(#decorators)
]

{ #category : #generated }
PyDecoratedNode >> decorators [
	^ decorators
]

{ #category : #generated }
PyDecoratedNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #generated }
PyDecoratedNode >> funcdef [
	^ funcdef
]

{ #category : #generated }
PyDecoratedNode >> funcdef: aPyFuncdefNode [
	self funcdef notNil
		ifTrue: [ self funcdef parent: nil ].
	funcdef := aPyFuncdefNode.
	self funcdef notNil
		ifTrue: [ self funcdef parent: self ]
]

{ #category : #'generated-initialize-release' }
PyDecoratedNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
]

{ #category : #generated }
PyDecoratedNode >> nodeVariables [
	^ #(#classdef #funcdef)
]
