Class {
	#name : #CPPProgramNodeVisitor,
	#superclass : #SmaCCParseNodeVisitor,
	#category : #'SmaCC_CPP_Parser-C++ Visitors'
}

{ #category : #generated }
CPPProgramNodeVisitor >> visitAbstractDeclarator: anAbstractDeclarator [
	^ self visitProgram: anAbstractDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAbstractPackDeclarator: anAbstractPackDeclarator [
	^ self visitProgram: anAbstractPackDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAliasDeclaration: anAliasDeclaration [
	^ self visitProgram: anAliasDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAlignmentSpecifier: anAlignmentSpecifier [
	^ self visitProgram: anAlignmentSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAlignofExpression: anAlignofExpression [
	^ self visitExpression: anAlignofExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAsmDefinition: anAsmDefinition [
	^ self visitProgram: anAsmDefinition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAssignmentExpression: anAssignmentExpression [
	^ self visitExpression: anAssignmentExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAttributeArgumentClause: anAttributeArgumentClause [
	^ self visitProgram: anAttributeArgumentClause
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAttributeDeclaration: anAttributeDeclaration [
	^ self visitProgram: anAttributeDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAttributeSpecifier: anAttributeSpecifier [
	^ self visitProgram: anAttributeSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitAutoType: anAutoType [
	^ self visitType: anAutoType
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitBaseSpecifier: aBaseSpecifier [
	^ self visitProgram: aBaseSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitBracedInitializerExpression: aBracedInitializerExpression [
	^ self visitExpression: aBracedInitializerExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitBracedListInitializer: aBracedListInitializer [
	^ self visitProgram: aBracedListInitializer
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitStatement: aBreakStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCVQualifier: aCVQualifier [
	^ self visitProgram: aCVQualifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCallExpression: aCallExpression [
	^ self visitExpression: aCallExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCapture: aCapture [
	^ self visitProgram: aCapture
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCaseLabeledStatement: aCaseLabeledStatement [
	^ self visitStatement: aCaseLabeledStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCatchHandler: aCatchHandler [
	^ self visitProgram: aCatchHandler
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCharacterLiteral: aCharacterLiteral [
	^ self visitLiteral: aCharacterLiteral
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitClassSpecifier: aClassSpecifier [
	^ self visitProgram: aClassSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitClassType: aClassType [
	^ self visitType: aClassType
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitClassTypeParameter: aClassTypeParameter [
	^ self visitProgram: aClassTypeParameter
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCommaExpression: aCommaExpression [
	^ self visitExpression: aCommaExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCompoundStatement: aCompoundStatement [
	^ self visitStatement: aCompoundStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCondition: aCondition [
	^ self visitProgram: aCondition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitConversionDeclarator: aConversionDeclarator [
	^ self visitProgram: aConversionDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitConversionExpression: aConversionExpression [
	^ self visitExpression: aConversionExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitConversionFunctionIdentifier: aConversionFunctionIdentifier [
	^ self visitProgram: aConversionFunctionIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitCtorInitializer: aCtorInitializer [
	^ self visitProgram: aCtorInitializer
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDeclSpecifier: aDeclSpecifier [
	^ self visitProgram: aDeclSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDeclarator: aDeclarator [
	^ self visitProgram: aDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDecltypeSpecifier: aDecltypeSpecifier [
	^ self visitProgram: aDecltypeSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDefaultLabeledStatement: aDefaultLabeledStatement [
	^ self visitStatement: aDefaultLabeledStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDeleteExpression: aDeleteExpression [
	^ self visitExpression: aDeleteExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDestructorIdentifier: aDestructorIdentifier [
	^ self visitProgram: aDestructorIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDoWhileStatement: aDoWhileStatement [
	^ self visitStatement: aDoWhileStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitDynamicExceptionSpecification: aDynamicExceptionSpecification [
	^ self visitProgram: aDynamicExceptionSpecification
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitElaboratedTypeSpecifier: anElaboratedTypeSpecifier [
	^ self visitProgram: anElaboratedTypeSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitEnumDefinition: anEnumDefinition [
	^ self visitProgram: anEnumDefinition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitEnumSpecifier: anEnumSpecifier [
	^ self visitProgram: anEnumSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitEqualInitializer: anEqualInitializer [
	^ self visitProgram: anEqualInitializer
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitExceptionDeclaration: anExceptionDeclaration [
	^ self visitProgram: anExceptionDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitExplicitInstantiation: anExplicitInstantiation [
	^ self visitProgram: anExplicitInstantiation
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitExplicitSpecialization: anExplicitSpecialization [
	^ self visitProgram: anExplicitSpecialization
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitExpressionListInitializer: anExpressionListInitializer [
	^ self visitProgram: anExpressionListInitializer
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitExtensionNamespaceDefinition: anExtensionNamespaceDefinition [
	^ self visitProgram: anExtensionNamespaceDefinition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitForRangeDeclaration: aForRangeDeclaration [
	^ self visitProgram: aForRangeDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitFunctionDefinition: aFunctionDefinition [
	^ self visitProgram: aFunctionDefinition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitGotoStatement: aGotoStatement [
	^ self visitStatement: aGotoStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitIdentifier: anIdentifier [
	^ self visitProgram: anIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitIdentifierExpression: anIdentifierExpression [
	^ self visitExpression: anIdentifierExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitInitDeclarator: anInitDeclarator [
	^ self visitProgram: anInitDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitInitializedCapture: anInitializedCapture [
	^ self visitCapture: anInitializedCapture
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitLabeledStatement: aLabeledStatement [
	^ self visitStatement: aLabeledStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitLinkageSpecification: aLinkageSpecification [
	^ self visitProgram: aLinkageSpecification
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitLiteralFunctionIdentifier: aLiteralFunctionIdentifier [
	^ self visitProgram: aLiteralFunctionIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitMemInitializer: aMemInitializer [
	^ self visitProgram: aMemInitializer
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitMemberDeclaration: aMemberDeclaration [
	^ self visitProgram: aMemberDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitMemberDeclarator: aMemberDeclarator [
	^ self visitProgram: aMemberDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitMemberExpression: aMemberExpression [
	^ self visitExpression: aMemberExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNamespaceAliasDefinition: aNamespaceAliasDefinition [
	^ self visitProgram: aNamespaceAliasDefinition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNestedNameSpecifier: aNestedNameSpecifier [
	^ self visitProgram: aNestedNameSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNewDeclarator: aNewDeclarator [
	^ self visitProgram: aNewDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNewExpression: aNewExpression [
	^ self visitExpression: aNewExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNewInitializer: aNewInitializer [
	^ self visitProgram: aNewInitializer
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNewTypeIdentifier: aNewTypeIdentifier [
	^ self visitProgram: aNewTypeIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNoExceptionSpecificiation: aNoExceptionSpecificiation [
	^ self visitProgram: aNoExceptionSpecificiation
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNoexceptExpression: aNoexceptExpression [
	^ self visitExpression: aNoexceptExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitNumericLiteral: aNumericLiteral [
	^ self visitLiteral: aNumericLiteral
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitOpaqueEnumDeclaration: anOpaqueEnumDeclaration [
	^ self visitProgram: anOpaqueEnumDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitOperatorFunctionIdentifier: anOperatorFunctionIdentifier [
	^ self visitProgram: anOperatorFunctionIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitOperatorFunctionTemplateIdentifier: anOperatorFunctionTemplateIdentifier [
	^ self visitProgram: anOperatorFunctionTemplateIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitOriginalNamespaceDefinition: anOriginalNamespaceDefinition [
	^ self visitProgram: anOriginalNamespaceDefinition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitParameterDeclaration: aParameterDeclaration [
	^ self visitProgram: aParameterDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitPointerLiteral: aPointerLiteral [
	^ self visitLiteral: aPointerLiteral
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitPointerOperator: aPointerOperator [
	^ self visitProgram: aPointerOperator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitPostfixExpression: aPostfixExpression [
	^ self visitExpression: aPostfixExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitPrefixExpression: aPrefixExpression [
	^ self visitExpression: aPrefixExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitPrimitiveType: aPrimitiveType [
	^ self visitType: aPrimitiveType
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitPseudoDestructorName: aPseudoDestructorName [
	^ self visitProgram: aPseudoDestructorName
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitPtrAbstractDeclarator: aPtrAbstractDeclarator [
	^ self visitProgram: aPtrAbstractDeclarator
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitQualifiedIdentifier: aQualifiedIdentifier [
	^ self visitProgram: aQualifiedIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitRangeForStatement: aRangeForStatement [
	^ self visitStatement: aRangeForStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitSimpleDeclaration: aSimpleDeclaration [
	^ self visitProgram: aSimpleDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitSizeofExpression: aSizeofExpression [
	^ self visitExpression: aSizeofExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitStaticAssertDeclaration: aStaticAssertDeclaration [
	^ self visitProgram: aStaticAssertDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitSubscriptExpression: aSubscriptExpression [
	^ self visitExpression: aSubscriptExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitSwitchStatement: aSwitchStatement [
	^ self visitStatement: aSwitchStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTemplateDeclaration: aTemplateDeclaration [
	^ self visitProgram: aTemplateDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTemplateIdentifier: aTemplateIdentifier [
	^ self visitProgram: aTemplateIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTemplateType: aTemplateType [
	^ self visitType: aTemplateType
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTemplateTypeParameter: aTemplateTypeParameter [
	^ self visitProgram: aTemplateTypeParameter
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitThisExpression: aThisExpression [
	^ self visitExpression: aThisExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitThrowExpression: aThrowExpression [
	^ self visitExpression: aThrowExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTranslationUnit: aTranslationUnit [
	^ self visitProgram: aTranslationUnit
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTypeIdentifier: aTypeIdentifier [
	^ self visitProgram: aTypeIdentifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTypeNameSpecifier: aTypeNameSpecifier [
	^ self visitProgram: aTypeNameSpecifier
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTypeidExpression: aTypeidExpression [
	^ self visitExpression: aTypeidExpression
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitTypenameTypeParameter: aTypenameTypeParameter [
	^ self visitProgram: aTypenameTypeParameter
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitUnnamedNamespaceDefinition: anUnnamedNamespaceDefinition [
	^ self visitProgram: anUnnamedNamespaceDefinition
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitUserDefinedLiteral: anUserDefinedLiteral [
	^ self visitLiteral: anUserDefinedLiteral
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitUsingDeclaration: anUsingDeclaration [
	^ self visitProgram: anUsingDeclaration
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitUsingDirective: anUsingDirective [
	^ self visitProgram: anUsingDirective
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitVariable: aVariable [
	^ self visitExpression: aVariable
]

{ #category : #generated }
CPPProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]
