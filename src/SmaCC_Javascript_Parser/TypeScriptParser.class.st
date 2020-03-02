Class {
	#name : #TypeScriptParser,
	#superclass : #JSParser,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #accessing }
TypeScriptParser class >> defaultStartingState [
	^ self startingStateForSourceFile
]

{ #category : #private }
TypeScriptParser >> actionsForCurrentToken [
	| tsActions token tsToken state |
	(self isEOFToken
		or:
			[ currentToken value isEmpty or: [ currentToken startPosition isNil ] ])
		ifFalse: [ tsActions := OrderedCollection new.
			self addActionsFor: scanner tsId to: tsActions.
			tsActions notEmpty
				ifTrue: [ token := currentToken.
					state := currentState.
					tsToken := scanner tokenClass
						value: ''
						start: token startPosition
						ids: {scanner tsId}.
					tsActions
						do: [ :each | 
							currentToken := tsToken.
							currentState := self duplicateState.
							self performAction: each.
							currentToken notNil
								ifTrue: [ self performParsingStep ].
							currentToken := token.
							self performParsingStep.
							currentToken := token.
							self restoreState: state ] ] ].
	^ super actionsForCurrentToken
]
