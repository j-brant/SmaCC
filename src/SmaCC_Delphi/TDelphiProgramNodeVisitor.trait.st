Trait {
	#name : #TDelphiProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAbsoluteType: anAbsoluteType [
	^ self visitType: anAbsoluteType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAddressExpression: anAddressExpression [
	^ self visitExpression: anAddressExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAnonymousFunctionDefinition: anAnonymousFunctionDefinition [
	^ self visitExpression: anAnonymousFunctionDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAnonymousFunctionType: anAnonymousFunctionType [
	^ self visitAnonymousMethodType: anAnonymousFunctionType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAnonymousMethodType: anAnonymousMethodType [
	^ self visitType: anAnonymousMethodType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAnonymousProcedureDefinition: anAnonymousProcedureDefinition [
	^ self visitExpression: anAnonymousProcedureDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAnonymousProcedureType: anAnonymousProcedureType [
	^ self visitAnonymousMethodType: anAnonymousProcedureType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitArgument: anArgument [
	^ self visitProgram: anArgument
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitArrayExpression: anArrayExpression [
	^ self visitExpression: anArrayExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitArrayType: anArrayType [
	^ self visitType: anArrayType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAsmBlock: anAsmBlock [
	^ self visitStatement: anAsmBlock
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAssignmentExpression: anAssignmentExpression [
	^ self visitExpression: anAssignmentExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitAttribute: anAttribute [
	^ self visitProgram: anAttribute
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitBinaryExpression: aBinaryExpression [
	^ self visitExpression: aBinaryExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitCaseLabel: aCaseLabel [
	^ self visitProgram: aCaseLabel
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitCaseOption: aCaseOption [
	^ self visitProgram: aCaseOption
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitCaseStatement: aCaseStatement [
	^ self visitMultiStatement: aCaseStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassFunctionDefinition: aClassFunctionDefinition [
	^ self visitFunctionDefinition: aClassFunctionDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassFunctionHeader: aClassFunctionHeader [
	^ self visitFunctionHeader: aClassFunctionHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassHelperType: aClassHelperType [
	^ self visitClassType: aClassHelperType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassOperatorDefinition: aClassOperatorDefinition [
	^ self visitFunctionDefinition: aClassOperatorDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassOperatorHeader: aClassOperatorHeader [
	^ self visitMethodHeader: aClassOperatorHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassOrInterfaceType: aClassOrInterfaceType [
	^ self visitType: aClassOrInterfaceType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassProcedureDefinition: aClassProcedureDefinition [
	^ self visitProcedureDefinition: aClassProcedureDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassProcedureHeader: aClassProcedureHeader [
	^ self visitProcedureHeader: aClassProcedureHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassPropertyHeader: aClassPropertyHeader [
	^ self visitPropertyHeader: aClassPropertyHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassSection: aClassSection [
	^ self visitProgram: aClassSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassType: aClassType [
	^ self visitClassOrInterfaceType: aClassType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitClassVars: aClassVars [
	^ self visitVars: aClassVars
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitCodeSection: aCodeSection [
	^ self visitProgram: aCodeSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitCompilationFile: aCompilationFile [
	^ self visitProgram: aCompilationFile
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitConstantArrayExpression: aConstantArrayExpression [
	^ self visitExpression: aConstantArrayExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitConstantDefinition: aConstantDefinition [
	^ self visitProgram: aConstantDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitConstantList: aConstantList [
	^ self visitProgram: aConstantList
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitConstantRecordField: aConstantRecordField [
	^ self visitProgram: aConstantRecordField
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitConstructorDefinition: aConstructorDefinition [
	^ self visitMethodDefinition: aConstructorDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitConstructorHeader: aConstructorHeader [
	^ self visitMethodHeader: aConstructorHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitDefinedTypeList: aDefinedTypeList [
	^ self visitProgram: aDefinedTypeList
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitDeprecatedMethodModifier: aDeprecatedMethodModifier [
	^ self visitMethodModifier: aDeprecatedMethodModifier
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitDestructorDefinition: aDestructorDefinition [
	^ self visitMethodDefinition: aDestructorDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitDestructorHeader: aDestructorHeader [
	^ self visitMethodHeader: aDestructorHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitEmptyStatement: anEmptyStatement [
	^ self visitStatement: anEmptyStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitEnumName: anEnumName [
	^ self visitProgram: anEnumName
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitEnumType: anEnumType [
	^ self visitType: anEnumType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitExcept: anExcept [
	^ self visitProgram: anExcept
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitExceptElse: anExceptElse [
	^ self visitProgram: anExceptElse
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitExportsDefinition: anExportsDefinition [
	^ self visitProgram: anExportsDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitExpression: anExpression [
	^ self visitStatement: anExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitExpressionSetType: anExpressionSetType [
	^ self visitSetType: anExpressionSetType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitExternalMethodModifier: anExternalMethodModifier [
	^ self visitMethodModifier: anExternalMethodModifier
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitFileType: aFileType [
	^ self visitType: aFileType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitFinalizationSection: aFinalizationSection [
	^ self visitCodeSection: aFinalizationSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitFinally: aFinally [
	^ self visitProgram: aFinally
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitForInStatement: aForInStatement [
	^ self visitStatement: aForInStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitForStatement: aForStatement [
	^ self visitStatement: aForStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitForVariable: aForVariable [
	^ self visitProgram: aForVariable
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitFormattedMethodArgument: aFormattedMethodArgument [
	^ self visitProgram: aFormattedMethodArgument
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitFunctionDefinition: aFunctionDefinition [
	^ self visitMethodDefinition: aFunctionDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitFunctionHeader: aFunctionHeader [
	^ self visitMethodHeader: aFunctionHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitGotoStatement: aGotoStatement [
	^ self visitStatement: aGotoStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitGuid: aGuid [
	^ self visitProgram: aGuid
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitIfStatement: anIfStatement [
	^ self visitStatement: anIfStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitImplementationCode: anImplementationCode [
	^ self visitCodeSection: anImplementationCode
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitImplementationSection: anImplementationSection [
	^ self visitProgram: anImplementationSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitImplicitClassSection: anImplicitClassSection [
	^ self visitClassSection: anImplicitClassSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInheritedFunctionCall: anInheritedFunctionCall [
	^ self visitExpression: anInheritedFunctionCall
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInitializationSection: anInitializationSection [
	^ self visitCodeSection: anInitializationSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInstantiatedGenericExpression: anInstantiatedGenericExpression [
	^ self visitExpression: anInstantiatedGenericExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInstantiatedGenericType: anInstantiatedGenericType [
	^ self visitType: anInstantiatedGenericType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInterfaceFunctionAssignment: anInterfaceFunctionAssignment [
	^ self visitProgram: anInterfaceFunctionAssignment
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInterfaceProcedureAssignment: anInterfaceProcedureAssignment [
	^ self visitProgram: anInterfaceProcedureAssignment
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInterfaceSection: anInterfaceSection [
	^ self visitProgram: anInterfaceSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitInterfaceType: anInterfaceType [
	^ self visitClassOrInterfaceType: anInterfaceType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitLabelVariable: aLabelVariable [
	^ self visitProgram: aLabelVariable
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitLabeledStatement: aLabeledStatement [
	^ self visitStatement: aLabeledStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitLibraryFile: aLibraryFile [
	^ self visitCompilationFile: aLibraryFile
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitLiteralExpression: aLiteralExpression [
	^ self visitExpression: aLiteralExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMainMethodDefinition: aMainMethodDefinition [
	^ self visitProgram: aMainMethodDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMemExpression: aMemExpression [
	^ self visitExpression: aMemExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMessageMethodModifier: aMessageMethodModifier [
	^ self visitMethodModifier: aMessageMethodModifier
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMetaclassType: aMetaclassType [
	^ self visitType: aMetaclassType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMethodCallExpression: aMethodCallExpression [
	^ self visitExpression: aMethodCallExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMethodDefinition: aMethodDefinition [
	^ self visitProgram: aMethodDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMethodHeader: aMethodHeader [
	^ self visitProgram: aMethodHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMethodModifier: aMethodModifier [
	^ self visitProgram: aMethodModifier
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMinusExpression: aMinusExpression [
	^ self visitExpression: aMinusExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitModuleName: aModuleName [
	^ self visitProgram: aModuleName
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMultiStatement: aMultiStatement [
	^ self visitStatement: aMultiStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitMultiValueCaseLabel: aMultiValueCaseLabel [
	^ self visitProgram: aMultiValueCaseLabel
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitNamedDefinedType: aNamedDefinedType [
	^ self visitProgram: aNamedDefinedType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitNamedType: aNamedType [
	^ self visitType: aNamedType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitNewClassType: aNewClassType [
	^ self visitClassType: aNewClassType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitNotExpression: aNotExpression [
	^ self visitExpression: aNotExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitOldClassType: anOldClassType [
	^ self visitClassType: anOldClassType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitOnDo: anOnDo [
	^ self visitProgram: anOnDo
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPackageFile: aPackageFile [
	^ self visitCompilationFile: aPackageFile
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPlusExpression: aPlusExpression [
	^ self visitExpression: aPlusExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPointerExpression: aPointerExpression [
	^ self visitExpression: aPointerExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPointerType: aPointerType [
	^ self visitType: aPointerType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPrivateClassSection: aPrivateClassSection [
	^ self visitClassSection: aPrivateClassSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitProcedureDefinition: aProcedureDefinition [
	^ self visitMethodDefinition: aProcedureDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitProcedureHeader: aProcedureHeader [
	^ self visitMethodHeader: aProcedureHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitProgramFile: aProgramFile [
	^ self visitCompilationFile: aProgramFile
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyArrayAccessors: aPropertyArrayAccessors [
	^ self visitProgram: aPropertyArrayAccessors
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyDefault: aPropertyDefault [
	^ self visitProgram: aPropertyDefault
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyDispid: aPropertyDispid [
	^ self visitProgram: aPropertyDispid
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyExpression: aPropertyExpression [
	^ self visitExpression: aPropertyExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyHeader: aPropertyHeader [
	^ self visitProgram: aPropertyHeader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyImplements: aPropertyImplements [
	^ self visitProgram: aPropertyImplements
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyIndex: aPropertyIndex [
	^ self visitProgram: aPropertyIndex
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyModifier: aPropertyModifier [
	^ self visitProgram: aPropertyModifier
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyReader: aPropertyReader [
	^ self visitProgram: aPropertyReader
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyStored: aPropertyStored [
	^ self visitProgram: aPropertyStored
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPropertyWriter: aPropertyWriter [
	^ self visitProgram: aPropertyWriter
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitProtectedClassSection: aProtectedClassSection [
	^ self visitClassSection: aProtectedClassSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPublicClassSection: aPublicClassSection [
	^ self visitClassSection: aPublicClassSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitPublishedClassSection: aPublishedClassSection [
	^ self visitClassSection: aPublishedClassSection
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitQualifiedName: aQualifiedName [
	^ self visitProgram: aQualifiedName
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRaiseStatement: aRaiseStatement [
	^ self visitStatement: aRaiseStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRangeCaseLabel: aRangeCaseLabel [
	^ self visitProgram: aRangeCaseLabel
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRangeSetType: aRangeSetType [
	^ self visitSetType: aRangeSetType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRangeSetValue: aRangeSetValue [
	^ self visitSetValue: aRangeSetValue
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRangeType: aRangeType [
	^ self visitType: aRangeType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRecordExpression: aRecordExpression [
	^ self visitExpression: aRecordExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRecordHelperType: aRecordHelperType [
	^ self visitType: aRecordHelperType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRecordType: aRecordType [
	^ self visitType: aRecordType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitRepeatStatement: aRepeatStatement [
	^ self visitMultiStatement: aRepeatStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitResourceStringDefinition: aResourceStringDefinition [
	^ self visitProgram: aResourceStringDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitResourceStringList: aResourceStringList [
	^ self visitProgram: aResourceStringList
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitSetExpression: aSetExpression [
	^ self visitExpression: aSetExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitSetType: aSetType [
	^ self visitType: aSetType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitSetValue: aSetValue [
	^ self visitProgram: aSetValue
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitSimpleArrayType: aSimpleArrayType [
	^ self visitType: aSimpleArrayType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitSingleSetValue: aSingleSetValue [
	^ self visitSetValue: aSingleSetValue
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitStatement: aStatement [
	^ self visitProgram: aStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitStatementBlock: aStatementBlock [
	^ self visitMultiStatement: aStatementBlock
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitTryStatement: aTryStatement [
	^ self visitMultiStatement: aTryStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitType: aType [
	^ self visitProgram: aType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitTypeArgument: aTypeArgument [
	^ self visitProgram: aTypeArgument
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitTypeType: aTypeType [
	^ self visitProgram: aTypeType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitUnitFile: anUnitFile [
	^ self visitCompilationFile: anUnitFile
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitValuesSetType: aValuesSetType [
	^ self visitSetType: aValuesSetType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitVariable: aVariable [
	^ self visitProgram: aVariable
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitVariableDefinition: aVariableDefinition [
	^ self visitProgram: aVariableDefinition
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitVariableExpression: aVariableExpression [
	^ self visitExpression: aVariableExpression
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitVariableStatement: aVariableStatement [
	^ self visitStatement: aVariableStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitVariantType: aVariantType [
	^ self visitProgram: aVariantType
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitVars: aVars [
	^ self visitProgram: aVars
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitWhileStatement: aWhileStatement [
	^ self visitStatement: aWhileStatement
]

{ #category : #generated }
TDelphiProgramNodeVisitor >> visitWithStatement: aWithStatement [
	^ self visitStatement: aWithStatement
]
