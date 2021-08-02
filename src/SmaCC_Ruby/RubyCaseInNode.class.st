Class {
	#name : #RubyCaseInNode,
	#superclass : #RubyProgramNode,
	#instVars : [
		'inToken',
		'value',
		'semicolons',
		'thenToken',
		'statements'
	],
	#category : #'SmaCC_Ruby'
}

{ #category : #generated }
RubyCaseInNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseIn: self
]

{ #category : #generated }
RubyCaseInNode >> compositeNodeVariables [
	^ #(#statements)
]

{ #category : #generated }
RubyCaseInNode >> compositeTokenVariables [
	^ #(#semicolons)
]

{ #category : #generated }
RubyCaseInNode >> inToken [
	^ inToken
]

{ #category : #generated }
RubyCaseInNode >> inToken: aSmaCCToken [
	inToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
RubyCaseInNode >> initialize [
	super initialize.
	semicolons := OrderedCollection new: 2.
	statements := OrderedCollection new: 2.
]

{ #category : #generated }
RubyCaseInNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
RubyCaseInNode >> semicolons [
	^ semicolons
]

{ #category : #generated }
RubyCaseInNode >> semicolons: anOrderedCollection [
	semicolons := anOrderedCollection
]

{ #category : #generated }
RubyCaseInNode >> statements [
	^ statements
]

{ #category : #generated }
RubyCaseInNode >> statements: anOrderedCollection [
	self setParents: self statements to: nil.
	statements := anOrderedCollection.
	self setParents: self statements to: self
]

{ #category : #generated }
RubyCaseInNode >> thenToken [
	^ thenToken
]

{ #category : #generated }
RubyCaseInNode >> thenToken: aSmaCCToken [
	thenToken := aSmaCCToken
]

{ #category : #generated }
RubyCaseInNode >> tokenVariables [
	^ #(#inToken #thenToken)
]

{ #category : #generated }
RubyCaseInNode >> value [
	^ value
]

{ #category : #generated }
RubyCaseInNode >> value: aRubyExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aRubyExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
