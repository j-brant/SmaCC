Trait {
	#name : #TYAMLParseNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_YAML-Parser'
}

{ #category : #generated }
TYAMLParseNodeVisitor >> visitAlias: anAlias [
	^ self visitValue: anAlias
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitComplexKey: aComplexKey [
	^ self visitParse: aComplexKey
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
TYAMLParseNodeVisitor >> visitList: aList [
	^ self visitValue: aList
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
	^ self visitValue: aMappingList
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitNumber: aNumber [
	^ self visitValue: aNumber
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitParse: aParse [
	^ self visitSmaCCParseNode: aParse
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitString: aString [
	^ self visitValue: aString
]

{ #category : #generated }
TYAMLParseNodeVisitor >> visitValue: aValue [
	^ self visitParse: aValue
]
