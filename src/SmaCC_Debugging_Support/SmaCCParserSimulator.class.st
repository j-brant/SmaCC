Class {
	#name : #SmaCCParserSimulator,
	#superclass : #SmaCCGrammarCompiler,
	#instVars : [
		'parserStates',
		'currentParserState',
		'currentToken'
	],
	#category : #'SmaCC_Debugging_Support-Simulation'
}

{ #category : #'instance creation' }
SmaCCParserSimulator class >> on: aString [
	^ self new
		buildDefinition: aString;
		yourself
]

{ #category : #parsing }
SmaCCParserSimulator >> accept [
	currentParserState markAccepted
]

{ #category : #'private-item sets' }
SmaCCParserSimulator >> createInitialItemSetFor: smaccSymbol [
	| start |
	startingStateMap := Dictionary new.
	grammar calculateFirstSets.
	start := grammar createStartingSymbolFor: smaccSymbol.
	itemSets := OrderedCollection new.
	itemSets add: (grammar initialItemSetFor: start).
	startingStateMap at: start put: itemSets size.
	shiftTable := Dictionary new
]

{ #category : #parsing }
SmaCCParserSimulator >> currentParserState [
	^ currentParserState
]

{ #category : #parsing }
SmaCCParserSimulator >> duplicateState [
	parserStates
		add:
			(currentParserState := SmaCCParserState
				stateStack: currentParserState stateStack copy
				nodeStack: currentParserState nodeStack
				scannerState: currentParserState scannerState copy)
]

{ #category : #'initialize-release' }
SmaCCParserSimulator >> initialize [
	super initialize.
	parserStates := OrderedCollection
		with:
			(currentParserState := SmaCCParserState
				stateStack: (OrderedCollection with: 1)
				nodeStack: OrderedCollection new
				scannerState: (SmaCCScannerState position: 0 scope: #default))
]

{ #category : #parsing }
SmaCCParserSimulator >> killStateFrom: aSmaCCToken [
	| index |
	index := parserStates identityIndexOf: currentParserState.
	parserStates size > 1
		ifTrue: [ parserStates removeAt: index.
			currentParserState := parserStates at: (index max: 1) ]
		ifFalse: [ self signalErrorFrom: aSmaCCToken ]
]

{ #category : #'private-item sets' }
SmaCCParserSimulator >> moveOn: smaccSymbol from: state [
	^ shiftTable
		at: (self shiftTableKeyForIndex: state symbol: smaccSymbol)
		ifAbsentPut: [ self indexOfState: ((itemSets at: state) moveOn: smaccSymbol) ]
]

{ #category : #parsing }
SmaCCParserSimulator >> parserStateId [
	^ currentParserState stateStack last
]

{ #category : #parsing }
SmaCCParserSimulator >> popItems: anInteger [
	| items |
	items := OrderedCollection new: anInteger.
	anInteger
		timesRepeat: [ items addFirst: currentParserState nodeStack removeLast.
			currentParserState stateStack removeLast ].
	^ items
]

{ #category : #private }
SmaCCParserSimulator >> processToken: aSmaCCToken in: parserState [
	| action state symbol itemSet |
	currentToken := aSmaCCToken.
	[ state := parserState stateStack last.
	aSmaCCToken ids
		do: [ :id | self moveOn: (self symbolForId: id) from: state ].
	symbol := grammar symbols at: aSmaCCToken ids first.
	itemSet := itemSets at: state.
	action := itemSet isEmpty
		ifTrue: [ SmaCCRejectAction new ]
		ifFalse:
			[ itemSet action: symbol prefer: (grammar preferredActionFor: symbol) ].
	action simulateOn: self token: aSmaCCToken.
	currentToken notNil ] whileTrue
]

{ #category : #parsing }
SmaCCParserSimulator >> processedToken [
	currentToken := nil
]

{ #category : #parsing }
SmaCCParserSimulator >> pushObject: anObject andState: anInteger [
	currentParserState stateStack add: anInteger.
	currentParserState nodeStack add: anObject
]

{ #category : #parsing }
SmaCCParserSimulator >> restoreState: aParserState andToken: aSmaCCToken [
	currentParserState := aParserState.
	currentToken := aSmaCCToken
]

{ #category : #setup }
SmaCCParserSimulator >> setupFor: productionName [
	scannerCompiler createRegex.
	self createInitialItemSetFor: (grammar symbolNamed: productionName)
]

{ #category : #parsing }
SmaCCParserSimulator >> signalErrorFrom: aSmaCCToken [
	SmaCCParserSimulationError
		signal: 'Cannot parse input'
		withTag: aSmaCCToken
]

{ #category : #private }
SmaCCParserSimulator >> symbolForId: id [
	^ grammar symbols at: id
]
