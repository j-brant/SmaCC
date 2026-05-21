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

{ #category : 'accessing' }
SmaCCValueIsDroppedIssue >> itemName [
	^ (rhs at: problemIndex) name
]

{ #category : 'accessing' }
SmaCCValueIsDroppedIssue >> itemNames [
	| names ast |
	names := Set new.
	ast := SmaCCDefinitionParser
			parse: (rhs at: problemIndex) name
			startingAt: SmaCCDefinitionParser startingStateForParserRule.
	ast
		withAllNodesOfType: SmaCCSymbolNode
		do: [ :each | each variableNameToken ifNil: [ names add: each name source ] ].
	^ names
]

{ #category : 'accessing' }
SmaCCValueIsDroppedIssue >> productionName [
	^ rhs productionSymbol name
]
