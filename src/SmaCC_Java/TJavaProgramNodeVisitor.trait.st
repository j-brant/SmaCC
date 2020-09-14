Trait {
	#name : #TJavaProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Java'
}

{ #category : #generated }
TJavaProgramNodeVisitor >> visitAbstractMethodDeclaration: anAbstractMethodDeclaration [
	^ self visitDeclaration: anAbstractMethodDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitAnnotation: anAnnotation [
	^ self visitProgram: anAnnotation
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitAnnotationInterface: anAnnotationInterface [
	^ self visitProgram: anAnnotationInterface
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitAnnotationMethodDeclaration: anAnnotationMethodDeclaration [
	^ self visitAbstractMethodDeclaration: anAnnotationMethodDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitArrayAccess: anArrayAccess [
	^ self visitExpression: anArrayAccess
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitArrayInitializer: anArrayInitializer [
	^ self visitProgram: anArrayInitializer
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitArrayMethodDeclarator: anArrayMethodDeclarator [
	^ self visitProgram: anArrayMethodDeclarator
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitArrayType: anArrayType [
	^ self visitType: anArrayType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitArrayVariableName: anArrayVariableName [
	^ self visitProgram: anArrayVariableName
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitAssertStatement: anAssertStatement [
	^ self visitStatement: anAssertStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitAssignment: anAssignment [
	^ self visitExpression: anAssignment
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitBlock: aBlock [
	^ self visitStatement: aBlock
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitBooleanLiteral: aBooleanLiteral [
	^ self visitLiteral: aBooleanLiteral
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitBooleanType: aBooleanType [
	^ self visitPrimitiveType: aBooleanType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitBreakStatement: aBreakStatement [
	^ self visitStatement: aBreakStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitByteType: aByteType [
	^ self visitPrimitiveType: aByteType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitCastExpression: aCastExpression [
	^ self visitUnaryExpression: aCastExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitCatchClause: aCatchClause [
	^ self visitProgram: aCatchClause
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitCatchParameter: aCatchParameter [
	^ self visitProgram: aCatchParameter
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitCharType: aCharType [
	^ self visitPrimitiveType: aCharType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitCharacterLiteral: aCharacterLiteral [
	^ self visitLiteral: aCharacterLiteral
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitClassDeclaration: aClassDeclaration [
	^ self visitDeclaration: aClassDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitClassExpression: aClassExpression [
	^ self visitExpression: aClassExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitClassType: aClassType [
	^ self visitType: aClassType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitConditionalExpression: aConditionalExpression [
	^ self visitExpression: aConditionalExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitConstructorDeclaration: aConstructorDeclaration [
	^ self visitDeclaration: aConstructorDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitContinueStatement: aContinueStatement [
	^ self visitStatement: aContinueStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitDeclaration: aDeclaration [
	^ self visitProgram: aDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitDefaultLabel: aDefaultLabel [
	^ self visitProgram: aDefaultLabel
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitDimensionExpression: aDimensionExpression [
	^ self visitProgram: aDimensionExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitDoWhileStatement: aDoWhileStatement [
	^ self visitStatement: aDoWhileStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitDoubleType: aDoubleType [
	^ self visitPrimitiveType: aDoubleType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitElementArrayInitializer: anElementArrayInitializer [
	^ self visitProgram: anElementArrayInitializer
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitElementValuePair: anElementValuePair [
	^ self visitProgram: anElementValuePair
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitEmptyDeclaration: anEmptyDeclaration [
	^ self visitDeclaration: anEmptyDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitEmptyMethodBody: anEmptyMethodBody [
	^ self visitProgram: anEmptyMethodBody
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitStatement: anEmptyStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitEnumConstant: anEnumConstant [
	^ self visitProgram: anEnumConstant
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitEnumDeclaration: anEnumDeclaration [
	^ self visitDeclaration: anEnumDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitProgram: anExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitExpressionStatement: anExpressionStatement [
	^ self visitStatement: anExpressionStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitFieldAccess: aFieldAccess [
	^ self visitExpression: aFieldAccess
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitFieldDeclaration: aFieldDeclaration [
	^ self visitDeclaration: aFieldDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitFinallyClause: aFinallyClause [
	^ self visitProgram: aFinallyClause
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitFloatLiteral: aFloatLiteral [
	^ self visitLiteral: aFloatLiteral
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitFloatType: aFloatType [
	^ self visitPrimitiveType: aFloatType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitForEachStatement: aForEachStatement [
	^ self visitStatement: aForEachStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitIfElseStatement: anIfElseStatement [
	^ self visitIfStatement: anIfElseStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitInitializedVariableDeclaration: anInitializedVariableDeclaration [
	^ self visitVariableDeclaration: anInitializedVariableDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitInitializer: anInitializer [
	^ self visitProgram: anInitializer
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitIntType: anIntType [
	^ self visitPrimitiveType: anIntType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitIntegerLiteral: anIntegerLiteral [
	^ self visitLiteral: anIntegerLiteral
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitInterfaceDeclaration: anInterfaceDeclaration [
	^ self visitDeclaration: anInterfaceDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitLabeledStatement: aLabeledStatement [
	^ self visitStatement: aLabeledStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitLambdaExpression: aLambdaExpression [
	^ self visitExpression: aLambdaExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitLiteral: aLiteral [
	^ self visitExpression: aLiteral
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitLocalVariableDeclaration: aLocalVariableDeclaration [
	^ self visitDeclaration: aLocalVariableDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitLocalVariableDeclarationStatement: aLocalVariableDeclarationStatement [
	^ self visitStatement: aLocalVariableDeclarationStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitLongType: aLongType [
	^ self visitPrimitiveType: aLongType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitMethodDeclaration: aMethodDeclaration [
	^ self visitDeclaration: aMethodDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitMethodDeclarator: aMethodDeclarator [
	^ self visitProgram: aMethodDeclarator
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitMethodInvocation: aMethodInvocation [
	^ self visitExpression: aMethodInvocation
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitMethodReference: aMethodReference [
	^ self visitExpression: aMethodReference
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitModifier: aModifier [
	^ self visitProgram: aModifier
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitName: aName [
	^ self visitExpression: aName
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitNew: aNew [
	^ self visitExpression: aNew
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitNewArray: aNewArray [
	^ self visitExpression: aNewArray
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitNewClass: aNewClass [
	^ self visitNew: aNewClass
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitNull: aNull [
	^ self visitLiteral: aNull
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitOuterThis: anOuterThis [
	^ self visitExpression: anOuterThis
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitPackageDeclaration: aPackageDeclaration [
	^ self visitDeclaration: aPackageDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitParameter: aParameter [
	^ self visitProgram: aParameter
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitPostDecrementExpression: aPostDecrementExpression [
	^ self visitUnaryExpression: aPostDecrementExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitPostIncrementExpression: aPostIncrementExpression [
	^ self visitUnaryExpression: aPostIncrementExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitPreDecrementExpression: aPreDecrementExpression [
	^ self visitUnaryExpression: aPreDecrementExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitPreIncrementExpression: aPreIncrementExpression [
	^ self visitUnaryExpression: aPreIncrementExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitPrimitiveType: aPrimitiveType [
	^ self visitType: aPrimitiveType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitProgramFile: aProgramFile [
	^ self visitProgram: aProgramFile
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitQualifiedName: aQualifiedName [
	^ self visitName: aQualifiedName
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitQualifiedTypeName: aQualifiedTypeName [
	^ self visitTypeName: aQualifiedTypeName
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitReturnStatement: aReturnStatement [
	^ self visitStatement: aReturnStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitShortType: aShortType [
	^ self visitPrimitiveType: aShortType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitSingleTypeImportDeclaration: aSingleTypeImportDeclaration [
	^ self visitDeclaration: aSingleTypeImportDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitStatementExpressionList: aStatementExpressionList [
	^ self visitProgram: aStatementExpressionList
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitStaticInitializer: aStaticInitializer [
	^ self visitInitializer: aStaticInitializer
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitStringLiteral: aStringLiteral [
	^ self visitLiteral: aStringLiteral
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitSuperConstructorInvocation: aSuperConstructorInvocation [
	^ self visitStatement: aSuperConstructorInvocation
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitSwitchBlock: aSwitchBlock [
	^ self visitProgram: aSwitchBlock
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitSwitchBlockStatementGroup: aSwitchBlockStatementGroup [
	^ self visitProgram: aSwitchBlockStatementGroup
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitSwitchLabel: aSwitchLabel [
	^ self visitProgram: aSwitchLabel
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitSwitchStatement: aSwitchStatement [
	^ self visitStatement: aSwitchStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitSynchronizedStatement: aSynchronizedStatement [
	^ self visitStatement: aSynchronizedStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitThisConstructorInvocation: aThisConstructorInvocation [
	^ self visitStatement: aThisConstructorInvocation
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitThrowStatement: aThrowStatement [
	^ self visitStatement: aThrowStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitThrows: aThrows [
	^ self visitProgram: aThrows
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitStatement: aTryStatement
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitTypeArgument: aTypeArgument [
	^ self visitProgram: aTypeArgument
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitTypeImportOnDemandDeclaration: aTypeImportOnDemandDeclaration [
	^ self
		visitSingleTypeImportDeclaration: aTypeImportOnDemandDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitTypeName: aTypeName [
	^ self visitProgram: aTypeName
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitTypeParameter: aTypeParameter [
	^ self visitProgram: aTypeParameter
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitTypeParameters: aTypeParameters [
	^ self visitProgram: aTypeParameters
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitUnaryAddition: anUnaryAddition [
	^ self visitUnaryExpression: anUnaryAddition
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitUnaryBitInvert: anUnaryBitInvert [
	^ self visitUnaryExpression: anUnaryBitInvert
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitUnaryExpression: anUnaryExpression [
	^ self visitExpression: anUnaryExpression
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitUnaryNot: anUnaryNot [
	^ self visitUnaryExpression: anUnaryNot
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitUnarySubtraction: anUnarySubtraction [
	^ self visitUnaryExpression: anUnarySubtraction
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitVariableArgumentParameter: aVariableArgumentParameter [
	^ self visitParameter: aVariableArgumentParameter
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitVariableDeclaration: aVariableDeclaration [
	^ self visitDeclaration: aVariableDeclaration
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitVariableName: aVariableName [
	^ self visitProgram: aVariableName
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitVoidType: aVoidType [
	^ self visitProgram: aVoidType
]

{ #category : #generated }
TJavaProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]
