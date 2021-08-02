Class {
	#name : #RubyCaseNode,
	#superclass : #RubyExpressionNode,
	#instVars : [
		'caseToken',
		'expression',
		'semicolons',
		'options',
		'else',
		'endToken'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyCaseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCase: self
]

{ #category : #generated }
RubyCaseNode >> caseToken [
	^ caseToken
]

{ #category : #generated }
RubyCaseNode >> caseToken: aSmaCCToken [
	caseToken := aSmaCCToken
]

{ #category : #generated }
RubyCaseNode >> compositeNodeVariables [
	^ #(#options)
]

{ #category : #generated }
RubyCaseNode >> compositeTokenVariables [
	^ #(#semicolons #leftParens #rightParens)
]

{ #category : #generated }
RubyCaseNode >> else [
	^ else
]

{ #category : #generated }
RubyCaseNode >> else: aRubyElseNode [
	self else notNil
		ifTrue: [ self else parent: nil ].
	else := aRubyElseNode.
	self else notNil
		ifTrue: [ self else parent: self ]
]

{ #category : #generated }
RubyCaseNode >> endToken [
	^ endToken
]

{ #category : #generated }
RubyCaseNode >> endToken: aSmaCCToken [
	endToken := aSmaCCToken
]

{ #category : #generated }
RubyCaseNode >> expression [
	^ expression
]

{ #category : #generated }
RubyCaseNode >> expression: aRubyExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aRubyExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #'generated-initialize-release' }
RubyCaseNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	options := OrderedCollection new: 2.
]

{ #category : #generated }
RubyCaseNode >> nodeVariables [
	^ #(#expression #else)
]

{ #category : #generated }
RubyCaseNode >> options [
	^ options
]

{ #category : #generated }
RubyCaseNode >> options: anOrderedCollection [
	self setParents: self options to: nil.
	options := anOrderedCollection.
	self setParents: self options to: self
]

{ #category : #generated }
RubyCaseNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyCaseNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyCaseNode >> tokenVariables [
	^ #(#caseToken #endToken)
]
