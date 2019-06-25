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
#[ 0 230 2 133] 
#[ 1 30 2 117] 
#[ 1 30 2 121] 
#[ 1 30 2 125] 
#[ 1 30 2 129] 
#[ 1 30 2 133] 
#[ 1 30 2 137] 
#[ 1 30 2 153] 
#[ 1 50 2 117] 
#[ 1 50 2 121] 
#[ 1 50 2 125] 
#[ 1 50 2 129] 
#[ 1 50 2 133] 
#[ 1 50 2 137] 
#[ 1 50 2 153] 
#[ 1 78 2 117] 
#[ 1 78 2 121] 
#[ 1 78 2 125] 
#[ 1 78 2 129] 
#[ 1 78 2 133] 
#[ 1 78 2 137] 
#[ 1 78 2 153] 
#[ 1 82 2 117] 
#[ 1 82 2 121] 
#[ 1 82 2 125] 
#[ 1 82 2 129] 
#[ 1 82 2 133] 
#[ 1 82 2 137] 
#[ 1 82 2 153] 
#[ 1 198 4 181] 
#[ 1 206 2 117] 
#[ 1 206 2 121] 
#[ 1 206 2 125] 
#[ 1 206 2 133] 
#[ 1 206 2 137] 
#[ 1 206 2 153] 
#[ 1 218 2 117] 
#[ 1 218 2 121] 
#[ 1 218 2 125] 
#[ 1 218 2 133] 
#[ 1 218 2 137] 
#[ 1 218 2 153] 
#[ 1 230 2 117] 
#[ 1 230 2 121] 
#[ 1 230 2 125] 
#[ 1 230 2 133] 
#[ 1 230 2 137] 
#[ 1 230 2 153] 
#[ 1 234 2 117] 
#[ 1 234 2 121] 
#[ 1 234 2 125] 
#[ 1 234 2 133] 
#[ 1 234 2 137] 
#[ 1 234 2 153] 
#[ 2 117 2 142] 
#[ 2 121 2 142] 
#[ 2 125 2 142] 
#[ 2 129 2 142] 
#[ 2 133 2 142] 
#[ 2 137 2 142] 
#[ 2 142 2 153] 
#[ 2 117 2 150] 
#[ 2 121 2 150] 
#[ 2 125 2 150] 
#[ 2 129 2 150] 
#[ 2 133 2 150] 
#[ 2 137 2 150] 
#[ 2 150 2 153] 
#[ 2 133 2 190] 
#[ 2 117 2 222] 
#[ 2 121 2 222] 
#[ 2 125 2 222] 
#[ 2 133 2 222] 
#[ 2 137 2 222] 
#[ 2 153 2 222] 
#[ 0 182 8 189] 
#[ 0 202 4 122] 
#[ 0 206 4 126] 
#[ 5 38 10 93] 
#[ 5 38 10 97] 
#[ 5 38 10 145] 
#[ 1 6 3 97] 
#[ 7 58 10 93] 
#[ 7 58 10 97] 
#[ 7 58 10 145]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-06-25T15:49:33.15947+02:00'
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
#%nonassoc ""<>"" "">"" ""<"" ""="" ""<="" "">="" ""IN"" ;
%nonassoc ""AS"" ""IS"" ""ABSOLUTE"" ;
%left <plus> <minus> ;
%left ""DIV"" ""MOD"" ""SHL"" ""SHR"" ""*"" ""/"";
%left ""@"";
%left ""."" <upArrow> ;
%left ""["" ""("";

%id <number> <minus> <plus> <identifier> <constantIdentifier> <semicolon> <upArrow> <controlCharacter> <at>;

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
	| ""<"" 'left' GenericTypeArgumentList "">"" 'right'
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
	: ""<"" 'left' InstantiatedGenericTypeArgumentList "">"" 'right'
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
	| "">""
	| ""<""
	| ""<=""
	| "">=""
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
	#(164 0 #reduceActionForUsesList1: 5685249 false ) 
	#(357 0 #reduceActionForBeforeAsm1: 31675393 false ) 
	#(327 0 #reduceActionForStatement14: 28194830 false ) 
	#(189 0 #nil 8863745 false ) 
	#(201 0 #nil 10741761 false ) 
	#(148 1 #reduceActionForFile2: 4035586 false ) 
	#(148 1 #reduceActionForFile3: 4035587 false ) 
	#(148 1 #reduceActionForFile4: 4035588 false ) 
	#(148 1 #reduceActionForFile1: 4035585 false ) 
	#(163 0 #nil 5570561 false ) 
	#(161 1 #reduceActionForUnitFile2: 5243906 false ) 
	#(319 0 #reduceActionForMethodVariables2: 27462658 false ) 
	#(368 1 #reduceActionForInheritedFunctionCall4: 34140164 false ) 
	#(349 1 #reduceActionForRaiseStatement2: 30841858 false ) 
	#(360 1 #reduceActionForVariableExpression1: 33437697 false ) 
	#(209 1 #liftFirstValue: 11433985 false ) 
	#(367 1 #liftFirstValue: 34117633 false ) 
	#(358 1 #reduceActionForExpression10: 31793162 false ) 
	#(358 1 #reduceActionForExpression10: 31793160 false ) 
	#(327 1 #reduceActionForStatement13: 28194829 false ) 
	#(327 1 #reduceActionForStatement11: 28194827 false ) 
	#(327 1 #reduceActionForStatement2: 28194818 false ) 
	#(327 1 #reduceActionForStatement3: 28194819 false ) 
	#(327 1 #reduceActionForStatement4: 28194820 false ) 
	#(327 1 #reduceActionForStatement5: 28194821 false ) 
	#(327 1 #reduceActionForStatement6: 28194822 false ) 
	#(327 1 #reduceActionForStatement7: 28194823 false ) 
	#(327 1 #reduceActionForStatement8: 28194824 false ) 
	#(327 1 #reduceActionForStatement9: 28194825 false ) 
	#(327 1 #reduceActionForStatement10: 28194826 false ) 
	#(327 1 #liftFirstValue: 28194828 false ) 
	#(355 1 #liftFirstValue: 31496194 false ) 
	#(327 1 #liftFirstValue: 28194817 false ) 
	#(358 1 #liftFirstValue: 31793174 false ) 
	#(358 1 #liftFirstValue: 31793153 false ) 
	#(358 1 #liftFirstValue: 31793154 false ) 
	#(358 1 #liftFirstValue: 31793171 false ) 
	#(358 1 #reduceActionForExpression10: 31793161 false ) 
	#(358 1 #liftFirstValue: 31793159 false ) 
	#(358 1 #reduceActionForExpression10: 31793173 false ) 
	#(211 0 #reduceActionForConstantArray2: 12516354 false ) 
	#(241 1 #reduceActionForFileType2: 17080322 false ) 
	#(193 0 #reduceActionForOptionalArguments1: 9633793 false ) 
	#(201 1 #liftFirstValue: 10741762 false ) 
	#(210 1 #reduceActionForVariableExpression1: 11456515 false ) 
	#(189 1 #reduceActionForVariableExpression1: 8863746 false ) 
	#(210 1 #reduceActionForExpression10: 11456519 false ) 
	#(240 1 #liftFirstValue: 16998401 false ) 
	#(186 1 #reduceActionForSimpleDefinedType1: 8164353 false ) 
	#(240 1 #liftFirstValue: 16998402 false ) 
	#(240 1 #liftFirstValue: 16998403 false ) 
	#(186 1 #liftFirstValue: 8164361 false ) 
	#(186 1 #liftFirstValue: 8164356 false ) 
	#(186 1 #liftFirstValue: 8164357 false ) 
	#(186 1 #liftFirstValue: 8164362 false ) 
	#(210 1 #reduceActionForExpression10: 11456513 false ) 
	#(208 1 #liftFirstValue: 11370497 false ) 
	#(186 1 #liftFirstValue: 8164359 false ) 
	#(186 1 #liftFirstValue: 8164355 false ) 
	#(210 1 #liftFirstValue: 11456521 false ) 
	#(210 1 #reduceActionForExpression10: 11456518 false ) 
	#(210 1 #reduceActionForExpression10: 11456514 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7315457 false ) 
	#(167 1 #reduceActionForFullModuleName1: 5952513 false ) 
	#(190 0 #nil 9207809 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5764097 false ) 
	#(166 1 #reduceActionForUsesModule1: 5838849 false ) 
	#(153 0 #reduceActionForMethodVariables2: 4594689 false ) 
	#(288 0 #nil 23077889 false ) 
	#(155 1 #reduceActionForMainMethod1: 4754433 false ) 
	#(358 2 #reduceActionForExpression15: 31793167 false ) 
	#(326 1 #reduceActionForStatements1: 28091393 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28806145 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28806146 false ) 
	#(368 2 #reduceActionForInheritedFunctionCall3: 34140163 false ) 
	#(358 2 #reduceActionForExpression16: 31793168 false ) 
	#(350 0 #reduceActionForOptionalRaiseAt1: 30950401 false ) 
	#(335 0 #nil 29550593 false ) 
	#(333 1 #reduceActionForStatements1: 29344769 false ) 
	#(362 2 #reduceActionForSetConstructor2: 33611778 false ) 
	#(364 1 #reduceActionForSetValue1: 33842177 false ) 
	#(363 1 #reduceActionForStatements1: 33741825 false ) 
	#(358 2 #reduceActionForExpression17: 31793169 false ) 
	#(358 2 #reduceActionForExpression18: 31793170 false ) 
	#(361 2 #reduceActionForInstantiatedGenericVariableExpression1: 33507329 false ) 
	#(372 1 #liftFirstValue: 34838535 false ) 
	#(372 1 #liftFirstValue: 34838536 false ) 
	#(372 1 #liftFirstValue: 34838543 false ) 
	#(372 1 #liftFirstValue: 34838544 false ) 
	#(372 1 #liftFirstValue: 34838532 false ) 
	#(371 1 #liftFirstValue: 34774017 false ) 
	#(372 1 #liftFirstValue: 34838542 false ) 
	#(372 1 #liftFirstValue: 34838545 false ) 
	#(372 1 #liftFirstValue: 34838529 false ) 
	#(372 1 #liftFirstValue: 34838541 false ) 
	#(372 1 #liftFirstValue: 34838533 false ) 
	#(372 1 #liftFirstValue: 34838546 false ) 
	#(372 1 #liftFirstValue: 34838547 false ) 
	#(372 1 #liftFirstValue: 34838534 false ) 
	#(372 1 #liftFirstValue: 34838530 false ) 
	#(372 1 #liftFirstValue: 34838539 false ) 
	#(372 1 #liftFirstValue: 34838540 false ) 
	#(372 1 #liftFirstValue: 34838531 false ) 
	#(372 1 #liftFirstValue: 34838538 false ) 
	#(372 1 #liftFirstValue: 34838537 false ) 
	#(358 2 #reduceActionForExpression20: 31793172 false ) 
	#(358 2 #reduceActionForExpression14: 31793166 false ) 
	#(371 1 #liftFirstValue: 34774018 false ) 
	#(213 1 #reduceActionForUsesModule1: 12743681 false ) 
	#(211 1 #reduceActionForConstantArray1: 12516353 false ) 
	#(212 1 #reduceActionForUsesModuleList1: 12563457 false ) 
	#(341 0 #nil 30142465 false ) 
	#(214 1 #reduceActionForConstantArray1: 12878849 false ) 
	#(215 1 #reduceActionForStatements1: 12921857 false ) 
	#(210 2 #reduceActionForExpression15: 11456527 false ) 
	#(282 0 #reduceActionForArgumentList1: 22566913 false ) 
	#(287 0 #nil 22990849 false ) 
	#(210 2 #reduceActionForExpression16: 11456524 false ) 
	#(257 0 #reduceActionForOptionalRaiseAt1: 18685953 false ) 
	#(186 2 #reduceActionForSimpleDefinedType11: 8164363 false ) 
	#(210 2 #reduceActionForExpression17: 11456525 false ) 
	#(210 2 #reduceActionForExpression18: 11456526 false ) 
	#(186 2 #reduceActionForSimpleDefinedType2: 8164354 false ) 
	#(189 2 #reduceActionForNamedType4: 8863748 false ) 
	#(243 0 #reduceActionForOptionalArguments1: 17402882 false ) 
	#(234 0 #reduceActionForMethodVariables2: 15484929 false ) 
	#(190 1 #liftFirstValue: 9207811 false ) 
	#(190 1 #liftFirstValue: 9207810 false ) 
	#(157 3 #reduceActionForPackageLine1: 4872193 false ) 
	#(164 3 #reduceActionForUsesList2: 5685250 false ) 
	#(159 1 #reduceActionForStatements1: 5051393 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6077441 false ) 
	#(373 0 #nil 35021825 false ) 
	#(149 3 #reduceActionForProgramFile2: 4165634 false ) 
	#(320 1 #liftFirstValue: 27534339 false ) 
	#(320 1 #liftFirstValue: 27534338 false ) 
	#(320 1 #liftFirstValue: 27534340 false ) 
	#(299 1 #reduceActionForProcedureDefinition2: 24749058 false ) 
	#(300 1 #reduceActionForExternalProcedureHeader1: 24915969 false ) 
	#(302 1 #reduceActionForExternalProcedureHeader1: 25113601 false ) 
	#(320 1 #liftFirstValue: 27534341 false ) 
	#(307 1 #reduceActionForFunctionDefinition2: 25791490 false ) 
	#(308 1 #reduceActionForExternalFunctionHeader1: 25953281 false ) 
	#(310 1 #reduceActionForExternalFunctionHeader1: 26145793 false ) 
	#(319 2 #reduceActionForMethodVariables1: 27462657 false ) 
	#(320 1 #liftFirstValue: 27534342 false ) 
	#(320 1 #liftFirstValue: 27534337 false ) 
	#(322 1 #reduceActionForVars1: 27750401 false ) 
	#(358 3 #reduceActionForExpression12: 31793164 false ) 
	#(355 3 #reduceActionForStatementBlock1: 31496193 false ) 
	#(349 3 #reduceActionForRaiseStatement1: 30841857 false ) 
	#(339 0 #nil 29953025 false ) 
	#(362 3 #reduceActionForSetConstructor1: 33611777 false ) 
	#(328 3 #reduceActionForPackageLine1: 28670977 false ) 
	#(188 1 #reduceActionForStatements1: 8700929 false ) 
	#(328 3 #reduceActionForPackageLine1: 28670978 false ) 
	#(356 3 #reduceActionForAsmBlock1: 31600641 false ) 
	#(358 3 #reduceActionForExpression6: 31793158 false ) 
	#(370 1 #liftFirstValue: 34639873 false ) 
	#(369 1 #reduceActionForStatements1: 34532353 false ) 
	#(358 3 #reduceActionForExpression4: 31793156 false ) 
	#(358 3 #reduceActionForExpression4: 31793155 false ) 
	#(358 3 #reduceActionForExpression13: 31793165 false ) 
	#(366 1 #reduceActionForStatements1: 34029569 false ) 
	#(358 3 #reduceActionForExpression11: 31793163 false ) 
	#(210 3 #reduceActionForConstantExpression11: 11456523 false ) 
	#(341 1 #liftFirstValue: 30142466 false ) 
	#(241 3 #reduceActionForFileType1: 17080321 false ) 
	#(287 1 #liftFirstValue: 22990851 false ) 
	#(287 1 #liftFirstValue: 22990852 false ) 
	#(287 1 #liftFirstValue: 22990850 false ) 
	#(282 1 #reduceActionForConstantArray1: 22566914 false ) 
	#(283 1 #reduceActionForStatements1: 22600705 false ) 
	#(194 3 #reduceActionForSetType2: 9698306 false ) 
	#(194 3 #reduceActionForSetType1: 9698305 false ) 
	#(233 2 #reduceActionForQualifiedName1: 15284225 false ) 
	#(189 3 #reduceActionForExpression4: 8863747 false ) 
	#(225 0 #reduceActionForMethodVariables2: 14351361 false ) 
	#(224 1 #reduceActionForImplicitClassSection1: 14278657 false ) 
	#(207 3 #reduceActionForRangeType1: 11280385 false ) 
	#(217 1 #reduceActionForStatements1: 13180929 false ) 
	#(210 3 #reduceActionForExpression4: 11456516 false ) 
	#(210 3 #reduceActionForExpression11: 11456517 false ) 
	#(186 3 #reduceActionForSimpleDefinedType8: 8164360 false ) 
	#(180 1 #reduceActionForStatements1: 7402497 false ) 
	#(167 3 #reduceActionForFullModuleName2: 5952514 false ) 
	#(152 4 #reduceActionForLibraryLine1: 4477953 false ) 
	#(150 4 #reduceActionForLibraryLine1: 4281345 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5466113 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5764098 false ) 
	#(166 3 #reduceActionForPackageLine1: 5838850 false ) 
	#(149 4 #reduceActionForProgramFile1: 4165633 false ) 
	#(153 2 #reduceActionForMethodVariables1: 4594690 false ) 
	#(158 3 #reduceActionForRequires1: 4970497 false ) 
	#(156 4 #reduceActionForPackageFile1: 4814849 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5570562 false ) 
	#(290 0 #reduceActionForMethodVariables2: 23310337 false ) 
	#(374 0 #nil 35132417 false ) 
	#(261 0 #reduceActionForOptionalRaiseAt1: 19033089 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6306817 false ) 
	#(171 1 #reduceActionForConstantValues1: 6385665 false ) 
	#(285 1 #reduceActionForStatements1: 22835201 false ) 
	#(323 2 #reduceActionForVarsVars2: 27780098 false ) 
	#(324 1 #reduceActionForConstantValues1: 27868161 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7001089 false ) 
	#(177 1 #reduceActionForConstantValues1: 7081985 false ) 
	#(323 2 #reduceActionForVarsVars2: 27780097 false ) 
	#(299 2 #reduceActionForProcedureDefinition1: 24749057 false ) 
	#(276 0 #reduceActionForMethodVariables2: 21054465 false ) 
	#(307 2 #reduceActionForFunctionDefinition1: 25791489 false ) 
	#(318 3 #reduceActionForMethodComponents1: 27374593 false ) 
	#(326 3 #reduceActionForStatements2: 28091394 false ) 
	#(347 1 #reduceActionForBaseCaseLabel1: 30629889 false ) 
	#(348 0 #reduceActionForElseCase1: 30791681 false ) 
	#(343 1 #reduceActionForStatements1: 30246913 false ) 
	#(346 1 #reduceActionForStatements1: 30540801 false ) 
	#(345 1 #liftFirstValue: 30435329 false ) 
	#(331 4 #reduceActionForIfStatement1: 29010945 false ) 
	#(368 4 #reduceActionForInheritedFunctionCall2: 34140162 false ) 
	#(350 2 #reduceActionForGotoStatement1: 30950402 false ) 
	#(330 4 #reduceActionForRepeatStatement1: 28907521 false ) 
	#(338 0 #nil 29877249 false ) 
	#(336 1 #reduceActionForConstantValues1: 29710337 false ) 
	#(354 4 #reduceActionForLibraryLine1: 31390721 false ) 
	#(333 3 #reduceActionForStatements2: 29344770 false ) 
	#(332 4 #reduceActionForRepeatStatement1: 29250561 false ) 
	#(364 3 #reduceActionForSetValue2: 33842178 false ) 
	#(363 3 #reduceActionForStatements2: 33741826 false ) 
	#(187 3 #reduceActionForRequires1: 8600577 false ) 
	#(358 4 #reduceActionForExpression5: 31793157 false ) 
	#(365 3 #reduceActionForRequires1: 33975297 false ) 
	#(216 3 #reduceActionForConstantRecordField1: 13056001 false ) 
	#(213 3 #reduceActionForPackageLine1: 12743682 false ) 
	#(212 3 #reduceActionForUsesModuleList2: 12563458 false ) 
	#(210 4 #reduceActionForConstantExpression10: 11456522 false ) 
	#(215 3 #reduceActionForStatements2: 12921858 false ) 
	#(193 3 #reduceActionForRequires1: 9633794 false ) 
	#(284 2 #reduceActionForArgument2: 22695938 false ) 
	#(257 2 #reduceActionForGotoStatement1: 18685954 false ) 
	#(245 1 #liftFirstValue: 17580034 false ) 
	#(245 1 #liftFirstValue: 17580033 false ) 
	#(244 1 #reduceActionForStatements1: 17468417 false ) 
	#(198 4 #reduceActionForRecordType1: 10332161 false ) 
	#(200 2 #reduceActionForRecordFieldList1: 10605569 false ) 
	#(235 1 #liftFirstValue: 15564812 false ) 
	#(235 1 #liftFirstValue: 15564813 false ) 
	#(234 2 #reduceActionForMethodVariables1: 15484930 false ) 
	#(235 1 #liftFirstValue: 15564808 false ) 
	#(235 1 #liftFirstValue: 15564810 false ) 
	#(235 1 #liftFirstValue: 15564811 false ) 
	#(235 1 #liftFirstValue: 15564809 false ) 
	#(236 1 #liftFirstValue: 16099334 false ) 
	#(235 1 #liftFirstValue: 15564804 false ) 
	#(235 1 #liftFirstValue: 15564806 false ) 
	#(252 1 #liftFirstValue: 18211841 false ) 
	#(252 1 #liftFirstValue: 18211842 false ) 
	#(252 1 #liftFirstValue: 18211843 false ) 
	#(252 1 #liftFirstValue: 18211844 false ) 
	#(252 1 #liftFirstValue: 18211845 false ) 
	#(251 1 #liftFirstValue: 18139137 false ) 
	#(262 1 #reduceActionForPropertyHeader1: 19081217 false ) 
	#(251 1 #liftFirstValue: 18139138 false ) 
	#(253 1 #liftFirstValue: 18350081 false ) 
	#(253 1 #liftFirstValue: 18350082 false ) 
	#(254 1 #liftFirstValue: 18434049 false ) 
	#(254 1 #liftFirstValue: 18434050 false ) 
	#(255 1 #liftFirstValue: 18514945 false ) 
	#(255 1 #liftFirstValue: 18514946 false ) 
	#(256 1 #liftFirstValue: 18592769 false ) 
	#(256 1 #liftFirstValue: 18592770 false ) 
	#(258 1 #liftFirstValue: 18778113 false ) 
	#(258 1 #liftFirstValue: 18778114 false ) 
	#(259 1 #liftFirstValue: 18852865 false ) 
	#(259 1 #liftFirstValue: 18852866 false ) 
	#(260 1 #liftFirstValue: 18942977 false ) 
	#(260 1 #liftFirstValue: 18942978 false ) 
	#(235 1 #liftFirstValue: 15564803 false ) 
	#(210 4 #reduceActionForExpression5: 11456520 false ) 
	#(186 4 #reduceActionForSimpleDefinedType6: 8164358 false ) 
	#(179 3 #reduceActionForRequires1: 7315458 false ) 
	#(220 0 #reduceActionForMethodVariables2: 13948929 false ) 
	#(247 1 #liftFirstValue: 17830914 false ) 
	#(247 1 #liftFirstValue: 17830913 false ) 
	#(231 0 #reduceActionForOptionalArguments1: 15123457 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7189505 false ) 
	#(181 1 #reduceActionForUsesModule1: 7545859 false ) 
	#(181 1 #reduceActionForUsesModule1: 7545860 false ) 
	#(185 1 #liftFirstValue: 8052740 false ) 
	#(185 1 #liftFirstValue: 8052737 false ) 
	#(185 1 #liftFirstValue: 8052741 false ) 
	#(185 1 #liftFirstValue: 8052738 false ) 
	#(185 1 #liftFirstValue: 8052739 false ) 
	#(246 1 #reduceActionForInterfaceType2: 17636354 false ) 
	#(151 5 #reduceActionForLibraryFile1: 4398081 false ) 
	#(159 3 #reduceActionForStatements2: 5051394 false ) 
	#(160 3 #reduceActionForUsesList2: 5160961 false ) 
	#(377 2 #reduceActionForGotoStatement1: 35437569 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6077442 false ) 
	#(169 1 #liftFirstValue: 6171651 false ) 
	#(169 1 #liftFirstValue: 6171650 false ) 
	#(169 1 #liftFirstValue: 6171649 false ) 
	#(169 1 #liftFirstValue: 6171652 false ) 
	#(169 1 #liftFirstValue: 6171653 false ) 
	#(169 1 #liftFirstValue: 6171654 false ) 
	#(289 0 #nil 23224321 false ) 
	#(373 2 #reduceActionForInitializationSection2: 35021826 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6385666 false ) 
	#(321 3 #reduceActionForLabels1: 27658241 false ) 
	#(324 2 #reduceActionForMethodVariables1: 27868162 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7081986 false ) 
	#(280 2 #reduceActionForExternalMethodModifier1: 21623809 false ) 
	#(280 2 #reduceActionForExternalMethodModifier6: 21623814 false ) 
	#(301 3 #reduceActionForExternalProcedureHeaderVars1: 24995841 false ) 
	#(309 3 #reduceActionForExternalFunctionHeaderVars1: 26030081 false ) 
	#(342 2 #reduceActionForCaseOptionList1: 30194689 false ) 
	#(353 1 #liftFirstValue: 31357954 false ) 
	#(353 1 #liftFirstValue: 31357953 false ) 
	#(368 5 #reduceActionForInheritedFunctionCall1: 34140161 false ) 
	#(335 3 #reduceActionForExcept3: 29550595 false ) 
	#(336 2 #reduceActionForMethodVariables1: 29710338 false ) 
	#(335 3 #reduceActionForExcept2: 29550594 false ) 
	#(339 2 #reduceActionForFinally2: 29953026 false ) 
	#(334 5 #reduceActionForTryStatement1: 29450241 false ) 
	#(188 3 #reduceActionForStatements2: 8700930 false ) 
	#(369 3 #reduceActionForStatements2: 34532354 false ) 
	#(370 3 #reduceActionForMethodArgument2: 34639874 false ) 
	#(366 3 #reduceActionForStatements2: 34029570 false ) 
	#(283 3 #reduceActionForStatements2: 22600706 false ) 
	#(191 5 #reduceActionForAnonymousProcedureType1: 9284609 false ) 
	#(194 5 #reduceActionForSetType3: 9698307 false ) 
	#(233 4 #reduceActionForQualifiedName2: 15284226 false ) 
	#(243 3 #reduceActionForRequires1: 17402881 false ) 
	#(242 5 #reduceActionForArrayType2: 17191938 false ) 
	#(242 5 #reduceActionForArrayType1: 17191937 false ) 
	#(200 3 #reduceActionForRecordFieldList2: 10605570 false ) 
	#(225 2 #reduceActionForMethodVariables1: 14351362 false ) 
	#(226 1 #liftFirstValue: 14413825 false ) 
	#(226 1 #liftFirstValue: 14413826 false ) 
	#(226 1 #liftFirstValue: 14413827 false ) 
	#(226 1 #liftFirstValue: 14413828 false ) 
	#(264 2 #reduceActionForClassPropertyHeader1: 19339265 false ) 
	#(305 2 #reduceActionForExternalClassProcedureHeader1: 25562113 false ) 
	#(306 2 #reduceActionForExternalClassProcedureHeader1: 25673729 false ) 
	#(313 2 #reduceActionForExternalClassFunctionHeader1: 26595329 false ) 
	#(314 2 #reduceActionForExternalClassFunctionHeader1: 26703873 false ) 
	#(235 2 #reduceActionForNewClassComponent2: 15564802 false ) 
	#(298 0 #reduceActionForOptionalRaiseAt1: 24700929 false ) 
	#(266 0 #nil 19762177 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15564805 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15564807 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16099329 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16099330 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16099331 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16099332 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16099333 false ) 
	#(217 3 #reduceActionForStatements2: 13180930 false ) 
	#(180 3 #reduceActionForStatements2: 7402498 false ) 
	#(184 1 #reduceActionForEnumName1: 7943169 false ) 
	#(183 1 #reduceActionForStatements1: 7870465 false ) 
	#(181 2 #reduceActionForDefinedType2: 7545858 false ) 
	#(248 0 #nil 17886209 false ) 
	#(154 3 #reduceActionForLibraryExport1: 4644865 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6671361 false ) 
	#(174 1 #reduceActionForConstantValues1: 6770689 false ) 
	#(291 1 #liftFirstValue: 23369738 false ) 
	#(291 1 #liftFirstValue: 23369739 false ) 
	#(291 1 #liftFirstValue: 23369736 false ) 
	#(288 4 #reduceActionForImplementationSection2: 23077890 false ) 
	#(290 2 #reduceActionForMethodVariables1: 23310338 false ) 
	#(291 1 #liftFirstValue: 23369729 false ) 
	#(292 1 #reduceActionForConstructorDefinition2: 23657474 false ) 
	#(291 1 #liftFirstValue: 23369730 false ) 
	#(295 1 #reduceActionForDestructorDefinition2: 24186882 false ) 
	#(291 1 #liftFirstValue: 23369731 false ) 
	#(291 1 #liftFirstValue: 23369732 false ) 
	#(304 1 #reduceActionForClassProcedureDefinition2: 25369602 false ) 
	#(291 1 #liftFirstValue: 23369733 false ) 
	#(291 1 #liftFirstValue: 23369734 false ) 
	#(312 1 #reduceActionForClassFunctionDefinition2: 26407938 false ) 
	#(291 1 #liftFirstValue: 23369735 false ) 
	#(315 1 #reduceActionForClassOperatorDefinition2: 26818562 false ) 
	#(291 1 #liftFirstValue: 23369737 false ) 
	#(291 1 #liftFirstValue: 23369740 false ) 
	#(374 2 #reduceActionForFinalizationSection2: 35132418 false ) 
	#(161 6 #reduceActionForUnitFile1: 5243905 false ) 
	#(261 2 #reduceActionForGotoStatement1: 19033090 false ) 
	#(285 3 #reduceActionForStatements2: 22835202 false ) 
	#(277 0 #reduceActionForMethodVariables2: 21125121 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21623812 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21623810 false ) 
	#(281 1 #liftFirstValue: 22278155 false ) 
	#(281 1 #liftFirstValue: 22278149 false ) 
	#(281 1 #liftFirstValue: 22278158 false ) 
	#(281 1 #liftFirstValue: 22278153 false ) 
	#(281 1 #liftFirstValue: 22278159 false ) 
	#(281 1 #liftFirstValue: 22278162 false ) 
	#(281 1 #liftFirstValue: 22278157 false ) 
	#(281 1 #liftFirstValue: 22278165 false ) 
	#(281 1 #liftFirstValue: 22278164 false ) 
	#(281 1 #liftFirstValue: 22278163 false ) 
	#(281 1 #liftFirstValue: 22278156 false ) 
	#(281 1 #liftFirstValue: 22278145 false ) 
	#(281 1 #liftFirstValue: 22278146 false ) 
	#(281 1 #liftFirstValue: 22278150 false ) 
	#(281 1 #liftFirstValue: 22278161 false ) 
	#(281 1 #liftFirstValue: 22278148 false ) 
	#(281 1 #liftFirstValue: 22278151 false ) 
	#(281 1 #liftFirstValue: 22278166 false ) 
	#(281 1 #liftFirstValue: 22278160 false ) 
	#(281 1 #liftFirstValue: 22278147 false ) 
	#(281 1 #liftFirstValue: 22278154 false ) 
	#(281 1 #liftFirstValue: 22278152 false ) 
	#(276 2 #reduceActionForMethodVariables1: 21054466 false ) 
	#(278 1 #liftFirstValue: 21228545 false ) 
	#(278 1 #liftFirstValue: 21228546 false ) 
	#(347 3 #reduceActionForBaseCaseLabel2: 30629890 false ) 
	#(348 2 #reduceActionForElseCase2: 30791682 false ) 
	#(340 6 #reduceActionForCaseStatement1: 30020609 false ) 
	#(343 3 #reduceActionForStatements2: 30246914 false ) 
	#(344 3 #reduceActionForCaseOption1: 30349313 false ) 
	#(346 3 #reduceActionForStatements2: 30540802 false ) 
	#(345 3 #reduceActionForCaseLabel2: 30435330 false ) 
	#(352 6 #reduceActionForForInStatement1: 31211521 false ) 
	#(331 6 #reduceActionForForInStatement1: 29010946 false ) 
	#(359 6 #reduceActionForMemExpression1: 33165313 false ) 
	#(359 6 #reduceActionForMemExpression1: 33165314 false ) 
	#(338 2 #reduceActionForPossibleExceptElse2: 29877250 false ) 
	#(286 0 #reduceActionForOptionalRaiseAt1: 22926337 false ) 
	#(199 6 #reduceActionForRecordHelperType1: 10437633 false ) 
	#(196 1 #reduceActionForStatements1: 10132481 false ) 
	#(195 3 #reduceActionForTwoItemSetNameList1: 9975809 false ) 
	#(244 3 #reduceActionForStatements2: 17468418 false ) 
	#(227 2 #reduceActionForPrivateClassSection2: 14527490 false ) 
	#(228 2 #reduceActionForProtectedClassSection2: 14720002 false ) 
	#(229 2 #reduceActionForPublicClassSection1: 14926849 false ) 
	#(230 2 #reduceActionForPublishedClassSection1: 15019009 false ) 
	#(237 3 #reduceActionForMethodAttribute1: 16523265 false ) 
	#(293 3 #reduceActionForExternalConstructorHeader1: 23834625 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24358913 false ) 
	#(316 3 #reduceActionForExternalConstructorHeader1: 27005953 false ) 
	#(182 3 #reduceActionForEnumType1: 7817217 false ) 
	#(197 3 #reduceActionForMetaclassType1: 10235905 false ) 
	#(221 1 #liftFirstValue: 14023681 false ) 
	#(221 1 #liftFirstValue: 14023682 false ) 
	#(220 2 #reduceActionForMethodVariables1: 13948930 false ) 
	#(218 3 #reduceActionForNewClassType2: 13300738 false ) 
	#(232 1 #reduceActionForStatements1: 15184897 false ) 
	#(181 3 #reduceActionForPackageLine1: 7545861 false ) 
	#(181 3 #reduceActionForPackageLine1: 7545857 false ) 
	#(249 0 #reduceActionForMethodVariables2: 17961985 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6770690 false ) 
	#(289 2 #reduceActionForImplementationCode2: 23224322 false ) 
	#(376 1 #reduceActionForStatements1: 35346433 false ) 
	#(292 2 #reduceActionForConstructorDefinition1: 23657473 false ) 
	#(295 2 #reduceActionForDestructorDefinition1: 24186881 false ) 
	#(304 2 #reduceActionForClassProcedureDefinition1: 25369601 false ) 
	#(312 2 #reduceActionForClassFunctionDefinition1: 26407937 false ) 
	#(315 2 #reduceActionForClassOperatorDefinition1: 26818561 false ) 
	#(303 5 #reduceActionForNonExternalProcedureHeaderVars1: 25199617 false ) 
	#(279 2 #reduceActionForExternalMethodModifier6: 21303297 false ) 
	#(284 5 #reduceActionForArgument1: 22695937 false ) 
	#(192 7 #reduceActionForAnonymousFunctionType1: 9448449 false ) 
	#(227 3 #reduceActionForPrivateClassSection1: 14527489 false ) 
	#(228 3 #reduceActionForProtectedClassSection1: 14720001 false ) 
	#(298 2 #reduceActionForGotoStatement1: 24700930 false ) 
	#(265 0 #reduceActionForPropertyValues1: 19431425 false ) 
	#(184 3 #reduceActionForEnumName2: 7943170 false ) 
	#(183 3 #reduceActionForStatements2: 7870466 false ) 
	#(231 3 #reduceActionForRequires1: 15123458 false ) 
	#(223 0 #nil 14218241 false ) 
	#(375 3 #reduceActionForExportsDefinition1: 35235841 false ) 
	#(311 6 #reduceActionForNonExternalFunctionHeaderVars1: 26228737 false ) 
	#(277 2 #reduceActionForMethodVariables1: 21125122 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21623813 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21623811 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21303299 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21303298 false ) 
	#(351 8 #reduceActionForForStatement1: 31017985 false ) 
	#(337 5 #reduceActionForOnDo1: 29774849 false ) 
	#(286 2 #reduceActionForGotoStatement1: 22926338 false ) 
	#(196 3 #reduceActionForStatements2: 10132482 false ) 
	#(294 5 #reduceActionForNonExternalConstructorHeader1: 23970817 false ) 
	#(297 5 #reduceActionForNonExternalDestructorHeader1: 24492033 false ) 
	#(238 5 #reduceActionForInterfaceFunctionAssignment1: 16622593 false ) 
	#(239 5 #reduceActionForInterfaceProcedureAssignment1: 16805889 false ) 
	#(266 3 #reduceActionForPropertyArrayAccessors2: 19762178 false ) 
	#(235 5 #reduceActionForNewClassComponent1: 15564801 false ) 
	#(232 3 #reduceActionForStatements2: 15184898 false ) 
	#(222 5 #reduceActionForOldClassType1: 14068737 false ) 
	#(248 3 #reduceActionForGuid2: 17886210 false ) 
	#(246 5 #reduceActionForInterfaceType1: 17636353 false ) 
	#(249 2 #reduceActionForMethodVariables1: 17961986 false ) 
	#(250 1 #liftFirstValue: 18054146 false ) 
	#(250 1 #liftFirstValue: 18054145 false ) 
	#(223 1 #liftFirstValue: 14218242 false ) 
	#(376 3 #reduceActionForStatements2: 35346434 false ) 
	#(325 6 #reduceActionForVariable1: 27967489 false ) 
	#(203 1 #reduceActionForStatements1: 10940417 false ) 
	#(205 1 #reduceActionForStatements1: 11155457 false ) 
	#(206 1 #liftFirstValue: 11242497 false ) 
	#(294 6 #reduceActionForNonExternalConstructorHeader2: 23970818 false ) 
	#(297 6 #reduceActionForNonExternalDestructorHeader2: 24492034 false ) 
	#(271 1 #reduceActionForPropertyDefault2: 20436994 false ) 
	#(271 1 #reduceActionForPropertyDefault3: 20436995 false ) 
	#(275 0 #nil 20954113 false ) 
	#(265 2 #reduceActionForPropertyValues2: 19431426 false ) 
	#(265 2 #reduceActionForCaseOptionList1: 19431427 false ) 
	#(265 2 #reduceActionForPropertyValues4: 19431428 false ) 
	#(265 2 #reduceActionForPropertyValues8: 19431432 false ) 
	#(265 2 #reduceActionForPropertyValues5: 19431429 false ) 
	#(265 2 #reduceActionForPropertyValues7: 19431431 false ) 
	#(265 2 #reduceActionForPropertyValues6: 19431430 false ) 
	#(219 6 #reduceActionForClassHelperType2: 13533186 false ) 
	#(218 6 #reduceActionForNewClassType1: 13300737 false ) 
	#(175 5 #reduceActionForResource1: 6845441 false ) 
	#(172 7 #reduceActionForConstantValue1: 6480897 false ) 
	#(202 6 #reduceActionForVariantRecordPart1: 10790913 false ) 
	#(317 7 #reduceActionForNonExternalClassOperatorHeader1: 27148289 false ) 
	#(271 2 #reduceActionForPropertyDefault1: 20436993 false ) 
	#(270 2 #reduceActionForPropertyDispid1: 20124673 false ) 
	#(273 1 #reduceActionForStatements1: 20745217 false ) 
	#(272 2 #reduceActionForPropertyImplements1: 20640769 false ) 
	#(267 2 #reduceActionForPropertyIndex1: 19859457 false ) 
	#(268 2 #reduceActionForPropertyReader1: 19952641 false ) 
	#(274 2 #reduceActionForPropertyStored1: 20865025 false ) 
	#(269 2 #reduceActionForPropertyWriter1: 20037633 false ) 
	#(263 7 #reduceActionForPropertyHeaderVars1: 19141633 false ) 
	#(203 3 #reduceActionForStatements2: 10940418 false ) 
	#(205 3 #reduceActionForStatements2: 11155458 false ) 
	#(270 3 #reduceActionForPropertyDispid2: 20124674 false ) 
	#(270 3 #reduceActionForPropertyDispid3: 20124675 false ) 
	#(275 2 #reduceActionForPropertyModifiers2: 20954114 false ) 
	#(273 3 #reduceActionForStatements2: 20745218 false ) 
	#(219 9 #reduceActionForClassHelperType1: 13533185 false ) 
	#(204 5 #reduceActionForVariantType1: 11055105 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '">"' '">="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'LibraryExport' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'MethodAttribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'MemExpression' 'VariableExpression' 'InstantiatedGenericVariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiProgramNode #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiLibraryExportNode #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiMethodAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiInstantiatedGenericVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 23 0 6 0 25 0 6 0 29 0 6 0 54 0 6 0 67 0 21 0 68 0 25 0 86 0 6 0 91 0 29 0 92 0 6 0 116 0 6 0 119 0 33 0 120 0 37 0 123 0 6 0 124 0 41 0 148 0 45 0 149 0 49 0 150 0 53 0 151 0 57 0 152 0 61 0 156 0 65 0 157 0 69 0 161 0 73 0 162 0 77 0 164] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 0 177 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 0 177 1 99 0 177 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 1 17 0 17 0 18 0 18 0 22 0 21 1 21 0 48 1 25 0 54 1 29 0 77 1 105 0 87 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 1 53 0 134 1 57 0 135 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 77 0 186 1 81 0 189 1 125 0 191 1 125 0 192 1 77 0 194 1 77 0 198 1 77 0 199 1 105 0 201 1 77 0 207 1 113 0 208 1 117 0 209 1 121 0 210 1 125 0 240 1 77 0 241 1 77 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 1 149 0 138 1 153 0 178] 
#[1 1 157 0 138 1 161 0 167] 
#[1 1 157 0 138 1 165 0 167] 
#[1 1 157 0 138 1 169 0 167] 
#[1 1 157 0 138 1 173 0 167] 
#[1 1 157 0 138 1 177 0 165 1 181 0 166 1 185 0 167] 
#[0 0 0 1 123] 
#[0 0 26 1 123] 
#[1 0 6 0 23 0 6 0 25 0 6 0 29 0 6 0 54 0 6 0 67 0 6 0 91 0 6 0 116 0 6 0 119 0 37 0 123 0 6 0 124 1 189 0 164] 
#[0 0 30 1 123] 
#[1 0 6 0 23 0 6 0 25 0 6 0 29 0 6 0 45 0 6 0 54 0 6 0 67 0 6 0 91 0 6 0 116 0 6 0 119 0 37 0 123 0 6 0 124 1 193 0 164] 
#[0 0 34 1 123] 
#[1 1 197 0 104 1 201 0 158] 
#[0 0 38 1 123] 
#[1 0 42 0 42 0 42 0 50 0 42 0 58 0 42 0 63 1 205 0 65 1 209 0 163 0 46 1 123] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 1 213 0 155 1 217 1 62 1 221 1 63] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 229 1 102 1 229 1 103 1 229 1 104 1 229 1 105 1 229 1 106 1 1 1 111 1 229 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 233 1 102 1 233 1 103 1 233 1 104 1 233 1 105 1 233 1 106 1 1 1 111 1 233 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 237 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 1 245 1 102 1 245 1 103 1 245 1 104 1 245 1 105 1 245 1 106 1 1 1 111 1 245 1 112 1 9 1 122] 
#[1 1 249 0 138 1 253 1 104] 
#[1 2 1 0 138 2 5 0 140] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 9 1 102 2 9 1 103 2 9 1 104 2 9 1 105 2 9 1 106 1 1 1 111 2 9 1 112 1 9 1 122] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 15 0 54 0 16 0 54 0 20 0 54 0 22 0 54 0 32 0 54 0 35 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 41 0 54 0 42 0 54 0 43 0 54 0 50 0 54 0 51 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 63 0 54 0 66 0 54 0 73 0 54 0 76 0 54 0 79 0 54 0 80 0 54 0 82 0 54 0 98 0 54 0 99 0 54 0 109 0 54 0 110 0 54 0 113 0 54 0 115 0 54 0 117 0 54 0 122 0 54 0 128 0 54 0 129 0 54 0 130 0 54 0 131 0 54 0 132 0 54 0 133 0 54 0 134 0 54 0 135 0 54 0 136 0 54 0 137 2 13 0 138 0 54 1 123] 
#[0 2 17 0 131] 
#[0 2 21 0 131] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 25 1 102 2 25 1 103 2 25 1 104 2 25 1 105 2 25 1 106 1 1 1 111 2 25 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 58 0 41 0 58 0 42 0 58 0 43 0 58 0 50 0 58 0 51 0 109 0 62 0 58 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 58 0 80 0 58 0 122 0 145 0 131 0 149 0 134 0 153 0 135 0 58 0 136 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 29 1 102 2 29 1 103 2 29 1 104 2 29 1 105 2 29 1 106 1 1 1 111 2 29 1 112 1 9 1 122 0 58 1 123] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 33 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 14 0 43 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 37 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 41 1 102 2 41 1 103 2 41 1 104 2 41 1 105 2 41 1 106 1 1 1 111 2 41 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 45 1 77 2 49 1 102 2 49 1 103 2 49 1 104 2 49 1 105 2 49 1 106 1 1 1 111 2 49 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 2 53 0 132 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 57 1 102 2 57 1 103 2 57 1 104 2 57 1 105 2 57 1 106 2 61 1 107 2 65 1 108 1 1 1 111 2 57 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 69 1 102 2 69 1 103 2 69 1 104 2 69 1 105 2 69 1 106 1 1 1 111 2 69 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 73 1 102 2 73 1 103 2 73 1 104 2 73 1 105 2 73 1 106 1 1 1 111 2 73 1 112 1 9 1 122] 
#[1 0 62 0 2 0 62 0 4 0 62 0 6 0 62 0 8 2 77 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 15 0 62 0 16 0 62 0 20 0 62 0 22 0 62 0 37 0 62 0 41 0 62 0 42 0 62 0 43 0 62 0 50 0 62 0 51 0 62 0 60 0 62 0 63 0 62 0 66 0 62 0 73 0 62 0 80 0 62 0 82 0 62 0 109 0 62 0 110 0 62 0 122 0 62 0 130 0 62 0 131 0 62 0 134 0 62 0 135 0 62 0 136 0 62 0 137 2 85 0 187 0 62 1 123] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 89 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 15 0 66 0 16 0 66 0 20 0 66 0 22 0 66 0 37 0 66 0 41 0 66 0 42 0 66 0 43 0 66 0 50 0 66 0 51 0 66 0 60 0 66 0 63 0 66 0 66 0 66 0 73 0 66 0 80 0 66 0 82 0 66 0 109 0 66 0 110 0 66 0 122 0 66 0 130 0 66 0 131 0 66 0 134 0 66 0 135 0 66 0 136 0 66 0 137 0 66 1 123] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 0 1 123] 
#[0 0 82 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 86 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 90 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 94 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 98 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 102 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 106 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 110 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 114 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 118 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 122 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 126 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 0 130 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 2 93 0 23] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 0 134 0 41 0 134 0 42 0 134 0 43 0 134 0 50 0 134 0 51 2 201 0 60 0 134 0 63 2 201 0 66 2 201 0 73 0 134 0 80 2 201 0 82 2 201 0 109 2 201 0 110 0 134 0 122 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 0 134 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 0 134 1 123] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 1 13 0 2 0 166 0 3 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 209 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 2 213 0 210 2 217 0 211 2 221 0 212 2 225 0 213 2 229 0 214 2 233 0 215 2 237 0 216 2 213 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 2 245 0 210 2 245 1 106 1 141 1 111 1 145 1 122] 
#[1 0 170 0 3 0 170 0 5 0 170 0 14 0 170 0 15 0 170 0 18 0 170 0 32 0 170 0 33 0 170 0 35 0 170 0 38 0 170 0 59 0 170 0 61 0 170 0 76 2 249 0 79 0 170 0 89 0 170 0 98 0 170 0 99 0 170 0 113 0 170 0 128 0 170 0 129 0 170 0 131 0 170 0 132 0 170 0 136 0 170 1 123] 
#[1 2 253 0 2 0 174 0 9 3 1 0 193] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 3 5 0 210 3 5 1 106 1 141 1 111 1 145 1 122] 
#[0 0 178 0 21 0 100] 
#[1 2 253 0 2 0 174 0 79 0 174 0 136 3 9 0 193] 
#[0 3 13 0 56] 
#[0 3 17 0 79] 
#[1 3 21 0 138 3 25 0 233] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 3 29 0 210 3 29 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 3 33 0 210 3 33 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 0 18 0 15 1 17 0 17 0 18 0 18 0 22 0 21 0 18 0 32 0 18 0 33 0 18 0 35 0 18 0 38 1 21 0 48 1 25 0 54 0 18 0 59 0 18 0 61 0 18 0 76 1 29 0 77 0 18 0 79 1 105 0 87 0 18 0 89 1 37 0 91 0 18 0 98 0 18 0 99 0 7 0 100 1 45 0 108 0 18 0 113 1 49 0 119 0 18 0 128 0 18 0 129 0 145 0 131 0 18 0 132 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 3 41 0 186 1 81 0 189 3 41 0 191 3 41 0 192 3 41 0 194 3 41 0 198 3 41 0 199 1 105 0 201 3 41 0 207 1 113 0 208 1 117 0 209 1 121 0 210 3 41 0 240 3 41 0 241 3 41 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 0 182 0 2 0 186 0 3 0 182 0 4 0 186 0 5 0 15 0 6 0 182 0 7 0 182 0 8 0 15 0 11 0 182 0 12 0 182 0 13 0 186 0 14 0 15 0 15 0 182 0 16 0 186 0 18 0 182 0 20 0 182 0 22 0 186 0 32 0 186 0 33 0 186 0 35 0 182 0 37 0 186 0 38 0 186 0 59 0 182 0 60 0 186 0 61 0 182 0 66 0 182 0 73 0 186 0 76 0 186 0 79 0 182 0 82 0 186 0 89 0 186 0 98 0 186 0 99 0 182 0 109 0 182 0 110 0 186 0 113 0 186 0 128 0 186 0 129 0 182 0 130 0 186 0 131 0 186 0 132 0 182 0 134 0 182 0 135 0 186 0 136 0 186 1 123] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 0 194 0 18 0 194 0 131 0 0 1 123] 
#[1 0 198 0 3 0 198 0 5 3 45 0 6 2 81 0 11 0 198 0 14 0 198 0 15 0 198 0 18 0 198 0 32 0 198 0 33 0 198 0 35 0 198 0 38 0 198 0 59 0 198 0 61 0 198 0 76 0 198 0 79 0 198 0 89 0 198 0 98 0 198 0 99 0 198 0 113 0 198 0 128 0 198 0 129 0 198 0 131 0 198 0 132 0 198 0 136 3 49 0 187 0 198 1 123] 
#[0 0 202 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 0 206 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 0 210 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 0 214 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 0 218 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 3 53 0 21 3 57 0 100] 
#[0 0 222 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 3 61 0 7] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 65 0 2 0 230 0 3 3 73 0 4 0 230 0 5 3 69 0 6 0 230 0 7 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 0 230 0 14 0 19 0 15 3 73 0 16 0 230 0 18 3 73 0 20 3 73 0 22 0 230 0 32 0 230 0 33 0 230 0 35 3 73 0 37 0 230 0 38 0 230 0 59 3 73 0 60 0 230 0 61 3 73 0 66 3 73 0 73 0 230 0 76 0 230 0 79 3 73 0 82 0 230 0 89 0 230 0 98 0 230 0 99 3 73 0 109 3 73 0 110 0 230 0 113 0 230 0 128 0 230 0 129 3 73 0 130 0 230 0 131 0 230 0 132 3 73 0 134 3 73 0 135 0 230 0 136 3 73 1 116 0 230 1 123] 
#[1 3 77 0 18 3 81 0 131] 
#[0 0 234 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 0 238 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 85 0 11 0 254 0 14 3 89 0 179] 
#[0 0 0 1 123] 
#[0 1 2 0 5 0 6 0 33 0 60 0 89 0 136] 
#[1 3 93 0 6 3 105 0 33 3 105 0 89 1 6 0 136 3 105 0 190] 
#[1 3 93 0 6 3 109 0 136] 
#[1 3 93 0 6 3 113 0 33 3 113 0 89 1 6 0 136 3 113 0 190] 
#[1 3 93 0 6 3 117 0 33 3 117 0 89 1 6 0 136 3 117 0 190] 
#[1 3 121 0 5 3 125 0 136] 
#[0 1 10 0 5 0 136] 
#[1 1 14 0 5 3 93 0 6 3 129 0 60 1 14 0 136] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 3 133 0 155 1 217 1 62 1 221 1 63] 
#[1 1 18 0 23 1 18 0 25 1 18 0 29 1 18 0 45 1 18 0 54 1 18 0 67 1 18 0 91 1 18 0 116 1 18 0 119 1 18 0 124 3 137 0 153] 
#[1 1 157 0 138 3 141 0 159 3 145 0 167] 
#[1 3 149 0 31 3 153 0 160] 
#[1 0 6 0 29 0 6 0 42 0 6 0 50 0 6 0 54 0 6 0 58 0 6 0 63 0 6 0 91 0 6 0 105 0 6 0 116 0 6 0 119 0 37 0 123 0 6 0 124 3 157 0 164] 
#[1 1 22 0 42 1 22 0 50 3 161 0 58 1 22 0 63 3 165 1 32] 
#[0 3 169 0 6] 
#[0 1 26 0 6] 
#[1 0 10 0 23 0 89 0 25 3 173 0 29 3 177 0 54 3 181 0 67 3 185 0 91 3 189 0 116 3 193 0 119 3 197 0 124 3 249 0 170 3 249 0 176 3 249 1 43 3 213 1 44 3 217 1 45 3 221 1 46 3 225 1 47 3 249 1 51 3 233 1 52 3 237 1 53 3 241 1 54 3 245 1 55 3 249 1 64 3 249 1 65 3 249 1 66 4 5 1 67 4 9 1 99 4 9 1 100 0 233 1 101] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 15 0 62 0 16 0 62 0 20 0 62 0 22 0 62 0 32 0 62 0 35 0 62 0 37 0 62 0 38 0 62 0 39 0 62 0 41 0 62 0 42 0 62 0 43 0 62 0 50 0 62 0 51 0 62 0 59 0 62 0 60 0 62 0 61 0 62 0 63 0 62 0 66 0 62 0 73 0 62 0 76 0 62 0 79 0 62 0 80 0 62 0 82 0 62 0 98 0 62 0 99 0 62 0 109 0 62 0 110 0 62 0 113 0 62 0 115 0 62 0 117 0 62 0 122 0 62 0 128 0 62 0 129 0 62 0 130 0 62 0 131 0 62 0 132 0 62 0 133 0 62 0 134 0 62 0 135 0 62 0 136 0 62 0 137 2 85 0 187 0 62 1 123] 
#[1 2 97 0 2 4 13 0 3 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 1 30 0 3 1 30 0 4 1 30 0 5 2 105 0 6 1 30 0 7 1 30 0 8 1 30 0 9 1 30 0 10 0 23 0 11 0 27 0 12 0 31 0 13 0 35 0 14 0 39 0 15 0 43 0 16 1 30 0 20 1 30 0 22 1 30 0 32 1 30 0 35 1 30 0 37 1 30 0 38 1 30 0 39 1 30 0 41 1 30 0 42 1 30 0 43 1 30 0 50 1 30 0 51 1 30 0 59 0 47 0 60 1 30 0 61 1 30 0 63 1 30 0 66 1 30 0 73 1 30 0 76 1 30 0 79 1 30 0 80 1 30 0 82 1 30 0 98 1 30 0 99 1 30 0 109 1 30 0 110 1 30 0 113 1 30 0 115 1 30 0 117 1 30 0 122 1 30 0 128 1 30 0 129 1 30 0 130 2 181 0 131 1 30 0 132 1 30 0 133 1 30 0 134 1 30 0 135 1 30 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 30 1 123] 
#[1 4 17 0 42 4 21 0 136] 
#[0 1 34 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 4 25 0 79 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 0 62 0 10 0 60] 
#[1 4 29 0 10 4 33 0 60] 
#[0 1 38 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 1 42 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 4 37 0 115 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 4 41 0 2 1 46 0 3 1 46 0 4 1 46 0 5 1 46 0 6 1 46 0 7 1 46 0 8 1 46 0 9 1 46 0 10 1 46 0 11 1 46 0 12 1 46 0 13 1 46 0 14 1 46 0 15 1 46 0 16 1 46 0 20 1 46 0 22 1 46 0 32 1 46 0 35 1 46 0 37 1 46 0 38 1 46 0 39 1 46 0 41 1 46 0 42 1 46 0 43 1 46 0 50 1 46 0 51 1 46 0 59 1 46 0 60 1 46 0 61 1 46 0 63 1 46 0 66 1 46 0 73 1 46 0 76 1 46 0 79 1 46 0 80 1 46 0 82 1 46 0 98 1 46 0 99 1 46 0 109 1 46 0 110 1 46 0 113 1 46 0 115 1 46 0 117 1 46 0 122 1 46 0 128 1 46 0 129 1 46 0 130 1 46 0 131 1 46 0 132 1 46 0 133 1 46 0 134 1 46 0 135 1 46 0 136 1 46 0 137 1 46 1 123] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 45 1 102 4 45 1 103 4 45 1 104 4 45 1 105 4 45 1 106 1 1 1 111 4 45 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 49 1 102 4 49 1 103 4 49 1 104 4 49 1 105 4 49 1 106 1 1 1 111 4 49 1 112 1 9 1 122] 
#[1 2 97 0 2 1 50 0 3 2 201 0 4 1 50 0 5 2 105 0 6 1 50 0 7 2 201 0 8 1 50 0 9 2 113 0 10 0 51 0 11 0 55 0 12 0 59 0 13 0 63 0 14 0 67 0 15 0 71 0 16 2 201 0 20 2 201 0 22 1 50 0 32 1 50 0 35 2 201 0 37 1 50 0 38 1 50 0 39 1 50 0 41 1 50 0 42 1 50 0 43 1 50 0 50 1 50 0 51 1 50 0 59 0 75 0 60 1 50 0 61 1 50 0 63 2 201 0 66 2 201 0 73 1 50 0 76 1 50 0 79 1 50 0 80 2 201 0 82 1 50 0 98 1 50 0 99 2 201 0 109 2 201 0 110 1 50 0 113 1 50 0 115 1 50 0 117 1 50 0 122 1 50 0 128 1 50 0 129 2 201 0 130 2 181 0 131 1 50 0 132 1 50 0 133 2 201 0 134 2 201 0 135 1 50 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 50 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 1 54 0 41 1 54 0 42 1 54 0 43 1 54 0 50 1 54 0 51 2 201 0 60 1 54 0 63 2 201 0 66 2 201 0 73 1 54 0 80 2 201 0 82 2 201 0 109 2 201 0 110 1 54 0 122 2 201 0 130 2 181 0 131 4 53 0 133 2 201 0 134 2 201 0 135 1 54 0 136 2 193 0 137 4 57 1 94 2 197 1 109 2 201 1 115 2 201 1 116 1 54 1 123] 
#[1 4 61 0 122 4 21 0 136] 
#[1 1 58 0 42 4 65 0 43 1 58 0 51 4 21 0 136 4 69 1 79] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 4 73 0 38 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 4 77 0 5 4 81 0 38] 
#[1 2 97 0 2 2 201 0 4 1 62 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 1 62 0 38 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 201 0 4 1 70 0 5 2 105 0 6 4 85 0 7 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 1 70 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 4 89 0 5 4 93 0 132] 
#[0 1 74 0 5 0 132] 
#[1 2 97 0 2 1 78 0 3 2 201 0 4 1 78 0 5 2 105 0 6 1 78 0 7 2 201 0 8 1 78 0 9 1 78 0 10 0 79 0 11 0 83 0 12 0 87 0 13 0 91 0 14 0 95 0 15 0 99 0 16 1 78 0 20 1 78 0 22 1 78 0 32 1 78 0 35 2 201 0 37 1 78 0 38 1 78 0 39 1 78 0 41 1 78 0 42 1 78 0 43 1 78 0 50 1 78 0 51 1 78 0 59 0 103 0 60 1 78 0 61 1 78 0 63 1 78 0 66 2 201 0 73 1 78 0 76 1 78 0 79 1 78 0 80 1 78 0 82 1 78 0 98 1 78 0 99 2 201 0 109 2 201 0 110 1 78 0 113 1 78 0 115 1 78 0 117 1 78 0 122 1 78 0 128 1 78 0 129 1 78 0 130 2 181 0 131 1 78 0 132 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 78 1 123] 
#[1 2 97 0 2 1 82 0 3 2 201 0 4 1 82 0 5 2 105 0 6 1 82 0 7 2 201 0 8 1 82 0 9 1 82 0 10 0 107 0 11 0 111 0 12 0 115 0 13 0 119 0 14 0 123 0 15 0 127 0 16 1 82 0 20 1 82 0 22 1 82 0 32 1 82 0 35 2 201 0 37 1 82 0 38 1 82 0 39 1 82 0 41 1 82 0 42 1 82 0 43 1 82 0 50 1 82 0 51 1 82 0 59 0 131 0 60 1 82 0 61 1 82 0 63 1 82 0 66 2 201 0 73 1 82 0 76 1 82 0 79 1 82 0 80 1 82 0 82 1 82 0 98 1 82 0 99 2 201 0 109 2 201 0 110 1 82 0 113 1 82 0 115 1 82 0 117 1 82 0 122 1 82 0 128 1 82 0 129 1 82 0 130 2 181 0 131 1 82 0 132 1 82 0 133 1 82 0 134 1 82 0 135 1 82 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 1 82 1 123] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 97 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 4 97 1 99 4 97 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 1 13 0 2 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 15 1 17 0 17 0 18 0 18 0 22 0 21 1 21 0 48 1 25 0 54 1 29 0 77 1 105 0 87 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 1 53 0 134 1 57 0 135 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 4 101 0 186 4 105 0 188 1 81 0 189 1 125 0 191 1 125 0 192 4 101 0 194 4 101 0 198 4 101 0 199 1 105 0 201 4 101 0 207 1 113 0 208 1 117 0 209 1 121 0 210 1 125 0 240 4 101 0 241 4 101 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 109 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 4 109 1 99 4 109 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[0 4 113 0 42] 
#[1 0 81 0 2 4 117 0 3 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 121 1 102 4 121 1 103 4 121 1 104 4 121 1 105 4 121 1 106 1 1 1 111 4 121 1 112 4 125 1 113 4 129 1 114 1 9 1 122] 
#[0 1 90 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[1 4 133 0 1 4 137 0 138] 
#[0 1 94 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 141 1 102 4 141 1 103 4 141 1 104 4 141 1 105 4 141 1 106 1 1 1 111 4 141 1 112 1 9 1 122] 
#[0 1 98 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 102 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 106 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 110 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[0 1 114 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 118 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 122 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 126 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 130 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 134 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 138 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 142 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 146 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 150 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 154 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 158 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 145 1 102 4 145 1 103 4 145 1 104 4 145 1 105 4 145 1 106 4 149 1 110 1 1 1 111 4 145 1 112 1 9 1 122] 
#[0 1 162 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 166 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 122] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 1 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 153 1 102 4 153 1 103 4 153 1 104 4 153 1 105 4 153 1 106 1 1 1 111 4 153 1 112 1 9 1 122] 
#[0 1 178 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 0 182 0 5 0 182 0 6 0 182 0 8 4 157 0 9 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 20 0 182 0 22 0 182 0 37 0 182 0 60 0 182 0 66 0 182 0 73 0 182 0 82 0 182 0 109 0 182 0 110 0 182 0 130 0 182 0 134 0 182 0 135] 
#[1 3 65 0 2 1 182 0 3 3 73 0 4 1 182 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 4 161 0 14 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 4 165 0 3] 
#[1 1 186 0 3 4 169 0 5] 
#[0 1 190 0 3 0 5] 
#[1 1 194 0 3 4 177 0 136 4 177 1 85] 
#[1 1 198 0 3 0 135 0 136] 
#[0 1 202 0 3 0 136] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 65 0 2 1 206 0 3 1 206 0 4 1 206 0 5 3 69 0 6 1 206 0 7 1 206 0 8 1 206 0 9 0 139 0 11 0 143 0 12 0 147 0 13 1 206 0 14 0 151 0 15 0 155 0 16 1 206 0 18 1 206 0 20 1 206 0 22 1 206 0 32 1 206 0 33 1 206 0 35 1 206 0 37 1 206 0 38 1 206 0 59 0 159 0 60 1 206 0 61 1 206 0 66 1 206 0 73 1 206 0 76 1 206 0 79 1 206 0 82 1 206 0 89 1 206 0 98 1 206 0 99 1 206 0 109 1 206 0 110 1 206 0 113 1 206 0 128 1 206 0 129 1 206 0 130 1 206 0 131 1 206 0 132 1 206 0 134 1 206 0 135 1 206 0 136 3 73 1 116 1 206 1 123] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 0 18 0 15 1 17 0 17 0 18 0 18 0 22 0 21 0 18 0 32 0 18 0 33 0 18 0 35 0 18 0 38 1 21 0 48 1 25 0 54 0 18 0 59 0 18 0 61 0 18 0 76 1 29 0 77 0 18 0 79 1 105 0 87 0 18 0 89 1 37 0 91 0 18 0 98 0 18 0 99 0 7 0 100 1 45 0 108 0 18 0 113 1 49 0 119 0 18 0 128 0 18 0 129 0 145 0 131 0 18 0 132 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 4 185 0 186 1 81 0 189 4 185 0 191 4 185 0 192 4 185 0 194 4 185 0 198 4 185 0 199 1 105 0 201 4 185 0 207 1 113 0 208 1 117 0 209 1 121 0 210 4 185 0 240 4 185 0 241 4 185 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 1 210 0 3 4 213 0 29 4 213 0 83 4 213 0 124 1 214 0 138 4 201 1 26 4 205 1 27 4 209 1 28 4 213 1 31] 
#[0 4 217 0 9] 
#[1 3 65 0 2 1 218 0 3 3 73 0 4 1 218 0 5 3 69 0 6 1 218 0 7 3 73 0 8 1 218 0 9 0 163 0 11 0 167 0 12 0 171 0 13 1 218 0 14 0 175 0 15 0 179 0 16 1 218 0 18 3 73 0 20 3 73 0 22 1 218 0 32 1 218 0 33 1 218 0 35 3 73 0 37 1 218 0 38 1 218 0 59 0 183 0 60 1 218 0 61 3 73 0 66 3 73 0 73 1 218 0 76 1 218 0 79 3 73 0 82 1 218 0 89 1 218 0 98 1 218 0 99 3 73 0 109 3 73 0 110 1 218 0 113 1 218 0 128 1 218 0 129 3 73 0 130 1 218 0 131 1 218 0 132 3 73 0 134 3 73 0 135 1 218 0 136 3 73 1 116 1 218 1 123] 
#[1 4 221 0 79 1 222 0 136 4 225 1 1] 
#[0 4 229 0 52] 
#[1 4 233 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 4 237 0 207 1 113 0 208 1 117 0 209 4 241 0 210 4 241 1 106 1 141 1 111 1 145 1 122] 
#[1 0 254 0 2 0 254 0 3 0 254 0 5 0 254 0 6 0 254 0 9 3 85 0 11 0 254 0 14 0 254 0 15 0 254 0 18 0 254 0 26 0 254 0 28 0 254 0 29 0 254 0 30 0 254 0 32 0 254 0 33 0 254 0 34 0 254 0 35 0 254 0 38 0 254 0 41 0 254 0 42 0 254 0 43 0 254 0 50 0 254 0 51 0 254 0 54 0 254 0 59 0 254 0 61 0 254 0 63 0 254 0 76 0 254 0 79 0 254 0 80 0 254 0 89 0 254 0 90 0 254 0 91 0 254 0 93 0 254 0 94 0 254 0 95 0 254 0 96 0 254 0 98 0 254 0 99 0 254 0 113 0 254 0 114 0 254 0 116 0 254 0 119 0 254 0 122 0 254 0 124 0 254 0 128 0 254 0 129 0 254 0 131 0 254 0 132 0 254 0 136 0 254 0 138 4 245 0 179 0 254 1 123] 
#[0 1 226 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 3 65 0 2 1 230 0 3 3 73 0 4 1 230 0 5 3 69 0 6 1 230 0 7 3 73 0 8 1 230 0 9 0 187 0 11 0 191 0 12 0 195 0 13 1 230 0 14 0 199 0 15 0 203 0 16 1 230 0 18 1 230 0 20 1 230 0 22 1 230 0 32 1 230 0 33 1 230 0 35 3 73 0 37 1 230 0 38 1 230 0 59 0 207 0 60 1 230 0 61 1 230 0 66 3 73 0 73 1 230 0 76 1 230 0 79 1 230 0 82 1 230 0 89 1 230 0 98 1 230 0 99 3 73 0 109 3 73 0 110 1 230 0 113 1 230 0 128 1 230 0 129 1 230 0 130 1 230 0 131 1 230 0 132 1 230 0 134 1 230 0 135 1 230 0 136 3 73 1 116 1 230 1 123] 
#[1 3 65 0 2 1 234 0 3 3 73 0 4 1 234 0 5 3 69 0 6 1 234 0 7 3 73 0 8 1 234 0 9 0 211 0 11 0 215 0 12 0 219 0 13 1 234 0 14 0 223 0 15 0 227 0 16 1 234 0 18 1 234 0 20 1 234 0 22 1 234 0 32 1 234 0 33 1 234 0 35 3 73 0 37 1 234 0 38 1 234 0 59 0 231 0 60 1 234 0 61 1 234 0 66 3 73 0 73 1 234 0 76 1 234 0 79 1 234 0 82 1 234 0 89 1 234 0 98 1 234 0 99 3 73 0 109 3 73 0 110 1 234 0 113 1 234 0 128 1 234 0 129 1 234 0 130 1 234 0 131 1 234 0 132 1 234 0 134 1 234 0 135 1 234 0 136 3 73 1 116 1 234 1 123] 
#[0 0 194 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 1 238 0 3 1 238 0 5 1 238 0 14 1 238 0 15 1 238 0 18 1 238 0 32 1 238 0 33 1 238 0 35 1 238 0 38 1 238 0 59 1 238 0 61 1 238 0 76 1 238 0 79 1 238 0 89 1 238 0 98 1 238 0 99 1 238 0 113 1 238 0 128 1 238 0 129 3 81 0 131 1 238 0 132 1 238 0 136 1 238 1 123] 
#[0 4 249 0 139] 
#[0 1 242 0 3 0 5 0 6 0 11 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 1 246 0 79 4 253 0 131 5 1 0 243] 
#[1 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 5 5 0 200 5 9 0 224 5 13 0 234] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 5 17 0 208 1 117 0 209 1 121 0 210 1 121 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 21 0 210 5 25 0 217 5 21 1 106 1 141 1 111 1 145 1 122] 
#[0 5 29 0 139] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 33 0 210 5 33 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 0 18 0 15 1 17 0 17 0 18 0 18 0 22 0 21 0 18 0 32 0 18 0 33 0 18 0 35 0 18 0 38 1 21 0 48 1 25 0 54 0 18 0 59 0 18 0 61 0 18 0 76 1 29 0 77 0 18 0 79 1 105 0 87 0 18 0 89 1 37 0 91 0 18 0 98 0 18 0 99 0 7 0 100 1 45 0 108 0 18 0 113 1 49 0 119 0 18 0 128 0 18 0 129 0 145 0 131 0 18 0 132 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 5 37 0 186 1 81 0 189 5 37 0 191 5 37 0 192 5 37 0 194 5 37 0 198 5 37 0 199 1 105 0 201 5 37 0 207 1 113 0 208 1 117 0 209 1 121 0 210 5 37 0 240 5 37 0 241 5 37 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 41 0 210 5 41 1 106 1 141 1 111 1 145 1 122] 
#[1 5 45 0 138 5 49 0 180] 
#[0 5 53 0 14] 
#[0 5 57 0 138] 
#[0 1 254 0 14 0 33 0 136] 
#[0 2 2 0 14 0 33 0 136] 
#[0 5 61 0 136] 
#[0 2 6 0 104] 
#[0 5 65 0 136] 
#[0 5 69 0 136] 
#[1 1 157 0 138 5 73 0 166 1 185 0 167] 
#[0 2 10 0 23 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 91 0 105 0 116 0 119 0 124] 
#[0 5 77 0 142] 
#[0 5 81 0 6] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 5 85 0 45 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 5 89 0 154 5 93 0 155 1 217 1 62 1 221 1 63] 
#[1 5 97 0 5 5 101 0 136] 
#[1 2 14 0 5 3 93 0 6 2 14 0 136] 
#[1 1 157 0 138 5 105 0 165 1 181 0 166 1 185 0 167] 
#[1 5 109 0 42 5 113 1 121] 
#[1 2 18 0 29 2 18 0 42 2 18 0 50 2 18 0 54 2 18 0 58 2 18 0 63 2 18 0 91 2 18 0 105 2 18 0 116 2 18 0 119 2 18 0 124 5 117 0 168] 
#[1 0 6 0 25 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 34 0 6 0 42 0 6 0 45 0 6 0 50 0 6 0 54 0 6 0 63 0 6 0 91 0 6 0 105 0 6 0 116 0 6 0 119 0 37 0 123 0 6 0 124 5 121 0 164] 
#[1 2 22 0 42 2 22 0 50 5 125 0 63 5 129 1 117] 
#[0 2 26 1 123] 
#[1 5 133 0 138 5 137 0 171 5 141 0 172] 
#[1 3 21 0 138 5 145 0 233] 
#[1 5 149 0 138 5 153 1 29] 
#[1 3 21 0 138 5 157 0 233] 
#[1 5 149 0 138 5 161 1 29 5 165 1 68 5 169 1 69] 
#[1 1 149 0 138 5 173 0 177 5 177 0 178] 
#[1 5 149 0 138 5 161 1 29 5 181 1 68 5 169 1 69] 
#[0 2 30 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 2 34 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 2 38 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 2 42 0 23 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 91 0 105 0 116 0 119 0 124] 
#[0 2 46 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 5 185 1 62 1 221 1 63] 
#[1 2 50 0 3 2 50 0 23 2 50 0 25 2 50 0 26 2 50 0 28 2 50 0 29 2 50 0 30 2 50 0 34 2 50 0 42 5 189 0 46 2 50 0 50 5 193 0 53 2 50 0 54 2 50 0 58 2 50 0 63 2 50 0 67 2 50 0 90 2 50 0 91 2 50 0 93 2 50 0 94 2 50 0 95 2 50 0 96 2 50 0 105 2 50 0 114 2 50 0 116 2 50 0 119 2 50 0 124 2 50 0 131 2 50 0 138 5 197 1 24] 
#[0 2 54 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 2 58 0 23 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 91 0 105 0 116 0 119 0 124] 
#[0 2 62 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 5 201 1 62 1 221 1 63] 
#[1 2 66 0 3 2 66 0 23 2 66 0 25 2 66 0 26 2 66 0 28 2 66 0 29 2 66 0 30 2 66 0 34 2 66 0 42 5 189 0 46 2 66 0 50 5 193 0 53 2 66 0 54 2 66 0 58 2 66 0 63 2 66 0 67 2 66 0 90 2 66 0 91 2 66 0 93 2 66 0 94 2 66 0 95 2 66 0 96 2 66 0 105 2 66 0 114 2 66 0 116 2 66 0 119 2 66 0 124 2 66 0 131 2 66 0 138 5 205 1 24] 
#[0 2 70 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 2 74 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 2 78 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 2 82 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 209 0 136] 
#[0 2 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 2 90 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 5 213 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 5 213 1 99 5 213 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 217 0 210 5 221 1 86 5 225 1 87 5 229 1 88 5 233 1 89 5 237 1 90 5 241 1 91 5 217 1 106 1 141 1 111 1 145 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 5 245 1 102 5 245 1 103 5 245 1 104 5 245 1 105 5 245 1 106 1 1 1 111 5 245 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 5 249 1 102 5 249 1 103 5 249 1 104 5 249 1 105 5 249 1 106 1 1 1 111 5 249 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 5 253 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 5 253 1 99 5 253 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 6 1 0 3 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 121 1 102 4 121 1 103 4 121 1 104 4 121 1 105 4 121 1 106 1 1 1 111 4 121 1 112 6 5 1 113 4 129 1 114 1 9 1 122] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 6 9 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 6 13 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 3 21 0 138 6 17 0 233] 
#[0 2 94 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 21 1 102 6 21 1 103 6 21 1 104 6 21 1 105 6 21 1 106 1 1 1 111 6 21 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 6 25 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 29 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 6 33 1 80 6 37 1 81 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 2 98 0 42 6 41 0 51 6 45 1 83] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 49 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 6 49 1 99 6 49 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 53 1 102 6 53 1 103 6 53 1 104 6 53 1 105 6 53 1 106 1 1 1 111 6 53 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 57 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 6 57 1 99 6 57 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 6 61 1 102 6 61 1 103 6 61 1 104 6 61 1 105 6 61 1 106 1 1 1 111 6 61 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 2 57 1 102 2 57 1 103 2 57 1 104 2 57 1 105 2 57 1 106 6 65 1 108 1 1 1 111 2 57 1 112 1 9 1 122] 
#[0 2 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 2 106 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 2 110 0 5 2 110 0 15 0 194 0 18 0 194 0 131] 
#[1 6 69 0 5 6 73 0 15] 
#[0 2 114 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 2 118 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 126 0 3 2 201 0 4 2 126 0 5 2 105 0 6 2 201 0 8 2 126 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 6 77 0 3 6 81 0 5] 
#[1 2 130 0 3 2 130 0 5 6 85 0 9] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 142 0 3 2 201 0 4 2 142 0 5 2 105 0 6 2 142 0 7 2 201 0 8 2 142 0 9 2 113 0 10 0 235 0 11 0 239 0 12 0 243 0 13 0 247 0 14 0 251 0 15 0 255 0 16 2 201 0 20 2 201 0 22 2 142 0 32 2 142 0 35 2 201 0 37 2 142 0 38 2 142 0 39 2 142 0 41 2 142 0 42 2 142 0 43 2 142 0 50 2 142 0 51 2 142 0 59 1 3 0 60 2 142 0 61 2 142 0 63 2 201 0 66 2 201 0 73 2 142 0 76 2 142 0 79 2 142 0 80 2 201 0 82 2 142 0 98 2 142 0 99 2 201 0 109 2 201 0 110 2 142 0 113 2 142 0 115 2 142 0 117 2 142 0 122 2 142 0 128 2 142 0 129 2 201 0 130 2 181 0 131 2 142 0 132 2 142 0 133 2 201 0 134 2 201 0 135 2 142 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 2 142 1 123] 
#[1 2 97 0 2 2 201 0 4 2 146 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 146 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 6 89 0 5 6 93 0 132] 
#[1 2 97 0 2 2 150 0 3 2 201 0 4 2 150 0 5 2 105 0 6 2 150 0 7 2 201 0 8 2 150 0 9 2 113 0 10 1 7 0 11 1 11 0 12 1 15 0 13 1 19 0 14 1 23 0 15 1 27 0 16 2 201 0 20 2 201 0 22 2 150 0 32 2 150 0 35 2 201 0 37 2 150 0 38 2 150 0 39 2 150 0 41 2 150 0 42 2 150 0 43 2 150 0 50 2 150 0 51 2 150 0 59 1 31 0 60 2 150 0 61 2 150 0 63 2 201 0 66 2 201 0 73 2 150 0 76 2 150 0 79 2 150 0 80 2 201 0 82 2 150 0 98 2 150 0 99 2 201 0 109 2 201 0 110 2 150 0 113 2 150 0 115 2 150 0 117 2 150 0 122 2 150 0 128 2 150 0 129 2 201 0 130 2 181 0 131 2 150 0 132 2 150 0 133 2 201 0 134 2 201 0 135 2 150 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 2 150 1 123] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 6 97 0 210 6 97 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 6 101 0 210 6 101 1 106 1 141 1 111 1 145 1 122] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 2 213 0 210 6 105 0 213 2 213 1 106 1 141 1 111 1 145 1 122] 
#[0 2 158 0 3] 
#[0 6 109 0 3] 
#[1 6 113 0 139 6 117 0 216] 
#[1 2 162 0 3 2 162 0 5 2 162 0 14 2 162 0 15 3 77 0 18 2 162 0 32 2 162 0 33 2 162 0 35 2 162 0 38 2 162 0 59 2 162 0 61 2 162 0 76 2 162 0 79 2 162 0 89 2 162 0 98 2 162 0 99 2 162 0 113 2 162 0 128 2 162 0 129 3 81 0 131 2 162 0 132 2 162 0 136 2 162 1 123] 
#[0 2 166 0 138] 
#[0 2 170 0 138] 
#[0 2 174 0 138] 
#[0 6 121 0 3] 
#[1 2 178 0 3 2 178 0 132 6 125 0 136] 
#[0 2 182 0 3 0 132 0 136] 
#[1 5 149 0 138 6 129 1 29] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 1 17 0 17 0 18 0 18 0 22 0 21 1 21 0 48 1 25 0 54 1 29 0 77 0 18 0 79 1 105 0 87 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 6 133 0 186 1 81 0 189 6 133 0 191 6 133 0 192 6 133 0 194 6 133 0 198 6 133 0 199 1 105 0 201 6 133 0 207 1 113 0 208 1 117 0 209 1 121 0 210 6 133 0 240 6 133 0 241 6 133 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 6 137 0 78] 
#[0 6 141 0 136] 
#[1 3 21 0 138 6 145 0 233] 
#[1 1 13 0 2 0 166 0 3 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 6 149 0 139 1 117 0 140 1 141 0 142 1 73 0 146 6 153 0 195 1 117 0 209 2 213 0 210 2 217 0 211 2 221 0 212 2 225 0 213 2 229 0 214 2 233 0 215 2 237 0 216 2 213 1 106 1 141 1 111 1 145 1 122] 
#[0 2 186 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 3 65 0 2 2 190 0 3 3 73 0 4 2 190 0 5 3 69 0 6 0 230 0 7 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 2 190 0 14 1 35 0 15 3 73 0 16 2 190 0 18 3 73 0 20 3 73 0 22 2 190 0 32 2 190 0 33 2 190 0 35 3 73 0 37 2 190 0 38 2 190 0 59 3 73 0 60 2 190 0 61 3 73 0 66 3 73 0 73 2 190 0 76 2 190 0 79 3 73 0 82 2 190 0 89 2 190 0 98 2 190 0 99 3 73 0 109 3 73 0 110 2 190 0 113 2 190 0 128 2 190 0 129 3 73 0 130 2 190 0 131 2 190 0 132 3 73 0 134 3 73 0 135 2 190 0 136 3 73 1 116 2 190 1 123] 
#[1 2 194 0 2 2 194 0 3 2 194 0 5 6 157 0 6 2 194 0 9 2 194 0 14 2 194 0 15 2 194 0 18 2 194 0 26 2 194 0 28 2 194 0 29 2 194 0 30 2 194 0 32 2 194 0 33 2 194 0 34 2 194 0 35 2 194 0 38 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 50 2 194 0 51 2 194 0 54 2 194 0 59 2 194 0 61 2 194 0 63 2 194 0 76 2 194 0 79 2 194 0 80 2 194 0 89 2 194 0 90 2 194 0 91 2 194 0 93 2 194 0 94 2 194 0 95 2 194 0 96 2 194 0 98 2 194 0 99 2 194 0 113 2 194 0 114 2 194 0 116 2 194 0 119 2 194 0 122 2 194 0 124 2 194 0 128 2 194 0 129 2 194 0 131 2 194 0 132 2 194 0 136 2 194 0 138 2 194 1 123] 
#[0 2 198 0 3 0 5 0 6 0 11 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 6 173 0 207 1 113 0 208 1 117 0 209 6 165 0 210 6 169 0 244 6 173 0 245 6 165 1 106 1 141 1 111 1 145 1 122] 
#[0 6 177 0 79] 
#[0 6 181 0 42] 
#[1 2 202 0 3 2 202 0 26 2 202 0 42 2 202 0 90 2 202 0 94 2 202 0 95 2 202 0 96 2 202 0 114 6 185 0 225] 
#[1 2 206 0 3 2 206 0 26 6 189 0 28 3 173 0 29 6 193 0 30 6 197 0 34 2 206 0 42 6 201 0 54 2 206 0 90 6 205 0 91 6 209 0 93 2 206 0 94 2 206 0 95 2 206 0 96 2 206 0 114 3 189 0 116 3 193 0 119 3 197 0 124 6 213 0 131 5 149 0 138 6 225 0 170 6 225 0 176 6 225 0 235 6 225 0 236 6 233 0 237 6 225 0 238 6 225 0 239 6 225 0 251 6 225 0 252 6 225 0 253 6 225 0 254 6 225 0 255 6 225 1 0 6 225 1 2 6 225 1 3 6 225 1 4 6 225 1 6 7 29 1 7 6 225 1 8 7 37 1 29 6 225 1 37 7 45 1 38 6 225 1 40 7 53 1 41 6 225 1 44 3 217 1 45 6 225 1 46 3 225 1 47 6 225 1 49 6 225 1 50 6 225 1 52 3 237 1 53 6 225 1 54 3 245 1 55 6 225 1 57 6 225 1 58 6 225 1 60 7 93 1 61 6 225 1 66 4 5 1 67] 
#[0 2 210 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 3 65 0 2 2 214 0 3 3 73 0 4 2 214 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 7 101 0 3 7 105 0 5] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 3 65 0 2 2 222 0 3 3 73 0 4 2 222 0 5 3 69 0 6 2 222 0 7 3 73 0 8 2 222 0 9 1 39 0 11 1 43 0 12 1 47 0 13 2 222 0 14 1 51 0 15 1 55 0 16 2 222 0 18 3 73 0 20 3 73 0 22 2 222 0 32 2 222 0 33 2 222 0 35 3 73 0 37 2 222 0 38 2 222 0 59 1 59 0 60 2 222 0 61 3 73 0 66 3 73 0 73 2 222 0 76 2 222 0 79 3 73 0 82 2 222 0 89 2 222 0 98 2 222 0 99 3 73 0 109 3 73 0 110 2 222 0 113 2 222 0 128 2 222 0 129 3 73 0 130 2 222 0 131 2 222 0 132 3 73 0 134 3 73 0 135 2 222 0 136 3 73 1 116 2 222 1 123] 
#[1 2 226 0 3 2 226 0 5 2 226 0 14 2 226 0 15 2 226 0 32 2 226 0 33 2 226 0 35 2 226 0 38 2 226 0 59 2 226 0 61 2 226 0 76 2 226 0 79 2 226 0 89 2 226 0 98 2 226 0 99 2 226 0 113 2 226 0 128 2 226 0 129 3 81 0 131 2 226 0 132 2 226 0 136 2 226 1 123] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 7 109 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 2 230 0 5 0 15] 
#[1 7 113 0 5 7 117 0 15] 
#[1 7 121 0 2 0 18 0 6 0 18 0 11 1 17 0 17 0 18 0 18 0 22 0 21 7 125 0 28 0 18 0 33 7 185 0 36 1 21 0 48 1 25 0 54 7 185 0 65 1 29 0 77 7 137 0 78 1 105 0 87 0 18 0 89 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 7 141 0 181 7 145 0 182 7 149 0 185 7 153 0 186 1 81 0 189 7 157 0 191 7 161 0 192 7 153 0 194 7 149 0 197 7 153 0 198 7 153 0 199 1 105 0 201 7 153 0 207 1 113 0 208 1 117 0 209 1 121 0 210 7 149 0 218 7 149 0 219 7 149 0 222 1 125 0 240 7 153 0 241 7 153 0 242 7 149 0 246 7 185 0 247 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 2 234 0 5 0 6 0 33 0 60 0 89 0 136] 
#[0 2 238 0 23 0 25 0 29 0 45 0 54 0 67 0 91 0 116 0 119 0 123 0 124] 
#[0 2 242 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 123 0 124] 
#[0 2 246 0 42 0 50 0 58 0 63 0 65 1 123] 
#[0 2 250 0 5 0 136] 
#[0 2 254 0 5 0 136] 
#[0 3 2 1 123] 
#[0 7 189 0 138] 
#[0 3 6 0 23 0 25 0 29 0 45 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 7 193 0 6] 
#[1 1 157 0 138 7 197 0 167] 
#[0 3 10 0 31] 
#[1 3 121 0 5 7 201 0 136] 
#[0 7 205 0 6] 
#[0 3 14 1 123] 
#[1 3 173 0 29 3 18 0 42 3 18 0 50 3 177 0 54 3 18 0 58 3 18 0 63 3 185 0 91 7 209 0 105 3 189 0 116 3 193 0 119 3 197 0 124 7 213 0 169 7 213 0 170 7 213 0 173 7 213 0 176 7 213 0 255 7 213 1 2 7 213 1 44 3 217 1 45 7 213 1 46 3 225 1 47 7 213 1 52 3 237 1 53 7 213 1 54 3 245 1 55 7 213 1 66 4 5 1 67] 
#[1 3 22 0 25 3 22 0 28 3 22 0 29 3 22 0 30 3 22 0 34 3 22 0 42 3 22 0 45 3 22 0 50 3 22 0 54 3 22 0 63 3 22 0 91 3 22 0 105 3 22 0 116 3 22 0 119 3 22 0 124 7 241 1 34] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 14 0 50 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 7 245 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 3 26 0 42 7 249 0 50 7 253 1 118] 
#[1 8 1 0 9 3 30 0 14 8 5 1 5] 
#[1 3 34 0 3 3 34 0 23 3 34 0 25 3 34 0 26 3 34 0 28 3 34 0 29 3 34 0 30 3 34 0 34 3 34 0 42 3 34 0 45 3 34 0 50 3 34 0 54 3 34 0 58 3 34 0 63 3 34 0 67 3 34 0 90 3 34 0 91 3 34 0 93 3 34 0 94 3 34 0 95 3 34 0 96 3 34 0 105 3 34 0 114 3 34 0 116 3 34 0 119 3 34 0 124 3 34 0 131 5 133 0 138 8 9 0 172] 
#[0 3 38 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 2 253 0 2 0 174 0 9 0 174 0 136 8 13 0 193] 
#[0 3 42 0 3 0 5 0 9 0 132 0 136] 
#[1 8 17 0 5 8 21 0 136] 
#[1 2 253 0 2 0 174 0 136 8 25 0 193] 
#[1 8 17 0 5 8 29 0 9] 
#[1 3 46 0 3 3 46 0 23 3 46 0 25 3 46 0 26 3 46 0 28 3 46 0 29 3 46 0 30 3 46 0 34 3 46 0 42 3 46 0 45 3 46 0 50 3 46 0 54 3 46 0 58 3 46 0 63 3 46 0 67 3 46 0 90 3 46 0 91 3 46 0 93 3 46 0 94 3 46 0 95 3 46 0 96 3 46 0 105 3 46 0 114 3 46 0 116 3 46 0 119 3 46 0 124 3 46 0 131 5 149 0 138 5 161 1 29 8 33 1 69] 
#[0 3 50 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 3 54 0 3 3 54 0 23 3 54 0 25 3 54 0 26 3 54 0 28 3 54 0 29 3 54 0 30 3 54 0 34 3 54 0 42 3 54 0 45 3 54 0 50 3 54 0 54 3 54 0 58 3 54 0 63 3 54 0 67 3 54 0 90 3 54 0 91 3 54 0 93 3 54 0 94 3 54 0 95 3 54 0 96 3 54 0 105 3 54 0 114 3 54 0 116 3 54 0 119 3 54 0 124 3 54 0 131 1 149 0 138 8 37 0 178] 
#[0 3 58 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 3 62 0 3 3 62 0 23 3 62 0 25 3 62 0 26 3 62 0 28 3 62 0 29 3 62 0 30 3 62 0 34 3 62 0 42 3 62 0 45 3 62 0 50 3 62 0 54 3 62 0 58 3 62 0 63 3 62 0 67 3 62 0 90 3 62 0 91 3 62 0 93 3 62 0 94 3 62 0 95 3 62 0 96 3 62 0 105 3 62 0 114 3 62 0 116 3 62 0 119 3 62 0 124 3 62 0 131 5 149 0 138 5 161 1 29 8 33 1 69] 
#[0 3 66 0 23 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 91 0 105 0 116 0 119 0 124] 
#[1 8 41 0 136 8 45 0 138 8 49 0 142] 
#[0 8 53 0 136] 
#[1 3 70 0 3 3 70 0 19 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 40 3 70 0 42 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 49 3 70 0 50 3 70 0 53 3 70 0 54 3 70 0 58 3 70 0 63 3 70 0 64 3 70 0 67 3 70 0 69 3 70 0 72 3 70 0 75 3 70 0 84 3 70 0 85 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 91 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 96 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 138 8 57 1 20] 
#[0 3 74 0 23 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 91 0 105 0 116 0 119 0 124] 
#[1 3 70 0 3 3 70 0 19 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 40 3 70 0 42 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 49 3 70 0 50 3 70 0 53 3 70 0 54 3 70 0 58 3 70 0 63 3 70 0 64 3 70 0 67 3 70 0 69 3 70 0 72 3 70 0 75 3 70 0 84 3 70 0 85 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 91 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 96 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 138 8 61 1 20] 
#[0 3 78 0 6 0 23 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 91 0 105 0 116 0 119 0 124] 
#[0 3 82 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136] 
#[1 3 65 0 2 3 73 0 4 3 86 0 5 3 69 0 6 8 65 0 7 3 73 0 8 3 86 0 9 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 8 69 0 41 3 90 0 42 8 73 1 92] 
#[1 1 194 0 41 1 194 0 42 8 77 0 136 8 81 1 85] 
#[0 3 94 0 41 0 42 0 136] 
#[0 8 85 0 9] 
#[0 8 89 0 5] 
#[1 3 98 0 5 3 102 0 9] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 8 101 0 39 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 8 101 0 117 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 8 101 1 97 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 8 105 0 38 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 8 109 0 41 3 106 0 42 3 106 0 43 3 106 0 50 3 106 0 51 3 106 0 63 3 106 0 80 3 106 0 122 3 106 0 136 3 106 1 123] 
#[0 3 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 8 113 0 3 6 81 0 5] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 117 1 102 8 117 1 103 8 117 1 104 8 117 1 105 8 117 1 106 1 1 1 111 8 117 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 121 1 102 8 121 1 103 8 121 1 104 8 121 1 105 8 121 1 106 1 1 1 111 8 121 1 112 1 9 1 122] 
#[0 3 114 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 3 118 0 41 3 118 0 42 3 118 0 43 3 118 0 50 3 118 0 51 2 201 0 60 3 118 0 63 2 201 0 66 2 201 0 73 3 118 0 80 2 201 0 82 2 201 0 109 2 201 0 110 3 118 0 122 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 3 118 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116 3 118 1 123] 
#[1 3 21 0 138 8 125 0 233] 
#[1 8 129 0 41 3 122 0 42 3 122 0 51 4 21 0 136 8 133 1 82] 
#[1 8 129 0 41 3 122 0 42 3 122 0 51 6 25 0 80 8 137 1 81 8 141 1 82] 
#[0 3 126 0 41 0 42 0 51 0 80] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 145 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[0 8 149 0 42] 
#[0 3 130 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 3 134 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 3 134 0 38 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 3 138 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 2 97 0 2 2 201 0 4 3 142 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 3 142 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 3 146 0 5 0 132] 
#[1 1 13 0 2 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 15 1 17 0 17 0 18 0 18 0 22 0 21 1 21 0 48 1 25 0 54 1 29 0 77 1 105 0 87 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 1 53 0 134 1 57 0 135 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 8 153 0 186 1 81 0 189 1 125 0 191 1 125 0 192 8 153 0 194 8 153 0 198 8 153 0 199 1 105 0 201 8 153 0 207 1 113 0 208 1 117 0 209 1 121 0 210 1 125 0 240 8 153 0 241 8 153 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 3 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 3 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 4 121 1 102 4 121 1 103 4 121 1 104 4 121 1 105 4 121 1 106 1 1 1 111 4 121 1 112 8 157 1 114 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 161 1 102 8 161 1 103 8 161 1 104 8 161 1 105 8 161 1 106 1 1 1 111 8 161 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 8 165 1 102 8 165 1 103 8 165 1 104 8 165 1 105 8 165 1 106 1 1 1 111 8 165 1 112 1 9 1 122] 
#[0 3 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 3 65 0 2 3 162 0 3 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 162 0 136 3 73 1 116] 
#[1 3 65 0 2 3 166 0 3 3 73 0 4 3 166 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 3 170 0 3 0 5] 
#[0 3 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[0 4 157 0 9] 
#[0 3 178 0 3 0 136] 
#[0 3 182 0 9 0 79 0 136] 
#[1 4 213 0 29 4 213 0 83 4 213 0 124 1 214 0 138 8 169 1 28 4 213 1 31] 
#[1 3 186 0 3 8 17 0 5 8 173 0 9 3 186 0 132 3 186 0 136] 
#[1 3 77 0 18 4 221 0 79 3 81 0 131 1 222 0 136 8 177 1 1] 
#[0 3 190 0 136] 
#[1 3 70 0 3 3 70 0 5 3 70 0 14 3 70 0 15 3 70 0 18 3 70 0 19 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 32 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 38 3 70 0 40 3 70 0 42 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 49 3 70 0 50 3 70 0 53 3 70 0 54 3 70 0 58 3 70 0 59 3 70 0 61 3 70 0 63 3 70 0 64 3 70 0 67 3 70 0 69 3 70 0 72 3 70 0 75 3 70 0 76 3 70 0 79 3 70 0 84 3 70 0 85 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 91 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 96 3 70 0 98 3 70 0 99 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 113 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 128 3 70 0 129 3 70 0 131 3 70 0 132 3 70 0 136 3 70 0 138 8 181 1 20 3 70 1 123] 
#[1 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 8 185 0 200 5 9 0 224 5 13 0 234] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 1 63 0 5 0 182 0 6 0 182 0 8 4 157 0 9 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 20 0 182 0 22 0 182 0 37 0 182 0 60 0 182 0 66 0 182 0 73 0 182 0 82 0 182 0 109 0 182 0 110 0 182 0 130 0 182 0 134 0 182 0 135] 
#[0 8 193 0 3] 
#[0 8 197 0 138] 
#[0 3 194 0 5 0 132] 
#[1 3 65 0 2 3 73 0 4 3 198 0 5 3 69 0 6 0 230 0 7 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 198 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 8 201 0 5 8 205 0 132] 
#[0 3 202 0 5 0 132] 
#[1 1 13 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 0 18 0 15 1 17 0 17 0 18 0 18 0 22 0 21 8 209 0 29 0 18 0 32 0 18 0 33 0 18 0 35 0 18 0 38 1 21 0 48 1 25 0 54 0 18 0 59 0 18 0 61 0 18 0 76 1 29 0 77 0 18 0 79 1 105 0 87 0 18 0 89 1 37 0 91 0 18 0 98 0 18 0 99 0 7 0 100 1 45 0 108 0 18 0 113 1 49 0 119 0 18 0 128 0 18 0 129 0 145 0 131 0 18 0 132 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 8 213 0 186 1 81 0 189 8 213 0 191 8 213 0 192 8 213 0 194 8 213 0 198 8 213 0 199 1 105 0 201 8 213 0 207 1 113 0 208 1 117 0 209 1 121 0 210 8 213 0 240 8 213 0 241 8 213 0 242 1 121 1 106 1 141 1 111 1 145 1 122 0 18 1 123] 
#[0 3 206 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 3 210 0 3 8 217 0 26 3 210 0 42 8 221 0 90 8 225 0 94 8 229 0 95 8 233 0 96 8 237 0 114 8 241 0 202 8 245 0 226 8 245 0 227 8 245 0 228 8 245 0 229 8 245 0 230] 
#[1 9 9 0 30 9 13 0 34 3 177 0 54 9 17 0 81 3 185 0 91 6 209 0 93 3 189 0 116 3 197 0 124 9 21 1 7 9 25 1 45 9 29 1 47 9 33 1 53 9 37 1 55 9 41 1 67] 
#[1 3 21 0 138 9 45 0 233] 
#[1 3 21 0 138 9 49 0 233] 
#[1 3 21 0 138 9 53 0 233] 
#[1 3 21 0 138 9 57 0 233] 
#[0 9 61 0 138] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 9 65 0 210 9 65 1 106 1 141 1 111 1 145 1 122] 
#[0 3 214 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 218 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 222 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 226 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 9 69 0 28 6 193 0 30 6 197 0 34 3 177 0 54 3 185 0 91 9 73 0 253 9 77 0 254 9 81 0 255 9 85 1 0 9 89 1 2 9 93 1 3 9 97 1 4 9 73 1 37 7 45 1 38 9 77 1 40 7 53 1 41 9 81 1 44 3 217 1 45 9 81 1 46 3 225 1 47 9 85 1 49 9 85 1 50 9 89 1 52 3 237 1 53 9 89 1 54 3 245 1 55 9 93 1 57 9 93 1 58 9 97 1 60 7 93 1 61] 
#[0 3 230 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 234 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 238 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 242 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 246 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 250 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 3 254 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 2 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 6 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 10 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 14 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 18 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 22 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 26 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 8 17 0 5 9 101 0 9] 
#[0 4 30 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 4 34 0 3 4 34 0 26 4 34 0 28 4 34 0 29 4 34 0 30 4 34 0 34 4 34 0 42 5 189 0 46 5 193 0 53 4 34 0 54 4 34 0 90 4 34 0 91 4 34 0 93 4 34 0 94 4 34 0 95 4 34 0 96 4 34 0 114 4 34 0 116 4 34 0 119 4 34 0 124 4 34 0 131 4 34 0 138 9 105 1 24] 
#[0 4 38 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 4 42 0 3 4 42 0 26 4 42 0 28 4 42 0 29 4 42 0 30 4 42 0 34 4 42 0 42 5 189 0 46 5 193 0 53 4 42 0 54 4 42 0 90 4 42 0 91 4 42 0 93 4 42 0 94 4 42 0 95 4 42 0 96 4 42 0 114 4 42 0 116 4 42 0 119 4 42 0 124 4 42 0 131 4 42 0 138 9 109 1 24] 
#[0 4 46 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 50 0 54 0 58 0 63 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 50 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 50 0 54 0 58 0 63 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 54 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 58 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 62 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 50 0 54 0 58 0 63 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 66 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 50 0 54 0 58 0 63 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 70 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 74 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 78 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 4 82 0 3 4 82 0 26 4 82 0 28 4 82 0 29 4 82 0 30 4 82 0 34 4 82 0 42 5 189 0 46 5 193 0 53 4 82 0 54 4 82 0 90 4 82 0 91 4 82 0 93 4 82 0 94 4 82 0 95 4 82 0 96 4 82 0 114 4 82 0 116 4 82 0 119 4 82 0 124 4 82 0 131 4 82 0 138 9 113 1 24] 
#[0 4 86 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 15 0 16 0 18 0 20 0 22 0 32 0 33 0 35 0 37 0 38 0 59 0 60 0 61 0 66 0 73 0 76 0 79 0 82 0 89 0 98 0 99 0 109 0 110 0 113 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 123] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 9 117 0 210 9 117 1 106 1 141 1 111 1 145 1 122] 
#[0 4 94 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 9 121 0 138] 
#[0 4 98 0 2 0 3 0 5 0 6 0 9 0 14 0 15 0 18 0 26 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 61 0 63 0 76 0 79 0 80 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[1 1 13 0 2 0 166 0 3 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 9 125 0 138 2 209 0 139 1 117 0 140 1 141 0 142 1 73 0 146 9 129 0 183 9 133 0 184 1 117 0 209 2 213 0 210 2 217 0 211 2 221 0 212 2 225 0 213 2 229 0 214 2 233 0 215 2 237 0 216 2 213 1 106 1 141 1 111 1 145 1 122] 
#[1 4 102 0 2 4 102 0 19 4 102 0 28 4 102 0 29 4 102 0 30 4 102 0 33 4 102 0 34 4 102 0 42 4 102 0 54 4 102 0 56 9 137 0 79 4 102 0 89 4 102 0 90 4 102 0 91 4 102 0 93 4 102 0 94 4 102 0 95 4 102 0 96 4 102 0 107 4 102 0 114 4 102 0 116 4 102 0 119 4 102 0 124 4 102 0 131 4 102 0 136 4 102 0 138 9 141 0 220] 
#[0 4 106 0 2 0 28 0 33 0 42 0 54 0 89 0 91 0 93 0 131 0 136] 
#[0 4 110 0 2 0 28 0 33 0 42 0 54 0 89 0 91 0 93 0 131 0 136] 
#[1 9 145 0 2 4 114 0 28 4 114 0 29 4 114 0 30 4 114 0 34 4 114 0 42 4 114 0 54 4 114 0 90 4 114 0 91 4 114 0 93 4 114 0 94 4 114 0 95 4 114 0 96 4 114 0 114 4 114 0 116 4 114 0 119 4 114 0 124 4 114 0 131 4 114 0 138 9 149 0 231] 
#[0 4 118 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138 1 123] 
#[0 9 153 0 136] 
#[1 9 157 0 33 9 157 0 89 1 6 0 136 9 157 0 190] 
#[1 0 194 0 18 9 161 0 33 9 161 0 89 0 194 0 131 1 6 0 136 9 161 0 190] 
#[1 4 122 0 3 0 202 0 18 4 122 0 23 4 122 0 25 4 122 0 26 4 122 0 28 4 122 0 29 4 122 0 30 4 122 0 34 4 122 0 42 4 122 0 45 4 122 0 50 4 122 0 54 4 122 0 58 4 122 0 63 4 122 0 67 4 122 0 90 4 122 0 91 4 122 0 93 4 122 0 94 4 122 0 95 4 122 0 96 4 122 0 105 4 122 0 114 4 122 0 116 4 122 0 119 4 122 0 124 1 67 0 131 4 122 0 138 4 122 1 123] 
#[1 4 126 0 3 0 206 0 18 4 126 0 23 4 126 0 25 4 126 0 26 4 126 0 28 4 126 0 29 4 126 0 30 4 126 0 34 4 126 0 42 4 126 0 45 4 126 0 50 4 126 0 54 4 126 0 58 4 126 0 63 4 126 0 67 4 126 0 90 4 126 0 91 4 126 0 93 4 126 0 94 4 126 0 95 4 126 0 96 4 126 0 105 4 126 0 114 4 126 0 116 4 126 0 119 4 126 0 124 1 71 0 131 4 126 0 138 4 126 1 123] 
#[0 4 130 0 33 0 89 0 136] 
#[0 4 134 0 33 0 89 0 136] 
#[0 4 138 0 33 0 89 0 136] 
#[0 4 142 0 33 0 89 0 136] 
#[0 4 146 0 33 0 89 0 136] 
#[1 9 145 0 2 4 114 0 28 4 150 0 33 4 114 0 42 4 114 0 54 4 150 0 89 4 114 0 91 4 114 0 93 4 114 0 131 4 150 0 136 9 165 0 231] 
#[0 9 169 0 136] 
#[0 4 154 1 123] 
#[1 4 158 0 5 3 93 0 6 4 158 0 136] 
#[0 4 162 0 42] 
#[0 4 166 1 123] 
#[1 9 173 0 138 9 177 0 174 9 181 0 175] 
#[0 4 170 0 29 0 42 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 4 174 0 29 0 42 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 4 178 0 29 0 42 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 4 182 0 29 0 42 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 4 186 0 29 0 42 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 4 190 0 29 0 42 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 4 194 0 29 0 42 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 9 185 0 25 9 69 0 28 3 173 0 29 6 193 0 30 6 197 0 34 4 198 0 42 9 189 0 45 4 198 0 50 3 177 0 54 4 198 0 63 3 185 0 91 7 209 0 105 3 189 0 116 3 193 0 119 3 197 0 124 9 209 0 170 9 209 0 173 9 209 0 176 9 205 1 33 9 209 1 35 9 209 1 36 9 217 1 37 9 221 1 38 9 209 1 39 9 229 1 40 9 233 1 41 9 209 1 43 3 213 1 44 3 217 1 45 3 221 1 46 3 225 1 47 9 209 1 48 9 245 1 49 9 249 1 50 9 209 1 51 3 233 1 52 3 237 1 53 3 241 1 54 3 245 1 55 9 209 1 56 10 5 1 57 10 9 1 58 9 209 1 59 10 17 1 60 10 21 1 61 9 209 1 66 4 5 1 67 9 209 1 119] 
#[1 4 202 0 42 4 202 0 50 4 21 0 136] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 33 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 5 109 0 42 10 37 1 121] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 17 0 18 0 18 0 22 0 21 0 18 0 32 0 18 0 35 0 18 0 38 1 21 0 48 1 25 0 54 0 18 0 59 0 18 0 61 0 18 0 76 1 29 0 77 0 18 0 79 1 105 0 87 1 37 0 91 0 18 0 98 0 18 0 99 0 7 0 100 1 45 0 108 0 18 0 113 1 49 0 119 0 18 0 128 0 18 0 129 0 145 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 10 41 0 186 1 81 0 189 10 41 0 191 10 41 0 192 10 41 0 194 10 41 0 198 10 41 0 199 1 105 0 201 10 41 0 207 1 113 0 208 1 117 0 209 1 121 0 210 10 41 0 240 10 41 0 241 10 41 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 10 45 0 14] 
#[0 4 206 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 8 1 0 9 3 30 0 136 10 49 1 5] 
#[0 10 53 0 138] 
#[0 4 210 0 23 0 25 0 29 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 10 57 0 136] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 17 0 18 0 18 0 22 0 21 0 18 0 33 1 21 0 48 1 25 0 54 1 29 0 77 1 105 0 87 0 18 0 89 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 10 61 0 186 1 81 0 189 10 61 0 191 10 61 0 192 10 61 0 194 10 61 0 198 10 61 0 199 1 105 0 201 10 61 0 207 1 113 0 208 1 117 0 209 1 121 0 210 10 61 0 240 10 61 0 241 10 61 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 4 214 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 218 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 4 222 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[1 10 65 0 74 10 69 0 136] 
#[1 10 73 0 74 10 77 0 136] 
#[0 4 226 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[1 4 230 0 3 10 189 0 19 4 230 0 23 10 189 0 24 4 230 0 25 4 230 0 26 10 189 0 27 4 230 0 28 4 230 0 29 4 230 0 30 10 189 0 33 4 230 0 34 10 97 0 35 10 189 0 40 4 230 0 42 10 189 0 44 4 230 0 45 5 189 0 46 10 189 0 47 10 189 0 49 4 230 0 50 5 193 0 53 4 230 0 54 4 230 0 58 4 230 0 63 10 189 0 64 4 230 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 4 230 0 90 4 230 0 91 4 230 0 93 4 230 0 94 4 230 0 95 4 230 0 96 10 189 0 101 10 189 0 102 4 230 0 105 10 189 0 106 10 189 0 111 10 189 0 112 4 230 0 114 4 230 0 116 4 230 0 119 10 189 0 121 4 230 0 124 10 189 0 125 4 230 0 131 4 230 0 138 10 177 1 22 10 177 1 23 10 177 1 24 10 189 1 25] 
#[1 4 234 0 3 10 189 0 19 4 234 0 23 10 189 0 24 4 234 0 25 4 234 0 26 10 189 0 27 4 234 0 28 4 234 0 29 4 234 0 30 10 189 0 33 4 234 0 34 10 97 0 35 10 189 0 40 4 234 0 42 10 189 0 44 4 234 0 45 5 189 0 46 10 189 0 47 10 189 0 49 4 234 0 50 5 193 0 53 4 234 0 54 4 234 0 58 4 234 0 63 10 189 0 64 4 234 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 4 234 0 90 4 234 0 91 4 234 0 93 4 234 0 94 4 234 0 95 4 234 0 96 10 189 0 101 10 189 0 102 4 234 0 105 10 189 0 106 10 189 0 111 10 189 0 112 4 234 0 114 4 234 0 116 4 234 0 119 10 189 0 121 4 234 0 124 10 189 0 125 4 234 0 131 4 234 0 138 10 177 1 22 10 177 1 23 10 177 1 24 10 189 1 25] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 10 193 0 210 10 193 1 106 1 141 1 111 1 145 1 122] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 197 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[0 10 201 0 42] 
#[1 1 13 0 2 1 17 0 17 2 158 0 41 2 158 0 42 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 217 0 210 10 205 1 88 5 233 1 89 5 237 1 90 5 241 1 91 5 217 1 106 1 141 1 111 1 145 1 122] 
#[0 4 238 0 41 0 42] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 209 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 10 209 1 99 10 209 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 5 217 0 210 10 213 1 91 5 217 1 106 1 141 1 111 1 145 1 122] 
#[0 4 242 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[0 4 246 0 2 0 17 0 62 0 70 0 71 0 77 0 131 0 134 0 135 0 138 0 140 0 142 0 146 1 122] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 217 1 102 10 217 1 103 10 217 1 104 10 217 1 105 10 217 1 106 1 1 1 111 10 217 1 112 1 9 1 122] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 221 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 10 221 1 99 10 221 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 225 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 10 225 1 99 10 225 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[0 4 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 10 229 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 10 233 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 8 1 0 9 3 30 0 38 10 237 1 5] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 10 241 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[0 4 254 0 42 0 51] 
#[0 5 2 0 41 0 42 0 51 0 80] 
#[0 5 6 0 42 0 51] 
#[1 5 10 0 42 4 21 0 136] 
#[0 5 14 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 5 18 0 5 5 18 0 15 0 194 0 18 0 194 0 131] 
#[1 5 22 0 3 5 22 0 5 6 85 0 9] 
#[1 2 97 0 2 5 26 0 3 2 201 0 4 5 26 0 5 2 105 0 6 2 201 0 8 5 26 0 9 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 2 97 0 2 2 201 0 4 5 30 0 5 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 5 30 0 132 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 5 34 0 3 0 132 0 136] 
#[1 1 13 0 2 0 18 0 3 0 18 0 6 0 18 0 11 0 18 0 14 1 17 0 17 0 18 0 18 0 22 0 21 1 21 0 48 1 25 0 54 1 29 0 77 1 105 0 87 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 0 18 0 132 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 10 245 0 186 1 81 0 189 10 245 0 191 10 245 0 192 10 245 0 194 10 245 0 198 10 245 0 199 1 105 0 201 10 245 0 207 1 113 0 208 1 117 0 209 1 121 0 210 10 245 0 240 10 245 0 241 10 245 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[0 10 249 0 136] 
#[1 5 38 0 3 5 38 0 5 5 38 0 14 5 38 0 15 5 38 0 18 10 189 0 19 5 38 0 23 10 189 0 24 5 38 0 25 5 38 0 26 10 189 0 27 5 38 0 28 5 38 0 29 5 38 0 30 5 38 0 32 1 75 0 33 5 38 0 34 1 79 0 35 5 38 0 38 10 189 0 40 5 38 0 42 10 189 0 44 5 38 0 45 5 189 0 46 10 189 0 47 10 189 0 49 5 38 0 50 5 193 0 53 5 38 0 54 5 38 0 58 5 38 0 59 5 38 0 61 5 38 0 63 10 189 0 64 5 38 0 67 10 189 0 69 10 125 0 72 10 189 0 75 5 38 0 76 5 38 0 79 10 189 0 84 10 189 0 85 10 189 0 88 1 83 0 89 5 38 0 90 5 38 0 91 5 38 0 93 5 38 0 94 5 38 0 95 5 38 0 96 5 38 0 98 5 38 0 99 10 189 0 101 10 189 0 102 5 38 0 105 10 189 0 106 10 189 0 111 10 189 0 112 5 38 0 113 5 38 0 114 5 38 0 116 5 38 0 119 10 189 0 121 5 38 0 124 10 189 0 125 5 38 0 128 5 38 0 129 5 38 0 131 5 38 0 132 5 38 0 136 5 38 0 138 10 177 1 22 10 177 1 23 10 177 1 24 10 189 1 25 5 38 1 123] 
#[0 10 253 0 42] 
#[1 11 1 0 139 11 5 0 196] 
#[0 5 42 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 5 46 0 2 0 3 0 5 0 9 0 14 0 15 0 18 0 26 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 61 0 63 0 76 0 79 0 80 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 11 9 0 207 1 113 0 208 1 117 0 209 6 165 0 210 11 9 0 245 6 165 1 106 1 141 1 111 1 145 1 122] 
#[0 5 50 0 79] 
#[0 5 54 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[1 5 58 0 3 5 58 0 5 5 58 0 14 5 58 0 15 3 77 0 18 5 58 0 32 5 58 0 33 5 58 0 35 5 58 0 38 5 58 0 59 5 58 0 61 5 58 0 76 5 58 0 79 5 58 0 89 5 58 0 98 5 58 0 99 5 58 0 113 5 58 0 128 5 58 0 129 3 81 0 131 5 58 0 132 5 58 0 136 5 58 1 123] 
#[0 11 13 0 138] 
#[1 1 250 0 3 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 11 17 0 234] 
#[1 1 250 0 3 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 11 21 0 234] 
#[1 1 250 0 3 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 11 25 0 234] 
#[1 1 250 0 3 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 11 29 0 234] 
#[1 11 33 0 90 11 37 0 94] 
#[0 5 62 0 3 0 42] 
#[0 5 66 0 3 0 26 0 42 0 90 0 94 0 95 0 96 0 114] 
#[0 5 70 0 3 0 26 0 42 0 90 0 94 0 95 0 96 0 114] 
#[0 5 74 0 3 0 26 0 42 0 90 0 94 0 95 0 96 0 114] 
#[0 5 78 0 3 0 26 0 42 0 90 0 94 0 95 0 96 0 114] 
#[0 5 82 0 3 0 26 0 42 0 90 0 94 0 95 0 96 0 114] 
#[1 3 21 0 138 11 41 0 233] 
#[1 3 21 0 138 11 45 0 233] 
#[1 3 21 0 138 11 49 0 233] 
#[0 5 86 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 90 0 3 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 5 94 0 3 5 94 0 23 5 94 0 25 5 94 0 26 5 94 0 28 5 94 0 29 5 94 0 30 5 94 0 34 5 94 0 42 5 189 0 46 5 193 0 53 5 94 0 54 5 94 0 67 5 94 0 90 5 94 0 91 5 94 0 93 5 94 0 94 5 94 0 95 5 94 0 96 5 94 0 114 5 94 0 116 5 94 0 119 5 94 0 124 5 94 0 131 5 94 0 138 5 197 1 24] 
#[0 5 98 0 3 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 5 102 0 3 5 102 0 23 5 102 0 25 5 102 0 26 5 102 0 28 5 102 0 29 5 102 0 30 5 102 0 34 5 102 0 42 5 189 0 46 5 193 0 53 5 102 0 54 5 102 0 67 5 102 0 90 5 102 0 91 5 102 0 93 5 102 0 94 5 102 0 95 5 102 0 96 5 102 0 114 5 102 0 116 5 102 0 119 5 102 0 124 5 102 0 131 5 102 0 138 5 205 1 24] 
#[0 5 106 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 2 253 0 2 0 174 0 136 11 53 0 193] 
#[1 11 57 0 2 5 110 0 136 11 61 1 42] 
#[1 2 253 0 2 0 174 0 9 11 65 0 14 0 174 0 136 8 13 0 193] 
#[1 2 253 0 2 11 69 0 14 0 174 0 136 8 25 0 193] 
#[1 5 114 0 9 5 114 0 32 5 114 0 35 5 114 0 59 5 114 0 61 5 114 0 76 5 114 0 98 5 114 0 99 5 114 0 113 5 114 0 128 5 114 0 129 11 73 0 131 5 114 0 136 11 77 1 10] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 11 81 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 9 9 0 30 9 13 0 34 3 177 0 54 9 17 0 81 3 185 0 91 9 25 1 45 9 29 1 47 9 33 1 53 9 37 1 55] 
#[0 5 118 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 122 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 126 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 130 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 134 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 138 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 5 142 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 1 13 0 2 0 18 0 6 0 18 0 11 1 17 0 17 0 18 0 18 0 22 0 21 0 18 0 33 1 21 0 48 1 25 0 54 1 29 0 77 1 105 0 87 0 18 0 89 1 37 0 91 0 7 0 100 1 45 0 108 1 49 0 119 0 145 0 131 1 53 0 134 1 57 0 135 0 18 0 136 1 61 0 137 1 65 0 139 1 117 0 140 1 141 0 142 1 73 0 146 11 85 0 186 1 81 0 189 11 85 0 191 11 85 0 192 11 85 0 194 11 85 0 198 11 85 0 199 1 105 0 201 11 85 0 207 1 113 0 208 1 117 0 209 1 121 0 210 11 85 0 240 11 85 0 241 11 85 0 242 1 121 1 106 1 141 1 111 1 145 1 122] 
#[1 3 70 0 3 3 70 0 19 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 40 3 70 0 42 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 49 3 70 0 50 3 70 0 53 3 70 0 54 3 70 0 63 3 70 0 64 3 70 0 69 3 70 0 72 3 70 0 75 3 70 0 84 3 70 0 85 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 91 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 96 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 138 11 89 1 20] 
#[1 3 70 0 3 3 70 0 19 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 40 3 70 0 42 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 49 3 70 0 50 3 70 0 53 3 70 0 54 3 70 0 63 3 70 0 64 3 70 0 69 3 70 0 72 3 70 0 75 3 70 0 84 3 70 0 85 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 91 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 96 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 138 11 93 1 20] 
#[1 3 70 0 3 3 70 0 19 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 40 3 70 0 42 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 49 3 70 0 50 3 70 0 53 3 70 0 54 3 70 0 63 3 70 0 64 3 70 0 69 3 70 0 72 3 70 0 75 3 70 0 84 3 70 0 85 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 91 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 96 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 138 11 97 1 20] 
#[1 3 65 0 2 5 146 0 3 3 73 0 4 5 146 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 5 150 0 5 0 15] 
#[1 5 154 0 3 5 154 0 5 11 101 0 14] 
#[1 11 105 0 3 11 109 0 5] 
#[0 5 158 0 3 0 5] 
#[0 11 113 0 138] 
#[1 9 145 0 2 11 129 0 19 4 114 0 28 4 114 0 29 4 114 0 30 4 114 0 33 4 114 0 34 4 114 0 42 4 114 0 54 11 121 0 56 4 114 0 89 4 114 0 90 4 114 0 91 4 114 0 93 4 114 0 94 4 114 0 95 4 114 0 96 11 129 0 107 4 114 0 114 4 114 0 116 4 114 0 119 4 114 0 124 4 114 0 131 4 114 0 136 4 114 0 138 11 129 0 221 11 133 0 231] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 137 0 139 11 141 0 189 11 145 0 232] 
#[1 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 11 149 0 224 5 13 0 234] 
#[0 5 162 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138 1 123] 
#[0 11 153 0 136] 
#[0 11 157 0 136] 
#[1 5 166 0 28 5 166 0 42 5 166 0 54 5 166 0 91 5 166 0 93 11 161 0 131 11 165 0 248] 
#[0 5 170 0 23 0 25 0 29 0 45 0 54 0 67 0 91 0 116 0 119 0 124] 
#[0 11 169 0 14] 
#[1 5 174 0 25 5 174 0 28 5 174 0 29 5 174 0 30 5 174 0 34 5 174 0 42 5 174 0 45 5 174 0 50 5 174 0 54 5 174 0 58 5 174 0 63 5 174 0 91 5 174 0 105 5 174 0 116 5 174 0 119 5 174 0 124 9 173 0 138 11 173 0 175] 
#[0 5 178 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124 0 138] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 42 0 14 0 50 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 11 177 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 11 181 0 138 11 185 1 120] 
#[0 5 182 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 186 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 190 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 194 0 42 0 50 0 63] 
#[0 5 198 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 202 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 206 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 5 189 0 46 5 193 0 53 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 9 105 1 24 11 189 1 62 1 221 1 63] 
#[0 5 210 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 214 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 5 189 0 46 5 193 0 53 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 9 109 1 24 11 193 1 62 1 221 1 63] 
#[0 5 218 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 222 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 226 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 11 197 1 62 1 221 1 63] 
#[0 5 230 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 234 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 238 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 11 201 1 62 1 221 1 63] 
#[0 5 242 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 246 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 0 50 0 23 0 50 0 25 0 50 0 29 5 189 0 46 5 193 0 53 0 50 0 54 0 50 0 67 0 50 0 91 0 50 0 116 0 50 0 119 0 50 0 124 9 113 1 24 11 205 1 62 1 221 1 63] 
#[0 5 250 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 5 254 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 6 2 0 42 4 21 0 136] 
#[0 6 6 1 123] 
#[1 6 10 0 14 3 77 0 18 6 10 0 32 6 10 0 35 6 10 0 38 6 10 0 59 6 10 0 61 6 10 0 76 6 10 0 79 6 10 0 98 6 10 0 99 6 10 0 113 6 10 0 128 6 10 0 129 3 81 0 131 6 10 0 136] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 11 209 0 210 11 209 1 106 1 141 1 111 1 145 1 122] 
#[0 11 213 0 136] 
#[0 6 14 0 3 0 5 0 9 0 132 0 136] 
#[1 6 18 0 3 6 18 0 19 6 18 0 23 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 29 6 18 0 30 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 40 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 50 6 18 0 53 6 18 0 54 6 18 0 58 6 18 0 63 6 18 0 64 6 18 0 67 6 18 0 69 6 18 0 72 6 18 0 75 6 18 0 84 6 18 0 85 6 18 0 88 6 18 0 89 6 18 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 95 6 18 0 96 6 18 0 101 6 18 0 102 6 18 0 105 6 18 0 106 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 116 6 18 0 119 6 18 0 121 6 18 0 124 6 18 0 125 6 18 0 131 6 18 0 138 11 217 1 21] 
#[1 1 6 0 14 3 77 0 18 11 221 0 33 11 221 0 89 3 81 0 131 1 6 0 136 11 221 0 190] 
#[0 11 225 0 142] 
#[0 6 22 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 11 229 0 142] 
#[0 6 26 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 6 30 0 136] 
#[0 6 34 0 136] 
#[0 6 38 0 136] 
#[0 6 42 0 136] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 11 233 0 210 11 233 1 106 1 141 1 111 1 145 1 122] 
#[0 6 46 0 136] 
#[0 6 50 0 136] 
#[0 6 54 0 136] 
#[0 6 58 0 136] 
#[0 6 62 0 136] 
#[0 6 66 0 136] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 11 237 0 210 11 237 1 106 1 141 1 111 1 145 1 122] 
#[0 6 70 0 136] 
#[0 6 74 0 136] 
#[0 6 78 0 136] 
#[0 6 82 0 136] 
#[0 6 86 0 136] 
#[0 6 90 0 136] 
#[0 6 94 0 136] 
#[0 6 98 0 136] 
#[0 6 102 0 136] 
#[0 6 106 0 136] 
#[0 6 110 0 136] 
#[0 6 114 0 136] 
#[0 6 118 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 6 122 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 6 126 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 11 241 0 136] 
#[1 3 65 0 2 3 73 0 4 6 130 0 5 3 69 0 6 3 73 0 8 6 130 0 9 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 6 134 0 42 4 21 0 136] 
#[0 6 138 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 6 142 0 41 0 42 0 136] 
#[0 6 146 0 41 0 42 0 136] 
#[1 6 150 0 5 6 154 0 9] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 2 201 0 37 11 245 0 38 2 201 0 60 2 201 0 66 2 201 0 73 2 201 0 82 2 201 0 109 2 201 0 110 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[0 6 158 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 6 162 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[0 6 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 6 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 20 0 22 0 32 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 73 0 76 0 79 0 80 0 82 0 98 0 99 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 123] 
#[0 11 249 0 38] 
#[1 6 174 0 42 6 174 0 51 4 21 0 136] 
#[1 6 178 0 3 11 253 0 14 3 77 0 18 3 81 0 131 6 178 0 132 6 178 0 136 12 1 1 30] 
#[1 3 70 0 3 3 70 0 5 3 70 0 14 3 70 0 15 3 70 0 18 3 70 0 19 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 29 3 70 0 30 3 70 0 32 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 38 3 70 0 40 3 70 0 42 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 49 3 70 0 50 3 70 0 53 3 70 0 54 3 70 0 58 3 70 0 59 3 70 0 61 3 70 0 63 3 70 0 64 3 70 0 67 3 70 0 69 3 70 0 72 3 70 0 75 3 70 0 76 3 70 0 79 3 70 0 84 3 70 0 85 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 91 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 96 3 70 0 98 3 70 0 99 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 113 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 128 3 70 0 129 3 70 0 131 3 70 0 132 3 70 0 136 3 70 0 138 12 5 1 20 3 70 1 123] 
#[0 6 182 0 3 0 5 0 14 0 15 0 18 0 32 0 33 0 35 0 38 0 59 0 61 0 76 0 79 0 89 0 98 0 99 0 113 0 128 0 129 0 131 0 132 0 136 1 123] 
#[0 6 186 0 3 0 5] 
#[1 6 190 0 3 12 9 0 5] 
#[0 6 194 0 5 0 132] 
#[1 8 1 0 9 3 30 0 79 12 13 1 5] 
#[1 6 198 0 3 6 198 0 26 6 189 0 28 3 173 0 29 6 193 0 30 6 197 0 34 6 198 0 42 6 201 0 54 6 198 0 90 6 205 0 91 6 209 0 93 6 198 0 94 6 198 0 95 6 198 0 96 6 198 0 114 3 189 0 116 3 193 0 119 3 197 0 124 6 213 0 131 5 149 0 138 6 225 0 170 6 225 0 176 6 225 0 235 6 225 0 236 6 233 0 237 6 225 0 238 6 225 0 239 6 225 0 251 6 225 0 252 6 225 0 253 6 225 0 254 6 225 0 255 6 225 1 0 6 225 1 2 6 225 1 3 6 225 1 4 6 225 1 6 7 29 1 7 6 225 1 8 7 37 1 29 6 225 1 37 7 45 1 38 6 225 1 40 7 53 1 41 6 225 1 44 3 217 1 45 6 225 1 46 3 225 1 47 6 225 1 49 6 225 1 50 6 225 1 52 3 237 1 53 6 225 1 54 3 245 1 55 6 225 1 57 6 225 1 58 6 225 1 60 7 93 1 61 6 225 1 66 4 5 1 67] 
#[1 6 202 0 3 6 202 0 26 6 189 0 28 3 173 0 29 6 193 0 30 6 197 0 34 6 202 0 42 6 201 0 54 6 202 0 90 6 205 0 91 6 209 0 93 6 202 0 94 6 202 0 95 6 202 0 96 6 202 0 114 3 189 0 116 3 193 0 119 3 197 0 124 6 213 0 131 5 149 0 138 6 225 0 170 6 225 0 176 6 225 0 235 6 225 0 236 6 233 0 237 6 225 0 238 6 225 0 239 6 225 0 251 6 225 0 252 6 225 0 253 6 225 0 254 6 225 0 255 6 225 1 0 6 225 1 2 6 225 1 3 6 225 1 4 6 225 1 6 7 29 1 7 6 225 1 8 7 37 1 29 6 225 1 37 7 45 1 38 6 225 1 40 7 53 1 41 6 225 1 44 3 217 1 45 6 225 1 46 3 225 1 47 6 225 1 49 6 225 1 50 6 225 1 52 3 237 1 53 6 225 1 54 3 245 1 55 6 225 1 57 6 225 1 58 6 225 1 60 7 93 1 61 6 225 1 66 4 5 1 67] 
#[1 6 206 0 3 6 206 0 26 6 189 0 28 3 173 0 29 6 193 0 30 6 197 0 34 6 206 0 42 6 201 0 54 6 206 0 90 6 205 0 91 6 209 0 93 6 206 0 94 6 206 0 95 6 206 0 96 6 206 0 114 3 189 0 116 3 193 0 119 3 197 0 124 6 213 0 131 5 149 0 138 6 225 0 170 6 225 0 176 6 225 0 235 6 225 0 236 6 233 0 237 6 225 0 238 6 225 0 239 6 225 0 251 6 225 0 252 6 225 0 253 6 225 0 254 6 225 0 255 6 225 1 0 6 225 1 2 6 225 1 3 6 225 1 4 6 225 1 6 7 29 1 7 6 225 1 8 7 37 1 29 6 225 1 37 7 45 1 38 6 225 1 40 7 53 1 41 6 225 1 44 3 217 1 45 6 225 1 46 3 225 1 47 6 225 1 49 6 225 1 50 6 225 1 52 3 237 1 53 6 225 1 54 3 245 1 55 6 225 1 57 6 225 1 58 6 225 1 60 7 93 1 61 6 225 1 66 4 5 1 67] 
#[1 6 210 0 3 6 210 0 26 6 189 0 28 3 173 0 29 6 193 0 30 6 197 0 34 6 210 0 42 6 201 0 54 6 210 0 90 6 205 0 91 6 209 0 93 6 210 0 94 6 210 0 95 6 210 0 96 6 210 0 114 3 189 0 116 3 193 0 119 3 197 0 124 6 213 0 131 5 149 0 138 6 225 0 170 6 225 0 176 6 225 0 235 6 225 0 236 6 233 0 237 6 225 0 238 6 225 0 239 6 225 0 251 6 225 0 252 6 225 0 253 6 225 0 254 6 225 0 255 6 225 1 0 6 225 1 2 6 225 1 3 6 225 1 4 6 225 1 6 7 29 1 7 6 225 1 8 7 37 1 29 6 225 1 37 7 45 1 38 6 225 1 40 7 53 1 41 6 225 1 44 3 217 1 45 6 225 1 46 3 225 1 47 6 225 1 49 6 225 1 50 6 225 1 52 3 237 1 53 6 225 1 54 3 245 1 55 6 225 1 57 6 225 1 58 6 225 1 60 7 93 1 61 6 225 1 66 4 5 1 67] 
#[1 1 250 0 3 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 12 17 0 234] 
#[1 1 250 0 3 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 42 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 12 21 0 234] 
#[1 2 253 0 2 0 174 0 136 12 25 0 193] 
#[1 11 57 0 2 5 110 0 136 12 29 1 42] 
#[1 2 253 0 2 0 174 0 9 0 174 0 136 12 33 0 193] 
#[0 12 37 0 136] 
#[0 12 41 0 3] 
#[0 12 45 0 136] 
#[0 12 49 0 138] 
#[0 12 53 0 138] 
#[1 4 213 0 29 4 213 0 83 4 213 0 124 1 210 0 132 1 214 0 138 12 57 1 26 4 205 1 27 4 209 1 28 4 213 1 31] 
#[1 8 1 0 9 3 30 0 32 3 30 0 35 3 30 0 59 3 30 0 61 3 30 0 76 3 30 0 98 3 30 0 99 3 30 0 113 3 30 0 128 3 30 0 129 3 30 0 136 12 61 1 5] 
#[0 6 214 0 28 0 30 0 34 0 54 0 91] 
#[1 3 77 0 18 12 65 0 33 12 65 0 89 3 81 0 131 1 6 0 136 12 65 0 190] 
#[1 6 218 0 3 10 189 0 19 10 189 0 24 6 218 0 25 6 218 0 26 10 189 0 27 6 218 0 28 6 218 0 29 6 218 0 30 10 189 0 33 6 218 0 34 10 97 0 35 10 189 0 40 6 218 0 42 10 189 0 44 6 218 0 45 5 189 0 46 10 189 0 47 10 189 0 49 6 218 0 50 5 193 0 53 6 218 0 54 6 218 0 63 10 189 0 64 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 6 218 0 90 6 218 0 91 6 218 0 93 6 218 0 94 6 218 0 95 6 218 0 96 10 189 0 101 10 189 0 102 6 218 0 105 10 189 0 106 10 189 0 111 10 189 0 112 6 218 0 114 6 218 0 116 6 218 0 119 10 189 0 121 6 218 0 124 10 189 0 125 6 218 0 131 6 218 0 138 10 177 1 22 10 177 1 23 10 177 1 24 10 189 1 25] 
#[1 6 222 0 3 10 189 0 19 10 189 0 24 6 222 0 25 6 222 0 26 10 189 0 27 6 222 0 28 6 222 0 29 6 222 0 30 10 189 0 33 6 222 0 34 10 97 0 35 10 189 0 40 6 222 0 42 10 189 0 44 6 222 0 45 5 189 0 46 10 189 0 47 10 189 0 49 6 222 0 50 5 193 0 53 6 222 0 54 6 222 0 63 10 189 0 64 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 6 222 0 90 6 222 0 91 6 222 0 93 6 222 0 94 6 222 0 95 6 222 0 96 10 189 0 101 10 189 0 102 6 222 0 105 10 189 0 106 10 189 0 111 10 189 0 112 6 222 0 114 6 222 0 116 6 222 0 119 10 189 0 121 6 222 0 124 10 189 0 125 6 222 0 131 6 222 0 138 10 177 1 22 10 177 1 23 10 177 1 24 10 189 1 25] 
#[1 6 226 0 3 10 189 0 19 10 189 0 24 6 226 0 25 6 226 0 26 10 189 0 27 6 226 0 28 6 226 0 29 6 226 0 30 10 189 0 33 6 226 0 34 10 97 0 35 10 189 0 40 6 226 0 42 10 189 0 44 6 226 0 45 5 189 0 46 10 189 0 47 10 189 0 49 6 226 0 50 5 193 0 53 6 226 0 54 6 226 0 63 10 189 0 64 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 6 226 0 90 6 226 0 91 6 226 0 93 6 226 0 94 6 226 0 95 6 226 0 96 10 189 0 101 10 189 0 102 6 226 0 105 10 189 0 106 10 189 0 111 10 189 0 112 6 226 0 114 6 226 0 116 6 226 0 119 10 189 0 121 6 226 0 124 10 189 0 125 6 226 0 131 6 226 0 138 10 177 1 22 10 177 1 23 10 177 1 24 10 189 1 25] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 12 69 0 210 12 69 1 106 1 141 1 111 1 145 1 122] 
#[0 6 230 0 136] 
#[1 9 125 0 138 12 73 0 184] 
#[0 6 234 0 33 0 89 0 136] 
#[0 6 238 0 2 0 19 0 28 0 29 0 30 0 33 0 34 0 42 0 54 0 56 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 107 0 114 0 116 0 119 0 124 0 131 0 136 0 138] 
#[0 12 77 0 52] 
#[0 6 242 0 2 0 19 0 28 0 29 0 30 0 33 0 34 0 42 0 54 0 56 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 107 0 114 0 116 0 119 0 124 0 131 0 136 0 138] 
#[0 6 246 0 2 0 19 0 28 0 29 0 30 0 33 0 34 0 42 0 54 0 56 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 107 0 114 0 116 0 119 0 124 0 131 0 136 0 138] 
#[1 1 250 0 28 1 250 0 29 1 250 0 30 6 250 0 33 1 250 0 34 1 250 0 42 1 250 0 54 6 250 0 89 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 6 250 0 136 1 250 0 138 12 81 0 224 5 13 0 234] 
#[0 0 186 0 3 0 5 0 6 0 11] 
#[1 6 254 0 3 6 254 0 5 3 45 0 6 2 81 0 11 3 49 0 187] 
#[1 12 85 0 3 12 89 0 5] 
#[1 2 202 0 42 2 202 0 90 2 202 0 94 2 202 0 95 2 202 0 96 2 202 0 114 12 93 0 225] 
#[0 7 2 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138 1 123] 
#[0 7 6 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138 1 123] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 12 97 0 210 12 97 1 106 1 141 1 111 1 145 1 122] 
#[1 7 10 0 28 7 10 0 42 7 10 0 54 7 10 0 91 7 10 0 93 12 101 0 249] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 12 105 0 210 12 105 1 106 1 141 1 111 1 145 1 122] 
#[0 7 14 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124 0 138] 
#[1 7 18 0 42 7 18 0 50 7 18 0 63 4 21 0 136] 
#[0 7 22 0 5 0 136] 
#[1 12 109 0 5 12 113 0 136] 
#[0 7 26 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 7 30 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 7 34 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 7 38 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[0 7 42 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 1 87 0 33 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 12 117 0 89 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 1 6 0 136 12 117 0 190 3 73 1 116] 
#[1 6 18 0 3 6 18 0 19 6 18 0 23 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 29 6 18 0 30 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 40 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 50 6 18 0 53 6 18 0 54 6 18 0 58 6 18 0 63 6 18 0 64 6 18 0 67 6 18 0 69 6 18 0 72 6 18 0 75 6 18 0 84 6 18 0 85 6 18 0 88 6 18 0 89 6 18 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 95 6 18 0 96 6 18 0 101 6 18 0 102 6 18 0 105 6 18 0 106 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 116 6 18 0 119 6 18 0 121 6 18 0 124 6 18 0 125 6 18 0 131 6 18 0 138 12 121 1 21] 
#[1 7 46 0 3 10 189 0 19 7 46 0 23 10 189 0 24 7 46 0 25 7 46 0 26 10 189 0 27 7 46 0 28 7 46 0 29 7 46 0 30 10 189 0 33 7 46 0 34 10 97 0 35 10 189 0 40 7 46 0 42 10 189 0 44 7 46 0 46 10 189 0 47 10 189 0 49 7 46 0 50 7 46 0 53 7 46 0 54 7 46 0 58 7 46 0 63 10 189 0 64 7 46 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 7 46 0 90 7 46 0 91 7 46 0 93 7 46 0 94 7 46 0 95 7 46 0 96 10 189 0 101 10 189 0 102 7 46 0 105 10 189 0 106 10 189 0 111 10 189 0 112 7 46 0 114 7 46 0 116 7 46 0 119 10 189 0 121 7 46 0 124 10 189 0 125 7 46 0 131 7 46 0 138 12 125 1 23 10 189 1 25] 
#[1 11 253 0 14 6 178 0 136 12 129 1 30] 
#[0 12 133 0 136] 
#[0 12 137 0 136] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 12 141 0 136 3 73 1 116] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 12 145 0 136 3 73 1 116] 
#[0 7 50 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 14 0 63 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 14 0 122 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 12 149 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 12 149 1 99 12 149 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122 0 14 1 123] 
#[1 0 81 0 2 0 85 0 17 0 10 0 23 0 89 0 25 0 93 0 26 0 14 0 41 0 14 0 42 0 14 0 51 0 97 0 52 0 101 0 55 0 105 0 57 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 14 0 80 0 125 0 97 0 129 0 103 0 133 0 118 0 137 0 126 0 141 0 127 0 145 0 131 0 149 0 134 0 153 0 135 0 14 0 136 0 157 0 138 0 161 0 140 1 1 0 142 0 169 0 146 0 173 0 209 12 153 1 70 1 241 1 71 0 181 1 72 0 185 1 73 0 189 1 74 0 193 1 75 0 197 1 76 0 201 1 78 0 205 1 84 0 209 1 93 0 213 1 95 0 217 1 96 0 221 1 98 1 241 1 99 1 241 1 100 0 233 1 101 0 237 1 102 0 237 1 103 0 237 1 104 0 237 1 105 0 237 1 106 1 1 1 111 0 237 1 112 1 9 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 12 157 0 210 12 157 1 106 1 141 1 111 1 145 1 122] 
#[0 7 54 0 3 0 132 0 136] 
#[1 7 58 0 3 7 58 0 5 7 58 0 14 7 58 0 15 7 58 0 18 10 189 0 19 7 58 0 23 10 189 0 24 7 58 0 25 7 58 0 26 10 189 0 27 7 58 0 28 7 58 0 29 7 58 0 30 7 58 0 32 1 91 0 33 7 58 0 34 1 95 0 35 7 58 0 38 10 189 0 40 7 58 0 42 10 189 0 44 7 58 0 45 5 189 0 46 10 189 0 47 10 189 0 49 7 58 0 50 5 193 0 53 7 58 0 54 7 58 0 58 7 58 0 59 7 58 0 61 7 58 0 63 10 189 0 64 7 58 0 67 10 189 0 69 10 125 0 72 10 189 0 75 7 58 0 76 7 58 0 79 10 189 0 84 10 189 0 85 10 189 0 88 1 99 0 89 7 58 0 90 7 58 0 91 7 58 0 93 7 58 0 94 7 58 0 95 7 58 0 96 7 58 0 98 7 58 0 99 10 189 0 101 10 189 0 102 7 58 0 105 10 189 0 106 10 189 0 111 10 189 0 112 7 58 0 113 7 58 0 114 7 58 0 116 7 58 0 119 10 189 0 121 7 58 0 124 10 189 0 125 7 58 0 128 7 58 0 129 7 58 0 131 7 58 0 132 7 58 0 136 7 58 0 138 10 177 1 22 10 177 1 23 10 177 1 24 10 189 1 25 7 58 1 123] 
#[0 12 161 0 139] 
#[0 12 165 0 79] 
#[1 7 62 0 3 7 62 0 26 6 189 0 28 3 173 0 29 6 193 0 30 6 197 0 34 7 62 0 42 6 201 0 54 7 62 0 90 6 205 0 91 6 209 0 93 7 62 0 94 7 62 0 95 7 62 0 96 7 62 0 114 3 189 0 116 3 193 0 119 3 197 0 124 6 213 0 131 5 149 0 138 6 225 0 170 6 225 0 176 6 225 0 235 6 225 0 236 6 233 0 237 6 225 0 238 6 225 0 239 6 225 0 251 6 225 0 252 6 225 0 253 6 225 0 254 6 225 0 255 6 225 1 0 6 225 1 2 6 225 1 3 6 225 1 4 6 225 1 6 7 29 1 7 6 225 1 8 7 37 1 29 6 225 1 37 7 45 1 38 6 225 1 40 7 53 1 41 6 225 1 44 3 217 1 45 6 225 1 46 3 225 1 47 6 225 1 49 6 225 1 50 6 225 1 52 3 237 1 53 6 225 1 54 3 245 1 55 6 225 1 57 6 225 1 58 6 225 1 60 7 93 1 61 6 225 1 66 4 5 1 67] 
#[1 7 66 0 3 7 66 0 26 6 189 0 28 3 173 0 29 6 193 0 30 6 197 0 34 7 66 0 42 6 201 0 54 7 66 0 90 6 205 0 91 6 209 0 93 7 66 0 94 7 66 0 95 7 66 0 96 7 66 0 114 3 189 0 116 3 193 0 119 3 197 0 124 6 213 0 131 5 149 0 138 6 225 0 170 6 225 0 176 6 225 0 235 6 225 0 236 6 233 0 237 6 225 0 238 6 225 0 239 6 225 0 251 6 225 0 252 6 225 0 253 6 225 0 254 6 225 0 255 6 225 1 0 6 225 1 2 6 225 1 3 6 225 1 4 6 225 1 6 7 29 1 7 6 225 1 8 7 37 1 29 6 225 1 37 7 45 1 38 6 225 1 40 7 53 1 41 6 225 1 44 3 217 1 45 6 225 1 46 3 225 1 47 6 225 1 49 6 225 1 50 6 225 1 52 3 237 1 53 6 225 1 54 3 245 1 55 6 225 1 57 6 225 1 58 6 225 1 60 7 93 1 61 6 225 1 66 4 5 1 67] 
#[0 12 169 0 136] 
#[0 12 173 0 136] 
#[1 8 1 0 9 3 30 0 136 12 177 1 5] 
#[1 6 18 0 3 6 18 0 19 6 18 0 23 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 29 6 18 0 30 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 40 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 53 6 18 0 54 6 18 0 64 6 18 0 67 6 18 0 69 6 18 0 72 6 18 0 75 6 18 0 84 6 18 0 85 6 18 0 88 6 18 0 89 6 18 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 95 6 18 0 96 6 18 0 101 6 18 0 102 6 18 0 106 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 116 6 18 0 119 6 18 0 121 6 18 0 124 6 18 0 125 6 18 0 131 6 18 0 138 12 181 1 21] 
#[0 7 70 0 136] 
#[1 6 18 0 3 6 18 0 19 6 18 0 23 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 29 6 18 0 30 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 40 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 53 6 18 0 54 6 18 0 64 6 18 0 67 6 18 0 69 6 18 0 72 6 18 0 75 6 18 0 84 6 18 0 85 6 18 0 88 6 18 0 89 6 18 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 95 6 18 0 96 6 18 0 101 6 18 0 102 6 18 0 106 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 116 6 18 0 119 6 18 0 121 6 18 0 124 6 18 0 125 6 18 0 131 6 18 0 138 12 185 1 21] 
#[0 12 189 0 136] 
#[0 12 193 0 136] 
#[0 12 197 0 132] 
#[1 7 74 0 32 7 74 0 35 7 74 0 59 7 74 0 61 7 74 0 76 7 74 0 98 7 74 0 99 7 74 0 113 7 74 0 128 7 74 0 129 7 74 0 136 12 201 1 9] 
#[0 12 205 0 136] 
#[1 3 65 0 2 7 78 0 3 3 73 0 4 7 78 0 5 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[0 7 82 0 3 0 5] 
#[1 3 21 0 138 12 209 0 233] 
#[1 2 202 0 42 2 202 0 90 2 202 0 94 2 202 0 95 2 202 0 96 2 202 0 114 12 213 0 225] 
#[0 7 86 0 28 0 29 0 30 0 33 0 34 0 42 0 54 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 136 0 138] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 137 0 139 12 217 0 189] 
#[1 12 221 0 42 8 221 0 90 8 225 0 94 8 229 0 95 8 233 0 96 8 237 0 114 8 245 0 226 8 245 0 227 8 245 0 228 8 245 0 229 8 245 0 230] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 12 225 0 132 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 12 229 0 28 12 233 0 42 3 177 0 54 3 185 0 91 6 209 0 93 12 237 0 250 12 237 0 251 12 237 0 252 12 237 0 255 12 237 1 0 12 237 1 2 12 237 1 3 12 237 1 4 12 237 1 6 7 29 1 7 12 237 1 8 12 237 1 44 3 217 1 45 12 237 1 46 3 225 1 47 12 237 1 49 12 237 1 50 12 237 1 52 3 237 1 53 12 237 1 54 3 245 1 55 12 237 1 57 12 237 1 58 12 237 1 60 7 93 1 61] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 12 253 0 33 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 7 90 0 136 12 253 0 223 3 73 1 116] 
#[0 13 1 0 138] 
#[0 7 94 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 63 0 91 0 105 0 116 0 119 0 124] 
#[1 13 5 0 33 7 90 0 136 13 5 0 223] 
#[1 7 98 0 3 10 189 0 19 7 98 0 23 10 189 0 24 7 98 0 25 7 98 0 26 10 189 0 27 7 98 0 28 7 98 0 29 7 98 0 30 10 189 0 33 7 98 0 34 10 97 0 35 10 189 0 40 7 98 0 42 10 189 0 44 7 98 0 46 10 189 0 47 10 189 0 49 7 98 0 50 7 98 0 53 7 98 0 54 7 98 0 58 7 98 0 63 10 189 0 64 7 98 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 7 98 0 90 7 98 0 91 7 98 0 93 7 98 0 94 7 98 0 95 7 98 0 96 10 189 0 101 10 189 0 102 7 98 0 105 10 189 0 106 10 189 0 111 10 189 0 112 7 98 0 114 7 98 0 116 7 98 0 119 10 189 0 121 7 98 0 124 10 189 0 125 7 98 0 131 7 98 0 138 12 125 1 23 10 189 1 25] 
#[0 7 102 0 3 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 33 0 34 0 35 0 40 0 42 0 44 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 63 0 64 0 67 0 69 0 72 0 75 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 101 0 102 0 105 0 106 0 111 0 112 0 114 0 116 0 119 0 121 0 124 0 125 0 131 0 138] 
#[0 13 9 0 136] 
#[0 7 106 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 7 110 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 7 114 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 7 118 0 3 0 5 0 14 0 15 0 18 0 19 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 38 0 40 0 42 0 44 0 45 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 59 0 61 0 63 0 64 0 67 0 69 0 72 0 75 0 76 0 79 0 84 0 85 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 124 0 125 0 128 0 129 0 131 0 132 0 136 0 138 1 123] 
#[0 7 122 0 41 0 42 0 43 0 50 0 51 0 63 0 80 0 122 0 136 1 123] 
#[1 7 126 0 41 7 126 0 42 7 126 0 51 7 126 0 80 4 21 0 136] 
#[1 3 65 0 2 7 130 0 3 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 7 130 0 132 3 73 0 134 3 73 0 135 7 130 0 136 3 73 1 116] 
#[0 7 134 0 3 0 5] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 13 13 0 203 13 17 0 204 13 21 0 205 13 25 0 206 1 117 0 209 13 29 0 210 13 29 1 106 1 141 1 111 1 145 1 122] 
#[1 6 18 0 3 6 18 0 19 6 18 0 23 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 29 6 18 0 30 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 40 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 53 6 18 0 54 6 18 0 64 6 18 0 67 6 18 0 69 6 18 0 72 6 18 0 75 6 18 0 84 6 18 0 85 6 18 0 88 6 18 0 89 6 18 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 95 6 18 0 96 6 18 0 101 6 18 0 102 6 18 0 106 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 116 6 18 0 119 6 18 0 121 6 18 0 124 6 18 0 125 6 18 0 131 6 18 0 138 13 33 1 21] 
#[1 6 18 0 3 6 18 0 19 6 18 0 23 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 29 6 18 0 30 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 40 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 53 6 18 0 54 6 18 0 64 6 18 0 67 6 18 0 69 6 18 0 72 6 18 0 75 6 18 0 84 6 18 0 85 6 18 0 88 6 18 0 89 6 18 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 95 6 18 0 96 6 18 0 101 6 18 0 102 6 18 0 106 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 116 6 18 0 119 6 18 0 121 6 18 0 124 6 18 0 125 6 18 0 131 6 18 0 138 13 37 1 21] 
#[0 13 41 0 136] 
#[1 7 138 0 3 10 189 0 19 7 138 0 23 10 189 0 24 7 138 0 25 7 138 0 26 10 189 0 27 7 138 0 28 7 138 0 29 7 138 0 30 10 189 0 33 7 138 0 34 10 97 0 35 10 189 0 40 7 138 0 42 10 189 0 44 7 138 0 46 10 189 0 47 10 189 0 49 7 138 0 53 7 138 0 54 10 189 0 64 7 138 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 7 138 0 90 7 138 0 91 7 138 0 93 7 138 0 94 7 138 0 95 7 138 0 96 10 189 0 101 10 189 0 102 10 189 0 106 10 189 0 111 10 189 0 112 7 138 0 114 7 138 0 116 7 138 0 119 10 189 0 121 7 138 0 124 10 189 0 125 7 138 0 131 7 138 0 138 12 125 1 23 10 189 1 25] 
#[1 7 142 0 3 10 189 0 19 7 142 0 23 10 189 0 24 7 142 0 25 7 142 0 26 10 189 0 27 7 142 0 28 7 142 0 29 7 142 0 30 10 189 0 33 7 142 0 34 10 97 0 35 10 189 0 40 7 142 0 42 10 189 0 44 7 142 0 46 10 189 0 47 10 189 0 49 7 142 0 53 7 142 0 54 10 189 0 64 7 142 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 7 142 0 90 7 142 0 91 7 142 0 93 7 142 0 94 7 142 0 95 7 142 0 96 10 189 0 101 10 189 0 102 10 189 0 106 10 189 0 111 10 189 0 112 7 142 0 114 7 142 0 116 7 142 0 119 10 189 0 121 7 142 0 124 10 189 0 125 7 142 0 131 7 142 0 138 12 125 1 23 10 189 1 25] 
#[0 7 146 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 7 150 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[0 7 154 0 9 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[1 13 45 0 32 13 49 0 35 13 53 0 59 13 57 0 61 13 61 0 76 13 65 0 98 13 69 0 99 13 73 0 113 13 77 0 128 13 81 0 129 13 85 0 136 13 89 1 11 13 93 1 12 13 97 1 13 13 101 1 14 13 105 1 15 13 109 1 16 13 113 1 18] 
#[0 7 158 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 9 145 0 2 4 114 0 28 4 114 0 29 4 114 0 30 4 114 0 33 4 114 0 34 4 114 0 42 4 114 0 54 4 114 0 89 4 114 0 90 4 114 0 91 4 114 0 93 4 114 0 94 4 114 0 95 4 114 0 96 4 114 0 114 4 114 0 116 4 114 0 119 4 114 0 124 4 114 0 131 4 114 0 136 4 114 0 138 13 117 0 231] 
#[1 13 121 0 42 8 221 0 90 8 225 0 94 8 229 0 95 8 233 0 96 8 237 0 114 8 245 0 226 8 245 0 227 8 245 0 228 8 245 0 229 8 245 0 230] 
#[1 7 162 0 3 7 162 0 5 3 45 0 6 2 81 0 11 3 49 0 187] 
#[0 7 166 0 33 0 89 0 136] 
#[0 7 170 0 28 0 42 0 54 0 91 0 93] 
#[1 3 177 0 54 9 17 0 81 3 185 0 91 6 209 0 93 9 21 1 7 9 25 1 45 9 29 1 47 9 33 1 53 9 37 1 55] 
#[0 7 174 0 33 0 89 0 136] 
#[0 7 178 0 28 0 42 0 54 0 91 0 93] 
#[0 7 182 0 28 0 42 0 54 0 91 0 93] 
#[0 7 186 0 28 0 42 0 54 0 91 0 93] 
#[0 7 190 0 136] 
#[0 13 125 0 136] 
#[0 7 194 0 5 0 136] 
#[0 13 129 0 136] 
#[0 7 198 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 1 194 0 3 1 194 0 42 13 133 0 136 13 137 1 85] 
#[0 7 202 0 3 0 42 0 136] 
#[1 13 141 0 5 13 145 0 9] 
#[0 7 206 0 5 0 9] 
#[1 3 65 0 2 3 73 0 4 7 210 0 5 3 69 0 6 3 73 0 8 7 210 0 9 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 3 73 0 37 3 73 0 60 3 73 0 66 3 73 0 73 3 73 0 82 3 73 0 109 3 73 0 110 3 73 0 130 3 73 0 134 3 73 0 135 3 73 1 116] 
#[1 7 214 0 3 10 189 0 19 7 214 0 23 10 189 0 24 7 214 0 25 7 214 0 26 10 189 0 27 7 214 0 28 7 214 0 29 7 214 0 30 10 189 0 33 7 214 0 34 10 97 0 35 10 189 0 40 7 214 0 42 10 189 0 44 7 214 0 46 10 189 0 47 10 189 0 49 7 214 0 53 7 214 0 54 10 189 0 64 7 214 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 7 214 0 90 7 214 0 91 7 214 0 93 7 214 0 94 7 214 0 95 7 214 0 96 10 189 0 101 10 189 0 102 10 189 0 106 10 189 0 111 10 189 0 112 7 214 0 114 7 214 0 116 7 214 0 119 10 189 0 121 7 214 0 124 10 189 0 125 7 214 0 131 7 214 0 138 12 125 1 23 10 189 1 25] 
#[1 7 218 0 3 10 189 0 19 7 218 0 23 10 189 0 24 7 218 0 25 7 218 0 26 10 189 0 27 7 218 0 28 7 218 0 29 7 218 0 30 10 189 0 33 7 218 0 34 10 97 0 35 10 189 0 40 7 218 0 42 10 189 0 44 7 218 0 46 10 189 0 47 10 189 0 49 7 218 0 53 7 218 0 54 10 189 0 64 7 218 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 7 218 0 90 7 218 0 91 7 218 0 93 7 218 0 94 7 218 0 95 7 218 0 96 10 189 0 101 10 189 0 102 10 189 0 106 10 189 0 111 10 189 0 112 7 218 0 114 7 218 0 116 7 218 0 119 10 189 0 121 7 218 0 124 10 189 0 125 7 218 0 131 7 218 0 138 12 125 1 23 10 189 1 25] 
#[1 6 18 0 3 6 18 0 19 6 18 0 23 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 29 6 18 0 30 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 40 6 18 0 42 6 18 0 44 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 53 6 18 0 54 6 18 0 64 6 18 0 67 6 18 0 69 6 18 0 72 6 18 0 75 6 18 0 84 6 18 0 85 6 18 0 88 6 18 0 89 6 18 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 95 6 18 0 96 6 18 0 101 6 18 0 102 6 18 0 106 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 116 6 18 0 119 6 18 0 121 6 18 0 124 6 18 0 125 6 18 0 131 6 18 0 138 13 149 1 21] 
#[1 1 13 0 2 1 17 0 17 7 222 0 32 7 222 0 35 7 222 0 59 7 222 0 61 7 222 0 76 1 29 0 77 7 222 0 98 7 222 0 99 7 222 0 113 7 222 0 128 7 222 0 129 0 145 0 131 1 53 0 134 1 57 0 135 7 222 0 136 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 153 0 210 13 153 1 106 1 141 1 111 1 145 1 122] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 157 0 210 13 157 1 106 1 141 1 111 1 145 1 122] 
#[1 13 161 0 138 13 165 1 17] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 169 0 210 13 169 1 106 1 141 1 111 1 145 1 122] 
#[0 7 226 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 13 173 1 102 13 173 1 103 13 173 1 104 13 173 1 105 13 173 1 106 1 1 1 111 13 173 1 112 1 9 1 122] 
#[0 13 177 0 35] 
#[0 13 181 0 138] 
#[1 0 81 0 2 0 85 0 17 0 109 0 62 0 113 0 70 0 117 0 71 0 121 0 77 0 145 0 131 0 149 0 134 0 153 0 135 1 225 0 138 0 173 0 140 1 1 0 142 0 169 0 146 0 173 0 209 13 185 1 102 13 185 1 103 13 185 1 104 13 185 1 105 13 185 1 106 1 1 1 111 13 185 1 112 1 9 1 122] 
#[0 13 189 0 35] 
#[1 7 230 0 3 7 230 0 26 7 230 0 28 7 230 0 29 7 230 0 30 13 193 0 32 7 230 0 34 7 230 0 42 7 230 0 54 7 230 0 90 7 230 0 91 7 230 0 93 7 230 0 94 7 230 0 95 7 230 0 96 7 230 0 114 7 230 0 116 7 230 0 119 7 230 0 124 7 230 0 131 7 230 0 138 13 197 1 19] 
#[0 7 234 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[0 7 238 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[0 7 242 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[0 7 246 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[0 7 250 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[0 7 254 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[0 8 2 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[1 1 250 0 28 1 250 0 29 1 250 0 30 8 6 0 33 1 250 0 34 1 250 0 42 1 250 0 54 8 6 0 89 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 8 6 0 136 1 250 0 138 13 201 0 224 5 13 0 234] 
#[0 8 10 0 33 0 89 0 136] 
#[0 8 14 0 25 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 91 0 105 0 116 0 119 0 124 0 138] 
#[0 8 18 0 3 0 23 0 25 0 26 0 28 0 29 0 30 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 90 0 91 0 93 0 94 0 95 0 96 0 105 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 1 13 0 2 2 158 0 3 1 17 0 17 2 158 0 42 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 13 205 0 204 13 21 0 205 13 25 0 206 1 117 0 209 13 29 0 210 13 29 1 106 1 141 1 111 1 145 1 122] 
#[0 8 22 0 3 0 42] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 13 209 0 206 1 117 0 209 13 29 0 210 13 29 1 106 1 141 1 111 1 145 1 122] 
#[0 13 213 0 2] 
#[1 8 26 0 3 10 189 0 19 8 26 0 23 10 189 0 24 8 26 0 25 8 26 0 26 10 189 0 27 8 26 0 28 8 26 0 29 8 26 0 30 10 189 0 33 8 26 0 34 10 97 0 35 10 189 0 40 8 26 0 42 10 189 0 44 8 26 0 46 10 189 0 47 10 189 0 49 8 26 0 53 8 26 0 54 10 189 0 64 8 26 0 67 10 189 0 69 10 125 0 72 10 189 0 75 10 189 0 84 10 189 0 85 10 189 0 88 10 189 0 89 8 26 0 90 8 26 0 91 8 26 0 93 8 26 0 94 8 26 0 95 8 26 0 96 10 189 0 101 10 189 0 102 10 189 0 106 10 189 0 111 10 189 0 112 8 26 0 114 8 26 0 116 8 26 0 119 10 189 0 121 8 26 0 124 10 189 0 125 8 26 0 131 8 26 0 138 12 125 1 23 10 189 1 25] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 8 30 0 32 8 30 0 35 3 73 0 37 8 30 0 59 3 73 0 60 8 30 0 61 3 73 0 66 3 73 0 73 8 30 0 76 3 73 0 82 8 30 0 98 8 30 0 99 3 73 0 109 3 73 0 110 8 30 0 113 8 30 0 128 8 30 0 129 3 73 0 130 3 73 0 134 3 73 0 135 8 30 0 136 3 73 1 116] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 8 34 0 32 8 34 0 35 3 73 0 37 8 34 0 59 3 73 0 60 8 34 0 61 3 73 0 66 3 73 0 73 8 34 0 76 3 73 0 82 8 34 0 98 8 34 0 99 3 73 0 109 3 73 0 110 8 34 0 113 8 34 0 128 8 34 0 129 3 73 0 130 3 73 0 134 3 73 0 135 8 34 0 136 3 73 1 116] 
#[0 8 38 0 5 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[1 13 217 0 5 8 42 0 32 8 42 0 35 8 42 0 59 8 42 0 61 8 42 0 76 8 42 0 98 8 42 0 99 8 42 0 113 8 42 0 128 8 42 0 129 8 42 0 136] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 8 46 0 32 8 46 0 35 3 73 0 37 8 46 0 59 3 73 0 60 8 46 0 61 3 73 0 66 3 73 0 73 8 46 0 76 3 73 0 82 8 46 0 98 8 46 0 99 3 73 0 109 3 73 0 110 8 46 0 113 8 46 0 128 8 46 0 129 3 73 0 130 3 73 0 134 3 73 0 135 8 46 0 136 3 73 1 116] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 8 50 0 32 8 50 0 35 2 201 0 37 8 50 0 59 2 201 0 60 8 50 0 61 2 201 0 66 2 201 0 73 8 50 0 76 2 201 0 82 8 50 0 98 8 50 0 99 2 201 0 109 2 201 0 110 8 50 0 113 8 50 0 128 8 50 0 129 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 8 50 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 221 0 210 13 221 1 106 1 141 1 111 1 145 1 122] 
#[0 8 54 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[1 2 97 0 2 2 201 0 4 2 105 0 6 2 201 0 8 2 113 0 10 2 201 0 11 2 201 0 12 2 201 0 13 2 201 0 14 2 201 0 15 2 201 0 16 2 201 0 20 2 201 0 22 8 58 0 32 8 58 0 35 2 201 0 37 8 58 0 59 2 201 0 60 8 58 0 61 2 201 0 66 2 201 0 73 8 58 0 76 2 201 0 82 8 58 0 98 8 58 0 99 2 201 0 109 2 201 0 110 8 58 0 113 8 58 0 128 8 58 0 129 2 201 0 130 2 181 0 131 2 201 0 134 2 201 0 135 8 58 0 136 2 193 0 137 2 197 1 109 2 201 1 115 2 201 1 116] 
#[1 1 13 0 2 1 17 0 17 1 29 0 77 0 145 0 131 1 53 0 134 1 57 0 135 2 241 0 139 1 117 0 140 1 141 0 142 1 73 0 146 1 117 0 209 13 225 0 210 13 225 1 106 1 141 1 111 1 145 1 122] 
#[0 13 229 0 136] 
#[0 8 62 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 2 202 0 42 2 202 0 90 2 202 0 94 2 202 0 95 2 202 0 96 2 202 0 114 13 233 0 225] 
#[0 8 66 0 3 0 42 0 136] 
#[0 8 70 0 5 0 9] 
#[1 1 250 0 3 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 34 1 250 0 54 1 250 0 90 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 96 1 250 0 114 1 250 0 116 1 250 0 119 1 250 0 124 1 250 0 131 1 250 0 138 13 237 0 200 5 9 0 224 5 13 0 234] 
#[0 13 241 0 138] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 8 74 0 32 8 74 0 35 3 73 0 37 8 74 0 59 3 73 0 60 8 74 0 61 3 73 0 66 3 73 0 73 8 74 0 76 3 73 0 82 8 74 0 98 8 74 0 99 3 73 0 109 3 73 0 110 8 74 0 113 8 74 0 128 8 74 0 129 3 73 0 130 3 73 0 134 3 73 0 135 8 74 0 136 3 73 1 116] 
#[1 3 65 0 2 3 73 0 4 3 69 0 6 3 73 0 8 3 73 0 11 3 73 0 12 3 73 0 13 3 73 0 15 3 73 0 16 3 73 0 20 3 73 0 22 8 78 0 32 8 78 0 35 3 73 0 37 8 78 0 59 3 73 0 60 8 78 0 61 3 73 0 66 3 73 0 73 8 78 0 76 3 73 0 82 8 78 0 98 8 78 0 99 3 73 0 109 3 73 0 110 8 78 0 113 8 78 0 128 8 78 0 129 3 73 0 130 3 73 0 134 3 73 0 135 8 78 0 136 3 73 1 116] 
#[0 8 82 0 3 0 26 0 28 0 29 0 30 0 34 0 42 0 54 0 90 0 91 0 93 0 94 0 95 0 96 0 114 0 116 0 119 0 124 0 131 0 138] 
#[1 13 245 0 42 8 221 0 90 8 225 0 94 8 229 0 95 8 233 0 96 8 237 0 114 8 245 0 226 8 245 0 227 8 245 0 228 8 245 0 229 8 245 0 230] 
#[0 13 249 0 3] 
#[0 8 86 0 5 0 32 0 35 0 59 0 61 0 76 0 98 0 99 0 113 0 128 0 129 0 136] 
#[0 8 90 0 33 0 89 0 136] 
#[0 8 94 0 3 0 42 0 136]
	).
]

{ #category : #private }
DelphiParser >> actionsForCurrentToken [
	| actions action ids newToken |
	actions := OrderedCollection new: 1.
	ids := currentToken ids.
	ids
		do: [ :anInteger | 
			self addActionsFor: anInteger to: actions.
			(anInteger = scanner atId or: [ currentToken value sameAs: 'on' ])
				ifTrue: [ self
						addActionsFor: scanner identifierId to: actions;
						addActionsFor: scanner constantIdentifierId to: actions ].
			actions notEmpty
				ifTrue: [ ^ actions ] ].
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
