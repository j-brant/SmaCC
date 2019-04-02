Class {
	#name : #CPPEqualInitializerNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'equal',
		'value'
	],
	#category : #'SmaCC_CPP_Parser'
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
CPPEqualInitializerNode >> nodeVariables [
	^ #(#value)
]

{ #category : #generated }
CPPEqualInitializerNode >> tokenVariables [
	^ #(#equal)
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
