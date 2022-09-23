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
	^ (context receiver isKindOf: SmaCCRewriteMatchContext)
		and: [ (SmaCCRewriteMatchContext methodDictionary at: context selector ifAbsent: [ nil ]) ~~ context method method "Works in P8 & P9" ]
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
	^ self currentRewriteContext ifNotNil: [ :each | each match ]
]

{ #category : #accessing }
SmaCCTransformationToolkitDebugSession >> currentRewriteContext [
	| context |
	context := interruptedContext.
	[ context isNil ]
		whileFalse:
			[ (self isRewriteContext: context) ifTrue: [ ^ context receiver ].
			context := context sender ].
	^ nil
]

{ #category : #private }
SmaCCTransformationToolkitDebugSession >> equivalentNodeTo: aNode in: otherTree [
	| equivParent nodeIndex equivNode |
	aNode isMethod ifTrue: [ ^ otherTree ].
	(aNode parent isReturn and: [ aNode parent parent parent isMethod ])
		ifTrue:
			[ equivNode := otherTree isSequence ifTrue: [ otherTree statements last ] ifFalse: [ otherTree ].
			^ equivNode isReturn ifTrue: [ equivNode value ] ifFalse: [ equivNode ] ].
	aNode parent isMethod ifTrue: [ otherTree isSequence ifTrue: [ ^ otherTree ] ifFalse: [ ^ otherTree parent ] ].
	equivParent := self equivalentNodeTo: aNode parent in: otherTree.
	equivParent ifNil: [ ^ nil ].
	nodeIndex := aNode parent children identityIndexOf: aNode.
	^ equivParent children at: nodeIndex ifAbsent: [ nil ]
]

{ #category : #private }
SmaCCTransformationToolkitDebugSession >> intervalFromMethodNode: aNode inSource: aString [
	| otherTree otherNode |
	otherTree := RBParser parseExpression: aString onError: [ :msg :pos | ^ 1 to: 0 ].
	otherNode := self equivalentNodeTo: aNode in: otherTree.
	otherNode ifNil: [ ^ 1 to: 0 ].
	^ otherNode start to: otherNode stop
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
	^ aRewrite transformation method == aContext method
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
