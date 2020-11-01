Class {
	#name : #DelphiProcedureHeaderNode,
	#superclass : #DelphiMethodHeaderNode,
	#instVars : [
		'procedureToken'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiProcedureHeaderNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProcedureHeader: self
]

{ #category : #generated }
DelphiProcedureHeaderNode >> procedureToken [
	^ procedureToken
]

{ #category : #generated }
DelphiProcedureHeaderNode >> procedureToken: aSmaCCToken [
	procedureToken := aSmaCCToken
]

{ #category : #generated }
DelphiProcedureHeaderNode >> tokenVariables [
	^ #(#procedureToken #left #right)
]
