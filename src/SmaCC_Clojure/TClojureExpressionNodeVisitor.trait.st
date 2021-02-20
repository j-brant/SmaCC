Trait {
	#name : #TClojureExpressionNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Clojure'
}

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitCharacter: aCharacter [
	^ self visitExpression: aCharacter
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitDeref: aDeref [
	^ self visitExpression: aDeref
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitDiscard: aDiscard [
	^ self visitExpression: aDiscard
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitExpression: anExpression [
	^ self visitSmaCCParseNode: anExpression
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitFile: aFile [
	^ self visitExpression: aFile
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitFn: aFn [
	^ self visitExpression: aFn
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitKeyword: aKeyword [
	^ self visitExpression: aKeyword
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitList: aList [
	^ self visitExpression: aList
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitMap: aMap [
	^ self visitExpression: aMap
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitMetadata: aMetadata [
	^ self visitExpression: aMetadata
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitNumber: aNumber [
	^ self visitExpression: aNumber
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitPair: aPair [
	^ self visitExpression: aPair
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitQuote: aQuote [
	^ self visitExpression: aQuote
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitRegularExpression: aRegularExpression [
	^ self visitExpression: aRegularExpression
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitSet: aSet [
	^ self visitExpression: aSet
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitString: aString [
	^ self visitExpression: aString
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitSymbol: aSymbol [
	^ self visitExpression: aSymbol
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitSymbolic: aSymbolic [
	^ self visitExpression: aSymbolic
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitTaggedLiteral: aTaggedLiteral [
	^ self visitExpression: aTaggedLiteral
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitUnquote: anUnquote [
	^ self visitExpression: anUnquote
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitVar: aVar [
	^ self visitExpression: aVar
]

{ #category : #generated }
TClojureExpressionNodeVisitor >> visitVector: aVector [
	^ self visitExpression: aVector
]
