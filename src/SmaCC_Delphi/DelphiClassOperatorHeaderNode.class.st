Class {
	#name : #DelphiClassOperatorHeaderNode,
	#superclass : #DelphiMethodHeaderNode,
	#instVars : [
		'classToken',
		'operatorToken',
		'colon',
		'type'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiClassOperatorHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitClassOperatorHeader: self
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> classToken [
	^ classToken
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> colon [
	^ colon
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> nodeVariables [
	^ #(#type #qualifiedName)
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> operatorToken [
	^ operatorToken
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> operatorToken: aSmaCCToken [
	operatorToken := aSmaCCToken
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> tokenVariables [
	^ #(#classToken #operatorToken #colon #left #right)
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> type [
	^ type
]

{ #category : #generated }
DelphiClassOperatorHeaderNode >> type: aDelphiProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aDelphiProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
