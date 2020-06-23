Class {
	#name : #VBNetRaiseEventStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'raiseEventToken',
		'name',
		'leftParen',
		'rightParen',
		'commas',
		'arguments',
		'argumentNames',
		'colonEqualses',
		'namedArguments'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetRaiseEventStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRaiseEventStatement: self
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> argumentNames [
	^ argumentNames
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> argumentNames: anOrderedCollection [
	argumentNames := anOrderedCollection
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> arguments [
	^ arguments
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> colonEqualses [
	^ colonEqualses
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> colonEqualses: anOrderedCollection [
	colonEqualses := anOrderedCollection
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> commas [
	^ commas
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> compositeNodeVariables [
	^ #(#arguments #namedArguments)
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> compositeTokenVariables [
	^ #(#commas #argumentNames #colonEqualses)
]

{ #category : #'generated-initialize-release' }
VBNetRaiseEventStatementNode >> initialize [
	super initialize.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
	argumentNames := OrderedCollection new: 2.
	colonEqualses := OrderedCollection new: 2.
	namedArguments := OrderedCollection new: 2.
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> name [
	^ name
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> namedArguments [
	^ namedArguments
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> namedArguments: anOrderedCollection [
	self setParents: self namedArguments to: nil.
	namedArguments := anOrderedCollection.
	self setParents: self namedArguments to: self
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> raiseEventToken [
	^ raiseEventToken
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> raiseEventToken: aSmaCCToken [
	raiseEventToken := aSmaCCToken
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
VBNetRaiseEventStatementNode >> tokenVariables [
	^ #(#raiseEventToken #name #leftParen #rightParen)
]
