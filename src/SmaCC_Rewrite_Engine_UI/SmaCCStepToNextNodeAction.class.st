Class {
	#name : #SmaCCStepToNextNodeAction,
	#superclass : #SmaCCTransformationToolkitDebugAction,
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #registration }
SmaCCStepToNextNodeAction class >> gtActionFor: aDebugger [
	<gtSmaCCTransformationStack>
	
	^ (self forDebugger: aDebugger) icon: (self iconNamed: #glamorousThrough)
]

{ #category : #accessing }
SmaCCStepToNextNodeAction >> defaultKeymap [
	^ $n meta
]

{ #category : #accessing }
SmaCCStepToNextNodeAction >> defaultLabel [
	^ 'Run to Next Node'
]

{ #category : #accessing }
SmaCCStepToNextNodeAction >> defaultOrder [
	^ 110
]

{ #category : #actions }
SmaCCStepToNextNodeAction >> executeAction [
	| nodes |
	nodes := (self session transformationStack collect: [ :each | each last receiver match ]) asSet.
	self
		stepUntil: [ :context | context isBlockContext not and: [ (self session isRewriteContext: context) and: [ (nodes includes: context receiver match) not ] ] ]
]

{ #category : #accessing }
SmaCCStepToNextNodeAction >> help [
	^ 'Step until we get to another node'
]
