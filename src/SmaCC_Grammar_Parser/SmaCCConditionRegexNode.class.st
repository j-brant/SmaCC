Class {
	#name : #SmaCCConditionRegexNode,
	#superclass : #SmaCCRegexNode,
	#instVars : [
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
SmaCCConditionRegexNode >> tokenVariables [
	^ #(#code)
]
