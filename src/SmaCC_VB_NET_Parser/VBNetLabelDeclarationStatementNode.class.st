Class {
	#name : #VBNetLabelDeclarationStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'label',
		'colonToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetLabelDeclarationStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitLabelDeclarationStatement: self
]

{ #category : #generated }
VBNetLabelDeclarationStatementNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
VBNetLabelDeclarationStatementNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
VBNetLabelDeclarationStatementNode >> label [
	^ label
]

{ #category : #generated }
VBNetLabelDeclarationStatementNode >> label: aSmaCCToken [
	label := aSmaCCToken
]

{ #category : #generated }
VBNetLabelDeclarationStatementNode >> tokenVariables [
	^ #(#label #colonToken)
]
