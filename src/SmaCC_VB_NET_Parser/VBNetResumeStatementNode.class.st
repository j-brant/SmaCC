Class {
	#name : #VBNetResumeStatementNode,
	#superclass : #VBNetStatementNode,
	#instVars : [
		'resumeToken',
		'resume'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetResumeStatementNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitResumeStatement: self
]

{ #category : #generated }
VBNetResumeStatementNode >> resume [
	^ resume
]

{ #category : #generated }
VBNetResumeStatementNode >> resume: aSmaCCToken [
	resume := aSmaCCToken
]

{ #category : #generated }
VBNetResumeStatementNode >> resumeToken [
	^ resumeToken
]

{ #category : #generated }
VBNetResumeStatementNode >> resumeToken: aSmaCCToken [
	resumeToken := aSmaCCToken
]

{ #category : #generated }
VBNetResumeStatementNode >> tokenVariables [
	^ #(#resumeToken #resume)
]
