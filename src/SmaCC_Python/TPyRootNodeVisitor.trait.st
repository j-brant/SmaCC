Trait {
	#name : #TPyRootNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Python'
}

{ #category : #generated }
TPyRootNodeVisitor >> visitAnd: anAnd [
	^ self visitRoot: anAnd
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAndExpr: anAndExpr [
	^ self visitRoot: anAndExpr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitArgument: anArgument [
	^ self visitRoot: anArgument
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAssert: anAssert [
	^ self visitRoot: anAssert
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAtom: anAtom [
	^ self visitRoot: anAtom
]

{ #category : #generated }
TPyRootNodeVisitor >> visitBackTick: aBackTick [
	^ self visitRoot: aBackTick
]

{ #category : #generated }
TPyRootNodeVisitor >> visitBreak: aBreak [
	^ self visitRoot: aBreak
]

{ #category : #generated }
TPyRootNodeVisitor >> visitClassdef: aClassdef [
	^ self visitRoot: aClassdef
]

{ #category : #generated }
TPyRootNodeVisitor >> visitCompFor: aCompFor [
	^ self visitRoot: aCompFor
]

{ #category : #generated }
TPyRootNodeVisitor >> visitCompIf: aCompIf [
	^ self visitRoot: aCompIf
]

{ #category : #generated }
TPyRootNodeVisitor >> visitCompOp: aCompOp [
	^ self visitRoot: aCompOp
]

{ #category : #generated }
TPyRootNodeVisitor >> visitComparison: aComparison [
	^ self visitRoot: aComparison
]

{ #category : #generated }
TPyRootNodeVisitor >> visitContinue: aContinue [
	^ self visitRoot: aContinue
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDecorated: aDecorated [
	^ self visitRoot: aDecorated
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDecorator: aDecorator [
	^ self visitRoot: aDecorator
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDecorators: aDecorators [
	^ self visitRoot: aDecorators
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDel: aDel [
	^ self visitRoot: aDel
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDictorsetmaker: aDictorsetmaker [
	^ self visitRoot: aDictorsetmaker
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDotoptDottedName: aDotoptDottedName [
	^ self visitRoot: aDotoptDottedName
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDots: aDots [
	^ self visitRoot: aDots
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDottedName: aDottedName [
	^ self visitRoot: aDottedName
]

{ #category : #generated }
TPyRootNodeVisitor >> visitElif: anElif [
	^ self visitRoot: anElif
]

{ #category : #generated }
TPyRootNodeVisitor >> visitElse: anElse [
	^ self visitRoot: anElse
]

{ #category : #generated }
TPyRootNodeVisitor >> visitEvalInput: anEvalInput [
	^ self visitRoot: anEvalInput
]

{ #category : #generated }
TPyRootNodeVisitor >> visitExceptClause: anExceptClause [
	^ self visitRoot: anExceptClause
]

{ #category : #generated }
TPyRootNodeVisitor >> visitExec: anExec [
	^ self visitRoot: anExec
]

{ #category : #generated }
TPyRootNodeVisitor >> visitExprStmt: anExprStmt [
	^ self visitRoot: anExprStmt
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFactor: aFactor [
	^ self visitRoot: aFactor
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFileInput: aFileInput [
	^ self visitRoot: aFileInput
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFinally: aFinally [
	^ self visitRoot: aFinally
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFor: aFor [
	^ self visitRoot: aFor
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFpdef: aFpdef [
	^ self visitRoot: aFpdef
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFuncdef: aFuncdef [
	^ self visitRoot: aFuncdef
]

{ #category : #generated }
TPyRootNodeVisitor >> visitGlobal: aGlobal [
	^ self visitRoot: aGlobal
]

{ #category : #generated }
TPyRootNodeVisitor >> visitIf: anIf [
	^ self visitRoot: anIf
]

{ #category : #generated }
TPyRootNodeVisitor >> visitIfTest: anIfTest [
	^ self visitRoot: anIfTest
]

{ #category : #generated }
TPyRootNodeVisitor >> visitImport: anImport [
	^ self visitRoot: anImport
]

{ #category : #generated }
TPyRootNodeVisitor >> visitInitOpt: anInitOpt [
	^ self visitRoot: anInitOpt
]

{ #category : #generated }
TPyRootNodeVisitor >> visitInterpolatedString: anInterpolatedString [
	^ self visitRoot: anInterpolatedString
]

{ #category : #generated }
TPyRootNodeVisitor >> visitLShiftExpr: aLShiftExpr [
	^ self visitRoot: aLShiftExpr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitLambda: aLambda [
	^ self visitRoot: aLambda
]

{ #category : #generated }
TPyRootNodeVisitor >> visitListFor: aListFor [
	^ self visitRoot: aListFor
]

{ #category : #generated }
TPyRootNodeVisitor >> visitListIf: aListIf [
	^ self visitRoot: aListIf
]

{ #category : #generated }
TPyRootNodeVisitor >> visitListmaker: aListmaker [
	^ self visitRoot: aListmaker
]

{ #category : #generated }
TPyRootNodeVisitor >> visitMinusExpr: aMinusExpr [
	^ self visitRoot: aMinusExpr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitNot: aNot [
	^ self visitRoot: aNot
]

{ #category : #generated }
TPyRootNodeVisitor >> visitNumber: aNumber [
	^ self visitRoot: aNumber
]

{ #category : #generated }
TPyRootNodeVisitor >> visitOr: anOr [
	^ self visitRoot: anOr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitPass: aPass [
	^ self visitRoot: aPass
]

{ #category : #generated }
TPyRootNodeVisitor >> visitPlusExpr: aPlusExpr [
	^ self visitRoot: aPlusExpr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitPower: aPower [
	^ self visitRoot: aPower
]

{ #category : #generated }
TPyRootNodeVisitor >> visitPrint: aPrint [
	^ self visitRoot: aPrint
]

{ #category : #generated }
TPyRootNodeVisitor >> visitRShiftExpr: aRShiftExpr [
	^ self visitRoot: aRShiftExpr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitRaise: aRaise [
	^ self visitRoot: aRaise
]

{ #category : #generated }
TPyRootNodeVisitor >> visitReturn: aReturn [
	^ self visitRoot: aReturn
]

{ #category : #generated }
TPyRootNodeVisitor >> visitRoot: aRoot [
	^ self visitSmaCCParseNode: aRoot
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSimpleStmt: aSimpleStmt [
	^ self visitRoot: aSimpleStmt
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSingleInput: aSingleInput [
	^ self visitRoot: aSingleInput
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSliceop: aSliceop [
	^ self visitRoot: aSliceop
]

{ #category : #generated }
TPyRootNodeVisitor >> visitString: aString [
	^ self visitRoot: aString
]

{ #category : #generated }
TPyRootNodeVisitor >> visitStrings: aStrings [
	^ self visitRoot: aStrings
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSubscript: aSubscript [
	^ self visitRoot: aSubscript
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSymbol: aSymbol [
	^ self visitRoot: aSymbol
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTerm: aTerm [
	^ self visitRoot: aTerm
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTestTestOpt: aTestTestOpt [
	^ self visitRoot: aTestTestOpt
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTestlist1: aTestlist1 [
	^ self visitRoot: aTestlist1
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTestlist: aTestlist [
	^ self visitRoot: aTestlist
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTestlistComp: aTestlistComp [
	^ self visitRoot: aTestlistComp
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTrailer: aTrailer [
	^ self visitRoot: aTrailer
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTry: aTry [
	^ self visitRoot: aTry
]

{ #category : #generated }
TPyRootNodeVisitor >> visitVBarExpr: aVBarExpr [
	^ self visitRoot: aVBarExpr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitVarArgList: aVarArgList [
	^ self visitRoot: aVarArgList
]

{ #category : #generated }
TPyRootNodeVisitor >> visitWhile: aWhile [
	^ self visitRoot: aWhile
]

{ #category : #generated }
TPyRootNodeVisitor >> visitWith: aWith [
	^ self visitRoot: aWith
]

{ #category : #generated }
TPyRootNodeVisitor >> visitWithItem: aWithItem [
	^ self visitRoot: aWithItem
]

{ #category : #generated }
TPyRootNodeVisitor >> visitXorExpr: aXorExpr [
	^ self visitRoot: aXorExpr
]

{ #category : #generated }
TPyRootNodeVisitor >> visitYield: aYield [
	^ self visitRoot: aYield
]
