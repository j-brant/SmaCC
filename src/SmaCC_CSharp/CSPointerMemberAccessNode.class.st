Class {
	#name : #CSPointerMemberAccessNode,
	#superclass : #CSExpressionNode,
	#instVars : [
		'expression',
		'arrowToken',
		'name',
		'typeArguments'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSPointerMemberAccessNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPointerMemberAccess: self
]

{ #category : #generated }
CSPointerMemberAccessNode >> arrowToken [
	^ arrowToken
]

{ #category : #generated }
CSPointerMemberAccessNode >> arrowToken: aSmaCCToken [
	arrowToken := aSmaCCToken
]

{ #category : #generated }
CSPointerMemberAccessNode >> expression [
	^ expression
]

{ #category : #generated }
CSPointerMemberAccessNode >> expression: aCSExpressionNode [
	self expression notNil ifTrue: [ self expression parent: nil ].
	expression := aCSExpressionNode.
	self expression notNil ifTrue: [ self expression parent: self ]
]

{ #category : #generated }
CSPointerMemberAccessNode >> name [
	^ name
]

{ #category : #generated }
CSPointerMemberAccessNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSPointerMemberAccessNode >> nodeVariables [
	^ #(#expression #typeArguments)
]

{ #category : #generated }
CSPointerMemberAccessNode >> tokenVariables [
	^ #(#arrowToken #name)
]

{ #category : #generated }
CSPointerMemberAccessNode >> typeArguments [
	^ typeArguments
]

{ #category : #generated }
CSPointerMemberAccessNode >> typeArguments: aCSTypeArgumentListNode [
	self typeArguments notNil ifTrue: [ self typeArguments parent: nil ].
	typeArguments := aCSTypeArgumentListNode.
	self typeArguments notNil ifTrue: [ self typeArguments parent: self ]
]
