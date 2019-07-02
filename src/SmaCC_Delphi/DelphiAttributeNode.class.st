Class {
	#name : #DelphiAttributeNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'left',
		'expression',
		'right'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiAttributeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAttribute: self
]

{ #category : #generated }
DelphiAttributeNode >> expression [
	^ expression
]

{ #category : #generated }
DelphiAttributeNode >> expression: aDelphiExpressionNode [
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := aDelphiExpressionNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
DelphiAttributeNode >> left [
	^ left
]

{ #category : #generated }
DelphiAttributeNode >> left: aSmaCCToken [
	left := aSmaCCToken
]

{ #category : #generated }
DelphiAttributeNode >> nodeVariables [
	^ #(#expression)
]

{ #category : #generated }
DelphiAttributeNode >> right [
	^ right
]

{ #category : #generated }
DelphiAttributeNode >> right: aSmaCCToken [
	right := aSmaCCToken
]

{ #category : #generated }
DelphiAttributeNode >> tokenVariables [
	^ #(#left #right)
]
