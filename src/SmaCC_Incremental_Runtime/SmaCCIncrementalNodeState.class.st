Class {
	#name : 'SmaCCIncrementalNodeState',
	#superclass : 'Object',
	#instVars : [
		'startingScannerState',
		'endingScannerState',
		'fromParserState',
		'toParserState',
		'lookaheadTokenEnd',
		'flags'
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

{ #category : 'private' }
SmaCCIncrementalNodeState >> eofFlag [
	^ 2r1
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> fromParserState [
	^ fromParserState
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> fromParserState: anObject [
	fromParserState := anObject
]

{ #category : 'initialization' }
SmaCCIncrementalNodeState >> initialize [
	super initialize.
	flags := 0
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isEOF [
	^ self isSet: self eofFlag
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isEOF: aBoolean [
	self setFlag: self eofFlag to: aBoolean
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isModified [
	^ self isSet: self modifiedFlag
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isModifiedAfter [
	^ self isSet: self modifiedAfterFlag
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isModifiedAfter: aBoolean [
	self setFlag: self modifiedAfterFlag to: aBoolean
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isModifiedBefore [
	^ self isSet: self modifiedBeforeFlag
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isModifiedBefore: aBoolean [
	self setFlag: self modifiedBeforeFlag to: aBoolean
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isModifiedInside [
	^ self isSet: self modifiedInsideFlag
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> isModifiedInside: aBoolean [
	self setFlag: self modifiedInsideFlag to: aBoolean
]

{ #category : 'private' }
SmaCCIncrementalNodeState >> isSet: flag [
	^ (flags bitAnd: flag) ~= 0
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> lookaheadTokenEnd [
	^ lookaheadTokenEnd
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> lookaheadTokenEnd: anObject [
	lookaheadTokenEnd := anObject
]

{ #category : 'private' }
SmaCCIncrementalNodeState >> modifiedAfterFlag [
	^ 2r100
]

{ #category : 'private' }
SmaCCIncrementalNodeState >> modifiedBeforeFlag [
	^ 2r10
]

{ #category : 'private' }
SmaCCIncrementalNodeState >> modifiedFlag [
	^ 2r1110
]

{ #category : 'private' }
SmaCCIncrementalNodeState >> modifiedInsideFlag [
	^ 2r1000
]

{ #category : 'accessing' }
SmaCCIncrementalNodeState >> setFlag: flag to: aBoolean [
	flags := (flags bitAnd: flag bitInvert)
			bitOr: (aBoolean ifTrue: [ flag ] ifFalse: [ 0 ])
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
