Trait {
	#name : #TCPPProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_CPP_Parser-C++ Parser'
}

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAbstractDeclarator: anAbstractDeclarator [
	^ self visitProgram: anAbstractDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAbstractPackDeclarator: anAbstractPackDeclarator [
	^ self visitProgram: anAbstractPackDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAliasDeclaration: anAliasDeclaration [
	^ self visitProgram: anAliasDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAlignmentSpecifier: anAlignmentSpecifier [
	^ self visitProgram: anAlignmentSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAlignofExpression: anAlignofExpression [
	^ self visitExpression: anAlignofExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAsmDefinition: anAsmDefinition [
	^ self visitProgram: anAsmDefinition
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAssignmentExpression: anAssignmentExpression [
	^ self visitExpression: anAssignmentExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAttributeDeclaration: anAttributeDeclaration [
	^ self visitProgram: anAttributeDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAttributeSpecifier: anAttributeSpecifier [
	^ self visitProgram: anAttributeSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitAutoType: anAutoType [
	^ self visitType: anAutoType
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitBalancedToken: aBalancedToken [
	^ self visitProgram: aBalancedToken
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitBaseSpecifier: aBaseSpecifier [
	^ self visitProgram: aBaseSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitBracedInitializerExpression: aBracedInitializerExpression [
	^ self visitExpression: aBracedInitializerExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitBracedListInitializer: aBracedListInitializer [
	^ self visitProgram: aBracedListInitializer
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitStatement: aBreakStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCVQualifier: aCVQualifier [
	^ self visitProgram: aCVQualifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCallExpression: aCallExpression [
	^ self visitExpression: aCallExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCapture: aCapture [
	^ self visitProgram: aCapture
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCaseLabeledStatement: aCaseLabeledStatement [
	^ self visitStatement: aCaseLabeledStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCatchHandler: aCatchHandler [
	^ self visitProgram: aCatchHandler
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCharacterLiteral: aCharacterLiteral [
	^ self visitLiteral: aCharacterLiteral
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitClassSpecifier: aClassSpecifier [
	^ self visitProgram: aClassSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitClassType: aClassType [
	^ self visitType: aClassType
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitClassTypeParameter: aClassTypeParameter [
	^ self visitTypeParameter: aClassTypeParameter
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCommaExpression: aCommaExpression [
	^ self visitExpression: aCommaExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCompoundStatement: aCompoundStatement [
	^ self visitStatement: aCompoundStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCondition: aCondition [
	^ self visitProgram: aCondition
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitConversionDeclarator: aConversionDeclarator [
	^ self visitProgram: aConversionDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitConversionExpression: aConversionExpression [
	^ self visitExpression: aConversionExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitConversionFunctionIdentifier: aConversionFunctionIdentifier [
	^ self visitProgram: aConversionFunctionIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitCtorInitializer: aCtorInitializer [
	^ self visitProgram: aCtorInitializer
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDeclSpecifier: aDeclSpecifier [
	^ self visitProgram: aDeclSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDeclarator: aDeclarator [
	^ self visitProgram: aDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDecltypeSpecifier: aDecltypeSpecifier [
	^ self visitProgram: aDecltypeSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDefaultLabeledStatement: aDefaultLabeledStatement [
	^ self visitStatement: aDefaultLabeledStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDeleteExpression: aDeleteExpression [
	^ self visitExpression: aDeleteExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDestructorIdentifier: aDestructorIdentifier [
	^ self visitProgram: aDestructorIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDoWhileStatement: aDoWhileStatement [
	^ self visitStatement: aDoWhileStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitDynamicExceptionSpecification: aDynamicExceptionSpecification [
	^ self visitProgram: aDynamicExceptionSpecification
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitElaboratedTypeSpecifier: anElaboratedTypeSpecifier [
	^ self visitProgram: anElaboratedTypeSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitEnumDefinition: anEnumDefinition [
	^ self visitProgram: anEnumDefinition
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitEnumSpecifier: anEnumSpecifier [
	^ self visitProgram: anEnumSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitEqualInitializer: anEqualInitializer [
	^ self visitProgram: anEqualInitializer
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitExceptionDeclaration: anExceptionDeclaration [
	^ self visitProgram: anExceptionDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitExplicitInstantiation: anExplicitInstantiation [
	^ self visitProgram: anExplicitInstantiation
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitExplicitSpecialization: anExplicitSpecialization [
	^ self visitProgram: anExplicitSpecialization
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitExpressionListInitializer: anExpressionListInitializer [
	^ self visitProgram: anExpressionListInitializer
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitForRangeDeclaration: aForRangeDeclaration [
	^ self visitProgram: aForRangeDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitFunctionDefinition: aFunctionDefinition [
	^ self visitProgram: aFunctionDefinition
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitGotoStatement: aGotoStatement [
	^ self visitStatement: aGotoStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitIdentifier: anIdentifier [
	^ self visitProgram: anIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitIdentifierExpression: anIdentifierExpression [
	^ self visitExpression: anIdentifierExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitInitDeclarator: anInitDeclarator [
	^ self visitProgram: anInitDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitInitializedCapture: anInitializedCapture [
	^ self visitCapture: anInitializedCapture
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitLabeledStatement: aLabeledStatement [
	^ self visitStatement: aLabeledStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitLinkageSpecification: aLinkageSpecification [
	^ self visitProgram: aLinkageSpecification
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitLiteralFunctionIdentifier: aLiteralFunctionIdentifier [
	^ self visitProgram: aLiteralFunctionIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitMemInitializer: aMemInitializer [
	^ self visitProgram: aMemInitializer
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitMemberDeclaration: aMemberDeclaration [
	^ self visitProgram: aMemberDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitMemberDeclarator: aMemberDeclarator [
	^ self visitProgram: aMemberDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitMemberExpression: aMemberExpression [
	^ self visitExpression: aMemberExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNamespaceAliasDefinition: aNamespaceAliasDefinition [
	^ self visitProgram: aNamespaceAliasDefinition
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNestedNameSpecifier: aNestedNameSpecifier [
	^ self visitProgram: aNestedNameSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNewDeclarator: aNewDeclarator [
	^ self visitProgram: aNewDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNewExpression: aNewExpression [
	^ self visitExpression: aNewExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNewInitializer: aNewInitializer [
	^ self visitProgram: aNewInitializer
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNewTypeIdentifier: aNewTypeIdentifier [
	^ self visitProgram: aNewTypeIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNoExceptionSpecificiation: aNoExceptionSpecificiation [
	^ self visitProgram: aNoExceptionSpecificiation
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNoexceptExpression: aNoexceptExpression [
	^ self visitExpression: aNoexceptExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitNumericLiteral: aNumericLiteral [
	^ self visitLiteral: aNumericLiteral
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitOpaqueEnumDeclaration: anOpaqueEnumDeclaration [
	^ self visitProgram: anOpaqueEnumDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitOperatorFunctionIdentifier: anOperatorFunctionIdentifier [
	^ self visitProgram: anOperatorFunctionIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitOperatorFunctionTemplateIdentifier: anOperatorFunctionTemplateIdentifier [
	^ self visitProgram: anOperatorFunctionTemplateIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitOriginalNamespaceDefinition: anOriginalNamespaceDefinition [
	^ self visitProgram: anOriginalNamespaceDefinition
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitParameterDeclaration: aParameterDeclaration [
	^ self visitProgram: aParameterDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitPointerLiteral: aPointerLiteral [
	^ self visitLiteral: aPointerLiteral
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitPointerOperator: aPointerOperator [
	^ self visitProgram: aPointerOperator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitPostfixExpression: aPostfixExpression [
	^ self visitExpression: aPostfixExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitPrefixExpression: aPrefixExpression [
	^ self visitExpression: aPrefixExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitPrimitiveType: aPrimitiveType [
	^ self visitType: aPrimitiveType
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitPseudoDestructorName: aPseudoDestructorName [
	^ self visitProgram: aPseudoDestructorName
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitPtrAbstractDeclarator: aPtrAbstractDeclarator [
	^ self visitProgram: aPtrAbstractDeclarator
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitQualifiedIdentifier: aQualifiedIdentifier [
	^ self visitProgram: aQualifiedIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitRangeForStatement: aRangeForStatement [
	^ self visitStatement: aRangeForStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitSimpleDeclaration: aSimpleDeclaration [
	^ self visitProgram: aSimpleDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitSizeofExpression: aSizeofExpression [
	^ self visitExpression: aSizeofExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitStaticAssertDeclaration: aStaticAssertDeclaration [
	^ self visitProgram: aStaticAssertDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitSubscriptExpression: aSubscriptExpression [
	^ self visitExpression: aSubscriptExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitSwitchStatement: aSwitchStatement [
	^ self visitStatement: aSwitchStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTemplateDeclaration: aTemplateDeclaration [
	^ self visitProgram: aTemplateDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTemplateIdentifier: aTemplateIdentifier [
	^ self visitProgram: aTemplateIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTemplateType: aTemplateType [
	^ self visitType: aTemplateType
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTemplateTypeParameter: aTemplateTypeParameter [
	^ self visitTypeParameter: aTemplateTypeParameter
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitThisExpression: aThisExpression [
	^ self visitExpression: aThisExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitThrowExpression: aThrowExpression [
	^ self visitExpression: aThrowExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTranslationUnit: aTranslationUnit [
	^ self visitProgram: aTranslationUnit
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTypeIdentifier: aTypeIdentifier [
	^ self visitProgram: aTypeIdentifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTypeNameSpecifier: aTypeNameSpecifier [
	^ self visitProgram: aTypeNameSpecifier
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTypeParameter: aTypeParameter [
	^ self visitProgram: aTypeParameter
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTypeidExpression: aTypeidExpression [
	^ self visitExpression: aTypeidExpression
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitTypenameTypeParameter: aTypenameTypeParameter [
	^ self visitTypeParameter: aTypenameTypeParameter
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitUnnamedNamespaceDefinition: anUnnamedNamespaceDefinition [
	^ self visitProgram: anUnnamedNamespaceDefinition
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitUserDefinedLiteral: anUserDefinedLiteral [
	^ self visitLiteral: anUserDefinedLiteral
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitUsingDeclaration: anUsingDeclaration [
	^ self visitProgram: anUsingDeclaration
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitUsingDirective: anUsingDirective [
	^ self visitProgram: anUsingDirective
]

{ #category : #generated }
TCPPProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]
