Class {
	#name : #TeradataSubstringExpressionNode,
	#superclass : #TeradataExpressionNode,
	#instVars : [
		'substringToken',
		'value',
		'fromToken',
		'from',
		'forToken',
		'for',
		'commas',
		'to'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataSubstringExpressionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubstringExpression: self
]

{ #category : #generated }
TeradataSubstringExpressionNode >> commas [
	^ commas
]

{ #category : #generated }
TeradataSubstringExpressionNode >> commas: anOrderedCollection [
	commas := anOrderedCollection
]

{ #category : #generated }
TeradataSubstringExpressionNode >> compositeTokenVariables [
	^ #(#commas #leftParens #rightParens)
]

{ #category : #generated }
TeradataSubstringExpressionNode >> for [
	^ for
]

{ #category : #generated }
TeradataSubstringExpressionNode >> for: aTeradataExpressionNode [
	self for notNil ifTrue: [ self for parent: nil ].
	for := aTeradataExpressionNode.
	self for notNil ifTrue: [ self for parent: self ]
]

{ #category : #generated }
TeradataSubstringExpressionNode >> forToken [
	^ forToken
]

{ #category : #generated }
TeradataSubstringExpressionNode >> forToken: aSmaCCToken [
	forToken := aSmaCCToken
]

{ #category : #generated }
TeradataSubstringExpressionNode >> from [
	^ from
]

{ #category : #generated }
TeradataSubstringExpressionNode >> from: aTeradataExpressionNode [
	self from notNil ifTrue: [ self from parent: nil ].
	from := aTeradataExpressionNode.
	self from notNil ifTrue: [ self from parent: self ]
]

{ #category : #generated }
TeradataSubstringExpressionNode >> fromToken [
	^ fromToken
]

{ #category : #generated }
TeradataSubstringExpressionNode >> fromToken: aSmaCCToken [
	fromToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
TeradataSubstringExpressionNode >> initialize [
	super initialize.
	commas := OrderedCollection new: 2.
]

{ #category : #generated }
TeradataSubstringExpressionNode >> nodeVariables [
	^ #(#value #from #for #to)
]

{ #category : #generated }
TeradataSubstringExpressionNode >> substringToken [
	^ substringToken
]

{ #category : #generated }
TeradataSubstringExpressionNode >> substringToken: aSmaCCToken [
	substringToken := aSmaCCToken
]

{ #category : #generated }
TeradataSubstringExpressionNode >> to [
	^ to
]

{ #category : #generated }
TeradataSubstringExpressionNode >> to: aTeradataExpressionNode [
	self to notNil ifTrue: [ self to parent: nil ].
	to := aTeradataExpressionNode.
	self to notNil ifTrue: [ self to parent: self ]
]

{ #category : #generated }
TeradataSubstringExpressionNode >> tokenVariables [
	^ #(#substringToken #fromToken #forToken)
]

{ #category : #generated }
TeradataSubstringExpressionNode >> value [
	^ value
]

{ #category : #generated }
TeradataSubstringExpressionNode >> value: aTeradataExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aTeradataExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
