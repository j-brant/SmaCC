Class {
	#name : 'SmaCCUnusedSymbolsIssue',
	#superclass : 'SmaCCCompilationIssue',
	#instVars : [
		'unused'
	],
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'displaying' }
SmaCCUnusedSymbolsIssue >> displayStringOn: aStream [
	aStream nextPutAll: 'Unused: '.
	unused
		do: [ :each | aStream nextPutAll: each printString ]
		separatedBy: [ aStream space ]
]

{ #category : 'accessing' }
SmaCCUnusedSymbolsIssue >> unused [
	^ unused
]

{ #category : 'accessing' }
SmaCCUnusedSymbolsIssue >> unused: anObject [
	unused := anObject
]
