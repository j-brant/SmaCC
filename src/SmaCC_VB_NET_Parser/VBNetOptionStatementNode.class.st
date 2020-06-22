Class {
	#name : #VBNetOptionStatementNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'optionToken',
		'option',
		'statementSeparator',
		'value'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetOptionStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOptionStatement: self
]

{ #category : #generated }
VBNetOptionStatementNode >> option [
	^ option
]

{ #category : #generated }
VBNetOptionStatementNode >> option: aSmaCCToken [
	option := aSmaCCToken
]

{ #category : #generated }
VBNetOptionStatementNode >> optionToken [
	^ optionToken
]

{ #category : #generated }
VBNetOptionStatementNode >> optionToken: aSmaCCToken [
	optionToken := aSmaCCToken
]

{ #category : #generated }
VBNetOptionStatementNode >> statementSeparator [
	^ statementSeparator
]

{ #category : #generated }
VBNetOptionStatementNode >> statementSeparator: aSmaCCToken [
	statementSeparator := aSmaCCToken
]

{ #category : #generated }
VBNetOptionStatementNode >> tokenVariables [
	^ #(#optionToken #option #statementSeparator #value)
]

{ #category : #generated }
VBNetOptionStatementNode >> value [
	^ value
]

{ #category : #generated }
VBNetOptionStatementNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
