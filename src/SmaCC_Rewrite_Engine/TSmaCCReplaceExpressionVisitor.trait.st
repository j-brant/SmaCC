Trait {
	#name : #TSmaCCReplaceExpressionVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : 'SmaCC_Rewrite_Engine'
}

{ #category : #generated }
TSmaCCReplaceExpressionVisitor >> visitCodeReplace: aCodeReplace [
	^ self visitReplace: aCodeReplace
]

{ #category : #generated }
TSmaCCReplaceExpressionVisitor >> visitCompositeReplace: aCompositeReplace [
	^ self visitReplace: aCompositeReplace
]

{ #category : #generated }
TSmaCCReplaceExpressionVisitor >> visitNodeReplace: aNodeReplace [
	^ self visitReplace: aNodeReplace
]

{ #category : #generated }
TSmaCCReplaceExpressionVisitor >> visitReplace: aReplace [
	^ self visitSmaCCParseNode: aReplace
]

{ #category : #generated }
TSmaCCReplaceExpressionVisitor >> visitStringReplace: aStringReplace [
	^ self visitReplace: aStringReplace
]
