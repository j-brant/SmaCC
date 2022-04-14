Trait {
	#name : #TRustProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
TRustProgramNodeVisitor >> visitArrayExpression: anArrayExpression [
	^ self visitExpression: anArrayExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitArrayType: anArrayType [
	^ self visitType: anArrayType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitAssignmentExpression: anAssignmentExpression [
	^ self visitExpression: anAssignmentExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitAsyncBlockExpression: anAsyncBlockExpression [
	^ self visitExpression: anAsyncBlockExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitAttributedExpression: anAttributedExpression [
	^ self visitExpression: anAttributedExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitAttributedMacroInvocation: anAttributedMacroInvocation [
	^ self visitProgram: anAttributedMacroInvocation
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitAwaitExpression: anAwaitExpression [
	^ self visitExpression: anAwaitExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitBlockExpression: aBlockExpression [
	^ self visitExpression: aBlockExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitBorrowExpression: aBorrowExpression [
	^ self visitExpression: aBorrowExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitBoxExpression: aBoxExpression [
	^ self visitExpression: aBoxExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitBoxPattern: aBoxPattern [
	^ self visitProgram: aBoxPattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitBreakExpression: aBreakExpression [
	^ self visitExpression: aBreakExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitCallExpression: aCallExpression [
	^ self visitExpression: aCallExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitClosureExpression: aClosureExpression [
	^ self visitExpression: aClosureExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitClosureParam: aClosureParam [
	^ self visitProgram: aClosureParam
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitConstParam: aConstParam [
	^ self visitProgram: aConstParam
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitConstant: aConstant [
	^ self visitProgram: aConstant
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitContinueExpression: aContinueExpression [
	^ self visitExpression: aContinueExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitCrate: aCrate [
	^ self visitProgram: aCrate
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitStatement: anEmptyStatement
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitEnum: anEnum [
	^ self visitProgram: anEnum
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitEnumItem: anEnumItem [
	^ self visitProgram: anEnumItem
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitErrorPropogationExpression: anErrorPropogationExpression [
	^ self visitExpression: anErrorPropogationExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitExternBlock: anExternBlock [
	^ self visitProgram: anExternBlock
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitExternCrate: anExternCrate [
	^ self visitProgram: anExternCrate
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitFieldExpression: aFieldExpression [
	^ self visitExpression: aFieldExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitForIteratorLoopExpression: aForIteratorLoopExpression [
	^ self visitExpression: aForIteratorLoopExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitFunction: aFunction [
	^ self visitProgram: aFunction
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitFunctionType: aFunctionType [
	^ self visitType: aFunctionType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitGenericArgBinding: aGenericArgBinding [
	^ self visitProgram: aGenericArgBinding
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitGenericArgs: aGenericArgs [
	^ self visitProgram: aGenericArgs
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitGenericParam: aGenericParam [
	^ self visitProgram: aGenericParam
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitGroupedExpression: aGroupedExpression [
	^ self visitExpression: aGroupedExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitGroupedPattern: aGroupedPattern [
	^ self visitProgram: aGroupedPattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitIdentifierPattern: anIdentifierPattern [
	^ self visitProgram: anIdentifierPattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitIfExpression: anIfExpression [
	^ self visitExpression: anIfExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitIfLetExpression: anIfLetExpression [
	^ self visitExpression: anIfLetExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitImplTraitType: anImplTraitType [
	^ self visitType: anImplTraitType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitImplementation: anImplementation [
	^ self visitProgram: anImplementation
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitIndexExpression: anIndexExpression [
	^ self visitExpression: anIndexExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitInferredType: anInferredType [
	^ self visitType: anInferredType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitItemStatement: anItemStatement [
	^ self visitStatement: anItemStatement
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitLetStatement: aLetStatement [
	^ self visitStatement: aLetStatement
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitLifetime: aLifetime [
	^ self visitProgram: aLifetime
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitLifetimeParam: aLifetimeParam [
	^ self visitProgram: aLifetimeParam
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitLifetimeWhereClauseItem: aLifetimeWhereClauseItem [
	^ self visitProgram: aLifetimeWhereClauseItem
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitLiteralExpression: aLiteralExpression [
	^ self visitExpression: aLiteralExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitLoopExpression: aLoopExpression [
	^ self visitExpression: aLoopExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMacroInvocation: aMacroInvocation [
	^ self visitExpression: aMacroInvocation
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMacroInvocationStatement: aMacroInvocationStatement [
	^ self visitStatement: aMacroInvocationStatement
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMacroMatch: aMacroMatch [
	^ self visitProgram: aMacroMatch
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMacroRule: aMacroRule [
	^ self visitProgram: aMacroRule
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMacroRulesDefinition: aMacroRulesDefinition [
	^ self visitProgram: aMacroRulesDefinition
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMacroToken: aMacroToken [
	^ self visitProgram: aMacroToken
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMatchArm: aMatchArm [
	^ self visitProgram: aMatchArm
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMatchExpression: aMatchExpression [
	^ self visitExpression: aMatchExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitMethodCallExpression: aMethodCallExpression [
	^ self visitExpression: aMethodCallExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitModule: aModule [
	^ self visitProgram: aModule
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitNeverType: aNeverType [
	^ self visitType: aNeverType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitParenthesizedType: aParenthesizedType [
	^ self visitType: aParenthesizedType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitPath: aPath [
	^ self visitProgram: aPath
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitPathExpression: aPathExpression [
	^ self visitExpression: aPathExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitQualifiedPathInType: aQualifiedPathInType [
	^ self visitType: aQualifiedPathInType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitRangeExpression: aRangeExpression [
	^ self visitExpression: aRangeExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitRangePattern: aRangePattern [
	^ self visitProgram: aRangePattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitRawPointerType: aRawPointerType [
	^ self visitType: aRawPointerType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitReferencePattern: aReferencePattern [
	^ self visitProgram: aReferencePattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitReferenceType: aReferenceType [
	^ self visitType: aReferenceType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitRestPattern: aRestPattern [
	^ self visitProgram: aRestPattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitReturnExpression: aReturnExpression [
	^ self visitExpression: aReturnExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitSlicePattern: aSlicePattern [
	^ self visitProgram: aSlicePattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitSliceType: aSliceType [
	^ self visitType: aSliceType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStatic: aStatic [
	^ self visitProgram: aStatic
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStruct: aStruct [
	^ self visitProgram: aStruct
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStructExprField: aStructExprField [
	^ self visitProgram: aStructExprField
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStructExprStruct: aStructExprStruct [
	^ self visitExpression: aStructExprStruct
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStructExprTuple: aStructExprTuple [
	^ self visitExpression: aStructExprTuple
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStructField: aStructField [
	^ self visitProgram: aStructField
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStructPattern: aStructPattern [
	^ self visitProgram: aStructPattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStructPatternEtCetera: aStructPatternEtCetera [
	^ self visitProgram: aStructPatternEtCetera
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitStructPatternField: aStructPatternField [
	^ self visitProgram: aStructPatternField
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTrait: aTrait [
	^ self visitProgram: aTrait
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTraitAlias: aTraitAlias [
	^ self visitProgram: aTraitAlias
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTraitBound: aTraitBound [
	^ self visitProgram: aTraitBound
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTraitObjectType: aTraitObjectType [
	^ self visitType: aTraitObjectType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTupleExpression: aTupleExpression [
	^ self visitExpression: aTupleExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTupleField: aTupleField [
	^ self visitProgram: aTupleField
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTupleIndexExpression: aTupleIndexExpression [
	^ self visitExpression: aTupleIndexExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTuplePattern: aTuplePattern [
	^ self visitProgram: aTuplePattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTupleStructPattern: aTupleStructPattern [
	^ self visitProgram: aTupleStructPattern
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTupleType: aTupleType [
	^ self visitType: aTupleType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTypeAlias: aTypeAlias [
	^ self visitProgram: aTypeAlias
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTypeBoundWhereClauseItem: aTypeBoundWhereClauseItem [
	^ self visitProgram: aTypeBoundWhereClauseItem
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTypeCastExpression: aTypeCastExpression [
	^ self visitExpression: aTypeCastExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTypeParam: aTypeParam [
	^ self visitProgram: aTypeParam
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitTypePath: aTypePath [
	^ self visitType: aTypePath
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitUnion: anUnion [
	^ self visitProgram: anUnion
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitUnsafeBlockExpression: anUnsafeBlockExpression [
	^ self visitExpression: anUnsafeBlockExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitUseDeclaration: anUseDeclaration [
	^ self visitProgram: anUseDeclaration
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitUseTree: anUseTree [
	^ self visitProgram: anUseTree
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitVisibility: aVisibility [
	^ self visitProgram: aVisibility
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitWhereClause: aWhereClause [
	^ self visitProgram: aWhereClause
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitWhileLetLoopExpression: aWhileLetLoopExpression [
	^ self visitExpression: aWhileLetLoopExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitWhileLoopExpression: aWhileLoopExpression [
	^ self visitExpression: aWhileLoopExpression
]

{ #category : #generated }
TRustProgramNodeVisitor >> visitWildcardPattern: aWildcardPattern [
	^ self visitProgram: aWildcardPattern
]
