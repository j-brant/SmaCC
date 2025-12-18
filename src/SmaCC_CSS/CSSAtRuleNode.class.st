Class {
	#name : 'CSSAtRuleNode',
	#superclass : 'CSSProgramNode',
	#instVars : [
		'atKeyword',
		'parts',
		'block',
		'semicolon'
	],
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSAtRuleNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAtRule: self
]

{ #category : 'generated' }
CSSAtRuleNode >> atKeyword [
	^ atKeyword
]

{ #category : 'generated' }
CSSAtRuleNode >> atKeyword: aCSSAtNode [
	self atKeyword notNil ifTrue: [ self atKeyword parent: nil ].
	atKeyword := aCSSAtNode.
	self atKeyword notNil ifTrue: [ self atKeyword parent: self ]
]

{ #category : 'generated' }
CSSAtRuleNode >> block [
	^ block
]

{ #category : 'generated' }
CSSAtRuleNode >> block: aCSSBlockNode [
	self block notNil ifTrue: [ self block parent: nil ].
	block := aCSSBlockNode.
	self block notNil ifTrue: [ self block parent: self ]
]

{ #category : 'generated' }
CSSAtRuleNode >> compositeNodeVariables [
	^ #(#parts)
]

{ #category : 'generated-initialize-release' }
CSSAtRuleNode >> initialize [
	super initialize.
	parts := OrderedCollection new: 2.
]

{ #category : 'generated' }
CSSAtRuleNode >> nodeVariables [
	^ #(#atKeyword #block)
]

{ #category : 'generated' }
CSSAtRuleNode >> parts [
	^ parts
]

{ #category : 'generated' }
CSSAtRuleNode >> parts: anOrderedCollection [
	self setParents: self parts to: nil.
	parts := anOrderedCollection.
	self setParents: self parts to: self
]

{ #category : 'generated' }
CSSAtRuleNode >> semicolon [
	^ semicolon
]

{ #category : 'generated' }
CSSAtRuleNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : 'generated' }
CSSAtRuleNode >> tokenVariables [
	^ #(#semicolon)
]
