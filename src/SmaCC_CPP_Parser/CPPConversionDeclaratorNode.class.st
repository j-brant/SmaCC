Class {
	#name : #CPPConversionDeclaratorNode,
	#superclass : #CPPProgramNode,
	#instVars : [
		'operator',
		'declarator'
	],
	#category : #'SmaCC_CPP_Parser-C++ AST'
}

{ #category : #generated }
CPPConversionDeclaratorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConversionDeclarator: self
]

{ #category : #generated }
CPPConversionDeclaratorNode >> declarator [
	^ declarator
]

{ #category : #generated }
CPPConversionDeclaratorNode >> declarator: aCPPConversionDeclaratorNode [
	self declarator notNil
		ifTrue: [ self declarator parent: nil ].
	declarator := aCPPConversionDeclaratorNode.
	self declarator notNil
		ifTrue: [ self declarator parent: self ]
]

{ #category : #generated }
CPPConversionDeclaratorNode >> nodeVariables [
	^ #(#operator #declarator)
]

{ #category : #generated }
CPPConversionDeclaratorNode >> operator [
	^ operator
]

{ #category : #generated }
CPPConversionDeclaratorNode >> operator: aCPPPointerOperatorNode [
	self operator notNil
		ifTrue: [ self operator parent: nil ].
	operator := aCPPPointerOperatorNode.
	self operator notNil
		ifTrue: [ self operator parent: self ]
]
