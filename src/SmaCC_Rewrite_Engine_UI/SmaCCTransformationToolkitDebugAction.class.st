Class {
	#name : 'SmaCCTransformationToolkitDebugAction',
	#superclass : 'StDebuggerCommand',
	#category : 'SmaCC_Rewrite_Engine_UI',
	#package : 'SmaCC_Rewrite_Engine_UI'
}

{ #category : 'initialization' }
SmaCCTransformationToolkitDebugAction class >> defaultIconName [
	^ nil
]

{ #category : 'initialization' }
SmaCCTransformationToolkitDebugAction class >> defaultShortcut [
	^ nil
]

{ #category : 'instance creation' }
SmaCCTransformationToolkitDebugAction class >> forDebugger: aDebugger [
	^ self new
		  context: aDebugger;
		  yourself
]

{ #category : 'testing' }
SmaCCTransformationToolkitDebugAction >> appliesToContext: aContext [
	^ self smaccSession isActive
]

{ #category : 'accessing' }
SmaCCTransformationToolkitDebugAction >> currentContext [
	^ self session context
]

{ #category : 'executing' }
SmaCCTransformationToolkitDebugAction >> execute [
	self executeAction
]

{ #category : 'executing' }
SmaCCTransformationToolkitDebugAction >> executeAction [
	self subclassResponsibility
]

{ #category : 'accessing' }
SmaCCTransformationToolkitDebugAction >> icon [
	^ self class defaultIconName ifNotNil: [ :iconName | self iconNamed: iconName ]
]

{ #category : 'accessing' }
SmaCCTransformationToolkitDebugAction >> session [
	^ self debugger session
]

{ #category : 'accessing' }
SmaCCTransformationToolkitDebugAction >> smaccSession [
	^ self debugger smaccSession
]

{ #category : 'private' }
SmaCCTransformationToolkitDebugAction >> stepUntil: aBlock [
	| ctx process searchBlock transformationBlock previousContext searchContext found rootContext |
	searchBlock := SmaCCRewriteMatch haltBlock.
	transformationBlock := SmaCCRewriteTransformation haltBlock.
	SmaCCRewriteMatch haltBlock: nil.
	SmaCCRewriteTransformation haltBlock: nil.
	[ process := self session process.
	ctx := self currentContext.
	searchContext := process suspendedContext.
	previousContext := searchContext.
	found := false.
	[ searchContext notNil ]
		whileTrue: [ found := found or: [ searchContext == ctx ].
			(self smaccSession isRewriteContext: searchContext)
				ifTrue: [ rootContext := searchContext ].
			searchContext := searchContext sender ].
	(found and: [ rootContext notNil ]) ifFalse: [ ^ self ].
	[ ctx notNil
		and: [ process isTerminating not
				and: [ process isTerminated not
						and: [ process suspendedContext notNil and: [ aBlock value: ctx ] ] ] ] ]
		whileFalse: [ previousContext == ctx
				ifFalse: [ (ctx findContextSuchThat: [ :c | c == rootContext ]) isNil
						ifTrue: [ ^ self session updateContextTo: ctx ].
					previousContext := ctx ].
			ctx := process step: ctx ].
	self session updateContextTo: ctx ]
		ensure: [ SmaCCRewriteMatch haltBlock: searchBlock.
			SmaCCRewriteTransformation haltBlock: transformationBlock ]
]
