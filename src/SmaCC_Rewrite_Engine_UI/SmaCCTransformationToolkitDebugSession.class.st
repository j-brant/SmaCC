Class {
	#name : #SmaCCTransformationToolkitDebugSession,
	#superclass : #DebugSession,
	#instVars : [
		'rootContext'
	],
	#classInstVars : [
		'maxSearchDepth'
	],
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #'instance creation' }
SmaCCTransformationToolkitDebugSession class >> from: aDebugSession [
	| session |
	(aDebugSession isKindOf: superclass) ifFalse: [ self error: 'Unknown debug session' ].
	session := self basicNew.
	1 to: superclass instSize do: [ :i | session instVarAt: i put: (aDebugSession instVarAt: i) ].
	^ session
]

{ #category : #testing }
SmaCCTransformationToolkitDebugSession class >> handlesContext: aContext [
	| max count |
	max := self maxSearchDepth.
	count := 1.
	^ (aContext
		findContextSuchThat:
			[ :each | 
			count := count + 1.
			count > max ifTrue: [ ^ false ].
			self isTransformationContext: each ]) notNil
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession class >> isRewriteContext: context [
	((context receiver isKindOf: SmaCCRewriteMatchContext)
		and: [ ((SmaCCRewriteMatchContext whichClassIncludesSelector: context selector)
				ifNotNil: [ :cls | cls methodDictionary at: context selector ifAbsent: [ nil ] ])
				~~ context method method ]) ifFalse: [ ^ false ].
	context receiver class classPool
		associationsDo: [ :each | (context method hasLiteral: each) ifTrue: [ ^ false ] ].
	^ true
]

{ #category : #testing }
SmaCCTransformationToolkitDebugSession class >> isTransformationContext: each [
	^ each selector = #rewriteTree: and: [ each receiver isKindOf: SmaCCRewriteEngine ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession class >> maxSearchDepth [
	^ maxSearchDepth ifNil: [ 5000 ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> codeObjectForContext: aContext andRewrite: aRewrite [
	(aRewrite isKindOf: SmaCCRewriteMethodDefinition) ifTrue: [ ^ aRewrite ].
	^ (self isTransformation: aContext andRewrite: aRewrite) ifTrue: [ aRewrite transformation ] ifFalse: [ aRewrite match ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> currentNode [
	^ self currentRewrite ifNotNil: [ :each | each match ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> currentRewrite [
	^ self currentRewriteContext ifNotNil: [ :context | context receiver ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> currentRewriteContext [
	| context |
	context := interruptedContext.
	[ context isNil ]
		whileFalse: [ (self isRewriteContext: context) ifTrue: [ ^ context ].
			context := context sender ].
	^ nil
]

{ #category : #private }
SmaCCTransformationToolkitDebugSession >> intervalFromMethodNode: aNode inSource: aString [
	^ SmaCCMethodNodeSourceIntervalFinder new
		methodNode: aNode;
		sourceString: aString;
		find
]

{ #category : #testing }
SmaCCTransformationToolkitDebugSession >> isActive [
	^ rootContext notNil and: [ rootContext isDead not and: [ rootContext ~= self process suspendedContext or: [ rootContext willReturn not ] ] ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> isRewriteContext: context [
	^ self class isRewriteContext: context
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> isTransformation: aContext andRewrite: aRewrite [
	^ aRewrite transformation method == aContext method method
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> newSource [
	^ self rewriteEngine source asString
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> originalSource [
	^ self rewriteNode completeSource asString
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> rewriteEngine [
	^ self rootContext receiver
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> rewriteForContext: context [
	^ context receiver rewriteEngine rewriteRule
		rewriteForMethod: context method method
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> rewriteNode [
	^ self rootContext tempAt: 1
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> rootContext [
	^ rootContext
		ifNil: [ rootContext := interruptedContext findContextSuchThat: [ :each | self class isTransformationContext: each ] ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> sourceForContext: aContext andRewrite: aRewrite [
	aContext ifNil: [ ^ '' ].
	^ (self codeObjectForContext: aContext andRewrite: aRewrite) source
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> sourceSelectionIntervalForContext: aContext andRewrite: aRewrite [
	| node |
	aContext ifNil: [ ^ 1 to: 0 ].
	node := aContext method sourceNodeForPC: aContext pc.
	^ (aRewrite isKindOf: SmaCCRewriteMethodDefinition)
		ifTrue: [ node sourceInterval ]
		ifFalse: [ self intervalFromMethodNode: node inSource: (self sourceForContext: aContext andRewrite: aRewrite) ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> transformationStack [
	| stack context rewrite |
	stack := OrderedCollection new.
	context := interruptedContext.
	[ context isNil ]
		whileFalse: [ (self isRewriteContext: context)
				ifTrue: [ rewrite := self rewriteForContext: context.
					rewrite notNil
						ifTrue: [ stack
								add:
									{rewrite.
									context} ] ].
			context := context sender ].
	^ stack
]
