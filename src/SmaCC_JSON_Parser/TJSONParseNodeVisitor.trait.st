Trait {
	#name : #TJSONParseNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_JSON_Parser'
}

{ #category : #generated }
TJSONParseNodeVisitor >> visitArray: anArray [
	^ self visitParse: anArray
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitBoolean: aBoolean [
	^ self visitLiteral: aBoolean
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitLiteral: aLiteral [
	^ self visitParse: aLiteral
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitMember: aMember [
	^ self visitParse: aMember
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitNull: aNull [
	^ self visitLiteral: aNull
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitNumber: aNumber [
	^ self visitLiteral: aNumber
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitObject: anObject [
	^ self visitParse: anObject
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitParse: aParse [
	^ self visitSmaCCParseNode: aParse
]

{ #category : #generated }
TJSONParseNodeVisitor >> visitString: aString [
	^ self visitLiteral: aString
]
