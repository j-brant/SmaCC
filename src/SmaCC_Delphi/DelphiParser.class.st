Class {
	#name : #DelphiParser,
	#superclass : #SmaCCGLRParser,
	#instVars : [
		'lastInsertPosition'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiParser class >> ambiguousTransitions [
^#(
#[ 0 22 1 41] 
#[ 0 62 2 81] 
#[ 0 182 0 186] 
#[ 0 230 2 177] 
#[ 1 30 2 117] 
#[ 1 30 2 121] 
#[ 1 30 2 125] 
#[ 1 30 2 129] 
#[ 1 30 2 145] 
#[ 1 30 2 177] 
#[ 1 30 2 181] 
#[ 1 50 2 117] 
#[ 1 50 2 121] 
#[ 1 50 2 125] 
#[ 1 50 2 129] 
#[ 1 50 2 145] 
#[ 1 50 2 177] 
#[ 1 50 2 181] 
#[ 1 78 2 117] 
#[ 1 78 2 121] 
#[ 1 78 2 125] 
#[ 1 78 2 129] 
#[ 1 78 2 145] 
#[ 1 78 2 177] 
#[ 1 78 2 181] 
#[ 1 82 2 117] 
#[ 1 82 2 121] 
#[ 1 82 2 125] 
#[ 1 82 2 129] 
#[ 1 82 2 145] 
#[ 1 82 2 177] 
#[ 1 82 2 181] 
#[ 1 198 4 189] 
#[ 1 206 2 117] 
#[ 1 206 2 121] 
#[ 1 206 2 125] 
#[ 1 206 2 145] 
#[ 1 206 2 177] 
#[ 1 206 2 181] 
#[ 1 218 2 117] 
#[ 1 218 2 121] 
#[ 1 218 2 125] 
#[ 1 218 2 145] 
#[ 1 218 2 177] 
#[ 1 218 2 181] 
#[ 1 230 2 117] 
#[ 1 230 2 121] 
#[ 1 230 2 125] 
#[ 1 230 2 145] 
#[ 1 230 2 177] 
#[ 1 230 2 181] 
#[ 1 234 2 117] 
#[ 1 234 2 121] 
#[ 1 234 2 125] 
#[ 1 234 2 145] 
#[ 1 234 2 177] 
#[ 1 234 2 181] 
#[ 2 117 2 146] 
#[ 2 121 2 146] 
#[ 2 125 2 146] 
#[ 2 129 2 146] 
#[ 2 145 2 146] 
#[ 2 146 2 177] 
#[ 2 146 2 181] 
#[ 2 117 2 154] 
#[ 2 121 2 154] 
#[ 2 125 2 154] 
#[ 2 129 2 154] 
#[ 2 145 2 154] 
#[ 2 154 2 177] 
#[ 2 154 2 181] 
#[ 2 177 2 194] 
#[ 2 117 2 226] 
#[ 2 121 2 226] 
#[ 2 125 2 226] 
#[ 2 145 2 226] 
#[ 2 177 2 226] 
#[ 2 181 2 226] 
#[ 0 182 8 213] 
#[ 0 202 4 134] 
#[ 0 206 4 138] 
#[ 5 54 10 109] 
#[ 5 54 10 113] 
#[ 5 54 10 161] 
#[ 1 6 3 97] 
#[ 7 70 10 109] 
#[ 7 70 10 113] 
#[ 7 70 10 161]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-01T16:24:44.38753-05:00'
]

{ #category : #generated }
DelphiParser class >> definitionComment [
"%start File Statement SimpleDefinedType NamedDefinedType;

%glr;
%ignorecase;

%ignore_variables leftParen rightParen semicolon comma;

# Binary precedence handled by parser -- this grammar is ambiguous
%right ""ELSE"" ""OF"" <identifier>;
%right "":="";
%left ""OR"";
%left ""AND"";
%left ""XOR"" ;
#%left "","" ;
#%nonassoc ""<>"" <gt> ""<"" ""="" ""<="" <gtEq> ""IN"" ;
%nonassoc ""AS"" ""IS"" ""ABSOLUTE"" ;
%left <plus> <minus> ;
%left ""DIV"" ""MOD"" ""SHL"" ""SHR"" ""*"" ""/"";
%left ""@"";
%left ""."" <upArrow> ;
%left ""["" ""("";

%id <number> <minus> <plus> <identifier> <constantIdentifier> <semicolon> <upArrow> <controlCharacter> <at> <gt> <gtEq>;

%prefix Delphi ;
%suffix Node;
%root Program;

%hierarchy MethodModifier ( 
	ExternalMethodModifier
	MessageMethodModifier
);
%hierarchy Expression (
	AddressExpression 
	ArrayExpression 
	AssignmentExpression 
	BinaryExpression 
	ConstantArrayExpression 
	InheritedFunctionCall 
	LiteralExpression 
	MemExpression
	MethodCallExpression 
	MinusExpression 
	PlusExpression
	NotExpression
	PointerExpression 
	PropertyExpression 
	RecordExpression
	SetExpression 
	VariableExpression 
) ;
%hierarchy VariableExpression (
	InstantiatedGenericVariableExpression
);
%hierarchy AnonymousMethodType (
	AnonymousFunctionType 
	AnonymousProcedureType
);
%hierarchy SetType (
	ExpressionSetType 
	RangeSetType 
	ValuesSetType
);
%hierarchy Type (
	AbsoluteType
	AnonymousMethodType 
	ArrayType 
	ClassOrInterfaceType
	EnumType
	FileType
	InstantiatedGenericType 
	MetaclassType 
	NamedType 
	PointerType 
	RangeType 
	RecordType 
	RecordHelperType
	SetType 
	SimpleArrayType 
);
%hierarchy ClassOrInterfaceType (
	ClassType
	InterfaceType
);
%hierarchy ClassSection (
	ImplicitClassSection
	PrivateClassSection 
	ProtectedClassSection 
	PublicClassSection 
	PublishedClassSection 
);
%hierarchy Statement (
	AsmBlock 
	EmptyStatement 
	Expression 
	ForStatement 
	ForInStatement
	GotoStatement
	IfStatement 
	LabeledStatement
	MultiStatement
	RaiseStatement 
	WhileStatement 
	WithStatement 
);
%hierarchy MultiStatement (
	CaseStatement 
	TryStatement 
	StatementBlock 
	RepeatStatement 
);
%hierarchy ClassType (
	NewClassType
	OldClassType 
	ClassHelperType
) ;
%hierarchy SetValue (
	RangeSetValue 
	SingleSetValue
) ;
%hierarchy MethodHeader (
	ClassOperatorHeader
	ConstructorHeader 
	DestructorHeader
	FunctionHeader 
	ProcedureHeader 
);
%hierarchy FunctionHeader (
	ClassFunctionHeader
);
%hierarchy ProcedureHeader (
	ClassProcedureHeader
);
%hierarchy MethodDefinition ( 
	ConstructorDefinition 
	DestructorDefinition
	FunctionDefinition 
	ProcedureDefinition 
);
%hierarchy FunctionDefinition (
	ClassFunctionDefinition
	ClassOperatorDefinition
);
%hierarchy ProcedureDefinition (
	ClassProcedureDefinition
);
%hierarchy PropertyHeader (
	ClassPropertyHeader
);
%hierarchy CodeSection (
	FinalizationSection 
	ImplementationCode
	InitializationSection 
);
%hierarchy Vars (
	ClassVars
);

<gt>
	: \>
	;
<gtEq>
	: \> \=
	;
<at>
	: AT
	;
<minus> 
	: \- 
	;
<plus> 
	: \+ 
	;
<semicolon> 
	: \; 
	;
<upArrow> 
	: \^ 
	;
 <LETTER> 
	: <isLetter>|_
	;
<DIGIT> 
	: [0-9] 
	;
<H>
	: [a-fA-F0-9]
	;
<D>
	: [0-9]
	;
<E>
	: [Ee][\+\-]?<D>+
	;
<identifier> 
	: \&?<LETTER> (<LETTER>|<DIGIT>)*
	;
<constantIdentifier> 
	: <identifier> 
	;
<unsignedInt> 
	: (\$<H>+) 
	| (<D>+) 
	;
<unsignedReal> 
	: <D>+<E> 
	| (<D>+\.<D>* | \.<D>+)<E>?
	;
<number> 
	: [\-\+]? (<unsignedInt> | <unsignedReal>) 
	;
<integerWithRange> 
	: [\-\+]? <D>+\.\. 
	;
<char> 
	: \# <unsignedInt>
	;
<control_character>
	: \^ [a-z] 
	;
<string> 
	: (<char> | <control_character>)* (\' [^\']* \' (<char> | <control_character>)*)+
	| <char>+  
	;
<comment>
	: \{[^\}]*\} 
	| \(\*([^*]|[\r\n]|(\*+([^*)]|[\r\n])))*\*+\) 
	| \/\/ [^\r\n]* [\r\n] 
	;
<whitespace>
	: (\s|\x1A)+
	;
<patternToken>
	: (\`  [^\`]* \`)+
	;

<multiple_control_chars>
	: <control_character> <control_character>+
	;

#These below are probably wrong

<labelID> 
	: <identifier> 
	; 
#<unitName> : <identifier> ;
<immCharID> 
	: \\\@ 
	;

File 
	: UnitFile {{UnitFile}}
	| ProgramFile {{ProgramFile}}
	| LibraryFile {{LibraryFile}}
	| PackageFile {{PackageFile}}
	;
ProgramFile
	: ProgramLine UsesList MainMethod 'main' ""."" 'period'
	| UsesList MainMethod 'main' ""."" 'period'
	;
ProgramLine
	: ""PROGRAM"" 'programToken' FullModuleName 'programName' OptionalPlatform <semicolon> 'semicolon' 
	;
LibraryFile
	: LibraryLine UsesList Exports MainMethod 'main' ""."" 'period'
	;
LibraryLine
	: ""LIBRARY"" 'libraryToken' FullModuleName 'libraryName' OptionalPlatform <semicolon> 'semicolon' 
	;
Exports
	: 
	| Exports LibraryExport 'export'
	;
LibraryExport
	: ""EXPORTS"" 'exportsToken' <identifier> 'name' <semicolon> 'semicolon' {{LibraryExport}}
	;
MainMethod
	: MethodComponents {{MainMethodDefinition}}
	;
PackageFile
	: PackageLine Requires Contains EndFile
	;
PackageLine
	: ""PACKAGE"" 'packageToken' FullModuleName 'packageName' <semicolon> 'semicolon'
	;
Requires
	: ""REQUIRES"" 'requiresToken' RequiresList <semicolon> 'semicolon'
	;
RequiresList
	: FullModuleName 'requiresName'
	| RequiresList "","" 'comma' FullModuleName 'requiresName'
	;
Contains
	: ""CONTAINS"" 'containsToken' UsesModuleList <semicolon> 'semicolon'
	;
UnitFile 
	: UnitLine InterfaceSection 'interfaceSection' ImplementationSection 'implementationSection' InitializationSection 'initializationSection' FinalizationSection 'finalizationSection'   EndFile
	| UnitLine
	;
UnitLine
	: ""UNIT"" 'unitToken' FullModuleName 'unitName' OptionalPlatform <semicolon> 'semicolon' 
	;
InterfaceSection
	: 
	| ""INTERFACE"" 'interfaceToken' UsesList InterfaceSectionValueList {{InterfaceSection}}
	;
UsesList
	: 
	| ""USES"" 'usesToken' UsesModuleList <semicolon> 'semicolon'
	;
UsesModuleList
	: UsesModule
	| UsesModuleList "","" 'comma' UsesModule
	;
UsesModule
	: FullModuleName 'moduleName'
	| FullModuleName 'moduleName' ""IN"" 'inToken' <string> 'filename'
	;
FullModuleName
	: <identifier> 'name' {{ModuleName}}
	| FullModuleName ""."" 'period' <identifier> 'name' {{ModuleName}}
	;
InterfaceSectionValueList
	: 
	| InterfaceSectionValueList InterfaceSectionValue 'value'
	;
InterfaceSectionValue
	: DefinedTypeList
	| ResourceStringList
	| ConstantValueList
	| ProcedureHeader
	| FunctionHeader
	| Vars
	;
ConstantValueList
	: ""CONST"" 'constToken' ConstantValues {{ConstantList}}
	;
ConstantValues
	: ConstantValue 'definition'
	| ConstantValues ConstantValue 'definition'
	;
ConstantValue
	: <identifier> 'name' OptionalType ""="" 'equalToken' ConstantExpression 'expression' OptionalPlatform OptionalDeprecated <semicolon> 'semicolon' {{ConstantDefinition}} 
	;
ResourceStringList
	: ""RESOURCESTRING"" 'resourceStringToken' Resources {{ResourceStringList}}
	;
Resources
	: Resource 'definition'
	| Resources Resource 'definition'
	;
Resource
	: <identifier> 'name' ""="" 'equalToken' ConstantExpression 'value' OptionalDeprecated <semicolon> 'semicolon' {{ResourceStringDefinition}} 
	;
DefinedTypeList
	: ""TYPE"" 'typeToken' NamedDefinedTypes {{DefinedTypeList}}
	;
NamedDefinedTypes
	: NamedDefinedType 'definition'
	| NamedDefinedTypes NamedDefinedType 'definition'
	;
NamedDefinedType
	: <identifier> 'name'  OptionalGenericTypeArguments ""="" 'equalToken' DefinedType {{NamedDefinedType}}
	;
OptionalGenericTypeArguments
	:
	| ""<"" 'left' GenericTypeArgumentList <gt> 'right'
	;
GenericTypeArgumentList
	: <identifier> 'genericTypeArgument'
	|  GenericTypeArgumentList "","" 'comma' <identifier> 'genericTypeArgument'
	;
DefinedType 
	: SimpleDefinedType 'type' OptionalPlatform <semicolon> 'semicolon'
	| EnumType 'type' <semicolon> 'semicolon'
	| AnonymousProcedureType 'type'
	| AnonymousFunctionType 'type'
	| ClassOrInterfaceType 'type' OptionalPlatform <semicolon> 'semicolon'
	;
EnumType
	: ""("" 'left' EnumList "")"" 'right' {{}}
	;
EnumList
	: EnumName 'name'
	| EnumList "","" 'comma' EnumName 'name'
	;
EnumName
	: <identifier> 'name' {{}}
	| <identifier> 'name' ""="" 'equal' ConstantExpression 'value' {{}}
	;
ClassOrInterfaceType
	: NewClassType
	| OldClassType
	| InterfaceType
	| MetaclassType
	| ClassHelperType
	;
SimpleDefinedType
	: NamedType 'typeExpression' {{NamedType}}
	| <upArrow> 'upArrowToken' Type 'type' {{PointerType}}
	| ArrayType
	| RecordType
	| RecordHelperType
	| Type 'type' ""["" 'left' ConstantExpression 'bounds' ""]"" 'right' {{SimpleArrayType}} 
	| FileType
	| Type 'type' ""ABSOLUTE"" 'absoluteToken' Type 'variable' {{AbsoluteType}}
	| SetType
	| RangeType
	| ""TYPE"" 'typeToken' QualifiedName 'typeName' {{TypeType}}
	;
InstantiatedGenericTypeArguments
	: ""<"" 'left' InstantiatedGenericTypeArgumentList <gt> 'right'
	;
InstantiatedGenericTypeArgumentList
	: SimpleDefinedType 'typeArgument'
	| InstantiatedGenericTypeArgumentList "","" 'comma' SimpleDefinedType 'typeArgument'
	;
NamedType
	: | <constantIdentifier> 'name' {{VariableExpression}}
	| NamedType 'expression' ""."" 'period' <constantIdentifier> 'name' {{PropertyExpression}} 
	| NamedType 'type' InstantiatedGenericTypeArguments {{InstantiatedGenericType}}
	#: ConstantExpression 'typeExpression' {{NamedType}} #should be check if we have a valid type
	;
OptionalPlatform
	:
	| ""PLATFORM"" 'modifier'
	| ""DEPRECATED"" 'modifier'
	;
AnonymousProcedureType
	: ""PROCEDURE"" 'procedureToken' OptionalArguments OptionalOfObject <semicolon> 'semicolon' MethodModifiers {{AnonymousProcedureType}}
	;
AnonymousFunctionType
	: ""FUNCTION"" 'functionToken' OptionalArguments "":"" 'colon' Type 'type' OptionalOfObject  <semicolon> 'semicolon' MethodModifiers {{AnonymousFunctionType}}
	;
OptionalArguments
	:
	| ""("" 'left' ArgumentList "")"" 'right'
	;
SetType
	: ""SET"" 'setToken' ""OF"" 'ofToken' ConstantExpression 'setValue' {{ExpressionSetType}} 
	| ""SET"" 'setToken' ""OF"" 'ofToken' RangeType 'setValue' {{RangeSetType}}
	| ""SET"" 'setToken' ""OF"" 'ofToken' ""("" 'left' TwoItemSetNameList "")"" 'right' {{ValuesSetType}} ###
	;
TwoItemSetNameList	#hacked for two items since one item conflicts with constant expression set
	: <constantIdentifier> 'name' "","" 'comma' SetNameList
	;
SetNameList
	: <constantIdentifier> 'name'
	| SetNameList "","" 'comma' <constantIdentifier> 'name'
	;
MetaclassType
	: ""CLASS"" 'classToken' ""OF"" 'ofToken' <identifier> 'name' {{MetaclassType}}
	;
RecordType
	: OptionalPacked ""RECORD"" 'recordToken' RecordFieldList ""END"" 'endToken' {{RecordType}}
	;
RecordHelperType
	: ""RECORD"" 'recordToken' ""HELPER"" 'helperToken' ""FOR"" 'forToken' QualifiedName 'record' RecordFieldList ""END"" 'endToken' {{RecordHelperType}}
	;	
RecordFieldList
	: ImplicitClassSection 'section' ClassSections
	| ImplicitClassSection 'section' ClassSections VariantRecordPart
	;
OptionalPacked
	: 
	| ""PACKED"" 'packedToken'
	;
VariantRecordPart
	: ""CASE"" 'caseToken' <identifier> 'value' OptionalType ""OF"" 'ofToken' VariantTypes OptionalSemicolon #{{VariantRecordPart}}
	;
VariantTypes
	: VariantType 'variantType'
	| VariantTypes <semicolon> 'semicolon' VariantType 'variantType' 
	;
VariantType
	: VariantNames "":"" 'colon' ""("" 'left' RecordFieldList "")"" 'right' {{VariantType}}
	;
VariantNames
	: VariantName 'name'
	| VariantNames "","" 'comma' VariantName 'name'
	;
VariantName
	: ConstantExpression
	;
RangeType
	: RangeValue 'startValue' "".."" 'dots' RangeValue 'endValue' {{RangeType}}
	;
RangeValue
	: ConstantExpression	#should really be numbers
	;
Number
	: <number>
	;
ConstantExpression
	: Number 'value' {{LiteralExpression}}
	| <controlCharacter> 'value' {{LiteralExpression}}
	| <constantIdentifier> 'name' {{VariableExpression}}
	| ConstantExpression 'expression' ""."" 'period' <constantIdentifier> 'name' {{PropertyExpression}}
	| ConstantExpression 'leftExpression' ConstantOperator 'operator' ConstantExpression 'rightExpression' {{BinaryExpression}}
	| String 'value' {{LiteralExpression}}
	| <multiple_control_chars> 'value' {{LiteralExpression}}
	| ConstantExpression 'receiver' ""("" 'left' ConstantArguments "")"" 'right' {{MethodCallExpression}}
	| SetConstructor
	| ""("" 'left' ConstantRecord OptionalSemicolon "")"" 'right' {{RecordExpression}}
	| ""("" 'left' ConstantArray "")"" 'right' {{ConstantArrayExpression}}
	| ""NOT"" 'notToken' ConstantExpression 'expression' {{NotExpression}}
	| <minus> 'minus' ConstantExpression 'expression' {{MinusExpression}}
	| <plus> 'plus' ConstantExpression 'expression' {{PlusExpression}}
	| ""@"" 'atToken' ConstantExpression 'expression' {{AddressExpression}}
	;
ConstantArray
	: ConstantExpressionList
	|
	;
ConstantExpressionList
	: EnumExpression # hacked -- need one value arrays but that conflicts with parened expressions
	| ConstantExpressionList "","" 'comma' EnumExpression 
	;
EnumExpression
	: ConstantExpression 'expression'
	| ConstantExpression 'expression' ""="" 'equalToken' ConstantExpression 'value'
	;
ConstantRecord
	: ConstantRecordFields
	;
ConstantRecordFields
	: ConstantRecordField 'field'
	| ConstantRecordFields <semicolon> 'semicolon' ConstantRecordField 'field'
	;
ConstantRecordField
	: <constantIdentifier> 'name' "":"" 'colon' ConstantExpression 'expression' {{ConstantRecordField}}
	;
ConstantArguments
	: ConstantExpression 'argument'
	| ConstantArguments "","" 'comma' ConstantExpression 'argument'
	;
NewClassType
	: ""CLASS"" 'classToken' ClassAttributes Superclass ImplicitClassSection 'implicitClassSection' ClassSections ""END"" 'endToken' {{NewClassType}}
	| ""CLASS"" 'classToken' ClassAttributes Superclass {{NewClassType}}
	;
ClassHelperType	# attributes and superclass are likely not used
	: ""CLASS""'classToken' ClassAttributes ""HELPER"" 'helperToken' ""FOR"" 'forToken' QualifiedName 'class' Superclass ImplicitClassSection 'implicitClassSection' ClassSections ""END"" 'endToken' {{ClassHelperType}}
	| ""CLASS""'classToken' ClassAttributes ""HELPER"" 'helperToken' ""FOR"" 'forToken' QualifiedName 'class' Superclass {{ClassHelperType}}
	;
ClassAttributes
	:
	| ClassAttributes ClassAttribute 'classAttribute'
	;
ClassAttribute
	: ""ABSTRACT""
	| ""SEALED""
	;
OldClassType
	: ""OBJECT"" 'objectToken' Superclass ImplicitClassSection 'implicitClassSection' ClassSections ""END"" 'endToken' {{OldClassType}} 
	;
OptionalDeprecated
	:
	| ""DEPRECATED"" 'deprecatedToken'
	;
ImplicitClassSection
	: NewClassComponents {{ImplicitClassSection}}
	;
ClassSections
	: 
	| ClassSections ClassSection 'section'
	;
ClassSection
	: PrivateClassSection
	| ProtectedClassSection
	| PublicClassSection
	| PublishedClassSection
	;
PrivateClassSection
	: ""STRICT"" 'strictToken' ""PRIVATE"" 'privateToken' NewClassComponents {{PrivateClassSection}}
	| ""PRIVATE"" 'privateToken' NewClassComponents {{PrivateClassSection}}
	;
ProtectedClassSection
	: ""STRICT"" 'strictToken' ""PROTECTED"" 'protectedToken' NewClassComponents {{ProtectedClassSection}}
	| ""PROTECTED"" 'protectedToken' NewClassComponents {{ProtectedClassSection}}
	;
PublicClassSection
	: ""PUBLIC"" 'publicToken' NewClassComponents {{PublicClassSection}}
	;
PublishedClassSection
	: ""PUBLISHED"" 'publishedToken' NewClassComponents {{PublishedClassSection}}
	;
Superclass
	: 
	| ""("" 'left' SuperclassList "")"" 'right' 
	;
SuperclassList
	: NamedType 'superclass'
	| SuperclassList "","" 'comma' NamedType 'superclass'
	;
QualifiedName
	: <identifier> 'name' OptionalGenericTypeArguments {{QualifiedName}}
	| <identifier> 'namespace' OptionalGenericTypeArguments ""."" 'period' <identifier> 'name'  {{QualifiedName}}
	;
NewClassComponents
	: 
	| NewClassComponents NewClassComponent 'component'
	;
NewClassComponent
	: VariableNames "":"" 'colon' Type 'type' OptionalPlatform <semicolon> 'semicolon' {{VariableDefinition}}
	| ""CLASS"" 'classToken' VarsVars {{ClassVars}}
	| Vars
	| ConstructorHeader
	| MethodAttribute 'attribute' ConstructorHeader {{ConstructorHeader}}
	| DestructorHeader
	| MethodAttribute 'attribute' DestructorHeader {{DestructorHeader}}
	| NewClassMethodComponent
	| InterfacePropertyComponent
	| InterfaceFunctionAssignment
	| InterfaceProcedureAssignment
	| ConstantValueList
	| DefinedTypeList
	;
NewClassMethodComponent
	: MethodAttribute 'attribute' ProcedureHeader {{ProcedureHeader}}
	| MethodAttribute 'attribute' ClassProcedureHeader {{ClassProcedureHeader}}
	| MethodAttribute 'attribute' FunctionHeader {{FunctionHeader}}
	| MethodAttribute 'attribute' ClassFunctionHeader {{ClassFunctionHeader}}
	| MethodAttribute 'attribute' ClassOperatorHeader {{ClassOperatorHeader}}
	| InterfaceMethodComponent
	;
MethodAttribute
	: ""["" 'left' ConstantExpression 'expression' ""]"" 'right' {{MethodAttribute}}
	;
InterfaceFunctionAssignment
	: ""FUNCTION"" 'function' QualifiedName 'qualifiedName' ""="" 'equalToken' <identifier> 'name' <semicolon> 'semicolon' {{InterfaceFunctionAssignment}}
	;
InterfaceProcedureAssignment
	: ""PROCEDURE"" 'procedureToken' QualifiedName 'qualifiedName' ""="" 'equalToken' <identifier> 'name' <semicolon> 'semicolon' {{InterfaceProcedureAssignment}}
	;
Type
	: SimpleDefinedType
	| AnonymousProcedureType
	| AnonymousFunctionType
	;
FileType
	: ""FILE"" 'fileToken' ""OF"" 'ofToken' Type 'type' {{FileType}}
	| ""FILE"" 'fileToken' {{FileType}}
	;
ArrayType
	: OptionalPacked ""ARRAY"" 'arrayToken' ArrayBounds ""OF"" 'ofToken' Type 'type' {{ArrayType}}
	| OptionalPacked ""ARRAY"" 'arrayToken' ArrayBounds ""OF"" 'ofToken' ""CONST"" 'constToken' {{ArrayType}}
	;
ArrayBounds
	: ""["" 'left' ArrayBoundsIndices ""]"" 'right'
	| 
	;
ArrayBoundsIndices
	: ArrayBoundsIndex 'index'
	| ArrayBoundsIndices "","" 'comma' ArrayBoundsIndex 'index'
	;
ArrayBoundsIndex
	: ConstantExpression
	| RangeType
	;
InterfaceType
	: InterfaceKeyword 'interfaceToken' Superclass Guid 'guid' NewInterfaceComponents ""END"" 'endToken' {{InterfaceType}}
	| InterfaceKeyword 'interfaceToken' {{InterfaceType}}
	;
InterfaceKeyword
	: ""INTERFACE""
	| ""DISPINTERFACE""
	;
Guid
	:
	| ""["" 'left' ConstantExpression 'string' ""]"" 'right' {{Guid}}
	;
NewInterfaceComponents
	: 
	| NewInterfaceComponents NewInterfaceComponent 'component'
	;
NewInterfaceComponent
	: InterfaceMethodComponent
	| InterfacePropertyComponent
	;
InterfacePropertyComponent
	: PropertyHeader
	| ClassPropertyHeader
	;
InterfaceMethodComponent
	: ProcedureHeader
	| ClassProcedureHeader
	| FunctionHeader
	| ClassFunctionHeader
	| ClassOperatorHeader
	;
ConstructorHeader
	: ExternalConstructorHeader
	| NonExternalConstructorHeader
	;
DestructorHeader
	: ExternalDestructorHeader
	| NonExternalDestructorHeader
	;
ProcedureHeader
	: ExternalProcedureHeader
	| NonExternalProcedureHeader
	;
ClassProcedureHeader
	: ExternalClassProcedureHeader
	| NonExternalClassProcedureHeader
	;
OptionalOfObject # Don't know what this is
	:
	| ""OF"" 'ofToken' ""OBJECT"" 'objectToken'
	;
FunctionHeader
	: ExternalFunctionHeader
	| NonExternalFunctionHeader
	;
ClassFunctionHeader
	: ExternalClassFunctionHeader
	| NonExternalClassFunctionHeader
	;
ClassOperatorHeader
	: ExternalClassOperatorHeader
	| NonExternalClassOperatorHeader
	;
OptionalType
	: 
	| "":"" 'colon' Type 'type'
	;
PropertyHeader
	: PropertyHeaderVars {{PropertyHeader}}
	;
PropertyHeaderVars
	: ""PROPERTY"" 'propertyToken' <identifier> 'name' PropertyArrayAccessors 'arrayAccessors' OptionalType PropertyValues <semicolon> 'semicolon' PropertyModifiers 'modifier'
	;
ClassPropertyHeader
	: ""CLASS"" 'classToken' PropertyHeaderVars {{ClassPropertyHeader}}
	;
PropertyValues
	:
	| PropertyValues PropertyIndex 'index'
	| PropertyValues PropertyReader 'reader'
	| PropertyValues PropertyWriter 'writer'
	| PropertyValues PropertyDefault 'default'
	| PropertyValues PropertyStored 'stored'
	| PropertyValues PropertyImplements 'implements'
	| PropertyValues PropertyDispid 'dispid'
	;
PropertyArrayAccessors
	:
	| ""["" 'left' ArgumentList ""]"" 'right' {{PropertyArrayAccessors}}
	;
PropertyIndex
	: ""INDEX"" 'indexToken' ConstantExpression 'expression' {{PropertyIndex}}
	;
PropertyReader
	: ""READ"" 'readToken' Expression 'expression' {{PropertyReader}}
	;
PropertyWriter
	: ""WRITE"" 'writeToken' Expression 'expression' {{PropertyWriter}}
	;
PropertyDispid
	: ""DISPID"" 'dispidToken' ConstantExpression 'expression' {{PropertyDispid}}
	| ""READONLY"" 'readOnlyToken' ""DISPID"" 'dispidToken' ConstantExpression 'expression' {{PropertyDispid}}
	| ""WRITEONLY"" 'writeOnlyToken' ""DISPID"" 'dispidToken' ConstantExpression 'expression' {{PropertyDispid}}
	;
PropertyDefault
	: ""DEFAULT"" 'defaultToken' ConstantExpression 'expression' {{PropertyDefault}}
	| ""DEFAULT"" 'defaultToken' {{PropertyDefault}}
	| ""NODEFAULT"" 'nodefaultToken' {{PropertyDefault}}
	;
PropertyImplements
	: ""IMPLEMENTS"" 'implementsToken' PropertyImplementsList {{PropertyImplements}}
	;
PropertyImplementsList
	: <identifier> 'interface'
	| PropertyImplementsList "","" 'comma' <identifier> 'interface'
	;
PropertyStored
	: ""STORED"" 'storedToken' <identifier> 'isStored' {{PropertyStored}}
	;
PropertyModifiers
	: 
	| ""DEFAULT"" 'defaultToken' <semicolon> 'semicolon' {{PropertyModifier}}
	;
MethodModifiers
	: 
	| MethodModifiers MethodModifier 'modifier' 
	;
NonExternalMethodModifiers
	: 
	| NonExternalMethodModifiers NonExternalMethodModifier 'modifier'
	;
MethodModifier
	: NonExternalMethodModifier
	| ExternalMethodModifier
	;
NonExternalMethodModifier
	: ModifierKeyword 'modifier' <semicolon> 'semicolon' {{MethodModifier}}
	| ""MESSAGE"" 'modifier' ConstantExpression 'expression' <semicolon> 'semicolon' {{MessageMethodModifier}}
	| ""DISPID"" 'modifier' ConstantExpression 'expression' <semicolon> 'semicolon' {{MessageMethodModifier}}
	;
ExternalMethodModifier
	: ""EXTERNAL"" 'modifier' <semicolon> 'semicolon' {{ExternalMethodModifier}}
	| ""EXTERNAL"" 'modifier' <string> 'library' <semicolon> 'semicolon' {{ExternalMethodModifier}}
	| ""EXTERNAL"" 'modifier' <string> 'library' ""NAME"" 'nameToken' <string> 'methodName' <semicolon> 'semicolon' {{ExternalMethodModifier}}
	| ""EXTERNAL"" 'modifier' <identifier> 'library' <semicolon> 'semicolon' {{ExternalMethodModifier}}
	| ""EXTERNAL"" 'modifier' <identifier> 'library' ""NAME"" 'nameToken' <string> 'methodName' <semicolon> 'semicolon' {{ExternalMethodModifier}}
	| ""FORWARD"" 'modifier' <semicolon> 'semicolon' {{MethodModifier}}
	;
ModifierKeyword
	: ""OVERLOAD"" | ""OVERRIDE"" | ""STDCALL"" | ""REGISTER"" | ""ASSEMBLER"" | ""PASCAL"" | ""REINTRODUCE"" | ""VIRTUAL"" | ""DEPRECATED"" | ""UNSAFE""
	| ""ABSTRACT"" | ""NEAR"" | ""FAR"" | ""CDECL"" | ""DYNAMIC"" | ""STATIC"" | ""PLATFORM"" | ""EXPORT"" | ""LOCAL"" | ""INLINE"" | ""FINAL"" | ""SAFECALL""
	;
ArgumentList
	: 
	| Arguments
	;
Arguments
	: Argument 'argument'
	| Arguments <semicolon> 'semicolon' Argument 'argument'
	;
Argument
	: ArgumentType VariableNames "":"" 'colon' Type 'type' OptionalValue {{Argument}}
	| ArgumentType VariableNames {{Argument}}
	;
VariableNames
	: <identifier> 'name'
	| VariableNames "","" 'comma' <identifier> 'name'
	;
OptionalValue
	: 
	| ""="" 'equal' ConstantExpression 'value'
	;
ArgumentType
	: 
	| ""VAR"" 'typeToken'
	| ""CONST"" 'typeToken'
	| ""OUT"" 'typeToken'
	;
ImplementationSection
	:
	| ""IMPLEMENTATION"" 'implementationToken' UsesList Definitions ImplementationCode 'code' {{ImplementationSection}}
	;
ImplementationCode
	: 
	| ""BEGIN"" 'beginToken' Statements {{ImplementationCode}}
	;
Definitions
	: 
	| Definitions Definition 'definition'
	;
Definition
	: ConstructorDefinition
	| DestructorDefinition
	| ProcedureDefinition
	| ClassProcedureDefinition
	| FunctionDefinition
	| ClassFunctionDefinition
	| ClassOperatorDefinition
	| DefinedTypeList
	| Vars
	| ConstantValueList
	| ResourceStringList
	| ExportsDefinition
	;
ConstructorDefinition
	: NonExternalConstructorHeader 'header' MethodComponents {{ConstructorDefinition}}
	| ExternalConstructorHeader 'header' {{ConstructorDefinition}}
	;
ExternalConstructorHeader
	: NonExternalConstructorHeader ExternalMethodModifier 'modifier' MethodModifiers {{ConstructorHeader}}
	;
NonExternalConstructorHeader
	: ""CLASS"" 'classToken'? ""CONSTRUCTOR"" 'constructorToken' QualifiedName 'qualifiedName' OptionalArguments <semicolon> 'semicolon' NonExternalMethodModifiers {{ConstructorHeader}}
	;
DestructorDefinition
	: NonExternalDestructorHeader 'header' MethodComponents {{DestructorDefinition}}
	| ExternalDestructorHeader 'header' {{DestructorDefinition}}
	;
ExternalDestructorHeader
	: NonExternalDestructorHeader ExternalMethodModifier 'modifier' MethodModifiers {{DestructorHeader}}
	;
NonExternalDestructorHeader
	: ""CLASS"" 'classToken'? ""DESTRUCTOR"" 'destructorToken' QualifiedName 'qualifiedName' OptionalParens <semicolon> 'semicolon' NonExternalMethodModifiers {{DestructorHeader}}
	;
OptionalParens
	:
	| ""("" 'left' "")"" 'right'
	;
ProcedureDefinition
	: NonExternalProcedureHeader 'header' MethodComponents {{ProcedureDefinition}}
	| ExternalProcedureHeader 'header' {{ProcedureDefinition}}
	;
ExternalProcedureHeader
	: ExternalProcedureHeaderVars {{ProcedureHeader}}
	;
ExternalProcedureHeaderVars
	: NonExternalProcedureHeaderVars ExternalMethodModifier 'modifier' MethodModifiers
	;
NonExternalProcedureHeader
	: NonExternalProcedureHeaderVars {{ProcedureHeader}}
	;
NonExternalProcedureHeaderVars
	: ""PROCEDURE"" 'procedureToken' QualifiedName 'qualifiedName' OptionalArguments <semicolon> 'semicolon' NonExternalMethodModifiers 
	;
ClassProcedureDefinition
	: NonExternalClassProcedureHeader 'header' MethodComponents {{ClassProcedureDefinition}}
	| ExternalClassProcedureHeader 'header' {{ClassProcedureDefinition}}
	;
ExternalClassProcedureHeader
	: ""CLASS"" 'classToken' ExternalProcedureHeaderVars {{ClassProcedureHeader}}
	;
NonExternalClassProcedureHeader
	: ""CLASS"" 'classToken' NonExternalProcedureHeaderVars {{ClassProcedureHeader}}
	;
FunctionDefinition
	: NonExternalFunctionHeader 'header' MethodComponents {{FunctionDefinition}}
	| ExternalFunctionHeader 'header' {{FunctionDefinition}}
	;
ExternalFunctionHeader
	: ExternalFunctionHeaderVars {{FunctionHeader}}
	;
ExternalFunctionHeaderVars
	: NonExternalFunctionHeaderVars ExternalMethodModifier 'modifier' MethodModifiers
	;
NonExternalFunctionHeader
	: NonExternalFunctionHeaderVars {{FunctionHeader}}
	;
NonExternalFunctionHeaderVars
	: ""FUNCTION"" 'functionToken' QualifiedName 'qualifiedName' OptionalArguments OptionalType <semicolon> 'semicolon' NonExternalMethodModifiers
	;
ClassFunctionDefinition
	: NonExternalClassFunctionHeader 'header' MethodComponents {{ClassFunctionDefinition}}
	| ExternalClassFunctionHeader 'header' {{ClassFunctionDefinition}}
	;
ExternalClassFunctionHeader
	: ""CLASS"" 'classToken' ExternalFunctionHeaderVars {{ClassFunctionHeader}}
	;
NonExternalClassFunctionHeader
	: ""CLASS"" 'classToken' NonExternalFunctionHeaderVars {{ClassFunctionHeader}}
	;
ClassOperatorDefinition
	: NonExternalClassOperatorHeader 'header' MethodComponents {{ClassOperatorDefinition}}
	| ExternalClassOperatorHeader 'header' {{ClassOperatorDefinition}}
	;
ExternalClassOperatorHeader
	: NonExternalClassOperatorHeader ExternalMethodModifier 'modifier' MethodModifiers {{ClassOperatorHeader}}
	;
NonExternalClassOperatorHeader
	: ""CLASS"" 'classToken' ""OPERATOR"" 'operatorToken' QualifiedName 'qualifiedName' OptionalArguments OptionalType <semicolon> 'semicolon' NonExternalMethodModifiers {{ClassOperatorHeader}}
	;
MethodComponents
	: MethodVariables StatementBlock 'block' <semicolon> 'semicolon'
	;
MethodVariables
	: MethodVariables MethodVariable 'definition'
	| 
	;
MethodVariable
	: Vars
	| DefinedTypeList
	| ConstantValueList
	| ProcedureDefinition
	| FunctionDefinition
	| Labels
	| ResourceStringList
	;
Labels
	: ""LABEL"" 'labelToken' VariableNames <semicolon> 'semicolon' {{LabelVariable}}
	;
Vars
	: VarsVars {{Vars}}
	;
VarsVars
	: ""VAR"" 'varToken' VariablesList
	| ""THREADVAR"" 'varToken' VariablesList
	;
VariablesList
	: Variable 'variableDefinition'
	| VariablesList Variable 'variableDefinition'
	;
Variable
	: VariableNames "":"" 'colon' Type 'type' OptionalPlatform OptionalValue <semicolon> 'semicolon' {{Variable}}
	;
Statements
	: Statement 'statement' 
	| Statements <semicolon> 'semicolon' Statement 'statement' 
	;
Statement
	: Expression
	| RepeatStatement {{RepeatStatement}}
	| IfStatement {{IfStatement}} 
	| WithStatement {{WithStatement}}
	| TryStatement {{TryStatement}} 
	| CaseStatement {{CaseStatement}} 
	| RaiseStatement {{RaiseStatement}}  
	| ForStatement {{ForStatement}}
	| ForInStatement {{ForInStatement}}
	| WhileStatement {{WhileStatement}}
	| GotoStatement {{GotoStatement}}
	| StatementBlock
	| LabeledStatement {{LabeledStatement}}
	| {{EmptyStatement}}
	;
LabeledStatement
	: <identifier> 'label' "":"" 'colon' Statement 'statement'
	| <number> 'label' "":"" 'colon' Statement 'statement'
	;
GotoStatement
	: ""GOTO"" 'gotoToken' <identifier> 'label'
	| ""GOTO"" 'gotoToken' <number> 'label'
	;
RepeatStatement
	: ""REPEAT"" 'repeatToken' Statements ""UNTIL"" 'untilToken' Expression 'expression'
	;
IfStatement
	: ""IF"" 'ifToken' Expression 'expression' ""THEN"" 'thenToken' Statement 'thenStatement'
	| ""IF"" 'ifToken' Expression 'expression' ""THEN"" 'thenToken' Statement 'thenStatement' ""ELSE"" 'elseToken' Statement 'elseStatement'
	;
WithStatement
	: ""WITH"" 'withToken' WithExpressions ""DO"" 'doToken' Statement 'statement'
	;
WithExpressions
	: Expression 'expression' 
	| WithExpressions "","" 'comma' Expression 'expression' 
	;
TryStatement
	: ""TRY"" 'tryToken' Statements Except 'except' Finally 'finally' ""END"" 'endToken'
	;
Except
	:
	| ""EXCEPT"" 'exceptToken' OnDos PossibleExceptElse 'else' {{Except}}
	| ""EXCEPT"" 'exceptToken' Statements PossibleExceptElse 'else' {{Except}}
	;
OnDos
	: OnDo 'exceptionCase'
	| OnDos OnDo 'exceptionCase'
	;
OnDo
	: ""ON"" 'onToken' QualifiedName 'exception' OptionalType ""DO"" 'doToken' Statements {{OnDo}}
	;
PossibleExceptElse
	: 
	| ""ELSE"" 'elseToken' Statements {{ExceptElse}}
	;
Finally
	: 
	| ""FINALLY"" 'finallyToken' Statements {{Finally}}
	;
CaseStatement
	: ""CASE"" 'caseToken' Expression 'expression' ""OF"" 'ofToken' CaseOptionList ElseCase ""END"" 'endToken'
	;
OptionalSemicolon
	:
	| <semicolon> 'semicolon'
	;
CaseOptionList
	: CaseOptions OptionalSemicolon
	;
CaseOptions
	: CaseOption 'option'
	| CaseOptions <semicolon> 'semicolon'  CaseOption 'option'  
	;
CaseOption
	: CaseLabel 'label' "":"" 'colon' Statement 'statement' {{CaseOption}}
	;
CaseLabel
	: BaseCaseLabel 
	| CaseLabels "","" 'comma' BaseCaseLabel 'label' {{MultiValueCaseLabel}}
	;
CaseLabels
	: BaseCaseLabel 'label'
	| CaseLabels "","" 'comma' BaseCaseLabel 'label'
	;
BaseCaseLabel
	: ConstantExpression 'value' {{CaseLabel}} 
	| ConstantExpression 'fromValue'  "".."" 'dots' ConstantExpression 'toValue' {{RangeCaseLabel}} 
	;
ElseCase
	: 
	| ""ELSE"" 'elseToken' Statements
	;
RaiseStatement
	: ""RAISE"" 'raiseToken' Expression 'expression' OptionalRaiseAt
	| ""RAISE"" 'raiseToken'
	;
OptionalRaiseAt
	: 
	| <at> 'atToken' QualifiedName 'location'
	;
ForStatement
	: ""FOR"" 'forToken' VariableExpression 'variable' "":="" 'assignmentToken' Expression 'fromExpr' ToDownTo  'toToken' Expression 'toExpr' ""DO"" 'doToken' Statement 'statement' 
	;
ForInStatement
	: ""FOR"" 'forToken' VariableExpression 'variable' ""IN"" 'inToken' Expression 'fromExpr' ""DO"" 'doToken' Statement 'statement' 
	;
ToDownTo
	: ""TO""
	| ""DOWNTO""
	;
WhileStatement
	: ""WHILE"" 'whileToken' Expression 'expression' ""DO"" 'doToken' Statement 'statement'
	;
StatementBlock
	: ""BEGIN"" 'beginToken' Statements ""END"" 'endToken' {{StatementBlock}} 
	| AsmBlock
	;
AsmBlock
	: BeforeAsm ""ASM"" 'asmToken' ""END"" 'endToken' {{AsmBlock}} 
	;
BeforeAsm
	: {parseAll ifFalse: [scanner skipToEndToken. currentState scannerState: scanner currentState]. nil}
	;
Expression
	: VariableExpression
	| InstantiatedGenericVariableExpression
	| Expression 'expression' ""."" 'period' <identifier> 'name' {{PropertyExpression}}
	| Expression 'expression' ""."" 'period' ""&OPERATOR"" 'name' {{PropertyExpression}}
	| Expression 'receiver' ""("" 'left' MethodArguments "")"" 'right' {{MethodCallExpression}}
	| Expression 'receiver' ""("" 'left' "")"" 'right' {{MethodCallExpression}}
	| InheritedFunctionCall
	| Number 'value' {{LiteralExpression}}
	| String 'value' {{LiteralExpression}}
	| <multiple_control_chars> 'value' {{LiteralExpression}}
	| Expression 'leftExpression' Operator 'operator' Expression 'rightExpression' {{BinaryExpression}}
	| ""("" 'leftParen' Expression "")"" 'rightParen' {{Expression}}
	| Expression 'lhs' "":="" 'assignment' Expression 'value' {{AssignmentExpression}} # allows for non-sense assignments
	| Expression 'expression' ArrayIndex {{ArrayExpression}}
	| ""@"" 'atToken' Expression 'expression' {{AddressExpression}} # should only be variables
	| ""NOT"" 'notToken' Expression 'expression' {{NotExpression}} 
	| <minus> 'minus' Expression 'expression' {{MinusExpression}}
	| <plus> 'plus' Expression 'expression' {{PlusExpression}}
	| SetConstructor 
	| Expression 'expression' <upArrow> 'upArrow' {{PointerExpression}} 
	| <controlCharacter> 'value' {{LiteralExpression}}
	| MemExpression 
	;
MemExpression
	: ""MEM"" 'mem' ""["" 'leftBrace' Expression 'baseExpression' "":"" 'colon' Expression 'addressExpression' ""]"" 'rightBrace' {{}}
	| ""MEMW"" 'mem' ""["" 'leftBrace' Expression 'baseExpression' "":"" 'colon' Expression 'addressExpression' ""]"" 'rightBrace' {{}}
	;
VariableExpression
	: <identifier> 'name' {{VariableExpression}}
	;
InstantiatedGenericVariableExpression
	: <identifier> 'name' InstantiatedGenericTypeArguments {{}}
	;
SetConstructor
	: ""["" 'left' SetConstructorValues ""]"" 'right' {{SetExpression}}
	| ""["" 'left' ""]"" 'right' {{SetExpression}}
	;
SetConstructorValues
	: SetValue 'value' 
	| SetConstructorValues "","" 'comma' SetValue 'value'
	;
SetValue
	: Expression 'value' {{SingleSetValue}}
	| Expression 'fromValue' "".."" 'dots' Expression 'toValue' {{RangeSetValue}}
	;
ArrayIndex
	: ""["" 'left' ArrayIndices ""]"" 'right'
	;
ArrayIndices
	: Expression 'index'
	| ArrayIndices "","" 'comma' Expression 'index' 
	;
String
	: <string>
	;
InheritedFunctionCall
	: ""INHERITED"" 'inheritedToken' <identifier> 'name' ""("" 'left' MethodArguments "")"" 'right' {{InheritedFunctionCall}} 
	| ""INHERITED"" 'inheritedToken' <identifier> 'name' ""("" 'left' "")"" 'right' {{InheritedFunctionCall}} 
	| ""INHERITED"" 'inheritedToken' <identifier> 'name' {{InheritedFunctionCall}} 
	| ""INHERITED"" 'inheritedToken' {{InheritedFunctionCall}} 
	;
MethodArguments
	: MethodArgument 'argument'
	| MethodArguments "","" 'comma' MethodArgument 'argument'
	;
MethodArgument
	: Expression
	| MethodArgument 'argument' "":"" 'colon' Expression 'formatExpression' {{FormattedMethodArgument}}
	;
Operator
	: ""="" 'operator' 
	| ConstantOperator 'operator' 
	;
ConstantOperator
	: ""AND""
	| ""OR""
	| ""XOR""
	| ""<>""
	| ""DIV""
	| ""MOD""
	| ""*""
	| ""/""
	| <plus>
	| <minus>
	| ""SHL""
	| ""SHR""
	| ""AS""
	| <gt>
	| ""<""
	| ""<=""
	| <gtEq>
	| ""IN""
	| ""IS""
	;
InitializationSection
	:
	| ""INITIALIZATION"" 'initializationToken' Statements {{InitializationSection}} 
	;
FinalizationSection
	: 
	| ""FINALIZATION"" 'finalizationToken' Statements {{FinalizationSection}} 
	;
ExportsDefinition
	: ""EXPORTS"" 'exportsToken' ExportsList <semicolon> 'semicolon'  {{ExportsDefinition}}
	;
ExportsList
	:  <identifier> 'name' 
	|  ExportsList "","" 'comma' <identifier> 'name' 
	;
EndFile
	: ""END"" 'endToken' ""."" 'period'
	;"
]

{ #category : #'file types' }
DelphiParser class >> fileExtension [
	^ '.pas'
]

{ #category : #'file types' }
DelphiParser class >> fileExtensionType [
	^ 'Delphi files'
]

{ #category : #parsing }
DelphiParser class >> parseFile: aString [
	| contents ast |
	contents := [ aString asFileReference contents ]
		on: Error
		do: [ :ex | 
			| encoding |
			encoding := [ aString asFileReference
				binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
				on: ZnCharacterEncodingError
				do: [ nil ].
			aString asFileReference
				readStreamDo: [ :stream | 
					SmaCCParser setEncoding: encoding on: stream.
					stream contents ] ].
	ast := self parse: contents.
	ast filename: aString.
	^ ast
]

{ #category : #parsing }
DelphiParser class >> parseFileWithErrors: aString [
	| contents ast |
	contents := [ aString asFileReference contents ]
		on: Error
		do: [ :ex | 
			| encoding |
			encoding := [ aString asFileReference
				binaryReadStreamDo: [ :in | (ZnCharacterEncoder detectEncoding: in upToEnd) identifier ] ]
				on: ZnCharacterEncodingError
				do: [ nil ].
			aString asFileReference
				readStreamDo: [ :stream | 
					SmaCCParser setEncoding: encoding on: stream.
					stream contents ] ].
	ast := self parseWithErrors: contents.
	ast filename: aString.
	^ ast
]

{ #category : #generated }
DelphiParser class >> reduceTable [
^#(
	#(164 0 #reduceActionForUsesList1: 5733377 false ) 
	#(357 0 #reduceActionForBeforeAsm1: 31748097 false ) 
	#(327 0 #reduceActionForStatement14: 28267534 false ) 
	#(189 0 #nil 8913921 false ) 
	#(201 0 #nil 10791937 false ) 
	#(148 1 #reduceActionForFile2: 4083714 false ) 
	#(148 1 #reduceActionForFile3: 4083715 false ) 
	#(148 1 #reduceActionForFile4: 4083716 false ) 
	#(148 1 #reduceActionForFile1: 4083713 false ) 
	#(163 0 #nil 5618689 false ) 
	#(161 1 #reduceActionForUnitFile2: 5292034 false ) 
	#(319 0 #reduceActionForMethodVariables2: 27512834 false ) 
	#(368 1 #reduceActionForInheritedFunctionCall4: 34212868 false ) 
	#(349 1 #reduceActionForRaiseStatement2: 30914562 false ) 
	#(360 1 #reduceActionForVariableExpression1: 33510401 false ) 
	#(209 1 #liftFirstValue: 11484161 false ) 
	#(367 1 #liftFirstValue: 34190337 false ) 
	#(358 1 #reduceActionForExpression10: 31865866 false ) 
	#(358 1 #reduceActionForExpression10: 31865864 false ) 
	#(327 1 #reduceActionForStatement13: 28267533 false ) 
	#(327 1 #reduceActionForStatement11: 28267531 false ) 
	#(327 1 #reduceActionForStatement2: 28267522 false ) 
	#(327 1 #reduceActionForStatement3: 28267523 false ) 
	#(327 1 #reduceActionForStatement4: 28267524 false ) 
	#(327 1 #reduceActionForStatement5: 28267525 false ) 
	#(327 1 #reduceActionForStatement6: 28267526 false ) 
	#(327 1 #reduceActionForStatement7: 28267527 false ) 
	#(327 1 #reduceActionForStatement8: 28267528 false ) 
	#(327 1 #reduceActionForStatement9: 28267529 false ) 
	#(327 1 #reduceActionForStatement10: 28267530 false ) 
	#(327 1 #liftFirstValue: 28267532 false ) 
	#(355 1 #liftFirstValue: 31568898 false ) 
	#(327 1 #liftFirstValue: 28267521 false ) 
	#(358 1 #liftFirstValue: 31865878 false ) 
	#(358 1 #liftFirstValue: 31865857 false ) 
	#(358 1 #liftFirstValue: 31865858 false ) 
	#(358 1 #liftFirstValue: 31865875 false ) 
	#(358 1 #reduceActionForExpression10: 31865865 false ) 
	#(358 1 #liftFirstValue: 31865863 false ) 
	#(358 1 #reduceActionForExpression10: 31865877 false ) 
	#(211 0 #reduceActionForConstantArray2: 12566530 false ) 
	#(241 1 #reduceActionForFileType2: 17130498 false ) 
	#(193 0 #reduceActionForOptionalArguments1: 9683969 false ) 
	#(201 1 #liftFirstValue: 10791938 false ) 
	#(210 1 #reduceActionForVariableExpression1: 11506691 false ) 
	#(189 1 #reduceActionForVariableExpression1: 8913922 false ) 
	#(210 1 #reduceActionForExpression10: 11506695 false ) 
	#(240 1 #liftFirstValue: 17048577 false ) 
	#(186 1 #reduceActionForSimpleDefinedType1: 8213505 false ) 
	#(240 1 #liftFirstValue: 17048578 false ) 
	#(240 1 #liftFirstValue: 17048579 false ) 
	#(186 1 #liftFirstValue: 8213513 false ) 
	#(186 1 #liftFirstValue: 8213508 false ) 
	#(186 1 #liftFirstValue: 8213509 false ) 
	#(186 1 #liftFirstValue: 8213514 false ) 
	#(210 1 #reduceActionForExpression10: 11506689 false ) 
	#(208 1 #liftFirstValue: 11420673 false ) 
	#(186 1 #liftFirstValue: 8213511 false ) 
	#(186 1 #liftFirstValue: 8213507 false ) 
	#(210 1 #liftFirstValue: 11506697 false ) 
	#(210 1 #reduceActionForExpression10: 11506694 false ) 
	#(210 1 #reduceActionForExpression10: 11506690 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7363585 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6000641 false ) 
	#(190 0 #nil 9257985 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5812225 false ) 
	#(166 1 #reduceActionForUsesModule1: 5886977 false ) 
	#(153 0 #reduceActionForMethodVariables2: 4642817 false ) 
	#(288 0 #nil 23128065 false ) 
	#(155 1 #reduceActionForMainMethod1: 4802561 false ) 
	#(358 2 #reduceActionForExpression15: 31865871 false ) 
	#(326 1 #reduceActionForStatements1: 28164097 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28878849 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28878850 false ) 
	#(368 2 #reduceActionForInheritedFunctionCall3: 34212867 false ) 
	#(358 2 #reduceActionForExpression16: 31865872 false ) 
	#(350 0 #reduceActionForOptionalRaiseAt1: 31023105 false ) 
	#(335 0 #nil 29623297 false ) 
	#(333 1 #reduceActionForStatements1: 29417473 false ) 
	#(362 2 #reduceActionForSetConstructor2: 33684482 false ) 
	#(364 1 #reduceActionForSetValue1: 33914881 false ) 
	#(363 1 #reduceActionForStatements1: 33814529 false ) 
	#(358 2 #reduceActionForExpression17: 31865873 false ) 
	#(358 2 #reduceActionForExpression18: 31865874 false ) 
	#(361 2 #reduceActionForInstantiatedGenericVariableExpression1: 33580033 false ) 
	#(372 1 #liftFirstValue: 34911239 false ) 
	#(372 1 #liftFirstValue: 34911240 false ) 
	#(372 1 #liftFirstValue: 34911247 false ) 
	#(372 1 #liftFirstValue: 34911248 false ) 
	#(372 1 #liftFirstValue: 34911236 false ) 
	#(371 1 #liftFirstValue: 34846721 false ) 
	#(372 1 #liftFirstValue: 34911233 false ) 
	#(372 1 #liftFirstValue: 34911245 false ) 
	#(372 1 #liftFirstValue: 34911237 false ) 
	#(372 1 #liftFirstValue: 34911250 false ) 
	#(372 1 #liftFirstValue: 34911251 false ) 
	#(372 1 #liftFirstValue: 34911238 false ) 
	#(372 1 #liftFirstValue: 34911234 false ) 
	#(372 1 #liftFirstValue: 34911243 false ) 
	#(372 1 #liftFirstValue: 34911244 false ) 
	#(372 1 #liftFirstValue: 34911235 false ) 
	#(372 1 #liftFirstValue: 34911246 false ) 
	#(372 1 #liftFirstValue: 34911249 false ) 
	#(372 1 #liftFirstValue: 34911242 false ) 
	#(372 1 #liftFirstValue: 34911241 false ) 
	#(358 2 #reduceActionForExpression20: 31865876 false ) 
	#(358 2 #reduceActionForExpression14: 31865870 false ) 
	#(371 1 #liftFirstValue: 34846722 false ) 
	#(213 1 #reduceActionForUsesModule1: 12793857 false ) 
	#(211 1 #reduceActionForConstantArray1: 12566529 false ) 
	#(212 1 #reduceActionForUsesModuleList1: 12613633 false ) 
	#(341 0 #nil 30215169 false ) 
	#(214 1 #reduceActionForConstantArray1: 12929025 false ) 
	#(215 1 #reduceActionForStatements1: 12972033 false ) 
	#(210 2 #reduceActionForExpression15: 11506703 false ) 
	#(282 0 #reduceActionForArgumentList1: 22617089 false ) 
	#(287 0 #nil 23041025 false ) 
	#(210 2 #reduceActionForExpression16: 11506700 false ) 
	#(257 0 #reduceActionForOptionalRaiseAt1: 18736129 false ) 
	#(186 2 #reduceActionForSimpleDefinedType11: 8213515 false ) 
	#(210 2 #reduceActionForExpression17: 11506701 false ) 
	#(210 2 #reduceActionForExpression18: 11506702 false ) 
	#(186 2 #reduceActionForSimpleDefinedType2: 8213506 false ) 
	#(189 2 #reduceActionForNamedType4: 8913924 false ) 
	#(243 0 #reduceActionForOptionalArguments1: 17453058 false ) 
	#(234 0 #reduceActionForMethodVariables2: 15535105 false ) 
	#(190 1 #liftFirstValue: 9257987 false ) 
	#(190 1 #liftFirstValue: 9257986 false ) 
	#(157 3 #reduceActionForPackageLine1: 4920321 false ) 
	#(164 3 #reduceActionForUsesList2: 5733378 false ) 
	#(159 1 #reduceActionForStatements1: 5099521 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6125569 false ) 
	#(373 0 #nil 35097601 false ) 
	#(149 3 #reduceActionForProgramFile2: 4213762 false ) 
	#(320 1 #liftFirstValue: 27584515 false ) 
	#(320 1 #liftFirstValue: 27584519 false ) 
	#(320 1 #liftFirstValue: 27584514 false ) 
	#(320 1 #liftFirstValue: 27584516 false ) 
	#(299 1 #reduceActionForProcedureDefinition2: 24799234 false ) 
	#(300 1 #reduceActionForExternalProcedureHeader1: 24966145 false ) 
	#(302 1 #reduceActionForExternalProcedureHeader1: 25163777 false ) 
	#(320 1 #liftFirstValue: 27584517 false ) 
	#(307 1 #reduceActionForFunctionDefinition2: 25841666 false ) 
	#(308 1 #reduceActionForExternalFunctionHeader1: 26003457 false ) 
	#(310 1 #reduceActionForExternalFunctionHeader1: 26195969 false ) 
	#(319 2 #reduceActionForMethodVariables1: 27512833 false ) 
	#(320 1 #liftFirstValue: 27584518 false ) 
	#(320 1 #liftFirstValue: 27584513 false ) 
	#(322 1 #reduceActionForVars1: 27823105 false ) 
	#(358 3 #reduceActionForExpression12: 31865868 false ) 
	#(355 3 #reduceActionForStatementBlock1: 31568897 false ) 
	#(349 3 #reduceActionForRaiseStatement1: 30914561 false ) 
	#(339 0 #nil 30025729 false ) 
	#(362 3 #reduceActionForSetConstructor1: 33684481 false ) 
	#(328 3 #reduceActionForPackageLine1: 28743681 false ) 
	#(188 1 #reduceActionForStatements1: 8751105 false ) 
	#(328 3 #reduceActionForPackageLine1: 28743682 false ) 
	#(356 3 #reduceActionForAsmBlock1: 31673345 false ) 
	#(358 3 #reduceActionForExpression6: 31865862 false ) 
	#(370 1 #liftFirstValue: 34712577 false ) 
	#(369 1 #reduceActionForStatements1: 34605057 false ) 
	#(358 3 #reduceActionForExpression4: 31865860 false ) 
	#(358 3 #reduceActionForExpression4: 31865859 false ) 
	#(358 3 #reduceActionForExpression13: 31865869 false ) 
	#(366 1 #reduceActionForStatements1: 34102273 false ) 
	#(358 3 #reduceActionForExpression11: 31865867 false ) 
	#(210 3 #reduceActionForConstantExpression11: 11506699 false ) 
	#(341 1 #liftFirstValue: 30215170 false ) 
	#(241 3 #reduceActionForFileType1: 17130497 false ) 
	#(287 1 #liftFirstValue: 23041027 false ) 
	#(287 1 #liftFirstValue: 23041028 false ) 
	#(287 1 #liftFirstValue: 23041026 false ) 
	#(282 1 #reduceActionForConstantArray1: 22617090 false ) 
	#(283 1 #reduceActionForStatements1: 22650881 false ) 
	#(194 3 #reduceActionForSetType2: 9748482 false ) 
	#(194 3 #reduceActionForSetType1: 9748481 false ) 
	#(233 2 #reduceActionForQualifiedName1: 15334401 false ) 
	#(189 3 #reduceActionForExpression4: 8913923 false ) 
	#(225 0 #reduceActionForMethodVariables2: 14401537 false ) 
	#(224 1 #reduceActionForImplicitClassSection1: 14328833 false ) 
	#(207 3 #reduceActionForRangeType1: 11330561 false ) 
	#(217 1 #reduceActionForStatements1: 13231105 false ) 
	#(210 3 #reduceActionForExpression4: 11506692 false ) 
	#(210 3 #reduceActionForExpression11: 11506693 false ) 
	#(186 3 #reduceActionForSimpleDefinedType8: 8213512 false ) 
	#(180 1 #reduceActionForStatements1: 7451649 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6000642 false ) 
	#(152 4 #reduceActionForLibraryLine1: 4526081 false ) 
	#(150 4 #reduceActionForLibraryLine1: 4329473 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5514241 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5812226 false ) 
	#(166 3 #reduceActionForPackageLine1: 5886978 false ) 
	#(149 4 #reduceActionForProgramFile1: 4213761 false ) 
	#(153 2 #reduceActionForMethodVariables1: 4642818 false ) 
	#(158 3 #reduceActionForRequires1: 5018625 false ) 
	#(156 4 #reduceActionForPackageFile1: 4862977 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5618690 false ) 
	#(290 0 #reduceActionForMethodVariables2: 23360513 false ) 
	#(374 0 #nil 35208193 false ) 
	#(261 0 #reduceActionForOptionalRaiseAt1: 19083265 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6354945 false ) 
	#(171 1 #reduceActionForConstantValues1: 6433793 false ) 
	#(285 1 #reduceActionForStatements1: 22885377 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6719489 false ) 
	#(174 1 #reduceActionForConstantValues1: 6818817 false ) 
	#(323 2 #reduceActionForVarsVars2: 27852802 false ) 
	#(324 1 #reduceActionForConstantValues1: 27940865 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7049217 false ) 
	#(177 1 #reduceActionForConstantValues1: 7130113 false ) 
	#(323 2 #reduceActionForVarsVars2: 27852801 false ) 
	#(299 2 #reduceActionForProcedureDefinition1: 24799233 false ) 
	#(276 0 #reduceActionForMethodVariables2: 21104641 false ) 
	#(307 2 #reduceActionForFunctionDefinition1: 25841665 false ) 
	#(318 3 #reduceActionForMethodComponents1: 27424769 false ) 
	#(326 3 #reduceActionForStatements2: 28164098 false ) 
	#(347 1 #reduceActionForBaseCaseLabel1: 30702593 false ) 
	#(348 0 #reduceActionForElseCase1: 30864385 false ) 
	#(343 1 #reduceActionForStatements1: 30319617 false ) 
	#(346 1 #reduceActionForStatements1: 30613505 false ) 
	#(345 1 #liftFirstValue: 30508033 false ) 
	#(331 4 #reduceActionForIfStatement1: 29083649 false ) 
	#(368 4 #reduceActionForInheritedFunctionCall2: 34212866 false ) 
	#(350 2 #reduceActionForGotoStatement1: 31023106 false ) 
	#(330 4 #reduceActionForRepeatStatement1: 28980225 false ) 
	#(338 0 #nil 29949953 false ) 
	#(336 1 #reduceActionForConstantValues1: 29783041 false ) 
	#(354 4 #reduceActionForLibraryLine1: 31463425 false ) 
	#(333 3 #reduceActionForStatements2: 29417474 false ) 
	#(332 4 #reduceActionForRepeatStatement1: 29323265 false ) 
	#(364 3 #reduceActionForSetValue2: 33914882 false ) 
	#(363 3 #reduceActionForStatements2: 33814530 false ) 
	#(187 3 #reduceActionForRequires1: 8649729 false ) 
	#(358 4 #reduceActionForExpression5: 31865861 false ) 
	#(365 3 #reduceActionForRequires1: 34048001 false ) 
	#(216 3 #reduceActionForConstantRecordField1: 13106177 false ) 
	#(213 3 #reduceActionForPackageLine1: 12793858 false ) 
	#(212 3 #reduceActionForUsesModuleList2: 12613634 false ) 
	#(210 4 #reduceActionForConstantExpression10: 11506698 false ) 
	#(215 3 #reduceActionForStatements2: 12972034 false ) 
	#(193 3 #reduceActionForRequires1: 9683970 false ) 
	#(284 2 #reduceActionForArgument2: 22746114 false ) 
	#(257 2 #reduceActionForGotoStatement1: 18736130 false ) 
	#(245 1 #liftFirstValue: 17630210 false ) 
	#(245 1 #liftFirstValue: 17630209 false ) 
	#(244 1 #reduceActionForStatements1: 17518593 false ) 
	#(198 4 #reduceActionForRecordType1: 10382337 false ) 
	#(200 2 #reduceActionForRecordFieldList1: 10655745 false ) 
	#(235 1 #liftFirstValue: 15614988 false ) 
	#(235 1 #liftFirstValue: 15614989 false ) 
	#(234 2 #reduceActionForMethodVariables1: 15535106 false ) 
	#(235 1 #liftFirstValue: 15614984 false ) 
	#(235 1 #liftFirstValue: 15614986 false ) 
	#(235 1 #liftFirstValue: 15614987 false ) 
	#(235 1 #liftFirstValue: 15614985 false ) 
	#(236 1 #liftFirstValue: 16149510 false ) 
	#(235 1 #liftFirstValue: 15614980 false ) 
	#(235 1 #liftFirstValue: 15614982 false ) 
	#(252 1 #liftFirstValue: 18262017 false ) 
	#(252 1 #liftFirstValue: 18262018 false ) 
	#(252 1 #liftFirstValue: 18262019 false ) 
	#(252 1 #liftFirstValue: 18262020 false ) 
	#(252 1 #liftFirstValue: 18262021 false ) 
	#(251 1 #liftFirstValue: 18189313 false ) 
	#(262 1 #reduceActionForPropertyHeader1: 19131393 false ) 
	#(251 1 #liftFirstValue: 18189314 false ) 
	#(253 1 #liftFirstValue: 18400257 false ) 
	#(253 1 #liftFirstValue: 18400258 false ) 
	#(254 1 #liftFirstValue: 18484225 false ) 
	#(254 1 #liftFirstValue: 18484226 false ) 
	#(255 1 #liftFirstValue: 18565121 false ) 
	#(255 1 #liftFirstValue: 18565122 false ) 
	#(256 1 #liftFirstValue: 18642945 false ) 
	#(256 1 #liftFirstValue: 18642946 false ) 
	#(258 1 #liftFirstValue: 18828289 false ) 
	#(258 1 #liftFirstValue: 18828290 false ) 
	#(259 1 #liftFirstValue: 18903041 false ) 
	#(259 1 #liftFirstValue: 18903042 false ) 
	#(260 1 #liftFirstValue: 18993153 false ) 
	#(260 1 #liftFirstValue: 18993154 false ) 
	#(235 1 #liftFirstValue: 15614979 false ) 
	#(210 4 #reduceActionForExpression5: 11506696 false ) 
	#(186 4 #reduceActionForSimpleDefinedType6: 8213510 false ) 
	#(179 3 #reduceActionForRequires1: 7363586 false ) 
	#(220 0 #reduceActionForMethodVariables2: 13999105 false ) 
	#(247 1 #liftFirstValue: 17881090 false ) 
	#(247 1 #liftFirstValue: 17881089 false ) 
	#(231 0 #reduceActionForOptionalArguments1: 15173633 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7237633 false ) 
	#(181 1 #reduceActionForUsesModule1: 7595011 false ) 
	#(181 1 #reduceActionForUsesModule1: 7595012 false ) 
	#(185 1 #liftFirstValue: 8101892 false ) 
	#(185 1 #liftFirstValue: 8101889 false ) 
	#(185 1 #liftFirstValue: 8101893 false ) 
	#(185 1 #liftFirstValue: 8101890 false ) 
	#(185 1 #liftFirstValue: 8101891 false ) 
	#(246 1 #reduceActionForInterfaceType2: 17686530 false ) 
	#(151 5 #reduceActionForLibraryFile1: 4446209 false ) 
	#(159 3 #reduceActionForStatements2: 5099522 false ) 
	#(160 3 #reduceActionForUsesList2: 5209089 false ) 
	#(377 2 #reduceActionForGotoStatement1: 35513345 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6125570 false ) 
	#(169 1 #liftFirstValue: 6219779 false ) 
	#(169 1 #liftFirstValue: 6219778 false ) 
	#(169 1 #liftFirstValue: 6219777 false ) 
	#(169 1 #liftFirstValue: 6219780 false ) 
	#(169 1 #liftFirstValue: 6219781 false ) 
	#(169 1 #liftFirstValue: 6219782 false ) 
	#(289 0 #nil 23274497 false ) 
	#(373 2 #reduceActionForInitializationSection2: 35097602 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6433794 false ) 
	#(321 3 #reduceActionForLabels1: 27730945 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6818818 false ) 
	#(324 2 #reduceActionForMethodVariables1: 27940866 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7130114 false ) 
	#(280 2 #reduceActionForExternalMethodModifier1: 21673985 false ) 
	#(280 2 #reduceActionForExternalMethodModifier6: 21673990 false ) 
	#(301 3 #reduceActionForExternalProcedureHeaderVars1: 25046017 false ) 
	#(309 3 #reduceActionForExternalFunctionHeaderVars1: 26080257 false ) 
	#(342 2 #reduceActionForCaseOptionList1: 30267393 false ) 
	#(353 1 #liftFirstValue: 31430658 false ) 
	#(353 1 #liftFirstValue: 31430657 false ) 
	#(368 5 #reduceActionForInheritedFunctionCall1: 34212865 false ) 
	#(335 3 #reduceActionForExcept3: 29623299 false ) 
	#(336 2 #reduceActionForMethodVariables1: 29783042 false ) 
	#(335 3 #reduceActionForExcept2: 29623298 false ) 
	#(339 2 #reduceActionForFinally2: 30025730 false ) 
	#(334 5 #reduceActionForTryStatement1: 29522945 false ) 
	#(188 3 #reduceActionForStatements2: 8751106 false ) 
	#(369 3 #reduceActionForStatements2: 34605058 false ) 
	#(370 3 #reduceActionForMethodArgument2: 34712578 false ) 
	#(366 3 #reduceActionForStatements2: 34102274 false ) 
	#(283 3 #reduceActionForStatements2: 22650882 false ) 
	#(191 5 #reduceActionForAnonymousProcedureType1: 9334785 false ) 
	#(194 5 #reduceActionForSetType3: 9748483 false ) 
	#(233 4 #reduceActionForQualifiedName2: 15334402 false ) 
	#(243 3 #reduceActionForRequires1: 17453057 false ) 
	#(242 5 #reduceActionForArrayType2: 17242114 false ) 
	#(242 5 #reduceActionForArrayType1: 17242113 false ) 
	#(200 3 #reduceActionForRecordFieldList2: 10655746 false ) 
	#(225 2 #reduceActionForMethodVariables1: 14401538 false ) 
	#(226 1 #liftFirstValue: 14464001 false ) 
	#(226 1 #liftFirstValue: 14464002 false ) 
	#(226 1 #liftFirstValue: 14464003 false ) 
	#(226 1 #liftFirstValue: 14464004 false ) 
	#(264 2 #reduceActionForClassPropertyHeader1: 19389441 false ) 
	#(305 2 #reduceActionForExternalClassProcedureHeader1: 25612289 false ) 
	#(306 2 #reduceActionForExternalClassProcedureHeader1: 25723905 false ) 
	#(313 2 #reduceActionForExternalClassFunctionHeader1: 26645505 false ) 
	#(314 2 #reduceActionForExternalClassFunctionHeader1: 26754049 false ) 
	#(235 2 #reduceActionForNewClassComponent2: 15614978 false ) 
	#(298 0 #reduceActionForOptionalRaiseAt1: 24751105 false ) 
	#(266 0 #nil 19812353 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15614981 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15614983 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16149505 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16149506 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16149507 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16149508 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16149509 false ) 
	#(217 3 #reduceActionForStatements2: 13231106 false ) 
	#(180 3 #reduceActionForStatements2: 7451650 false ) 
	#(184 1 #reduceActionForEnumName1: 7992321 false ) 
	#(183 1 #reduceActionForStatements1: 7919617 false ) 
	#(181 2 #reduceActionForDefinedType2: 7595010 false ) 
	#(248 0 #nil 17936385 false ) 
	#(154 3 #reduceActionForLibraryExport1: 4692993 false ) 
	#(291 1 #liftFirstValue: 23419914 false ) 
	#(291 1 #liftFirstValue: 23419915 false ) 
	#(291 1 #liftFirstValue: 23419912 false ) 
	#(288 4 #reduceActionForImplementationSection2: 23128066 false ) 
	#(290 2 #reduceActionForMethodVariables1: 23360514 false ) 
	#(291 1 #liftFirstValue: 23419905 false ) 
	#(292 1 #reduceActionForConstructorDefinition2: 23707650 false ) 
	#(291 1 #liftFirstValue: 23419906 false ) 
	#(295 1 #reduceActionForDestructorDefinition2: 24237058 false ) 
	#(291 1 #liftFirstValue: 23419907 false ) 
	#(291 1 #liftFirstValue: 23419908 false ) 
	#(304 1 #reduceActionForClassProcedureDefinition2: 25419778 false ) 
	#(291 1 #liftFirstValue: 23419909 false ) 
	#(291 1 #liftFirstValue: 23419910 false ) 
	#(312 1 #reduceActionForClassFunctionDefinition2: 26458114 false ) 
	#(291 1 #liftFirstValue: 23419911 false ) 
	#(315 1 #reduceActionForClassOperatorDefinition2: 26868738 false ) 
	#(291 1 #liftFirstValue: 23419913 false ) 
	#(291 1 #liftFirstValue: 23419916 false ) 
	#(374 2 #reduceActionForFinalizationSection2: 35208194 false ) 
	#(161 6 #reduceActionForUnitFile1: 5292033 false ) 
	#(261 2 #reduceActionForGotoStatement1: 19083266 false ) 
	#(285 3 #reduceActionForStatements2: 22885378 false ) 
	#(277 0 #reduceActionForMethodVariables2: 21175297 false ) 
	#(223 0 #nil 14268417 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21673988 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21673986 false ) 
	#(281 1 #liftFirstValue: 22328331 false ) 
	#(281 1 #liftFirstValue: 22328325 false ) 
	#(281 1 #liftFirstValue: 22328334 false ) 
	#(281 1 #liftFirstValue: 22328329 false ) 
	#(281 1 #liftFirstValue: 22328335 false ) 
	#(281 1 #liftFirstValue: 22328338 false ) 
	#(281 1 #liftFirstValue: 22328333 false ) 
	#(281 1 #liftFirstValue: 22328341 false ) 
	#(281 1 #liftFirstValue: 22328340 false ) 
	#(281 1 #liftFirstValue: 22328339 false ) 
	#(281 1 #liftFirstValue: 22328332 false ) 
	#(281 1 #liftFirstValue: 22328321 false ) 
	#(281 1 #liftFirstValue: 22328322 false ) 
	#(281 1 #liftFirstValue: 22328326 false ) 
	#(281 1 #liftFirstValue: 22328337 false ) 
	#(281 1 #liftFirstValue: 22328324 false ) 
	#(281 1 #liftFirstValue: 22328327 false ) 
	#(281 1 #liftFirstValue: 22328342 false ) 
	#(281 1 #liftFirstValue: 22328336 false ) 
	#(281 1 #liftFirstValue: 22328323 false ) 
	#(281 1 #liftFirstValue: 22328330 false ) 
	#(281 1 #liftFirstValue: 22328328 false ) 
	#(276 2 #reduceActionForMethodVariables1: 21104642 false ) 
	#(278 1 #liftFirstValue: 21278721 false ) 
	#(278 1 #liftFirstValue: 21278722 false ) 
	#(347 3 #reduceActionForBaseCaseLabel2: 30702594 false ) 
	#(348 2 #reduceActionForElseCase2: 30864386 false ) 
	#(340 6 #reduceActionForCaseStatement1: 30093313 false ) 
	#(343 3 #reduceActionForStatements2: 30319618 false ) 
	#(344 3 #reduceActionForCaseOption1: 30422017 false ) 
	#(346 3 #reduceActionForStatements2: 30613506 false ) 
	#(345 3 #reduceActionForCaseLabel2: 30508034 false ) 
	#(352 6 #reduceActionForForInStatement1: 31284225 false ) 
	#(331 6 #reduceActionForForInStatement1: 29083650 false ) 
	#(359 6 #reduceActionForMemExpression1: 33238017 false ) 
	#(359 6 #reduceActionForMemExpression1: 33238018 false ) 
	#(338 2 #reduceActionForPossibleExceptElse2: 29949954 false ) 
	#(286 0 #reduceActionForOptionalRaiseAt1: 22976513 false ) 
	#(199 6 #reduceActionForRecordHelperType1: 10487809 false ) 
	#(196 1 #reduceActionForStatements1: 10182657 false ) 
	#(195 3 #reduceActionForTwoItemSetNameList1: 10025985 false ) 
	#(244 3 #reduceActionForStatements2: 17518594 false ) 
	#(227 2 #reduceActionForPrivateClassSection2: 14577666 false ) 
	#(228 2 #reduceActionForProtectedClassSection2: 14770178 false ) 
	#(229 2 #reduceActionForPublicClassSection1: 14977025 false ) 
	#(230 2 #reduceActionForPublishedClassSection1: 15069185 false ) 
	#(237 3 #reduceActionForMethodAttribute1: 16573441 false ) 
	#(293 3 #reduceActionForExternalConstructorHeader1: 23884801 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24409089 false ) 
	#(316 3 #reduceActionForExternalConstructorHeader1: 27056129 false ) 
	#(182 3 #reduceActionForEnumType1: 7866369 false ) 
	#(197 3 #reduceActionForMetaclassType1: 10286081 false ) 
	#(221 1 #liftFirstValue: 14073857 false ) 
	#(221 1 #liftFirstValue: 14073858 false ) 
	#(220 2 #reduceActionForMethodVariables1: 13999106 false ) 
	#(218 3 #reduceActionForNewClassType2: 13350914 false ) 
	#(232 1 #reduceActionForStatements1: 15235073 false ) 
	#(181 3 #reduceActionForPackageLine1: 7595013 false ) 
	#(181 3 #reduceActionForPackageLine1: 7595009 false ) 
	#(249 0 #reduceActionForMethodVariables2: 18012161 false ) 
	#(289 2 #reduceActionForImplementationCode2: 23274498 false ) 
	#(376 1 #reduceActionForStatements1: 35422209 false ) 
	#(292 2 #reduceActionForConstructorDefinition1: 23707649 false ) 
	#(295 2 #reduceActionForDestructorDefinition1: 24237057 false ) 
	#(304 2 #reduceActionForClassProcedureDefinition1: 25419777 false ) 
	#(312 2 #reduceActionForClassFunctionDefinition1: 26458113 false ) 
	#(315 2 #reduceActionForClassOperatorDefinition1: 26868737 false ) 
	#(303 5 #reduceActionForNonExternalProcedureHeaderVars1: 25249793 false ) 
	#(223 1 #liftFirstValue: 14268418 false ) 
	#(279 2 #reduceActionForExternalMethodModifier6: 21353473 false ) 
	#(284 5 #reduceActionForArgument1: 22746113 false ) 
	#(192 7 #reduceActionForAnonymousFunctionType1: 9498625 false ) 
	#(227 3 #reduceActionForPrivateClassSection1: 14577665 false ) 
	#(228 3 #reduceActionForProtectedClassSection1: 14770177 false ) 
	#(298 2 #reduceActionForGotoStatement1: 24751106 false ) 
	#(265 0 #reduceActionForPropertyValues1: 19481601 false ) 
	#(184 3 #reduceActionForEnumName2: 7992322 false ) 
	#(183 3 #reduceActionForStatements2: 7919618 false ) 
	#(231 3 #reduceActionForRequires1: 15173634 false ) 
	#(375 3 #reduceActionForExportsDefinition1: 35311617 false ) 
	#(311 6 #reduceActionForNonExternalFunctionHeaderVars1: 26278913 false ) 
	#(277 2 #reduceActionForMethodVariables1: 21175298 false ) 
	#(175 5 #reduceActionForResource1: 6893569 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21673989 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21673987 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21353475 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21353474 false ) 
	#(351 8 #reduceActionForForStatement1: 31090689 false ) 
	#(337 5 #reduceActionForOnDo1: 29847553 false ) 
	#(286 2 #reduceActionForGotoStatement1: 22976514 false ) 
	#(196 3 #reduceActionForStatements2: 10182658 false ) 
	#(294 5 #reduceActionForNonExternalConstructorHeader1: 24020993 false ) 
	#(297 5 #reduceActionForNonExternalDestructorHeader1: 24542209 false ) 
	#(238 5 #reduceActionForInterfaceFunctionAssignment1: 16672769 false ) 
	#(239 5 #reduceActionForInterfaceProcedureAssignment1: 16856065 false ) 
	#(266 3 #reduceActionForPropertyArrayAccessors2: 19812354 false ) 
	#(235 5 #reduceActionForNewClassComponent1: 15614977 false ) 
	#(232 3 #reduceActionForStatements2: 15235074 false ) 
	#(222 5 #reduceActionForOldClassType1: 14118913 false ) 
	#(248 3 #reduceActionForGuid2: 17936386 false ) 
	#(246 5 #reduceActionForInterfaceType1: 17686529 false ) 
	#(249 2 #reduceActionForMethodVariables1: 18012162 false ) 
	#(250 1 #liftFirstValue: 18104322 false ) 
	#(250 1 #liftFirstValue: 18104321 false ) 
	#(376 3 #reduceActionForStatements2: 35422210 false ) 
	#(325 6 #reduceActionForVariable1: 28040193 false ) 
	#(203 1 #reduceActionForStatements1: 10990593 false ) 
	#(205 1 #reduceActionForStatements1: 11205633 false ) 
	#(206 1 #liftFirstValue: 11292673 false ) 
	#(294 6 #reduceActionForNonExternalConstructorHeader2: 24020994 false ) 
	#(297 6 #reduceActionForNonExternalDestructorHeader2: 24542210 false ) 
	#(271 1 #reduceActionForPropertyDefault2: 20487170 false ) 
	#(271 1 #reduceActionForPropertyDefault3: 20487171 false ) 
	#(275 0 #nil 21004289 false ) 
	#(265 2 #reduceActionForPropertyValues2: 19481602 false ) 
	#(265 2 #reduceActionForCaseOptionList1: 19481603 false ) 
	#(265 2 #reduceActionForPropertyValues4: 19481604 false ) 
	#(265 2 #reduceActionForPropertyValues8: 19481608 false ) 
	#(265 2 #reduceActionForPropertyValues5: 19481605 false ) 
	#(265 2 #reduceActionForPropertyValues7: 19481607 false ) 
	#(265 2 #reduceActionForPropertyValues6: 19481606 false ) 
	#(219 6 #reduceActionForClassHelperType2: 13583362 false ) 
	#(218 6 #reduceActionForNewClassType1: 13350913 false ) 
	#(172 7 #reduceActionForConstantValue1: 6529025 false ) 
	#(202 6 #reduceActionForVariantRecordPart1: 10841089 false ) 
	#(317 7 #reduceActionForNonExternalClassOperatorHeader1: 27198465 false ) 
	#(271 2 #reduceActionForPropertyDefault1: 20487169 false ) 
	#(270 2 #reduceActionForPropertyDispid1: 20174849 false ) 
	#(273 1 #reduceActionForStatements1: 20795393 false ) 
	#(272 2 #reduceActionForPropertyImplements1: 20690945 false ) 
	#(267 2 #reduceActionForPropertyIndex1: 19909633 false ) 
	#(268 2 #reduceActionForPropertyReader1: 20002817 false ) 
	#(274 2 #reduceActionForPropertyStored1: 20915201 false ) 
	#(269 2 #reduceActionForPropertyWriter1: 20087809 false ) 
	#(263 7 #reduceActionForPropertyHeaderVars1: 19191809 false ) 
	#(203 3 #reduceActionForStatements2: 10990594 false ) 
	#(205 3 #reduceActionForStatements2: 11205634 false ) 
	#(270 3 #reduceActionForPropertyDispid2: 20174850 false ) 
	#(270 3 #reduceActionForPropertyDispid3: 20174851 false ) 
	#(275 2 #reduceActionForPropertyModifiers2: 21004290 false ) 
	#(273 3 #reduceActionForStatements2: 20795394 false ) 
	#(219 9 #reduceActionForClassHelperType1: 13583361 false ) 
	#(204 5 #reduceActionForVariantType1: 11105281 false )
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> scannerClass [
	^DelphiScanner
]

{ #category : #generated }
DelphiParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
DelphiParser class >> startingStateForNamedDefinedType [
	^ 4
]

{ #category : #generated }
DelphiParser class >> startingStateForSimpleDefinedType [
	^ 3
]

{ #category : #generated }
DelphiParser class >> startingStateForStatement [
	^ 2
]

{ #category : #generated }
DelphiParser class >> symbolNames [
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'LibraryExport' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'MethodAttribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'MemExpression' 'VariableExpression' 'InstantiatedGenericVariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiProgramNode #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiLibraryExportNode #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiMethodAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiInstantiatedGenericVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 21 0 66 0 25 0 84 0 6 0 89 0 29 0 90 0 6 0 103 0 6 0 114 0 6 0 117 0 33 0 118 0 37 0 121 0 6 0 122 0 41 0 148 0 45 0 149 0 49 0 150 0 53 0 151 0 57 0 152 0 61 0 156 0 65 0 157 0 69 0 161 0 73 0 162 0 77 0 164] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 0 177 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 0 177 1 99 0 177 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 1 17 0 15 0 18 0 16 0 22 0 19 1 21 0 46 1 25 0 52 1 29 0 75 1 105 0 85 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 1 53 0 134 1 57 0 135 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 77 0 186 1 81 0 189 1 125 0 191 1 125 0 192 1 77 0 194 1 77 0 198 1 77 0 199 1 105 0 201 1 77 0 207 1 113 0 208 1 117 0 209 1 121 0 210 1 125 0 240 1 77 0 241 1 77 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 1 149 0 138 1 153 0 178] 
#[1 1 157 0 138 1 161 0 167] 
#[1 1 157 0 138 1 165 0 167] 
#[1 1 157 0 138 1 169 0 167] 
#[1 1 157 0 138 1 173 0 167] 
#[1 1 157 0 138 1 177 0 165 1 181 0 166 1 185 0 167] 
#[0 0 0 1 123] 
#[0 0 26 1 123] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 1 189 0 164] 
#[0 0 30 1 123] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 1 193 0 164] 
#[0 0 34 1 123] 
#[1 1 197 0 102 1 201 0 158] 
#[0 0 38 1 123] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 1 205 0 63 1 209 0 163 0 46 1 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 1 213 0 155 1 217 1 62 1 221 1 63] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 229 1 102 1 229 1 103 1 229 1 104 1 229 1 105 1 229 1 106 1 1 1 111 1 229 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 233 1 102 1 233 1 103 1 233 1 104 1 233 1 105 1 233 1 106 1 1 1 111 1 233 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 237 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 245 1 102 1 245 1 103 1 245 1 104 1 245 1 105 1 245 1 106 1 1 1 111 1 245 1 112 1 9 1 122] 
#[1 1 249 0 138 1 253 1 104] 
#[1 2 1 0 138 2 5 0 140] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 9 1 102 2 9 1 103 2 9 1 104 2 9 1 105 2 9 1 106 1 1 1 111 2 9 1 112 1 9 1 122] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 18 0 54 0 20 0 54 0 30 0 54 0 33 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 48 0 54 0 49 0 54 0 57 0 54 0 58 0 54 0 59 0 54 0 61 0 54 0 64 0 54 0 71 0 54 0 74 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 96 0 54 0 97 0 54 0 107 0 54 0 108 0 54 0 111 0 54 0 113 0 54 0 115 0 54 0 120 0 54 0 126 0 54 0 127 0 54 0 128 0 54 0 129 0 54 0 130 0 54 0 131 0 54 0 132 0 54 0 133 0 54 0 134 0 54 0 135 0 54 0 136 0 54 0 137 2 13 0 138 0 54 1 123] 
#[0 2 17 0 129] 
#[0 2 21 0 129] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 25 1 102 2 25 1 103 2 25 1 104 2 25 1 105 2 25 1 106 1 1 1 111 2 25 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 109 0 60 0 58 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 58 0 78 0 58 0 120 0 145 0 129 0 149 0 134 0 153 0 135 0 58 0 136 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 29 1 102 2 29 1 103 2 29 1 104 2 29 1 105 2 29 1 106 1 1 1 111 2 29 1 112 1 9 1 122 0 58 1 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 33 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 37 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 41 1 102 2 41 1 103 2 41 1 104 2 41 1 105 2 41 1 106 1 1 1 111 2 41 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 45 1 77 2 49 1 102 2 49 1 103 2 49 1 104 2 49 1 105 2 49 1 106 1 1 1 111 2 49 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 2 53 0 130 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 57 1 102 2 57 1 103 2 57 1 104 2 57 1 105 2 57 1 106 2 61 1 107 2 65 1 108 1 1 1 111 2 57 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 69 1 102 2 69 1 103 2 69 1 104 2 69 1 105 2 69 1 106 1 1 1 111 2 69 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 73 1 102 2 73 1 103 2 73 1 104 2 73 1 105 2 73 1 106 1 1 1 111 2 73 1 112 1 9 1 122] 
#[1 0 62 0 2 0 62 0 4 0 62 0 6 0 62 0 8 2 77 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 35 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 58 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 78 0 62 0 80 0 62 0 107 0 62 0 108 0 62 0 120 0 62 0 128 0 62 0 129 0 62 0 131 0 62 0 132 0 62 0 134 0 62 0 135 0 62 0 136 0 62 0 137 2 85 0 187 0 62 1 123] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 89 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 107 0 66 0 108 0 66 0 120 0 66 0 128 0 66 0 129 0 66 0 131 0 66 0 132 0 66 0 134 0 66 0 135 0 66 0 136 0 66 0 137 0 66 1 123] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 0 1 123] 
#[0 0 82 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 2 93 0 21] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 48 0 134 0 49 2 201 0 58 0 134 0 61 2 201 0 64 2 201 0 71 0 134 0 78 2 201 0 80 2 201 0 107 2 201 0 108 0 134 0 120 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 0 134 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 0 134 1 123] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 1 13 0 2 0 166 0 3 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 209 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 2 213 0 210 2 217 0 211 2 221 0 212 2 225 0 213 2 229 0 214 2 233 0 215 2 237 0 216 2 213 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 2 245 0 210 2 245 1 106 1 141 1 111 1 145 1 122] 
#[1 0 170 0 3 0 170 0 5 0 170 0 14 0 170 0 16 0 170 0 30 0 170 0 31 0 170 0 33 0 170 0 36 0 170 0 57 0 170 0 59 0 170 0 74 2 249 0 77 0 170 0 87 0 170 0 96 0 170 0 97 0 170 0 111 0 170 0 126 0 170 0 127 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 136 0 170 1 123] 
#[1 2 253 0 2 0 174 0 9 3 1 0 193] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 3 5 0 210 3 5 1 106 1 141 1 111 1 145 1 122] 
#[0 0 178 0 19 0 98] 
#[1 2 253 0 2 0 174 0 77 0 174 0 136 3 9 0 193] 
#[0 3 13 0 54] 
#[0 3 17 0 77] 
#[1 3 21 0 138 3 25 0 233] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 3 29 0 210 3 29 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 3 33 0 210 3 33 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 15 0 18 0 16 0 22 0 19 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 21 0 46 1 25 0 52 0 18 0 57 0 18 0 59 0 18 0 74 1 29 0 75 0 18 0 77 1 105 0 85 0 18 0 87 1 37 0 89 0 18 0 96 0 18 0 97 0 7 0 98 1 45 0 106 0 18 0 111 1 49 0 117 0 18 0 126 0 18 0 127 0 145 0 129 0 18 0 130 0 18 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 3 41 0 186 1 81 0 189 3 41 0 191 3 41 0 192 3 41 0 194 3 41 0 198 3 41 0 199 1 105 0 201 3 41 0 207 1 113 0 208 1 117 0 209 1 121 0 210 3 41 0 240 3 41 0 241 3 41 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 0 182 0 2 0 186 0 3 0 182 0 4 0 186 0 5 0 15 0 6 0 182 0 7 0 182 0 8 0 15 0 11 0 182 0 12 0 182 0 13 0 186 0 14 0 186 0 16 0 182 0 18 0 182 0 20 0 186 0 30 0 186 0 31 0 186 0 33 0 182 0 35 0 186 0 36 0 186 0 57 0 182 0 58 0 186 0 59 0 182 0 64 0 182 0 71 0 186 0 74 0 186 0 77 0 182 0 80 0 186 0 87 0 186 0 96 0 186 0 97 0 182 0 107 0 182 0 108 0 186 0 111 0 186 0 126 0 186 0 127 0 182 0 128 0 186 0 129 0 186 0 130 0 15 0 131 0 182 0 132 0 182 0 134 0 182 0 135 0 186 0 136 0 186 1 123] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 0 194 0 16 0 194 0 129 0 0 1 123] 
#[1 0 198 0 3 0 198 0 5 3 45 0 6 2 81 0 11 0 198 0 14 0 198 0 16 0 198 0 30 0 198 0 31 0 198 0 33 0 198 0 36 0 198 0 57 0 198 0 59 0 198 0 74 0 198 0 77 0 198 0 87 0 198 0 96 0 198 0 97 0 198 0 111 0 198 0 126 0 198 0 127 0 198 0 129 0 198 0 130 0 198 0 131 0 198 0 136 3 49 0 187 0 198 1 123] 
#[0 0 202 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 0 206 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 0 210 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 0 214 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 0 218 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 3 53 0 19 3 57 0 98] 
#[0 0 222 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 3 61 0 7] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 65 0 2 0 230 0 3 3 73 0 4 0 230 0 5 3 69 0 6 0 230 0 7 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 0 230 0 14 0 230 0 16 3 73 0 18 3 73 0 20 0 230 0 30 0 230 0 31 0 230 0 33 3 73 0 35 0 230 0 36 0 230 0 57 3 73 0 58 0 230 0 59 3 73 0 64 3 73 0 71 0 230 0 74 0 230 0 77 3 73 0 80 0 230 0 87 0 230 0 96 0 230 0 97 3 73 0 107 3 73 0 108 0 230 0 111 0 230 0 126 0 230 0 127 3 73 0 128 0 230 0 129 0 230 0 130 0 19 0 131 3 73 0 132 3 73 0 134 3 73 0 135 0 230 0 136 3 73 1 116 0 230 1 123] 
#[1 3 77 0 16 3 81 0 129] 
#[0 0 234 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 0 238 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 85 0 11 0 254 0 14 3 89 0 179] 
#[0 0 0 1 123] 
#[0 1 2 0 5 0 6 0 31 0 58 0 87 0 136] 
#[1 3 93 0 6 3 105 0 31 3 105 0 87 1 6 0 136 3 105 0 190] 
#[1 3 93 0 6 3 109 0 136] 
#[1 3 93 0 6 3 113 0 31 3 113 0 87 1 6 0 136 3 113 0 190] 
#[1 3 93 0 6 3 117 0 31 3 117 0 87 1 6 0 136 3 117 0 190] 
#[1 3 121 0 5 3 125 0 136] 
#[0 1 10 0 5 0 136] 
#[1 1 14 0 5 3 93 0 6 3 129 0 58 1 14 0 136] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 3 133 0 155 1 217 1 62 1 221 1 63] 
#[1 1 18 0 21 1 18 0 23 1 18 0 27 1 18 0 43 1 18 0 52 1 18 0 65 1 18 0 89 1 18 0 103 1 18 0 114 1 18 0 117 1 18 0 122 3 137 0 153] 
#[1 1 157 0 138 3 141 0 159 3 145 0 167] 
#[1 3 149 0 29 3 153 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 3 157 0 164] 
#[1 1 22 0 40 1 22 0 48 3 161 0 56 1 22 0 61 3 165 1 32] 
#[0 3 169 0 6] 
#[0 1 26 0 6] 
#[1 0 10 0 21 0 89 0 23 3 173 0 27 3 177 0 52 3 181 0 65 3 185 0 89 3 189 0 103 3 193 0 114 3 197 0 117 3 201 0 122 4 1 0 170 4 1 0 173 4 1 0 176 4 1 1 43 3 221 1 44 3 225 1 45 3 229 1 46 3 233 1 47 4 1 1 51 3 241 1 52 3 245 1 53 3 249 1 54 3 253 1 55 4 1 1 64 4 1 1 65 4 1 1 66 4 13 1 67 4 17 1 99 4 17 1 100 0 233 1 101] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 30 0 62 0 33 0 62 0 35 0 62 0 36 0 62 0 37 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 57 0 62 0 58 0 62 0 59 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 74 0 62 0 77 0 62 0 78 0 62 0 80 0 62 0 96 0 62 0 97 0 62 0 107 0 62 0 108 0 62 0 111 0 62 0 113 0 62 0 115 0 62 0 120 0 62 0 126 0 62 0 127 0 62 0 128 0 62 0 129 0 62 0 130 0 62 0 131 0 62 0 132 0 62 0 133 0 62 0 134 0 62 0 135 0 62 0 136 0 62 0 137 2 85 0 187 0 62 1 123] 
#[1 2 97 0 2 4 21 0 3 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 1 30 0 3 1 30 0 4 1 30 0 5 2 105 0 6 1 30 0 7 1 30 0 8 1 30 0 9 1 30 0 10 0 23 0 11 0 27 0 12 0 31 0 13 0 35 0 14 1 30 0 18 1 30 0 20 1 30 0 30 1 30 0 33 1 30 0 35 1 30 0 36 1 30 0 37 1 30 0 39 1 30 0 40 1 30 0 41 1 30 0 48 1 30 0 49 1 30 0 57 0 39 0 58 1 30 0 59 1 30 0 61 1 30 0 64 1 30 0 71 1 30 0 74 1 30 0 77 1 30 0 78 1 30 0 80 1 30 0 96 1 30 0 97 1 30 0 107 1 30 0 108 1 30 0 111 1 30 0 113 1 30 0 115 1 30 0 120 1 30 0 126 1 30 0 127 1 30 0 128 2 173 0 129 1 30 0 130 0 43 0 131 0 47 0 132 1 30 0 133 1 30 0 134 1 30 0 135 1 30 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 30 1 123] 
#[1 4 25 0 40 4 29 0 136] 
#[0 1 34 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 4 33 0 77 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 0 62 0 10 0 58] 
#[1 4 37 0 10 4 41 0 58] 
#[0 1 38 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 1 42 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 4 45 0 113 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 4 49 0 2 1 46 0 3 1 46 0 4 1 46 0 5 1 46 0 6 1 46 0 7 1 46 0 8 1 46 0 9 1 46 0 10 1 46 0 11 1 46 0 12 1 46 0 13 1 46 0 14 1 46 0 18 1 46 0 20 1 46 0 30 1 46 0 33 1 46 0 35 1 46 0 36 1 46 0 37 1 46 0 39 1 46 0 40 1 46 0 41 1 46 0 48 1 46 0 49 1 46 0 57 1 46 0 58 1 46 0 59 1 46 0 61 1 46 0 64 1 46 0 71 1 46 0 74 1 46 0 77 1 46 0 78 1 46 0 80 1 46 0 96 1 46 0 97 1 46 0 107 1 46 0 108 1 46 0 111 1 46 0 113 1 46 0 115 1 46 0 120 1 46 0 126 1 46 0 127 1 46 0 128 1 46 0 129 1 46 0 130 1 46 0 131 1 46 0 132 1 46 0 133 1 46 0 134 1 46 0 135 1 46 0 136 1 46 0 137 1 46 1 123] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 53 1 102 4 53 1 103 4 53 1 104 4 53 1 105 4 53 1 106 1 1 1 111 4 53 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 57 1 102 4 57 1 103 4 57 1 104 4 57 1 105 4 57 1 106 1 1 1 111 4 57 1 112 1 9 1 122] 
#[1 2 97 0 2 1 50 0 3 2 201 0 4 1 50 0 5 2 105 0 6 1 50 0 7 2 201 0 8 1 50 0 9 2 113 0 10 0 51 0 11 0 55 0 12 0 59 0 13 0 63 0 14 2 201 0 18 2 201 0 20 1 50 0 30 1 50 0 33 2 201 0 35 1 50 0 36 1 50 0 37 1 50 0 39 1 50 0 40 1 50 0 41 1 50 0 48 1 50 0 49 1 50 0 57 0 67 0 58 1 50 0 59 1 50 0 61 2 201 0 64 2 201 0 71 1 50 0 74 1 50 0 77 1 50 0 78 2 201 0 80 1 50 0 96 1 50 0 97 2 201 0 107 2 201 0 108 1 50 0 111 1 50 0 113 1 50 0 115 1 50 0 120 1 50 0 126 1 50 0 127 2 201 0 128 2 173 0 129 1 50 0 130 0 71 0 131 0 75 0 132 1 50 0 133 2 201 0 134 2 201 0 135 1 50 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 50 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 1 54 0 39 1 54 0 40 1 54 0 41 1 54 0 48 1 54 0 49 2 201 0 58 1 54 0 61 2 201 0 64 2 201 0 71 1 54 0 78 2 201 0 80 2 201 0 107 2 201 0 108 1 54 0 120 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 4 61 0 133 2 201 0 134 2 201 0 135 1 54 0 136 2 193 0 137 4 65 1 94 2 197 1 109 2 201 1 115 2 201 1 116 1 54 1 123] 
#[1 4 69 0 120 4 29 0 136] 
#[1 1 58 0 40 4 73 0 41 1 58 0 49 4 29 0 136 4 77 1 79] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 4 81 0 36 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 4 85 0 5 4 89 0 36] 
#[1 2 97 0 2 2 201 0 4 1 62 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 1 62 0 36 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 201 0 4 1 70 0 5 2 105 0 6 4 93 0 7 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 1 70 0 130 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 4 97 0 5 4 101 0 130] 
#[0 1 74 0 5 0 130] 
#[1 2 97 0 2 1 78 0 3 2 201 0 4 1 78 0 5 2 105 0 6 1 78 0 7 2 201 0 8 1 78 0 9 1 78 0 10 0 79 0 11 0 83 0 12 0 87 0 13 0 91 0 14 1 78 0 18 1 78 0 20 1 78 0 30 1 78 0 33 2 201 0 35 1 78 0 36 1 78 0 37 1 78 0 39 1 78 0 40 1 78 0 41 1 78 0 48 1 78 0 49 1 78 0 57 0 95 0 58 1 78 0 59 1 78 0 61 1 78 0 64 2 201 0 71 1 78 0 74 1 78 0 77 1 78 0 78 1 78 0 80 1 78 0 96 1 78 0 97 2 201 0 107 2 201 0 108 1 78 0 111 1 78 0 113 1 78 0 115 1 78 0 120 1 78 0 126 1 78 0 127 1 78 0 128 2 173 0 129 1 78 0 130 0 99 0 131 0 103 0 132 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 78 1 123] 
#[1 2 97 0 2 1 82 0 3 2 201 0 4 1 82 0 5 2 105 0 6 1 82 0 7 2 201 0 8 1 82 0 9 1 82 0 10 0 107 0 11 0 111 0 12 0 115 0 13 0 119 0 14 1 82 0 18 1 82 0 20 1 82 0 30 1 82 0 33 2 201 0 35 1 82 0 36 1 82 0 37 1 82 0 39 1 82 0 40 1 82 0 41 1 82 0 48 1 82 0 49 1 82 0 57 0 123 0 58 1 82 0 59 1 82 0 61 1 82 0 64 2 201 0 71 1 82 0 74 1 82 0 77 1 82 0 78 1 82 0 80 1 82 0 96 1 82 0 97 2 201 0 107 2 201 0 108 1 82 0 111 1 82 0 113 1 82 0 115 1 82 0 120 1 82 0 126 1 82 0 127 1 82 0 128 2 173 0 129 1 82 0 130 0 127 0 131 0 131 0 132 1 82 0 133 1 82 0 134 1 82 0 135 1 82 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 82 1 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 105 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 4 105 1 99 4 105 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 1 13 0 2 0 18 0 5 0 18 0 6 0 18 0 11 1 17 0 15 0 18 0 16 0 22 0 19 1 21 0 46 1 25 0 52 1 29 0 75 1 105 0 85 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 0 18 0 131 1 53 0 134 1 57 0 135 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 4 109 0 186 4 113 0 188 1 81 0 189 1 125 0 191 1 125 0 192 4 109 0 194 4 109 0 198 4 109 0 199 1 105 0 201 4 109 0 207 1 113 0 208 1 117 0 209 1 121 0 210 1 125 0 240 4 109 0 241 4 109 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 117 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 4 117 1 99 4 117 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[0 4 121 0 40] 
#[1 0 81 0 2 4 125 0 3 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 129 1 102 4 129 1 103 4 129 1 104 4 129 1 105 4 129 1 106 1 1 1 111 4 129 1 112 4 133 1 113 4 137 1 114 1 9 1 122] 
#[0 1 90 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[1 4 141 0 1 4 145 0 138] 
#[0 1 94 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 149 1 102 4 149 1 103 4 149 1 104 4 149 1 105 4 149 1 106 1 1 1 111 4 149 1 112 1 9 1 122] 
#[0 1 98 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 102 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 106 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 110 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[0 1 114 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 118 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 122 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 126 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 130 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 134 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 138 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 142 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 146 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 150 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 153 1 102 4 153 1 103 4 153 1 104 4 153 1 105 4 153 1 106 4 157 1 110 1 1 1 111 4 153 1 112 1 9 1 122] 
#[0 1 154 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 158 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 162 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 166 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 1 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 161 1 102 4 161 1 103 4 161 1 104 4 161 1 105 4 161 1 106 1 1 1 111 4 161 1 112 1 9 1 122] 
#[0 1 178 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 0 182 0 5 0 182 0 6 0 182 0 8 4 165 0 9 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 18 0 182 0 20 0 182 0 35 0 182 0 58 0 182 0 64 0 182 0 71 0 182 0 80 0 182 0 107 0 182 0 108 0 182 0 128 0 182 0 131 0 182 0 132 0 182 0 134 0 182 0 135] 
#[1 3 65 0 2 1 182 0 3 3 73 0 4 1 182 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 4 169 0 14 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 4 173 0 3] 
#[1 1 186 0 3 4 177 0 5] 
#[0 1 190 0 3 0 5] 
#[1 1 194 0 3 4 185 0 136 4 185 1 85] 
#[1 1 198 0 3 0 135 0 136] 
#[0 1 202 0 3 0 136] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 65 0 2 1 206 0 3 1 206 0 4 1 206 0 5 3 69 0 6 1 206 0 7 1 206 0 8 1 206 0 9 0 139 0 11 0 143 0 12 0 147 0 13 1 206 0 14 1 206 0 16 1 206 0 18 1 206 0 20 1 206 0 30 1 206 0 31 1 206 0 33 1 206 0 35 1 206 0 36 1 206 0 57 0 151 0 58 1 206 0 59 1 206 0 64 1 206 0 71 1 206 0 74 1 206 0 77 1 206 0 80 1 206 0 87 1 206 0 96 1 206 0 97 1 206 0 107 1 206 0 108 1 206 0 111 1 206 0 126 1 206 0 127 1 206 0 128 1 206 0 129 1 206 0 130 0 155 0 131 0 159 0 132 1 206 0 134 1 206 0 135 1 206 0 136 3 73 1 116 1 206 1 123] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 15 0 18 0 16 0 22 0 19 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 21 0 46 1 25 0 52 0 18 0 57 0 18 0 59 0 18 0 74 1 29 0 75 0 18 0 77 1 105 0 85 0 18 0 87 1 37 0 89 0 18 0 96 0 18 0 97 0 7 0 98 1 45 0 106 0 18 0 111 1 49 0 117 0 18 0 126 0 18 0 127 0 145 0 129 0 18 0 130 0 18 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 4 193 0 186 1 81 0 189 4 193 0 191 4 193 0 192 4 193 0 194 4 193 0 198 4 193 0 199 1 105 0 201 4 193 0 207 1 113 0 208 1 117 0 209 1 121 0 210 4 193 0 240 4 193 0 241 4 193 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 1 210 0 3 4 221 0 27 4 221 0 81 4 221 0 122 1 214 0 138 4 209 1 26 4 213 1 27 4 217 1 28 4 221 1 31] 
#[0 4 225 0 9] 
#[1 3 65 0 2 1 218 0 3 3 73 0 4 1 218 0 5 3 69 0 6 1 218 0 7 3 73 0 8 1 218 0 9 0 163 0 11 0 167 0 12 0 171 0 13 1 218 0 14 1 218 0 16 3 73 0 18 3 73 0 20 1 218 0 30 1 218 0 31 1 218 0 33 3 73 0 35 1 218 0 36 1 218 0 57 0 175 0 58 1 218 0 59 3 73 0 64 3 73 0 71 1 218 0 74 1 218 0 77 3 73 0 80 1 218 0 87 1 218 0 96 1 218 0 97 3 73 0 107 3 73 0 108 1 218 0 111 1 218 0 126 1 218 0 127 3 73 0 128 1 218 0 129 1 218 0 130 0 179 0 131 0 183 0 132 3 73 0 134 3 73 0 135 1 218 0 136 3 73 1 116 1 218 1 123] 
#[1 4 229 0 77 1 222 0 136 4 233 1 1] 
#[0 4 237 0 50] 
#[1 4 241 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 4 245 0 207 1 113 0 208 1 117 0 209 4 249 0 210 4 249 1 106 1 141 1 111 1 145 1 122] 
#[1 0 254 0 2 0 254 0 3 0 254 0 5 0 254 0 6 0 254 0 9 3 85 0 11 0 254 0 14 0 254 0 16 0 254 0 24 0 254 0 26 0 254 0 27 0 254 0 28 0 254 0 30 0 254 0 31 0 254 0 32 0 254 0 33 0 254 0 36 0 254 0 39 0 254 0 40 0 254 0 41 0 254 0 48 0 254 0 49 0 254 0 52 0 254 0 57 0 254 0 59 0 254 0 61 0 254 0 74 0 254 0 77 0 254 0 78 0 254 0 87 0 254 0 88 0 254 0 89 0 254 0 91 0 254 0 92 0 254 0 93 0 254 0 94 0 254 0 96 0 254 0 97 0 254 0 111 0 254 0 112 0 254 0 114 0 254 0 117 0 254 0 120 0 254 0 122 0 254 0 126 0 254 0 127 0 254 0 129 0 254 0 130 0 254 0 131 0 254 0 136 0 254 0 138 4 253 0 179 0 254 1 123] 
#[0 1 226 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 3 65 0 2 1 230 0 3 3 73 0 4 1 230 0 5 3 69 0 6 1 230 0 7 3 73 0 8 1 230 0 9 0 187 0 11 0 191 0 12 0 195 0 13 1 230 0 14 1 230 0 16 1 230 0 18 1 230 0 20 1 230 0 30 1 230 0 31 1 230 0 33 3 73 0 35 1 230 0 36 1 230 0 57 0 199 0 58 1 230 0 59 1 230 0 64 3 73 0 71 1 230 0 74 1 230 0 77 1 230 0 80 1 230 0 87 1 230 0 96 1 230 0 97 3 73 0 107 3 73 0 108 1 230 0 111 1 230 0 126 1 230 0 127 1 230 0 128 1 230 0 129 1 230 0 130 0 203 0 131 0 207 0 132 1 230 0 134 1 230 0 135 1 230 0 136 3 73 1 116 1 230 1 123] 
#[1 3 65 0 2 1 234 0 3 3 73 0 4 1 234 0 5 3 69 0 6 1 234 0 7 3 73 0 8 1 234 0 9 0 211 0 11 0 215 0 12 0 219 0 13 1 234 0 14 1 234 0 16 1 234 0 18 1 234 0 20 1 234 0 30 1 234 0 31 1 234 0 33 3 73 0 35 1 234 0 36 1 234 0 57 0 223 0 58 1 234 0 59 1 234 0 64 3 73 0 71 1 234 0 74 1 234 0 77 1 234 0 80 1 234 0 87 1 234 0 96 1 234 0 97 3 73 0 107 3 73 0 108 1 234 0 111 1 234 0 126 1 234 0 127 1 234 0 128 1 234 0 129 1 234 0 130 0 227 0 131 0 231 0 132 1 234 0 134 1 234 0 135 1 234 0 136 3 73 1 116 1 234 1 123] 
#[0 0 194 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 1 238 0 3 1 238 0 5 1 238 0 14 1 238 0 16 1 238 0 30 1 238 0 31 1 238 0 33 1 238 0 36 1 238 0 57 1 238 0 59 1 238 0 74 1 238 0 77 1 238 0 87 1 238 0 96 1 238 0 97 1 238 0 111 1 238 0 126 1 238 0 127 3 81 0 129 1 238 0 130 1 238 0 131 1 238 0 136 1 238 1 123] 
#[0 5 1 0 139] 
#[0 1 242 0 3 0 5 0 6 0 11 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 1 246 0 77 5 5 0 129 5 9 0 243] 
#[1 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 5 13 0 200 5 17 0 224 5 21 0 234] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 5 25 0 208 1 117 0 209 1 121 0 210 1 121 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 29 0 210 5 33 0 217 5 29 1 106 1 141 1 111 1 145 1 122] 
#[0 5 37 0 139] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 41 0 210 5 41 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 15 0 18 0 16 0 22 0 19 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 21 0 46 1 25 0 52 0 18 0 57 0 18 0 59 0 18 0 74 1 29 0 75 0 18 0 77 1 105 0 85 0 18 0 87 1 37 0 89 0 18 0 96 0 18 0 97 0 7 0 98 1 45 0 106 0 18 0 111 1 49 0 117 0 18 0 126 0 18 0 127 0 145 0 129 0 18 0 130 0 18 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 5 45 0 186 1 81 0 189 5 45 0 191 5 45 0 192 5 45 0 194 5 45 0 198 5 45 0 199 1 105 0 201 5 45 0 207 1 113 0 208 1 117 0 209 1 121 0 210 5 45 0 240 5 45 0 241 5 45 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 49 0 210 5 49 1 106 1 141 1 111 1 145 1 122] 
#[1 5 53 0 138 5 57 0 180] 
#[0 5 61 0 14] 
#[0 5 65 0 138] 
#[0 1 254 0 14 0 31 0 136] 
#[0 2 2 0 14 0 31 0 136] 
#[0 5 69 0 136] 
#[0 2 6 0 102] 
#[0 5 73 0 136] 
#[0 5 77 0 136] 
#[1 1 157 0 138 5 81 0 166 1 185 0 167] 
#[0 2 10 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 5 85 0 142] 
#[0 5 89 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 93 0 43 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 5 97 0 154 5 101 0 155 1 217 1 62 1 221 1 63] 
#[1 5 105 0 5 5 109 0 136] 
#[1 2 14 0 5 3 93 0 6 2 14 0 136] 
#[1 1 157 0 138 5 113 0 165 1 181 0 166 1 185 0 167] 
#[1 5 117 0 40 5 121 1 121] 
#[1 2 18 0 27 2 18 0 40 2 18 0 48 2 18 0 52 2 18 0 56 2 18 0 61 2 18 0 89 2 18 0 103 2 18 0 114 2 18 0 117 2 18 0 122 5 125 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 5 129 0 164] 
#[1 2 22 0 40 2 22 0 48 5 133 0 61 5 137 1 117] 
#[0 2 26 1 123] 
#[1 5 141 0 138 5 145 0 171 5 149 0 172] 
#[1 3 21 0 138 5 153 0 233] 
#[1 5 157 0 138 5 161 1 29] 
#[1 3 21 0 138 5 165 0 233] 
#[1 5 169 0 138 5 173 0 174 5 177 0 175] 
#[1 5 157 0 138 5 181 1 29 5 185 1 68 5 189 1 69] 
#[1 1 149 0 138 5 193 0 177 5 197 0 178] 
#[1 5 157 0 138 5 181 1 29 5 201 1 68 5 189 1 69] 
#[0 2 30 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 34 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 38 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 42 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 46 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 50 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 5 205 1 62 1 221 1 63] 
#[1 2 54 0 3 2 54 0 21 2 54 0 23 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 5 209 0 44 2 54 0 48 5 213 0 51 2 54 0 52 2 54 0 56 2 54 0 61 2 54 0 65 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 103 2 54 0 112 2 54 0 114 2 54 0 117 2 54 0 122 2 54 0 129 2 54 0 138 5 217 1 24] 
#[0 2 58 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 62 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 66 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 5 221 1 62 1 221 1 63] 
#[1 2 70 0 3 2 70 0 21 2 70 0 23 2 70 0 24 2 70 0 26 2 70 0 27 2 70 0 28 2 70 0 32 2 70 0 40 5 209 0 44 2 70 0 48 5 213 0 51 2 70 0 52 2 70 0 56 2 70 0 61 2 70 0 65 2 70 0 88 2 70 0 89 2 70 0 91 2 70 0 92 2 70 0 93 2 70 0 94 2 70 0 103 2 70 0 112 2 70 0 114 2 70 0 117 2 70 0 122 2 70 0 129 2 70 0 138 5 225 1 24] 
#[0 2 74 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 78 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 82 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 229 0 136] 
#[0 2 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 2 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 5 233 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 5 233 1 99 5 233 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 237 0 210 5 241 1 86 5 245 1 87 5 249 1 88 5 253 1 89 6 1 1 90 6 5 1 91 5 237 1 106 1 141 1 111 1 145 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 9 1 102 6 9 1 103 6 9 1 104 6 9 1 105 6 9 1 106 1 1 1 111 6 9 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 13 1 102 6 13 1 103 6 13 1 104 6 13 1 105 6 13 1 106 1 1 1 111 6 13 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 17 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 6 17 1 99 6 17 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 6 21 0 3 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 129 1 102 4 129 1 103 4 129 1 104 4 129 1 105 4 129 1 106 1 1 1 111 4 129 1 112 6 25 1 113 4 137 1 114 1 9 1 122] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 6 29 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 6 33 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 3 21 0 138 6 37 0 233] 
#[0 2 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 41 1 102 6 41 1 103 6 41 1 104 6 41 1 105 6 41 1 106 1 1 1 111 6 41 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 6 45 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 49 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 6 53 1 80 6 57 1 81 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 2 102 0 40 6 61 0 49 6 65 1 83] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 69 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 6 69 1 99 6 69 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 73 1 102 6 73 1 103 6 73 1 104 6 73 1 105 6 73 1 106 1 1 1 111 6 73 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 77 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 6 77 1 99 6 77 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 81 1 102 6 81 1 103 6 81 1 104 6 81 1 105 6 81 1 106 1 1 1 111 6 81 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 57 1 102 2 57 1 103 2 57 1 104 2 57 1 105 2 57 1 106 6 85 1 108 1 1 1 111 2 57 1 112 1 9 1 122] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 2 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 2 114 0 5 0 194 0 16 0 194 0 129 2 114 0 131] 
#[1 6 89 0 5 6 93 0 131] 
#[0 2 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 2 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 130 0 3 2 201 0 4 2 130 0 5 2 105 0 6 2 201 0 8 2 130 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 6 97 0 3 6 101 0 5] 
#[1 2 134 0 3 2 134 0 5 6 105 0 9] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 146 0 3 2 201 0 4 2 146 0 5 2 105 0 6 2 146 0 7 2 201 0 8 2 146 0 9 2 113 0 10 0 235 0 11 0 239 0 12 0 243 0 13 0 247 0 14 2 201 0 18 2 201 0 20 2 146 0 30 2 146 0 33 2 201 0 35 2 146 0 36 2 146 0 37 2 146 0 39 2 146 0 40 2 146 0 41 2 146 0 48 2 146 0 49 2 146 0 57 0 251 0 58 2 146 0 59 2 146 0 61 2 201 0 64 2 201 0 71 2 146 0 74 2 146 0 77 2 146 0 78 2 201 0 80 2 146 0 96 2 146 0 97 2 201 0 107 2 201 0 108 2 146 0 111 2 146 0 113 2 146 0 115 2 146 0 120 2 146 0 126 2 146 0 127 2 201 0 128 2 173 0 129 2 146 0 130 0 255 0 131 1 3 0 132 2 146 0 133 2 201 0 134 2 201 0 135 2 146 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 2 146 1 123] 
#[1 2 97 0 2 2 201 0 4 2 150 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 150 0 130 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 6 109 0 5 6 113 0 130] 
#[1 2 97 0 2 2 154 0 3 2 201 0 4 2 154 0 5 2 105 0 6 2 154 0 7 2 201 0 8 2 154 0 9 2 113 0 10 1 7 0 11 1 11 0 12 1 15 0 13 1 19 0 14 2 201 0 18 2 201 0 20 2 154 0 30 2 154 0 33 2 201 0 35 2 154 0 36 2 154 0 37 2 154 0 39 2 154 0 40 2 154 0 41 2 154 0 48 2 154 0 49 2 154 0 57 1 23 0 58 2 154 0 59 2 154 0 61 2 201 0 64 2 201 0 71 2 154 0 74 2 154 0 77 2 154 0 78 2 201 0 80 2 154 0 96 2 154 0 97 2 201 0 107 2 201 0 108 2 154 0 111 2 154 0 113 2 154 0 115 2 154 0 120 2 154 0 126 2 154 0 127 2 201 0 128 2 173 0 129 2 154 0 130 1 27 0 131 1 31 0 132 2 154 0 133 2 201 0 134 2 201 0 135 2 154 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 2 154 1 123] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 6 117 0 210 6 117 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 6 121 0 210 6 121 1 106 1 141 1 111 1 145 1 122] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 2 213 0 210 6 125 0 213 2 213 1 106 1 141 1 111 1 145 1 122] 
#[0 2 162 0 3] 
#[0 6 129 0 3] 
#[1 6 133 0 139 6 137 0 216] 
#[1 2 166 0 3 2 166 0 5 2 166 0 14 3 77 0 16 2 166 0 30 2 166 0 31 2 166 0 33 2 166 0 36 2 166 0 57 2 166 0 59 2 166 0 74 2 166 0 77 2 166 0 87 2 166 0 96 2 166 0 97 2 166 0 111 2 166 0 126 2 166 0 127 3 81 0 129 2 166 0 130 2 166 0 131 2 166 0 136 2 166 1 123] 
#[0 2 170 0 138] 
#[0 2 174 0 138] 
#[0 2 178 0 138] 
#[0 6 141 0 3] 
#[1 2 182 0 3 2 182 0 130 6 145 0 136] 
#[0 2 186 0 3 0 130 0 136] 
#[1 5 157 0 138 6 149 1 29] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 1 17 0 15 0 18 0 16 0 22 0 19 1 21 0 46 1 25 0 52 1 29 0 75 0 18 0 77 1 105 0 85 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 6 153 0 186 1 81 0 189 6 153 0 191 6 153 0 192 6 153 0 194 6 153 0 198 6 153 0 199 1 105 0 201 6 153 0 207 1 113 0 208 1 117 0 209 1 121 0 210 6 153 0 240 6 153 0 241 6 153 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 6 157 0 76] 
#[0 6 161 0 136] 
#[1 3 21 0 138 6 165 0 233] 
#[1 1 13 0 2 0 166 0 3 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 6 169 0 139 1 117 0 140 1 141 0 142 1 73 0 146 6 173 0 195 1 117 0 209 2 213 0 210 2 217 0 211 2 221 0 212 2 225 0 213 2 229 0 214 2 233 0 215 2 237 0 216 2 213 1 106 1 141 1 111 1 145 1 122] 
#[0 2 190 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 3 65 0 2 2 194 0 3 3 73 0 4 2 194 0 5 3 69 0 6 0 230 0 7 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 2 194 0 14 2 194 0 16 3 73 0 18 3 73 0 20 2 194 0 30 2 194 0 31 2 194 0 33 3 73 0 35 2 194 0 36 2 194 0 57 3 73 0 58 2 194 0 59 3 73 0 64 3 73 0 71 2 194 0 74 2 194 0 77 3 73 0 80 2 194 0 87 2 194 0 96 2 194 0 97 3 73 0 107 3 73 0 108 2 194 0 111 2 194 0 126 2 194 0 127 3 73 0 128 2 194 0 129 2 194 0 130 1 35 0 131 3 73 0 132 3 73 0 134 3 73 0 135 2 194 0 136 3 73 1 116 2 194 1 123] 
#[1 2 198 0 2 2 198 0 3 2 198 0 5 6 177 0 6 2 198 0 9 2 198 0 14 2 198 0 16 2 198 0 24 2 198 0 26 2 198 0 27 2 198 0 28 2 198 0 30 2 198 0 31 2 198 0 32 2 198 0 33 2 198 0 36 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 48 2 198 0 49 2 198 0 52 2 198 0 57 2 198 0 59 2 198 0 61 2 198 0 74 2 198 0 77 2 198 0 78 2 198 0 87 2 198 0 88 2 198 0 89 2 198 0 91 2 198 0 92 2 198 0 93 2 198 0 94 2 198 0 96 2 198 0 97 2 198 0 111 2 198 0 112 2 198 0 114 2 198 0 117 2 198 0 120 2 198 0 122 2 198 0 126 2 198 0 127 2 198 0 129 2 198 0 130 2 198 0 131 2 198 0 136 2 198 0 138 2 198 1 123] 
#[0 2 202 0 3 0 5 0 6 0 11 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 6 193 0 207 1 113 0 208 1 117 0 209 6 185 0 210 6 189 0 244 6 193 0 245 6 185 1 106 1 141 1 111 1 145 1 122] 
#[0 6 197 0 77] 
#[0 6 201 0 40] 
#[1 2 206 0 3 2 206 0 24 2 206 0 40 2 206 0 88 2 206 0 92 2 206 0 93 2 206 0 94 2 206 0 112 6 205 0 225] 
#[1 2 210 0 3 2 210 0 24 6 209 0 26 3 173 0 27 6 213 0 28 6 217 0 32 2 210 0 40 6 221 0 52 2 210 0 88 6 225 0 89 6 229 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 112 3 193 0 114 3 197 0 117 3 201 0 122 6 233 0 129 5 157 0 138 6 245 0 170 6 245 0 176 6 245 0 235 6 245 0 236 6 253 0 237 6 245 0 238 6 245 0 239 6 245 0 251 6 245 0 252 6 245 0 253 6 245 0 254 6 245 0 255 6 245 1 0 6 245 1 2 6 245 1 3 6 245 1 4 6 245 1 6 7 49 1 7 6 245 1 8 7 57 1 29 6 245 1 37 7 65 1 38 6 245 1 40 7 73 1 41 6 245 1 44 3 225 1 45 6 245 1 46 3 233 1 47 6 245 1 49 6 245 1 50 6 245 1 52 3 245 1 53 6 245 1 54 3 253 1 55 6 245 1 57 6 245 1 58 6 245 1 60 7 113 1 61 6 245 1 66 4 13 1 67] 
#[0 2 214 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 3 65 0 2 2 218 0 3 3 73 0 4 2 218 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 7 121 0 3 7 125 0 5] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 65 0 2 2 226 0 3 3 73 0 4 2 226 0 5 3 69 0 6 2 226 0 7 3 73 0 8 2 226 0 9 1 39 0 11 1 43 0 12 1 47 0 13 2 226 0 14 2 226 0 16 3 73 0 18 3 73 0 20 2 226 0 30 2 226 0 31 2 226 0 33 3 73 0 35 2 226 0 36 2 226 0 57 1 51 0 58 2 226 0 59 3 73 0 64 3 73 0 71 2 226 0 74 2 226 0 77 3 73 0 80 2 226 0 87 2 226 0 96 2 226 0 97 3 73 0 107 3 73 0 108 2 226 0 111 2 226 0 126 2 226 0 127 3 73 0 128 2 226 0 129 2 226 0 130 1 55 0 131 1 59 0 132 3 73 0 134 3 73 0 135 2 226 0 136 3 73 1 116 2 226 1 123] 
#[1 2 230 0 3 2 230 0 5 2 230 0 14 2 230 0 30 2 230 0 31 2 230 0 33 2 230 0 36 2 230 0 57 2 230 0 59 2 230 0 74 2 230 0 77 2 230 0 87 2 230 0 96 2 230 0 97 2 230 0 111 2 230 0 126 2 230 0 127 3 81 0 129 2 230 0 130 2 230 0 131 2 230 0 136 2 230 1 123] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 7 129 0 130 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 2 234 0 5 0 131] 
#[1 7 133 0 5 7 137 0 131] 
#[1 7 141 0 2 0 18 0 6 0 18 0 11 1 17 0 15 0 18 0 16 0 22 0 19 7 145 0 26 0 18 0 31 7 205 0 34 1 21 0 46 1 25 0 52 7 205 0 63 1 29 0 75 7 157 0 76 1 105 0 85 0 18 0 87 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 7 161 0 181 7 165 0 182 7 169 0 185 7 173 0 186 1 81 0 189 7 177 0 191 7 181 0 192 7 173 0 194 7 169 0 197 7 173 0 198 7 173 0 199 1 105 0 201 7 173 0 207 1 113 0 208 1 117 0 209 1 121 0 210 7 169 0 218 7 169 0 219 7 169 0 222 1 125 0 240 7 173 0 241 7 173 0 242 7 169 0 246 7 205 0 247 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 2 238 0 5 0 6 0 31 0 58 0 87 0 136] 
#[0 2 242 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 121 0 122] 
#[0 2 246 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 121 0 122] 
#[0 2 250 0 40 0 48 0 56 0 61 0 63 1 123] 
#[0 2 254 0 5 0 136] 
#[0 3 2 0 5 0 136] 
#[0 3 6 1 123] 
#[0 7 209 0 138] 
#[0 3 10 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 7 213 0 6] 
#[1 1 157 0 138 7 217 0 167] 
#[0 3 14 0 29] 
#[1 3 121 0 5 7 221 0 136] 
#[0 7 225 0 6] 
#[0 3 18 1 123] 
#[1 3 173 0 27 3 22 0 40 3 22 0 48 3 177 0 52 3 22 0 56 3 22 0 61 3 185 0 89 3 189 0 103 3 193 0 114 3 197 0 117 3 201 0 122 7 229 0 169 7 229 0 170 7 229 0 173 7 229 0 176 7 229 0 255 7 229 1 2 7 229 1 44 3 225 1 45 7 229 1 46 3 233 1 47 7 229 1 52 3 245 1 53 7 229 1 54 3 253 1 55 7 229 1 66 4 13 1 67] 
#[1 3 26 0 23 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 32 3 26 0 40 3 26 0 43 3 26 0 48 3 26 0 52 3 26 0 61 3 26 0 89 3 26 0 103 3 26 0 114 3 26 0 117 3 26 0 122 8 1 1 34] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 5 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 3 30 0 40 8 9 0 48 8 13 1 118] 
#[1 8 17 0 9 3 34 0 14 8 21 1 5] 
#[1 3 38 0 3 3 38 0 21 3 38 0 23 3 38 0 24 3 38 0 26 3 38 0 27 3 38 0 28 3 38 0 32 3 38 0 40 3 38 0 43 3 38 0 48 3 38 0 52 3 38 0 56 3 38 0 61 3 38 0 65 3 38 0 88 3 38 0 89 3 38 0 91 3 38 0 92 3 38 0 93 3 38 0 94 3 38 0 103 3 38 0 112 3 38 0 114 3 38 0 117 3 38 0 122 3 38 0 129 5 141 0 138 8 25 0 172] 
#[0 3 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 253 0 2 0 174 0 9 0 174 0 136 8 29 0 193] 
#[0 3 46 0 3 0 5 0 9 0 130 0 136] 
#[1 8 33 0 5 8 37 0 136] 
#[1 2 253 0 2 0 174 0 136 8 41 0 193] 
#[0 8 45 0 14] 
#[1 3 50 0 21 3 50 0 23 3 50 0 26 3 50 0 27 3 50 0 28 3 50 0 32 3 50 0 40 3 50 0 43 3 50 0 48 3 50 0 52 3 50 0 56 3 50 0 61 3 50 0 65 3 50 0 89 3 50 0 103 3 50 0 114 3 50 0 117 3 50 0 122 5 169 0 138 8 49 0 175] 
#[0 3 54 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[1 8 33 0 5 8 53 0 9] 
#[1 3 58 0 3 3 58 0 21 3 58 0 23 3 58 0 24 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 32 3 58 0 40 3 58 0 43 3 58 0 48 3 58 0 52 3 58 0 56 3 58 0 61 3 58 0 65 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 103 3 58 0 112 3 58 0 114 3 58 0 117 3 58 0 122 3 58 0 129 5 157 0 138 5 181 1 29 8 57 1 69] 
#[0 3 62 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 3 66 0 3 3 66 0 21 3 66 0 23 3 66 0 24 3 66 0 26 3 66 0 27 3 66 0 28 3 66 0 32 3 66 0 40 3 66 0 43 3 66 0 48 3 66 0 52 3 66 0 56 3 66 0 61 3 66 0 65 3 66 0 88 3 66 0 89 3 66 0 91 3 66 0 92 3 66 0 93 3 66 0 94 3 66 0 103 3 66 0 112 3 66 0 114 3 66 0 117 3 66 0 122 3 66 0 129 1 149 0 138 8 61 0 178] 
#[0 3 70 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 3 74 0 3 3 74 0 21 3 74 0 23 3 74 0 24 3 74 0 26 3 74 0 27 3 74 0 28 3 74 0 32 3 74 0 40 3 74 0 43 3 74 0 48 3 74 0 52 3 74 0 56 3 74 0 61 3 74 0 65 3 74 0 88 3 74 0 89 3 74 0 91 3 74 0 92 3 74 0 93 3 74 0 94 3 74 0 103 3 74 0 112 3 74 0 114 3 74 0 117 3 74 0 122 3 74 0 129 5 157 0 138 5 181 1 29 8 57 1 69] 
#[0 3 78 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 8 65 0 136 8 69 0 138 8 73 0 142] 
#[0 8 77 0 136] 
#[1 3 82 0 3 3 82 0 17 3 82 0 21 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 38 3 82 0 40 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 47 3 82 0 48 3 82 0 51 3 82 0 52 3 82 0 56 3 82 0 61 3 82 0 62 3 82 0 65 3 82 0 67 3 82 0 70 3 82 0 73 3 82 0 82 3 82 0 83 3 82 0 86 3 82 0 87 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 99 3 82 0 100 3 82 0 103 3 82 0 104 3 82 0 109 3 82 0 110 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 119 3 82 0 122 3 82 0 123 3 82 0 129 3 82 0 138 8 81 1 20] 
#[0 3 86 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 3 82 0 3 3 82 0 17 3 82 0 21 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 38 3 82 0 40 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 47 3 82 0 48 3 82 0 51 3 82 0 52 3 82 0 56 3 82 0 61 3 82 0 62 3 82 0 65 3 82 0 67 3 82 0 70 3 82 0 73 3 82 0 82 3 82 0 83 3 82 0 86 3 82 0 87 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 99 3 82 0 100 3 82 0 103 3 82 0 104 3 82 0 109 3 82 0 110 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 119 3 82 0 122 3 82 0 123 3 82 0 129 3 82 0 138 8 85 1 20] 
#[0 3 90 0 6 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 3 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136] 
#[1 3 65 0 2 3 73 0 4 3 98 0 5 3 69 0 6 8 89 0 7 3 73 0 8 3 98 0 9 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 8 93 0 39 3 102 0 40 8 97 1 92] 
#[1 1 194 0 39 1 194 0 40 8 101 0 136 8 105 1 85] 
#[0 3 106 0 39 0 40 0 136] 
#[0 8 109 0 9] 
#[0 8 113 0 5] 
#[1 3 110 0 5 3 114 0 9] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 8 125 0 37 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 8 125 0 115 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 8 125 1 97 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 8 129 0 36 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 8 133 0 39 3 118 0 40 3 118 0 41 3 118 0 48 3 118 0 49 3 118 0 61 3 118 0 78 3 118 0 120 3 118 0 136 3 118 1 123] 
#[0 3 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 8 137 0 3 6 101 0 5] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 141 1 102 8 141 1 103 8 141 1 104 8 141 1 105 8 141 1 106 1 1 1 111 8 141 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 145 1 102 8 145 1 103 8 145 1 104 8 145 1 105 8 145 1 106 1 1 1 111 8 145 1 112 1 9 1 122] 
#[0 3 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 3 130 0 39 3 130 0 40 3 130 0 41 3 130 0 48 3 130 0 49 2 201 0 58 3 130 0 61 2 201 0 64 2 201 0 71 3 130 0 78 2 201 0 80 2 201 0 107 2 201 0 108 3 130 0 120 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 3 130 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 3 130 1 123] 
#[1 3 21 0 138 8 149 0 233] 
#[1 8 153 0 39 3 134 0 40 3 134 0 49 4 29 0 136 8 157 1 82] 
#[1 8 153 0 39 3 134 0 40 3 134 0 49 6 45 0 78 8 161 1 81 8 165 1 82] 
#[0 3 138 0 39 0 40 0 49 0 78] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 169 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[0 8 173 0 40] 
#[0 3 142 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 3 146 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 3 146 0 36 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 3 150 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 3 154 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 3 154 0 130 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 3 158 0 5 0 130] 
#[1 1 13 0 2 0 18 0 5 0 18 0 6 0 18 0 11 1 17 0 15 0 18 0 16 0 22 0 19 1 21 0 46 1 25 0 52 1 29 0 75 1 105 0 85 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 0 18 0 131 1 53 0 134 1 57 0 135 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 8 177 0 186 1 81 0 189 1 125 0 191 1 125 0 192 8 177 0 194 8 177 0 198 8 177 0 199 1 105 0 201 8 177 0 207 1 113 0 208 1 117 0 209 1 121 0 210 1 125 0 240 8 177 0 241 8 177 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 3 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 3 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 129 1 102 4 129 1 103 4 129 1 104 4 129 1 105 4 129 1 106 1 1 1 111 4 129 1 112 8 181 1 114 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 185 1 102 8 185 1 103 8 185 1 104 8 185 1 105 8 185 1 106 1 1 1 111 8 185 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 189 1 102 8 189 1 103 8 189 1 104 8 189 1 105 8 189 1 106 1 1 1 111 8 189 1 112 1 9 1 122] 
#[0 3 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 3 65 0 2 3 174 0 3 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 174 0 136 3 73 1 116] 
#[1 3 65 0 2 3 178 0 3 3 73 0 4 3 178 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 3 182 0 3 0 5] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[0 4 165 0 9] 
#[0 3 190 0 3 0 136] 
#[0 3 194 0 9 0 77 0 136] 
#[1 4 221 0 27 4 221 0 81 4 221 0 122 1 214 0 138 8 193 1 28 4 221 1 31] 
#[1 3 198 0 3 8 33 0 5 8 197 0 9 3 198 0 130 3 198 0 136] 
#[1 3 77 0 16 4 229 0 77 3 81 0 129 1 222 0 136 8 201 1 1] 
#[0 3 202 0 136] 
#[1 3 82 0 3 3 82 0 5 3 82 0 14 3 82 0 16 3 82 0 17 3 82 0 21 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 30 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 36 3 82 0 38 3 82 0 40 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 47 3 82 0 48 3 82 0 51 3 82 0 52 3 82 0 56 3 82 0 57 3 82 0 59 3 82 0 61 3 82 0 62 3 82 0 65 3 82 0 67 3 82 0 70 3 82 0 73 3 82 0 74 3 82 0 77 3 82 0 82 3 82 0 83 3 82 0 86 3 82 0 87 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 99 3 82 0 100 3 82 0 103 3 82 0 104 3 82 0 109 3 82 0 110 3 82 0 111 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 119 3 82 0 122 3 82 0 123 3 82 0 126 3 82 0 127 3 82 0 129 3 82 0 130 3 82 0 131 3 82 0 136 3 82 0 138 8 205 1 20 3 82 1 123] 
#[1 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 8 209 0 200 5 17 0 224 5 21 0 234] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 1 63 0 5 0 182 0 6 0 182 0 8 4 165 0 9 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 18 0 182 0 20 0 182 0 35 0 182 0 58 0 182 0 64 0 182 0 71 0 182 0 80 0 182 0 107 0 182 0 108 0 182 0 128 0 182 0 131 0 182 0 132 0 182 0 134 0 182 0 135] 
#[0 8 217 0 3] 
#[0 8 221 0 138] 
#[0 3 206 0 5 0 130] 
#[1 3 65 0 2 3 73 0 4 3 210 0 5 3 69 0 6 0 230 0 7 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 210 0 130 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 8 225 0 5 8 229 0 130] 
#[0 3 214 0 5 0 130] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 15 0 18 0 16 0 22 0 19 8 233 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 21 0 46 1 25 0 52 0 18 0 57 0 18 0 59 0 18 0 74 1 29 0 75 0 18 0 77 1 105 0 85 0 18 0 87 1 37 0 89 0 18 0 96 0 18 0 97 0 7 0 98 1 45 0 106 0 18 0 111 1 49 0 117 0 18 0 126 0 18 0 127 0 145 0 129 0 18 0 130 0 18 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 8 237 0 186 1 81 0 189 8 237 0 191 8 237 0 192 8 237 0 194 8 237 0 198 8 237 0 199 1 105 0 201 8 237 0 207 1 113 0 208 1 117 0 209 1 121 0 210 8 237 0 240 8 237 0 241 8 237 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[0 3 218 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 3 222 0 3 8 241 0 24 3 222 0 40 8 245 0 88 8 249 0 92 8 253 0 93 9 1 0 94 9 5 0 112 9 9 0 202 9 13 0 226 9 13 0 227 9 13 0 228 9 13 0 229 9 13 0 230] 
#[1 9 33 0 28 9 37 0 32 3 177 0 52 9 41 0 79 3 185 0 89 6 229 0 91 3 193 0 114 3 201 0 122 9 45 1 7 9 49 1 45 9 53 1 47 9 57 1 53 9 61 1 55 9 65 1 67] 
#[1 3 21 0 138 9 69 0 233] 
#[1 3 21 0 138 9 73 0 233] 
#[1 3 21 0 138 9 77 0 233] 
#[1 3 21 0 138 9 81 0 233] 
#[0 9 85 0 138] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 9 89 0 210 9 89 1 106 1 141 1 111 1 145 1 122] 
#[0 3 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 3 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 3 234 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 3 238 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 9 93 0 26 6 213 0 28 6 217 0 32 3 177 0 52 3 185 0 89 9 97 0 253 9 101 0 254 9 105 0 255 9 109 1 0 9 113 1 2 9 117 1 3 9 121 1 4 9 97 1 37 7 65 1 38 9 101 1 40 7 73 1 41 9 105 1 44 3 225 1 45 9 105 1 46 3 233 1 47 9 109 1 49 9 109 1 50 9 113 1 52 3 245 1 53 9 113 1 54 3 253 1 55 9 117 1 57 9 117 1 58 9 121 1 60 7 113 1 61] 
#[0 3 242 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 3 246 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 3 250 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 3 254 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 2 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 6 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 10 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 14 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 18 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 22 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 26 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 8 33 0 5 9 125 0 9] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 46 0 3 4 46 0 24 4 46 0 26 4 46 0 27 4 46 0 28 4 46 0 32 4 46 0 40 5 209 0 44 5 213 0 51 4 46 0 52 4 46 0 88 4 46 0 89 4 46 0 91 4 46 0 92 4 46 0 93 4 46 0 94 4 46 0 112 4 46 0 114 4 46 0 117 4 46 0 122 4 46 0 129 4 46 0 138 9 129 1 24] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 54 0 3 4 54 0 24 4 54 0 26 4 54 0 27 4 54 0 28 4 54 0 32 4 54 0 40 5 209 0 44 5 213 0 51 4 54 0 52 4 54 0 88 4 54 0 89 4 54 0 91 4 54 0 92 4 54 0 93 4 54 0 94 4 54 0 112 4 54 0 114 4 54 0 117 4 54 0 122 4 54 0 129 4 54 0 138 9 133 1 24] 
#[0 4 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 94 0 3 4 94 0 24 4 94 0 26 4 94 0 27 4 94 0 28 4 94 0 32 4 94 0 40 5 209 0 44 5 213 0 51 4 94 0 52 4 94 0 88 4 94 0 89 4 94 0 91 4 94 0 92 4 94 0 93 4 94 0 94 4 94 0 112 4 94 0 114 4 94 0 117 4 94 0 122 4 94 0 129 4 94 0 138 9 137 1 24] 
#[0 4 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 30 0 31 0 33 0 35 0 36 0 57 0 58 0 59 0 64 0 71 0 74 0 77 0 80 0 87 0 96 0 97 0 107 0 108 0 111 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 9 141 0 210 9 141 1 106 1 141 1 111 1 145 1 122] 
#[0 4 106 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 9 145 0 138] 
#[0 4 110 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 111 0 112 0 114 0 117 0 120 0 122 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[1 1 13 0 2 0 166 0 3 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 9 149 0 138 2 209 0 139 1 117 0 140 1 141 0 142 1 73 0 146 9 153 0 183 9 157 0 184 1 117 0 209 2 213 0 210 2 217 0 211 2 221 0 212 2 225 0 213 2 229 0 214 2 233 0 215 2 237 0 216 2 213 1 106 1 141 1 111 1 145 1 122] 
#[1 4 114 0 2 4 114 0 17 4 114 0 26 4 114 0 27 4 114 0 28 4 114 0 31 4 114 0 32 4 114 0 40 4 114 0 52 4 114 0 54 9 161 0 77 4 114 0 87 4 114 0 88 4 114 0 89 4 114 0 91 4 114 0 92 4 114 0 93 4 114 0 94 4 114 0 105 4 114 0 112 4 114 0 114 4 114 0 117 4 114 0 122 4 114 0 129 4 114 0 136 4 114 0 138 9 165 0 220] 
#[0 4 118 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 129 0 136] 
#[0 4 122 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 129 0 136] 
#[1 9 169 0 2 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 32 4 126 0 40 4 126 0 52 4 126 0 88 4 126 0 89 4 126 0 91 4 126 0 92 4 126 0 93 4 126 0 94 4 126 0 112 4 126 0 114 4 126 0 117 4 126 0 122 4 126 0 129 4 126 0 138 9 173 0 231] 
#[0 4 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 123] 
#[0 9 177 0 136] 
#[1 9 181 0 31 9 181 0 87 1 6 0 136 9 181 0 190] 
#[1 0 194 0 16 9 185 0 31 9 185 0 87 0 194 0 129 1 6 0 136 9 185 0 190] 
#[1 4 134 0 3 0 202 0 16 4 134 0 21 4 134 0 23 4 134 0 24 4 134 0 26 4 134 0 27 4 134 0 28 4 134 0 32 4 134 0 40 4 134 0 43 4 134 0 48 4 134 0 52 4 134 0 56 4 134 0 61 4 134 0 65 4 134 0 88 4 134 0 89 4 134 0 91 4 134 0 92 4 134 0 93 4 134 0 94 4 134 0 103 4 134 0 112 4 134 0 114 4 134 0 117 4 134 0 122 1 67 0 129 4 134 0 138 4 134 1 123] 
#[1 4 138 0 3 0 206 0 16 4 138 0 21 4 138 0 23 4 138 0 24 4 138 0 26 4 138 0 27 4 138 0 28 4 138 0 32 4 138 0 40 4 138 0 43 4 138 0 48 4 138 0 52 4 138 0 56 4 138 0 61 4 138 0 65 4 138 0 88 4 138 0 89 4 138 0 91 4 138 0 92 4 138 0 93 4 138 0 94 4 138 0 103 4 138 0 112 4 138 0 114 4 138 0 117 4 138 0 122 1 71 0 129 4 138 0 138 4 138 1 123] 
#[0 4 142 0 31 0 87 0 136] 
#[0 4 146 0 31 0 87 0 136] 
#[0 4 150 0 31 0 87 0 136] 
#[0 4 154 0 31 0 87 0 136] 
#[0 4 158 0 31 0 87 0 136] 
#[1 9 169 0 2 4 126 0 26 4 162 0 31 4 126 0 40 4 126 0 52 4 162 0 87 4 126 0 89 4 126 0 91 4 126 0 129 4 162 0 136 9 189 0 231] 
#[0 9 193 0 136] 
#[0 4 166 1 123] 
#[1 4 170 0 5 3 93 0 6 4 170 0 136] 
#[0 4 174 0 40] 
#[0 4 178 1 123] 
#[0 4 182 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 186 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 190 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 194 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 198 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 202 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 206 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 9 197 0 23 9 93 0 26 3 173 0 27 6 213 0 28 6 217 0 32 4 210 0 40 9 201 0 43 4 210 0 48 3 177 0 52 4 210 0 61 3 185 0 89 3 189 0 103 3 193 0 114 3 197 0 117 3 201 0 122 9 221 0 170 9 221 0 173 9 221 0 176 9 217 1 33 9 221 1 35 9 221 1 36 9 229 1 37 9 233 1 38 9 221 1 39 9 241 1 40 9 245 1 41 9 221 1 43 3 221 1 44 3 225 1 45 3 229 1 46 3 233 1 47 9 221 1 48 10 1 1 49 10 5 1 50 9 221 1 51 3 241 1 52 3 245 1 53 3 249 1 54 3 253 1 55 9 221 1 56 10 17 1 57 10 21 1 58 9 221 1 59 10 29 1 60 10 33 1 61 9 221 1 66 4 13 1 67 9 221 1 119] 
#[1 4 214 0 40 4 214 0 48 4 29 0 136] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 45 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 5 117 0 40 10 49 1 121] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 15 0 18 0 16 0 22 0 19 0 18 0 30 0 18 0 33 0 18 0 36 1 21 0 46 1 25 0 52 0 18 0 57 0 18 0 59 0 18 0 74 1 29 0 75 0 18 0 77 1 105 0 85 1 37 0 89 0 18 0 96 0 18 0 97 0 7 0 98 1 45 0 106 0 18 0 111 1 49 0 117 0 18 0 126 0 18 0 127 0 145 0 129 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 10 53 0 186 1 81 0 189 10 53 0 191 10 53 0 192 10 53 0 194 10 53 0 198 10 53 0 199 1 105 0 201 10 53 0 207 1 113 0 208 1 117 0 209 1 121 0 210 10 53 0 240 10 53 0 241 10 53 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 10 57 0 14] 
#[0 4 218 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 8 17 0 9 3 34 0 136 10 61 1 5] 
#[0 10 65 0 138] 
#[0 4 222 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 10 69 0 136] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 10 73 0 210 10 73 1 106 1 141 1 111 1 145 1 122] 
#[0 4 226 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 15 0 18 0 16 0 22 0 19 0 18 0 31 1 21 0 46 1 25 0 52 1 29 0 75 1 105 0 85 0 18 0 87 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 10 77 0 186 1 81 0 189 10 77 0 191 10 77 0 192 10 77 0 194 10 77 0 198 10 77 0 199 1 105 0 201 10 77 0 207 1 113 0 208 1 117 0 209 1 121 0 210 10 77 0 240 10 77 0 241 10 77 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 4 230 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 234 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 238 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[1 10 81 0 72 10 85 0 136] 
#[1 10 89 0 72 10 93 0 136] 
#[0 4 242 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[1 4 246 0 3 10 205 0 17 4 246 0 21 10 205 0 22 4 246 0 23 4 246 0 24 10 205 0 25 4 246 0 26 4 246 0 27 4 246 0 28 10 205 0 31 4 246 0 32 10 113 0 33 10 205 0 38 4 246 0 40 10 205 0 42 4 246 0 43 5 209 0 44 10 205 0 45 10 205 0 47 4 246 0 48 5 213 0 51 4 246 0 52 4 246 0 56 4 246 0 61 10 205 0 62 4 246 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 4 246 0 88 4 246 0 89 4 246 0 91 4 246 0 92 4 246 0 93 4 246 0 94 10 205 0 99 10 205 0 100 4 246 0 103 10 205 0 104 10 205 0 109 10 205 0 110 4 246 0 112 4 246 0 114 4 246 0 117 10 205 0 119 4 246 0 122 10 205 0 123 4 246 0 129 4 246 0 138 10 193 1 22 10 193 1 23 10 193 1 24 10 205 1 25] 
#[1 4 250 0 3 10 205 0 17 4 250 0 21 10 205 0 22 4 250 0 23 4 250 0 24 10 205 0 25 4 250 0 26 4 250 0 27 4 250 0 28 10 205 0 31 4 250 0 32 10 113 0 33 10 205 0 38 4 250 0 40 10 205 0 42 4 250 0 43 5 209 0 44 10 205 0 45 10 205 0 47 4 250 0 48 5 213 0 51 4 250 0 52 4 250 0 56 4 250 0 61 10 205 0 62 4 250 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 4 250 0 88 4 250 0 89 4 250 0 91 4 250 0 92 4 250 0 93 4 250 0 94 10 205 0 99 10 205 0 100 4 250 0 103 10 205 0 104 10 205 0 109 10 205 0 110 4 250 0 112 4 250 0 114 4 250 0 117 10 205 0 119 4 250 0 122 10 205 0 123 4 250 0 129 4 250 0 138 10 193 1 22 10 193 1 23 10 193 1 24 10 205 1 25] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 10 209 0 210 10 209 1 106 1 141 1 111 1 145 1 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 213 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[0 10 217 0 40] 
#[1 1 13 0 2 1 17 0 15 2 162 0 39 2 162 0 40 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 237 0 210 10 221 1 88 5 253 1 89 6 1 1 90 6 5 1 91 5 237 1 106 1 141 1 111 1 145 1 122] 
#[0 4 254 0 39 0 40] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 225 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 10 225 1 99 10 225 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 237 0 210 10 229 1 91 5 237 1 106 1 141 1 111 1 145 1 122] 
#[0 5 2 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[0 5 6 0 2 0 15 0 60 0 68 0 69 0 75 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 233 1 102 10 233 1 103 10 233 1 104 10 233 1 105 10 233 1 106 1 1 1 111 10 233 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 237 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 10 237 1 99 10 237 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 10 241 1 99 10 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[0 5 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 10 245 0 130 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 10 249 0 130 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 8 17 0 9 3 34 0 36 10 253 1 5] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 11 1 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[0 5 14 0 40 0 49] 
#[0 5 18 0 39 0 40 0 49 0 78] 
#[0 5 22 0 40 0 49] 
#[1 5 26 0 40 4 29 0 136] 
#[0 5 30 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 5 34 0 5 0 194 0 16 0 194 0 129 5 34 0 131] 
#[1 5 38 0 3 5 38 0 5 6 105 0 9] 
#[1 2 97 0 2 5 42 0 3 2 201 0 4 5 42 0 5 2 105 0 6 2 201 0 8 5 42 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 5 46 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 5 46 0 130 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 5 50 0 3 0 130 0 136] 
#[1 1 13 0 2 0 18 0 3 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 15 0 18 0 16 0 22 0 19 1 21 0 46 1 25 0 52 1 29 0 75 1 105 0 85 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 0 18 0 130 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 11 5 0 186 1 81 0 189 11 5 0 191 11 5 0 192 11 5 0 194 11 5 0 198 11 5 0 199 1 105 0 201 11 5 0 207 1 113 0 208 1 117 0 209 1 121 0 210 11 5 0 240 11 5 0 241 11 5 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 11 9 0 136] 
#[1 5 54 0 3 5 54 0 5 5 54 0 14 5 54 0 16 10 205 0 17 5 54 0 21 10 205 0 22 5 54 0 23 5 54 0 24 10 205 0 25 5 54 0 26 5 54 0 27 5 54 0 28 5 54 0 30 1 75 0 31 5 54 0 32 1 79 0 33 5 54 0 36 10 205 0 38 5 54 0 40 10 205 0 42 5 54 0 43 5 209 0 44 10 205 0 45 10 205 0 47 5 54 0 48 5 213 0 51 5 54 0 52 5 54 0 56 5 54 0 57 5 54 0 59 5 54 0 61 10 205 0 62 5 54 0 65 10 205 0 67 10 141 0 70 10 205 0 73 5 54 0 74 5 54 0 77 10 205 0 82 10 205 0 83 10 205 0 86 1 83 0 87 5 54 0 88 5 54 0 89 5 54 0 91 5 54 0 92 5 54 0 93 5 54 0 94 5 54 0 96 5 54 0 97 10 205 0 99 10 205 0 100 5 54 0 103 10 205 0 104 10 205 0 109 10 205 0 110 5 54 0 111 5 54 0 112 5 54 0 114 5 54 0 117 10 205 0 119 5 54 0 122 10 205 0 123 5 54 0 126 5 54 0 127 5 54 0 129 5 54 0 130 5 54 0 131 5 54 0 136 5 54 0 138 10 193 1 22 10 193 1 23 10 193 1 24 10 205 1 25 5 54 1 123] 
#[0 11 13 0 40] 
#[1 11 17 0 139 11 21 0 196] 
#[0 5 58 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 5 62 0 2 0 3 0 5 0 9 0 14 0 16 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 111 0 112 0 114 0 117 0 120 0 122 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 11 25 0 207 1 113 0 208 1 117 0 209 6 185 0 210 11 25 0 245 6 185 1 106 1 141 1 111 1 145 1 122] 
#[0 5 66 0 77] 
#[0 5 70 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[1 5 74 0 3 5 74 0 5 5 74 0 14 3 77 0 16 5 74 0 30 5 74 0 31 5 74 0 33 5 74 0 36 5 74 0 57 5 74 0 59 5 74 0 74 5 74 0 77 5 74 0 87 5 74 0 96 5 74 0 97 5 74 0 111 5 74 0 126 5 74 0 127 3 81 0 129 5 74 0 130 5 74 0 131 5 74 0 136 5 74 1 123] 
#[0 11 29 0 138] 
#[1 1 250 0 3 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 11 33 0 234] 
#[1 1 250 0 3 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 11 37 0 234] 
#[1 1 250 0 3 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 11 41 0 234] 
#[1 1 250 0 3 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 11 45 0 234] 
#[1 11 49 0 88 11 53 0 92] 
#[0 5 78 0 3 0 40] 
#[0 5 82 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 86 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 90 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 94 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 98 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[1 3 21 0 138 11 57 0 233] 
#[1 3 21 0 138 11 61 0 233] 
#[1 3 21 0 138 11 65 0 233] 
#[0 5 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 106 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 5 110 0 3 5 110 0 21 5 110 0 23 5 110 0 24 5 110 0 26 5 110 0 27 5 110 0 28 5 110 0 32 5 110 0 40 5 209 0 44 5 213 0 51 5 110 0 52 5 110 0 65 5 110 0 88 5 110 0 89 5 110 0 91 5 110 0 92 5 110 0 93 5 110 0 94 5 110 0 103 5 110 0 112 5 110 0 114 5 110 0 117 5 110 0 122 5 110 0 129 5 110 0 138 5 217 1 24] 
#[0 5 114 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 5 118 0 3 5 118 0 21 5 118 0 23 5 118 0 24 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 32 5 118 0 40 5 209 0 44 5 213 0 51 5 118 0 52 5 118 0 65 5 118 0 88 5 118 0 89 5 118 0 91 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 103 5 118 0 112 5 118 0 114 5 118 0 117 5 118 0 122 5 118 0 129 5 118 0 138 5 225 1 24] 
#[0 5 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 253 0 2 0 174 0 136 11 69 0 193] 
#[1 11 73 0 2 5 126 0 136 11 77 1 42] 
#[1 2 253 0 2 0 174 0 9 11 81 0 14 0 174 0 136 8 29 0 193] 
#[1 2 253 0 2 11 85 0 14 0 174 0 136 8 41 0 193] 
#[1 5 130 0 9 5 130 0 30 5 130 0 33 5 130 0 57 5 130 0 59 5 130 0 74 5 130 0 96 5 130 0 97 5 130 0 111 5 130 0 126 5 130 0 127 11 89 0 129 5 130 0 136 11 93 1 10] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 11 97 0 130 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 9 33 0 28 9 37 0 32 3 177 0 52 9 41 0 79 3 185 0 89 9 49 1 45 9 53 1 47 9 57 1 53 9 61 1 55] 
#[0 5 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 1 17 0 15 0 18 0 16 0 22 0 19 0 18 0 31 1 21 0 46 1 25 0 52 1 29 0 75 1 105 0 85 0 18 0 87 1 37 0 89 0 7 0 98 1 45 0 106 1 49 0 117 0 145 0 129 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 11 101 0 186 1 81 0 189 11 101 0 191 11 101 0 192 11 101 0 194 11 101 0 198 11 101 0 199 1 105 0 201 11 101 0 207 1 113 0 208 1 117 0 209 1 121 0 210 11 101 0 240 11 101 0 241 11 101 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[1 3 82 0 3 3 82 0 17 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 38 3 82 0 40 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 47 3 82 0 48 3 82 0 51 3 82 0 52 3 82 0 61 3 82 0 62 3 82 0 67 3 82 0 70 3 82 0 73 3 82 0 82 3 82 0 83 3 82 0 86 3 82 0 87 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 99 3 82 0 100 3 82 0 103 3 82 0 104 3 82 0 109 3 82 0 110 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 119 3 82 0 122 3 82 0 123 3 82 0 129 3 82 0 138 11 105 1 20] 
#[1 3 82 0 3 3 82 0 17 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 38 3 82 0 40 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 47 3 82 0 48 3 82 0 51 3 82 0 52 3 82 0 61 3 82 0 62 3 82 0 67 3 82 0 70 3 82 0 73 3 82 0 82 3 82 0 83 3 82 0 86 3 82 0 87 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 99 3 82 0 100 3 82 0 103 3 82 0 104 3 82 0 109 3 82 0 110 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 119 3 82 0 122 3 82 0 123 3 82 0 129 3 82 0 138 11 109 1 20] 
#[1 3 82 0 3 3 82 0 17 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 38 3 82 0 40 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 47 3 82 0 48 3 82 0 51 3 82 0 52 3 82 0 61 3 82 0 62 3 82 0 67 3 82 0 70 3 82 0 73 3 82 0 82 3 82 0 83 3 82 0 86 3 82 0 87 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 99 3 82 0 100 3 82 0 103 3 82 0 104 3 82 0 109 3 82 0 110 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 119 3 82 0 122 3 82 0 123 3 82 0 129 3 82 0 138 11 113 1 20] 
#[1 3 65 0 2 5 162 0 3 3 73 0 4 5 162 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 5 166 0 5 0 131] 
#[1 5 170 0 3 5 170 0 5 11 117 0 14] 
#[1 11 121 0 3 11 125 0 5] 
#[0 5 174 0 3 0 5] 
#[0 11 129 0 138] 
#[1 9 169 0 2 11 145 0 17 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 31 4 126 0 32 4 126 0 40 4 126 0 52 11 137 0 54 4 126 0 87 4 126 0 88 4 126 0 89 4 126 0 91 4 126 0 92 4 126 0 93 4 126 0 94 11 145 0 105 4 126 0 112 4 126 0 114 4 126 0 117 4 126 0 122 4 126 0 129 4 126 0 136 4 126 0 138 11 145 0 221 11 149 0 231] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 153 0 139 11 157 0 189 11 161 0 232] 
#[1 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 11 165 0 224 5 21 0 234] 
#[0 5 178 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 123] 
#[0 11 169 0 136] 
#[0 11 173 0 136] 
#[1 5 182 0 26 5 182 0 40 5 182 0 52 5 182 0 89 5 182 0 91 11 177 0 129 11 181 0 248] 
#[0 5 186 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 11 185 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 11 189 0 138 11 193 1 120] 
#[0 5 190 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 194 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 198 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 202 0 40 0 48 0 61] 
#[0 5 206 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 210 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 214 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 209 0 44 5 213 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 129 1 24 11 197 1 62 1 221 1 63] 
#[0 5 218 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 222 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 209 0 44 5 213 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 133 1 24 11 201 1 62 1 221 1 63] 
#[0 5 226 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 230 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 11 205 1 62 1 221 1 63] 
#[0 5 238 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 11 209 1 62 1 221 1 63] 
#[0 5 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 209 0 44 5 213 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 137 1 24 11 213 1 62 1 221 1 63] 
#[0 6 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 6 10 0 40 4 29 0 136] 
#[0 6 14 1 123] 
#[1 6 18 0 14 3 77 0 16 6 18 0 30 6 18 0 33 6 18 0 36 6 18 0 57 6 18 0 59 6 18 0 74 6 18 0 77 6 18 0 96 6 18 0 97 6 18 0 111 6 18 0 126 6 18 0 127 3 81 0 129 6 18 0 136] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 11 217 0 210 11 217 1 106 1 141 1 111 1 145 1 122] 
#[0 11 221 0 136] 
#[0 6 22 0 3 0 5 0 9 0 130 0 136] 
#[1 6 26 0 3 6 26 0 17 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 38 6 26 0 40 6 26 0 42 6 26 0 44 6 26 0 45 6 26 0 47 6 26 0 48 6 26 0 51 6 26 0 52 6 26 0 56 6 26 0 61 6 26 0 62 6 26 0 65 6 26 0 67 6 26 0 70 6 26 0 73 6 26 0 82 6 26 0 83 6 26 0 86 6 26 0 87 6 26 0 88 6 26 0 89 6 26 0 91 6 26 0 92 6 26 0 93 6 26 0 94 6 26 0 99 6 26 0 100 6 26 0 103 6 26 0 104 6 26 0 109 6 26 0 110 6 26 0 112 6 26 0 114 6 26 0 117 6 26 0 119 6 26 0 122 6 26 0 123 6 26 0 129 6 26 0 138 11 225 1 21] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 11 233 0 31 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 6 30 0 136 11 233 0 223 3 73 1 116] 
#[1 1 6 0 14 3 77 0 16 11 237 0 31 11 237 0 87 3 81 0 129 1 6 0 136 11 237 0 190] 
#[0 11 241 0 142] 
#[0 6 34 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 11 245 0 142] 
#[0 6 38 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 6 42 0 136] 
#[0 6 46 0 136] 
#[0 6 50 0 136] 
#[0 6 54 0 136] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 11 249 0 210 11 249 1 106 1 141 1 111 1 145 1 122] 
#[0 6 58 0 136] 
#[0 6 62 0 136] 
#[0 6 66 0 136] 
#[0 6 70 0 136] 
#[0 6 74 0 136] 
#[0 6 78 0 136] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 11 253 0 210 11 253 1 106 1 141 1 111 1 145 1 122] 
#[0 6 82 0 136] 
#[0 6 86 0 136] 
#[0 6 90 0 136] 
#[0 6 94 0 136] 
#[0 6 98 0 136] 
#[0 6 102 0 136] 
#[0 6 106 0 136] 
#[0 6 110 0 136] 
#[0 6 114 0 136] 
#[0 6 118 0 136] 
#[0 6 122 0 136] 
#[0 6 126 0 136] 
#[0 6 130 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 6 134 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 6 138 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 12 1 0 136] 
#[1 3 65 0 2 3 73 0 4 6 142 0 5 3 69 0 6 3 73 0 8 6 142 0 9 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 6 146 0 40 4 29 0 136] 
#[0 6 150 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 6 154 0 39 0 40 0 136] 
#[0 6 158 0 39 0 40 0 136] 
#[1 6 162 0 5 6 166 0 9] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 2 201 0 35 12 5 0 36 2 201 0 58 2 201 0 64 2 201 0 71 2 201 0 80 2 201 0 107 2 201 0 108 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 6 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 6 174 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[0 6 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 6 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 12 9 0 36] 
#[1 6 186 0 40 6 186 0 49 4 29 0 136] 
#[1 6 190 0 3 12 13 0 14 3 77 0 16 3 81 0 129 6 190 0 130 6 190 0 136 12 17 1 30] 
#[1 3 82 0 3 3 82 0 5 3 82 0 14 3 82 0 16 3 82 0 17 3 82 0 21 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 30 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 36 3 82 0 38 3 82 0 40 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 47 3 82 0 48 3 82 0 51 3 82 0 52 3 82 0 56 3 82 0 57 3 82 0 59 3 82 0 61 3 82 0 62 3 82 0 65 3 82 0 67 3 82 0 70 3 82 0 73 3 82 0 74 3 82 0 77 3 82 0 82 3 82 0 83 3 82 0 86 3 82 0 87 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 99 3 82 0 100 3 82 0 103 3 82 0 104 3 82 0 109 3 82 0 110 3 82 0 111 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 119 3 82 0 122 3 82 0 123 3 82 0 126 3 82 0 127 3 82 0 129 3 82 0 130 3 82 0 131 3 82 0 136 3 82 0 138 12 21 1 20 3 82 1 123] 
#[0 6 194 0 3 0 5 0 14 0 16 0 30 0 31 0 33 0 36 0 57 0 59 0 74 0 77 0 87 0 96 0 97 0 111 0 126 0 127 0 129 0 130 0 131 0 136 1 123] 
#[0 6 198 0 3 0 5] 
#[1 6 202 0 3 12 25 0 5] 
#[0 6 206 0 5 0 130] 
#[1 8 17 0 9 3 34 0 77 12 29 1 5] 
#[1 6 210 0 3 6 210 0 24 6 209 0 26 3 173 0 27 6 213 0 28 6 217 0 32 6 210 0 40 6 221 0 52 6 210 0 88 6 225 0 89 6 229 0 91 6 210 0 92 6 210 0 93 6 210 0 94 6 210 0 112 3 193 0 114 3 197 0 117 3 201 0 122 6 233 0 129 5 157 0 138 6 245 0 170 6 245 0 176 6 245 0 235 6 245 0 236 6 253 0 237 6 245 0 238 6 245 0 239 6 245 0 251 6 245 0 252 6 245 0 253 6 245 0 254 6 245 0 255 6 245 1 0 6 245 1 2 6 245 1 3 6 245 1 4 6 245 1 6 7 49 1 7 6 245 1 8 7 57 1 29 6 245 1 37 7 65 1 38 6 245 1 40 7 73 1 41 6 245 1 44 3 225 1 45 6 245 1 46 3 233 1 47 6 245 1 49 6 245 1 50 6 245 1 52 3 245 1 53 6 245 1 54 3 253 1 55 6 245 1 57 6 245 1 58 6 245 1 60 7 113 1 61 6 245 1 66 4 13 1 67] 
#[1 6 214 0 3 6 214 0 24 6 209 0 26 3 173 0 27 6 213 0 28 6 217 0 32 6 214 0 40 6 221 0 52 6 214 0 88 6 225 0 89 6 229 0 91 6 214 0 92 6 214 0 93 6 214 0 94 6 214 0 112 3 193 0 114 3 197 0 117 3 201 0 122 6 233 0 129 5 157 0 138 6 245 0 170 6 245 0 176 6 245 0 235 6 245 0 236 6 253 0 237 6 245 0 238 6 245 0 239 6 245 0 251 6 245 0 252 6 245 0 253 6 245 0 254 6 245 0 255 6 245 1 0 6 245 1 2 6 245 1 3 6 245 1 4 6 245 1 6 7 49 1 7 6 245 1 8 7 57 1 29 6 245 1 37 7 65 1 38 6 245 1 40 7 73 1 41 6 245 1 44 3 225 1 45 6 245 1 46 3 233 1 47 6 245 1 49 6 245 1 50 6 245 1 52 3 245 1 53 6 245 1 54 3 253 1 55 6 245 1 57 6 245 1 58 6 245 1 60 7 113 1 61 6 245 1 66 4 13 1 67] 
#[1 6 218 0 3 6 218 0 24 6 209 0 26 3 173 0 27 6 213 0 28 6 217 0 32 6 218 0 40 6 221 0 52 6 218 0 88 6 225 0 89 6 229 0 91 6 218 0 92 6 218 0 93 6 218 0 94 6 218 0 112 3 193 0 114 3 197 0 117 3 201 0 122 6 233 0 129 5 157 0 138 6 245 0 170 6 245 0 176 6 245 0 235 6 245 0 236 6 253 0 237 6 245 0 238 6 245 0 239 6 245 0 251 6 245 0 252 6 245 0 253 6 245 0 254 6 245 0 255 6 245 1 0 6 245 1 2 6 245 1 3 6 245 1 4 6 245 1 6 7 49 1 7 6 245 1 8 7 57 1 29 6 245 1 37 7 65 1 38 6 245 1 40 7 73 1 41 6 245 1 44 3 225 1 45 6 245 1 46 3 233 1 47 6 245 1 49 6 245 1 50 6 245 1 52 3 245 1 53 6 245 1 54 3 253 1 55 6 245 1 57 6 245 1 58 6 245 1 60 7 113 1 61 6 245 1 66 4 13 1 67] 
#[1 6 222 0 3 6 222 0 24 6 209 0 26 3 173 0 27 6 213 0 28 6 217 0 32 6 222 0 40 6 221 0 52 6 222 0 88 6 225 0 89 6 229 0 91 6 222 0 92 6 222 0 93 6 222 0 94 6 222 0 112 3 193 0 114 3 197 0 117 3 201 0 122 6 233 0 129 5 157 0 138 6 245 0 170 6 245 0 176 6 245 0 235 6 245 0 236 6 253 0 237 6 245 0 238 6 245 0 239 6 245 0 251 6 245 0 252 6 245 0 253 6 245 0 254 6 245 0 255 6 245 1 0 6 245 1 2 6 245 1 3 6 245 1 4 6 245 1 6 7 49 1 7 6 245 1 8 7 57 1 29 6 245 1 37 7 65 1 38 6 245 1 40 7 73 1 41 6 245 1 44 3 225 1 45 6 245 1 46 3 233 1 47 6 245 1 49 6 245 1 50 6 245 1 52 3 245 1 53 6 245 1 54 3 253 1 55 6 245 1 57 6 245 1 58 6 245 1 60 7 113 1 61 6 245 1 66 4 13 1 67] 
#[1 1 250 0 3 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 12 33 0 234] 
#[1 1 250 0 3 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 40 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 12 37 0 234] 
#[1 2 253 0 2 0 174 0 136 12 41 0 193] 
#[1 11 73 0 2 5 126 0 136 12 45 1 42] 
#[1 2 253 0 2 0 174 0 9 0 174 0 136 12 49 0 193] 
#[0 12 53 0 136] 
#[0 12 57 0 3] 
#[0 12 61 0 136] 
#[0 12 65 0 138] 
#[0 12 69 0 138] 
#[1 4 221 0 27 4 221 0 81 4 221 0 122 1 210 0 130 1 214 0 138 12 73 1 26 4 213 1 27 4 217 1 28 4 221 1 31] 
#[1 8 17 0 9 3 34 0 30 3 34 0 33 3 34 0 57 3 34 0 59 3 34 0 74 3 34 0 96 3 34 0 97 3 34 0 111 3 34 0 126 3 34 0 127 3 34 0 136 12 77 1 5] 
#[0 6 226 0 26 0 28 0 32 0 52 0 89] 
#[1 3 77 0 16 12 81 0 31 12 81 0 87 3 81 0 129 1 6 0 136 12 81 0 190] 
#[1 6 230 0 3 10 205 0 17 10 205 0 22 6 230 0 23 6 230 0 24 10 205 0 25 6 230 0 26 6 230 0 27 6 230 0 28 10 205 0 31 6 230 0 32 10 113 0 33 10 205 0 38 6 230 0 40 10 205 0 42 6 230 0 43 5 209 0 44 10 205 0 45 10 205 0 47 6 230 0 48 5 213 0 51 6 230 0 52 6 230 0 61 10 205 0 62 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 6 230 0 88 6 230 0 89 6 230 0 91 6 230 0 92 6 230 0 93 6 230 0 94 10 205 0 99 10 205 0 100 6 230 0 103 10 205 0 104 10 205 0 109 10 205 0 110 6 230 0 112 6 230 0 114 6 230 0 117 10 205 0 119 6 230 0 122 10 205 0 123 6 230 0 129 6 230 0 138 10 193 1 22 10 193 1 23 10 193 1 24 10 205 1 25] 
#[1 6 234 0 3 10 205 0 17 10 205 0 22 6 234 0 23 6 234 0 24 10 205 0 25 6 234 0 26 6 234 0 27 6 234 0 28 10 205 0 31 6 234 0 32 10 113 0 33 10 205 0 38 6 234 0 40 10 205 0 42 6 234 0 43 5 209 0 44 10 205 0 45 10 205 0 47 6 234 0 48 5 213 0 51 6 234 0 52 6 234 0 61 10 205 0 62 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 6 234 0 88 6 234 0 89 6 234 0 91 6 234 0 92 6 234 0 93 6 234 0 94 10 205 0 99 10 205 0 100 6 234 0 103 10 205 0 104 10 205 0 109 10 205 0 110 6 234 0 112 6 234 0 114 6 234 0 117 10 205 0 119 6 234 0 122 10 205 0 123 6 234 0 129 6 234 0 138 10 193 1 22 10 193 1 23 10 193 1 24 10 205 1 25] 
#[1 6 238 0 3 10 205 0 17 10 205 0 22 6 238 0 23 6 238 0 24 10 205 0 25 6 238 0 26 6 238 0 27 6 238 0 28 10 205 0 31 6 238 0 32 10 113 0 33 10 205 0 38 6 238 0 40 10 205 0 42 6 238 0 43 5 209 0 44 10 205 0 45 10 205 0 47 6 238 0 48 5 213 0 51 6 238 0 52 6 238 0 61 10 205 0 62 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 6 238 0 88 6 238 0 89 6 238 0 91 6 238 0 92 6 238 0 93 6 238 0 94 10 205 0 99 10 205 0 100 6 238 0 103 10 205 0 104 10 205 0 109 10 205 0 110 6 238 0 112 6 238 0 114 6 238 0 117 10 205 0 119 6 238 0 122 10 205 0 123 6 238 0 129 6 238 0 138 10 193 1 22 10 193 1 23 10 193 1 24 10 205 1 25] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 12 85 0 210 12 85 1 106 1 141 1 111 1 145 1 122] 
#[0 6 242 0 136] 
#[1 9 149 0 138 12 89 0 184] 
#[0 6 246 0 31 0 87 0 136] 
#[0 6 250 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[0 12 93 0 50] 
#[0 6 254 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[0 7 2 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[1 1 250 0 26 1 250 0 27 1 250 0 28 7 6 0 31 1 250 0 32 1 250 0 40 1 250 0 52 7 6 0 87 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 7 6 0 136 1 250 0 138 12 97 0 224 5 21 0 234] 
#[0 0 186 0 3 0 5 0 6 0 11] 
#[1 7 10 0 3 7 10 0 5 3 45 0 6 2 81 0 11 3 49 0 187] 
#[1 12 101 0 3 12 105 0 5] 
#[1 2 206 0 40 2 206 0 88 2 206 0 92 2 206 0 93 2 206 0 94 2 206 0 112 12 109 0 225] 
#[0 7 14 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 123] 
#[0 7 18 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 123] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 12 113 0 210 12 113 1 106 1 141 1 111 1 145 1 122] 
#[1 7 22 0 26 7 22 0 40 7 22 0 52 7 22 0 89 7 22 0 91 12 117 0 249] 
#[1 7 26 0 40 7 26 0 48 7 26 0 61 4 29 0 136] 
#[0 7 30 0 5 0 136] 
#[1 12 121 0 5 12 125 0 136] 
#[0 7 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 1 87 0 31 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 12 129 0 87 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 1 6 0 136 12 129 0 190 3 73 1 116] 
#[1 6 26 0 3 6 26 0 17 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 38 6 26 0 40 6 26 0 42 6 26 0 44 6 26 0 45 6 26 0 47 6 26 0 48 6 26 0 51 6 26 0 52 6 26 0 56 6 26 0 61 6 26 0 62 6 26 0 65 6 26 0 67 6 26 0 70 6 26 0 73 6 26 0 82 6 26 0 83 6 26 0 86 6 26 0 87 6 26 0 88 6 26 0 89 6 26 0 91 6 26 0 92 6 26 0 93 6 26 0 94 6 26 0 99 6 26 0 100 6 26 0 103 6 26 0 104 6 26 0 109 6 26 0 110 6 26 0 112 6 26 0 114 6 26 0 117 6 26 0 119 6 26 0 122 6 26 0 123 6 26 0 129 6 26 0 138 12 133 1 21] 
#[1 7 54 0 3 10 205 0 17 7 54 0 21 10 205 0 22 7 54 0 23 7 54 0 24 10 205 0 25 7 54 0 26 7 54 0 27 7 54 0 28 10 205 0 31 7 54 0 32 10 113 0 33 10 205 0 38 7 54 0 40 10 205 0 42 7 54 0 44 10 205 0 45 10 205 0 47 7 54 0 48 7 54 0 51 7 54 0 52 7 54 0 56 7 54 0 61 10 205 0 62 7 54 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 7 54 0 88 7 54 0 89 7 54 0 91 7 54 0 92 7 54 0 93 7 54 0 94 10 205 0 99 10 205 0 100 7 54 0 103 10 205 0 104 10 205 0 109 10 205 0 110 7 54 0 112 7 54 0 114 7 54 0 117 10 205 0 119 7 54 0 122 10 205 0 123 7 54 0 129 7 54 0 138 12 137 1 23 10 205 1 25] 
#[0 7 58 0 136] 
#[0 12 141 0 136] 
#[1 12 13 0 14 6 190 0 136 12 145 1 30] 
#[0 12 149 0 136] 
#[0 12 153 0 136] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 12 157 0 136 3 73 1 116] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 12 161 0 136 3 73 1 116] 
#[0 7 62 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 14 0 61 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 14 0 120 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 12 165 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 12 165 1 99 12 165 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 53 0 105 0 55 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 14 0 78 0 125 0 95 0 129 0 101 0 133 0 116 0 137 0 124 0 141 0 125 0 145 0 129 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 12 169 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 12 173 0 210 12 173 1 106 1 141 1 111 1 145 1 122] 
#[0 7 66 0 3 0 130 0 136] 
#[1 7 70 0 3 7 70 0 5 7 70 0 14 7 70 0 16 10 205 0 17 7 70 0 21 10 205 0 22 7 70 0 23 7 70 0 24 10 205 0 25 7 70 0 26 7 70 0 27 7 70 0 28 7 70 0 30 1 91 0 31 7 70 0 32 1 95 0 33 7 70 0 36 10 205 0 38 7 70 0 40 10 205 0 42 7 70 0 43 5 209 0 44 10 205 0 45 10 205 0 47 7 70 0 48 5 213 0 51 7 70 0 52 7 70 0 56 7 70 0 57 7 70 0 59 7 70 0 61 10 205 0 62 7 70 0 65 10 205 0 67 10 141 0 70 10 205 0 73 7 70 0 74 7 70 0 77 10 205 0 82 10 205 0 83 10 205 0 86 1 99 0 87 7 70 0 88 7 70 0 89 7 70 0 91 7 70 0 92 7 70 0 93 7 70 0 94 7 70 0 96 7 70 0 97 10 205 0 99 10 205 0 100 7 70 0 103 10 205 0 104 10 205 0 109 10 205 0 110 7 70 0 111 7 70 0 112 7 70 0 114 7 70 0 117 10 205 0 119 7 70 0 122 10 205 0 123 7 70 0 126 7 70 0 127 7 70 0 129 7 70 0 130 7 70 0 131 7 70 0 136 7 70 0 138 10 193 1 22 10 193 1 23 10 193 1 24 10 205 1 25 7 70 1 123] 
#[0 12 177 0 139] 
#[0 12 181 0 77] 
#[1 7 74 0 3 7 74 0 24 6 209 0 26 3 173 0 27 6 213 0 28 6 217 0 32 7 74 0 40 6 221 0 52 7 74 0 88 6 225 0 89 6 229 0 91 7 74 0 92 7 74 0 93 7 74 0 94 7 74 0 112 3 193 0 114 3 197 0 117 3 201 0 122 6 233 0 129 5 157 0 138 6 245 0 170 6 245 0 176 6 245 0 235 6 245 0 236 6 253 0 237 6 245 0 238 6 245 0 239 6 245 0 251 6 245 0 252 6 245 0 253 6 245 0 254 6 245 0 255 6 245 1 0 6 245 1 2 6 245 1 3 6 245 1 4 6 245 1 6 7 49 1 7 6 245 1 8 7 57 1 29 6 245 1 37 7 65 1 38 6 245 1 40 7 73 1 41 6 245 1 44 3 225 1 45 6 245 1 46 3 233 1 47 6 245 1 49 6 245 1 50 6 245 1 52 3 245 1 53 6 245 1 54 3 253 1 55 6 245 1 57 6 245 1 58 6 245 1 60 7 113 1 61 6 245 1 66 4 13 1 67] 
#[1 7 78 0 3 7 78 0 24 6 209 0 26 3 173 0 27 6 213 0 28 6 217 0 32 7 78 0 40 6 221 0 52 7 78 0 88 6 225 0 89 6 229 0 91 7 78 0 92 7 78 0 93 7 78 0 94 7 78 0 112 3 193 0 114 3 197 0 117 3 201 0 122 6 233 0 129 5 157 0 138 6 245 0 170 6 245 0 176 6 245 0 235 6 245 0 236 6 253 0 237 6 245 0 238 6 245 0 239 6 245 0 251 6 245 0 252 6 245 0 253 6 245 0 254 6 245 0 255 6 245 1 0 6 245 1 2 6 245 1 3 6 245 1 4 6 245 1 6 7 49 1 7 6 245 1 8 7 57 1 29 6 245 1 37 7 65 1 38 6 245 1 40 7 73 1 41 6 245 1 44 3 225 1 45 6 245 1 46 3 233 1 47 6 245 1 49 6 245 1 50 6 245 1 52 3 245 1 53 6 245 1 54 3 253 1 55 6 245 1 57 6 245 1 58 6 245 1 60 7 113 1 61 6 245 1 66 4 13 1 67] 
#[0 12 185 0 136] 
#[0 12 189 0 136] 
#[1 8 17 0 9 3 34 0 136 12 193 1 5] 
#[1 6 26 0 3 6 26 0 17 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 38 6 26 0 40 6 26 0 42 6 26 0 44 6 26 0 45 6 26 0 47 6 26 0 51 6 26 0 52 6 26 0 62 6 26 0 65 6 26 0 67 6 26 0 70 6 26 0 73 6 26 0 82 6 26 0 83 6 26 0 86 6 26 0 87 6 26 0 88 6 26 0 89 6 26 0 91 6 26 0 92 6 26 0 93 6 26 0 94 6 26 0 99 6 26 0 100 6 26 0 103 6 26 0 104 6 26 0 109 6 26 0 110 6 26 0 112 6 26 0 114 6 26 0 117 6 26 0 119 6 26 0 122 6 26 0 123 6 26 0 129 6 26 0 138 12 197 1 21] 
#[0 7 82 0 136] 
#[1 6 26 0 3 6 26 0 17 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 38 6 26 0 40 6 26 0 42 6 26 0 44 6 26 0 45 6 26 0 47 6 26 0 51 6 26 0 52 6 26 0 62 6 26 0 65 6 26 0 67 6 26 0 70 6 26 0 73 6 26 0 82 6 26 0 83 6 26 0 86 6 26 0 87 6 26 0 88 6 26 0 89 6 26 0 91 6 26 0 92 6 26 0 93 6 26 0 94 6 26 0 99 6 26 0 100 6 26 0 103 6 26 0 104 6 26 0 109 6 26 0 110 6 26 0 112 6 26 0 114 6 26 0 117 6 26 0 119 6 26 0 122 6 26 0 123 6 26 0 129 6 26 0 138 12 201 1 21] 
#[0 12 205 0 136] 
#[0 12 209 0 136] 
#[0 12 213 0 130] 
#[1 7 86 0 30 7 86 0 33 7 86 0 57 7 86 0 59 7 86 0 74 7 86 0 96 7 86 0 97 7 86 0 111 7 86 0 126 7 86 0 127 7 86 0 136 12 217 1 9] 
#[0 12 221 0 136] 
#[1 3 65 0 2 7 90 0 3 3 73 0 4 7 90 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 7 94 0 3 0 5] 
#[1 3 21 0 138 12 225 0 233] 
#[1 2 206 0 40 2 206 0 88 2 206 0 92 2 206 0 93 2 206 0 94 2 206 0 112 12 229 0 225] 
#[0 7 98 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 153 0 139 12 233 0 189] 
#[1 12 237 0 40 8 245 0 88 8 249 0 92 8 253 0 93 9 1 0 94 9 5 0 112 9 13 0 226 9 13 0 227 9 13 0 228 9 13 0 229 9 13 0 230] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 12 241 0 130 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 12 245 0 26 12 249 0 40 3 177 0 52 3 185 0 89 6 229 0 91 12 253 0 250 12 253 0 251 12 253 0 252 12 253 0 255 12 253 1 0 12 253 1 2 12 253 1 3 12 253 1 4 12 253 1 6 7 49 1 7 12 253 1 8 12 253 1 44 3 225 1 45 12 253 1 46 3 233 1 47 12 253 1 49 12 253 1 50 12 253 1 52 3 245 1 53 12 253 1 54 3 253 1 55 12 253 1 57 12 253 1 58 12 253 1 60 7 113 1 61] 
#[0 13 9 0 138] 
#[0 7 102 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 13 13 0 31 6 30 0 136 13 13 0 223] 
#[1 7 106 0 3 10 205 0 17 7 106 0 21 10 205 0 22 7 106 0 23 7 106 0 24 10 205 0 25 7 106 0 26 7 106 0 27 7 106 0 28 10 205 0 31 7 106 0 32 10 113 0 33 10 205 0 38 7 106 0 40 10 205 0 42 7 106 0 44 10 205 0 45 10 205 0 47 7 106 0 48 7 106 0 51 7 106 0 52 7 106 0 56 7 106 0 61 10 205 0 62 7 106 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 7 106 0 88 7 106 0 89 7 106 0 91 7 106 0 92 7 106 0 93 7 106 0 94 10 205 0 99 10 205 0 100 7 106 0 103 10 205 0 104 10 205 0 109 10 205 0 110 7 106 0 112 7 106 0 114 7 106 0 117 10 205 0 119 7 106 0 122 10 205 0 123 7 106 0 129 7 106 0 138 12 137 1 23 10 205 1 25] 
#[0 7 110 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 99 0 100 0 103 0 104 0 109 0 110 0 112 0 114 0 117 0 119 0 122 0 123 0 129 0 138] 
#[0 7 114 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[0 13 17 0 136] 
#[0 7 118 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 7 122 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 7 126 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 7 130 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 123] 
#[0 7 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 123] 
#[1 7 138 0 39 7 138 0 40 7 138 0 49 7 138 0 78 4 29 0 136] 
#[1 3 65 0 2 7 142 0 3 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 7 142 0 130 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 7 142 0 136 3 73 1 116] 
#[0 7 146 0 3 0 5] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 13 21 0 203 13 25 0 204 13 29 0 205 13 33 0 206 1 117 0 209 13 37 0 210 13 37 1 106 1 141 1 111 1 145 1 122] 
#[1 6 26 0 3 6 26 0 17 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 38 6 26 0 40 6 26 0 42 6 26 0 44 6 26 0 45 6 26 0 47 6 26 0 51 6 26 0 52 6 26 0 62 6 26 0 65 6 26 0 67 6 26 0 70 6 26 0 73 6 26 0 82 6 26 0 83 6 26 0 86 6 26 0 87 6 26 0 88 6 26 0 89 6 26 0 91 6 26 0 92 6 26 0 93 6 26 0 94 6 26 0 99 6 26 0 100 6 26 0 103 6 26 0 104 6 26 0 109 6 26 0 110 6 26 0 112 6 26 0 114 6 26 0 117 6 26 0 119 6 26 0 122 6 26 0 123 6 26 0 129 6 26 0 138 13 41 1 21] 
#[1 6 26 0 3 6 26 0 17 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 38 6 26 0 40 6 26 0 42 6 26 0 44 6 26 0 45 6 26 0 47 6 26 0 51 6 26 0 52 6 26 0 62 6 26 0 65 6 26 0 67 6 26 0 70 6 26 0 73 6 26 0 82 6 26 0 83 6 26 0 86 6 26 0 87 6 26 0 88 6 26 0 89 6 26 0 91 6 26 0 92 6 26 0 93 6 26 0 94 6 26 0 99 6 26 0 100 6 26 0 103 6 26 0 104 6 26 0 109 6 26 0 110 6 26 0 112 6 26 0 114 6 26 0 117 6 26 0 119 6 26 0 122 6 26 0 123 6 26 0 129 6 26 0 138 13 45 1 21] 
#[0 13 49 0 136] 
#[1 7 150 0 3 10 205 0 17 7 150 0 21 10 205 0 22 7 150 0 23 7 150 0 24 10 205 0 25 7 150 0 26 7 150 0 27 7 150 0 28 10 205 0 31 7 150 0 32 10 113 0 33 10 205 0 38 7 150 0 40 10 205 0 42 7 150 0 44 10 205 0 45 10 205 0 47 7 150 0 51 7 150 0 52 10 205 0 62 7 150 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 7 150 0 88 7 150 0 89 7 150 0 91 7 150 0 92 7 150 0 93 7 150 0 94 10 205 0 99 10 205 0 100 7 150 0 103 10 205 0 104 10 205 0 109 10 205 0 110 7 150 0 112 7 150 0 114 7 150 0 117 10 205 0 119 7 150 0 122 10 205 0 123 7 150 0 129 7 150 0 138 12 137 1 23 10 205 1 25] 
#[1 7 154 0 3 10 205 0 17 7 154 0 21 10 205 0 22 7 154 0 23 7 154 0 24 10 205 0 25 7 154 0 26 7 154 0 27 7 154 0 28 10 205 0 31 7 154 0 32 10 113 0 33 10 205 0 38 7 154 0 40 10 205 0 42 7 154 0 44 10 205 0 45 10 205 0 47 7 154 0 51 7 154 0 52 10 205 0 62 7 154 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 7 154 0 88 7 154 0 89 7 154 0 91 7 154 0 92 7 154 0 93 7 154 0 94 10 205 0 99 10 205 0 100 7 154 0 103 10 205 0 104 10 205 0 109 10 205 0 110 7 154 0 112 7 154 0 114 7 154 0 117 10 205 0 119 7 154 0 122 10 205 0 123 7 154 0 129 7 154 0 138 12 137 1 23 10 205 1 25] 
#[0 7 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 7 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 7 166 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 13 53 0 30 13 57 0 33 13 61 0 57 13 65 0 59 13 69 0 74 13 73 0 96 13 77 0 97 13 81 0 111 13 85 0 126 13 89 0 127 13 93 0 136 13 97 1 11 13 101 1 12 13 105 1 13 13 109 1 14 13 113 1 15 13 117 1 16 13 121 1 18] 
#[0 7 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 9 169 0 2 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 31 4 126 0 32 4 126 0 40 4 126 0 52 4 126 0 87 4 126 0 88 4 126 0 89 4 126 0 91 4 126 0 92 4 126 0 93 4 126 0 94 4 126 0 112 4 126 0 114 4 126 0 117 4 126 0 122 4 126 0 129 4 126 0 136 4 126 0 138 13 125 0 231] 
#[1 13 129 0 40 8 245 0 88 8 249 0 92 8 253 0 93 9 1 0 94 9 5 0 112 9 13 0 226 9 13 0 227 9 13 0 228 9 13 0 229 9 13 0 230] 
#[1 7 174 0 3 7 174 0 5 3 45 0 6 2 81 0 11 3 49 0 187] 
#[0 7 178 0 31 0 87 0 136] 
#[0 7 182 0 26 0 40 0 52 0 89 0 91] 
#[1 3 177 0 52 9 41 0 79 3 185 0 89 6 229 0 91 9 45 1 7 9 49 1 45 9 53 1 47 9 57 1 53 9 61 1 55] 
#[0 7 186 0 31 0 87 0 136] 
#[0 7 190 0 26 0 40 0 52 0 89 0 91] 
#[0 7 194 0 26 0 40 0 52 0 89 0 91] 
#[0 7 198 0 26 0 40 0 52 0 89 0 91] 
#[0 7 202 0 5 0 136] 
#[0 13 133 0 136] 
#[0 7 206 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 194 0 3 1 194 0 40 13 137 0 136 13 141 1 85] 
#[0 7 210 0 3 0 40 0 136] 
#[1 13 145 0 5 13 149 0 9] 
#[0 7 214 0 5 0 9] 
#[1 3 65 0 2 3 73 0 4 7 218 0 5 3 69 0 6 3 73 0 8 7 218 0 9 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 3 73 0 35 3 73 0 58 3 73 0 64 3 73 0 71 3 73 0 80 3 73 0 107 3 73 0 108 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 7 222 0 3 10 205 0 17 7 222 0 21 10 205 0 22 7 222 0 23 7 222 0 24 10 205 0 25 7 222 0 26 7 222 0 27 7 222 0 28 10 205 0 31 7 222 0 32 10 113 0 33 10 205 0 38 7 222 0 40 10 205 0 42 7 222 0 44 10 205 0 45 10 205 0 47 7 222 0 51 7 222 0 52 10 205 0 62 7 222 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 7 222 0 88 7 222 0 89 7 222 0 91 7 222 0 92 7 222 0 93 7 222 0 94 10 205 0 99 10 205 0 100 7 222 0 103 10 205 0 104 10 205 0 109 10 205 0 110 7 222 0 112 7 222 0 114 7 222 0 117 10 205 0 119 7 222 0 122 10 205 0 123 7 222 0 129 7 222 0 138 12 137 1 23 10 205 1 25] 
#[1 7 226 0 3 10 205 0 17 7 226 0 21 10 205 0 22 7 226 0 23 7 226 0 24 10 205 0 25 7 226 0 26 7 226 0 27 7 226 0 28 10 205 0 31 7 226 0 32 10 113 0 33 10 205 0 38 7 226 0 40 10 205 0 42 7 226 0 44 10 205 0 45 10 205 0 47 7 226 0 51 7 226 0 52 10 205 0 62 7 226 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 7 226 0 88 7 226 0 89 7 226 0 91 7 226 0 92 7 226 0 93 7 226 0 94 10 205 0 99 10 205 0 100 7 226 0 103 10 205 0 104 10 205 0 109 10 205 0 110 7 226 0 112 7 226 0 114 7 226 0 117 10 205 0 119 7 226 0 122 10 205 0 123 7 226 0 129 7 226 0 138 12 137 1 23 10 205 1 25] 
#[1 6 26 0 3 6 26 0 17 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 38 6 26 0 40 6 26 0 42 6 26 0 44 6 26 0 45 6 26 0 47 6 26 0 51 6 26 0 52 6 26 0 62 6 26 0 65 6 26 0 67 6 26 0 70 6 26 0 73 6 26 0 82 6 26 0 83 6 26 0 86 6 26 0 87 6 26 0 88 6 26 0 89 6 26 0 91 6 26 0 92 6 26 0 93 6 26 0 94 6 26 0 99 6 26 0 100 6 26 0 103 6 26 0 104 6 26 0 109 6 26 0 110 6 26 0 112 6 26 0 114 6 26 0 117 6 26 0 119 6 26 0 122 6 26 0 123 6 26 0 129 6 26 0 138 13 153 1 21] 
#[1 1 13 0 2 1 17 0 15 7 230 0 30 7 230 0 33 7 230 0 57 7 230 0 59 7 230 0 74 1 29 0 75 7 230 0 96 7 230 0 97 7 230 0 111 7 230 0 126 7 230 0 127 0 145 0 129 1 53 0 134 1 57 0 135 7 230 0 136 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 157 0 210 13 157 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 161 0 210 13 161 1 106 1 141 1 111 1 145 1 122] 
#[1 13 165 0 138 13 169 1 17] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 173 0 210 13 173 1 106 1 141 1 111 1 145 1 122] 
#[0 7 234 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 13 177 1 102 13 177 1 103 13 177 1 104 13 177 1 105 13 177 1 106 1 1 1 111 13 177 1 112 1 9 1 122] 
#[0 13 181 0 33] 
#[0 13 185 0 138] 
#[1 0 81 0 2 0 85 0 15 0 109 0 60 0 113 0 68 0 117 0 69 0 121 0 75 0 145 0 129 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 13 189 1 102 13 189 1 103 13 189 1 104 13 189 1 105 13 189 1 106 1 1 1 111 13 189 1 112 1 9 1 122] 
#[0 13 193 0 33] 
#[1 7 238 0 3 7 238 0 24 7 238 0 26 7 238 0 27 7 238 0 28 13 197 0 30 7 238 0 32 7 238 0 40 7 238 0 52 7 238 0 88 7 238 0 89 7 238 0 91 7 238 0 92 7 238 0 93 7 238 0 94 7 238 0 112 7 238 0 114 7 238 0 117 7 238 0 122 7 238 0 129 7 238 0 138 13 201 1 19] 
#[0 7 242 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 7 246 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 7 250 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 7 254 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 2 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 6 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 10 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 1 250 0 26 1 250 0 27 1 250 0 28 8 14 0 31 1 250 0 32 1 250 0 40 1 250 0 52 8 14 0 87 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 8 14 0 136 1 250 0 138 13 205 0 224 5 21 0 234] 
#[0 8 18 0 31 0 87 0 136] 
#[0 8 22 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 13 0 2 2 162 0 3 1 17 0 15 2 162 0 40 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 13 209 0 204 13 29 0 205 13 33 0 206 1 117 0 209 13 37 0 210 13 37 1 106 1 141 1 111 1 145 1 122] 
#[0 8 26 0 3 0 40] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 13 213 0 206 1 117 0 209 13 37 0 210 13 37 1 106 1 141 1 111 1 145 1 122] 
#[0 13 217 0 2] 
#[1 8 30 0 3 10 205 0 17 8 30 0 21 10 205 0 22 8 30 0 23 8 30 0 24 10 205 0 25 8 30 0 26 8 30 0 27 8 30 0 28 10 205 0 31 8 30 0 32 10 113 0 33 10 205 0 38 8 30 0 40 10 205 0 42 8 30 0 44 10 205 0 45 10 205 0 47 8 30 0 51 8 30 0 52 10 205 0 62 8 30 0 65 10 205 0 67 10 141 0 70 10 205 0 73 10 205 0 82 10 205 0 83 10 205 0 86 10 205 0 87 8 30 0 88 8 30 0 89 8 30 0 91 8 30 0 92 8 30 0 93 8 30 0 94 10 205 0 99 10 205 0 100 8 30 0 103 10 205 0 104 10 205 0 109 10 205 0 110 8 30 0 112 8 30 0 114 8 30 0 117 10 205 0 119 8 30 0 122 10 205 0 123 8 30 0 129 8 30 0 138 12 137 1 23 10 205 1 25] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 8 34 0 30 8 34 0 33 3 73 0 35 8 34 0 57 3 73 0 58 8 34 0 59 3 73 0 64 3 73 0 71 8 34 0 74 3 73 0 80 8 34 0 96 8 34 0 97 3 73 0 107 3 73 0 108 8 34 0 111 8 34 0 126 8 34 0 127 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 8 34 0 136 3 73 1 116] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 8 38 0 30 8 38 0 33 3 73 0 35 8 38 0 57 3 73 0 58 8 38 0 59 3 73 0 64 3 73 0 71 8 38 0 74 3 73 0 80 8 38 0 96 8 38 0 97 3 73 0 107 3 73 0 108 8 38 0 111 8 38 0 126 8 38 0 127 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 8 38 0 136 3 73 1 116] 
#[0 8 42 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 13 221 0 5 8 46 0 30 8 46 0 33 8 46 0 57 8 46 0 59 8 46 0 74 8 46 0 96 8 46 0 97 8 46 0 111 8 46 0 126 8 46 0 127 8 46 0 136] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 8 50 0 30 8 50 0 33 3 73 0 35 8 50 0 57 3 73 0 58 8 50 0 59 3 73 0 64 3 73 0 71 8 50 0 74 3 73 0 80 8 50 0 96 8 50 0 97 3 73 0 107 3 73 0 108 8 50 0 111 8 50 0 126 8 50 0 127 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 8 50 0 136 3 73 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 8 54 0 30 8 54 0 33 2 201 0 35 8 54 0 57 2 201 0 58 8 54 0 59 2 201 0 64 2 201 0 71 8 54 0 74 2 201 0 80 8 54 0 96 8 54 0 97 2 201 0 107 2 201 0 108 8 54 0 111 8 54 0 126 8 54 0 127 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 8 54 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 225 0 210 13 225 1 106 1 141 1 111 1 145 1 122] 
#[0 8 58 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 18 2 201 0 20 8 62 0 30 8 62 0 33 2 201 0 35 8 62 0 57 2 201 0 58 8 62 0 59 2 201 0 64 2 201 0 71 8 62 0 74 2 201 0 80 8 62 0 96 8 62 0 97 2 201 0 107 2 201 0 108 8 62 0 111 8 62 0 126 8 62 0 127 2 201 0 128 2 173 0 129 2 201 0 131 2 201 0 132 2 201 0 134 2 201 0 135 8 62 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 1 13 0 2 1 17 0 15 1 29 0 75 0 145 0 129 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 229 0 210 13 229 1 106 1 141 1 111 1 145 1 122] 
#[0 13 233 0 136] 
#[0 8 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 206 0 40 2 206 0 88 2 206 0 92 2 206 0 93 2 206 0 94 2 206 0 112 13 237 0 225] 
#[0 8 70 0 3 0 40 0 136] 
#[0 8 74 0 5 0 9] 
#[1 1 250 0 3 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 32 1 250 0 52 1 250 0 88 1 250 0 89 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 112 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 129 1 250 0 138 13 241 0 200 5 17 0 224 5 21 0 234] 
#[0 13 245 0 138] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 8 78 0 30 8 78 0 33 3 73 0 35 8 78 0 57 3 73 0 58 8 78 0 59 3 73 0 64 3 73 0 71 8 78 0 74 3 73 0 80 8 78 0 96 8 78 0 97 3 73 0 107 3 73 0 108 8 78 0 111 8 78 0 126 8 78 0 127 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 8 78 0 136 3 73 1 116] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 18 3 73 0 20 8 82 0 30 8 82 0 33 3 73 0 35 8 82 0 57 3 73 0 58 8 82 0 59 3 73 0 64 3 73 0 71 8 82 0 74 3 73 0 80 8 82 0 96 8 82 0 97 3 73 0 107 3 73 0 108 8 82 0 111 8 82 0 126 8 82 0 127 3 73 0 128 3 73 0 131 3 73 0 132 3 73 0 134 3 73 0 135 8 82 0 136 3 73 1 116] 
#[0 8 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 13 249 0 40 8 245 0 88 8 249 0 92 8 253 0 93 9 1 0 94 9 5 0 112 9 13 0 226 9 13 0 227 9 13 0 228 9 13 0 229 9 13 0 230] 
#[0 13 253 0 3] 
#[0 8 90 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 94 0 31 0 87 0 136] 
#[0 8 98 0 3 0 40 0 136]
	).
]

{ #category : #private }
DelphiParser >> actionsForCurrentToken [
	| actions action ids newToken |
	actions := OrderedCollection new: 1.
	ids := currentToken ids.
	ids
		do: [ :id | 
			self addActionsFor: id to: actions.
			(id = scanner atId or: [ currentToken value sameAs: 'on' ])
				ifTrue: [ self
						addActionsFor: scanner identifierId to: actions;
						addActionsFor: scanner constantIdentifierId to: actions ].
			actions notEmpty
				ifTrue: [ ^ actions ].
			id = scanner gtEqId
				ifTrue: [ self addActionsFor: scanner gtId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := scanner tokenClass
								value: '/='
								start: currentToken startPosition
								ids: (Array with: scanner gtId).
							self position: currentToken startPosition + 1.
							^ actions ] ] ].
	((ids includes: scanner identifierId)
		and: [ (ids includes: scanner constantIdentifierId) not ])
		ifTrue: [ action := self actionFor: scanner constantIdentifierId.
			(action bitAnd: self actionMask) ~= self errorAction
				ifTrue: [ actions add: action.
					^ actions ] ].
	(ids includes: scanner upArrowId)
		ifTrue: [ newToken := scanner scanControlCharacter.
			newToken notNil
				ifTrue: [ currentToken := newToken.
					currentState scannerState: scanner currentState.
					self addActionsFor: scanner controlCharacterId to: actions.
					actions notEmpty
						ifTrue: [ ^ actions ] ] ].
	action := self actionFor: scanner semicolonId.
	((action bitAnd: self actionMask) ~= self errorAction
		and: [ states size = 1 ])
		ifTrue: [ lastInsertPosition = currentToken startPosition
				ifTrue: [ ^ actions ].	"Don't get into a loop inserting ;'s"
			lastInsertPosition := currentToken startPosition.
			self position: currentToken startPosition - 1.
			currentToken := scanner tokenClass
				value: ';'
				start: nil
				ids: (Array with: scanner semicolonId).
			self addActionsFor: scanner semicolonId to: actions.
			actions notEmpty
				ifTrue: [ ^ actions ] ].
	^ actions
]

{ #category : #private }
DelphiParser >> addActionsFor: anInteger to: anOrderedCollection [
	| action |
	action := self actionForState: self currentState and: anInteger.
	action = self errorAction
		ifTrue:
			[ action := self actionFor: anInteger.
			(action bitAnd: self actionMask) = self errorAction
				ifFalse: [ ^ anOrderedCollection add: action ].
			(anInteger = scanner numberId
				and:
					[ currentToken value notEmpty
						and: [ '+-' includes: currentToken value first ] ])
				ifTrue:
					[ currentToken := scanner tokenClass
						value: (currentToken value copyFrom: 1 to: 1)
						start: currentToken startPosition
						ids:
							(Array
								with:
									(currentToken value first = $-
										ifTrue: [ scanner minusId ]
										ifFalse: [ scanner plusId ])).
					self position: currentToken stopPosition.
					^ self
						addActionsFor:
							(currentToken value first = $-
								ifTrue: [ scanner minusId ]
								ifFalse: [ scanner plusId ])
						to: anOrderedCollection ].
			^ self ].
	(action bitAnd: self actionMask) = 2r11
		ifTrue:
			[ self
				ambiguousTransitionsAt: (action bitShift: -2)
				into: anOrderedCollection ]
		ifFalse: [ anOrderedCollection add: action ]
]

{ #category : #private }
DelphiParser >> parse [
	| node expressionVisitor result |
	expressionVisitor := DelphiBinaryExpressionVisitor new.	"Hack to handle the incorrect parsing of a * b + c as a * (b + c)"
	result := super parse.
	^ parseAll
		ifTrue:
			[ result
				collect:
					[ :each | 
					node := expressionVisitor accept: each.
					(node isKindOf: SmaCCParseNode)
						ifTrue:
							[ node
								attributeNamed: #ifDefs put: scanner ifDefs;
								attributeNamed: #opts put: scanner optComments ].
					node ] ]
		ifFalse:
			[ node := expressionVisitor accept: result.
			(node isKindOf: SmaCCParseNode)
				ifTrue:
					[ node
						attributeNamed: #ifDefs put: scanner ifDefs;
						attributeNamed: #opts put: scanner optComments ].
			node ]
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForAnonymousFunctionType1: nodes [
	| result |
	result := DelphiAnonymousFunctionTypeNode new.
	result functionToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result right: ((nodes at: 2) at: 4).
	result colon: (nodes at: 3).
	result type: (nodes at: 4).
	result ofToken: ((nodes at: 5) at: 1).
	result objectToken: ((nodes at: 5) at: 2).
	result addToken: (nodes at: 6) to: result semicolons.
	result addNodes: (nodes at: 7) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForAnonymousProcedureType1: nodes [
	| result |
	result := DelphiAnonymousProcedureTypeNode new.
	result procedureToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result right: ((nodes at: 2) at: 4).
	result ofToken: ((nodes at: 3) at: 1).
	result objectToken: ((nodes at: 3) at: 2).
	result addToken: (nodes at: 4) to: result semicolons.
	result addNodes: (nodes at: 5) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForArgument1: nodes [
	| result |
	result := DelphiArgumentNode new.
	result typeToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result colon: (nodes at: 3).
	result type: (nodes at: 4).
	result equal: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForArgument2: nodes [
	| result |
	result := DelphiArgumentNode new.
	result typeToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForArgumentList1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForArrayType1: nodes [
	| result |
	result := DelphiArrayTypeNode new.
	result packedToken: (nodes at: 1).
	result arrayToken: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result indexes.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: ((nodes at: 3) at: 4).
	result ofToken: (nodes at: 4).
	result type: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForArrayType2: nodes [
	| result |
	result := DelphiArrayTypeNode new.
	result packedToken: (nodes at: 1).
	result arrayToken: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result indexes.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: ((nodes at: 3) at: 4).
	result ofToken: (nodes at: 4).
	result constToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForAsmBlock1: nodes [
	| result |
	result := DelphiAsmBlockNode new.
	result asmToken: (nodes at: 2).
	result endToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForBaseCaseLabel1: nodes [
	| result |
	result := DelphiCaseLabelNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForBaseCaseLabel2: nodes [
	| result |
	result := DelphiRangeCaseLabelNode new.
	result fromValue: (nodes at: 1).
	result dots: (nodes at: 2).
	result toValue: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForBeforeAsm1: nodes [
	parseAll
		ifFalse: [ scanner skipToEndToken.
			currentState scannerState: scanner currentState ].
	^ nil
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForCaseLabel2: nodes [
	| result |
	result := DelphiMultiValueCaseLabelNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result labels.
	result addTokens: ((nodes at: 1) at: 2) to: result commas.
	result addToken: (nodes at: 2) to: result commas.
	result addNode: (nodes at: 3) to: result labels.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForCaseOption1: nodes [
	| result |
	result := DelphiCaseOptionNode new.
	result label: (nodes at: 1).
	result colon: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForCaseOptionList1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForCaseStatement1: nodes [
	| result |
	result := Array new: 8.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	result at: 6 put: ((nodes at: 5) at: 1).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 5) at: 3) to: (result at: 5).
	result at: 8 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassFunctionDefinition1: nodes [
	| result |
	result := DelphiClassFunctionDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassFunctionDefinition2: nodes [
	| result |
	result := DelphiClassFunctionDefinitionNode new.
	result header: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassHelperType1: nodes [
	| result |
	result := DelphiClassHelperTypeNode new.
	result classToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result classAttributes.
	result helperToken: (nodes at: 3).
	result forToken: (nodes at: 4).
	result _class: (nodes at: 5).
	result left: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result right: ((nodes at: 6) at: 4).
	result implicitClassSection: (nodes at: 7).
	result addNodes: (nodes at: 8) to: result sections.
	result endToken: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassHelperType2: nodes [
	| result |
	result := DelphiClassHelperTypeNode new.
	result classToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result classAttributes.
	result helperToken: (nodes at: 3).
	result forToken: (nodes at: 4).
	result _class: (nodes at: 5).
	result left: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result right: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassOperatorDefinition1: nodes [
	| result |
	result := DelphiClassOperatorDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassOperatorDefinition2: nodes [
	| result |
	result := DelphiClassOperatorDefinitionNode new.
	result header: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassProcedureDefinition1: nodes [
	| result |
	result := DelphiClassProcedureDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassProcedureDefinition2: nodes [
	| result |
	result := DelphiClassProcedureDefinitionNode new.
	result header: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForClassPropertyHeader1: nodes [
	| result |
	result := DelphiClassPropertyHeaderNode new.
	result classToken: (nodes at: 1).
	result propertyToken: ((nodes at: 2) at: 1).
	result name: ((nodes at: 2) at: 2).
	result arrayAccessors: ((nodes at: 2) at: 3).
	result colon: ((nodes at: 2) at: 4).
	result type: ((nodes at: 2) at: 5).
	result addNodes: ((nodes at: 2) at: 6) to: result indexes.
	result addNodes: ((nodes at: 2) at: 7) to: result readers.
	result addNodes: ((nodes at: 2) at: 8) to: result writers.
	result addNodes: ((nodes at: 2) at: 9) to: result defaults.
	result addNodes: ((nodes at: 2) at: 10) to: result storeds.
	result addNodes: ((nodes at: 2) at: 11) to: result implementses.
	result addNodes: ((nodes at: 2) at: 12) to: result dispids.
	result semicolon: ((nodes at: 2) at: 13).
	result modifier: ((nodes at: 2) at: 14).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantArray1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantArray2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantExpression10: nodes [
	| result |
	result := DelphiRecordExpressionNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result fields.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	result addToken: (nodes at: 3) to: result semicolons.
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantExpression11: nodes [
	| result |
	result := DelphiConstantArrayExpressionNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result equalTokens.
	result addNodes: ((nodes at: 2) at: 3) to: result values.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantRecordField1: nodes [
	| result |
	result := DelphiConstantRecordFieldNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantValue1: nodes [
	| result |
	result := DelphiConstantDefinitionNode new.
	result name: (nodes at: 1).
	result colon: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result equalToken: (nodes at: 3).
	result expression: (nodes at: 4).
	result modifier: (nodes at: 5).
	result deprecatedToken: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantValueList1: nodes [
	| result |
	result := DelphiConstantListNode new.
	result constToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result definitions.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstantValues1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstructorDefinition1: nodes [
	| result |
	result := DelphiConstructorDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForConstructorDefinition2: nodes [
	| result |
	result := DelphiConstructorDefinitionNode new.
	result header: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForDefinedType2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForDefinedTypeList1: nodes [
	| result |
	result := DelphiDefinedTypeListNode new.
	result typeToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result definitions.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForDestructorDefinition1: nodes [
	| result |
	result := DelphiDestructorDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForDestructorDefinition2: nodes [
	| result |
	result := DelphiDestructorDefinitionNode new.
	result header: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForElseCase1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForElseCase2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForEnumName1: nodes [
	| result |
	result := DelphiEnumNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForEnumName2: nodes [
	| result |
	result := DelphiEnumNameNode new.
	result name: (nodes at: 1).
	result equal: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForEnumType1: nodes [
	| result |
	result := DelphiEnumTypeNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExcept2: nodes [
	| result |
	result := DelphiExceptNode new.
	result exceptToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result exceptionCases.
	result else: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExcept3: nodes [
	| result |
	result := DelphiExceptNode new.
	result exceptToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	result else: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExportsDefinition1: nodes [
	| result |
	result := DelphiExportsDefinitionNode new.
	result exportsToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression10: nodes [
	| result |
	result := DelphiLiteralExpressionNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression11: nodes [
	| result |
	result := DelphiBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression12: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression13: nodes [
	| result |
	result := DelphiAssignmentExpressionNode new.
	result lhs: (nodes at: 1).
	result assignment: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression14: nodes [
	| result |
	result := DelphiArrayExpressionNode new.
	result expression: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result indexes.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression15: nodes [
	| result |
	result := DelphiAddressExpressionNode new.
	result atToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression16: nodes [
	| result |
	result := DelphiNotExpressionNode new.
	result notToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression17: nodes [
	| result |
	result := DelphiMinusExpressionNode new.
	result minus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression18: nodes [
	| result |
	result := DelphiPlusExpressionNode new.
	result plus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression20: nodes [
	| result |
	result := DelphiPointerExpressionNode new.
	result expression: (nodes at: 1).
	result upArrow: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression4: nodes [
	| result |
	result := DelphiPropertyExpressionNode new.
	result expression: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression5: nodes [
	| result |
	result := DelphiMethodCallExpressionNode new.
	result receiver: (nodes at: 1).
	result left: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression6: nodes [
	| result |
	result := DelphiMethodCallExpressionNode new.
	result receiver: (nodes at: 1).
	result left: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalClassFunctionHeader1: nodes [
	| result |
	result := DelphiClassFunctionHeaderNode new.
	result classToken: (nodes at: 1).
	result functionToken: ((nodes at: 2) at: 1).
	result qualifiedName: ((nodes at: 2) at: 2).
	result left: ((nodes at: 2) at: 3).
	result addNodes: ((nodes at: 2) at: 4) to: result arguments.
	result addTokens: ((nodes at: 2) at: 5) to: result semicolons.
	result right: ((nodes at: 2) at: 6).
	result colon: ((nodes at: 2) at: 7).
	result type: ((nodes at: 2) at: 8).
	result addNodes: ((nodes at: 2) at: 9) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalClassProcedureHeader1: nodes [
	| result |
	result := DelphiClassProcedureHeaderNode new.
	result classToken: (nodes at: 1).
	result procedureToken: ((nodes at: 2) at: 1).
	result qualifiedName: ((nodes at: 2) at: 2).
	result left: ((nodes at: 2) at: 3).
	result addNodes: ((nodes at: 2) at: 4) to: result arguments.
	result addTokens: ((nodes at: 2) at: 5) to: result semicolons.
	result right: ((nodes at: 2) at: 6).
	result addNodes: ((nodes at: 2) at: 7) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalConstructorHeader1: nodes [
	| result |
	result := nodes at: 1.
	result addNode: (nodes at: 2) to: result modifiers.
	result addNodes: (nodes at: 3) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalFunctionHeader1: nodes [
	| result |
	result := DelphiFunctionHeaderNode new.
	result functionToken: ((nodes at: 1) at: 1).
	result qualifiedName: ((nodes at: 1) at: 2).
	result left: ((nodes at: 1) at: 3).
	result addNodes: ((nodes at: 1) at: 4) to: result arguments.
	result addTokens: ((nodes at: 1) at: 5) to: result semicolons.
	result right: ((nodes at: 1) at: 6).
	result colon: ((nodes at: 1) at: 7).
	result type: ((nodes at: 1) at: 8).
	result addNodes: ((nodes at: 1) at: 9) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalFunctionHeaderVars1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 9).
	self addAll: (nodes at: 3) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier1: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier4: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result library: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier5: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result library: (nodes at: 2).
	result nameToken: (nodes at: 3).
	result methodName: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier6: nodes [
	| result |
	result := DelphiMethodModifierNode new.
	result modifier: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalProcedureHeader1: nodes [
	| result |
	result := DelphiProcedureHeaderNode new.
	result procedureToken: ((nodes at: 1) at: 1).
	result qualifiedName: ((nodes at: 1) at: 2).
	result left: ((nodes at: 1) at: 3).
	result addNodes: ((nodes at: 1) at: 4) to: result arguments.
	result addTokens: ((nodes at: 1) at: 5) to: result semicolons.
	result right: ((nodes at: 1) at: 6).
	result addNodes: ((nodes at: 1) at: 7) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalProcedureHeaderVars1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 7).
	self addAll: (nodes at: 3) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFile1: nodes [
	| result |
	result := DelphiUnitFileNode new.
	result unitToken: ((nodes at: 1) at: 1).
	result unitName: ((nodes at: 1) at: 2).
	result modifier: ((nodes at: 1) at: 3).
	result semicolon: ((nodes at: 1) at: 4).
	result interfaceSection: ((nodes at: 1) at: 5).
	result implementationSection: ((nodes at: 1) at: 6).
	result initializationSection: ((nodes at: 1) at: 7).
	result finalizationSection: ((nodes at: 1) at: 8).
	result endToken: ((nodes at: 1) at: 9).
	result period: ((nodes at: 1) at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFile2: nodes [
	| result |
	result := DelphiProgramFileNode new.
	result programToken: ((nodes at: 1) at: 1).
	result programName: ((nodes at: 1) at: 2).
	result modifier: ((nodes at: 1) at: 3).
	result addTokens: ((nodes at: 1) at: 4) to: result semicolons.
	result usesToken: ((nodes at: 1) at: 5).
	result addNodes: ((nodes at: 1) at: 6) to: result moduleNames.
	result addTokens: ((nodes at: 1) at: 7) to: result inTokens.
	result addTokens: ((nodes at: 1) at: 8) to: result filenames.
	result addTokens: ((nodes at: 1) at: 9) to: result commas.
	result main: ((nodes at: 1) at: 10).
	result period: ((nodes at: 1) at: 11).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFile3: nodes [
	| result |
	result := DelphiLibraryFileNode new.
	result libraryToken: ((nodes at: 1) at: 1).
	result libraryName: ((nodes at: 1) at: 2).
	result modifier: ((nodes at: 1) at: 3).
	result addTokens: ((nodes at: 1) at: 4) to: result semicolons.
	result usesToken: ((nodes at: 1) at: 5).
	result addNodes: ((nodes at: 1) at: 6) to: result moduleNames.
	result addTokens: ((nodes at: 1) at: 7) to: result inTokens.
	result addTokens: ((nodes at: 1) at: 8) to: result filenames.
	result addTokens: ((nodes at: 1) at: 9) to: result commas.
	result addNodes: ((nodes at: 1) at: 10) to: result exports.
	result main: ((nodes at: 1) at: 11).
	result period: ((nodes at: 1) at: 12).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFile4: nodes [
	| result |
	result := DelphiPackageFileNode new.
	result packageToken: ((nodes at: 1) at: 1).
	result packageName: ((nodes at: 1) at: 2).
	result addTokens: ((nodes at: 1) at: 3) to: result semicolons.
	result requiresToken: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result requiresNames.
	result addTokens: ((nodes at: 1) at: 6) to: result commas.
	result containsToken: ((nodes at: 1) at: 7).
	result addNodes: ((nodes at: 1) at: 8) to: result moduleNames.
	result addTokens: ((nodes at: 1) at: 9) to: result inTokens.
	result addTokens: ((nodes at: 1) at: 10) to: result filenames.
	result endToken: ((nodes at: 1) at: 11).
	result period: ((nodes at: 1) at: 12).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFileType1: nodes [
	| result |
	result := DelphiFileTypeNode new.
	result fileToken: (nodes at: 1).
	result ofToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFileType2: nodes [
	| result |
	result := DelphiFileTypeNode new.
	result fileToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFinalizationSection2: nodes [
	| result |
	result := DelphiFinalizationSectionNode new.
	result finalizationToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFinally2: nodes [
	| result |
	result := DelphiFinallyNode new.
	result finallyToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForForInStatement1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForForStatement1: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
	result at: 8 put: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFullModuleName1: nodes [
	| result |
	result := DelphiModuleNameNode new.
	result addToken: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFullModuleName2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periods.
	result addToken: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFunctionDefinition1: nodes [
	| result |
	result := DelphiFunctionDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFunctionDefinition2: nodes [
	| result |
	result := DelphiFunctionDefinitionNode new.
	result header: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForGotoStatement1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForGuid2: nodes [
	| result |
	result := DelphiGuidNode new.
	result left: (nodes at: 1).
	result string: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForIfStatement1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForImplementationCode2: nodes [
	| result |
	result := DelphiImplementationCodeNode new.
	result beginToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForImplementationSection2: nodes [
	| result |
	result := DelphiImplementationSectionNode new.
	result implementationToken: (nodes at: 1).
	result usesToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result moduleNames.
	result addTokens: ((nodes at: 2) at: 3) to: result inTokens.
	result addTokens: ((nodes at: 2) at: 4) to: result filenames.
	result addTokens: ((nodes at: 2) at: 5) to: result commas.
	result semicolon: ((nodes at: 2) at: 6).
	result addNodes: (nodes at: 3) to: result definitions.
	result code: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForImplicitClassSection1: nodes [
	| result |
	result := DelphiImplicitClassSectionNode new.
	result addNodes: (nodes at: 1) to: result components.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInheritedFunctionCall1: nodes [
	| result |
	result := DelphiInheritedFunctionCallNode new.
	result inheritedToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result right: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInheritedFunctionCall2: nodes [
	| result |
	result := DelphiInheritedFunctionCallNode new.
	result inheritedToken: (nodes at: 1).
	result name: (nodes at: 2).
	result left: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInheritedFunctionCall3: nodes [
	| result |
	result := DelphiInheritedFunctionCallNode new.
	result inheritedToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInheritedFunctionCall4: nodes [
	| result |
	result := DelphiInheritedFunctionCallNode new.
	result inheritedToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInitializationSection2: nodes [
	| result |
	result := DelphiInitializationSectionNode new.
	result initializationToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInstantiatedGenericVariableExpression1: nodes [
	| result |
	result := DelphiInstantiatedGenericVariableExpressionNode new.
	result name: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result typeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInterfaceFunctionAssignment1: nodes [
	| result |
	result := DelphiInterfaceFunctionAssignmentNode new.
	result function: (nodes at: 1).
	result qualifiedName: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result name: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInterfaceProcedureAssignment1: nodes [
	| result |
	result := DelphiInterfaceProcedureAssignmentNode new.
	result procedureToken: (nodes at: 1).
	result qualifiedName: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result name: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInterfaceSection2: nodes [
	| result |
	result := DelphiInterfaceSectionNode new.
	result interfaceToken: (nodes at: 1).
	result usesToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result moduleNames.
	result addTokens: ((nodes at: 2) at: 3) to: result inTokens.
	result addTokens: ((nodes at: 2) at: 4) to: result filenames.
	result addTokens: ((nodes at: 2) at: 5) to: result commas.
	result semicolon: ((nodes at: 2) at: 6).
	result addNodes: (nodes at: 3) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInterfaceType1: nodes [
	| result |
	result := DelphiInterfaceTypeNode new.
	result interfaceToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	result guid: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result components.
	result endToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInterfaceType2: nodes [
	| result |
	result := DelphiInterfaceTypeNode new.
	result interfaceToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForLabels1: nodes [
	| result |
	result := DelphiLabelVariableNode new.
	result labelToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForLibraryExport1: nodes [
	| result |
	result := DelphiLibraryExportNode new.
	result exportsToken: (nodes at: 1).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForLibraryFile1: nodes [
	| result |
	result := Array new: 12.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	result at: 5 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 7).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 8).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 9).
	self add: ((nodes at: 2) at: 6) to: (result at: 4).
	self addAll: (nodes at: 3) to: (result at: 10).
	result at: 11 put: (nodes at: 4).
	result at: 12 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForLibraryLine1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMainMethod1: nodes [
	| result |
	result := DelphiMainMethodDefinitionNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result definitions.
	result block: ((nodes at: 1) at: 2).
	result semicolon: ((nodes at: 1) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMemExpression1: nodes [
	| result |
	result := DelphiMemExpressionNode new.
	result mem: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result baseExpression: (nodes at: 3).
	result colon: (nodes at: 4).
	result addressExpression: (nodes at: 5).
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMetaclassType1: nodes [
	| result |
	result := DelphiMetaclassTypeNode new.
	result classToken: (nodes at: 1).
	result ofToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMethodArgument2: nodes [
	| result |
	result := DelphiFormattedMethodArgumentNode new.
	result argument: (nodes at: 1).
	result colon: (nodes at: 2).
	result formatExpression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMethodAttribute1: nodes [
	| result |
	result := DelphiMethodAttributeNode new.
	result left: (nodes at: 1).
	result expression: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMethodComponents1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMethodVariables1: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForMethodVariables2: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNamedDefinedType1: nodes [
	| result |
	result := DelphiNamedDefinedTypeNode new.
	result name: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result
		addTokens: ((nodes at: 2) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	result equalToken: (nodes at: 3).
	result type: ((nodes at: 4) at: 1).
	result modifier: ((nodes at: 4) at: 2).
	result semicolon: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNamedType4: nodes [
	| result |
	result := DelphiInstantiatedGenericTypeNode new.
	result type: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result typeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNewClassComponent1: nodes [
	| result |
	result := DelphiVariableDefinitionNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result commas.
	result colon: (nodes at: 2).
	result type: (nodes at: 3).
	result modifier: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNewClassComponent2: nodes [
	| result |
	result := DelphiClassVarsNode new.
	result classToken: (nodes at: 1).
	result varToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result variableDefinitions.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNewClassComponent5: nodes [
	| result |
	result := nodes at: 2.
	result attribute: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNewClassType1: nodes [
	| result |
	result := DelphiNewClassTypeNode new.
	result classToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result classAttributes.
	result left: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: ((nodes at: 3) at: 4).
	result implicitClassSection: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result sections.
	result endToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNewClassType2: nodes [
	| result |
	result := DelphiNewClassTypeNode new.
	result classToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result classAttributes.
	result left: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: ((nodes at: 3) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalClassOperatorHeader1: nodes [
	| result |
	result := DelphiClassOperatorHeaderNode new.
	result classToken: (nodes at: 1).
	result operatorToken: (nodes at: 2).
	result qualifiedName: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result semicolons.
	result right: ((nodes at: 4) at: 4).
	result colon: ((nodes at: 5) at: 1).
	result type: ((nodes at: 5) at: 2).
	result addToken: (nodes at: 6) to: result semicolons.
	result addNodes: (nodes at: 7) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalConstructorHeader1: nodes [
	| result |
	result := DelphiConstructorHeaderNode new.
	result constructorToken: (nodes at: 1).
	result qualifiedName: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result addTokens: ((nodes at: 3) at: 3) to: result semicolons.
	result right: ((nodes at: 3) at: 4).
	result addToken: (nodes at: 4) to: result semicolons.
	result addNodes: (nodes at: 5) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalConstructorHeader2: nodes [
	| result |
	result := DelphiConstructorHeaderNode new.
	result classToken: (nodes at: 1).
	result constructorToken: (nodes at: 2).
	result qualifiedName: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result semicolons.
	result right: ((nodes at: 4) at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
	result addNodes: (nodes at: 6) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalDestructorHeader1: nodes [
	| result |
	result := DelphiDestructorHeaderNode new.
	result destructorToken: (nodes at: 1).
	result qualifiedName: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result right: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalDestructorHeader2: nodes [
	| result |
	result := DelphiDestructorHeaderNode new.
	result classToken: (nodes at: 1).
	result destructorToken: (nodes at: 2).
	result qualifiedName: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result right: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalFunctionHeaderVars1: nodes [
	| result |
	result := Array new: 9.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 5).
	result at: 6 put: ((nodes at: 3) at: 4).
	result at: 7 put: ((nodes at: 4) at: 1).
	result at: 8 put: ((nodes at: 4) at: 2).
	self add: (nodes at: 5) to: (result at: 5).
	self addAll: (nodes at: 6) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalMethodModifier3: nodes [
	| result |
	result := DelphiMessageMethodModifierNode new.
	result modifier: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalProcedureHeaderVars1: nodes [
	| result |
	result := Array new: 7.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 5).
	result at: 6 put: ((nodes at: 3) at: 4).
	self add: (nodes at: 4) to: (result at: 5).
	self addAll: (nodes at: 5) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForOldClassType1: nodes [
	| result |
	result := DelphiOldClassTypeNode new.
	result objectToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	result implicitClassSection: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result sections.
	result endToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForOnDo1: nodes [
	| result |
	result := DelphiOnDoNode new.
	result onToken: (nodes at: 1).
	result exception: (nodes at: 2).
	result colon: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	result doToken: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result statements.
	result addTokens: ((nodes at: 5) at: 2) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForOptionalArguments1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForOptionalRaiseAt1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPackageFile1: nodes [
	| result |
	result := Array new: 12.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 6).
	self add: ((nodes at: 2) at: 4) to: (result at: 3).
	result at: 7 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 9).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 10).
	self addAll: ((nodes at: 3) at: 5) to: (result at: 6).
	self add: ((nodes at: 3) at: 6) to: (result at: 3).
	result at: 11 put: ((nodes at: 4) at: 1).
	result at: 12 put: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPackageLine1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPossibleExceptElse2: nodes [
	| result |
	result := DelphiExceptElseNode new.
	result elseToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPrivateClassSection1: nodes [
	| result |
	result := DelphiPrivateClassSectionNode new.
	result strictToken: (nodes at: 1).
	result privateToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result components.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPrivateClassSection2: nodes [
	| result |
	result := DelphiPrivateClassSectionNode new.
	result privateToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result components.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForProcedureDefinition1: nodes [
	| result |
	result := DelphiProcedureDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForProcedureDefinition2: nodes [
	| result |
	result := DelphiProcedureDefinitionNode new.
	result header: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForProgramFile1: nodes [
	| result |
	result := Array new: 11.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	result at: 5 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 7).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 8).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 9).
	self add: ((nodes at: 2) at: 6) to: (result at: 4).
	result at: 10 put: (nodes at: 3).
	result at: 11 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForProgramFile2: nodes [
	| result |
	result := Array new: 11.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 5 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 7).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 8).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 9).
	self add: ((nodes at: 1) at: 6) to: (result at: 4).
	result at: 10 put: (nodes at: 2).
	result at: 11 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyArrayAccessors2: nodes [
	| result |
	result := DelphiPropertyArrayAccessorsNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyDefault1: nodes [
	| result |
	result := DelphiPropertyDefaultNode new.
	result defaultToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyDefault2: nodes [
	| result |
	result := DelphiPropertyDefaultNode new.
	result defaultToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyDefault3: nodes [
	| result |
	result := DelphiPropertyDefaultNode new.
	result nodefaultToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyDispid1: nodes [
	| result |
	result := DelphiPropertyDispidNode new.
	result dispidToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyDispid2: nodes [
	| result |
	result := DelphiPropertyDispidNode new.
	result readOnlyToken: (nodes at: 1).
	result dispidToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyDispid3: nodes [
	| result |
	result := DelphiPropertyDispidNode new.
	result writeOnlyToken: (nodes at: 1).
	result dispidToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyHeader1: nodes [
	| result |
	result := DelphiPropertyHeaderNode new.
	result propertyToken: ((nodes at: 1) at: 1).
	result name: ((nodes at: 1) at: 2).
	result arrayAccessors: ((nodes at: 1) at: 3).
	result colon: ((nodes at: 1) at: 4).
	result type: ((nodes at: 1) at: 5).
	result addNodes: ((nodes at: 1) at: 6) to: result indexes.
	result addNodes: ((nodes at: 1) at: 7) to: result readers.
	result addNodes: ((nodes at: 1) at: 8) to: result writers.
	result addNodes: ((nodes at: 1) at: 9) to: result defaults.
	result addNodes: ((nodes at: 1) at: 10) to: result storeds.
	result addNodes: ((nodes at: 1) at: 11) to: result implementses.
	result addNodes: ((nodes at: 1) at: 12) to: result dispids.
	result semicolon: ((nodes at: 1) at: 13).
	result modifier: ((nodes at: 1) at: 14).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyHeaderVars1: nodes [
	| result |
	result := Array new: 14.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: ((nodes at: 4) at: 1).
	result at: 5 put: ((nodes at: 4) at: 2).
	self addAll: ((nodes at: 5) at: 1) to: (result at: 6).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 5) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 5) at: 4) to: (result at: 9).
	self addAll: ((nodes at: 5) at: 5) to: (result at: 10).
	self addAll: ((nodes at: 5) at: 6) to: (result at: 11).
	self addAll: ((nodes at: 5) at: 7) to: (result at: 12).
	result at: 13 put: (nodes at: 6).
	result at: 14 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyImplements1: nodes [
	| result |
	result := DelphiPropertyImplementsNode new.
	result implementsToken: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result interfaces.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyIndex1: nodes [
	| result |
	result := DelphiPropertyIndexNode new.
	result indexToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyModifiers2: nodes [
	| result |
	result := DelphiPropertyModifierNode new.
	result defaultToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyReader1: nodes [
	| result |
	result := DelphiPropertyReaderNode new.
	result readToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyStored1: nodes [
	| result |
	result := DelphiPropertyStoredNode new.
	result storedToken: (nodes at: 1).
	result isStored: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyValues1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyValues2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyValues4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyValues5: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyValues6: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyValues7: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyValues8: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPropertyWriter1: nodes [
	| result |
	result := DelphiPropertyWriterNode new.
	result writeToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForProtectedClassSection1: nodes [
	| result |
	result := DelphiProtectedClassSectionNode new.
	result strictToken: (nodes at: 1).
	result protectedToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result components.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForProtectedClassSection2: nodes [
	| result |
	result := DelphiProtectedClassSectionNode new.
	result protectedToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result components.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPublicClassSection1: nodes [
	| result |
	result := DelphiPublicClassSectionNode new.
	result publicToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result components.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForPublishedClassSection1: nodes [
	| result |
	result := DelphiPublishedClassSectionNode new.
	result publishedToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result components.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForQualifiedName1: nodes [
	| result |
	result := DelphiQualifiedNameNode new.
	result name: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result
		addTokens: ((nodes at: 2) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForQualifiedName2: nodes [
	| result |
	result := DelphiQualifiedNameNode new.
	result namespace: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result
		addTokens: ((nodes at: 2) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	result period: (nodes at: 3).
	result name: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRaiseStatement1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: ((nodes at: 3) at: 1).
	result at: 4 put: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRaiseStatement2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRangeType1: nodes [
	| result |
	result := DelphiRangeTypeNode new.
	result startValue: (nodes at: 1).
	result dots: (nodes at: 2).
	result endValue: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRecordFieldList1: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRecordFieldList2: nodes [
	| result |
	result := Array new: 8.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: (nodes at: 2) to: (result at: 1).
	result at: 2 put: ((nodes at: 3) at: 1).
	result at: 3 put: ((nodes at: 3) at: 2).
	result at: 4 put: ((nodes at: 3) at: 3).
	result at: 5 put: ((nodes at: 3) at: 4).
	result at: 6 put: ((nodes at: 3) at: 5).
	self addAll: ((nodes at: 3) at: 6) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 7) to: (result at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRecordHelperType1: nodes [
	| result |
	result := DelphiRecordHelperTypeNode new.
	result recordToken: (nodes at: 1).
	result helperToken: (nodes at: 2).
	result forToken: (nodes at: 3).
	result record: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result sections.
	result caseToken: ((nodes at: 5) at: 2).
	result value: ((nodes at: 5) at: 3).
	result colon: ((nodes at: 5) at: 4).
	result type: ((nodes at: 5) at: 5).
	result ofToken: ((nodes at: 5) at: 6).
	result addNodes: ((nodes at: 5) at: 7) to: result variantTypes.
	result addTokens: ((nodes at: 5) at: 8) to: result semicolons.
	result endToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRecordType1: nodes [
	| result |
	result := DelphiRecordTypeNode new.
	result packedToken: (nodes at: 1).
	result recordToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result sections.
	result caseToken: ((nodes at: 3) at: 2).
	result value: ((nodes at: 3) at: 3).
	result colon: ((nodes at: 3) at: 4).
	result type: ((nodes at: 3) at: 5).
	result ofToken: ((nodes at: 3) at: 6).
	result addNodes: ((nodes at: 3) at: 7) to: result variantTypes.
	result addTokens: ((nodes at: 3) at: 8) to: result semicolons.
	result endToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRepeatStatement1: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 3).
	result at: 5 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForRequires1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForResource1: nodes [
	| result |
	result := DelphiResourceStringDefinitionNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	result deprecatedToken: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForResourceStringList1: nodes [
	| result |
	result := DelphiResourceStringListNode new.
	result resourceStringToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result definitions.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSetConstructor1: nodes [
	| result |
	result := DelphiSetExpressionNode new.
	result left: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSetConstructor2: nodes [
	| result |
	result := DelphiSetExpressionNode new.
	result left: (nodes at: 1).
	result right: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSetType1: nodes [
	| result |
	result := DelphiExpressionSetTypeNode new.
	result setToken: (nodes at: 1).
	result ofToken: (nodes at: 2).
	result setValue: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSetType2: nodes [
	| result |
	result := DelphiRangeSetTypeNode new.
	result setToken: (nodes at: 1).
	result ofToken: (nodes at: 2).
	result setValue: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSetType3: nodes [
	| result |
	result := DelphiValuesSetTypeNode new.
	result setToken: (nodes at: 1).
	result ofToken: (nodes at: 2).
	result left: (nodes at: 3).
	result addTokens: ((nodes at: 4) at: 1) to: result names.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result right: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSetValue1: nodes [
	| result |
	result := DelphiSingleSetValueNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSetValue2: nodes [
	| result |
	result := DelphiRangeSetValueNode new.
	result fromValue: (nodes at: 1).
	result dots: (nodes at: 2).
	result toValue: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSimpleDefinedType11: nodes [
	| result |
	result := DelphiTypeTypeNode new.
	result typeToken: (nodes at: 1).
	result typeName: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSimpleDefinedType1: nodes [
	| result |
	result := DelphiNamedTypeNode new.
	result typeExpression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSimpleDefinedType2: nodes [
	| result |
	result := DelphiPointerTypeNode new.
	result upArrowToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSimpleDefinedType6: nodes [
	| result |
	result := DelphiSimpleArrayTypeNode new.
	result type: (nodes at: 1).
	result left: (nodes at: 2).
	result bounds: (nodes at: 3).
	result right: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForSimpleDefinedType8: nodes [
	| result |
	result := DelphiAbsoluteTypeNode new.
	result type: (nodes at: 1).
	result absoluteToken: (nodes at: 2).
	result variable: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement10: nodes [
	| result |
	result := DelphiWhileStatementNode new.
	result whileToken: ((nodes at: 1) at: 1).
	result expression: ((nodes at: 1) at: 2).
	result doToken: ((nodes at: 1) at: 3).
	result statement: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement11: nodes [
	| result |
	result := DelphiGotoStatementNode new.
	result gotoToken: ((nodes at: 1) at: 1).
	result label: ((nodes at: 1) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement13: nodes [
	| result |
	result := DelphiLabeledStatementNode new.
	result label: ((nodes at: 1) at: 1).
	result colon: ((nodes at: 1) at: 2).
	result statement: ((nodes at: 1) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement14: nodes [
	| result |
	result := DelphiEmptyStatementNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement2: nodes [
	| result |
	result := DelphiRepeatStatementNode new.
	result repeatToken: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result statements.
	result addTokens: ((nodes at: 1) at: 3) to: result semicolons.
	result untilToken: ((nodes at: 1) at: 4).
	result expression: ((nodes at: 1) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement3: nodes [
	| result |
	result := DelphiIfStatementNode new.
	result ifToken: ((nodes at: 1) at: 1).
	result expression: ((nodes at: 1) at: 2).
	result thenToken: ((nodes at: 1) at: 3).
	result thenStatement: ((nodes at: 1) at: 4).
	result elseToken: ((nodes at: 1) at: 5).
	result elseStatement: ((nodes at: 1) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement4: nodes [
	| result |
	result := DelphiWithStatementNode new.
	result withToken: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result expressions.
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result doToken: ((nodes at: 1) at: 4).
	result statement: ((nodes at: 1) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement5: nodes [
	| result |
	result := DelphiTryStatementNode new.
	result tryToken: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result statements.
	result addTokens: ((nodes at: 1) at: 3) to: result semicolons.
	result except: ((nodes at: 1) at: 4).
	result finally: ((nodes at: 1) at: 5).
	result endToken: ((nodes at: 1) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement6: nodes [
	| result |
	result := DelphiCaseStatementNode new.
	result caseToken: ((nodes at: 1) at: 1).
	result expression: ((nodes at: 1) at: 2).
	result ofToken: ((nodes at: 1) at: 3).
	result addNodes: ((nodes at: 1) at: 4) to: result options.
	result addTokens: ((nodes at: 1) at: 5) to: result semicolons.
	result elseToken: ((nodes at: 1) at: 6).
	result addNodes: ((nodes at: 1) at: 7) to: result statements.
	result endToken: ((nodes at: 1) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement7: nodes [
	| result |
	result := DelphiRaiseStatementNode new.
	result raiseToken: ((nodes at: 1) at: 1).
	result expression: ((nodes at: 1) at: 2).
	result atToken: ((nodes at: 1) at: 3).
	result location: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement8: nodes [
	| result |
	result := DelphiForStatementNode new.
	result forToken: ((nodes at: 1) at: 1).
	result variable: ((nodes at: 1) at: 2).
	result assignmentToken: ((nodes at: 1) at: 3).
	result fromExpr: ((nodes at: 1) at: 4).
	result toToken: ((nodes at: 1) at: 5).
	result toExpr: ((nodes at: 1) at: 6).
	result doToken: ((nodes at: 1) at: 7).
	result statement: ((nodes at: 1) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement9: nodes [
	| result |
	result := DelphiForInStatementNode new.
	result forToken: ((nodes at: 1) at: 1).
	result variable: ((nodes at: 1) at: 2).
	result inToken: ((nodes at: 1) at: 3).
	result fromExpr: ((nodes at: 1) at: 4).
	result doToken: ((nodes at: 1) at: 5).
	result statement: ((nodes at: 1) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatementBlock1: nodes [
	| result |
	result := DelphiStatementBlockNode new.
	result beginToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 2) to: result semicolons.
	result endToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatements1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatements2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForTryStatement1: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 3).
	result at: 5 put: (nodes at: 4).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForTwoItemSetNameList1: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUnitFile1: nodes [
	| result |
	result := Array new: 10.
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 5 put: (nodes at: 2).
	result at: 6 put: (nodes at: 3).
	result at: 7 put: (nodes at: 4).
	result at: 8 put: (nodes at: 5).
	result at: 9 put: ((nodes at: 6) at: 1).
	result at: 10 put: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUnitFile2: nodes [
	| result |
	result := Array new: 10.
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUsesList1: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUsesList2: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 5).
	result at: 6 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUsesModule1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUsesModuleList1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUsesModuleList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	self add: ((nodes at: 3) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVariable1: nodes [
	| result |
	result := DelphiVariableNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result commas.
	result colon: (nodes at: 2).
	result type: (nodes at: 3).
	result modifier: (nodes at: 4).
	result equal: ((nodes at: 5) at: 1).
	result value: ((nodes at: 5) at: 2).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVariableExpression1: nodes [
	| result |
	result := DelphiVariableExpressionNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVariantRecordPart1: nodes [
	| result |
	result := Array new: 7.
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: ((nodes at: 3) at: 1).
	result at: 4 put: ((nodes at: 3) at: 2).
	result at: 5 put: (nodes at: 4).
	self addAll: ((nodes at: 5) at: 1) to: (result at: 6).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 7).
	self add: (nodes at: 6) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVariantType1: nodes [
	| result |
	result := DelphiVariantTypeNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result names.
	result addTokens: ((nodes at: 1) at: 2) to: result commas.
	result addToken: (nodes at: 2) to: result colons.
	result left: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result sections.
	result caseToken: ((nodes at: 4) at: 2).
	result value: ((nodes at: 4) at: 3).
	result addToken: ((nodes at: 4) at: 4) to: result colons.
	result type: ((nodes at: 4) at: 5).
	result ofToken: ((nodes at: 4) at: 6).
	result addNodes: ((nodes at: 4) at: 7) to: result variantTypes.
	result addTokens: ((nodes at: 4) at: 8) to: result semicolons.
	result right: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVars1: nodes [
	| result |
	result := DelphiVarsNode new.
	result varToken: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result variableDefinitions.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVarsVars2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	^ result
]
