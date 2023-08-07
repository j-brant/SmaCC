Class {
	#name : #SmaCCStepRuleDebugAction,
	#superclass : #SmaCCTransformationToolkitDebugAction,
	#category : #'SmaCC_Rewrite_Engine_UI'
}

{ #category : #default }
SmaCCStepRuleDebugAction class >> defaultDescription [
	^ 'Step over message'
]

{ #category : #default }
SmaCCStepRuleDebugAction class >> defaultIconName [
	^ #glamorousOver
]

{ #category : #accessing }
SmaCCStepRuleDebugAction class >> defaultName [
	^ 'Over'
]

{ #category : #default }
SmaCCStepRuleDebugAction class >> defaultShortcut [
	^ $o meta
]

{ #category : #actions }
SmaCCStepRuleDebugAction >> executeAction [
	self session stepOver: self currentContext
]
