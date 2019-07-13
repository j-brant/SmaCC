Class {
	#name : #DelphiCompilationFileNode,
	#superclass : #DelphiProgramNode,
	#instVars : [
		'period'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiCompilationFileNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCompilationFile: self
]

{ #category : #generated }
DelphiCompilationFileNode >> period [
	^ period
]

{ #category : #generated }
DelphiCompilationFileNode >> period: aSmaCCToken [
	period := aSmaCCToken
]

{ #category : #generated }
DelphiCompilationFileNode >> tokenVariables [
	^ #(#period)
]
