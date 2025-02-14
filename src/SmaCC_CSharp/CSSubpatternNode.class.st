Class {
	#name : #CSSubpatternNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'pattern',
		'name',
		'colon'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSSubpatternNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSubpattern: self
]

{ #category : #generated }
CSSubpatternNode >> colon [
	^ colon
]

{ #category : #generated }
CSSubpatternNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
CSSubpatternNode >> name [
	^ name
]

{ #category : #generated }
CSSubpatternNode >> name: aCSQualifiedIdentifierNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aCSQualifiedIdentifierNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CSSubpatternNode >> nodeVariables [
	^ #(#pattern #name)
]

{ #category : #generated }
CSSubpatternNode >> pattern [
	^ pattern
]

{ #category : #generated }
CSSubpatternNode >> pattern: aCSExpressionNode [
	self pattern notNil ifTrue: [ self pattern parent: nil ].
	pattern := aCSExpressionNode.
	self pattern notNil ifTrue: [ self pattern parent: self ]
]

{ #category : #generated }
CSSubpatternNode >> tokenVariables [
	^ #(#colon)
]
