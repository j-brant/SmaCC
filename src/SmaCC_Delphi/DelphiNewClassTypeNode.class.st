Class {
	#name : #DelphiNewClassTypeNode,
	#superclass : #DelphiClassTypeNode,
	#instVars : [
		'classToken',
		'classAttributes',
		'accessToken',
		'partial'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiNewClassTypeNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNewClassType: self
]

{ #category : #generated }
DelphiNewClassTypeNode >> accessToken [
	^ accessToken
]

{ #category : #generated }
DelphiNewClassTypeNode >> accessToken: aSmaCCToken [
	accessToken := aSmaCCToken
]

{ #category : #generated }
DelphiNewClassTypeNode >> classAttributes [
	^ classAttributes
]

{ #category : #generated }
DelphiNewClassTypeNode >> classAttributes: anOrderedCollection [
	classAttributes := anOrderedCollection
]

{ #category : #generated }
DelphiNewClassTypeNode >> classToken [
	^ classToken
]

{ #category : #generated }
DelphiNewClassTypeNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
DelphiNewClassTypeNode >> compositeTokenVariables [
	^ #(#classAttributes)
]

{ #category : #'generated-initialize-release' }
DelphiNewClassTypeNode >> initialize [
	super initialize.
	classAttributes := OrderedCollection new: 2.
]

{ #category : #generated }
DelphiNewClassTypeNode >> partial [
	^ partial
]

{ #category : #generated }
DelphiNewClassTypeNode >> partial: aSmaCCToken [
	partial := aSmaCCToken
]

{ #category : #generated }
DelphiNewClassTypeNode >> tokenVariables [
	^ #(#classToken #accessToken #partial #left #right #endToken)
]
