Class {
	#name : #SmaCCAlternationRegexNode,
	#superclass : #SmaCCRegexNode,
	#instVars : [
		'left',
		'barToken',
		'right'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCAlternationRegexNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitAlternationRegex: self
]

{ #category : #generated }
SmaCCAlternationRegexNode >> barToken [
	^ barToken
]

{ #category : #generated }
SmaCCAlternationRegexNode >> barToken: aSmaCCToken [
	barToken := aSmaCCToken
]

{ #category : #generated }
SmaCCAlternationRegexNode >> left [
	^ left
]

{ #category : #generated }
SmaCCAlternationRegexNode >> left: aSmaCCRegexNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aSmaCCRegexNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
SmaCCAlternationRegexNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
SmaCCAlternationRegexNode >> right [
	^ right
]

{ #category : #generated }
SmaCCAlternationRegexNode >> right: aSmaCCRegexNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aSmaCCRegexNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]

{ #category : #generated }
SmaCCAlternationRegexNode >> tokenVariables [
	^ #(#barToken #leftParen #rightParen)
]
