Class {
	#name : #JSFieldDefinitionNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'variable',
		'equalToken',
		'value',
		'semicolon',
		'staticToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSFieldDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFieldDefinition: self
]

{ #category : #generated }
JSFieldDefinitionNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSFieldDefinitionNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSFieldDefinitionNode >> ignoredTokenVariables [
	^ #(#semicolon)
]

{ #category : #generated }
JSFieldDefinitionNode >> nodeVariables [
	^ #(#variable #value)
]

{ #category : #generated }
JSFieldDefinitionNode >> semicolon [
	^ semicolon
]

{ #category : #generated }
JSFieldDefinitionNode >> semicolon: aSmaCCToken [
	semicolon := aSmaCCToken
]

{ #category : #generated }
JSFieldDefinitionNode >> staticToken [
	^ staticToken
]

{ #category : #generated }
JSFieldDefinitionNode >> staticToken: aSmaCCToken [
	staticToken := aSmaCCToken
]

{ #category : #generated }
JSFieldDefinitionNode >> tokenVariables [
	^ #(#equalToken #staticToken)
]

{ #category : #generated }
JSFieldDefinitionNode >> value [
	^ value
]

{ #category : #generated }
JSFieldDefinitionNode >> value: aJSExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aJSExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
JSFieldDefinitionNode >> variable [
	^ variable
]

{ #category : #generated }
JSFieldDefinitionNode >> variable: aJSNameExpressionNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aJSNameExpressionNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
