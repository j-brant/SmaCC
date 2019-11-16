Class {
	#name : #CPPBalancedTokenNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'left',
		'balancedTokens',
		'right'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPBalancedTokenNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitBalancedToken: self
]

{ #category : #generated }
CPPBalancedTokenNode >> balancedTokens [
	^ balancedTokens
]

{ #category : #generated }
CPPBalancedTokenNode >> balancedTokens: anOrderedCollection [
	self setParents: self balancedTokens to: nil.
	balancedTokens := anOrderedCollection.
	self setParents: self balancedTokens to: self
]

{ #category : #generated }
CPPBalancedTokenNode >> compositeNodeVariables [
	^ #(#balancedTokens)
]

{ #category : #'generated-initialize-release' }
CPPBalancedTokenNode >> initialize [
	super initialize.
	balancedTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPBalancedTokenNode >> left [
	^ left
]

{ #category : #generated }
CPPBalancedTokenNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
CPPBalancedTokenNode >> right [
	^ right
]

{ #category : #generated }
CPPBalancedTokenNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
CPPBalancedTokenNode >> tokenVariables [
	^ #(#left #right)
]
