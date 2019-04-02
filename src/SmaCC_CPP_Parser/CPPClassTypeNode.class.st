Class {
	#name : #CPPClassTypeNode,
	#superclass : #CPPTypeNode,
	#instVars : [
		'namespaceSpecifier'
	],
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPClassTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassType: self
]

{ #category : #generated }
CPPClassTypeNode >> namespaceSpecifier [
	^ namespaceSpecifier
]

{ #category : #generated }
CPPClassTypeNode >> namespaceSpecifier: aCPPNestedNameSpecifierNode [
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: nil ].
	namespaceSpecifier := aCPPNestedNameSpecifierNode.
	self namespaceSpecifier notNil
		ifTrue: [ self namespaceSpecifier parent: self ]
]

{ #category : #generated }
CPPClassTypeNode >> nodeVariables [
	^ #(#namespaceSpecifier)
]
