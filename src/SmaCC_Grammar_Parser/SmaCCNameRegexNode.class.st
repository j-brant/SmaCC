Class {
	#name : #SmaCCNameRegexNode,
	#superclass : #SmaCCRegexNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCNameRegexNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitNameRegex: self
]

{ #category : #generated }
SmaCCNameRegexNode >> name [
	^ name
]

{ #category : #generated }
SmaCCNameRegexNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
SmaCCNameRegexNode >> tokenVariables [
	^ #(#name)
]
