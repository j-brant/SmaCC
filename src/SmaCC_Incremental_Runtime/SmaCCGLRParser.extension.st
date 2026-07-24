Extension { #name : 'SmaCCGLRParser' }

{ #category : '*SmaCC_Incremental_Runtime' }
SmaCCGLRParser class >> incremental [
	^ SmaCCIncrementalParser incrementalParserFrom: self
]
