Class {
	#name : 'SmaCCIncrementalParserState',
	#superclass : 'SmaCCParserState',
	#instVars : [
		'starts',
		'stateBeforeToken'
	],
	#category : 'SmaCC_Incremental_Runtime',
	#package : 'SmaCC_Incremental_Runtime'
}

{ #category : 'as yet unclassified' }
SmaCCIncrementalParserState >> getStart [
	^ starts value
]

{ #category : 'as yet unclassified' }
SmaCCIncrementalParserState >> popStart [
	starts := starts nextLink
]

{ #category : 'as yet unclassified' }
SmaCCIncrementalParserState >> pushStart [
	^ starts := starts asLinkPrepend: nil
]

{ #category : 'as yet unclassified' }
SmaCCIncrementalParserState >> setStart: aScannerState [
	starts value: aScannerState
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> starts [
	^ starts
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> starts: anObject [
	starts := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> stateBeforeToken [
	^ stateBeforeToken
]

{ #category : 'accessing' }
SmaCCIncrementalParserState >> stateBeforeToken: aScannerState [
	stateBeforeToken := aScannerState
]
