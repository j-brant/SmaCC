Class {
	#name : #CPPDestructorIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'tilde',
		'name'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPDestructorIdentifierNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDestructorIdentifier: self
]

{ #category : #generated }
CPPDestructorIdentifierNode >> name [
	^ name
]

{ #category : #generated }
CPPDestructorIdentifierNode >> name: aCPPProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aCPPProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CPPDestructorIdentifierNode >> nodeVariables [
	^ #(#name)
]

{ #category : #generated }
CPPDestructorIdentifierNode >> tilde [
	^ tilde
]

{ #category : #generated }
CPPDestructorIdentifierNode >> tilde: aSmaCCToken [
	tilde := aSmaCCToken
]

{ #category : #generated }
CPPDestructorIdentifierNode >> tokenVariables [
	^ #(#tilde)
]
