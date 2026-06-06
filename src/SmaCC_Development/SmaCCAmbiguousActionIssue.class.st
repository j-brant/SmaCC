Class {
	#name : 'SmaCCAmbiguousActionIssue',
	#superclass : 'SmaCCCompilationIssue',
	#instVars : [
		'action'
	],
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'accessing' }
SmaCCAmbiguousActionIssue >> action [
	^ action
]

{ #category : 'accessing' }
SmaCCAmbiguousActionIssue >> action: anObject [
	action := anObject
]

{ #category : 'displaying' }
SmaCCAmbiguousActionIssue >> displayStringOn: stream [
	action actions
		do: [ :each | 
			stream nextPutAll: each lr1Item printString.
			each == self preferredAction ifTrue: [ stream nextPutAll: '	*****' ].
			stream cr ].
	stream cr.
	self printPathOn: stream
]

{ #category : 'accessing' }
SmaCCAmbiguousActionIssue >> lookaheadTokens [
	^ action actions
		detect: [ :each | each isShift ]
		ifFound: [ :each | Set with: each token ]
		ifNone: [ | all |
			all := Set withAll: action actions first lr1Item followers symbols.
			2
				to: action actions size
				do: [ :i | all := all intersection: (action actions at: i) lr1Item followers symbols ].
			all ]
]

{ #category : 'accessing' }
SmaCCAmbiguousActionIssue >> preferredAction [
	^ action preferredAction
]

{ #category : 'displaying' }
SmaCCAmbiguousActionIssue >> printPathOn: aStream [
	action lr1Item path
		do: [ :each | aStream nextPutAll: each name ]
		separatedBy: [ aStream space ]
]
