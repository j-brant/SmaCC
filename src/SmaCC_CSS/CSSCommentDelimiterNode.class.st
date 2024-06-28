Class {
	#name : #CSSCommentDelimiterNode,
	#superclass : #CSSProgramNode,
	#instVars : [
		'comment'
	],
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
CSSCommentDelimiterNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitCommentDelimiter: self
]

{ #category : #generated }
CSSCommentDelimiterNode >> comment [
	^ comment
]

{ #category : #generated }
CSSCommentDelimiterNode >> comment: aSmaCCToken [
	comment := aSmaCCToken
]

{ #category : #generated }
CSSCommentDelimiterNode >> tokenVariables [
	^ #(#comment)
]
