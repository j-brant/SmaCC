Class {
	#name : #CPPClassTypeNode,
	#superclass : #CPPTypeNode,
	#instVars : [
		'name',
		'nameSpecifier'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPClassTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassType: self
]

{ #category : #generated }
CPPClassTypeNode >> name [
	^ name
]

{ #category : #generated }
CPPClassTypeNode >> name: aCPPProgramNode [
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := aCPPProgramNode.
	self name notNil
		ifTrue: [ self name parent: self ]
]

{ #category : #generated }
CPPClassTypeNode >> nameSpecifier [
	^ nameSpecifier
]

{ #category : #generated }
CPPClassTypeNode >> nameSpecifier: aCPPNestedNameSpecifierNode [
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: nil ].
	nameSpecifier := aCPPNestedNameSpecifierNode.
	self nameSpecifier notNil
		ifTrue: [ self nameSpecifier parent: self ]
]

{ #category : #generated }
CPPClassTypeNode >> nodeVariables [
	^ #(#name #nameSpecifier)
]
