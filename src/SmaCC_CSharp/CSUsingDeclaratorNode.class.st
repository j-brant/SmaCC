Class {
	#name : #CSUsingDeclaratorNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'name',
		'equal',
		'value'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSUsingDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitUsingDeclarator: self
]

{ #category : #generated }
CSUsingDeclaratorNode >> equal [
	^ equal
]

{ #category : #generated }
CSUsingDeclaratorNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CSUsingDeclaratorNode >> name [
	^ name
]

{ #category : #generated }
CSUsingDeclaratorNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSUsingDeclaratorNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CSUsingDeclaratorNode >> tokenVariables [
	^ #(#name #equal)
]

{ #category : #generated }
CSUsingDeclaratorNode >> value [
	^ value
]

{ #category : #generated }
CSUsingDeclaratorNode >> value: aCSExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aCSExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]
