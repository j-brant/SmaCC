Class {
	#name : #RustMacroRuleNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'left',
		'matches',
		'right',
		'arrow',
		'tokens'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMacroRuleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroRule: self
]

{ #category : #generated }
RustMacroRuleNode >> arrow [
	^ arrow
]

{ #category : #generated }
RustMacroRuleNode >> arrow: aSmaCCToken [
	arrow := aSmaCCToken
]

{ #category : #generated }
RustMacroRuleNode >> compositeNodeVariables [
	^ #(#matches)
]

{ #category : #'generated-initialize-release' }
RustMacroRuleNode >> initialize [
	super initialize.
	matches := OrderedCollection new: 2.
	tokens := OrderedCollection new: 2.
]

{ #category : #generated }
RustMacroRuleNode >> left [
	^ left
]

{ #category : #generated }
RustMacroRuleNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
RustMacroRuleNode >> matches [
	^ matches
]

{ #category : #generated }
RustMacroRuleNode >> matches: anOrderedCollection [
	self setParents: self matches to: nil.
	matches := anOrderedCollection.
	self setParents: self matches to: self
]

{ #category : #generated }
RustMacroRuleNode >> otherVariables [
	^ #(#tokens)
]

{ #category : #generated }
RustMacroRuleNode >> right [
	^ right
]

{ #category : #generated }
RustMacroRuleNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
RustMacroRuleNode >> tokenVariables [
	^ #(#left #right #arrow)
]

{ #category : #generated }
RustMacroRuleNode >> tokens [
	^ tokens
]

{ #category : #generated }
RustMacroRuleNode >> tokens: anOrderedCollection [
	self setParent: self tokens to: nil.
	tokens := anOrderedCollection.
	self setParent: self tokens to: self
]
