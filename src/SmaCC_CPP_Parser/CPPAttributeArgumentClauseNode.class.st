Class {
	#name : #CPPAttributeArgumentClauseNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'left',
		'balancedTokens',
		'right'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPAttributeArgumentClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttributeArgumentClause: self
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> balancedTokens [
	^ balancedTokens
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> balancedTokens: anOrderedCollection [
	self setParents: self balancedTokens to: nil.
	balancedTokens := anOrderedCollection.
	self setParents: self balancedTokens to: self
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> compositeNodeVariables [
	^ #(#balancedTokens)
]

{ #category : #'generated-initialize-release' }
CPPAttributeArgumentClauseNode >> initialize [
	super initialize.
	balancedTokens := OrderedCollection new: 2.
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> left [
	^ left
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> right [
	^ right
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
CPPAttributeArgumentClauseNode >> tokenVariables [
	^ #(#left #right)
]
