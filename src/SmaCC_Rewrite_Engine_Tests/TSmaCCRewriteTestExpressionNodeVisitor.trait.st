Trait {
	#name : #TSmaCCRewriteTestExpressionNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Rewrite_Engine_Tests'
}

{ #category : #generated }
TSmaCCRewriteTestExpressionNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TSmaCCRewriteTestExpressionNodeVisitor >> visitExpression: anExpression [
	^ self visitSmaCCParseNode: anExpression
]

{ #category : #generated }
TSmaCCRewriteTestExpressionNodeVisitor >> visitNumber: aNumber [
	^ self visitExpression: aNumber
]
