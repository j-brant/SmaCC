"
Not really a Python 2 parser, but a Python 3 parser that handles some deprecated syntax.
"
Class {
	#name : #Python2Parser,
	#superclass : #PythonParser,
	#category : #'SmaCC_Python'
}

{ #category : #accessing }
Python2Parser >> actionsForCurrentToken [
	| actions |
	'print' = currentToken source
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner Python2Id to: actions.
			actions notEmpty
				ifTrue: [ self position: currentToken startPosition - 1.
					currentToken := SmaCCToken
							value: ''
							start: currentToken startPosition
							ids: {scanner Python2Id}.
					^ actions ] ].
	^ super actionsForCurrentToken
]
