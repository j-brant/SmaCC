Class {
	#name : #SmaCCIgnoreVariableWarningDirectiveNode,
	#superclass : #SmaCCDirectiveNode,
	#instVars : [
		'ignoreVariableWarningToken',
		'symbols'
	],
	#category : #'SmaCC_Grammar_Parser'
}

{ #category : #generated }
SmaCCIgnoreVariableWarningDirectiveNode >> acceptVisitor: aDefinitionVisitor [
	^ aDefinitionVisitor visitIgnoreVariableWarningDirective: self
]

{ #category : #generated }
SmaCCIgnoreVariableWarningDirectiveNode >> compositeNodeVariables [
	^ #(#symbols)
]

{ #category : #generated }
SmaCCIgnoreVariableWarningDirectiveNode >> ignoreVariableWarningToken [
	^ ignoreVariableWarningToken
]

{ #category : #generated }
SmaCCIgnoreVariableWarningDirectiveNode >> ignoreVariableWarningToken: aSmaCCToken [
	ignoreVariableWarningToken := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
SmaCCIgnoreVariableWarningDirectiveNode >> initialize [
	super initialize.
	symbols := OrderedCollection new: 2.
]

{ #category : #generated }
SmaCCIgnoreVariableWarningDirectiveNode >> symbols [
	^ symbols
]

{ #category : #generated }
SmaCCIgnoreVariableWarningDirectiveNode >> symbols: anOrderedCollection [
	self setParents: self symbols to: nil.
	symbols := anOrderedCollection.
	self setParents: self symbols to: self
]

{ #category : #generated }
SmaCCIgnoreVariableWarningDirectiveNode >> tokenVariables [
	^ #(#ignoreVariableWarningToken #directiveStartToken #semicolon)
]
