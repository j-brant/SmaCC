Class {
	#name : #CPPPointerOperatorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'operator',
		'cvQualifiers',
		'specifiers',
		'nameSpecifier'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPPointerOperatorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitPointerOperator: self
]

{ #category : #generated }
CPPPointerOperatorNode >> compositeNodeVariables [
	^ #(#cvQualifiers #specifiers)
]

{ #category : #generated }
CPPPointerOperatorNode >> cvQualifiers [
	^ cvQualifiers
]

{ #category : #generated }
CPPPointerOperatorNode >> cvQualifiers: anOrderedCollection [
	self setParents: self cvQualifiers to: nil.
	cvQualifiers := anOrderedCollection.
	self setParents: self cvQualifiers to: self
]

{ #category : #'generated-initialize-release' }
CPPPointerOperatorNode >> initialize [
	super initialize.
	cvQualifiers := OrderedCollection new: 2.
	specifiers := OrderedCollection new: 2.
]

{ #category : #generated }
CPPPointerOperatorNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPPointerOperatorNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPPointerOperatorNode >> nodeVariables [
	^ #(#nameSpecifier)
]

{ #category : #generated }
CPPPointerOperatorNode >> operator [
	^ operator
]

{ #category : #generated }
CPPPointerOperatorNode >> operator: aSmaCCToken [
	operator := aSmaCCToken
]

{ #category : #generated }
CPPPointerOperatorNode >> specifiers [
	^ specifiers
]

{ #category : #generated }
CPPPointerOperatorNode >> specifiers: anOrderedCollection [
	self setParents: self specifiers to: nil.
	specifiers := anOrderedCollection.
	self setParents: self specifiers to: self
]

{ #category : #generated }
CPPPointerOperatorNode >> tokenVariables [
	^ #(#operator)
]
