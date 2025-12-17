Class {
	#name : 'CSSOperatorNode',
	#superclass : 'CSSProgramNode',
	#instVars : [
		'value'
	],
	#category : 'SmaCC_CSS',
	#package : 'SmaCC_CSS'
}

{ #category : 'generated' }
CSSOperatorNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitOperator: self
]

{ #category : 'generated' }
CSSOperatorNode >> tokenVariables [
	^ #(#value)
]

{ #category : 'generated' }
CSSOperatorNode >> value [
	^ value
]

{ #category : 'generated' }
CSSOperatorNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
