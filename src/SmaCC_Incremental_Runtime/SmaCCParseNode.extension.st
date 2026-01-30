Extension { #name : 'SmaCCParseNode' }

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCParseNode >> invalidateFrom: startIndex to: toIndex inserting: length [
	| incrementalState offset |
	(self attributeNamed: #source)
		ifNotNil: [ :source | 
			(source isKindOf: SmaCCString)
				ifTrue: [ | str first last |
					first := source indexForStringIndex: startIndex.
					str := String new: length withAll: (Character value: 16r2588).
					toIndex < startIndex
						ifTrue: [ source insert: str at: first ]
						ifFalse: [ last := source indexForStringIndex: toIndex.
							source
								replaceFrom: first
								to: last
								with: str ] ] ].
	incrementalState := self attributeNamed: #incremental.
	(incrementalState notNil
		and: [ incrementalState lookaheadTokenEnd >= (startIndex min: toIndex) ])
		ifTrue: [ self
				nodesDo: [ :each | 
					each
						invalidateFrom: startIndex
						to: toIndex
						inserting: length ]
				andTokensDo: nil
				includeErrors: true ].
	incrementalState ifNil: [ ^ self ].
	(toIndex < incrementalState startingScannerState position
		or: [ startIndex > incrementalState lookaheadTokenEnd ])
		ifFalse: [ ^ self removeAttributeNamed: #incremental ].
	self stopPosition < startIndex ifTrue: [ ^ self ].
	offset := length - (toIndex - startIndex + 1).
	offset = 0 ifTrue: [ ^ self ].
	incrementalState startingScannerState
		position: incrementalState startingScannerState position + offset.
	incrementalState endingScannerState
		position: incrementalState endingScannerState position + offset.
	incrementalState lookaheadTokenEnd: incrementalState lookaheadTokenEnd + offset.
	self attributeNamed: #startPosition put: self startPosition + offset.
	self attributeNamed: #stopPosition put: self stopPosition + offset.
	self
		nodesDo: nil
		andTokensDo: [ :token | token startPosition: token startPosition + offset ]
		includeErrors: true
]
