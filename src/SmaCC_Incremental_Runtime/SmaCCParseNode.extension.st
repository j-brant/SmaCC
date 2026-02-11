Extension { #name : 'SmaCCParseNode' }

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> assignIdUsing: aBlock [
	| previousId |
	previousId := self attributeNamed: #id.
	self attributeNamed: #id put: (aBlock cull: self cull: previousId)
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
	| incrementalState offset start stop |
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
	(incrementalState notNil
		and: [ incrementalState lookaheadTokenEnd >= (fromIndex min: toIndex) ])
		ifTrue: [ self
				nodesDo: [ :each | 
					each
						invalidateFrom: fromIndex
						to: toIndex
						inserting: length ]
				andTokensDo: nil
				includeErrors: true ].
	incrementalState ifNil: [ ^ self ].
	((fromIndex max: toIndex) > incrementalState startingScannerState position
		and: [ fromIndex <= incrementalState lookaheadTokenEnd or: [ incrementalState isEOF ] ])
		ifTrue: [ toIndex < start
				ifTrue: [ incrementalState isModifiedBefore: true ]
				ifFalse: [ toIndex > stop
						ifTrue: [ incrementalState isModifiedAfter: true ]
						ifFalse: [ ^ self removeAttributeNamed: #incrementalState ] ] ].
	stop < fromIndex ifTrue: [ ^ self ].
	offset := length - (toIndex - fromIndex + 1).
	offset = 0 ifTrue: [ ^ self ].
	incrementalState startingScannerState
		position: incrementalState startingScannerState position + offset.
	incrementalState endingScannerState
		position: incrementalState endingScannerState position + offset.
	incrementalState lookaheadTokenEnd: incrementalState lookaheadTokenEnd + offset.
	self attributeNamed: #startPosition put: start + offset.
	self attributeNamed: #stopPosition put: stop + offset.
	self
		nodesDo: nil
		andTokensDo: [ :token | token startPosition: token startPosition + offset ]
		includeErrors: true
]

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> smaccIsNodeLike [
	^ true
]
