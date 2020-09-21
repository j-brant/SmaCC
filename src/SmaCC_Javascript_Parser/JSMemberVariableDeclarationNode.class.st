Class {
	#name : #JSMemberVariableDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'name',
		'equalToken',
		'value',
		'semicolon',
		'colonToken',
		'type',
		'staticToken',
		'modifier',
		'decorator'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSMemberVariableDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitMemberVariableDeclaration: self
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> decorator [
	^ decorator
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> decorator: aJSDecoratorExpressionNode [
	self decorator notNil
		ifTrue: [ self decorator parent: nil ].
	decorator := aJSDecoratorExpressionNode.
	self decorator notNil
		ifTrue: [ self decorator parent: self ]
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> ignoredTokenVariables [
	^ #(#semicolon #colonToken)
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> name: aJSProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aJSProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> nodeVariables [
	^ #(#name #value #type #decorator)
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> tokenVariables [
	^ #(#equalToken #staticToken #modifier)
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> type [
	^ type
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> value [
	^ value
]

{ #category : #generated }
JSMemberVariableDeclarationNode >> value: aJSExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aJSExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
