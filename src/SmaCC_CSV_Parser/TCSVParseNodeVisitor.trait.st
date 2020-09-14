Trait {
	#name : #TCSVParseNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_CSV_Parser'
}

{ #category : #generated }
TCSVParseNodeVisitor >> visitFile: aFile [
	^ self visitParse: aFile
]

{ #category : #generated }
TCSVParseNodeVisitor >> visitLine: aLine [
	^ self visitParse: aLine
]

{ #category : #generated }
TCSVParseNodeVisitor >> visitParse: aParse [
	^ self visitSmaCCParseNode: aParse
]
