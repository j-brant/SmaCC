Class {
	#name : #SmaCCStepToNextRewriteAction,
	#superclass : #SmaCCTransformationToolkitDebugAction,
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #default }
SmaCCStepToNextRewriteAction class >> defaultDescription [
	^ 'Step until we get to another rewrite'
]

{ #category : #default }
SmaCCStepToNextRewriteAction class >> defaultIconName [
	^ #glamorousThrough
]

{ #category : #accessing }
SmaCCStepToNextRewriteAction class >> defaultName [
	^ 'Run to Next Rewrite'
]

{ #category : #default }
SmaCCStepToNextRewriteAction class >> defaultShortcut [
	^ $t meta
]

{ #category : #actions }
SmaCCStepToNextRewriteAction >> executeAction [
	| rewrites |
	rewrites := (self session transformationStack collect: [ :each | self session rewriteForContext: each last ]) asSet.
	self
		stepUntil: [ :context | 
			context isBlockContext not
				and: [ (self session isRewriteContext: context) and: [ (rewrites includes: (self session rewriteForContext: context)) not ] ] ]
]
