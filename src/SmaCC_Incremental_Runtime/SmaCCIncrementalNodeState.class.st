Class {
	#name : 'SmaCCIncrementalNodeState',
	#superclass : 'Object',
	#instVars : [
		'startingScannerState',
		'endingScannerState',
		'fromParserState',
		'toParserState',
		'lookaheadTokenEnd',
		'isEOF'
	],
	#category : 'SmaCC_Incremental_Runtime',
	#package : 'SmaCC_Incremental_Runtime'
}

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> endingScannerState [
	^ endingScannerState
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> endingScannerState: anObject [
	endingScannerState := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> fromParserState [
	^ fromParserState
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> fromParserState: anObject [
	fromParserState := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isEOF [
	^ isEOF
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isEOF: anObject [
	isEOF := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> lookaheadTokenEnd [
	^ lookaheadTokenEnd
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> lookaheadTokenEnd: anObject [
	lookaheadTokenEnd := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> startingScannerState [
	^ startingScannerState
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> startingScannerState: anObject [
	startingScannerState := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> toParserState [
	^ toParserState
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> toParserState: anObject [
	toParserState := anObject
]
