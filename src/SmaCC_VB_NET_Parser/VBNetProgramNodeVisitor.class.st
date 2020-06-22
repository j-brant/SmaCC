Class {
	#name : #VBNetProgramNodeVisitor,
	#superclass : #SmaCCParseNodeVisitor,
	#category : #'SmaCC_VB_NET_Parser'
}

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAddHandlerDeclaration: anAddHandlerDeclaration [
	^ self visitProgram: anAddHandlerDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAddHandlerStatement: anAddHandlerStatement [
	^ self visitStatement: anAddHandlerStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAddressOfExpression: anAddressOfExpression [
	^ self visitExpression: anAddressOfExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAliasImportsClause: anAliasImportsClause [
	^ self visitProgram: anAliasImportsClause
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAnonymousCreationExpression: anAnonymousCreationExpression [
	^ self visitExpression: anAnonymousCreationExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitArrayCreationExpression: anArrayCreationExpression [
	^ self visitExpression: anArrayCreationExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitArrayTypeModifier: anArrayTypeModifier [
	^ self visitProgram: anArrayTypeModifier
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitArrayTypeName: anArrayTypeName [
	^ self visitProgram: anArrayTypeName
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAssignmentStatement: anAssignmentStatement [
	^ self visitStatement: anAssignmentStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAttributeBlock: anAttributeBlock [
	^ self visitProgram: anAttributeBlock
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAutoPropertyMemberDeclaration: anAutoPropertyMemberDeclaration [
	^ self visitProgram: anAutoPropertyMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitAwaitExpression: anAwaitExpression [
	^ self visitExpression: anAwaitExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitBoundExpression: aBoundExpression [
	^ self visitProgram: aBoundExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitBuiltInTypeName: aBuiltInTypeName [
	^ self visitProgram: aBuiltInTypeName
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCaseClause: aCaseClause [
	^ self visitProgram: aCaseClause
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCaseElseStatement: aCaseElseStatement [
	^ self visitProgram: aCaseElseStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCaseStatement: aCaseStatement [
	^ self visitProgram: aCaseStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCatchStatement: aCatchStatement [
	^ self visitProgram: aCatchStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCharacterLiteral: aCharacterLiteral [
	^ self visitLiteral: aCharacterLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitClassConstraint: aClassConstraint [
	^ self visitProgram: aClassConstraint
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitClassDeclaration: aClassDeclaration [
	^ self visitProgram: aClassDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCollectionInitializer: aCollectionInitializer [
	^ self visitExpression: aCollectionInitializer
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitConstantDeclarator: aConstantDeclarator [
	^ self visitProgram: aConstantDeclarator
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitConstantMemberDeclaration: aConstantMemberDeclaration [
	^ self visitProgram: aConstantMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitConstructorMemberDeclaration: aConstructorMemberDeclaration [
	^ self visitProgram: aConstructorMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitCustomEventMemberDeclaration: aCustomEventMemberDeclaration [
	^ self visitProgram: aCustomEventMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitDateLiteral: aDateLiteral [
	^ self visitLiteral: aDateLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitDelegateDeclaration: aDelegateDeclaration [
	^ self visitProgram: aDelegateDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitDictionaryAccessExpression: aDictionaryAccessExpression [
	^ self visitExpression: aDictionaryAccessExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitDoBottomLoopStatement: aDoBottomLoopStatement [
	^ self visitDoLoopStatement: aDoBottomLoopStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitDoLoopStatement: aDoLoopStatement [
	^ self visitStatement: aDoLoopStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitDoTopLoopStatement: aDoTopLoopStatement [
	^ self visitDoLoopStatement: aDoTopLoopStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitElseIfStatement: anElseIfStatement [
	^ self visitProgram: anElseIfStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitElseStatement: anElseStatement [
	^ self visitProgram: anElseStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitEndStatement: anEndStatement [
	^ self visitStatement: anEndStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitEnumDeclaration: anEnumDeclaration [
	^ self visitProgram: anEnumDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitEnumMemberDeclaration: anEnumMemberDeclaration [
	^ self visitProgram: anEnumMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitEraseStatement: anEraseStatement [
	^ self visitStatement: anEraseStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitErrorStatement: anErrorStatement [
	^ self visitStatement: anErrorStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitEventMemberSpecifier: anEventMemberSpecifier [
	^ self visitProgram: anEventMemberSpecifier
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitExitStatement: anExitStatement [
	^ self visitStatement: anExitStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitExpressionRangeVariableDeclaration: anExpressionRangeVariableDeclaration [
	^ self visitProgram: anExpressionRangeVariableDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitExternalFunctionDeclaration: anExternalFunctionDeclaration [
	^ self visitProgram: anExternalFunctionDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitExternalSubDeclaration: anExternalSubDeclaration [
	^ self visitProgram: anExternalSubDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitFieldInitializer: aFieldInitializer [
	^ self visitProgram: aFieldInitializer
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitFile: aFile [
	^ self visitProgram: aFile
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitFinallyStatement: aFinallyStatement [
	^ self visitProgram: aFinallyStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitFloatingPointLiteral: aFloatingPointLiteral [
	^ self visitLiteral: aFloatingPointLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitForEachStatement: aForEachStatement [
	^ self visitStatement: aForEachStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	^ self visitProgram: aFunctionDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitFunctionLambdaExpression: aFunctionLambdaExpression [
	^ self visitLambdaExpression: aFunctionLambdaExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitFunctionSignature: aFunctionSignature [
	^ self visitProgram: aFunctionSignature
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitGetTypeExpression: aGetTypeExpression [
	^ self visitExpression: aGetTypeExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitGlobal: aGlobal [
	^ self visitProgram: aGlobal
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitGoToStatement: aGoToStatement [
	^ self visitStatement: aGoToStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitGotoClause: aGotoClause [
	^ self visitProgram: aGotoClause
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitImportsStatement: anImportsStatement [
	^ self visitProgram: anImportsStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitInstanceExpression: anInstanceExpression [
	^ self visitExpression: anInstanceExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitIntegerLiteral: anIntegerLiteral [
	^ self visitLiteral: anIntegerLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitInterfaceDeclaration: anInterfaceDeclaration [
	^ self visitProgram: anInterfaceDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitInterfaceMemberSpecifier: anInterfaceMemberSpecifier [
	^ self visitProgram: anInterfaceMemberSpecifier
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitInvocationExpression: anInvocationExpression [
	^ self visitExpression: anInvocationExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitInvocationStatement: anInvocationStatement [
	^ self visitStatement: anInvocationStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitLabelDeclarationStatement: aLabelDeclarationStatement [
	^ self visitStatement: aLabelDeclarationStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitLineStatement: aLineStatement [
	^ self visitProgram: aLineStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitLocalDeclarationStatement: aLocalDeclarationStatement [
	^ self visitStatement: aLocalDeclarationStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitLoopControlVariable: aLoopControlVariable [
	^ self visitProgram: aLoopControlVariable
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitMemberAccessExpression: aMemberAccessExpression [
	^ self visitExpression: aMemberAccessExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitMembersImportsClause: aMembersImportsClause [
	^ self visitProgram: aMembersImportsClause
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitMidAssignmentStatement: aMidAssignmentStatement [
	^ self visitStatement: aMidAssignmentStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitModuleDeclaration: aModuleDeclaration [
	^ self visitProgram: aModuleDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitMyBase: aMyBase [
	^ self visitProgram: aMyBase
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitMyClass: aMyClass [
	^ self visitProgram: aMyClass
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitNamespaceDeclaration: aNamespaceDeclaration [
	^ self visitProgram: aNamespaceDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitNewConstraint: aNewConstraint [
	^ self visitProgram: aNewConstraint
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitNothingLiteral: aNothingLiteral [
	^ self visitLiteral: aNothingLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitNullableTypeName: aNullableTypeName [
	^ self visitProgram: aNullableTypeName
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitObjectCollectionInitializer: anObjectCollectionInitializer [
	^ self visitProgram: anObjectCollectionInitializer
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitObjectCreationExpression: anObjectCreationExpression [
	^ self visitExpression: anObjectCreationExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitObjectMemberInitializer: anObjectMemberInitializer [
	^ self visitProgram: anObjectMemberInitializer
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitOnErrorStatement: anOnErrorStatement [
	^ self visitStatement: anOnErrorStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitOperatorDeclaration: anOperatorDeclaration [
	^ self visitProgram: anOperatorDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitOptionStatement: anOptionStatement [
	^ self visitProgram: anOptionStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitOrderExpression: anOrderExpression [
	^ self visitProgram: anOrderExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitParameter: aParameter [
	^ self visitProgram: aParameter
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitParameterIdentifier: aParameterIdentifier [
	^ self visitProgram: aParameterIdentifier
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitPrimitiveCastExpression: aPrimitiveCastExpression [
	^ self visitExpression: aPrimitiveCastExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitPropertyGetDeclaration: aPropertyGetDeclaration [
	^ self visitProgram: aPropertyGetDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitPropertyMemberDeclaration: aPropertyMemberDeclaration [
	^ self visitProgram: aPropertyMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitPropertySetDeclaration: aPropertySetDeclaration [
	^ self visitProgram: aPropertySetDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitQualifiedOpenTypeName: aQualifiedOpenTypeName [
	^ self visitProgram: aQualifiedOpenTypeName
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitQualifiedTypeName: aQualifiedTypeName [
	^ self visitProgram: aQualifiedTypeName
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitQueryExpression: aQueryExpression [
	^ self visitExpression: aQueryExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitRaiseEventDeclaration: aRaiseEventDeclaration [
	^ self visitProgram: aRaiseEventDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitRaiseEventStatement: aRaiseEventStatement [
	^ self visitStatement: aRaiseEventStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitRedimClause: aRedimClause [
	^ self visitProgram: aRedimClause
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitRedimStatement: aRedimStatement [
	^ self visitStatement: aRedimStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitRegularEventMemberDeclaration: aRegularEventMemberDeclaration [
	^ self visitProgram: aRegularEventMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitRemoveHandlerDeclaration: aRemoveHandlerDeclaration [
	^ self visitProgram: aRemoveHandlerDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitRemoveHandlerStatement: aRemoveHandlerStatement [
	^ self visitStatement: aRemoveHandlerStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitResumeClause: aResumeClause [
	^ self visitProgram: aResumeClause
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitResumeStatement: aResumeStatement [
	^ self visitStatement: aResumeStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitSelectStatement: aSelectStatement [
	^ self visitStatement: aSelectStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitSimpleNameExpression: aSimpleNameExpression [
	^ self visitExpression: aSimpleNameExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitStopStatement: aStopStatement [
	^ self visitStatement: aStopStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitStructureConstraint: aStructureConstraint [
	^ self visitProgram: aStructureConstraint
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitStructureDeclaration: aStructureDeclaration [
	^ self visitProgram: aStructureDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitSubDeclaration: aSubDeclaration [
	^ self visitProgram: aSubDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitSubLambdaExpression: aSubLambdaExpression [
	^ self visitLambdaExpression: aSubLambdaExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitSubSignature: aSubSignature [
	^ self visitProgram: aSubSignature
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitSyncLockStatement: aSyncLockStatement [
	^ self visitStatement: aSyncLockStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitThrowStatement: aThrowStatement [
	^ self visitStatement: aThrowStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitTypeConstraint: aTypeConstraint [
	^ self visitProgram: aTypeConstraint
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitTypeOfIsExpression: aTypeOfIsExpression [
	^ self visitExpression: aTypeOfIsExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitTypeParameter: aTypeParameter [
	^ self visitProgram: aTypeParameter
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitTypeParameterList: aTypeParameterList [
	^ self visitProgram: aTypeParameterList
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitUsingStatement: anUsingStatement [
	^ self visitStatement: anUsingStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitVariableDeclarator: aVariableDeclarator [
	^ self visitProgram: aVariableDeclarator
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitVariableIdentifier: aVariableIdentifier [
	^ self visitProgram: aVariableIdentifier
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitVariableMemberDeclaration: aVariableMemberDeclaration [
	^ self visitProgram: aVariableMemberDeclaration
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitVariablePropertyInitializer: aVariablePropertyInitializer [
	^ self visitProgram: aVariablePropertyInitializer
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitWithStatement: aWithStatement [
	^ self visitStatement: aWithStatement
]

{ #category : #generated }
VBNetProgramNodeVisitor >> visitYieldStatement: aYieldStatement [
	^ self visitStatement: aYieldStatement
]
