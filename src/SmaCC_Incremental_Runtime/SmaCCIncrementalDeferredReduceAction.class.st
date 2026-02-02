Class {
	#name : 'SmaCCIncrementalDeferredReduceAction',
	#superclass : 'SmaCCDeferredReduceAction',
	#instVars : [
		'incrementalState',
		'idBlock'
	],
	#category : 'SmaCC_Incremental_Runtime',
	#package : 'SmaCC_Incremental_Runtime'
}

{ #category : 'accessing' }
SmaCCIncrementalDeferredReduceAction >> assignIdUsing: aBlock [
	idBlock := aBlock
]

{ #category : 'accessing' }
SmaCCIncrementalDeferredReduceAction >> incrementalState: anObject [
	incrementalState := anObject
]

{ #category : 'accessing' }
SmaCCIncrementalDeferredReduceAction >> performOnSmaCCParser: aSmaCCParser [
	| value |
	value := super performOnSmaCCParser: aSmaCCParser.
	value smaccIsNodeLike
		ifTrue: [ value incrementalState: incrementalState.
			value assignIdUsing: idBlock ].
	^ value
]

{ #category : 'testing' }
SmaCCIncrementalDeferredReduceAction >> smaccIsNodeLike [
	^ true
]
