Class {
	#name : #SmaCCRewriteStringTransformation,
	#superclass : #SmaCCRewriteTransformation,
	#instVars : [
		'expression',
		'source'
	],
	#category : #'SmaCC_Rewrite_Engine'
}

{ #category : #'instance creation' }
SmaCCRewriteStringTransformation class >> on: aString [
	^ self new
		string: aString;
		yourself
]

{ #category : #accessing }
SmaCCRewriteStringTransformation >> expression [
	^ expression
		ifNil: [ expression := SmaCCReplaceExpressionParser parse: self string ]
]

{ #category : #'initialize-release' }
SmaCCRewriteStringTransformation >> initialize [
	super initialize.
	source := ''
]

{ #category : #public }
SmaCCRewriteStringTransformation >> saveOn: aStream [
	aStream
		nextPutAll: '>>>';
		nextPutAll: self string;
		nextPutAll: '<<<'
]

{ #category : #accessing }
SmaCCRewriteStringTransformation >> source [
	^ source ifNil: [ '' ]
]

{ #category : #accessing }
SmaCCRewriteStringTransformation >> source: aString [
	source := aString.
	expression := nil.
	self changed: #string.
	self changed: #source.
	self modified
]

{ #category : #'initialize-release' }
SmaCCRewriteStringTransformation >> string [
	^ self source
]

{ #category : #'initialize-release' }
SmaCCRewriteStringTransformation >> string: aString [
	self source: aString
]

{ #category : #transforming }
SmaCCRewriteStringTransformation >> transformUsingContext: aSmaCCRewriteMatchContext [
	| newSource |
	newSource := self expression
		evaluateInContext: aSmaCCRewriteMatchContext.
	aSmaCCRewriteMatchContext
		replace: aSmaCCRewriteMatchContext match
		with: newSource
]
