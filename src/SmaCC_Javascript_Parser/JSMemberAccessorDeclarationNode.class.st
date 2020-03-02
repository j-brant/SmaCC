Class {
	#name : #JSMemberAccessorDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'accessor',
		'staticToken',
		'modifier'
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
JSMemberAccessorDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSMemberAccessorDeclarationNode >> nodeVariables [
	^ #(#accessor)
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
