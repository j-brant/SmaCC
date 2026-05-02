"
SmaCCAmbiguousAction represents several conflicting actions for a state/symbol. If we are creating a GLR parser then all actions will be performed. Otherwise, we'll pick one of the actions to be performed preferring shift actions over reduce actions.
"
Class {
	#name : 'SmaCCAmbiguousAction',
	#superclass : 'SmaCCCompositeAction',
	#category : 'SmaCC_Development-Actions',
	#package : 'SmaCC_Development',
	#tag : 'Actions'
}

{ #category : 'accessing-actions' }
SmaCCAmbiguousAction >> addAction: aSmaCCAction [
	aSmaCCAction isAmbiguous
		ifTrue: [ actions addAll: aSmaCCAction actions ]
		ifFalse: [ super addAction: aSmaCCAction ]
]

{ #category : 'error handling' }
SmaCCAmbiguousAction >> errorType [
	| sortedActions |
	sortedActions := self sortedActions.
	^ sortedActions first class = sortedActions last class
		ifTrue: [ 'Reduce/Reduce Conflict' ]
		ifFalse: [ 'Shift/Reduce Conflict' ]
]

{ #category : 'testing' }
SmaCCAmbiguousAction >> isAmbiguous [
	^ true
]

{ #category : 'merging' }
SmaCCAmbiguousAction >> mergeWith: aSmaCCAction prefer: aClass [
	aSmaCCAction isReject
		ifTrue: [ ^ self ].
	aSmaCCAction isAmbiguous
		ifTrue: [ actions addAll: aSmaCCAction actions ]
		ifFalse: [ actions add: aSmaCCAction ].
	^ self
]

{ #category : 'accessing' }
SmaCCAmbiguousAction >> preferredAction [
	^ self sortedActions first
]

{ #category : 'accessing' }
SmaCCAmbiguousAction >> sortedActions [
	"For reduce-reduce ties, prefer higher-precedence rule (yacc-style).
	 The default tie-break by id is unchanged for shift-reduce. Closes the
	 gap where SmaCCShiftAction>>mergeWithReduceAction:prefer: resolves
	 shift-reduce by precedence, but the complementary reduce-reduce path
	 in SmaCCReduceAction>>mergeWithReduceAction: just bundles into a
	 SmaCCAmbiguousAction without consulting precedence."

	^ actions asSortedCollection: [ :a :b |
		a id = b id
			ifTrue: [ (a precedence ifNil: [ -1 ]) >= (b precedence ifNil: [ -1 ]) ]
			ifFalse: [ a id < b id ] ]
]
