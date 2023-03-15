Trait {
	#name : #TJSProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
TJSProgramNodeVisitor >> visitAmbientDeclaration: anAmbientDeclaration [
	^ self visitProgram: anAmbientDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAmbientModuleDeclaration: anAmbientModuleDeclaration [
	^ self visitProgram: anAmbientModuleDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitArrayBindingPattern: anArrayBindingPattern [
	^ self visitProgram: anArrayBindingPattern
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitArrayLiteral: anArrayLiteral [
	^ self visitExpression: anArrayLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitArrayType: anArrayType [
	^ self visitType: anArrayType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitArrowFunction: anArrowFunction [
	^ self visitExpression: anArrowFunction
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAsExpression: anAsExpression [
	^ self visitExpression: anAsExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAssignmentExpression: anAssignmentExpression [
	^ self visitExpression: anAssignmentExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAsyncArrowFunction: anAsyncArrowFunction [
	^ self visitArrowFunction: anAsyncArrowFunction
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAsyncFunction: anAsyncFunction [
	^ self visitFunction: anAsyncFunction
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAsyncGeneratorFunction: anAsyncGeneratorFunction [
	^ self visitGeneratorFunction: anAsyncGeneratorFunction
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAsyncGeneratorMethodDefinition: anAsyncGeneratorMethodDefinition [
	^ self visitGeneratorMethodDefinition: anAsyncGeneratorMethodDefinition
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAsyncMethodDefinition: anAsyncMethodDefinition [
	^ self visitMethodDefinition: anAsyncMethodDefinition
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitAwaitExpression: anAwaitExpression [
	^ self visitExpression: anAwaitExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitBindingProperty: aBindingProperty [
	^ self visitProgram: aBindingProperty
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitBindingRestProperty: aBindingRestProperty [
	^ self visitProgram: aBindingRestProperty
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitBlockStatement: aBlockStatement [
	^ self visitStatement: aBlockStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitStatement: aBreakStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitCallExpression: aCallExpression [
	^ self visitExpression: aCallExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitCallSignature: aCallSignature [
	^ self visitProgram: aCallSignature
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitCaseClause: aCaseClause [
	^ self visitProgram: aCaseClause
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitExpression: aCastExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitClassExpression: aClassExpression [
	^ self visitExpression: aClassExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitClassStaticBlock: aClassStaticBlock [
	^ self visitProgram: aClassStaticBlock
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitCommaExpression: aCommaExpression [
	^ self visitExpression: aCommaExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitComputedPropertyName: aComputedPropertyName [
	^ self visitProgram: aComputedPropertyName
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitConstructSignature: aConstructSignature [
	^ self visitProgram: aConstructSignature
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitConstructorDeclaration: aConstructorDeclaration [
	^ self visitProgram: aConstructorDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitConstructorType: aConstructorType [
	^ self visitType: aConstructorType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitCopyProperty: aCopyProperty [
	^ self visitProgram: aCopyProperty
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitDebuggerStatement: aDebuggerStatement [
	^ self visitStatement: aDebuggerStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitDecoratorExpression: aDecoratorExpression [
	^ self visitExpression: aDecoratorExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitDefaultClause: aDefaultClause [
	^ self visitProgram: aDefaultClause
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitDoWhileStatement: aDoWhileStatement [
	^ self visitStatement: aDoWhileStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitEmptyFunction: anEmptyFunction [
	^ self visitProgram: anEmptyFunction
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitStatement: anEmptyStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitEnumDeclaration: anEnumDeclaration [
	^ self visitProgram: anEnumDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitEnumMember: anEnumMember [
	^ self visitProgram: anEnumMember
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportAssignment: anExportAssignment [
	^ self visitTSExport: anExportAssignment
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportDeclaration: anExportDeclaration [
	^ self visitTSExport: anExportDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportDeclarationElement: anExportDeclarationElement [
	^ self visitTSExport: anExportDeclarationElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportDefaultDeclarationElement: anExportDefaultDeclarationElement [
	^ self visitTSExport: anExportDefaultDeclarationElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportDefaultImplementationElement: anExportDefaultImplementationElement [
	^ self visitTSExport: anExportDefaultImplementationElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportImplementationElement: anExportImplementationElement [
	^ self visitTSExport: anExportImplementationElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportListDeclaration: anExportListDeclaration [
	^ self visitTSExport: anExportListDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportNamespaceElement: anExportNamespaceElement [
	^ self visitTSExport: anExportNamespaceElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExportSpecifier: anExportSpecifier [
	^ self visitProgram: anExportSpecifier
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitFieldDefinition: aFieldDefinition [
	^ self visitProgram: aFieldDefinition
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitForInStatement: aForInStatement [
	^ self visitStatement: aForInStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitForOfStatement: aForOfStatement [
	^ self visitStatement: aForOfStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitFunction: aFunction [
	^ self visitExpression: aFunction
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitFunctionType: aFunctionType [
	^ self visitType: aFunctionType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitGeneratorFunction: aGeneratorFunction [
	^ self visitFunction: aGeneratorFunction
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitGeneratorMethodDefinition: aGeneratorMethodDefinition [
	^ self visitMethodDefinition: aGeneratorMethodDefinition
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitGetMethodDefinition: aGetMethodDefinition [
	^ self visitMethodDefinition: aGetMethodDefinition
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitImportAliasDeclaration: anImportAliasDeclaration [
	^ self visitProgram: anImportAliasDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitImportCallExpression: anImportCallExpression [
	^ self visitExpression: anImportCallExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitImportDeclaration: anImportDeclaration [
	^ self visitProgram: anImportDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitImportMeta: anImportMeta [
	^ self visitExpression: anImportMeta
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitImportRequireDeclaration: anImportRequireDeclaration [
	^ self visitProgram: anImportRequireDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitImportSpecifier: anImportSpecifier [
	^ self visitProgram: anImportSpecifier
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitIndexMemberDeclaration: anIndexMemberDeclaration [
	^ self visitProgram: anIndexMemberDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitIndexSignature: anIndexSignature [
	^ self visitProgram: anIndexSignature
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitIndexedPropertyExpression: anIndexedPropertyExpression [
	^ self visitExpression: anIndexedPropertyExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitInferType: anInferType [
	^ self visitType: anInferType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitInterfaceDeclaration: anInterfaceDeclaration [
	^ self visitProgram: anInterfaceDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitIntersectionType: anIntersectionType [
	^ self visitType: anIntersectionType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitKeyOfType: aKeyOfType [
	^ self visitType: aKeyOfType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitLabelledStatement: aLabelledStatement [
	^ self visitStatement: aLabelledStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitLexicalDeclaration: aLexicalDeclaration [
	^ self visitStatement: aLexicalDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitLiteralType: aLiteralType [
	^ self visitType: aLiteralType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitMemberAccessorDeclaration: aMemberAccessorDeclaration [
	^ self visitProgram: aMemberAccessorDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitMemberFunctionDeclaration: aMemberFunctionDeclaration [
	^ self visitProgram: aMemberFunctionDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitMemberVariableDeclaration: aMemberVariableDeclaration [
	^ self visitProgram: aMemberVariableDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitMethodDefinition: aMethodDefinition [
	^ self visitProgram: aMethodDefinition
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitMethodSignature: aMethodSignature [
	^ self visitProgram: aMethodSignature
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitModule: aModule [
	^ self visitProgram: aModule
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNameExpression: aNameExpression [
	^ self visitExpression: aNameExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNameSpaceImport: aNameSpaceImport [
	^ self visitProgram: aNameSpaceImport
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNamedImports: aNamedImports [
	^ self visitProgram: aNamedImports
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNamedPropertyExpression: aNamedPropertyExpression [
	^ self visitExpression: aNamedPropertyExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNamespaceDeclaration: aNamespaceDeclaration [
	^ self visitProgram: aNamespaceDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNewExpression: aNewExpression [
	^ self visitExpression: aNewExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNewTargetExpression: aNewTargetExpression [
	^ self visitExpression: aNewTargetExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNullLiteral: aNullLiteral [
	^ self visitLiteral: aNullLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitNumericLiteral: aNumericLiteral [
	^ self visitLiteral: aNumericLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitObjectBindingPattern: anObjectBindingPattern [
	^ self visitProgram: anObjectBindingPattern
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitObjectLiteral: anObjectLiteral [
	^ self visitExpression: anObjectLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitObjectType: anObjectType [
	^ self visitType: anObjectType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitOptional: anOptional [
	^ self visitProgram: anOptional
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitOptionalArguments: anOptionalArguments [
	^ self visitOptional: anOptionalArguments
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitOptionalExpression: anOptionalExpression [
	^ self visitExpression: anOptionalExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitOptionalIndexed: anOptionalIndexed [
	^ self visitOptional: anOptionalIndexed
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitOptionalName: anOptionalName [
	^ self visitOptional: anOptionalName
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitOptionalTemplate: anOptionalTemplate [
	^ self visitOptional: anOptionalTemplate
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitPostfixExpression: aPostfixExpression [
	^ self visitExpression: aPostfixExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitPrefixExpression: aPrefixExpression [
	^ self visitExpression: aPrefixExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitPropertyAssignment: aPropertyAssignment [
	^ self visitProgram: aPropertyAssignment
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitPropertySignature: aPropertySignature [
	^ self visitProgram: aPropertySignature
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitRegularExpressionLiteral: aRegularExpressionLiteral [
	^ self visitLiteral: aRegularExpressionLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitRestVariableDeclaration: aRestVariableDeclaration [
	^ self visitVariableDeclaration: aRestVariableDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitScript: aScript [
	^ self visitProgram: aScript
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitSetMethodDefinition: aSetMethodDefinition [
	^ self visitMethodDefinition: aSetMethodDefinition
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitSpreadExpression: aSpreadExpression [
	^ self visitExpression: aSpreadExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitSuperCallExpression: aSuperCallExpression [
	^ self visitExpression: aSuperCallExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitSuperIndexedPropertyExpression: aSuperIndexedPropertyExpression [
	^ self visitExpression: aSuperIndexedPropertyExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitSuperNamedPropertyExpression: aSuperNamedPropertyExpression [
	^ self visitExpression: aSuperNamedPropertyExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitSwitchStatement: aSwitchStatement [
	^ self visitStatement: aSwitchStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTSExport: aTSExport [
	^ self visitProgram: aTSExport
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTSSourceFile: aTSSourceFile [
	^ self visitProgram: aTSSourceFile
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTaggedTemplateLiteral: aTaggedTemplateLiteral [
	^ self visitExpression: aTaggedTemplateLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTemplateLiteral: aTemplateLiteral [
	^ self visitExpression: aTemplateLiteral
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitThisExpression: aThisExpression [
	^ self visitExpression: aThisExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitThisType: aThisType [
	^ self visitType: aThisType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitThrowStatement: aThrowStatement [
	^ self visitStatement: aThrowStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTupleType: aTupleType [
	^ self visitType: aTupleType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeAliasDeclaration: aTypeAliasDeclaration [
	^ self visitProgram: aTypeAliasDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeArguments: aTypeArguments [
	^ self visitProgram: aTypeArguments
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeName: aTypeName [
	^ self visitProgram: aTypeName
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeParameter: aTypeParameter [
	^ self visitProgram: aTypeParameter
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeParameters: aTypeParameters [
	^ self visitProgram: aTypeParameters
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeQuery: aTypeQuery [
	^ self visitType: aTypeQuery
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeQueryExpression: aTypeQueryExpression [
	^ self visitProgram: aTypeQueryExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypeReference: aTypeReference [
	^ self visitType: aTypeReference
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitTypedParameter: aTypedParameter [
	^ self visitProgram: aTypedParameter
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitUnionType: anUnionType [
	^ self visitType: anUnionType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitVariableDeclaration: aVariableDeclaration [
	^ self visitProgram: aVariableDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitVariablePatternDeclaration: aVariablePatternDeclaration [
	^ self visitProgram: aVariablePatternDeclaration
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitVariableStatement: aVariableStatement [
	^ self visitStatement: aVariableStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitVoidType: aVoidType [
	^ self visitType: aVoidType
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitWithStatement: aWithStatement [
	^ self visitStatement: aWithStatement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXAttribute: aXAttribute [
	^ self visitProgram: aXAttribute
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXClosingElement: aXClosingElement [
	^ self visitProgram: aXClosingElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXCodeExpression: aXCodeExpression [
	^ self visitExpression: aXCodeExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXElement: aXElement [
	^ self visitExpression: aXElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXElementName: aXElementName [
	^ self visitProgram: aXElementName
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXFragment: aXFragment [
	^ self visitExpression: aXFragment
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXMemberExpression: aXMemberExpression [
	^ self visitProgram: aXMemberExpression
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXNamespacedName: aXNamespacedName [
	^ self visitProgram: aXNamespacedName
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXOpeningElement: aXOpeningElement [
	^ self visitProgram: aXOpeningElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXSelfClosingElement: aXSelfClosingElement [
	^ self visitExpression: aXSelfClosingElement
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXSpreadAttribute: aXSpreadAttribute [
	^ self visitProgram: aXSpreadAttribute
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitXText: aXText [
	^ self visitExpression: aXText
]

{ #category : #generated }
TJSProgramNodeVisitor >> visitYieldExpression: aYieldExpression [
	^ self visitExpression: aYieldExpression
]
