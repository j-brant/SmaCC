Class {
	#name : #CSVariableDesignationNode,
	#superclass : #CSProgramNode,
	#instVars : [
		'name'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSVariableDesignationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableDesignation: self
]

{ #category : #generated }
CSVariableDesignationNode >> name [
	^ name
]

{ #category : #generated }
CSVariableDesignationNode >> name: aSmaCCToken [
	name := aSmaCCToken
]

{ #category : #generated }
CSVariableDesignationNode >> tokenVariables [
	^ #(#name)
]
