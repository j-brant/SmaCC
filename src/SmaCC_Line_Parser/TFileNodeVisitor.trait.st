Trait {
	#name : #TFileNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Line_Parser'
}

{ #category : #generated }
TFileNodeVisitor >> visitFileNode: aFileNode [
	^ self visitSmaCCParseNode: aFileNode
]
