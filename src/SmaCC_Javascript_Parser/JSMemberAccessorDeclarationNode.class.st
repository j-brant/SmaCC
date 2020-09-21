Class {
	#name : #JSMemberAccessorDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'accessor',
		'staticToken',
		'modifier',
		'decorator'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSMemberAccessorDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberAccessorDeclaration: self
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> accessor [
	^ accessor
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> accessor: aJSMethodDefinitionNode [
	self accessor notNil
		ifTrue: [ self accessor parent: nil ].
	accessor := aJSMethodDefinitionNode.
	self accessor notNil
		ifTrue: [ self accessor parent: self ]
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> decorator [
	^ decorator
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> decorator: aJSDecoratorExpressionNode [
	self decorator notNil
		ifTrue: [ self decorator parent: nil ].
	decorator := aJSDecoratorExpressionNode.
	self decorator notNil
		ifTrue: [ self decorator parent: self ]
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> nodeVariables [
	^ #(#accessor #decorator)
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> tokenVariables [
	^ #(#staticToken #modifier)
]
