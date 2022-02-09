Class {
	#name : #TeradataCaseSpecificOptionNode,
	#superclass : #TeradataProgramNode,
	#instVars : [
		'caseSpecificToken'
	],
	#category : #'SmaCC_Teradata_Parser'
}

{ #category : #generated }
TeradataCaseSpecificOptionNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCaseSpecificOption: self
]

{ #category : #generated }
TeradataCaseSpecificOptionNode >> caseSpecificToken [
	^ caseSpecificToken
]

{ #category : #generated }
TeradataCaseSpecificOptionNode >> caseSpecificToken: aSmaCCToken [
	caseSpecificToken := aSmaCCToken
]

{ #category : #generated }
TeradataCaseSpecificOptionNode >> tokenVariables [
	^ #(#caseSpecificToken)
]
