Trait {
	#name : #TPyRootNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Python'
}

{ #category : #generated }
TPyRootNodeVisitor >> visitArgument: anArgument [
	^ self visitRoot: anArgument
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAsName: anAsName [
	^ self visitName: anAsName
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAssertStatement: anAssertStatement [
	^ self visitStatement: anAssertStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAssignmentExpression: anAssignmentExpression [
	^ self visitExpression: anAssignmentExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAssignmentStatement: anAssignmentStatement [
	^ self visitStatement: anAssignmentStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitAwaitExpression: anAwaitExpression [
	^ self visitExpression: anAwaitExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitBacktickExpression: aBacktickExpression [
	^ self visitExpression: aBacktickExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitStatement: aBreakStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitClassDefinition: aClassDefinition [
	^ self visitStatement: aClassDefinition
]

{ #category : #generated }
TPyRootNodeVisitor >> visitComparisonExpression: aComparisonExpression [
	^ self visitBinaryExpression: aComparisonExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitComprehension: aComprehension [
	^ self visitRoot: aComprehension
]

{ #category : #generated }
TPyRootNodeVisitor >> visitComprehensionDictionaryItem: aComprehensionDictionaryItem [
	^ self visitRoot: aComprehensionDictionaryItem
]

{ #category : #generated }
TPyRootNodeVisitor >> visitComprehensionFor: aComprehensionFor [
	^ self visitRoot: aComprehensionFor
]

{ #category : #generated }
TPyRootNodeVisitor >> visitComprehensionIf: aComprehensionIf [
	^ self visitRoot: aComprehensionIf
]

{ #category : #generated }
TPyRootNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDecoratorExpression: aDecoratorExpression [
	^ self visitFunctionCallExpression: aDecoratorExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDelStatement: aDelStatement [
	^ self visitStatement: aDelStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDictionaryExpression: aDictionaryExpression [
	^ self visitExpression: aDictionaryExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitDictionaryItem: aDictionaryItem [
	^ self visitRoot: aDictionaryItem
]

{ #category : #generated }
TPyRootNodeVisitor >> visitElif: anElif [
	^ self visitRoot: anElif
]

{ #category : #generated }
TPyRootNodeVisitor >> visitEllipsis: anEllipsis [
	^ self visitExpression: anEllipsis
]

{ #category : #generated }
TPyRootNodeVisitor >> visitElse: anElse [
	^ self visitRoot: anElse
]

{ #category : #generated }
TPyRootNodeVisitor >> visitEval: anEval [
	^ self visitRoot: anEval
]

{ #category : #generated }
TPyRootNodeVisitor >> visitExceptClause: anExceptClause [
	^ self visitRoot: anExceptClause
]

{ #category : #generated }
TPyRootNodeVisitor >> visitExecStatement: anExecStatement [
	^ self visitStatement: anExecStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitExpression: anExpression [
	^ self visitRoot: anExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFieldAccessExpression: aFieldAccessExpression [
	^ self visitExpression: aFieldAccessExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFile: aFile [
	^ self visitRoot: aFile
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFinally: aFinally [
	^ self visitRoot: aFinally
]

{ #category : #generated }
TPyRootNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFunctionCallExpression: aFunctionCallExpression [
	^ self visitExpression: aFunctionCallExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitFunctionDefinition: aFunctionDefinition [
	^ self visitStatement: aFunctionDefinition
]

{ #category : #generated }
TPyRootNodeVisitor >> visitGlobalStatement: aGlobalStatement [
	^ self visitStatement: aGlobalStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitIfExpression: anIfExpression [
	^ self visitExpression: anIfExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitImportStatement: anImportStatement [
	^ self visitStatement: anImportStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitInit: anInit [
	^ self visitRoot: anInit
]

{ #category : #generated }
TPyRootNodeVisitor >> visitKeywordParameter: aKeywordParameter [
	^ self visitParameter: aKeywordParameter
]

{ #category : #generated }
TPyRootNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitListExpression: aListExpression [
	^ self visitExpression: aListExpression
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
TPyRootNodeVisitor >> visitListParameter: aListParameter [
	^ self visitParameter: aListParameter
]

{ #category : #generated }
TPyRootNodeVisitor >> visitMetaclass: aMetaclass [
	^ self visitRoot: aMetaclass
]

{ #category : #generated }
TPyRootNodeVisitor >> visitName: aName [
	^ self visitRoot: aName
]

{ #category : #generated }
TPyRootNodeVisitor >> visitNumber: aNumber [
	^ self visitExpression: aNumber
]

{ #category : #generated }
TPyRootNodeVisitor >> visitParameter: aParameter [
	^ self visitRoot: aParameter
]

{ #category : #generated }
TPyRootNodeVisitor >> visitParameterList: aParameterList [
	^ self visitRoot: aParameterList
]

{ #category : #generated }
TPyRootNodeVisitor >> visitPassStatement: aPassStatement [
	^ self visitStatement: aPassStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitPrintStatement: aPrintStatement [
	^ self visitStatement: aPrintStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitRaiseStatement: aRaiseStatement [
	^ self visitStatement: aRaiseStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitRelativeName: aRelativeName [
	^ self visitRoot: aRelativeName
]

{ #category : #generated }
TPyRootNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitReturnTypeAnnotation: aReturnTypeAnnotation [
	^ self visitRoot: aReturnTypeAnnotation
]

{ #category : #generated }
TPyRootNodeVisitor >> visitRoot: aRoot [
	^ self visitSmaCCParseNode: aRoot
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSetExpression: aSetExpression [
	^ self visitExpression: aSetExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSlice: aSlice [
	^ self visitRoot: aSlice
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSpreadExpression: aSpreadExpression [
	^ self visitExpression: aSpreadExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitStatement: aStatement [
	^ self visitRoot: aStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitString: aString [
	^ self visitExpression: aString
]

{ #category : #generated }
TPyRootNodeVisitor >> visitSubscriptExpression: aSubscriptExpression [
	^ self visitExpression: aSubscriptExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTupleExpression: aTupleExpression [
	^ self visitExpression: aTupleExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitTypedVariableExpression: aTypedVariableExpression [
	^ self visitVariableExpression: aTypedVariableExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitVariableExpression: aVariableExpression [
	^ self visitExpression: aVariableExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitWithItem: aWithItem [
	^ self visitRoot: aWithItem
]

{ #category : #generated }
TPyRootNodeVisitor >> visitWithStatement: aWithStatement [
	^ self visitStatement: aWithStatement
]

{ #category : #generated }
TPyRootNodeVisitor >> visitYieldExpression: aYieldExpression [
	^ self visitExpression: aYieldExpression
]

{ #category : #generated }
TPyRootNodeVisitor >> visitYieldStatement: aYieldStatement [
	^ self visitStatement: aYieldStatement
]
