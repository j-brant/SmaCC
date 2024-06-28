Class {
	#name : #CSSRulesetNode,
	#superclass : #CSSProgramNode,
	#instVars : [
		'leftBrace',
		'items',
		'semicolons',
		'rightBrace',
		'selectorParts'
	],
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSRulesetNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitRuleset: self
]

{ #category : #generated }
CSSRulesetNode >> compositeNodeVariables [
	^ #(#items #selectorParts)
]

{ #category : #generated }
CSSRulesetNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #'generated-initialize-release' }
CSSRulesetNode >> initialize [
	super initialize.
	items := OrderedCollection new: 2.
	semicolons := OrderedCollection new: 2.
	selectorParts := OrderedCollection new: 2.
]

{ #category : #generated }
CSSRulesetNode >> items [
	^ items
]

{ #category : #generated }
CSSRulesetNode >> items: anOrderedCollection [
	self setParents: self items to: nil.
	items := anOrderedCollection.
	self setParents: self items to: self
]

{ #category : #generated }
CSSRulesetNode >> leftBrace [
	^ leftBrace
]

{ #category : #generated }
CSSRulesetNode >> leftBrace: aSmaCCToken [
	leftBrace := aSmaCCToken
]

{ #category : #generated }
CSSRulesetNode >> rightBrace [
	^ rightBrace
]

{ #category : #generated }
CSSRulesetNode >> rightBrace: aSmaCCToken [
	rightBrace := aSmaCCToken
]

{ #category : #generated }
CSSRulesetNode >> selectorParts [
	^ selectorParts
]

{ #category : #generated }
CSSRulesetNode >> selectorParts: anOrderedCollection [
	self setParents: self selectorParts to: nil.
	selectorParts := anOrderedCollection.
	self setParents: self selectorParts to: self
]

{ #category : #generated }
CSSRulesetNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
CSSRulesetNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
CSSRulesetNode >> tokenVariables [
	^ #(#leftBrace #rightBrace)
]
