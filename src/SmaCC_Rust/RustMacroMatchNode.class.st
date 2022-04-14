Class {
	#name : #RustMacroMatchNode,
	#superclass : #RustProgramNode,
	#instVars : [
		'value',
		'left',
		'matches',
		'right',
		'dollar',
		'name',
		'colon',
		'fragment',
		'leftParen',
		'rightParen',
		'op'
	],
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustMacroMatchNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMacroMatch: self
]

{ #category : #generated }
RustMacroMatchNode >> colon [
	^ colon
]

{ #category : #generated }
RustMacroMatchNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
RustMacroMatchNode >> compositeNodeVariables [
	^ #(#matches)
]

{ #category : #generated }
RustMacroMatchNode >> dollar [
	^ dollar
]

{ #category : #generated }
RustMacroMatchNode >> dollar: aSmaCCToken [
	dollar := aSmaCCToken
]

{ #category : #generated }
RustMacroMatchNode >> fragment [
	^ fragment
]

{ #category : #generated }
RustMacroMatchNode >> fragment: aSmaCCToken [
	fragment := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RustMacroMatchNode >> initialize [
	super initialize.
	matches := OrderedCollection new: 2.
]

{ #category : #generated }
RustMacroMatchNode >> left [
	^ left
]

{ #category : #generated }
RustMacroMatchNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
RustMacroMatchNode >> leftParen [
	^ leftParen
]

{ #category : #generated }
RustMacroMatchNode >> leftParen: aSmaCCToken [
	leftParen := aSmaCCToken
]

{ #category : #generated }
RustMacroMatchNode >> matches [
	^ matches
]

{ #category : #generated }
RustMacroMatchNode >> matches: anOrderedCollection [
	self setParents: self matches to: nil.
	matches := anOrderedCollection.
	self setParents: self matches to: self
]

{ #category : #generated }
RustMacroMatchNode >> name [
	^ name
]

{ #category : #generated }
RustMacroMatchNode >> name: anObject [
	self setParent: self name to: nil.
	name := anObject.
	self setParent: self name to: self
]

{ #category : #generated }
RustMacroMatchNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RustMacroMatchNode >> op [
	^ op
]

{ #category : #generated }
RustMacroMatchNode >> op: aSmaCCToken [
	op := aSmaCCToken
]

{ #category : #generated }
RustMacroMatchNode >> otherVariables [
	^ #(#name)
]

{ #category : #generated }
RustMacroMatchNode >> right [
	^ right
]

{ #category : #generated }
RustMacroMatchNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
RustMacroMatchNode >> rightParen [
	^ rightParen
]

{ #category : #generated }
RustMacroMatchNode >> rightParen: aSmaCCToken [
	rightParen := aSmaCCToken
]

{ #category : #generated }
RustMacroMatchNode >> tokenVariables [
	^ #(#left #right #dollar #colon #fragment #leftParen #rightParen #op)
]

{ #category : #generated }
RustMacroMatchNode >> value [
	^ value
]

{ #category : #generated }
RustMacroMatchNode >> value: aRustProgramNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aRustProgramNode.
	self value notNil ifTrue: [ self value parent: self ]
]
