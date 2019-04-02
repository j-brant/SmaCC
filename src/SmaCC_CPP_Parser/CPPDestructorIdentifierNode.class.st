Class {
	#name : #CPPDestructorIdentifierNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_CPP_Parser'
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
