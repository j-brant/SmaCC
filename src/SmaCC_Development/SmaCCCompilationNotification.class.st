"
SmaCCCompilationNotification is a Notification that is signaled when a problem occurs when compiling the parser. It is mainly used to show the user problems with their grammar.
"
Class {
	#name : 'SmaCCCompilationNotification',
	#superclass : 'Notification',
	#instVars : [
		'tagBlock',
		'issue'
	],
	#category : 'SmaCC_Development-Compiler',
	#package : 'SmaCC_Development',
	#tag : 'Compiler'
}

{ #category : 'accessing' }
SmaCCCompilationNotification >> issue [
	^ issue
]

{ #category : 'accessing' }
SmaCCCompilationNotification >> issue: anObject [
	issue := anObject
]

{ #category : 'as yet unclassified' }
SmaCCCompilationNotification >> tag [
	tag ifNil: [ issue ifNotNil: [ tag := issue displayString ] ].
	^ tag
]
