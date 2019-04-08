Class {
	#name : #CPPEnumDefinitionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name',
		'equal',
		'value'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPEnumDefinitionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEnumDefinition: self
]

{ #category : #generated }
CPPEnumDefinitionNode >> equal [
	^ equal
]

{ #category : #generated }
CPPEnumDefinitionNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CPPEnumDefinitionNode >> name [
	^ name
]

{ #category : #generated }
CPPEnumDefinitionNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CPPEnumDefinitionNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CPPEnumDefinitionNode >> tokenVariables [
	^ #(#name #equal)
]

{ #category : #generated }
CPPEnumDefinitionNode >> value [
	^ value
]

{ #category : #generated }
CPPEnumDefinitionNode >> value: aCPPExpressionNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aCPPExpressionNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
