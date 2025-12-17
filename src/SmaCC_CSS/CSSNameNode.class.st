Class {
	#name : 'CSSNameNode',
	#superclass : 'CSSProgramNode',
	#instVars : [
		'name'
	],
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSNameNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitName: self
]

{ #category : 'generated' }
CSSNameNode >> name [
	^ name
]

{ #category : 'generated' }
CSSNameNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : 'generated' }
CSSNameNode >> tokenVariables [
	^ #(#name)
]
