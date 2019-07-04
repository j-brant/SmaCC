Class {
	#name : #DelphiTypeArgumentNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'argument',
		'colon',
		'typeConstraint'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiTypeArgumentNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTypeArgument: self
]

{ #category : #generated }
DelphiTypeArgumentNode >> argument [
	^ argument
]

{ #category : #generated }
DelphiTypeArgumentNode >> argument: aSmaCCToken [
	argument := aSmaCCToken
]

{ #category : #generated }
DelphiTypeArgumentNode >> colon [
	^ colon
]

{ #category : #generated }
DelphiTypeArgumentNode >> colon: aSmaCCToken [
	colon := aSmaCCToken
]

{ #category : #generated }
DelphiTypeArgumentNode >> nodeVariables [
	^ #(#typeConstraint)
]

{ #category : #generated }
DelphiTypeArgumentNode >> tokenVariables [
	^ #(#argument #colon)
]

{ #category : #generated }
DelphiTypeArgumentNode >> typeConstraint [
	^ typeConstraint
]

{ #category : #generated }
DelphiTypeArgumentNode >> typeConstraint: aDelphiProgramNode [
	self typeConstraint notNil
		ifTrue: [ self typeConstraint parent: nil ].
	typeConstraint := aDelphiProgramNode.
	self typeConstraint notNil
		ifTrue: [ self typeConstraint parent: self ]
]
