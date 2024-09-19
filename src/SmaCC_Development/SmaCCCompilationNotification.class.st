"
SmaCCCompilationNotification is a Notification that is signaled when a problem occurs when compiling the parser. It is mainly used to show the user problems with their grammar.
"
Class {
	#name : #SmaCCCompilationNotification,
	#superclass : #Notification,
	#instVars : [
		'tagBlock'
	],
	#category : #'SmaCC_Development-Compiler'
}

{ #category : #'as yet unclassified' }
SmaCCCompilationNotification >> tag [
	(tag isNil and: [ tagBlock notNil ]) ifTrue: [ tag := tagBlock value ].
	^ tag
]

{ #category : #accessing }
SmaCCCompilationNotification >> tagBlock [
	^ tagBlock
]

{ #category : #accessing }
SmaCCCompilationNotification >> tagBlock: anObject [
	tagBlock := anObject
]
