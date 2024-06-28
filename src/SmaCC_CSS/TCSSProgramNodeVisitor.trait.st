Trait {
	#name : #TCSSProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_CSS'
}

{ #category : #generated }
TCSSProgramNodeVisitor >> visitAt: anAt [
	^ self visitName: anAt
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitAtRule: anAtRule [
	^ self visitProgram: anAtRule
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitBlock: aBlock [
	^ self visitProgram: aBlock
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitBracketExpression: aBracketExpression [
	^ self visitProgram: aBracketExpression
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitCommentDelimiter: aCommentDelimiter [
	^ self visitProgram: aCommentDelimiter
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitDeclaration: aDeclaration [
	^ self visitProgram: aDeclaration
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitDelimiter: aDelimiter [
	^ self visitProgram: aDelimiter
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitDimension: aDimension [
	^ self visitValue: aDimension
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitFunction: aFunction [
	^ self visitProgram: aFunction
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitHash: aHash [
	^ self visitName: aHash
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitIdentifier: anIdentifier [
	^ self visitName: anIdentifier
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitName: aName [
	^ self visitProgram: aName
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitValue: aNumber
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitOperator: anOperator [
	^ self visitProgram: anOperator
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitParenthesizedExpression: aParenthesizedExpression [
	^ self visitProgram: aParenthesizedExpression
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitPercentage: aPercentage [
	^ self visitValue: aPercentage
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitRuleset: aRuleset [
	^ self visitProgram: aRuleset
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitString: aString [
	^ self visitValue: aString
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitStylesheet: aStylesheet [
	^ self visitProgram: aStylesheet
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitURI: anURI [
	^ self visitValue: anURI
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitUnicodeRange: anUnicodeRange [
	^ self visitValue: anUnicodeRange
]

{ #category : #generated }
TCSSProgramNodeVisitor >> visitValue: aValue [
	^ self visitProgram: aValue
]
