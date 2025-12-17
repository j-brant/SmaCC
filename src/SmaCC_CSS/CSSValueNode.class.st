Class {
	#name : 'CSSValueNode',
	#superclass : 'CSSProgramNode',
	#instVars : [
		'value'
	],
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSValueNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitValue: self
]

{ #category : 'generated' }
CSSValueNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
CSSValueNode >> value [
	^ value
]

{ #category : 'generated' }
CSSValueNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
