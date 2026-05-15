Class {
	#name : 'SmaCCNodeCreationIssue',
	#superclass : 'SmaCCCompilationIssue',
	#instVars : [
		'reduction'
	],
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'displaying' }
SmaCCNodeCreationIssue >> displayStringOn: aStream [
	aStream
		nextPutAll: 'Unable to determine what should be returned from the production. ';
		nextPutAll: (reduction index > 0
				ifTrue: [ 'A default item has been chosen, and all other ' ]
				ifFalse: [ 'All ' ]);
		nextPutAll: 'values will be dropped from the AST:';
		cr;
		cr;
		nextPutAll: reduction rhs productionSymbol name;
		nextPutAll: ' : '.
	1
		to: reduction rhs size
		do: [ :i | 
			i == reduction index ifTrue: [ aStream nextPutAll: '>>>' ].
			aStream nextPutAll: (reduction rhs at: i) name.
			i == reduction index ifTrue: [ aStream nextPutAll: '<<<' ].
			aStream space ]
]

{ #category : 'accessing' }
SmaCCNodeCreationIssue >> reduction [
	^ reduction
]

{ #category : 'accessing' }
SmaCCNodeCreationIssue >> reduction: aSmaCCDefaultNodeReduceCode [
	reduction := aSmaCCDefaultNodeReduceCode
]
