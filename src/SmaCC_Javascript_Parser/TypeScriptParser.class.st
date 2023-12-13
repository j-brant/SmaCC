Class {
	#name : #TypeScriptParser,
	#superclass : #JSParser,
	#instVars : [
		'tokensFollowingTS',
		'tsActionMap'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #accessing }
TypeScriptParser class >> defaultStartingState [
	^ self startingStateForSourceFile
]

{ #category : #'file types' }
TypeScriptParser class >> fileExtension [
	^ '.ts'
]

{ #category : #'file types' }
TypeScriptParser class >> fileExtensionType [
	^ 'TypeScript files'
]

{ #category : #accessing }
TypeScriptParser class >> keywords [
	^ keywords
		ifNil: [ super keywords
				addAll: #('public' 'protected' 'private' 'override' 'readonly' 'interface' 'static' 'abstract' 'get' 'set');
				yourself ]
]

{ #category : #private }
TypeScriptParser >> actionsForCurrentToken [
	| position token tsActions |
	self splitTSActions.
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

{ #category : #private }
TypeScriptParser >> splitTSActions [
	| tsToken state token tsActions ids |
	(self isEOFToken
		or: [ currentToken value isEmpty or: [ currentToken startPosition isNil ] ])
		ifTrue: [ ^ self ].
	tsActions := self tsActions.
	tsActions isEmpty ifTrue: [ ^ self ].
	ids := self tokensFollowingTS.
	(currentToken ids anySatisfy: [ :each | ids includes: each ])
		ifFalse: [ ^ self ].
	token := currentToken.
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
			currentToken notNil ifTrue: [ self performParsingStep ].
			currentToken := token.
			self performParsingStep.
			currentToken := token.
			self restoreState: state ]
]

{ #category : #private }
TypeScriptParser >> tokensFollowingTS [
	tokensFollowingTS
		ifNil: [ | nextStates id |
			id := scanner tsId.
			nextStates := Set new.
			1
				to: self transitionTable size
				do: [ :i | 
					(self actionsForState: i and: id)
						do: [ :action | 
							(action bitAnd: self actionMask) = self shiftAction
								ifTrue: [ nextStates add: (action bitShift: -2) ] ] ].
			tokensFollowingTS := Set new.
			nextStates
				do: [ :i | 
					self
						actionsAndSymbolsForState: i
						do: [ :action :symbol | 
							(action bitAnd: self actionMask) = self shiftAction
								ifTrue: [ tokensFollowingTS add: symbol ] ] ] ].
	^ tokensFollowingTS
]

{ #category : #testing }
TypeScriptParser >> tryAllTokens [
	^ true
]

{ #category : #private }
TypeScriptParser >> tsActions [
	| actions state |
	state := self currentState.
	tsActionMap ifNil: [ tsActionMap := Array new: self transitionTable size ].
	actions := tsActionMap at: state.
	actions
		ifNil: [ actions := OrderedCollection new.
			self addActionsFor: scanner tsId to: actions.
			tsActionMap at: state put: actions ].
	^ actions
]

{ #category : #testing }
TypeScriptParser >> useAllTokenIds [
	^ false
]
