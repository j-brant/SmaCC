Class {
	#name : #SmaCCDebuggingAction,
	#superclass : #StDebuggerCommand,
	#classInstVars : [
		'icon'
	],
	#category : #'SmaCC_Debugging_Support-Debugger'
}

{ #category : #initialization }
SmaCCDebuggingAction class >> defaultIconName [
	^ nil
]

{ #category : #initialization }
SmaCCDebuggingAction class >> defaultShortcut [
	^ nil
]

{ #category : #'instance creation' }
SmaCCDebuggingAction class >> forDebugger: aDebugger [
	^ self new
		  context: aDebugger;
		  yourself
]

{ #category : #testing }
SmaCCDebuggingAction >> appliesToContext: aContext [
	^ self session isActive
]

{ #category : #accessing }
SmaCCDebuggingAction >> currentContext [
	^ self session context
]

{ #category : #executing }
SmaCCDebuggingAction >> execute [
	self executeAction
]

{ #category : #executing }
SmaCCDebuggingAction >> executeAction [
	self subclassResponsibility
]

{ #category : #accessing }
SmaCCDebuggingAction >> help [
	^ ''
]

{ #category : #accessing }
SmaCCDebuggingAction >> icon [
	^ self class defaultIcon
]

{ #category : #accessing }
SmaCCDebuggingAction >> session [
	^ self debugger session
]

{ #category : #private }
SmaCCDebuggingAction >> stepUntil: aBlock [
	self stepUntil: aBlock context: self session rootContext
]

{ #category : #private }
SmaCCDebuggingAction >> stepUntil: aBlock context: rootContext [
	| context process previousContext errorMethod |
	process := self session process.
	context := self currentContext.
	(process suspendedContext findContextSuchThat: [ :c | c == context ])
		ifNil: [ ^ self ].
	errorMethod := SmaCCParser >> #reportErrorMessage:resumable:.
	(process suspendedContext
		findContextSuchThat: [ :c | c compiledCode == errorMethod ])
		ifNotNil: [ ^ self ].
	previousContext := nil.
	[ context notNil
		and: [ process isTerminating not
				and: [ process isTerminated not
						and: [ process suspendedContext notNil
								and: [ context compiledCode ~~ errorMethod and: [ aBlock value: context ] ] ] ] ] ]
		whileFalse: [ previousContext == context
				ifFalse: [ (context findContextSuchThat: [ :c | c == rootContext ]) isNil
						ifTrue: [ ^ self session updateContextTo: context ].
					(process suspendedContext
						findContextSuchThat: [ :c | c compiledCode == errorMethod ])
						ifNotNil: [ ^ self session updateContextTo: context ].
					previousContext := context ].
			context := process step: context ].
	self session updateContextTo: context
]
