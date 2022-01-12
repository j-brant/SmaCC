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
	^ (context receiver isKindOf: SmaCCRewriteMatchContext)
		and: [ (SmaCCRewriteMatchContext methodDictionary at: context selector ifAbsent: [ nil ]) ~~ context method ]
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
SmaCCTransformationToolkitDebugSession >> currentNode [
	| context |
	context := interruptedContext.
	[ context isNil ]
		whileFalse: [ (self isRewriteContext: context)
				ifTrue: [ ^ context receiver match ].
			context := context sender ].
	^ nil
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
	^ context receiver rewriteEngine rewriteRule rewriteForMethod: context method
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
