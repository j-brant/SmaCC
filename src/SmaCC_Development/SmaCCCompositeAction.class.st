"
SmaCCCompositeAction is an abstract class that represents multiple actions. 

Subclasses must implement the following messages:
	accessing
		errorType
		preferredAction

Instance Variables:
	actions	<Collection of: SmaCCAction>	all valid non-reject actions


"
Class {
	#name : 'SmaCCCompositeAction',
	#superclass : 'SmaCCAction',
	#instVars : [
		'actions'
	],
	#category : 'SmaCC_Development-Actions',
	#package : 'SmaCC_Development',
	#tag : 'Actions'
}

{ #category : 'accessing-actions' }
SmaCCCompositeAction >> actions [
	^ actions
]

{ #category : 'accessing-actions' }
SmaCCCompositeAction >> addAction: aSmaCCAction [
	actions add: aSmaCCAction
]

{ #category : 'accessing-actions' }
SmaCCCompositeAction >> addActions: aSmaCCActionCollection [
	actions addAll: aSmaCCActionCollection
]

{ #category : 'error handling' }
SmaCCCompositeAction >> errorType [
	self subclassResponsibility
]

{ #category : 'accessing' }
SmaCCCompositeAction >> id [
	^ self preferredAction id
]

{ #category : 'initialize-release' }
SmaCCCompositeAction >> initialize [
	super initialize.
	actions := OrderedCollection new
]

{ #category : 'accessing' }
SmaCCCompositeAction >> lr1Item [
	^ self preferredAction lr1Item
]

{ #category : 'as yet unclassified' }
SmaCCCompositeAction >> notificationIssue [
	^ self notificationIssueClass new action: self
]

{ #category : 'as yet unclassified' }
SmaCCCompositeAction >> notificationIssueClass [
	^ SmaCCAmbiguousActionIssue
]

{ #category : 'accessing' }
SmaCCCompositeAction >> preferredAction [
	self subclassResponsibility
]

{ #category : 'printing' }
SmaCCCompositeAction >> printPathOn: aStream [
	self lr1Item path
		do: [ :each | aStream nextPutAll: each name ]
		separatedBy: [ aStream space ]
]

{ #category : 'error handling' }
SmaCCCompositeAction >> raiseXReduceNotification [
	SmaCCCompilationNotification new
		messageText: self errorType;
		issue: self notificationIssue;
		signal
]

{ #category : 'error handling' }
SmaCCCompositeAction >> signalAllWarnings [
	self raiseXReduceNotification
]
