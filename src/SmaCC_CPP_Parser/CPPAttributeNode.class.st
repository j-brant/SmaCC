Class {
	#name : #CPPAttributeNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name',
		'namespace',
		'colonColon',
		'left',
		'balancedTokens',
		'right',
		'arguments',
		'commas'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttribute: self
]

{ #category : #generated }
CPPAttributeNode >> arguments [
	^ arguments
]

{ #category : #generated }
CPPAttributeNode >> arguments: anOrderedCollection [
	self setParents: self arguments to: nil.
	arguments := anOrderedCollection.
	self setParents: self arguments to: self
]

{ #category : #generated }
CPPAttributeNode >> balancedTokens [
	^ balancedTokens
]

{ #category : #generated }
CPPAttributeNode >> balancedTokens: anOrderedCollection [
	self setParents: self balancedTokens to: nil.
	balancedTokens := anOrderedCollection.
	self setParents: self balancedTokens to: self
]

{ #category : #generated }
CPPAttributeNode >> colonColon [
	^ colonColon
]

{ #category : #generated }
CPPAttributeNode >> colonColon: aSmaCCToken [
	colonColon := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> commas [
	^ commas
]

{ #category : #generated }
CPPAttributeNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
CPPAttributeNode >> compositeNodeVariables [
	^ #(#balancedTokens #arguments)
]

{ #category : #generated }
CPPAttributeNode >> compositeTokenVariables [
	^ #(#commas)
]

{ #category : #'generated-initialize-release' }
CPPAttributeNode >> initialize [
	super initialize.
	balancedTokens := OrderedCollection new: 2.
	arguments := OrderedCollection new: 2.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAttributeNode >> left [
	^ left
]

{ #category : #generated }
CPPAttributeNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> name [
	^ name
]

{ #category : #generated }
CPPAttributeNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> namespace [
	^ namespace
]

{ #category : #generated }
CPPAttributeNode >> namespace: aSmaCCToken [
	namespace := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> right [
	^ right
]

{ #category : #generated }
CPPAttributeNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
CPPAttributeNode >> tokenVariables [
	^ #(#name #namespace #colonColon #left #right)
]
