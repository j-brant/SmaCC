Class {
	#name : #SmaCCSendRuleDebugAction,
	#superclass : #SmaCCTransformationToolkitDebugAction,
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #default }
SmaCCSendRuleDebugAction class >> defaultDescription [
	^ 'Step into message'
]

{ #category : #default }
SmaCCSendRuleDebugAction class >> defaultIconName [
	^ #glamorousInto
]

{ #category : #accessing }
SmaCCSendRuleDebugAction class >> defaultName [
	^ 'Into'
]

{ #category : #default }
SmaCCSendRuleDebugAction class >> defaultShortcut [
	^ $O meta
]

{ #category : #actions }
SmaCCSendRuleDebugAction >> executeAction [
	| first |
	first := true.
	self
		stepUntil: [ :context | 
			first
				ifTrue: [ first := false ]
				ifFalse: [ self session isRewriteContext: context ] ]
]
