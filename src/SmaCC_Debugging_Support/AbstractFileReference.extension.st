Extension { #name : 'AbstractFileReference' }

{ #category : '*SmaCC_Debugging_Support' }
AbstractFileReference >> smaCCParseUsing: parserClass [
	| contents |
	self
		readStreamDo: [ :str | 
			parserClass setEncodingOn: str.
			contents := str contents ].
	^ parserClass parse: contents
]
