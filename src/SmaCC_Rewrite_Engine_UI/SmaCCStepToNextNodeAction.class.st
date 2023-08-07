Class {
	#name : #SmaCCStepToNextNodeAction,
	#superclass : #SmaCCTransformationToolkitDebugAction,
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #default }
SmaCCStepToNextNodeAction class >> defaultDescription [
	^ 'Step until we get to another node'
]

{ #category : #default }
SmaCCStepToNextNodeAction class >> defaultIconName [
	^ #glamorousThrough
]

{ #category : #accessing }
SmaCCStepToNextNodeAction class >> defaultName [
	^ 'Run to Next Node'
]

{ #category : #default }
SmaCCStepToNextNodeAction class >> defaultShortcut [
	^ $n meta
]

{ #category : #actions }
SmaCCStepToNextNodeAction >> executeAction [
	| nodes |
	nodes := (self session transformationStack collect: [ :each | each last receiver match ]) asSet.
	self
		stepUntil: [ :context | context isBlockContext not and: [ (self session isRewriteContext: context) and: [ (nodes includes: context receiver match) not ] ] ]
]
