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
	| tsActions token tsToken state position |
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
	(currentToken value size > 1 and: [ currentToken value first = $> ])
		ifTrue: [ token := currentToken.
			position := scanner position.
			tsActions := OrderedCollection new.
			self addActionsFor: scanner gtId to: tsActions.
			tsActions notEmpty
				ifTrue: [ currentToken := currentToken class
						value: '>'
						start: currentToken startPosition
						ids: (Array with: scanner gtId).
					self position: currentToken startPosition.
					tsActions do: [ :each | self splitWithAction: each ].
					currentToken := token.
					self position: position ] ].
	^ super actionsForCurrentToken
]
