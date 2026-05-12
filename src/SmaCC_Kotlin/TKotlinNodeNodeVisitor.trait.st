Trait {
	#name : 'TKotlinNodeNodeVisitor',
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : 'SmaCC_Kotlin',
	#package : 'SmaCC_Kotlin'
}

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAnnotatedDelegationSpecifier: anAnnotatedDelegationSpecifier [
	^ self visitNode: anAnnotatedDelegationSpecifier
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAnnotatedExpression: anAnnotatedExpression [
	^ self visitExpression: anAnnotatedExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAnnotatedStatement: anAnnotatedStatement [
	^ self visitStatement: anAnnotatedStatement
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAnnotation: anAnnotation [
	^ self visitNode: anAnnotation
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAnnotationUseSiteTarget: anAnnotationUseSiteTarget [
	^ self visitAnnotation: anAnnotationUseSiteTarget
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAnonymousFunction: anAnonymousFunction [
	^ self visitExpression: anAnonymousFunction
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAnonymousInitializer: anAnonymousInitializer [
	^ self visitMember: anAnonymousInitializer
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitAssignmentStatement: anAssignmentStatement [
	^ self visitStatement: anAssignmentStatement
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitBlock: aBlock [
	^ self visitStatement: aBlock
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitBreakExpression: aBreakExpression [
	^ self visitExpression: aBreakExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitCallSuffix: aCallSuffix [
	^ self visitMember: aCallSuffix
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitCallableReference: aCallableReference [
	^ self visitExpression: aCallableReference
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitCatchBlock: aCatchBlock [
	^ self visitMember: aCatchBlock
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitClassDeclaration: aClassDeclaration [
	^ self visitDeclaration: aClassDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitClassParameter: aClassParameter [
	^ self visitMember: aClassParameter
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitCollectionLiteral: aCollectionLiteral [
	^ self visitExpression: aCollectionLiteral
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitCompanionObject: aCompanionObject [
	^ self visitMember: aCompanionObject
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitConstructorDelegationCall: aConstructorDelegationCall [
	^ self visitNode: aConstructorDelegationCall
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitConstructorInvocation: aConstructorInvocation [
	^ self visitMember: aConstructorInvocation
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitContinueExpression: aContinueExpression [
	^ self visitExpression: aContinueExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitDeclaration: aDeclaration [
	^ self visitNode: aDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitDefinitelyNonNullableType: aDefinitelyNonNullableType [
	^ self visitType: aDefinitelyNonNullableType
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitDoWhileStatement: aDoWhileStatement [
	^ self visitStatement: aDoWhileStatement
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitElvisExpression: anElvisExpression [
	^ self visitExpression: anElvisExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitEnumEntry: anEnumEntry [
	^ self visitMember: anEnumEntry
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitExplicitDelegation: anExplicitDelegation [
	^ self visitMember: anExplicitDelegation
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitExpression: anExpression [
	^ self visitNode: anExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitExpressionBody: anExpressionBody [
	^ self visitMember: anExpressionBody
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFile: aFile [
	^ self visitNode: aFile
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFileAnnotation: aFileAnnotation [
	^ self visitAnnotation: aFileAnnotation
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFinallyBlock: aFinallyBlock [
	^ self visitMember: aFinallyBlock
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFunctionBody: aFunctionBody [
	^ self visitMember: aFunctionBody
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFunctionDeclaration: aFunctionDeclaration [
	^ self visitDeclaration: aFunctionDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFunctionType: aFunctionType [
	^ self visitType: aFunctionType
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFunctionTypeParameters: aFunctionTypeParameters [
	^ self visitNode: aFunctionTypeParameters
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFunctionValueParameter: aFunctionValueParameter [
	^ self visitNode: aFunctionValueParameter
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitFunctionValueParameterWithOptionalType: aFunctionValueParameterWithOptionalType [
	^ self visitNode: aFunctionValueParameterWithOptionalType
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitGetter: aGetter [
	^ self visitMember: aGetter
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitIdentifier: anIdentifier [
	^ self visitMember: anIdentifier
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitIfExpression: anIfExpression [
	^ self visitExpression: anIfExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitImportDeclaration: anImportDeclaration [
	^ self visitDeclaration: anImportDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitIndexingSuffix: anIndexingSuffix [
	^ self visitMember: anIndexingSuffix
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitIsExpression: anIsExpression [
	^ self visitExpression: anIsExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitLabel: aLabel [
	^ self visitStatement: aLabel
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitLabeledExpression: aLabeledExpression [
	^ self visitExpression: aLabeledExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitLabeledStatement: aLabeledStatement [
	^ self visitStatement: aLabeledStatement
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitLiteralExpression: aLiteralExpression [
	^ self visitExpression: aLiteralExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitMember: aMember [
	^ self visitNode: aMember
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitModifier: aModifier [
	^ self visitNode: aModifier
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitMultiAnnotation: aMultiAnnotation [
	^ self visitAnnotation: aMultiAnnotation
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitMultiVariableDeclaration: aMultiVariableDeclaration [
	^ self visitMember: aMultiVariableDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitNameExpression: aNameExpression [
	^ self visitExpression: aNameExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitNavigationSuffix: aNavigationSuffix [
	^ self visitMember: aNavigationSuffix
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitNode: aNode [
	^ self visitSmaCCParseNode: aNode
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitNullableType: aNullableType [
	^ self visitType: aNullableType
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitObjectDeclaration: anObjectDeclaration [
	^ self visitDeclaration: anObjectDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitObjectLiteral: anObjectLiteral [
	^ self visitExpression: anObjectLiteral
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitParameter: aParameter [
	^ self visitMember: aParameter
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitPostfixExpression: aPostfixExpression [
	^ self visitExpression: aPostfixExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitPrefixExpression: aPrefixExpression [
	^ self visitExpression: aPrefixExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitPropertyDeclaration: aPropertyDeclaration [
	^ self visitDeclaration: aPropertyDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitRangeTest: aRangeTest [
	^ self visitMember: aRangeTest
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitReturnExpression: aReturnExpression [
	^ self visitExpression: aReturnExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitScript: aScript [
	^ self visitNode: aScript
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitSecondaryConstructor: aSecondaryConstructor [
	^ self visitMember: aSecondaryConstructor
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitSetter: aSetter [
	^ self visitMember: aSetter
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitSimpleUserType: aSimpleUserType [
	^ self visitMember: aSimpleUserType
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitSingleAnnotation: aSingleAnnotation [
	^ self visitAnnotation: aSingleAnnotation
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitStatement: aStatement [
	^ self visitNode: aStatement
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitExpression: aStringLiteral
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitSuperExpression: aSuperExpression [
	^ self visitExpression: aSuperExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitThisExpression: aThisExpression [
	^ self visitExpression: aThisExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitThrowExpression: aThrowExpression [
	^ self visitExpression: aThrowExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitTryExpression: aTryExpression [
	^ self visitExpression: aTryExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitType: aType [
	^ self visitNode: aType
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitTypeAliasDeclaration: aTypeAliasDeclaration [
	^ self visitDeclaration: aTypeAliasDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitTypeArguments: aTypeArguments [
	^ self visitNode: aTypeArguments
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitTypeConstraint: aTypeConstraint [
	^ self visitMember: aTypeConstraint
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitTypeParameter: aTypeParameter [
	^ self visitMember: aTypeParameter
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitTypeProjection: aTypeProjection [
	^ self visitNode: aTypeProjection
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitTypeTest: aTypeTest [
	^ self visitMember: aTypeTest
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitUnescapedAnnotation: anUnescapedAnnotation [
	^ self visitAnnotation: anUnescapedAnnotation
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitUserType: anUserType [
	^ self visitType: anUserType
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitValueArgument: aValueArgument [
	^ self visitMember: aValueArgument
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitValueArguments: aValueArguments [
	^ self visitNode: aValueArguments
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitVariableDeclaration: aVariableDeclaration [
	^ self visitMember: aVariableDeclaration
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitWhenEntry: aWhenEntry [
	^ self visitMember: aWhenEntry
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitWhenExpression: aWhenExpression [
	^ self visitExpression: aWhenExpression
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitWhenSubject: aWhenSubject [
	^ self visitNode: aWhenSubject
]

{ #category : 'generated' }
TKotlinNodeNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]
