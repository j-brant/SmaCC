Class {
	#name : #CPPConditionNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'specifiers',
		'declarator',
		'equal',
		'initializer'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPConditionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCondition: self
]

{ #category : #generated }
CPPConditionNode >> compositeNodeVariables [
	^ #(#specifiers)
]

{ #category : #generated }
CPPConditionNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPConditionNode >> declarator: aCPPDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPConditionNode >> equal [
	^ equal
]

{ #category : #generated }
CPPConditionNode >> equal: aSmaCCToken [
	equal := aSmaCCToken
]

{ #category : #'generated-initialize-release' }
CPPConditionNode >> initialize [
	super initialize.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPConditionNode >> initializer [
	^ initializer
]

{ #category : #generated }
CPPConditionNode >> initializer: aCPPProgramNode [
	self initializer notNil
		ifTrue: [ self initializer parent: nil ].
	initializer := aCPPProgramNode.
	self initializer notNil
		ifTrue: [ self initializer parent: self ]
]

{ #category : #generated }
CPPConditionNode >> nodeVariables [
	^ #(#declarator #initializer)
]

{ #category : #generated }
CPPConditionNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPConditionNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPConditionNode >> tokenVariables [
	^ #(#equal)
]
