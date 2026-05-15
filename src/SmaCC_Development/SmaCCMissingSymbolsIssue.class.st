Class {
	#name : 'SmaCCMissingSymbolsIssue',
	#superclass : 'SmaCCCompilationIssue',
	#instVars : [
		'missing'
	],
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'displaying' }
SmaCCMissingSymbolsIssue >> displayStringOn: aStream [
	aStream nextPutAll: 'Missing: '.
	missing
		do: [ :each | aStream nextPutAll: each printString ]
		separatedBy: [ aStream space ]
]

{ #category : 'accessing' }
SmaCCMissingSymbolsIssue >> missing [
	^ missing
]

{ #category : 'accessing' }
SmaCCMissingSymbolsIssue >> missing: anObject [
	missing := anObject
]
