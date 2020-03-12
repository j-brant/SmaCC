Class {
	#name : #JSProgramNodeVisitor,
	#superclass : #SmaCCParseNodeVisitor,
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSProgramNodeVisitor >> visitAmbientDeclaration: anAmbientDeclaration [
	^ self visitProgram: anAmbientDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAmbientModuleDeclaration: anAmbientModuleDeclaration [
	^ self visitProgram: anAmbientModuleDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitArrayBindingPattern: anArrayBindingPattern [
	^ self visitProgram: anArrayBindingPattern
]

{ #category : #generated }
JSProgramNodeVisitor >> visitArrayLiteral: anArrayLiteral [
	^ self visitExpression: anArrayLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitArrayType: anArrayType [
	^ self visitType: anArrayType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitArrowFunction: anArrowFunction [
	^ self visitExpression: anArrowFunction
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAsExpression: anAsExpression [
	^ self visitExpression: anAsExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAssignmentExpression: anAssignmentExpression [
	^ self visitExpression: anAssignmentExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAsyncArrowFunction: anAsyncArrowFunction [
	^ self visitArrowFunction: anAsyncArrowFunction
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAsyncFunction: anAsyncFunction [
	^ self visitFunction: anAsyncFunction
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAsyncGeneratorFunction: anAsyncGeneratorFunction [
	^ self visitGeneratorFunction: anAsyncGeneratorFunction
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAsyncGeneratorMethodDefinition: anAsyncGeneratorMethodDefinition [
	^ self
		visitGeneratorMethodDefinition: anAsyncGeneratorMethodDefinition
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAsyncMethodDefinition: anAsyncMethodDefinition [
	^ self visitMethodDefinition: anAsyncMethodDefinition
]

{ #category : #generated }
JSProgramNodeVisitor >> visitAwaitExpression: anAwaitExpression [
	^ self visitExpression: anAwaitExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitBindingProperty: aBindingProperty [
	^ self visitProgram: aBindingProperty
]

{ #category : #generated }
JSProgramNodeVisitor >> visitBindingRestProperty: aBindingRestProperty [
	^ self visitProgram: aBindingRestProperty
]

{ #category : #generated }
JSProgramNodeVisitor >> visitBlockStatement: aBlockStatement [
	^ self visitStatement: aBlockStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitStatement: aBreakStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitCallExpression: aCallExpression [
	^ self visitExpression: aCallExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitCallSignature: aCallSignature [
	^ self visitProgram: aCallSignature
]

{ #category : #generated }
JSProgramNodeVisitor >> visitCaseClause: aCaseClause [
	^ self visitProgram: aCaseClause
]

{ #category : #generated }
JSProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitClassExpression: aClassExpression [
	^ self visitExpression: aClassExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitCommaExpression: aCommaExpression [
	^ self visitExpression: aCommaExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitComputedPropertyName: aComputedPropertyName [
	^ self visitProgram: aComputedPropertyName
]

{ #category : #generated }
JSProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitConstructSignature: aConstructSignature [
	^ self visitProgram: aConstructSignature
]

{ #category : #generated }
JSProgramNodeVisitor >> visitConstructorDeclaration: aConstructorDeclaration [
	^ self visitProgram: aConstructorDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitConstructorType: aConstructorType [
	^ self visitType: aConstructorType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitCopyProperty: aCopyProperty [
	^ self visitProgram: aCopyProperty
]

{ #category : #generated }
JSProgramNodeVisitor >> visitDebuggerStatement: aDebuggerStatement [
	^ self visitStatement: aDebuggerStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitDefaultClause: aDefaultClause [
	^ self visitProgram: aDefaultClause
]

{ #category : #generated }
JSProgramNodeVisitor >> visitDoWhileStatement: aDoWhileStatement [
	^ self visitStatement: aDoWhileStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitEmptyFunction: anEmptyFunction [
	^ self visitProgram: anEmptyFunction
]

{ #category : #generated }
JSProgramNodeVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitStatement: anEmptyStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitEnumDeclaration: anEnumDeclaration [
	^ self visitProgram: anEnumDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitEnumMember: anEnumMember [
	^ self visitProgram: anEnumMember
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportAssignment: anExportAssignment [
	^ self visitTSExport: anExportAssignment
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportDeclaration: anExportDeclaration [
	^ self visitTSExport: anExportDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportDeclarationElement: anExportDeclarationElement [
	^ self visitTSExport: anExportDeclarationElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportDefaultDeclarationElement: anExportDefaultDeclarationElement [
	^ self visitTSExport: anExportDefaultDeclarationElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportDefaultImplementationElement: anExportDefaultImplementationElement [
	^ self visitTSExport: anExportDefaultImplementationElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportImplementationElement: anExportImplementationElement [
	^ self visitTSExport: anExportImplementationElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportListDeclaration: anExportListDeclaration [
	^ self visitTSExport: anExportListDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportNamespaceElement: anExportNamespaceElement [
	^ self visitTSExport: anExportNamespaceElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExportSpecifier: anExportSpecifier [
	^ self visitProgram: anExportSpecifier
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitForInStatement: aForInStatement [
	^ self visitStatement: aForInStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitForOfStatement: aForOfStatement [
	^ self visitStatement: aForOfStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitFunction: aFunction [
	^ self visitExpression: aFunction
]

{ #category : #generated }
JSProgramNodeVisitor >> visitFunctionType: aFunctionType [
	^ self visitType: aFunctionType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitGeneratorFunction: aGeneratorFunction [
	^ self visitFunction: aGeneratorFunction
]

{ #category : #generated }
JSProgramNodeVisitor >> visitGeneratorMethodDefinition: aGeneratorMethodDefinition [
	^ self visitMethodDefinition: aGeneratorMethodDefinition
]

{ #category : #generated }
JSProgramNodeVisitor >> visitGetMethodDefinition: aGetMethodDefinition [
	^ self visitMethodDefinition: aGetMethodDefinition
]

{ #category : #generated }
JSProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitImportAliasDeclaration: anImportAliasDeclaration [
	^ self visitProgram: anImportAliasDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitImportCallExpression: anImportCallExpression [
	^ self visitExpression: anImportCallExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitImportDeclaration: anImportDeclaration [
	^ self visitProgram: anImportDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitImportRequireDeclaration: anImportRequireDeclaration [
	^ self visitProgram: anImportRequireDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitImportSpecifier: anImportSpecifier [
	^ self visitProgram: anImportSpecifier
]

{ #category : #generated }
JSProgramNodeVisitor >> visitIndexMemberDeclaration: anIndexMemberDeclaration [
	^ self visitProgram: anIndexMemberDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitIndexSignature: anIndexSignature [
	^ self visitProgram: anIndexSignature
]

{ #category : #generated }
JSProgramNodeVisitor >> visitIndexedPropertyExpression: anIndexedPropertyExpression [
	^ self visitExpression: anIndexedPropertyExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitInferType: anInferType [
	^ self visitType: anInferType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitInterfaceDeclaration: anInterfaceDeclaration [
	^ self visitProgram: anInterfaceDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitIntersectionType: anIntersectionType [
	^ self visitType: anIntersectionType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitKeyOfType: aKeyOfType [
	^ self visitType: aKeyOfType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitLabelledStatement: aLabelledStatement [
	^ self visitStatement: aLabelledStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitLexicalDeclaration: aLexicalDeclaration [
	^ self visitStatement: aLexicalDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitLiteralType: aLiteralType [
	^ self visitType: aLiteralType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitMemberAccessorDeclaration: aMemberAccessorDeclaration [
	^ self visitProgram: aMemberAccessorDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitMemberFunctionDeclaration: aMemberFunctionDeclaration [
	^ self visitProgram: aMemberFunctionDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitMemberVariableDeclaration: aMemberVariableDeclaration [
	^ self visitProgram: aMemberVariableDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitMethodDefinition: aMethodDefinition [
	^ self visitProgram: aMethodDefinition
]

{ #category : #generated }
JSProgramNodeVisitor >> visitMethodSignature: aMethodSignature [
	^ self visitProgram: aMethodSignature
]

{ #category : #generated }
JSProgramNodeVisitor >> visitModule: aModule [
	^ self visitProgram: aModule
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNameExpression: aNameExpression [
	^ self visitExpression: aNameExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNameSpaceImport: aNameSpaceImport [
	^ self visitProgram: aNameSpaceImport
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNamedImports: aNamedImports [
	^ self visitProgram: aNamedImports
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNamedPropertyExpression: aNamedPropertyExpression [
	^ self visitExpression: aNamedPropertyExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNamespaceDeclaration: aNamespaceDeclaration [
	^ self visitProgram: aNamespaceDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNewExpression: aNewExpression [
	^ self visitExpression: aNewExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNewTargetExpression: aNewTargetExpression [
	^ self visitExpression: aNewTargetExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNullLiteral: aNullLiteral [
	^ self visitLiteral: aNullLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitNumericLiteral: aNumericLiteral [
	^ self visitLiteral: aNumericLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitObjectBindingPattern: anObjectBindingPattern [
	^ self visitProgram: anObjectBindingPattern
]

{ #category : #generated }
JSProgramNodeVisitor >> visitObjectLiteral: anObjectLiteral [
	^ self visitExpression: anObjectLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitObjectType: anObjectType [
	^ self visitType: anObjectType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitOptional: anOptional [
	^ self visitProgram: anOptional
]

{ #category : #generated }
JSProgramNodeVisitor >> visitOptionalArguments: anOptionalArguments [
	^ self visitOptional: anOptionalArguments
]

{ #category : #generated }
JSProgramNodeVisitor >> visitOptionalExpression: anOptionalExpression [
	^ self visitExpression: anOptionalExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitOptionalIndexed: anOptionalIndexed [
	^ self visitOptional: anOptionalIndexed
]

{ #category : #generated }
JSProgramNodeVisitor >> visitOptionalName: anOptionalName [
	^ self visitOptional: anOptionalName
]

{ #category : #generated }
JSProgramNodeVisitor >> visitOptionalTemplate: anOptionalTemplate [
	^ self visitOptional: anOptionalTemplate
]

{ #category : #generated }
JSProgramNodeVisitor >> visitPostfixExpression: aPostfixExpression [
	^ self visitExpression: aPostfixExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitPrefixExpression: aPrefixExpression [
	^ self visitExpression: aPrefixExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
JSProgramNodeVisitor >> visitPropertyAssignment: aPropertyAssignment [
	^ self visitProgram: aPropertyAssignment
]

{ #category : #generated }
JSProgramNodeVisitor >> visitPropertySignature: aPropertySignature [
	^ self visitProgram: aPropertySignature
]

{ #category : #generated }
JSProgramNodeVisitor >> visitRegularExpressionLiteral: aRegularExpressionLiteral [
	^ self visitLiteral: aRegularExpressionLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitRestVariableDeclaration: aRestVariableDeclaration [
	^ self visitVariableDeclaration: aRestVariableDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitScript: aScript [
	^ self visitProgram: aScript
]

{ #category : #generated }
JSProgramNodeVisitor >> visitSetMethodDefinition: aSetMethodDefinition [
	^ self visitMethodDefinition: aSetMethodDefinition
]

{ #category : #generated }
JSProgramNodeVisitor >> visitSpreadExpression: aSpreadExpression [
	^ self visitExpression: aSpreadExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitSuperCallExpression: aSuperCallExpression [
	^ self visitExpression: aSuperCallExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitSuperIndexedPropertyExpression: aSuperIndexedPropertyExpression [
	^ self visitExpression: aSuperIndexedPropertyExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitSuperNamedPropertyExpression: aSuperNamedPropertyExpression [
	^ self visitExpression: aSuperNamedPropertyExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitSwitchStatement: aSwitchStatement [
	^ self visitStatement: aSwitchStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTSExport: aTSExport [
	^ self visitProgram: aTSExport
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTSSourceFile: aTSSourceFile [
	^ self visitProgram: aTSSourceFile
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTaggedTemplateLiteral: aTaggedTemplateLiteral [
	^ self visitExpression: aTaggedTemplateLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTemplateLiteral: aTemplateLiteral [
	^ self visitExpression: aTemplateLiteral
]

{ #category : #generated }
JSProgramNodeVisitor >> visitThisExpression: aThisExpression [
	^ self visitExpression: aThisExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitThisType: aThisType [
	^ self visitType: aThisType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitThrowStatement: aThrowStatement [
	^ self visitStatement: aThrowStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTupleType: aTupleType [
	^ self visitType: aTupleType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeAliasDeclaration: aTypeAliasDeclaration [
	^ self visitProgram: aTypeAliasDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeArguments: aTypeArguments [
	^ self visitProgram: aTypeArguments
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeName: aTypeName [
	^ self visitProgram: aTypeName
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeParameter: aTypeParameter [
	^ self visitProgram: aTypeParameter
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeParameters: aTypeParameters [
	^ self visitProgram: aTypeParameters
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeQuery: aTypeQuery [
	^ self visitType: aTypeQuery
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeQueryExpression: aTypeQueryExpression [
	^ self visitProgram: aTypeQueryExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypeReference: aTypeReference [
	^ self visitType: aTypeReference
]

{ #category : #generated }
JSProgramNodeVisitor >> visitTypedParameter: aTypedParameter [
	^ self visitProgram: aTypedParameter
]

{ #category : #generated }
JSProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitUnionType: anUnionType [
	^ self visitType: anUnionType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitVariableDeclaration: aVariableDeclaration [
	^ self visitProgram: aVariableDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitVariablePatternDeclaration: aVariablePatternDeclaration [
	^ self visitProgram: aVariablePatternDeclaration
]

{ #category : #generated }
JSProgramNodeVisitor >> visitVariableStatement: aVariableStatement [
	^ self visitStatement: aVariableStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitVoidType: aVoidType [
	^ self visitType: aVoidType
]

{ #category : #generated }
JSProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitWithStatement: aWithStatement [
	^ self visitStatement: aWithStatement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXAttribute: aXAttribute [
	^ self visitProgram: aXAttribute
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXClosingElement: aXClosingElement [
	^ self visitProgram: aXClosingElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXCodeExpression: aXCodeExpression [
	^ self visitExpression: aXCodeExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXElement: aXElement [
	^ self visitExpression: aXElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXElementName: aXElementName [
	^ self visitProgram: aXElementName
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXFragment: aXFragment [
	^ self visitExpression: aXFragment
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXMemberExpression: aXMemberExpression [
	^ self visitProgram: aXMemberExpression
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXNamespacedName: aXNamespacedName [
	^ self visitProgram: aXNamespacedName
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXOpeningElement: aXOpeningElement [
	^ self visitProgram: aXOpeningElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXSelfClosingElement: aXSelfClosingElement [
	^ self visitExpression: aXSelfClosingElement
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXSpreadAttribute: aXSpreadAttribute [
	^ self visitProgram: aXSpreadAttribute
]

{ #category : #generated }
JSProgramNodeVisitor >> visitXText: aXText [
	^ self visitExpression: aXText
]

{ #category : #generated }
JSProgramNodeVisitor >> visitYieldExpression: aYieldExpression [
	^ self visitExpression: aYieldExpression
]
