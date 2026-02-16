Extension { #name : 'SmaCCParseNode' }

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> assignIdUsing: aBlock [
	| previousId |
	previousId := self attributeNamed: #id.
	self attributeNamed: #id put: (aBlock cull: self cull: previousId)
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> assignIdsFrom: previousNode [
	| maxId map |
	maxId := 0.
	map := Dictionary new.
	previousNode
		ifNotNil: [ previousNode
				withAllNodesDo: [ :each | 
					(each attributeNamed: #id)
						ifNotNil: [ :id | 
							maxId := maxId max: id.
							map
								at: {each class.
										each sourceInterval}
								put: id ] ]
				andTokensDo: nil
				includesErrors: true ].
	self
		withAllNodesDo: [ :each | 
			each
				id: (map
						at: {each class.
								each sourceInterval}
						ifAbsent: [ maxId := maxId + 1 ]);
				incrementalState: (SmaCCIncrementalNodeState new
						startingScannerState: (SmaCCScannerState position: each startPosition scope: #default);
						endingScannerState: (SmaCCScannerState position: each stopPosition scope: #default);
						lookaheadTokenEnd: each stopPosition;
						yourself) ]
		andTokensDo: nil
		includesErrors: true
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> id [
	^ self attributeNamed: #id ifAbsent: [ 0 ]
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> id: anInteger [
	self attributeNamed: #id put: anInteger
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> incrementalState [
	^ self attributeNamed: #incrementalState
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> incrementalState: incrementalState [
	self attributeNamed: #incrementalState put: incrementalState
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> invalidateFrom: fromIndex to: toIndex inserting: length [
	| incrementalState offset start stop modifiedToken maxIndex minIndex |
	start := self startPosition.
	stop := self stopPosition.
	(self attributeNamed: #source)
		ifNotNil: [ :source | 
			(source isKindOf: SmaCCString)
				ifTrue: [ | str first last |
					first := source indexForStringIndex: fromIndex.
					str := String new: length withAll: (Character value: 16r2588).
					toIndex < fromIndex
						ifTrue: [ source insert: str at: first ]
						ifFalse: [ last := source indexForStringIndex: toIndex.
							source
								replaceFrom: first
								to: last
								with: str ] ] ].
	incrementalState := self incrementalState.
	modifiedToken := false.
	minIndex := fromIndex min: toIndex.
	maxIndex := fromIndex max: toIndex.
	(incrementalState isNil
		or: [ incrementalState lookaheadTokenEnd + 1 >= fromIndex ])
		ifTrue: [ self
				nodesDo: [ :each | 
					each
						invalidateFrom: fromIndex
						to: toIndex
						inserting: length ]
				andTokensDo: [ :each | 
					modifiedToken := modifiedToken
							or: [ each stopPosition >= fromIndex and: [ each startPosition <= toIndex ] ] ]
				includeErrors: true ].
	incrementalState ifNil: [ ^ self ].
	(maxIndex > incrementalState startingScannerState position
		and: [ fromIndex - 1 <= incrementalState lookaheadTokenEnd or: [ incrementalState isEOF ] ])
		ifTrue: [ toIndex < start
				ifTrue: [ incrementalState isModifiedBefore: true ]
				ifFalse: [ fromIndex > stop
						ifTrue: [ incrementalState isModifiedAfter: true ]
						ifFalse: [ modifiedToken ifTrue: [ ^ self removeAttributeNamed: #incrementalState ].
							incrementalState isModifiedInside: true ] ] ].
	stop < fromIndex ifTrue: [ ^ self ].
	offset := length - (toIndex - fromIndex + 1).
	offset = 0 ifTrue: [ ^ self ].
	incrementalState startingScannerState
		position: incrementalState startingScannerState position + offset.
	incrementalState endingScannerState
		position: incrementalState endingScannerState position + offset.
	incrementalState lookaheadTokenEnd: incrementalState lookaheadTokenEnd + offset.
	start > toIndex
		ifTrue: [ self attributeNamed: #startPosition put: start + offset ].
	self attributeNamed: #stopPosition put: stop + offset.
	self
		nodesDo: nil
		andTokensDo: [ :token | 
			token startPosition > toIndex
				ifTrue: [ token startPosition: token startPosition + offset ] ]
		includeErrors: true
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> smaccIsNodeLike [
	^ true
]
