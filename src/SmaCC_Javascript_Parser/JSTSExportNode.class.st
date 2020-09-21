Class {
	#name : #JSTSExportNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'exportToken'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSTSExportNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitTSExport: self
]

{ #category : #generated }
JSTSExportNode >> exportToken [
	^ exportToken
]

{ #category : #generated }
JSTSExportNode >> exportToken: aSmaCCToken [
	exportToken := aSmaCCToken
]

{ #category : #generated }
JSTSExportNode >> tokenVariables [
	^ #(#exportToken)
]
