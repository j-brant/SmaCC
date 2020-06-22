Class {
	#name : #VBNetGotoClauseNode,
	#superclass : #VBNetProgramNode,
	#instVars : [
		'gotoToken',
		'minus',
		'location'
	],
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetGotoClauseNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitGotoClause: self
]

{ #category : #generated }
VBNetGotoClauseNode >> gotoToken [
	^ gotoToken
]

{ #category : #generated }
VBNetGotoClauseNode >> gotoToken: aSmaCCToken [
	gotoToken := aSmaCCToken
]

{ #category : #generated }
VBNetGotoClauseNode >> location [
	^ location
]

{ #category : #generated }
VBNetGotoClauseNode >> location: aSmaCCToken [
	location := aSmaCCToken
]

{ #category : #generated }
VBNetGotoClauseNode >> minus [
	^ minus
]

{ #category : #generated }
VBNetGotoClauseNode >> minus: aSmaCCToken [
	minus := aSmaCCToken
]

{ #category : #generated }
VBNetGotoClauseNode >> tokenVariables [
	^ #(#gotoToken #minus #location)
]
