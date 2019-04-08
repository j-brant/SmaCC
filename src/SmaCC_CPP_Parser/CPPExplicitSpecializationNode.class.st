Class {
	#name : #CPPExplicitSpecializationNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'templateToken',
		'ltToken',
		'gtToken',
		'declaration'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPExplicitSpecializationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitExplicitSpecialization: self
]

{ #category : #generated }
CPPExplicitSpecializationNode >> declaration [
	^ declaration
]

{ #category : #generated }
CPPExplicitSpecializationNode >> declaration: aCPPProgramNode [
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aCPPProgramNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]
]

{ #category : #generated }
CPPExplicitSpecializationNode >> gtToken [
	^ gtToken
]

{ #category : #generated }
CPPExplicitSpecializationNode >> gtToken: aSmaCCToken [
	gtToken := aSmaCCToken
]

{ #category : #generated }
CPPExplicitSpecializationNode >> ltToken [
	^ ltToken
]

{ #category : #generated }
CPPExplicitSpecializationNode >> ltToken: aSmaCCToken [
	ltToken := aSmaCCToken
]

{ #category : #generated }
CPPExplicitSpecializationNode >> nodeVariables [
	^ #(#declaration)
]

{ #category : #generated }
CPPExplicitSpecializationNode >> templateToken [
	^ templateToken
]

{ #category : #generated }
CPPExplicitSpecializationNode >> templateToken: aSmaCCToken [
	templateToken := aSmaCCToken
]

{ #category : #generated }
CPPExplicitSpecializationNode >> tokenVariables [
	^ #(#templateToken #ltToken #gtToken)
]
