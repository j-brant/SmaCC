Class {
	#name : 'SmaCCDebuggingAction',
	#superclass : 'StDebuggerCommand',
	#classInstVars : [
		'icon'
	],
	#category : 'SmaCC_Debugging_Support-Debugger',
	#package : 'SmaCC_Debugging_Support',
	#tag : 'Debugger'
}

{ #category : 'initialization' }
SmaCCDebuggingAction class >> defaultIconName [
	^ nil
]

{ #category : 'initialization' }
SmaCCDebuggingAction class >> defaultShortcut [
	^ nil
]

{ #category : 'instance creation' }
SmaCCDebuggingAction class >> forDebugger: aDebugger [
	^ self new
		  context: aDebugger;
		  yourself
]

{ #category : 'testing' }
SmaCCDebuggingAction >> appliesToContext: aContext [
	^ self session isActive
]

{ #category : 'accessing' }
SmaCCDebuggingAction >> currentContext [
	^ self session context
]

{ #category : 'executing' }
SmaCCDebuggingAction >> execute [
	self executeAction
]

{ #category : 'executing' }
SmaCCDebuggingAction >> executeAction [
	self subclassResponsibility
]

{ #category : 'accessing' }
SmaCCDebuggingAction >> help [
	^ ''
]

{ #category : 'accessing' }
SmaCCDebuggingAction >> icon [
	^ self class defaultIcon
]

{ #category : 'accessing' }
SmaCCDebuggingAction >> session [
	^ self smaccSession session
]

{ #category : 'accessing' }
SmaCCDebuggingAction >> smaccSession [
	^ self debugger smaccSession
]

{ #category : 'private' }
SmaCCDebuggingAction >> stepUntil: aBlock [
	self stepUntil: aBlock context: self smaccSession rootContext
]

{ #category : 'private' }
SmaCCDebuggingAction >> stepUntil: aBlock context: rootContext [
	| ctx process previousContext errorMethod |
	process := self session process.
	ctx := self currentContext.
	(process suspendedContext findContextSuchThat: [ :c | c == ctx ])
		ifNil: [ ^ self ].
	errorMethod := SmaCCParser >> #reportErrorMessage:resumable:.
	(process suspendedContext
		findContextSuchThat: [ :c | c compiledCode == errorMethod ])
		ifNotNil: [ ^ self ].
	previousContext := nil.
	[ ctx notNil
		and: [ process isTerminating not
				and: [ process isTerminated not
						and: [ process suspendedContext notNil
								and: [ ctx compiledCode ~~ errorMethod and: [ aBlock value: ctx ] ] ] ] ] ]
		whileFalse: [ previousContext == ctx
				ifFalse: [ (ctx findContextSuchThat: [ :c | c == rootContext ]) isNil
						ifTrue: [ ^ self session updateContextTo: ctx ].
					(process suspendedContext
						findContextSuchThat: [ :c | c compiledCode == errorMethod ])
						ifNotNil: [ ^ self session updateContextTo: ctx ].
					previousContext := ctx ].
			ctx := process step: ctx ].
	self session updateContextTo: ctx
]
