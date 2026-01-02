Trait {
	#name : 'TElixirProgramNodeVisitor',
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : 'SmaCC_Elixir_Parser',
	#package : 'SmaCC_Elixir_Parser'
}

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitAccessExpr: anAccessExpr [
	^ self visitProgram: anAccessExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitAssoc: anAssoc [
	^ self visitProgram: anAssoc
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitAssocBase: anAssocBase [
	^ self visitProgram: anAssocBase
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitAssocExpr: anAssocExpr [
	^ self visitProgram: anAssocExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitAssocUpdate: anAssocUpdate [
	^ self visitProgram: anAssocUpdate
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitAssocUpdateKw: anAssocUpdateKw [
	^ self visitProgram: anAssocUpdateKw
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitAtom: anAtom [
	^ self visitProgram: anAtom
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBinHeredoc: aBinHeredoc [
	^ self visitProgram: aBinHeredoc
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBinString: aBinString [
	^ self visitProgram: aBinString
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBitString: aBitString [
	^ self visitProgram: aBitString
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBlockEoe: aBlockEoe [
	^ self visitProgram: aBlockEoe
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBlockExpr: aBlockExpr [
	^ self visitProgram: aBlockExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBlockItem: aBlockItem [
	^ self visitProgram: aBlockItem
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBlockList: aBlockList [
	^ self visitProgram: aBlockList
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBracketArg: aBracketArg [
	^ self visitProgram: aBracketArg
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBracketAtExpr: aBracketAtExpr [
	^ self visitProgram: aBracketAtExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBracketExpr: aBracketExpr [
	^ self visitProgram: aBracketExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitBracketValues: aBracketValues [

	^ self visitProgram: aBracketValues
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCallArgsNoParensCommaExpr: aCallArgsNoParensCommaExpr [
	^ self visitProgram: aCallArgsNoParensCommaExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCallArgsNoParensKw: aCallArgsNoParensKw [
	^ self visitProgram: aCallArgsNoParensKw
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCallArgsNoParensKwExpr: aCallArgsNoParensKwExpr [
	^ self visitProgram: aCallArgsNoParensKwExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCallArgsNoParensMany: aCallArgsNoParensMany [
	^ self visitProgram: aCallArgsNoParensMany
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCallArgsNoParensManyStrict: aCallArgsNoParensManyStrict [
	^ self visitProgram: aCallArgsNoParensManyStrict
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCallArgsParens: aCallArgsParens [
	^ self visitProgram: aCallArgsParens
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCallArgsParensBase: aCallArgsParensBase [
	^ self visitProgram: aCallArgsParensBase
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitCapture: aCapture [
	^ self visitProgram: aCapture
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitContainerArgs: aContainerArgs [
	^ self visitProgram: aContainerArgs
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitContainerArgsBase: aContainerArgsBase [
	^ self visitProgram: aContainerArgsBase
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDoBlock: aDoBlock [
	^ self visitProgram: aDoBlock
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDotAlias: aDotAlias [
	^ self visitProgram: aDotAlias
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDotBracketIdentifier: aDotBracketIdentifier [
	^ self visitProgram: aDotBracketIdentifier
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDotCallIdentifier: aDotCallIdentifier [
	^ self visitProgram: aDotCallIdentifier
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDotDoIdentifier: aDotDoIdentifier [
	^ self visitProgram: aDotDoIdentifier
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDotIdentifier: aDotIdentifier [
	^ self visitProgram: aDotIdentifier
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDotOpIdentifier: aDotOpIdentifier [
	^ self visitProgram: aDotOpIdentifier
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitDotParenIdentifier: aDotParenIdentifier [
	^ self visitProgram: aDotParenIdentifier
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitEmptyParen: anEmptyParen [
	^ self visitProgram: anEmptyParen
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitEndEoe: anEndEoe [
	^ self visitProgram: anEndEoe
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitExprList: anExprList [
	^ self visitProgram: anExprList
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitFalse: aFalse [
	^ self visitProgram: aFalse
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitFnEoe: aFnEoe [
	^ self visitProgram: aFnEoe
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitGrammar: aGrammar [
	^ self visitProgram: aGrammar
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitInterpolatedString: anInterpolatedString [
	^ self visitProgram: anInterpolatedString
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitKw: aKw [

	^ self visitProgram: aKw
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitKwBase: aKwBase [
	^ self visitProgram: aKwBase
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitLambda: aLambda [
	^ self visitProgram: aLambda
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitList: aList [
	^ self visitProgram: aList
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitListArgs: aListArgs [
	^ self visitProgram: aListArgs
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitListHeredoc: aListHeredoc [
	^ self visitProgram: aListHeredoc
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitListString: aListString [
	^ self visitProgram: aListString
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitMap: aMap [
	^ self visitProgram: aMap
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitMapArgs: aMapArgs [
	^ self visitProgram: aMapArgs
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitMapClose: aMapClose [
	^ self visitProgram: aMapClose
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitMatchedExpr: aMatchedExpr [
	^ self visitProgram: aMatchedExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitMatchedOpExpr: aMatchedOpExpr [
	^ self visitProgram: aMatchedOpExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitNil: aNil [
	^ self visitProgram: aNil
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitNoParensExpr: aNoParensExpr [
	^ self visitProgram: aNoParensExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitNoParensManyExpr: aNoParensManyExpr [
	^ self visitProgram: aNoParensManyExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitNoParensOneAmbigExpr: aNoParensOneAmbigExpr [
	^ self visitProgram: aNoParensOneAmbigExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitNoParensOneExpr: aNoParensOneExpr [
	^ self visitProgram: aNoParensOneExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitNoParensOpExpr: aNoParensOpExpr [
	^ self visitProgram: aNoParensOpExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitProgram: aNumber
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitParensCall: aParensCall [
	^ self visitProgram: aParensCall
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitSigil: aSigil [
	^ self visitProgram: aSigil
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitStab: aStab [
	^ self visitProgram: aStab
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitStabExpr: aStabExpr [
	^ self visitProgram: aStabExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitStabOpEolAndExpr: aStabOpEolAndExpr [
	^ self visitProgram: aStabOpEolAndExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitStabParensMany: aStabParensMany [
	^ self visitProgram: aStabParensMany
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitStructExpr: aStructExpr [
	^ self visitProgram: aStructExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitTrue: aTrue [
	^ self visitProgram: aTrue
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitTuple: aTuple [
	^ self visitProgram: aTuple
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitUnmatchedExpr: anUnmatchedExpr [
	^ self visitProgram: anUnmatchedExpr
]

{ #category : 'generated' }
TElixirProgramNodeVisitor >> visitUnmatchedOpExpr: anUnmatchedOpExpr [
	^ self visitProgram: anUnmatchedOpExpr
]
