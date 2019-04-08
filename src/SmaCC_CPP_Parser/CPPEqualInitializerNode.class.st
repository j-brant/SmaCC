Class {
	#name : #CPPEqualInitializerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'equal',
		'value',
		'equalToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPEqualInitializerNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitEqualInitializer: self
]

{ #category : #generated }
CPPEqualInitializerNode >> equal [
	^ equal
]

{ #category : #generated }
CPPEqualInitializerNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #generated }
CPPEqualInitializerNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
CPPEqualInitializerNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
CPPEqualInitializerNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CPPEqualInitializerNode >> tokenVariables [
	^ #(#equal #equalToken)
]

{ #category : #generated }
CPPEqualInitializerNode >> value [
	^ value
]

{ #category : #generated }
CPPEqualInitializerNode >> value: aCPPProgramNode [
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := aCPPProgramNode.
	self value notNil
		ifTrue: [ self value parent: self ]
]
