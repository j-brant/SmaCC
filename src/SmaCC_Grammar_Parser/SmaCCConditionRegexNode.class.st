Class {
	#name : #SmaCCConditionRegexNode,
	#superclass : #SmaCCRegexNode,
	#instVars : [
		'regex',
		'code'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCConditionRegexNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitConditionRegex: self
]

{ #category : #generated }
SmaCCConditionRegexNode >> code [
	^ code
]

{ #category : #generated }
SmaCCConditionRegexNode >> code: aSmaCCToken [
	code := aSmaCCToken
]

{ #category : #generated }
SmaCCConditionRegexNode >> nodeVariables [
	^ #(#regex)
]

{ #category : #generated }
SmaCCConditionRegexNode >> regex [
	^ regex
]

{ #category : #generated }
SmaCCConditionRegexNode >> regex: aSmaCCRegexNode [
	self regex notNil ifTrue: [ self regex parent: nil ].
	regex := aSmaCCRegexNode.
	self regex notNil ifTrue: [ self regex parent: self ]
]

{ #category : #generated }
SmaCCConditionRegexNode >> tokenVariables [
	^ #(#code)
]
