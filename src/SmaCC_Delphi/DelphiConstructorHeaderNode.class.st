Class {
	#name : #DelphiConstructorHeaderNode,
	#superclass : #DelphiMethodHeaderNode,
	#instVars : [
		'constructorToken',
		'classToken'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiConstructorHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitConstructorHeader: self
]

{ #category : #generated }
DelphiConstructorHeaderNode >> classToken [
	^ classToken
]

{ #category : #generated }
DelphiConstructorHeaderNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
DelphiConstructorHeaderNode >> constructorToken [
	^ constructorToken
]

{ #category : #generated }
DelphiConstructorHeaderNode >> constructorToken: aSmaCCToken [
	constructorToken := aSmaCCToken
]

{ #category : #generated }
DelphiConstructorHeaderNode >> tokenVariables [
	^ #(#constructorToken #classToken #left #right)
]
