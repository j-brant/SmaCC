Class {
	#name : #SmaCCConcatenationRegexNode,
	#superclass : #SmaCCRegexNode,
	#instVars : [
		'left',
		'right'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCConcatenationRegexNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitConcatenationRegex: self
]

{ #category : #generated }
SmaCCConcatenationRegexNode >> left [
	^ left
]

{ #category : #generated }
SmaCCConcatenationRegexNode >> left: aSmaCCRegexNode [
	self left notNil
		ifTrue: [ self left parent: nil ].
	left := aSmaCCRegexNode.
	self left notNil
		ifTrue: [ self left parent: self ]
]

{ #category : #generated }
SmaCCConcatenationRegexNode >> nodeVariables [
	^ #(#left #right)
]

{ #category : #generated }
SmaCCConcatenationRegexNode >> right [
	^ right
]

{ #category : #generated }
SmaCCConcatenationRegexNode >> right: aSmaCCRegexNode [
	self right notNil
		ifTrue: [ self right parent: nil ].
	right := aSmaCCRegexNode.
	self right notNil
		ifTrue: [ self right parent: self ]
]
