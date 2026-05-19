Class {
	#name : 'SmaCCMissingRootIssue',
	#superclass : 'SmaCCCompilationIssue',
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'displaying' }
SmaCCMissingRootIssue >> displayStringOn: aStream [
	aStream
		nextPutAll: 'Cannot generate node classes without specifying a "%root" node.'
]
