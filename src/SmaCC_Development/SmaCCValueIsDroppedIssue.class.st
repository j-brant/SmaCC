Class {
	#name : 'SmaCCValueIsDroppedIssue',
	#superclass : 'SmaCCRHSVariableIssue',
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'displaying' }
SmaCCValueIsDroppedIssue >> displayStringOn: aStream [
	aStream
		nextPutAll: 'Unnamed symbol in production. Without a variable name the value will be dropped from the parsed AST.';
		cr;
		cr;
		nextPutAll: rhs productionSymbol name;
		nextPutAll: ' : '.
	1
		to: rhs size
		do: [ :i | 
			i == problemIndex ifTrue: [ aStream nextPutAll: '>>>' ].
			aStream nextPutAll: (rhs at: i) name.
			i == problemIndex ifTrue: [ aStream nextPutAll: '<<<' ].
			aStream space ]
]
