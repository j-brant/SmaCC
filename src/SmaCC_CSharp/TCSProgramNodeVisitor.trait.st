Trait {
	#name : #TCSProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
TCSProgramNodeVisitor >> visitAddAccessorDeclaration: anAddAccessorDeclaration [
	^ self visitProgram: anAddAccessorDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitAnonymousFunctionParameter: anAnonymousFunctionParameter [
	^ self visitProgram: anAnonymousFunctionParameter
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitAnonymousMethodExpression: anAnonymousMethodExpression [
	^ self visitExpression: anAnonymousMethodExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitAnonymousObjectCreationExpression: anAnonymousObjectCreationExpression [
	^ self visitExpression: anAnonymousObjectCreationExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitArgument: anArgument [
	^ self visitProgram: anArgument
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitArrayCreationExpression: anArrayCreationExpression [
	^ self visitExpression: anArrayCreationExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitArrayInitializer: anArrayInitializer [
	^ self visitProgram: anArrayInitializer
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitArrayParameter: anArrayParameter [
	^ self visitProgram: anArrayParameter
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitArrayType: anArrayType [
	^ self visitType: anArrayType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitAssignment: anAssignment [
	^ self visitExpression: anAssignment
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitAttributeValue: anAttributeValue [
	^ self visitProgram: anAttributeValue
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitAwaitExpression: anAwaitExpression [
	^ self visitExpression: anAwaitExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitBaseAccess: aBaseAccess [
	^ self visitExpression: aBaseAccess
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitBaseExpression: aBaseExpression [
	^ self visitExpression: aBaseExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitBlockStatement: aBlockStatement [
	^ self visitStatement: aBlockStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitBooleanLiteralExpression: aBooleanLiteralExpression [
	^ self visitLiteralExpression: aBooleanLiteralExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitStatement: aBreakStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitCatchClause: aCatchClause [
	^ self visitProgram: aCatchClause
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitCharacterLiteralExpression: aCharacterLiteralExpression [
	^ self visitLiteralExpression: aCharacterLiteralExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitCheckedExpression: aCheckedExpression [
	^ self visitExpression: aCheckedExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitCheckedStatement: aCheckedStatement [
	^ self visitStatement: aCheckedStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitClassDeclaration: aClassDeclaration [
	^ self visitDeclaration: aClassDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitCollectionInitializer: aCollectionInitializer [
	^ self visitProgram: aCollectionInitializer
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitCompilationUnit: aCompilationUnit [
	^ self visitProgram: aCompilationUnit
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitConstantDeclaration: aConstantDeclaration [
	^ self visitDeclaration: aConstantDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitConstantDeclarator: aConstantDeclarator [
	^ self visitProgram: aConstantDeclarator
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitConstructorConstraint: aConstructorConstraint [
	^ self visitProgram: aConstructorConstraint
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitConstructorDeclaration: aConstructorDeclaration [
	^ self visitDeclaration: aConstructorDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitConstructorInitializer: aConstructorInitializer [
	^ self visitProgram: aConstructorInitializer
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDeclaration: aDeclaration [
	^ self visitProgram: aDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDeclarationExpression: aDeclarationExpression [
	^ self visitExpression: aDeclarationExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDeclarationStatement: aDeclarationStatement [
	^ self visitStatement: aDeclarationStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDeconstructionExpression: aDeconstructionExpression [
	^ self visitExpression: aDeconstructionExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDeconstructionTuple: aDeconstructionTuple [
	^ self visitProgram: aDeconstructionTuple
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDefaultValueExpression: aDefaultValueExpression [
	^ self visitExpression: aDefaultValueExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDelegateCreationExpression: aDelegateCreationExpression [
	^ self visitExpression: aDelegateCreationExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDelegateDeclaration: aDelegateDeclaration [
	^ self visitDeclaration: aDelegateDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitDoStatement: aDoStatement [
	^ self visitStatement: aDoStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitElementAccess: anElementAccess [
	^ self visitExpression: anElementAccess
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitElementInitializer: anElementInitializer [
	^ self visitProgram: anElementInitializer
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitStatement: anEmptyStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitEnumDeclaration: anEnumDeclaration [
	^ self visitDeclaration: anEnumDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitEventDeclaration: anEventDeclaration [
	^ self visitDeclaration: anEventDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitExceptionFilter: anExceptionFilter [
	^ self visitProgram: anExceptionFilter
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitExternAliasDirective: anExternAliasDirective [
	^ self visitProgram: anExternAliasDirective
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFieldDeclaration: aFieldDeclaration [
	^ self visitDeclaration: aFieldDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFinalizerDeclaration: aFinalizerDeclaration [
	^ self visitProgram: aFinalizerDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFinallyClause: aFinallyClause [
	^ self visitProgram: aFinallyClause
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFixedParameter: aFixedParameter [
	^ self visitProgram: aFixedParameter
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFixedPointerDeclarator: aFixedPointerDeclarator [
	^ self visitProgram: aFixedPointerDeclarator
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFixedSizeBufferDeclaration: aFixedSizeBufferDeclaration [
	^ self visitDeclaration: aFixedSizeBufferDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFixedSizeBufferDeclarator: aFixedSizeBufferDeclarator [
	^ self visitProgram: aFixedSizeBufferDeclarator
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitFixedStatement: aFixedStatement [
	^ self visitStatement: aFixedStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitForeachStatement: aForeachStatement [
	^ self visitStatement: aForeachStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitGetAccessorDeclaration: aGetAccessorDeclaration [
	^ self visitProgram: aGetAccessorDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitGotoStatement: aGotoStatement [
	^ self visitStatement: aGotoStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitIndexerDeclaration: anIndexerDeclaration [
	^ self visitDeclaration: anIndexerDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitIntegerLiteralExpression: anIntegerLiteralExpression [
	^ self visitLiteralExpression: anIntegerLiteralExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitInterfaceDeclaration: anInterfaceDeclaration [
	^ self visitDeclaration: anInterfaceDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitInterfaceEventDeclaration: anInterfaceEventDeclaration [
	^ self visitDeclaration: anInterfaceEventDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitInterfaceMethodDeclaration: anInterfaceMethodDeclaration [
	^ self visitDeclaration: anInterfaceMethodDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitInterpolatedStringExpression: anInterpolatedStringExpression [
	^ self visitExpression: anInterpolatedStringExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitInterpolation: anInterpolation [
	^ self visitProgram: anInterpolation
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitInvocationAccess: anInvocationAccess [
	^ self visitProgram: anInvocationAccess
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitInvocationExpression: anInvocationExpression [
	^ self visitExpression: anInvocationExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLabeledStatement: aLabeledStatement [
	^ self visitStatement: aLabeledStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLiteralExpression: aLiteralExpression [
	^ self visitExpression: aLiteralExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLocalConstantDeclaration: aLocalConstantDeclaration [
	^ self visitDeclaration: aLocalConstantDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLocalFunctionDeclarationStatement: aLocalFunctionDeclarationStatement [
	^ self visitStatement: aLocalFunctionDeclarationStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLocalVariableDeclaration: aLocalVariableDeclaration [
	^ self visitDeclaration: aLocalVariableDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLocalVariableDeclarator: aLocalVariableDeclarator [
	^ self visitProgram: aLocalVariableDeclarator
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitLockStatement: aLockStatement [
	^ self visitStatement: aLockStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitMemberAccess: aMemberAccess [
	^ self visitExpression: aMemberAccess
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitMemberDeclarator: aMemberDeclarator [
	^ self visitProgram: aMemberDeclarator
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitMemberInitializer: aMemberInitializer [
	^ self visitProgram: aMemberInitializer
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitMethodBody: aMethodBody [
	^ self visitProgram: aMethodBody
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitMethodDeclaration: aMethodDeclaration [
	^ self visitDeclaration: aMethodDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitMethodHeader: aMethodHeader [
	^ self visitProgram: aMethodHeader
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitNamedArgument: aNamedArgument [
	^ self visitProgram: aNamedArgument
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitNamedEntity: aNamedEntity [
	^ self visitExpression: aNamedEntity
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitNameofExpression: aNameofExpression [
	^ self visitExpression: aNameofExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitNamespaceDeclaration: aNamespaceDeclaration [
	^ self visitDeclaration: aNamespaceDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitNullConditionalMemberAccess: aNullConditionalMemberAccess [
	^ self visitMemberAccess: aNullConditionalMemberAccess
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitNullLiteralExpression: aNullLiteralExpression [
	^ self visitLiteralExpression: aNullLiteralExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitNullableType: aNullableType [
	^ self visitType: aNullableType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitObjectCreationExpression: anObjectCreationExpression [
	^ self visitExpression: anObjectCreationExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitObjectInitializer: anObjectInitializer [
	^ self visitProgram: anObjectInitializer
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitOperatorDeclaration: anOperatorDeclaration [
	^ self visitDeclaration: anOperatorDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitPointerMemberAccess: aPointerMemberAccess [
	^ self visitExpression: aPointerMemberAccess
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitPointerType: aPointerType [
	^ self visitType: aPointerType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitPostExpression: aPostExpression [
	^ self visitExpression: aPostExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitPrefixExpression: aPrefixExpression [
	^ self visitExpression: aPrefixExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitPrimaryConstraint: aPrimaryConstraint [
	^ self visitProgram: aPrimaryConstraint
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitPropertyDeclaration: aPropertyDeclaration [
	^ self visitDeclaration: aPropertyDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitQualifiedAliasMember: aQualifiedAliasMember [
	^ self visitType: aQualifiedAliasMember
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitQualifiedIdentifier: aQualifiedIdentifier [
	^ self visitProgram: aQualifiedIdentifier
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitQueryExpression: aQueryExpression [
	^ self visitExpression: aQueryExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitRankSpecifier: aRankSpecifier [
	^ self visitProgram: aRankSpecifier
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitRealLiteralExpression: aRealLiteralExpression [
	^ self visitLiteralExpression: aRealLiteralExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitRefExpression: aRefExpression [
	^ self visitExpression: aRefExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitRemoveAccessorDeclaration: aRemoveAccessorDeclaration [
	^ self visitProgram: aRemoveAccessorDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitSetAccessorDeclaration: aSetAccessorDeclaration [
	^ self visitProgram: aSetAccessorDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitSimpleName: aSimpleName [
	^ self visitExpression: aSimpleName
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitSimpleType: aSimpleType [
	^ self visitType: aSimpleType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitSizeofExpression: aSizeofExpression [
	^ self visitExpression: aSizeofExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitStackallocExpression: aStackallocExpression [
	^ self visitExpression: aStackallocExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitStatementList: aStatementList [
	^ self visitProgram: aStatementList
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitStaticConstructorDeclaration: aStaticConstructorDeclaration [
	^ self visitDeclaration: aStaticConstructorDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitStringLiteralExpression: aStringLiteralExpression [
	^ self visitLiteralExpression: aStringLiteralExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitStructDeclaration: aStructDeclaration [
	^ self visitDeclaration: aStructDeclaration
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitSwitchLabel: aSwitchLabel [
	^ self visitProgram: aSwitchLabel
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitSwitchSection: aSwitchSection [
	^ self visitProgram: aSwitchSection
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitSwitchStatement: aSwitchStatement [
	^ self visitStatement: aSwitchStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitThisAccess: aThisAccess [
	^ self visitExpression: aThisAccess
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitThrowExpression: aThrowExpression [
	^ self visitExpression: aThrowExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitThrowStatement: aThrowStatement [
	^ self visitStatement: aThrowStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTupleElement: aTupleElement [
	^ self visitProgram: aTupleElement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTupleExpression: aTupleExpression [
	^ self visitExpression: aTupleExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTupleType: aTupleType [
	^ self visitType: aTupleType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTupleTypeElement: aTupleTypeElement [
	^ self visitProgram: aTupleTypeElement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTypeArgumentList: aTypeArgumentList [
	^ self visitProgram: aTypeArgumentList
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTypeConstraint: aTypeConstraint [
	^ self visitProgram: aTypeConstraint
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTypeExpression: aTypeExpression [
	^ self visitExpression: aTypeExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTypeName: aTypeName [
	^ self visitType: aTypeName
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTypeParameterConstraintsClause: aTypeParameterConstraintsClause [
	^ self visitProgram: aTypeParameterConstraintsClause
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTypeParameterList: aTypeParameterList [
	^ self visitProgram: aTypeParameterList
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitTypeofExpression: aTypeofExpression [
	^ self visitExpression: aTypeofExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUnboundTypeName: anUnboundTypeName [
	^ self visitProgram: anUnboundTypeName
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUncheckedExpression: anUncheckedExpression [
	^ self visitExpression: anUncheckedExpression
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUncheckedStatement: anUncheckedStatement [
	^ self visitStatement: anUncheckedStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUnsafeStatement: anUnsafeStatement [
	^ self visitStatement: anUnsafeStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUsingAliasDirective: anUsingAliasDirective [
	^ self visitUsingDirective: anUsingAliasDirective
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUsingDirective: anUsingDirective [
	^ self visitProgram: anUsingDirective
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUsingNamespaceDirective: anUsingNamespaceDirective [
	^ self visitUsingDirective: anUsingNamespaceDirective
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUsingStatement: anUsingStatement [
	^ self visitStatement: anUsingStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitUsingStaticDirective: anUsingStaticDirective [
	^ self visitUsingDirective: anUsingStaticDirective
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitVarType: aVarType [
	^ self visitType: aVarType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitVariableDeclarator: aVariableDeclarator [
	^ self visitProgram: aVariableDeclarator
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitVariantTypeParameterList: aVariantTypeParameterList [
	^ self visitTypeParameterList: aVariantTypeParameterList
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitVoidType: aVoidType [
	^ self visitType: aVoidType
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]

{ #category : #generated }
TCSProgramNodeVisitor >> visitYieldStatement: aYieldStatement [
	^ self visitStatement: aYieldStatement
]
