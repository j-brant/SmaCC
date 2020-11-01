Class {
	#name : #DelphiDestructorHeaderNode,
	#superclass : #DelphiMethodHeaderNode,
	#instVars : [
		'destructorToken',
		'classToken'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiDestructorHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitDestructorHeader: self
]

{ #category : #generated }
DelphiDestructorHeaderNode >> classToken [
	^ classToken
]

{ #category : #generated }
DelphiDestructorHeaderNode >> classToken: aSmaCCToken [
	classToken := aSmaCCToken
]

{ #category : #generated }
DelphiDestructorHeaderNode >> destructorToken [
	^ destructorToken
]

{ #category : #generated }
DelphiDestructorHeaderNode >> destructorToken: aSmaCCToken [
	destructorToken := aSmaCCToken
]

{ #category : #generated }
DelphiDestructorHeaderNode >> tokenVariables [
	^ #(#destructorToken #classToken #left #right)
]
