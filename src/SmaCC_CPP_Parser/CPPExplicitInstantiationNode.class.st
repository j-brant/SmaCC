Class {
	#name : #CPPExplicitInstantiationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'templateToken',
		'declaration',
		'externToken'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPExplicitInstantiationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExplicitInstantiation: self
]

{ #category : #generated }
CPPExplicitInstantiationNode >> declaration [
	^ declaration
]

{ #category : #generated }
CPPExplicitInstantiationNode >> declaration: aCPPProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aCPPProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
CPPExplicitInstantiationNode >> externToken [
	^ externToken
]

{ #category : #generated }
CPPExplicitInstantiationNode >> externToken: aSmaCCToken [
	externToken := aSmaCCToken
]

{ #category : #generated }
CPPExplicitInstantiationNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
CPPExplicitInstantiationNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPExplicitInstantiationNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPExplicitInstantiationNode >> tokenVariables [
	^ #(#templateToken #externToken)
]
