Class {
	#name : #DelphiForVariableNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'varToken',
		'name',
		'colon',
		'type'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiForVariableNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForVariable: self
]

{ #category : #generated }
DelphiForVariableNode >> colon [
	^ colon
]

{ #category : #generated }
DelphiForVariableNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
DelphiForVariableNode >> name [
	^ name
]

{ #category : #generated }
DelphiForVariableNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
DelphiForVariableNode >> nodeVariables [
	^ #(#type)
]

{ #category : #generated }
DelphiForVariableNode >> tokenVariables [
	^ #(#varToken #name #colon)
]

{ #category : #generated }
DelphiForVariableNode >> type [
	^ type
]

{ #category : #generated }
DelphiForVariableNode >> type: aDelphiProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aDelphiProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]

{ #category : #generated }
DelphiForVariableNode >> varToken [
	^ varToken
]

{ #category : #generated }
DelphiForVariableNode >> varToken: aSmaCCToken [
	varToken := aSmaCCToken
]
