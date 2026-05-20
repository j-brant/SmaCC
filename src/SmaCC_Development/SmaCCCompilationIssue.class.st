Class {
	#name : 'SmaCCCompilationIssue',
	#superclass : 'Object',
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'as yet unclassified' }
SmaCCCompilationIssue >> displayString [
	^ self displayStringLimitedTo: 1 << 20
]
