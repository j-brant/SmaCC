Trait {
	#name : #TYAMLParseNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
TYAMLParseNodeVisitor >> visitAlias: anAlias [
	^ self visitParse: anAlias
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitFile: aFile [
	^ self visitParse: aFile
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitFlowList: aFlowList [
	^ self visitList: aFlowList
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitFlowMappingList: aFlowMappingList [
	^ self visitMappingList: aFlowMappingList
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitKey: aKey [
	^ self visitParse: aKey
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitList: aList [
	^ self visitParse: aList
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitListItem: aListItem [
	^ self visitParse: aListItem
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitMapping: aMapping [
	^ self visitParse: aMapping
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitMappingList: aMappingList [
	^ self visitParse: aMappingList
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitMultilineString: aMultilineString [
	^ self visitParse: aMultilineString
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitNumber: aNumber [
	^ self visitParse: aNumber
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitParse: aParse [
	^ self visitSmaCCParseNode: aParse
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitString: aString [
	^ self visitParse: aString
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitParse: aStringLiteral
]
