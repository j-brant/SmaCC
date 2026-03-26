Class {
	#name : 'SmaCCStepToNextRewriteAction',
	#superclass : 'SmaCCTransformationToolkitDebugAction',
	#category : 'SmaCC_Rewrite_Engine_UI',
	#package : 'SmaCC_Rewrite_Engine_UI'
}

{ #category : 'default' }
SmaCCStepToNextRewriteAction class >> defaultDescription [
	^ 'Step until we get to another rewrite'
]

{ #category : 'default' }
SmaCCStepToNextRewriteAction class >> defaultIconName [
	^ #glamorousThrough
]

{ #category : 'accessing' }
SmaCCStepToNextRewriteAction class >> defaultName [
	^ 'Run to Next Rewrite'
]

{ #category : 'default' }
SmaCCStepToNextRewriteAction class >> defaultShortcut [
	^ $t meta
]

{ #category : 'actions' }
SmaCCStepToNextRewriteAction >> executeAction [
	| rewrites |
	rewrites := (self smaccSession transformationStack
			collect: [ :each | self smaccSession rewriteForContext: each last ]) asSet.
	self
		stepUntil: [ :each | 
			each isBlockContext not
				and: [ (self smaccSession isRewriteContext: each)
						and: [ (rewrites includes: (self smaccSession rewriteForContext: each)) not ] ] ]
]
