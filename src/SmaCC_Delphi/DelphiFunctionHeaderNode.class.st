Class {
	#name : #DelphiFunctionHeaderNode,
	#superclass : #DelphiMethodHeaderNode,
	#instVars : [
		'functionToken',
		'colon',
		'type'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiFunctionHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitFunctionHeader: self
]

{ #category : #generated }
DelphiFunctionHeaderNode >> colon [
	^ colon
]

{ #category : #generated }
DelphiFunctionHeaderNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
DelphiFunctionHeaderNode >> functionToken [
	^ functionToken
]

{ #category : #generated }
DelphiFunctionHeaderNode >> functionToken: aSmaCCToken [
	functionToken := aSmaCCToken
]

{ #category : #generated }
DelphiFunctionHeaderNode >> nodeVariables [
	^ #(#type #qualifiedName)
]

{ #category : #generated }
DelphiFunctionHeaderNode >> tokenVariables [
	^ #(#functionToken #colon #left #right)
]

{ #category : #generated }
DelphiFunctionHeaderNode >> type [
	^ type
]

{ #category : #generated }
DelphiFunctionHeaderNode >> type: aDelphiProgramNode [
	self type notNil
		ifTrue: [ self type parent: nil ].
	type := aDelphiProgramNode.
	self type notNil
		ifTrue: [ self type parent: self ]
]
