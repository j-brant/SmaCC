Trait {
	#name : #TSwiftParseNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Swift'
}

{ #category : #generated }
TSwiftParseNodeVisitor >> visitArrayType: anArrayType [
	^ self visitParse: anArrayType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitAssignmentOperator: anAssignmentOperator [
	^ self visitParse: anAssignmentOperator
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitParse: aBinaryExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitBinaryOperator: aBinaryOperator [
	^ self visitParse: aBinaryOperator
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitBlock: aBlock [
	^ self visitParse: aBlock
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitBranchStatement: aBranchStatement [
	^ self visitStatement: aBranchStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitControlTransferStatement: aBreakStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitClassDeclaration: aClassDeclaration [
	^ self visitParse: aClassDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitClosureExpression: aClosureExpression [
	^ self visitParse: aClosureExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitCondionalOperator: aCondionalOperator [
	^ self visitParse: aCondionalOperator
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitConstantDeclaration: aConstantDeclaration [
	^ self visitParse: aConstantDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitControlTransferStatement: aContinueStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitControlTransferStatement: aControlTransferStatement [
	^ self visitStatement: aControlTransferStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitDeclarationStatement: aDeclarationStatement [
	^ self visitStatement: aDeclarationStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitDeinitializerDeclaration: aDeinitializerDeclaration [
	^ self visitParse: aDeinitializerDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitDictionaryType: aDictionaryType [
	^ self visitParse: aDictionaryType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitDoWhileStatement: aDoWhileStatement [
	^ self visitLoopStatement: aDoWhileStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitDynamicTypeExpression: aDynamicTypeExpression [
	^ self visitParse: aDynamicTypeExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitEnumDeclaration: anEnumDeclaration [
	^ self visitParse: anEnumDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitExplicitMemberExpression: anExplicitMemberExpression [
	^ self visitParse: anExplicitMemberExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitExtensionDeclaration: anExtensionDeclaration [
	^ self visitParse: anExtensionDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitFallThroughStatement: aFallThroughStatement [
	^ self visitControlTransferStatement: aFallThroughStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitFile: aFile [
	^ self visitParse: aFile
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitForInStatement: aForInStatement [
	^ self visitLoopStatement: aForInStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitForStatement: aForStatement [
	^ self visitLoopStatement: aForStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitForcedValueExpression: aForcedValueExpression [
	^ self visitParse: aForcedValueExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitFunctionCallExpression: aFunctionCallExpression [
	^ self visitParse: aFunctionCallExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	^ self visitParse: aFunctionDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitFunctionType: aFunctionType [
	^ self visitParse: aFunctionType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitBranchStatement: anIfStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitImplicitMemberExpression: anImplicitMemberExpression [
	^ self visitParse: anImplicitMemberExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitImplicitlyUnwrappedOptionalType: anImplicitlyUnwrappedOptionalType [
	^ self visitParse: anImplicitlyUnwrappedOptionalType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitImportDeclaration: anImportDeclaration [
	^ self visitParse: anImportDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitInOutExpression: anInOutExpression [
	^ self visitParse: anInOutExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitInfixOperatorDeclaration: anInfixOperatorDeclaration [
	^ self visitParse: anInfixOperatorDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitInitializerDeclaration: anInitializerDeclaration [
	^ self visitParse: anInitializerDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitInitializerExpression: anInitializerExpression [
	^ self visitParse: anInitializerExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitLabeledStatement: aLabeledStatement [
	^ self visitStatement: aLabeledStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitLiteralExpression: aLiteralExpression [
	^ self visitParse: aLiteralExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitLoopStatement: aLoopStatement [
	^ self visitStatement: aLoopStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitMetatypeType: aMetatypeType [
	^ self visitParse: aMetatypeType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitNamedExpression: aNamedExpression [
	^ self visitParse: aNamedExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitOptionalChainingExpression: anOptionalChainingExpression [
	^ self visitParse: anOptionalChainingExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitOptionalType: anOptionalType [
	^ self visitParse: anOptionalType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitParenthesizedExpression: aParenthesizedExpression [
	^ self visitParse: aParenthesizedExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitParse: aParse [
	^ self visitSmaCCParseNode: aParse
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitPatternInitializer: aPatternInitializer [
	^ self visitParse: aPatternInitializer
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitPostfixOperatorDeclaration: aPostfixOperatorDeclaration [
	^ self visitParse: aPostfixOperatorDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitPostfixSelfExpression: aPostfixSelfExpression [
	^ self visitParse: aPostfixSelfExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitPrefixExpression: aPrefixExpression [
	^ self visitParse: aPrefixExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitPrefixOperatorDeclaration: aPrefixOperatorDeclaration [
	^ self visitParse: aPrefixOperatorDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitPrimaryExpression: aPrimaryExpression [
	^ self visitParse: aPrimaryExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitProtocolAssociationTypeDeclaration: aProtocolAssociationTypeDeclaration [
	^ self visitParse: aProtocolAssociationTypeDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitProtocolCompositionType: aProtocolCompositionType [
	^ self visitParse: aProtocolCompositionType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitProtocolDeclaration: aProtocolDeclaration [
	^ self visitParse: aProtocolDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitProtocolInitializerDeclaration: aProtocolInitializerDeclaration [
	^ self visitParse: aProtocolInitializerDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitProtocolMethodDeclaration: aProtocolMethodDeclaration [
	^ self visitParse: aProtocolMethodDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitProtocolPropertyDeclaration: aProtocolPropertyDeclaration [
	^ self visitParse: aProtocolPropertyDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitProtocolSubscriptDeclaration: aProtocolSubscriptDeclaration [
	^ self visitParse: aProtocolSubscriptDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitControlTransferStatement: aReturnStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitSelfExpression: aSelfExpression [
	^ self visitParse: aSelfExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitStatement: aStatement [
	^ self visitParse: aStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitStructDeclaration: aStructDeclaration [
	^ self visitParse: aStructDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitSubscriptDeclaration: aSubscriptDeclaration [
	^ self visitParse: aSubscriptDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitSubscriptExpression: aSubscriptExpression [
	^ self visitParse: aSubscriptExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitSuperclassInitializerExpression: aSuperclassInitializerExpression [
	^ self visitParse: aSuperclassInitializerExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitSuperclassMethodExpression: aSuperclassMethodExpression [
	^ self visitParse: aSuperclassMethodExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitSuperclassSubscriptExpression: aSuperclassSubscriptExpression [
	^ self visitParse: aSuperclassSubscriptExpression
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitSwitchStatement: aSwitchStatement [
	^ self visitBranchStatement: aSwitchStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitTupleType: aTupleType [
	^ self visitParse: aTupleType
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitTypeCastOperator: aTypeCastOperator [
	^ self visitParse: aTypeCastOperator
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitTypeIdentifier: aTypeIdentifier [
	^ self visitParse: aTypeIdentifier
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitTypealiasDeclaration: aTypealiasDeclaration [
	^ self visitParse: aTypealiasDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitVariableDeclaration: aVariableDeclaration [
	^ self visitParse: aVariableDeclaration
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitLoopStatement: aWhileStatement
]

{ #category : #generated }
TSwiftParseNodeVisitor >> visitWildcardExpression: aWildcardExpression [
	^ self visitParse: aWildcardExpression
]
