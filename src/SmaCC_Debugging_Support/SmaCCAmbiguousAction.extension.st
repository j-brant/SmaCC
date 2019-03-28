Extension { #name : #SmaCCAmbiguousAction }

{ #category : #'*SmaCC_Debugging_Support' }
SmaCCAmbiguousAction >> simulateOn: aParserSimulator token: aSmaCCToken [
	| currentState |
	currentState := aParserSimulator currentParserState.
	2 to: actions size do: [ :i | 
		aParserSimulator duplicateState.
		(actions at: i) simulateOn: aParserSimulator token: aSmaCCToken.
		aParserSimulator restoreState: currentState andToken: aSmaCCToken ].
	actions first simulateOn: aParserSimulator token: aSmaCCToken
]
