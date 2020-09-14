Trait {
	#name : #TVBNetProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAddHandlerDeclaration: anAddHandlerDeclaration [
	^ self visitProgram: anAddHandlerDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAddHandlerStatement: anAddHandlerStatement [
	^ self visitStatement: anAddHandlerStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAddressOfExpression: anAddressOfExpression [
	^ self visitExpression: anAddressOfExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAliasImportsClause: anAliasImportsClause [
	^ self visitProgram: anAliasImportsClause
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAnonymousCreationExpression: anAnonymousCreationExpression [
	^ self visitExpression: anAnonymousCreationExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitArrayCreationExpression: anArrayCreationExpression [
	^ self visitExpression: anArrayCreationExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitArrayTypeModifier: anArrayTypeModifier [
	^ self visitProgram: anArrayTypeModifier
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitArrayTypeName: anArrayTypeName [
	^ self visitProgram: anArrayTypeName
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAssignmentStatement: anAssignmentStatement [
	^ self visitStatement: anAssignmentStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAttributeBlock: anAttributeBlock [
	^ self visitProgram: anAttributeBlock
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAutoPropertyMemberDeclaration: anAutoPropertyMemberDeclaration [
	^ self visitProgram: anAutoPropertyMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitAwaitExpression: anAwaitExpression [
	^ self visitExpression: anAwaitExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitBoundExpression: aBoundExpression [
	^ self visitProgram: aBoundExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitBuiltInTypeName: aBuiltInTypeName [
	^ self visitProgram: aBuiltInTypeName
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCaseClause: aCaseClause [
	^ self visitProgram: aCaseClause
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCaseElseStatement: aCaseElseStatement [
	^ self visitProgram: aCaseElseStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCaseStatement: aCaseStatement [
	^ self visitProgram: aCaseStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCatchStatement: aCatchStatement [
	^ self visitProgram: aCatchStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCharacterLiteral: aCharacterLiteral [
	^ self visitLiteral: aCharacterLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitClassConstraint: aClassConstraint [
	^ self visitProgram: aClassConstraint
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitClassDeclaration: aClassDeclaration [
	^ self visitProgram: aClassDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCollectionInitializer: aCollectionInitializer [
	^ self visitExpression: aCollectionInitializer
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitConstantDeclarator: aConstantDeclarator [
	^ self visitProgram: aConstantDeclarator
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitConstantMemberDeclaration: aConstantMemberDeclaration [
	^ self visitProgram: aConstantMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitConstructorMemberDeclaration: aConstructorMemberDeclaration [
	^ self visitProgram: aConstructorMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitCustomEventMemberDeclaration: aCustomEventMemberDeclaration [
	^ self visitProgram: aCustomEventMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitDateLiteral: aDateLiteral [
	^ self visitLiteral: aDateLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitDelegateDeclaration: aDelegateDeclaration [
	^ self visitProgram: aDelegateDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitDictionaryAccessExpression: aDictionaryAccessExpression [
	^ self visitExpression: aDictionaryAccessExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitDoBottomLoopStatement: aDoBottomLoopStatement [
	^ self visitDoLoopStatement: aDoBottomLoopStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitDoLoopStatement: aDoLoopStatement [
	^ self visitStatement: aDoLoopStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitDoTopLoopStatement: aDoTopLoopStatement [
	^ self visitDoLoopStatement: aDoTopLoopStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitElseIfStatement: anElseIfStatement [
	^ self visitProgram: anElseIfStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitElseStatement: anElseStatement [
	^ self visitProgram: anElseStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitEndStatement: anEndStatement [
	^ self visitStatement: anEndStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitEnumDeclaration: anEnumDeclaration [
	^ self visitProgram: anEnumDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitEnumMemberDeclaration: anEnumMemberDeclaration [
	^ self visitProgram: anEnumMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitEraseStatement: anEraseStatement [
	^ self visitStatement: anEraseStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitErrorStatement: anErrorStatement [
	^ self visitStatement: anErrorStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitEventMemberSpecifier: anEventMemberSpecifier [
	^ self visitProgram: anEventMemberSpecifier
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitExitStatement: anExitStatement [
	^ self visitStatement: anExitStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitExpressionRangeVariableDeclaration: anExpressionRangeVariableDeclaration [
	^ self visitProgram: anExpressionRangeVariableDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitExternalFunctionDeclaration: anExternalFunctionDeclaration [
	^ self visitProgram: anExternalFunctionDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitExternalSubDeclaration: anExternalSubDeclaration [
	^ self visitProgram: anExternalSubDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitFieldInitializer: aFieldInitializer [
	^ self visitProgram: aFieldInitializer
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitFinallyStatement: aFinallyStatement [
	^ self visitProgram: aFinallyStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitFloatingPointLiteral: aFloatingPointLiteral [
	^ self visitLiteral: aFloatingPointLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitForEachStatement: aForEachStatement [
	^ self visitStatement: aForEachStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	^ self visitProgram: aFunctionDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitFunctionLambdaExpression: aFunctionLambdaExpression [
	^ self visitLambdaExpression: aFunctionLambdaExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitFunctionSignature: aFunctionSignature [
	^ self visitProgram: aFunctionSignature
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitGetTypeExpression: aGetTypeExpression [
	^ self visitExpression: aGetTypeExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitGlobal: aGlobal [
	^ self visitProgram: aGlobal
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitGoToStatement: aGoToStatement [
	^ self visitStatement: aGoToStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitGotoClause: aGotoClause [
	^ self visitProgram: aGotoClause
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitImportsStatement: anImportsStatement [
	^ self visitProgram: anImportsStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitInstanceExpression: anInstanceExpression [
	^ self visitExpression: anInstanceExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitIntegerLiteral: anIntegerLiteral [
	^ self visitLiteral: anIntegerLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitInterfaceDeclaration: anInterfaceDeclaration [
	^ self visitProgram: anInterfaceDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitInterfaceMemberSpecifier: anInterfaceMemberSpecifier [
	^ self visitProgram: anInterfaceMemberSpecifier
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitInvocationExpression: anInvocationExpression [
	^ self visitExpression: anInvocationExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitInvocationStatement: anInvocationStatement [
	^ self visitStatement: anInvocationStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitLabelDeclarationStatement: aLabelDeclarationStatement [
	^ self visitStatement: aLabelDeclarationStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitLineStatement: aLineStatement [
	^ self visitProgram: aLineStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitLocalDeclarationStatement: aLocalDeclarationStatement [
	^ self visitStatement: aLocalDeclarationStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitLoopControlVariable: aLoopControlVariable [
	^ self visitProgram: aLoopControlVariable
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitMemberAccessExpression: aMemberAccessExpression [
	^ self visitExpression: aMemberAccessExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitMembersImportsClause: aMembersImportsClause [
	^ self visitProgram: aMembersImportsClause
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitMidAssignmentStatement: aMidAssignmentStatement [
	^ self visitStatement: aMidAssignmentStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitModuleDeclaration: aModuleDeclaration [
	^ self visitProgram: aModuleDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitMyBase: aMyBase [
	^ self visitProgram: aMyBase
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitMyClass: aMyClass [
	^ self visitProgram: aMyClass
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitNamespaceDeclaration: aNamespaceDeclaration [
	^ self visitProgram: aNamespaceDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitNewConstraint: aNewConstraint [
	^ self visitProgram: aNewConstraint
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitNothingLiteral: aNothingLiteral [
	^ self visitLiteral: aNothingLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitNullableTypeName: aNullableTypeName [
	^ self visitProgram: aNullableTypeName
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitObjectCollectionInitializer: anObjectCollectionInitializer [
	^ self visitProgram: anObjectCollectionInitializer
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitObjectCreationExpression: anObjectCreationExpression [
	^ self visitExpression: anObjectCreationExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitObjectMemberInitializer: anObjectMemberInitializer [
	^ self visitProgram: anObjectMemberInitializer
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitOnErrorStatement: anOnErrorStatement [
	^ self visitStatement: anOnErrorStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitOperatorDeclaration: anOperatorDeclaration [
	^ self visitProgram: anOperatorDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitOptionStatement: anOptionStatement [
	^ self visitProgram: anOptionStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitOrderExpression: anOrderExpression [
	^ self visitProgram: anOrderExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitParameter: aParameter [
	^ self visitProgram: aParameter
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitParameterIdentifier: aParameterIdentifier [
	^ self visitProgram: aParameterIdentifier
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitPrimitiveCastExpression: aPrimitiveCastExpression [
	^ self visitExpression: aPrimitiveCastExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitPropertyGetDeclaration: aPropertyGetDeclaration [
	^ self visitProgram: aPropertyGetDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitPropertyMemberDeclaration: aPropertyMemberDeclaration [
	^ self visitProgram: aPropertyMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitPropertySetDeclaration: aPropertySetDeclaration [
	^ self visitProgram: aPropertySetDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitQualifiedOpenTypeName: aQualifiedOpenTypeName [
	^ self visitProgram: aQualifiedOpenTypeName
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitQualifiedTypeName: aQualifiedTypeName [
	^ self visitProgram: aQualifiedTypeName
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitQueryExpression: aQueryExpression [
	^ self visitExpression: aQueryExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitRaiseEventDeclaration: aRaiseEventDeclaration [
	^ self visitProgram: aRaiseEventDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitRaiseEventStatement: aRaiseEventStatement [
	^ self visitStatement: aRaiseEventStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitRedimClause: aRedimClause [
	^ self visitProgram: aRedimClause
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitRedimStatement: aRedimStatement [
	^ self visitStatement: aRedimStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitRegularEventMemberDeclaration: aRegularEventMemberDeclaration [
	^ self visitProgram: aRegularEventMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitRemoveHandlerDeclaration: aRemoveHandlerDeclaration [
	^ self visitProgram: aRemoveHandlerDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitRemoveHandlerStatement: aRemoveHandlerStatement [
	^ self visitStatement: aRemoveHandlerStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitResumeClause: aResumeClause [
	^ self visitProgram: aResumeClause
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitResumeStatement: aResumeStatement [
	^ self visitStatement: aResumeStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitSelectStatement: aSelectStatement [
	^ self visitStatement: aSelectStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitSimpleNameExpression: aSimpleNameExpression [
	^ self visitExpression: aSimpleNameExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitStopStatement: aStopStatement [
	^ self visitStatement: aStopStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitStructureConstraint: aStructureConstraint [
	^ self visitProgram: aStructureConstraint
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitStructureDeclaration: aStructureDeclaration [
	^ self visitProgram: aStructureDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitSubDeclaration: aSubDeclaration [
	^ self visitProgram: aSubDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitSubLambdaExpression: aSubLambdaExpression [
	^ self visitLambdaExpression: aSubLambdaExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitSubSignature: aSubSignature [
	^ self visitProgram: aSubSignature
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitSyncLockStatement: aSyncLockStatement [
	^ self visitStatement: aSyncLockStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitThrowStatement: aThrowStatement [
	^ self visitStatement: aThrowStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitTypeConstraint: aTypeConstraint [
	^ self visitProgram: aTypeConstraint
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitTypeOfIsExpression: aTypeOfIsExpression [
	^ self visitExpression: aTypeOfIsExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitTypeParameter: aTypeParameter [
	^ self visitProgram: aTypeParameter
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitTypeParameterList: aTypeParameterList [
	^ self visitProgram: aTypeParameterList
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitUsingStatement: anUsingStatement [
	^ self visitStatement: anUsingStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitVariableDeclarator: aVariableDeclarator [
	^ self visitProgram: aVariableDeclarator
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitVariableIdentifier: aVariableIdentifier [
	^ self visitProgram: aVariableIdentifier
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitVariableMemberDeclaration: aVariableMemberDeclaration [
	^ self visitProgram: aVariableMemberDeclaration
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitVariablePropertyInitializer: aVariablePropertyInitializer [
	^ self visitProgram: aVariablePropertyInitializer
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitWithStatement: aWithStatement [
	^ self visitStatement: aWithStatement
]

{ #category : #generated }
TVBNetProgramNodeVisitor >> visitYieldStatement: aYieldStatement [
	^ self visitStatement: aYieldStatement
]
