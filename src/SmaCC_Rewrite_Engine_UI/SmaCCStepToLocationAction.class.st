Class {
	#name : #SmaCCStepToLocationAction,
	#superclass : #SmaCCTransformationToolkitDebugAction,
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #default }
SmaCCStepToLocationAction class >> defaultDescription [
	^ 'Step until we process a node at the current location'
]

{ #category : #default }
SmaCCStepToLocationAction class >> defaultIconName [
	^ #glamorousInto
]

{ #category : #accessing }
SmaCCStepToLocationAction class >> defaultName [
	^ 'Run to Cursor'
]

{ #category : #default }
SmaCCStepToLocationAction class >> defaultShortcut [
	^ $r meta
]

{ #category : #actions }
SmaCCStepToLocationAction >> executeAction [
	| first node interval nextNode |
	first := true.
	interval := self debugger currentInputSelectionInterval.
	node := self session currentNode.
	self
		stepUntil: [ :context | 
			first
				ifTrue: [ first := false ]
				ifFalse: [ context isBlockContext not
						and: [ (self session isRewriteContext: context)
								and: [ node ~~ (nextNode := context receiver match)
										and: [ (interval first between: nextNode startPosition and: nextNode stopPosition)
												or:
													[ (interval last between: nextNode startPosition and: nextNode stopPosition) or: [ nextNode startPosition between: interval first and: interval last ] ] ] ] ] ] ]
]
