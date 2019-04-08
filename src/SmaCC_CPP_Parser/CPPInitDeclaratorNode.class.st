Class {
	#name : #CPPInitDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'declarator',
		'initializer'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPInitDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitInitDeclarator: self
]

{ #category : #generated }
CPPInitDeclaratorNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPInitDeclaratorNode >> declarator: aCPPDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPInitDeclaratorNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPInitDeclaratorNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPInitDeclaratorNode >> nodeVariables [
	^ #(#declarator #initializer)
]
