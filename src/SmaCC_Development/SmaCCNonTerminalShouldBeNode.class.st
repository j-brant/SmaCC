Class {
	#name : 'SmaCCNonTerminalShouldBeNode',
	#superclass : 'SmaCCRHSVariableIssue',
	#category : 'SmaCC_Development-Issues',
	#package : 'SmaCC_Development',
	#tag : 'Issues'
}

{ #category : 'displaying' }
SmaCCNonTerminalShouldBeNode >> displayStringOn: aStream [
	aStream
		nextPutAll: 'Non terminal symbol that returns a variable collection is assigned to a variable. The non terminal should be changed to return an AST node:';
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
