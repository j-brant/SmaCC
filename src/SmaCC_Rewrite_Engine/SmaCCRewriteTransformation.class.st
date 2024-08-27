Class {
	#name : #SmaCCRewriteTransformation,
	#superclass : #Model,
	#instVars : [
		'rewrite'
	],
	#classVars : [
		'HaltBlock'
	],
	#category : #'SmaCC_Rewrite_Engine'
}

{ #category : #accessing }
SmaCCRewriteTransformation class >> haltBlock [
	^ HaltBlock ifNil: [ [ :rewrite :node | false ] ]
]

{ #category : #accessing }
SmaCCRewriteTransformation class >> haltBlock: aBlock [
	HaltBlock := aBlock
]

{ #category : #changing }
SmaCCRewriteTransformation >> changed: aSymbol [
	super changed: aSymbol.
	self announcer announce: aSymbol.
	self modified
]

{ #category : #public }
SmaCCRewriteTransformation >> modified [
	rewrite notNil
		ifTrue: [ rewrite modified ]
]

{ #category : #copying }
SmaCCRewriteTransformation >> postCopy [
	super postCopy.
	rewrite := nil
]

{ #category : #accessing }
SmaCCRewriteTransformation >> rewrite [
	^ rewrite
]

{ #category : #accessing }
SmaCCRewriteTransformation >> rewrite: aSmaCCRewrite [
	rewrite := aSmaCCRewrite
]

{ #category : #saving }
SmaCCRewriteTransformation >> saveOn: aStream [
	self subclassResponsibility
]

{ #category : #transforming }
SmaCCRewriteTransformation >> transformUsingContext: aSmaCCRewriteMatchContext [
	self subclassResponsibility
]
