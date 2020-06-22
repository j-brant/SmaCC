Class {
	#name : #VBNetResumeClauseNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'resumeToken',
		'nextToken'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetResumeClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitResumeClause: self
]

{ #category : #generated }
VBNetResumeClauseNode >> nextToken [
	^ nextToken
]

{ #category : #generated }
VBNetResumeClauseNode >> nextToken: aSmaCCToken [
	nextToken := aSmaCCToken
]

{ #category : #generated }
VBNetResumeClauseNode >> resumeToken [
	^ resumeToken
]

{ #category : #generated }
VBNetResumeClauseNode >> resumeToken: aSmaCCToken [
	resumeToken := aSmaCCToken
]

{ #category : #generated }
VBNetResumeClauseNode >> tokenVariables [
	^ #(#resumeToken #nextToken)
]
