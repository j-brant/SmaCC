Class {
	#name : #JSVariablePatternDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'pattern',
		'equalToken',
		'value',
		'colonToken',
		'type'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSVariablePatternDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariablePatternDeclaration: self
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> ignoredTokenVariables [
	^ #(#colonToken)
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> nodeVariables [
	^ #(#pattern #value #type)
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> pattern [
	^ pattern
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> pattern: aJSProgramNode [
	self pattern notNil
		ifTrue: [ self pattern parent: nil ].
	pattern := aJSProgramNode.
	self pattern notNil
		ifTrue: [ self pattern parent: self ]
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> tokenVariables [
	^ #(#equalToken)
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> type [
	^ type
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> type: aJSTypeNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> value [
	^ value
]

{ #category : #generated }
JSVariablePatternDeclarationNode >> value: aJSExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aJSExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
