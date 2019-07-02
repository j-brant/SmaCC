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
#[ 0 18 1 73] 
#[ 0 62 2 141] 
#[ 0 138 2 141] 
#[ 0 194 0 198] 
#[ 0 246 2 237] 
#[ 1 46 2 177] 
#[ 1 46 2 181] 
#[ 1 46 2 185] 
#[ 1 46 2 189] 
#[ 1 46 2 205] 
#[ 1 46 2 237] 
#[ 1 46 2 241] 
#[ 1 78 2 177] 
#[ 1 78 2 181] 
#[ 1 78 2 185] 
#[ 1 78 2 189] 
#[ 1 78 2 205] 
#[ 1 78 2 237] 
#[ 1 78 2 241] 
#[ 1 110 2 177] 
#[ 1 110 2 181] 
#[ 1 110 2 185] 
#[ 1 110 2 189] 
#[ 1 110 2 205] 
#[ 1 110 2 237] 
#[ 1 110 2 241] 
#[ 1 114 2 177] 
#[ 1 114 2 181] 
#[ 1 114 2 185] 
#[ 1 114 2 189] 
#[ 1 114 2 205] 
#[ 1 114 2 237] 
#[ 1 114 2 241] 
#[ 1 250 5 77] 
#[ 2 2 2 177] 
#[ 2 2 2 181] 
#[ 2 2 2 185] 
#[ 2 2 2 205] 
#[ 2 2 2 237] 
#[ 2 2 2 241] 
#[ 2 6 2 177] 
#[ 2 6 2 181] 
#[ 2 6 2 185] 
#[ 2 6 2 205] 
#[ 2 6 2 237] 
#[ 2 6 2 241] 
#[ 2 18 2 177] 
#[ 2 18 2 181] 
#[ 2 18 2 185] 
#[ 2 18 2 205] 
#[ 2 18 2 237] 
#[ 2 18 2 241] 
#[ 2 22 2 177] 
#[ 2 22 2 181] 
#[ 2 22 2 185] 
#[ 2 22 2 205] 
#[ 2 22 2 237] 
#[ 2 22 2 241] 
#[ 2 177 2 214] 
#[ 2 181 2 214] 
#[ 2 185 2 214] 
#[ 2 189 2 214] 
#[ 2 205 2 214] 
#[ 2 214 2 237] 
#[ 2 214 2 241] 
#[ 2 177 2 222] 
#[ 2 181 2 222] 
#[ 2 185 2 222] 
#[ 2 189 2 222] 
#[ 2 205 2 222] 
#[ 2 222 2 237] 
#[ 2 222 2 241] 
#[ 2 237 2 246] 
#[ 2 177 3 22] 
#[ 2 181 3 22] 
#[ 2 185 3 22] 
#[ 2 205 3 22] 
#[ 2 237 3 22] 
#[ 2 241 3 22] 
#[ 0 194 9 113] 
#[ 0 218 4 198] 
#[ 0 222 4 202] 
#[ 5 118 10 249] 
#[ 5 118 10 253] 
#[ 5 118 11 45] 
#[ 1 22 3 193] 
#[ 7 122 10 249] 
#[ 7 122 10 253] 
#[ 7 122 11 45]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-02T14:37:42.695515-05:00'
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
	AnonymousFunctionDefinition
	AnonymousProcedureDefinition
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
%hierarchy PropertyExpression (
	InstantiatedGenericPropertyExpression
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
	: Attribute 'attribute'? <identifier> 'name'  OptionalGenericTypeArguments ""="" 'equalToken' DefinedType {{NamedDefinedType}}
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
	: <constantIdentifier> 'name' {{VariableExpression}}
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
	| ""REFERENCE"" 'referenceToken' ""TO"" 'toToken' ""PROCEDURE"" 'procedureToken' OptionalArguments <semicolon> 'semicolon' {{AnonymousProcedureType}}
	;
AnonymousFunctionType
	: ""FUNCTION"" 'functionToken' OptionalArguments "":"" 'colon' Type 'type' OptionalOfObject  <semicolon> 'semicolon' MethodModifiers {{AnonymousFunctionType}}
	| ""REFERENCE"" 'referenceToken' ""TO"" 'toToken' ""FUNCTION"" 'functionToken' OptionalArguments "":"" 'colon' Type 'type' <semicolon> 'semicolon' {{AnonymousFunctionType}}
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
	| QualifiedName 'namespace' ""."" 'period' <identifier> 'name' OptionalGenericTypeArguments {{QualifiedName}}
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
	| Attribute 'attribute' ConstructorHeader {{ConstructorHeader}}
	| DestructorHeader
	| Attribute 'attribute' DestructorHeader {{DestructorHeader}}
	| NewClassMethodComponent
	| InterfacePropertyComponent
	| InterfaceFunctionAssignment
	| InterfaceProcedureAssignment
	| ConstantValueList
	| DefinedTypeList
	;
NewClassMethodComponent
	: Attribute 'attribute' ProcedureHeader {{ProcedureHeader}}
	| Attribute 'attribute' ClassProcedureHeader {{ClassProcedureHeader}}
	| Attribute 'attribute' FunctionHeader {{FunctionHeader}}
	| Attribute 'attribute' ClassFunctionHeader {{ClassFunctionHeader}}
	| Attribute 'attribute' ClassOperatorHeader {{ClassOperatorHeader}}
	| InterfaceMethodComponent
	;
Attribute
	: ""["" 'left' ConstantExpression 'expression' ""]"" 'right' {{Attribute}}
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
	| EnumType
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
	| PropertyExpression {{PropertyExpression}}
	| InstantiatedGenericPropertyExpression
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
	| AnonymousFunction
	| AnonymousProcedure
	;
PropertyExpression
	: Expression 'expression' ""."" 'period' <identifier> 'name' 
	| Expression 'expression' ""."" 'period' ""&OPERATOR"" 'name'
	;
InstantiatedGenericPropertyExpression
	: PropertyExpression InstantiatedGenericTypeArguments {{}}
	;
AnonymousProcedure
	: AnonymousProcedureHeader 'header' MethodComponents {{AnonymousProcedureDefinition}}
	;
AnonymousProcedureHeader
	: ""PROCEDURE"" 'procedureToken' OptionalArguments {{ProcedureHeader}}
	;
AnonymousFunction
	: AnonymousFunctionHeader 'header' MethodComponents {{AnonymousFunctionDefinition}}
	;
AnonymousFunctionHeader
	: ""FUNCTION"" 'functionToken' OptionalArguments OptionalType {{FunctionHeader}}
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
	#(165 0 #reduceActionForUsesList1: 5869569 false ) 
	#(358 0 #reduceActionForBeforeAsm1: 32181249 false ) 
	#(328 0 #reduceActionForStatement14: 28700686 false ) 
	#(202 0 #nil 11268097 false ) 
	#(149 1 #reduceActionForFile2: 4219906 false ) 
	#(149 1 #reduceActionForFile3: 4219907 false ) 
	#(149 1 #reduceActionForFile4: 4219908 false ) 
	#(149 1 #reduceActionForFile1: 4219905 false ) 
	#(164 0 #nil 5754881 false ) 
	#(162 1 #reduceActionForUnitFile2: 5428226 false ) 
	#(320 0 #reduceActionForMethodVariables2: 27945986 false ) 
	#(194 0 #reduceActionForOptionalArguments1: 10160129 false ) 
	#(375 1 #reduceActionForInheritedFunctionCall4: 35288068 false ) 
	#(350 1 #reduceActionForRaiseStatement2: 31347714 false ) 
	#(367 1 #reduceActionForVariableExpression1: 34585601 false ) 
	#(210 1 #liftFirstValue: 11960321 false ) 
	#(374 1 #liftFirstValue: 35265537 false ) 
	#(359 1 #reduceActionForExpression10: 32299018 false ) 
	#(359 1 #reduceActionForExpression10: 32299016 false ) 
	#(328 1 #reduceActionForStatement13: 28700685 false ) 
	#(328 1 #reduceActionForStatement11: 28700683 false ) 
	#(328 1 #reduceActionForStatement2: 28700674 false ) 
	#(328 1 #reduceActionForStatement3: 28700675 false ) 
	#(328 1 #reduceActionForStatement4: 28700676 false ) 
	#(328 1 #reduceActionForStatement5: 28700677 false ) 
	#(328 1 #reduceActionForStatement6: 28700678 false ) 
	#(328 1 #reduceActionForStatement7: 28700679 false ) 
	#(328 1 #reduceActionForStatement8: 28700680 false ) 
	#(328 1 #reduceActionForStatement9: 28700681 false ) 
	#(328 1 #reduceActionForStatement10: 28700682 false ) 
	#(328 1 #liftFirstValue: 28700684 false ) 
	#(356 1 #liftFirstValue: 32002050 false ) 
	#(328 1 #liftFirstValue: 28700673 false ) 
	#(359 1 #reduceActionForExpression3: 32299011 false ) 
	#(359 1 #liftFirstValue: 32299012 false ) 
	#(359 1 #liftFirstValue: 32299032 false ) 
	#(359 1 #liftFirstValue: 32299031 false ) 
	#(359 1 #liftFirstValue: 32299030 false ) 
	#(359 1 #liftFirstValue: 32299009 false ) 
	#(359 1 #liftFirstValue: 32299010 false ) 
	#(359 1 #liftFirstValue: 32299027 false ) 
	#(359 1 #reduceActionForExpression10: 32299017 false ) 
	#(359 1 #liftFirstValue: 32299015 false ) 
	#(359 1 #reduceActionForExpression10: 32299029 false ) 
	#(212 0 #reduceActionForConstantArray2: 13042690 false ) 
	#(242 1 #reduceActionForFileType2: 17563650 false ) 
	#(202 1 #liftFirstValue: 11268098 false ) 
	#(211 1 #reduceActionForVariableExpression1: 11982851 false ) 
	#(190 1 #reduceActionForVariableExpression1: 9073665 false ) 
	#(211 1 #reduceActionForExpression10: 11982855 false ) 
	#(241 1 #liftFirstValue: 17469444 false ) 
	#(241 1 #liftFirstValue: 17469441 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8373249 false ) 
	#(241 1 #liftFirstValue: 17469442 false ) 
	#(241 1 #liftFirstValue: 17469443 false ) 
	#(187 1 #liftFirstValue: 8373257 false ) 
	#(187 1 #liftFirstValue: 8373252 false ) 
	#(187 1 #liftFirstValue: 8373253 false ) 
	#(187 1 #liftFirstValue: 8373258 false ) 
	#(211 1 #reduceActionForExpression10: 11982849 false ) 
	#(209 1 #liftFirstValue: 11896833 false ) 
	#(187 1 #liftFirstValue: 8373255 false ) 
	#(187 1 #liftFirstValue: 8373251 false ) 
	#(211 1 #liftFirstValue: 11982857 false ) 
	#(211 1 #reduceActionForExpression10: 11982854 false ) 
	#(211 1 #reduceActionForExpression10: 11982850 false ) 
	#(180 0 #reduceActionForOptionalArguments1: 7523329 false ) 
	#(168 1 #reduceActionForFullModuleName1: 6136833 false ) 
	#(191 0 #nil 9415681 false ) 
	#(166 1 #reduceActionForUsesModuleList1: 5948417 false ) 
	#(167 1 #reduceActionForUsesModule1: 6023169 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4779009 false ) 
	#(289 0 #nil 23561217 false ) 
	#(156 1 #reduceActionForMainMethod1: 4938753 false ) 
	#(359 2 #reduceActionForExpression15: 32299023 false ) 
	#(327 1 #reduceActionForStatements1: 28597249 false ) 
	#(283 0 #reduceActionForArgumentList1: 23050241 false ) 
	#(288 0 #nil 23474177 false ) 
	#(262 0 #reduceActionForOptionalType1: 19516417 false ) 
	#(330 2 #reduceActionForGotoStatement1: 29312001 false ) 
	#(330 2 #reduceActionForGotoStatement1: 29312002 false ) 
	#(375 2 #reduceActionForInheritedFunctionCall3: 35288067 false ) 
	#(359 2 #reduceActionForExpression16: 32299024 false ) 
	#(363 2 #reduceActionForAnonymousProcedureHeader1: 33994753 false ) 
	#(351 0 #reduceActionForOptionalType1: 31456257 false ) 
	#(336 0 #nil 30056449 false ) 
	#(334 1 #reduceActionForStatements1: 29850625 false ) 
	#(369 2 #reduceActionForSetConstructor2: 34759682 false ) 
	#(371 1 #reduceActionForSetValue1: 34990081 false ) 
	#(370 1 #reduceActionForStatements1: 34889729 false ) 
	#(359 2 #reduceActionForExpression17: 32299025 false ) 
	#(359 2 #reduceActionForExpression18: 32299026 false ) 
	#(368 2 #reduceActionForInstantiatedGenericVariableExpression1: 34655233 false ) 
	#(379 1 #liftFirstValue: 35986439 false ) 
	#(379 1 #liftFirstValue: 35986440 false ) 
	#(379 1 #liftFirstValue: 35986447 false ) 
	#(379 1 #liftFirstValue: 35986448 false ) 
	#(379 1 #liftFirstValue: 35986436 false ) 
	#(378 1 #liftFirstValue: 35921921 false ) 
	#(379 1 #liftFirstValue: 35986433 false ) 
	#(379 1 #liftFirstValue: 35986445 false ) 
	#(379 1 #liftFirstValue: 35986437 false ) 
	#(379 1 #liftFirstValue: 35986450 false ) 
	#(379 1 #liftFirstValue: 35986451 false ) 
	#(379 1 #liftFirstValue: 35986438 false ) 
	#(379 1 #liftFirstValue: 35986434 false ) 
	#(379 1 #liftFirstValue: 35986443 false ) 
	#(379 1 #liftFirstValue: 35986444 false ) 
	#(379 1 #liftFirstValue: 35986435 false ) 
	#(379 1 #liftFirstValue: 35986446 false ) 
	#(379 1 #liftFirstValue: 35986449 false ) 
	#(379 1 #liftFirstValue: 35986442 false ) 
	#(379 1 #liftFirstValue: 35986441 false ) 
	#(359 2 #reduceActionForExpression20: 32299028 false ) 
	#(359 2 #reduceActionForExpression14: 32299022 false ) 
	#(378 1 #liftFirstValue: 35921922 false ) 
	#(361 2 #reduceActionForInstantiatedGenericPropertyExpression1: 33779713 false ) 
	#(362 2 #reduceActionForAnonymousProcedure1: 33883137 false ) 
	#(364 2 #reduceActionForAnonymousFunction1: 34095105 false ) 
	#(185 1 #reduceActionForEnumName1: 8152065 false ) 
	#(184 1 #reduceActionForStatements1: 8079361 false ) 
	#(214 1 #reduceActionForUsesModule1: 13270017 false ) 
	#(212 1 #reduceActionForConstantArray1: 13042689 false ) 
	#(213 1 #reduceActionForUsesModuleList1: 13089793 false ) 
	#(342 0 #nil 30648321 false ) 
	#(215 1 #reduceActionForConstantArray1: 13405185 false ) 
	#(216 1 #reduceActionForStatements1: 13448193 false ) 
	#(211 2 #reduceActionForExpression15: 11982863 false ) 
	#(211 2 #reduceActionForExpression16: 11982860 false ) 
	#(258 0 #reduceActionForOptionalType1: 19169281 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8373259 false ) 
	#(211 2 #reduceActionForExpression17: 11982861 false ) 
	#(211 2 #reduceActionForExpression18: 11982862 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8373250 false ) 
	#(190 2 #reduceActionForNamedType3: 9073667 false ) 
	#(244 0 #reduceActionForOptionalArguments1: 17886210 false ) 
	#(235 0 #reduceActionForMethodVariables2: 16011265 false ) 
	#(191 1 #liftFirstValue: 9415683 false ) 
	#(191 1 #liftFirstValue: 9415682 false ) 
	#(158 3 #reduceActionForPackageLine1: 5056513 false ) 
	#(165 3 #reduceActionForUsesList2: 5869570 false ) 
	#(160 1 #reduceActionForStatements1: 5235713 false ) 
	#(169 0 #reduceActionForMethodVariables2: 6261761 false ) 
	#(380 0 #nil 36172801 false ) 
	#(150 3 #reduceActionForProgramFile2: 4349954 false ) 
	#(321 1 #liftFirstValue: 28017667 false ) 
	#(321 1 #liftFirstValue: 28017671 false ) 
	#(321 1 #liftFirstValue: 28017666 false ) 
	#(321 1 #liftFirstValue: 28017668 false ) 
	#(300 1 #reduceActionForProcedureDefinition2: 25232386 false ) 
	#(301 1 #reduceActionForExternalProcedureHeader1: 25399297 false ) 
	#(303 1 #reduceActionForExternalProcedureHeader1: 25596929 false ) 
	#(321 1 #liftFirstValue: 28017669 false ) 
	#(308 1 #reduceActionForFunctionDefinition2: 26274818 false ) 
	#(309 1 #reduceActionForExternalFunctionHeader1: 26436609 false ) 
	#(311 1 #reduceActionForExternalFunctionHeader1: 26629121 false ) 
	#(320 2 #reduceActionForMethodVariables1: 27945985 false ) 
	#(321 1 #liftFirstValue: 28017670 false ) 
	#(321 1 #liftFirstValue: 28017665 false ) 
	#(323 1 #reduceActionForVars1: 28256257 false ) 
	#(359 3 #reduceActionForExpression12: 32299020 false ) 
	#(356 3 #reduceActionForStatementBlock1: 32002049 false ) 
	#(288 1 #liftFirstValue: 23474179 false ) 
	#(288 1 #liftFirstValue: 23474180 false ) 
	#(288 1 #liftFirstValue: 23474178 false ) 
	#(283 1 #reduceActionForConstantArray1: 23050242 false ) 
	#(284 1 #reduceActionForStatements1: 23084033 false ) 
	#(365 3 #reduceActionForAnonymousFunctionHeader1: 34203649 false ) 
	#(350 3 #reduceActionForRaiseStatement1: 31347713 false ) 
	#(340 0 #nil 30458881 false ) 
	#(369 3 #reduceActionForSetConstructor1: 34759681 false ) 
	#(329 3 #reduceActionForPackageLine1: 29176833 false ) 
	#(189 1 #reduceActionForStatements1: 8910849 false ) 
	#(329 3 #reduceActionForPackageLine1: 29176834 false ) 
	#(357 3 #reduceActionForAsmBlock1: 32106497 false ) 
	#(359 3 #reduceActionForExpression6: 32299014 false ) 
	#(377 1 #liftFirstValue: 35787777 false ) 
	#(376 1 #reduceActionForStatements1: 35680257 false ) 
	#(360 3 #reduceActionForPackageLine1: 33634306 false ) 
	#(360 3 #reduceActionForPackageLine1: 33634305 false ) 
	#(359 3 #reduceActionForExpression13: 32299021 false ) 
	#(373 1 #reduceActionForStatements1: 35177473 false ) 
	#(359 3 #reduceActionForExpression11: 32299019 false ) 
	#(183 3 #reduceActionForEnumType1: 8026113 false ) 
	#(211 3 #reduceActionForConstantExpression11: 11982859 false ) 
	#(342 1 #liftFirstValue: 30648322 false ) 
	#(242 3 #reduceActionForFileType1: 17563649 false ) 
	#(195 3 #reduceActionForSetType2: 10224642 false ) 
	#(195 3 #reduceActionForSetType1: 10224641 false ) 
	#(234 2 #reduceActionForQualifiedName1: 15810561 false ) 
	#(190 3 #reduceActionForNamedType2: 9073666 false ) 
	#(226 0 #reduceActionForMethodVariables2: 14877697 false ) 
	#(225 1 #reduceActionForImplicitClassSection1: 14804993 false ) 
	#(208 3 #reduceActionForRangeType1: 11806721 false ) 
	#(218 1 #reduceActionForStatements1: 13707265 false ) 
	#(211 3 #reduceActionForNamedType2: 11982852 false ) 
	#(211 3 #reduceActionForExpression11: 11982853 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8373256 false ) 
	#(238 3 #reduceActionForAttribute1: 17006593 false ) 
	#(181 1 #reduceActionForStatements1: 7611393 false ) 
	#(168 3 #reduceActionForFullModuleName2: 6136834 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4662273 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4465665 false ) 
	#(163 4 #reduceActionForLibraryLine1: 5650433 false ) 
	#(166 3 #reduceActionForUsesModuleList2: 5948418 false ) 
	#(167 3 #reduceActionForPackageLine1: 6023170 false ) 
	#(150 4 #reduceActionForProgramFile1: 4349953 false ) 
	#(154 2 #reduceActionForMethodVariables1: 4779010 false ) 
	#(159 3 #reduceActionForRequires1: 5154817 false ) 
	#(157 4 #reduceActionForPackageFile1: 4999169 false ) 
	#(164 3 #reduceActionForInterfaceSection2: 5754882 false ) 
	#(291 0 #reduceActionForMethodVariables2: 23793665 false ) 
	#(381 0 #nil 36283393 false ) 
	#(171 2 #reduceActionForConstantValueList1: 6491137 false ) 
	#(172 1 #reduceActionForConstantValues1: 6569985 false ) 
	#(286 1 #reduceActionForStatements1: 23318529 false ) 
	#(174 2 #reduceActionForResourceStringList1: 6855681 false ) 
	#(175 1 #reduceActionForConstantValues1: 6955009 false ) 
	#(324 2 #reduceActionForVarsVars2: 28285954 false ) 
	#(325 1 #reduceActionForConstantValues1: 28374017 false ) 
	#(177 2 #reduceActionForDefinedTypeList1: 7185409 false ) 
	#(178 1 #reduceActionForConstantValues1: 7266305 false ) 
	#(324 2 #reduceActionForVarsVars2: 28285953 false ) 
	#(300 2 #reduceActionForProcedureDefinition1: 25232385 false ) 
	#(277 0 #reduceActionForMethodVariables2: 21537793 false ) 
	#(308 2 #reduceActionForFunctionDefinition1: 26274817 false ) 
	#(319 3 #reduceActionForMethodComponents1: 27857921 false ) 
	#(327 3 #reduceActionForStatements2: 28597250 false ) 
	#(348 1 #reduceActionForBaseCaseLabel1: 31135745 false ) 
	#(349 0 #reduceActionForElseCase1: 31297537 false ) 
	#(344 1 #reduceActionForStatements1: 30752769 false ) 
	#(347 1 #reduceActionForStatements1: 31046657 false ) 
	#(346 1 #liftFirstValue: 30941185 false ) 
	#(194 3 #reduceActionForRequires1: 10160130 false ) 
	#(285 2 #reduceActionForArgument2: 23179266 false ) 
	#(262 2 #reduceActionForGotoStatement1: 19516418 false ) 
	#(332 4 #reduceActionForIfStatement1: 29516801 false ) 
	#(375 4 #reduceActionForInheritedFunctionCall2: 35288066 false ) 
	#(351 2 #reduceActionForGotoStatement1: 31456258 false ) 
	#(331 4 #reduceActionForRepeatStatement1: 29413377 false ) 
	#(339 0 #nil 30383105 false ) 
	#(337 1 #reduceActionForConstantValues1: 30216193 false ) 
	#(355 4 #reduceActionForLibraryLine1: 31896577 false ) 
	#(334 3 #reduceActionForStatements2: 29850626 false ) 
	#(333 4 #reduceActionForRepeatStatement1: 29756417 false ) 
	#(371 3 #reduceActionForSetValue2: 34990082 false ) 
	#(370 3 #reduceActionForStatements2: 34889730 false ) 
	#(188 3 #reduceActionForRequires1: 8809473 false ) 
	#(359 4 #reduceActionForExpression5: 32299013 false ) 
	#(372 3 #reduceActionForRequires1: 35123201 false ) 
	#(185 3 #reduceActionForEnumName2: 8152066 false ) 
	#(217 3 #reduceActionForConstantRecordField1: 13582337 false ) 
	#(184 3 #reduceActionForStatements2: 8079362 false ) 
	#(214 3 #reduceActionForPackageLine1: 13270018 false ) 
	#(213 3 #reduceActionForUsesModuleList2: 13089794 false ) 
	#(211 4 #reduceActionForConstantExpression10: 11982858 false ) 
	#(216 3 #reduceActionForStatements2: 13448194 false ) 
	#(258 2 #reduceActionForGotoStatement1: 19169282 false ) 
	#(246 1 #liftFirstValue: 18063362 false ) 
	#(246 1 #liftFirstValue: 18063361 false ) 
	#(245 1 #reduceActionForStatements1: 17951745 false ) 
	#(199 4 #reduceActionForRecordType1: 10858497 false ) 
	#(201 2 #reduceActionForRecordFieldList1: 11131905 false ) 
	#(236 1 #liftFirstValue: 16091148 false ) 
	#(236 1 #liftFirstValue: 16091149 false ) 
	#(235 2 #reduceActionForMethodVariables1: 16011266 false ) 
	#(236 1 #liftFirstValue: 16091144 false ) 
	#(236 1 #liftFirstValue: 16091146 false ) 
	#(236 1 #liftFirstValue: 16091147 false ) 
	#(236 1 #liftFirstValue: 16091145 false ) 
	#(237 1 #liftFirstValue: 16613382 false ) 
	#(236 1 #liftFirstValue: 16091140 false ) 
	#(236 1 #liftFirstValue: 16091142 false ) 
	#(253 1 #liftFirstValue: 18695169 false ) 
	#(253 1 #liftFirstValue: 18695170 false ) 
	#(253 1 #liftFirstValue: 18695171 false ) 
	#(253 1 #liftFirstValue: 18695172 false ) 
	#(253 1 #liftFirstValue: 18695173 false ) 
	#(252 1 #liftFirstValue: 18622465 false ) 
	#(263 1 #reduceActionForPropertyHeader1: 19564545 false ) 
	#(252 1 #liftFirstValue: 18622466 false ) 
	#(254 1 #liftFirstValue: 18833409 false ) 
	#(254 1 #liftFirstValue: 18833410 false ) 
	#(255 1 #liftFirstValue: 18917377 false ) 
	#(255 1 #liftFirstValue: 18917378 false ) 
	#(256 1 #liftFirstValue: 18998273 false ) 
	#(256 1 #liftFirstValue: 18998274 false ) 
	#(257 1 #liftFirstValue: 19076097 false ) 
	#(257 1 #liftFirstValue: 19076098 false ) 
	#(259 1 #liftFirstValue: 19261441 false ) 
	#(259 1 #liftFirstValue: 19261442 false ) 
	#(260 1 #liftFirstValue: 19336193 false ) 
	#(260 1 #liftFirstValue: 19336194 false ) 
	#(261 1 #liftFirstValue: 19426305 false ) 
	#(261 1 #liftFirstValue: 19426306 false ) 
	#(236 1 #liftFirstValue: 16091139 false ) 
	#(211 4 #reduceActionForExpression5: 11982856 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8373254 false ) 
	#(180 3 #reduceActionForRequires1: 7523330 false ) 
	#(221 0 #reduceActionForMethodVariables2: 14475265 false ) 
	#(248 1 #liftFirstValue: 18314242 false ) 
	#(248 1 #liftFirstValue: 18314241 false ) 
	#(232 0 #reduceActionForOptionalArguments1: 15649793 false ) 
	#(179 4 #reduceActionForNamedDefinedType1: 7373825 false ) 
	#(182 1 #reduceActionForUsesModule1: 7754755 false ) 
	#(182 1 #reduceActionForUsesModule1: 7754756 false ) 
	#(186 1 #liftFirstValue: 8261636 false ) 
	#(186 1 #liftFirstValue: 8261633 false ) 
	#(186 1 #liftFirstValue: 8261637 false ) 
	#(186 1 #liftFirstValue: 8261634 false ) 
	#(186 1 #liftFirstValue: 8261635 false ) 
	#(247 1 #reduceActionForInterfaceType2: 18119682 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4582401 false ) 
	#(160 3 #reduceActionForStatements2: 5235714 false ) 
	#(161 3 #reduceActionForUsesList2: 5345281 false ) 
	#(384 2 #reduceActionForGotoStatement1: 36588545 false ) 
	#(169 2 #reduceActionForMethodVariables1: 6261762 false ) 
	#(170 1 #liftFirstValue: 6355971 false ) 
	#(170 1 #liftFirstValue: 6355970 false ) 
	#(170 1 #liftFirstValue: 6355969 false ) 
	#(170 1 #liftFirstValue: 6355972 false ) 
	#(170 1 #liftFirstValue: 6355973 false ) 
	#(170 1 #liftFirstValue: 6355974 false ) 
	#(290 0 #nil 23707649 false ) 
	#(380 2 #reduceActionForInitializationSection2: 36172802 false ) 
	#(172 2 #reduceActionForMethodVariables1: 6569986 false ) 
	#(322 3 #reduceActionForLabels1: 28164097 false ) 
	#(175 2 #reduceActionForMethodVariables1: 6955010 false ) 
	#(325 2 #reduceActionForMethodVariables1: 28374018 false ) 
	#(178 2 #reduceActionForMethodVariables1: 7266306 false ) 
	#(281 2 #reduceActionForExternalMethodModifier1: 22107137 false ) 
	#(281 2 #reduceActionForExternalMethodModifier6: 22107142 false ) 
	#(302 3 #reduceActionForExternalProcedureHeaderVars1: 25479169 false ) 
	#(310 3 #reduceActionForExternalFunctionHeaderVars1: 26513409 false ) 
	#(343 2 #reduceActionForCaseOptionList1: 30700545 false ) 
	#(354 1 #liftFirstValue: 31863810 false ) 
	#(354 1 #liftFirstValue: 31863809 false ) 
	#(284 3 #reduceActionForStatements2: 23084034 false ) 
	#(375 5 #reduceActionForInheritedFunctionCall1: 35288065 false ) 
	#(336 3 #reduceActionForExcept3: 30056451 false ) 
	#(337 2 #reduceActionForMethodVariables1: 30216194 false ) 
	#(336 3 #reduceActionForExcept2: 30056450 false ) 
	#(340 2 #reduceActionForFinally2: 30458882 false ) 
	#(335 5 #reduceActionForTryStatement1: 29956097 false ) 
	#(189 3 #reduceActionForStatements2: 8910850 false ) 
	#(376 3 #reduceActionForStatements2: 35680258 false ) 
	#(377 3 #reduceActionForMethodArgument2: 35787778 false ) 
	#(373 3 #reduceActionForStatements2: 35177474 false ) 
	#(192 5 #reduceActionForAnonymousProcedureType1: 9492481 false ) 
	#(192 5 #reduceActionForAnonymousProcedureType2: 9492482 false ) 
	#(195 5 #reduceActionForSetType3: 10224643 false ) 
	#(234 4 #reduceActionForQualifiedName2: 15810562 false ) 
	#(244 3 #reduceActionForRequires1: 17886209 false ) 
	#(243 5 #reduceActionForArrayType2: 17675266 false ) 
	#(243 5 #reduceActionForArrayType1: 17675265 false ) 
	#(201 3 #reduceActionForRecordFieldList2: 11131906 false ) 
	#(226 2 #reduceActionForMethodVariables1: 14877698 false ) 
	#(227 1 #liftFirstValue: 14940161 false ) 
	#(227 1 #liftFirstValue: 14940162 false ) 
	#(227 1 #liftFirstValue: 14940163 false ) 
	#(227 1 #liftFirstValue: 14940164 false ) 
	#(265 2 #reduceActionForClassPropertyHeader1: 19822593 false ) 
	#(306 2 #reduceActionForExternalClassProcedureHeader1: 26045441 false ) 
	#(307 2 #reduceActionForExternalClassProcedureHeader1: 26157057 false ) 
	#(314 2 #reduceActionForExternalClassFunctionHeader1: 27078657 false ) 
	#(315 2 #reduceActionForExternalClassFunctionHeader1: 27187201 false ) 
	#(236 2 #reduceActionForNewClassComponent2: 16091138 false ) 
	#(299 0 #reduceActionForOptionalType1: 25184257 false ) 
	#(267 0 #nil 20245505 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16091141 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16091143 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16613377 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16613378 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16613379 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16613380 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16613381 false ) 
	#(218 3 #reduceActionForStatements2: 13707266 false ) 
	#(181 3 #reduceActionForStatements2: 7611394 false ) 
	#(182 2 #reduceActionForDefinedType2: 7754754 false ) 
	#(249 0 #nil 18369537 false ) 
	#(179 5 #reduceActionForNamedDefinedType2: 7373826 false ) 
	#(155 3 #reduceActionForLibraryExport1: 4829185 false ) 
	#(292 1 #liftFirstValue: 23853066 false ) 
	#(292 1 #liftFirstValue: 23853067 false ) 
	#(292 1 #liftFirstValue: 23853064 false ) 
	#(289 4 #reduceActionForImplementationSection2: 23561218 false ) 
	#(291 2 #reduceActionForMethodVariables1: 23793666 false ) 
	#(292 1 #liftFirstValue: 23853057 false ) 
	#(293 1 #reduceActionForConstructorDefinition2: 24140802 false ) 
	#(292 1 #liftFirstValue: 23853058 false ) 
	#(296 1 #reduceActionForDestructorDefinition2: 24670210 false ) 
	#(292 1 #liftFirstValue: 23853059 false ) 
	#(292 1 #liftFirstValue: 23853060 false ) 
	#(305 1 #reduceActionForClassProcedureDefinition2: 25852930 false ) 
	#(292 1 #liftFirstValue: 23853061 false ) 
	#(292 1 #liftFirstValue: 23853062 false ) 
	#(313 1 #reduceActionForClassFunctionDefinition2: 26891266 false ) 
	#(292 1 #liftFirstValue: 23853063 false ) 
	#(316 1 #reduceActionForClassOperatorDefinition2: 27301890 false ) 
	#(292 1 #liftFirstValue: 23853065 false ) 
	#(292 1 #liftFirstValue: 23853068 false ) 
	#(381 2 #reduceActionForFinalizationSection2: 36283394 false ) 
	#(162 6 #reduceActionForUnitFile1: 5428225 false ) 
	#(286 3 #reduceActionForStatements2: 23318530 false ) 
	#(278 0 #reduceActionForMethodVariables2: 21608449 false ) 
	#(224 0 #nil 14744577 false ) 
	#(281 3 #reduceActionForExternalMethodModifier4: 22107140 false ) 
	#(281 3 #reduceActionForExternalMethodModifier4: 22107138 false ) 
	#(282 1 #liftFirstValue: 22761483 false ) 
	#(282 1 #liftFirstValue: 22761477 false ) 
	#(282 1 #liftFirstValue: 22761486 false ) 
	#(282 1 #liftFirstValue: 22761481 false ) 
	#(282 1 #liftFirstValue: 22761487 false ) 
	#(282 1 #liftFirstValue: 22761490 false ) 
	#(282 1 #liftFirstValue: 22761485 false ) 
	#(282 1 #liftFirstValue: 22761493 false ) 
	#(282 1 #liftFirstValue: 22761492 false ) 
	#(282 1 #liftFirstValue: 22761491 false ) 
	#(282 1 #liftFirstValue: 22761484 false ) 
	#(282 1 #liftFirstValue: 22761473 false ) 
	#(282 1 #liftFirstValue: 22761474 false ) 
	#(282 1 #liftFirstValue: 22761478 false ) 
	#(282 1 #liftFirstValue: 22761489 false ) 
	#(282 1 #liftFirstValue: 22761476 false ) 
	#(282 1 #liftFirstValue: 22761479 false ) 
	#(282 1 #liftFirstValue: 22761494 false ) 
	#(282 1 #liftFirstValue: 22761488 false ) 
	#(282 1 #liftFirstValue: 22761475 false ) 
	#(282 1 #liftFirstValue: 22761482 false ) 
	#(282 1 #liftFirstValue: 22761480 false ) 
	#(277 2 #reduceActionForMethodVariables1: 21537794 false ) 
	#(279 1 #liftFirstValue: 21711873 false ) 
	#(279 1 #liftFirstValue: 21711874 false ) 
	#(348 3 #reduceActionForBaseCaseLabel2: 31135746 false ) 
	#(349 2 #reduceActionForElseCase2: 31297538 false ) 
	#(341 6 #reduceActionForCaseStatement1: 30526465 false ) 
	#(344 3 #reduceActionForStatements2: 30752770 false ) 
	#(345 3 #reduceActionForCaseOption1: 30855169 false ) 
	#(347 3 #reduceActionForStatements2: 31046658 false ) 
	#(346 3 #reduceActionForCaseLabel2: 30941186 false ) 
	#(353 6 #reduceActionForForInStatement1: 31717377 false ) 
	#(287 0 #reduceActionForOptionalType1: 23409665 false ) 
	#(332 6 #reduceActionForForInStatement1: 29516802 false ) 
	#(366 6 #reduceActionForMemExpression1: 34313217 false ) 
	#(366 6 #reduceActionForMemExpression1: 34313218 false ) 
	#(339 2 #reduceActionForPossibleExceptElse2: 30383106 false ) 
	#(200 6 #reduceActionForRecordHelperType1: 10963969 false ) 
	#(197 1 #reduceActionForStatements1: 10658817 false ) 
	#(196 3 #reduceActionForTwoItemSetNameList1: 10502145 false ) 
	#(245 3 #reduceActionForStatements2: 17951746 false ) 
	#(228 2 #reduceActionForPrivateClassSection2: 15053826 false ) 
	#(229 2 #reduceActionForProtectedClassSection2: 15246338 false ) 
	#(230 2 #reduceActionForPublicClassSection1: 15453185 false ) 
	#(231 2 #reduceActionForPublishedClassSection1: 15545345 false ) 
	#(294 3 #reduceActionForExternalConstructorHeader1: 24317953 false ) 
	#(297 3 #reduceActionForExternalConstructorHeader1: 24842241 false ) 
	#(317 3 #reduceActionForExternalConstructorHeader1: 27489281 false ) 
	#(198 3 #reduceActionForMetaclassType1: 10762241 false ) 
	#(222 1 #liftFirstValue: 14550017 false ) 
	#(222 1 #liftFirstValue: 14550018 false ) 
	#(221 2 #reduceActionForMethodVariables1: 14475266 false ) 
	#(219 3 #reduceActionForNewClassType2: 13827074 false ) 
	#(233 1 #reduceActionForStatements1: 15711233 false ) 
	#(182 3 #reduceActionForPackageLine1: 7754757 false ) 
	#(182 3 #reduceActionForPackageLine1: 7754753 false ) 
	#(250 0 #reduceActionForMethodVariables2: 18445313 false ) 
	#(290 2 #reduceActionForImplementationCode2: 23707650 false ) 
	#(383 1 #reduceActionForStatements1: 36497409 false ) 
	#(293 2 #reduceActionForConstructorDefinition1: 24140801 false ) 
	#(296 2 #reduceActionForDestructorDefinition1: 24670209 false ) 
	#(305 2 #reduceActionForClassProcedureDefinition1: 25852929 false ) 
	#(313 2 #reduceActionForClassFunctionDefinition1: 26891265 false ) 
	#(316 2 #reduceActionForClassOperatorDefinition1: 27301889 false ) 
	#(304 5 #reduceActionForNonExternalProcedureHeaderVars1: 25682945 false ) 
	#(224 1 #liftFirstValue: 14744578 false ) 
	#(280 2 #reduceActionForExternalMethodModifier6: 21786625 false ) 
	#(285 5 #reduceActionForArgument1: 23179265 false ) 
	#(193 7 #reduceActionForAnonymousFunctionType1: 9804801 false ) 
	#(193 7 #reduceActionForAnonymousFunctionType2: 9804802 false ) 
	#(228 3 #reduceActionForPrivateClassSection1: 15053825 false ) 
	#(229 3 #reduceActionForProtectedClassSection1: 15246337 false ) 
	#(299 2 #reduceActionForGotoStatement1: 25184258 false ) 
	#(266 0 #reduceActionForPropertyValues1: 19914753 false ) 
	#(232 3 #reduceActionForRequires1: 15649794 false ) 
	#(382 3 #reduceActionForExportsDefinition1: 36386817 false ) 
	#(312 6 #reduceActionForNonExternalFunctionHeaderVars1: 26712065 false ) 
	#(278 2 #reduceActionForMethodVariables1: 21608450 false ) 
	#(176 5 #reduceActionForResource1: 7029761 false ) 
	#(281 5 #reduceActionForExternalMethodModifier5: 22107141 false ) 
	#(281 5 #reduceActionForExternalMethodModifier5: 22107139 false ) 
	#(280 3 #reduceActionForNonExternalMethodModifier3: 21786627 false ) 
	#(280 3 #reduceActionForNonExternalMethodModifier3: 21786626 false ) 
	#(352 8 #reduceActionForForStatement1: 31523841 false ) 
	#(287 2 #reduceActionForGotoStatement1: 23409666 false ) 
	#(338 5 #reduceActionForOnDo1: 30280705 false ) 
	#(197 3 #reduceActionForStatements2: 10658818 false ) 
	#(295 5 #reduceActionForNonExternalConstructorHeader1: 24454145 false ) 
	#(298 5 #reduceActionForNonExternalDestructorHeader1: 24975361 false ) 
	#(239 5 #reduceActionForInterfaceFunctionAssignment1: 17093633 false ) 
	#(240 5 #reduceActionForInterfaceProcedureAssignment1: 17276929 false ) 
	#(267 3 #reduceActionForPropertyArrayAccessors2: 20245506 false ) 
	#(236 5 #reduceActionForNewClassComponent1: 16091137 false ) 
	#(233 3 #reduceActionForStatements2: 15711234 false ) 
	#(223 5 #reduceActionForOldClassType1: 14595073 false ) 
	#(249 3 #reduceActionForGuid2: 18369538 false ) 
	#(247 5 #reduceActionForInterfaceType1: 18119681 false ) 
	#(250 2 #reduceActionForMethodVariables1: 18445314 false ) 
	#(251 1 #liftFirstValue: 18537474 false ) 
	#(251 1 #liftFirstValue: 18537473 false ) 
	#(383 3 #reduceActionForStatements2: 36497410 false ) 
	#(326 6 #reduceActionForVariable1: 28473345 false ) 
	#(204 1 #reduceActionForStatements1: 11466753 false ) 
	#(206 1 #reduceActionForStatements1: 11681793 false ) 
	#(207 1 #liftFirstValue: 11768833 false ) 
	#(295 6 #reduceActionForNonExternalConstructorHeader2: 24454146 false ) 
	#(298 6 #reduceActionForNonExternalDestructorHeader2: 24975362 false ) 
	#(272 1 #reduceActionForPropertyDefault2: 20920322 false ) 
	#(272 1 #reduceActionForPropertyDefault3: 20920323 false ) 
	#(276 0 #nil 21437441 false ) 
	#(266 2 #reduceActionForPropertyValues2: 19914754 false ) 
	#(266 2 #reduceActionForCaseOptionList1: 19914755 false ) 
	#(266 2 #reduceActionForPropertyValues4: 19914756 false ) 
	#(266 2 #reduceActionForPropertyValues8: 19914760 false ) 
	#(266 2 #reduceActionForPropertyValues5: 19914757 false ) 
	#(266 2 #reduceActionForPropertyValues7: 19914759 false ) 
	#(266 2 #reduceActionForPropertyValues6: 19914758 false ) 
	#(220 6 #reduceActionForClassHelperType2: 14059522 false ) 
	#(219 6 #reduceActionForNewClassType1: 13827073 false ) 
	#(173 7 #reduceActionForConstantValue1: 6665217 false ) 
	#(203 6 #reduceActionForVariantRecordPart1: 11317249 false ) 
	#(318 7 #reduceActionForNonExternalClassOperatorHeader1: 27631617 false ) 
	#(272 2 #reduceActionForPropertyDefault1: 20920321 false ) 
	#(271 2 #reduceActionForPropertyDispid1: 20608001 false ) 
	#(274 1 #reduceActionForStatements1: 21228545 false ) 
	#(273 2 #reduceActionForPropertyImplements1: 21124097 false ) 
	#(268 2 #reduceActionForPropertyIndex1: 20342785 false ) 
	#(269 2 #reduceActionForPropertyReader1: 20435969 false ) 
	#(275 2 #reduceActionForPropertyStored1: 21348353 false ) 
	#(270 2 #reduceActionForPropertyWriter1: 20520961 false ) 
	#(264 7 #reduceActionForPropertyHeaderVars1: 19624961 false ) 
	#(204 3 #reduceActionForStatements2: 11466754 false ) 
	#(206 3 #reduceActionForStatements2: 11681794 false ) 
	#(271 3 #reduceActionForPropertyDispid2: 20608002 false ) 
	#(271 3 #reduceActionForPropertyDispid3: 20608003 false ) 
	#(276 2 #reduceActionForPropertyModifiers2: 21437442 false ) 
	#(274 3 #reduceActionForStatements2: 21228546 false ) 
	#(220 9 #reduceActionForClassHelperType1: 14059521 false ) 
	#(205 5 #reduceActionForVariantType1: 11581441 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'LibraryExport' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericPropertyExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'InstantiatedGenericVariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiProgramNode #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiLibraryExportNode #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #OrderedCollection #DelphiInstantiatedGenericPropertyExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiInstantiatedGenericVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 21 0 66 0 25 0 84 0 6 0 89 0 29 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 33 0 119 0 37 0 122 0 6 0 123 0 41 0 149 0 45 0 150 0 49 0 151 0 53 0 152 0 57 0 153 0 61 0 157 0 65 0 158 0 69 0 162 0 73 0 163 0 77 0 165] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 0 185 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 0 185 1 100 0 185 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 165 0 183 1 117 0 187 1 121 0 190 1 165 0 192 1 165 0 193 1 117 0 195 1 117 0 199 1 117 0 200 1 145 0 202 1 117 0 208 1 153 0 209 1 157 0 210 1 161 0 211 1 165 0 241 1 117 0 242 1 117 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[1 1 189 0 130 1 193 0 139 1 197 0 179 1 201 0 238] 
#[1 1 205 0 139 1 209 0 168] 
#[1 1 205 0 139 1 213 0 168] 
#[1 1 205 0 139 1 217 0 168] 
#[1 1 205 0 139 1 221 0 168] 
#[1 1 205 0 139 1 225 0 166 1 229 0 167 1 233 0 168] 
#[0 0 0 1 130] 
#[0 0 22 1 130] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 237 0 165] 
#[0 0 26 1 130] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 241 0 165] 
#[0 0 30 1 130] 
#[1 1 245 0 103 1 249 0 159] 
#[0 0 34 1 130] 
#[1 0 38 0 40 0 38 0 48 0 38 0 56 0 38 0 61 1 253 0 63 2 1 0 164 0 42 1 130] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 2 5 0 156 2 9 1 63 2 13 1 64] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 21 1 103 0 249 1 104 2 21 1 105 2 21 1 106 1 5 1 107 2 21 1 108 1 13 1 109 2 21 1 110 2 21 1 111 2 21 1 112 2 21 1 113 1 33 1 118 2 21 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 25 1 103 0 249 1 104 2 25 1 105 2 25 1 106 1 5 1 107 2 25 1 108 1 13 1 109 2 25 1 110 2 25 1 111 2 25 1 112 2 25 1 113 1 33 1 118 2 25 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 29 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 37 1 103 0 249 1 104 2 37 1 105 2 37 1 106 1 5 1 107 2 37 1 108 1 13 1 109 2 37 1 110 2 37 1 111 2 37 1 112 2 37 1 113 1 33 1 118 2 37 1 119 1 41 1 129] 
#[1 2 41 0 139 2 45 1 111] 
#[1 2 49 0 2 0 50 0 9 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 53 0 194] 
#[1 2 57 0 139 2 61 0 141] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 65 1 103 0 249 1 104 2 65 1 105 2 65 1 106 1 5 1 107 2 65 1 108 1 13 1 109 2 65 1 110 2 65 1 111 2 65 1 112 2 65 1 113 1 33 1 118 2 65 1 119 1 41 1 129] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 18 0 54 0 20 0 54 0 30 0 54 0 33 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 48 0 54 0 49 0 54 0 57 0 54 0 58 0 54 0 59 0 54 0 61 0 54 0 64 0 54 0 71 0 54 0 74 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 96 0 54 0 97 0 54 0 108 0 54 0 109 0 54 0 112 0 54 0 114 0 54 0 116 0 54 0 121 0 54 0 127 0 54 0 128 0 54 0 129 0 54 0 130 0 54 0 131 0 54 0 132 0 54 0 133 0 54 0 134 0 54 0 135 0 54 0 136 0 54 0 137 0 54 0 138 2 69 0 139 0 54 1 130] 
#[0 2 73 0 130] 
#[0 2 77 0 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 81 1 103 0 249 1 104 2 81 1 105 2 81 1 106 1 5 1 107 2 81 1 108 1 13 1 109 2 81 1 110 2 81 1 111 2 81 1 112 2 81 1 113 1 33 1 118 2 81 1 119 1 41 1 129] 
#[1 2 49 0 2 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 85 0 194] 
#[1 0 81 0 2 0 85 0 15 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 101 0 52 0 113 0 60 0 58 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 58 0 78 0 129 0 89 0 58 0 121 0 153 0 130 0 157 0 135 0 161 0 136 0 58 0 137 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 89 1 103 0 249 1 104 2 89 1 105 2 89 1 106 1 5 1 107 2 89 1 108 1 13 1 109 2 89 1 110 2 89 1 111 2 89 1 112 2 89 1 113 1 33 1 118 2 89 1 119 1 41 1 129 0 58 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 93 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 97 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 101 1 103 0 249 1 104 2 101 1 105 2 101 1 106 1 5 1 107 2 101 1 108 1 13 1 109 2 101 1 110 2 101 1 111 2 101 1 112 2 101 1 113 1 33 1 118 2 101 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 105 1 78 2 109 1 103 0 249 1 104 2 109 1 105 2 109 1 106 1 5 1 107 2 109 1 108 1 13 1 109 2 109 1 110 2 109 1 111 2 109 1 112 2 109 1 113 1 33 1 118 2 109 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 2 113 0 131 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 117 1 103 0 249 1 104 2 117 1 105 2 117 1 106 1 5 1 107 2 117 1 108 1 13 1 109 2 117 1 110 2 117 1 111 2 117 1 112 2 117 1 113 2 121 1 114 2 125 1 115 1 33 1 118 2 117 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 129 1 103 0 249 1 104 2 129 1 105 2 129 1 106 1 5 1 107 2 129 1 108 1 13 1 109 2 129 1 110 2 129 1 111 2 129 1 112 2 129 1 113 1 33 1 118 2 129 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 133 1 103 0 249 1 104 2 133 1 105 2 133 1 106 1 5 1 107 2 133 1 108 1 13 1 109 2 133 1 110 2 133 1 111 2 133 1 112 2 133 1 113 1 33 1 118 2 133 1 119 1 41 1 129] 
#[1 0 62 0 2 0 62 0 4 0 62 0 6 0 62 0 8 2 137 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 35 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 58 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 78 0 62 0 80 0 62 0 108 0 62 0 109 0 62 0 121 0 62 0 129 0 62 0 130 0 62 0 132 0 62 0 133 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 2 145 0 188 0 62 1 130] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 149 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 130] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 0 1 130] 
#[0 0 82 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 2 153 0 21] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 48 0 134 0 49 3 5 0 58 0 134 0 61 3 5 0 64 3 5 0 71 0 134 0 78 3 5 0 80 3 5 0 108 3 5 0 109 0 134 0 121 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 0 134 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 0 134 1 130] 
#[1 0 138 0 2 0 138 0 3 0 138 0 4 0 138 0 5 0 138 0 6 0 138 0 7 0 138 0 8 0 138 0 9 0 138 0 10 0 15 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 18 0 138 0 20 0 138 0 30 0 138 0 33 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 0 138 0 57 0 138 0 58 0 138 0 59 0 138 0 61 0 138 0 64 0 138 0 71 0 138 0 74 0 138 0 77 0 138 0 78 0 138 0 80 0 138 0 96 0 138 0 97 0 138 0 108 0 138 0 109 0 138 0 112 0 138 0 114 0 138 0 116 0 138 0 121 0 138 0 127 0 138 0 128 0 138 0 129 0 138 0 130 0 138 0 131 0 138 0 132 0 138 0 133 0 138 0 134 0 138 0 135 0 138 0 136 0 138 0 137 0 138 0 138 3 13 0 188 0 138 1 130] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 17 1 63 2 13 1 64] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 21 1 63 2 13 1 64] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 3 25 0 2 0 182 0 3 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 29 0 139 3 33 0 140 1 157 0 141 1 181 0 143 1 109 0 147 3 37 0 184 3 41 0 185 1 157 0 210 3 45 0 211 3 49 0 212 3 53 0 213 3 57 0 214 3 61 0 215 3 65 0 216 3 69 0 217 3 45 1 113 1 181 1 118 1 185 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 3 77 0 211 3 77 1 113 1 181 1 118 1 185 1 129] 
#[1 0 186 0 3 0 186 0 5 0 186 0 14 0 186 0 16 0 186 0 21 0 186 0 23 0 186 0 27 0 186 0 30 0 186 0 31 0 186 0 33 0 186 0 36 0 186 0 52 0 186 0 57 0 186 0 59 0 186 0 65 0 186 0 74 3 81 0 77 0 186 0 87 0 186 0 89 0 186 0 96 0 186 0 97 0 186 0 104 0 186 0 112 0 186 0 115 0 186 0 118 0 186 0 123 0 186 0 127 0 186 0 128 0 186 0 130 0 186 0 131 0 186 0 132 0 186 0 137 0 186 1 130] 
#[1 2 49 0 2 0 50 0 9 3 85 0 194] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 3 89 0 211 3 89 1 113 1 181 1 118 1 185 1 129] 
#[0 0 190 0 19 0 98] 
#[1 2 49 0 2 0 50 0 77 0 50 0 137 3 93 0 194] 
#[0 3 97 0 54] 
#[0 3 101 0 116] 
#[0 3 105 0 77] 
#[1 3 109 0 139 3 113 0 234] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 3 117 0 211 3 117 1 113 1 181 1 118 1 185 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 3 121 0 211 3 121 1 113 1 181 1 118 1 185 1 129] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 3 129 0 183 3 129 0 187 1 121 0 190 3 129 0 192 3 129 0 193 3 129 0 195 3 129 0 199 3 129 0 200 1 145 0 202 3 129 0 208 1 153 0 209 1 157 0 210 1 161 0 211 3 129 0 241 3 129 0 242 3 129 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[1 0 194 0 2 0 198 0 3 0 194 0 4 0 198 0 5 0 19 0 6 0 194 0 7 0 194 0 8 0 19 0 11 0 194 0 12 0 194 0 13 0 198 0 14 0 198 0 16 0 194 0 18 0 194 0 20 0 198 0 21 0 198 0 23 0 198 0 27 0 198 0 30 0 198 0 31 0 198 0 33 0 194 0 35 0 198 0 36 0 198 0 52 0 198 0 57 0 194 0 58 0 198 0 59 0 194 0 64 0 198 0 65 0 194 0 71 0 198 0 74 0 198 0 77 0 194 0 80 0 198 0 87 0 198 0 89 0 198 0 96 0 198 0 97 0 198 0 104 0 194 0 108 0 194 0 109 0 198 0 112 0 198 0 115 0 198 0 118 0 198 0 123 0 198 0 127 0 198 0 128 0 194 0 129 0 198 0 130 0 198 0 131 0 19 0 132 0 194 0 133 0 194 0 135 0 194 0 136 0 198 0 137 0 198 1 130] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[0 0 206 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 0 210 0 16 0 210 0 130 0 0 1 130] 
#[1 0 214 0 3 0 214 0 5 3 133 0 6 2 141 0 11 0 214 0 14 0 214 0 16 0 214 0 21 0 214 0 23 0 214 0 27 0 214 0 30 0 214 0 31 0 214 0 33 0 214 0 36 0 214 0 52 0 214 0 57 0 214 0 59 0 214 0 65 0 214 0 74 0 214 0 77 0 214 0 87 0 214 0 89 0 214 0 96 0 214 0 97 0 214 0 104 0 214 0 112 0 214 0 115 0 214 0 118 0 214 0 123 0 214 0 127 0 214 0 128 0 214 0 130 0 214 0 131 0 214 0 132 0 214 0 137 3 137 0 188 0 214 1 130] 
#[0 0 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 0 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 3 141 0 19 3 145 0 98] 
#[0 0 238 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 3 149 0 7] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[1 3 153 0 2 0 246 0 3 3 161 0 4 0 246 0 5 3 157 0 6 0 246 0 7 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 0 246 0 14 0 246 0 16 3 161 0 18 3 161 0 20 0 246 0 21 0 246 0 23 0 246 0 27 0 246 0 30 0 246 0 31 0 246 0 33 3 161 0 35 0 246 0 36 0 246 0 52 0 246 0 57 3 161 0 58 0 246 0 59 3 161 0 64 0 246 0 65 3 161 0 71 0 246 0 74 0 246 0 77 3 161 0 80 0 246 0 87 0 246 0 89 0 246 0 96 0 246 0 97 0 246 0 104 3 161 0 108 3 161 0 109 0 246 0 112 0 246 0 115 0 246 0 118 0 246 0 123 0 246 0 127 0 246 0 128 3 161 0 129 0 246 0 130 0 246 0 131 0 23 0 132 3 161 0 133 3 161 0 135 3 161 0 136 0 246 0 137 3 161 1 123 0 246 1 130] 
#[1 3 165 0 16 3 169 0 130] 
#[0 0 250 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 0 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 3 173 0 211 3 173 1 113 1 181 1 118 1 185 1 129] 
#[1 3 177 0 11 1 14 0 14 3 181 0 180] 
#[0 0 0 1 130] 
#[0 3 185 0 139] 
#[0 1 18 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 3 189 0 6 3 201 0 31 3 201 0 87 1 22 0 137 3 201 0 191] 
#[1 3 189 0 6 3 205 0 137] 
#[1 3 189 0 6 3 209 0 31 3 209 0 87 1 22 0 137 3 209 0 191] 
#[1 3 189 0 6 3 213 0 31 3 213 0 87 1 22 0 137 3 213 0 191] 
#[1 3 217 0 5 3 221 0 137] 
#[0 1 26 0 5 0 137] 
#[1 1 30 0 5 3 189 0 6 3 225 0 58 1 30 0 137] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 229 0 156 2 9 1 63 2 13 1 64] 
#[1 1 34 0 21 1 34 0 23 1 34 0 27 1 34 0 43 1 34 0 52 1 34 0 65 1 34 0 89 1 34 0 104 1 34 0 115 1 34 0 118 1 34 0 123 3 233 0 154] 
#[1 1 205 0 139 3 237 0 160 3 241 0 168] 
#[1 3 245 0 29 3 249 0 161] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 3 253 0 165] 
#[1 1 38 0 40 1 38 0 48 4 1 0 56 1 38 0 61 4 5 1 33] 
#[0 4 9 0 6] 
#[0 1 42 0 6] 
#[1 0 10 0 21 0 89 0 23 4 13 0 27 4 17 0 52 4 21 0 65 4 25 0 89 4 29 0 104 4 33 0 115 4 37 0 118 4 41 0 123 4 97 0 171 4 97 0 174 4 97 0 177 4 97 1 44 4 61 1 45 4 65 1 46 4 69 1 47 4 73 1 48 4 97 1 52 4 81 1 53 4 85 1 54 4 89 1 55 4 93 1 56 4 97 1 65 4 97 1 66 4 97 1 67 4 109 1 68 4 113 1 100 4 113 1 101 0 241 1 102] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 30 0 62 0 33 0 62 0 35 0 62 0 36 0 62 0 37 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 57 0 62 0 58 0 62 0 59 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 74 0 62 0 77 0 62 0 78 0 62 0 80 0 62 0 96 0 62 0 97 0 62 0 108 0 62 0 109 0 62 0 112 0 62 0 114 0 62 0 116 0 62 0 121 0 62 0 127 0 62 0 128 0 62 0 129 0 62 0 130 0 62 0 131 0 62 0 132 0 62 0 133 0 62 0 134 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 2 145 0 188 0 62 1 130] 
#[1 2 157 0 2 4 117 0 3 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 2 157 0 2 1 46 0 3 1 46 0 4 1 46 0 5 2 165 0 6 1 46 0 7 1 46 0 8 1 46 0 9 1 46 0 10 0 27 0 11 0 31 0 12 0 35 0 13 0 39 0 14 1 46 0 18 1 46 0 20 1 46 0 30 1 46 0 33 1 46 0 35 1 46 0 36 1 46 0 37 1 46 0 39 1 46 0 40 1 46 0 41 1 46 0 48 1 46 0 49 1 46 0 57 0 43 0 58 1 46 0 59 1 46 0 61 1 46 0 64 1 46 0 71 1 46 0 74 1 46 0 77 1 46 0 78 1 46 0 80 1 46 0 96 1 46 0 97 1 46 0 108 1 46 0 109 1 46 0 112 1 46 0 114 1 46 0 116 1 46 0 121 1 46 0 127 1 46 0 128 1 46 0 129 2 233 0 130 1 46 0 131 0 47 0 132 0 51 0 133 1 46 0 134 1 46 0 135 1 46 0 136 1 46 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 1 46 1 130] 
#[1 4 121 0 40 4 125 0 137] 
#[0 1 50 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 4 129 0 77 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[0 0 62 0 10 0 58] 
#[1 4 133 0 10 4 137 0 58] 
#[1 1 54 0 3 4 165 0 27 4 165 0 81 4 165 0 123 1 58 0 139 4 153 1 27 4 157 1 28 4 161 1 29 4 165 1 32] 
#[1 4 169 0 9 1 62 0 21 1 62 0 23 1 62 0 27 1 62 0 52 1 62 0 65 1 62 0 89 1 62 0 104 1 62 0 115 1 62 0 118 1 62 0 123 4 173 1 6] 
#[0 1 66 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 1 70 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 4 177 0 114 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 4 181 0 2 1 74 0 3 1 74 0 4 1 74 0 5 1 74 0 6 1 74 0 7 1 74 0 8 1 74 0 9 1 74 0 10 1 74 0 11 1 74 0 12 1 74 0 13 1 74 0 14 1 74 0 18 1 74 0 20 1 74 0 30 1 74 0 33 1 74 0 35 1 74 0 36 1 74 0 37 1 74 0 39 1 74 0 40 1 74 0 41 1 74 0 48 1 74 0 49 1 74 0 57 1 74 0 58 1 74 0 59 1 74 0 61 1 74 0 64 1 74 0 71 1 74 0 74 1 74 0 77 1 74 0 78 1 74 0 80 1 74 0 96 1 74 0 97 1 74 0 108 1 74 0 109 1 74 0 112 1 74 0 114 1 74 0 116 1 74 0 121 1 74 0 127 1 74 0 128 1 74 0 129 1 74 0 130 1 74 0 131 1 74 0 132 1 74 0 133 1 74 0 134 1 74 0 135 1 74 0 136 1 74 0 137 1 74 0 138 1 74 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 4 185 1 103 0 249 1 104 4 185 1 105 4 185 1 106 1 5 1 107 4 185 1 108 1 13 1 109 4 185 1 110 4 185 1 111 4 185 1 112 4 185 1 113 1 33 1 118 4 185 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 4 189 1 103 0 249 1 104 4 189 1 105 4 189 1 106 1 5 1 107 4 189 1 108 1 13 1 109 4 189 1 110 4 189 1 111 4 189 1 112 4 189 1 113 1 33 1 118 4 189 1 119 1 41 1 129] 
#[1 2 157 0 2 1 78 0 3 3 5 0 4 1 78 0 5 2 165 0 6 1 78 0 7 3 5 0 8 1 78 0 9 2 173 0 10 0 55 0 11 0 59 0 12 0 63 0 13 0 67 0 14 3 5 0 18 3 5 0 20 1 78 0 30 1 78 0 33 3 5 0 35 1 78 0 36 1 78 0 37 1 78 0 39 1 78 0 40 1 78 0 41 1 78 0 48 1 78 0 49 1 78 0 57 0 71 0 58 1 78 0 59 1 78 0 61 3 5 0 64 3 5 0 71 1 78 0 74 1 78 0 77 1 78 0 78 3 5 0 80 1 78 0 96 1 78 0 97 3 5 0 108 3 5 0 109 1 78 0 112 1 78 0 114 1 78 0 116 1 78 0 121 1 78 0 127 1 78 0 128 3 5 0 129 2 233 0 130 1 78 0 131 0 75 0 132 0 79 0 133 1 78 0 134 3 5 0 135 3 5 0 136 1 78 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 1 78 1 130] 
#[0 1 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 1 86 0 39 1 86 0 40 1 86 0 41 1 86 0 48 1 86 0 49 3 5 0 58 1 86 0 61 3 5 0 64 3 5 0 71 1 86 0 78 3 5 0 80 3 5 0 108 3 5 0 109 1 86 0 121 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 4 193 0 134 3 5 0 135 3 5 0 136 1 86 0 137 2 253 0 138 4 197 1 95 3 1 1 116 3 5 1 122 3 5 1 123 1 86 1 130] 
#[1 4 201 0 121 4 125 0 137] 
#[1 1 90 0 40 4 205 0 41 1 90 0 49 4 125 0 137 4 209 1 80] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 4 213 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 4 217 0 5 4 221 0 36] 
#[1 2 157 0 2 3 5 0 4 1 94 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 1 94 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 2 157 0 2 3 5 0 4 1 102 0 5 2 165 0 6 4 225 0 7 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 1 102 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 4 229 0 5 4 233 0 131] 
#[0 1 106 0 5 0 131] 
#[1 2 157 0 2 1 110 0 3 3 5 0 4 1 110 0 5 2 165 0 6 1 110 0 7 3 5 0 8 1 110 0 9 1 110 0 10 0 83 0 11 0 87 0 12 0 91 0 13 0 95 0 14 1 110 0 18 1 110 0 20 1 110 0 30 1 110 0 33 3 5 0 35 1 110 0 36 1 110 0 37 1 110 0 39 1 110 0 40 1 110 0 41 1 110 0 48 1 110 0 49 1 110 0 57 0 99 0 58 1 110 0 59 1 110 0 61 1 110 0 64 3 5 0 71 1 110 0 74 1 110 0 77 1 110 0 78 1 110 0 80 1 110 0 96 1 110 0 97 3 5 0 108 3 5 0 109 1 110 0 112 1 110 0 114 1 110 0 116 1 110 0 121 1 110 0 127 1 110 0 128 1 110 0 129 2 233 0 130 1 110 0 131 0 103 0 132 0 107 0 133 1 110 0 134 1 110 0 135 1 110 0 136 1 110 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 1 110 1 130] 
#[1 2 157 0 2 1 114 0 3 3 5 0 4 1 114 0 5 2 165 0 6 1 114 0 7 3 5 0 8 1 114 0 9 1 114 0 10 0 111 0 11 0 115 0 12 0 119 0 13 0 123 0 14 1 114 0 18 1 114 0 20 1 114 0 30 1 114 0 33 3 5 0 35 1 114 0 36 1 114 0 37 1 114 0 39 1 114 0 40 1 114 0 41 1 114 0 48 1 114 0 49 1 114 0 57 0 127 0 58 1 114 0 59 1 114 0 61 1 114 0 64 3 5 0 71 1 114 0 74 1 114 0 77 1 114 0 78 1 114 0 80 1 114 0 96 1 114 0 97 3 5 0 108 3 5 0 109 1 114 0 112 1 114 0 114 1 114 0 116 1 114 0 121 1 114 0 127 1 114 0 128 1 114 0 129 2 233 0 130 1 114 0 131 0 131 0 132 0 135 0 133 1 114 0 134 1 114 0 135 1 114 0 136 1 114 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 1 114 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 4 237 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 4 237 1 100 4 237 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 165 0 183 4 241 0 187 4 245 0 189 1 121 0 190 1 165 0 192 1 165 0 193 4 241 0 195 4 241 0 199 4 241 0 200 1 145 0 202 4 241 0 208 1 153 0 209 1 157 0 210 1 161 0 211 1 165 0 241 4 241 0 242 4 241 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 1 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 4 249 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 4 249 1 100 4 249 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[0 4 253 0 40] 
#[1 0 81 0 2 5 1 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 5 5 1 103 0 249 1 104 5 5 1 105 5 5 1 106 1 5 1 107 5 5 1 108 1 13 1 109 5 5 1 110 5 5 1 111 5 5 1 112 5 5 1 113 1 33 1 118 5 5 1 119 5 9 1 120 5 13 1 121 1 41 1 129] 
#[0 1 122 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[1 5 17 0 1 5 21 0 139] 
#[0 1 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 5 25 1 103 0 249 1 104 5 25 1 105 5 25 1 106 1 5 1 107 5 25 1 108 1 13 1 109 5 25 1 110 5 25 1 111 5 25 1 112 5 25 1 113 1 33 1 118 5 25 1 119 1 41 1 129] 
#[0 1 130 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 129] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 5 29 1 103 0 249 1 104 5 29 1 105 5 29 1 106 1 5 1 107 5 29 1 108 1 13 1 109 5 29 1 110 5 29 1 111 5 29 1 112 5 29 1 113 5 33 1 117 1 33 1 118 5 29 1 119 1 41 1 129] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 194 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 198 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 129] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 5 37 1 103 0 249 1 104 5 37 1 105 5 37 1 106 1 5 1 107 5 37 1 108 1 13 1 109 5 37 1 110 5 37 1 111 5 37 1 112 5 37 1 113 1 33 1 118 5 37 1 119 1 41 1 129] 
#[0 1 210 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 129] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 3 25 0 2 0 182 0 3 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 33 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 3 45 0 211 3 49 0 212 3 53 0 213 3 57 0 214 3 61 0 215 3 65 0 216 3 69 0 217 3 45 1 113 1 181 1 118 1 185 1 129] 
#[1 1 226 0 3 1 226 0 5 5 41 0 14] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 8 5 45 0 9 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 18 0 194 0 20 0 194 0 35 0 194 0 58 0 194 0 64 0 194 0 71 0 194 0 80 0 194 0 108 0 194 0 109 0 194 0 129 0 194 0 132 0 194 0 133 0 194 0 135 0 194 0 136] 
#[1 5 49 0 3 5 53 0 5] 
#[0 1 230 0 3 0 5] 
#[1 3 153 0 2 1 234 0 3 3 161 0 4 1 234 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 5 57 0 14 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[0 5 61 0 3] 
#[1 1 238 0 3 5 65 0 5] 
#[0 1 242 0 3 0 5] 
#[1 1 246 0 3 5 73 0 137 5 73 1 86] 
#[1 1 250 0 3 0 139 0 137] 
#[0 1 254 0 3 0 137] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[1 3 153 0 2 2 2 0 3 2 2 0 4 2 2 0 5 3 157 0 6 2 2 0 7 2 2 0 8 2 2 0 9 0 143 0 11 0 147 0 12 0 151 0 13 2 2 0 14 2 2 0 16 2 2 0 18 2 2 0 20 2 2 0 21 2 2 0 23 2 2 0 27 2 2 0 30 2 2 0 31 2 2 0 33 2 2 0 35 2 2 0 36 2 2 0 52 2 2 0 57 0 155 0 58 2 2 0 59 2 2 0 64 2 2 0 65 2 2 0 71 2 2 0 74 2 2 0 77 2 2 0 80 2 2 0 87 2 2 0 89 2 2 0 96 2 2 0 97 2 2 0 104 2 2 0 108 2 2 0 109 2 2 0 112 2 2 0 115 2 2 0 118 2 2 0 123 2 2 0 127 2 2 0 128 2 2 0 129 2 2 0 130 2 2 0 131 0 159 0 132 0 163 0 133 2 2 0 135 2 2 0 136 2 2 0 137 3 161 1 123 2 2 1 130] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 81 0 183 5 81 0 187 1 121 0 190 5 81 0 192 5 81 0 193 5 81 0 195 5 81 0 199 5 81 0 200 1 145 0 202 5 81 0 208 1 153 0 209 1 157 0 210 1 161 0 211 5 81 0 241 5 81 0 242 5 81 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 5 85 0 9] 
#[1 3 153 0 2 2 6 0 3 3 161 0 4 2 6 0 5 3 157 0 6 2 6 0 7 3 161 0 8 2 6 0 9 0 167 0 11 0 171 0 12 0 175 0 13 2 6 0 14 2 6 0 16 3 161 0 18 3 161 0 20 2 6 0 21 2 6 0 23 2 6 0 27 2 6 0 30 2 6 0 31 2 6 0 33 3 161 0 35 2 6 0 36 2 6 0 52 2 6 0 57 0 179 0 58 2 6 0 59 3 161 0 64 2 6 0 65 3 161 0 71 2 6 0 74 2 6 0 77 3 161 0 80 2 6 0 87 2 6 0 89 2 6 0 96 2 6 0 97 2 6 0 104 3 161 0 108 3 161 0 109 2 6 0 112 2 6 0 115 2 6 0 118 2 6 0 123 2 6 0 127 2 6 0 128 3 161 0 129 2 6 0 130 2 6 0 131 0 183 0 132 0 187 0 133 3 161 0 135 3 161 0 136 2 6 0 137 3 161 1 123 2 6 1 130] 
#[1 5 89 0 77 2 10 0 137 5 93 1 2] 
#[0 5 97 0 50] 
#[1 5 101 0 52 5 105 0 89] 
#[1 5 109 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 113 0 208 1 153 0 209 1 157 0 210 5 117 0 211 5 117 1 113 1 181 1 118 1 185 1 129] 
#[1 1 14 0 2 1 14 0 3 1 14 0 5 1 14 0 6 1 14 0 9 3 177 0 11 1 14 0 14 1 14 0 16 1 14 0 21 1 14 0 23 1 14 0 24 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 36 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 48 1 14 0 49 1 14 0 52 1 14 0 57 1 14 0 59 1 14 0 61 1 14 0 65 1 14 0 74 1 14 0 77 1 14 0 78 1 14 0 87 1 14 0 88 1 14 0 89 1 14 0 91 1 14 0 92 1 14 0 93 1 14 0 94 1 14 0 96 1 14 0 97 1 14 0 104 1 14 0 112 1 14 0 113 1 14 0 115 1 14 0 118 1 14 0 121 1 14 0 123 1 14 0 127 1 14 0 128 1 14 0 130 1 14 0 131 1 14 0 132 1 14 0 137 1 14 0 139 5 121 0 180 1 14 1 130] 
#[1 2 14 0 3 2 14 0 5 5 125 0 6 2 14 0 14 2 14 0 16 2 14 0 21 2 14 0 23 2 14 0 27 2 14 0 30 2 14 0 31 2 14 0 33 2 14 0 36 2 14 0 52 2 14 0 57 2 14 0 59 2 14 0 65 2 14 0 74 2 14 0 77 2 14 0 87 2 14 0 89 2 14 0 96 2 14 0 97 2 14 0 104 2 14 0 112 2 14 0 115 2 14 0 118 2 14 0 123 2 14 0 127 2 14 0 128 2 14 0 130 2 14 0 131 2 14 0 132 2 14 0 137 2 14 1 130] 
#[1 3 153 0 2 2 18 0 3 3 161 0 4 2 18 0 5 3 157 0 6 2 18 0 7 3 161 0 8 2 18 0 9 0 191 0 11 0 195 0 12 0 199 0 13 2 18 0 14 2 18 0 16 2 18 0 18 2 18 0 20 2 18 0 21 2 18 0 23 2 18 0 27 2 18 0 30 2 18 0 31 2 18 0 33 3 161 0 35 2 18 0 36 2 18 0 52 2 18 0 57 0 203 0 58 2 18 0 59 2 18 0 64 2 18 0 65 3 161 0 71 2 18 0 74 2 18 0 77 2 18 0 80 2 18 0 87 2 18 0 89 2 18 0 96 2 18 0 97 2 18 0 104 3 161 0 108 3 161 0 109 2 18 0 112 2 18 0 115 2 18 0 118 2 18 0 123 2 18 0 127 2 18 0 128 2 18 0 129 2 18 0 130 2 18 0 131 0 207 0 132 0 211 0 133 2 18 0 135 2 18 0 136 2 18 0 137 3 161 1 123 2 18 1 130] 
#[1 3 153 0 2 2 22 0 3 3 161 0 4 2 22 0 5 3 157 0 6 2 22 0 7 3 161 0 8 2 22 0 9 0 215 0 11 0 219 0 12 0 223 0 13 2 22 0 14 2 22 0 16 2 22 0 18 2 22 0 20 2 22 0 21 2 22 0 23 2 22 0 27 2 22 0 30 2 22 0 31 2 22 0 33 3 161 0 35 2 22 0 36 2 22 0 52 2 22 0 57 0 227 0 58 2 22 0 59 2 22 0 64 2 22 0 65 3 161 0 71 2 22 0 74 2 22 0 77 2 22 0 80 2 22 0 87 2 22 0 89 2 22 0 96 2 22 0 97 2 22 0 104 3 161 0 108 3 161 0 109 2 22 0 112 2 22 0 115 2 22 0 118 2 22 0 123 2 22 0 127 2 22 0 128 2 22 0 129 2 22 0 130 2 22 0 131 0 231 0 132 0 235 0 133 2 22 0 135 2 22 0 136 2 22 0 137 3 161 1 123 2 22 1 130] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 2 26 0 3 2 26 0 5 2 26 0 14 2 26 0 16 2 26 0 21 2 26 0 23 2 26 0 27 2 26 0 30 2 26 0 31 2 26 0 33 2 26 0 36 2 26 0 52 2 26 0 57 2 26 0 59 2 26 0 65 2 26 0 74 2 26 0 77 2 26 0 87 2 26 0 89 2 26 0 96 2 26 0 97 2 26 0 104 2 26 0 112 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 127 2 26 0 128 3 169 0 130 2 26 0 131 2 26 0 132 2 26 0 137 2 26 1 130] 
#[0 5 129 0 140] 
#[0 2 30 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 2 34 0 77 5 133 0 130 5 137 0 244] 
#[1 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 5 141 0 201 5 145 0 225 5 149 0 235] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 153 0 209 1 157 0 210 1 161 0 211 1 161 1 113 1 181 1 118 1 185 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 5 157 0 211 5 161 0 218 5 157 1 113 1 181 1 118 1 185 1 129] 
#[0 5 165 0 140] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 5 169 0 211 5 169 1 113 1 181 1 118 1 185 1 129] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 173 0 183 5 173 0 187 1 121 0 190 5 173 0 192 5 173 0 193 5 173 0 195 5 173 0 199 5 173 0 200 1 145 0 202 5 173 0 208 1 153 0 209 1 157 0 210 1 161 0 211 5 173 0 241 5 173 0 242 5 173 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 5 177 0 211 5 177 1 113 1 181 1 118 1 185 1 129] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 5 181 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 5 185 0 139 5 189 0 181] 
#[0 5 193 0 14] 
#[1 3 177 0 11 1 14 0 14 5 197 0 180] 
#[0 5 201 0 139] 
#[0 2 42 0 14 0 31 0 137] 
#[0 2 46 0 14 0 31 0 137] 
#[0 5 205 0 137] 
#[0 2 50 0 103] 
#[0 5 209 0 137] 
#[0 5 213 0 137] 
#[1 1 205 0 139 5 217 0 167 1 233 0 168] 
#[0 2 54 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 5 221 0 143] 
#[0 5 225 0 6] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 5 229 0 43 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 5 233 0 155 5 237 0 156 2 9 1 63 2 13 1 64] 
#[1 5 241 0 5 5 245 0 137] 
#[1 2 58 0 5 3 189 0 6 2 58 0 137] 
#[1 1 205 0 139 5 249 0 166 1 229 0 167 1 233 0 168] 
#[1 5 253 0 40 6 1 1 128] 
#[1 2 62 0 27 2 62 0 40 2 62 0 48 2 62 0 52 2 62 0 56 2 62 0 61 2 62 0 89 2 62 0 104 2 62 0 115 2 62 0 118 2 62 0 123 6 5 0 169] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 6 9 0 165] 
#[1 2 66 0 40 2 66 0 48 6 13 0 61 6 17 1 124] 
#[0 2 70 1 130] 
#[1 6 21 0 139 6 25 0 172 6 29 0 173] 
#[1 3 109 0 139 6 33 0 234] 
#[1 6 37 0 139 6 41 1 30] 
#[1 3 109 0 139 6 45 0 234] 
#[1 6 49 0 139 6 53 0 175 6 57 0 176] 
#[1 6 37 0 139 6 61 1 30 6 65 1 69 6 69 1 70] 
#[1 1 189 0 130 1 193 0 139 6 73 0 178 6 77 0 179 1 201 0 238] 
#[1 6 37 0 139 6 61 1 30 6 81 1 69 6 69 1 70] 
#[0 2 74 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 78 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 90 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 94 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 85 1 63 2 13 1 64] 
#[1 2 98 0 3 2 98 0 21 2 98 0 23 2 98 0 24 2 98 0 26 2 98 0 27 2 98 0 28 2 98 0 32 2 98 0 40 6 89 0 44 2 98 0 48 6 93 0 51 2 98 0 52 2 98 0 56 2 98 0 61 2 98 0 65 2 98 0 88 2 98 0 89 2 98 0 91 2 98 0 92 2 98 0 93 2 98 0 94 2 98 0 104 2 98 0 113 2 98 0 115 2 98 0 118 2 98 0 123 2 98 0 130 2 98 0 139 6 97 1 25] 
#[0 2 102 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 106 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 110 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 101 1 63 2 13 1 64] 
#[1 2 114 0 3 2 114 0 21 2 114 0 23 2 114 0 24 2 114 0 26 2 114 0 27 2 114 0 28 2 114 0 32 2 114 0 40 6 89 0 44 2 114 0 48 6 93 0 51 2 114 0 52 2 114 0 56 2 114 0 61 2 114 0 65 2 114 0 88 2 114 0 89 2 114 0 91 2 114 0 92 2 114 0 93 2 114 0 94 2 114 0 104 2 114 0 113 2 114 0 115 2 114 0 118 2 114 0 123 2 114 0 130 2 114 0 139 6 105 1 25] 
#[0 2 118 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 122 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 126 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 6 109 0 137] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 2 138 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 113 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 113 1 100 6 113 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 6 117 0 211 6 121 1 87 6 125 1 88 6 129 1 89 6 133 1 90 6 137 1 91 6 141 1 92 6 117 1 113 1 181 1 118 1 185 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 145 1 103 0 249 1 104 6 145 1 105 6 145 1 106 1 5 1 107 6 145 1 108 1 13 1 109 6 145 1 110 6 145 1 111 6 145 1 112 6 145 1 113 1 33 1 118 6 145 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 149 1 103 0 249 1 104 6 149 1 105 6 149 1 106 1 5 1 107 6 149 1 108 1 13 1 109 6 149 1 110 6 149 1 111 6 149 1 112 6 149 1 113 1 33 1 118 6 149 1 119 1 41 1 129] 
#[0 2 142 0 139] 
#[0 2 146 0 139] 
#[0 2 150 0 139] 
#[0 6 153 0 3] 
#[1 2 154 0 3 2 154 0 131 6 157 0 137] 
#[0 2 158 0 3 0 131 0 137] 
#[1 6 37 0 139 6 161 1 30] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 6 165 0 183 6 165 0 187 1 121 0 190 6 165 0 192 6 165 0 193 6 165 0 195 6 165 0 199 6 165 0 200 1 145 0 202 6 165 0 208 1 153 0 209 1 157 0 210 1 161 0 211 6 165 0 241 6 165 0 242 6 165 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 2 162 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 169 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 169 1 100 6 169 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[1 0 81 0 2 6 173 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 5 5 1 103 0 249 1 104 5 5 1 105 5 5 1 106 1 5 1 107 5 5 1 108 1 13 1 109 5 5 1 110 5 5 1 111 5 5 1 112 5 5 1 113 1 33 1 118 5 5 1 119 6 177 1 120 5 13 1 121 1 41 1 129] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 6 181 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 6 185 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 3 109 0 139 6 189 0 234] 
#[0 2 166 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 193 1 103 0 249 1 104 6 193 1 105 6 193 1 106 1 5 1 107 6 193 1 108 1 13 1 109 6 193 1 110 6 193 1 111 6 193 1 112 6 193 1 113 1 33 1 118 6 193 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 6 197 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 201 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 6 205 1 81 6 209 1 82 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 2 170 0 40 6 213 0 49 6 217 1 84] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 221 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 221 1 100 6 221 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 225 1 103 0 249 1 104 6 225 1 105 6 225 1 106 1 5 1 107 6 225 1 108 1 13 1 109 6 225 1 110 6 225 1 111 6 225 1 112 6 225 1 113 1 33 1 118 6 225 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 229 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 229 1 100 6 229 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 6 233 1 103 0 249 1 104 6 233 1 105 6 233 1 106 1 5 1 107 6 233 1 108 1 13 1 109 6 233 1 110 6 233 1 111 6 233 1 112 6 233 1 113 1 33 1 118 6 233 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 2 117 1 103 0 249 1 104 2 117 1 105 2 117 1 106 1 5 1 107 2 117 1 108 1 13 1 109 2 117 1 110 2 117 1 111 2 117 1 112 2 117 1 113 6 237 1 115 1 33 1 118 2 117 1 119 1 41 1 129] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 2 178 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 2 182 0 5 0 210 0 16 0 210 0 130 2 182 0 132] 
#[1 6 241 0 5 6 245 0 132] 
#[0 2 186 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 2 190 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 2 157 0 2 2 198 0 3 3 5 0 4 2 198 0 5 2 165 0 6 3 5 0 8 2 198 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 6 249 0 3 6 253 0 5] 
#[1 2 202 0 3 2 202 0 5 7 1 0 9] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 2 157 0 2 2 214 0 3 3 5 0 4 2 214 0 5 2 165 0 6 2 214 0 7 3 5 0 8 2 214 0 9 2 173 0 10 0 239 0 11 0 243 0 12 0 247 0 13 0 251 0 14 3 5 0 18 3 5 0 20 2 214 0 30 2 214 0 33 3 5 0 35 2 214 0 36 2 214 0 37 2 214 0 39 2 214 0 40 2 214 0 41 2 214 0 48 2 214 0 49 2 214 0 57 0 255 0 58 2 214 0 59 2 214 0 61 3 5 0 64 3 5 0 71 2 214 0 74 2 214 0 77 2 214 0 78 3 5 0 80 2 214 0 96 2 214 0 97 3 5 0 108 3 5 0 109 2 214 0 112 2 214 0 114 2 214 0 116 2 214 0 121 2 214 0 127 2 214 0 128 3 5 0 129 2 233 0 130 2 214 0 131 1 3 0 132 1 7 0 133 2 214 0 134 3 5 0 135 3 5 0 136 2 214 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 2 214 1 130] 
#[1 2 157 0 2 3 5 0 4 2 218 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 2 218 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 7 5 0 5 7 9 0 131] 
#[1 2 157 0 2 2 222 0 3 3 5 0 4 2 222 0 5 2 165 0 6 2 222 0 7 3 5 0 8 2 222 0 9 2 173 0 10 1 11 0 11 1 15 0 12 1 19 0 13 1 23 0 14 3 5 0 18 3 5 0 20 2 222 0 30 2 222 0 33 3 5 0 35 2 222 0 36 2 222 0 37 2 222 0 39 2 222 0 40 2 222 0 41 2 222 0 48 2 222 0 49 2 222 0 57 1 27 0 58 2 222 0 59 2 222 0 61 3 5 0 64 3 5 0 71 2 222 0 74 2 222 0 77 2 222 0 78 3 5 0 80 2 222 0 96 2 222 0 97 3 5 0 108 3 5 0 109 2 222 0 112 2 222 0 114 2 222 0 116 2 222 0 121 2 222 0 127 2 222 0 128 3 5 0 129 2 233 0 130 2 222 0 131 1 31 0 132 1 35 0 133 2 222 0 134 3 5 0 135 3 5 0 136 2 222 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 2 222 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 7 13 0 211 7 13 1 113 1 181 1 118 1 185 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 7 17 0 211 7 17 1 113 1 181 1 118 1 185 1 129] 
#[0 2 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 3 29 0 139 7 21 0 185] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 7 25 0 211 7 25 1 113 1 181 1 118 1 185 1 129] 
#[0 2 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 3 45 0 211 7 29 0 214 3 45 1 113 1 181 1 118 1 185 1 129] 
#[0 2 234 0 3] 
#[0 7 33 0 3] 
#[1 7 37 0 140 7 41 0 217] 
#[1 2 238 0 3 2 238 0 5 2 238 0 14 3 165 0 16 2 238 0 21 2 238 0 23 2 238 0 27 2 238 0 30 2 238 0 31 2 238 0 33 2 238 0 36 2 238 0 52 2 238 0 57 2 238 0 59 2 238 0 65 2 238 0 74 2 238 0 77 2 238 0 87 2 238 0 89 2 238 0 96 2 238 0 97 2 238 0 104 2 238 0 112 2 238 0 115 2 238 0 118 2 238 0 123 2 238 0 127 2 238 0 128 3 169 0 130 2 238 0 131 2 238 0 132 2 238 0 137 2 238 1 130] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 7 45 0 183 7 45 0 187 1 121 0 190 7 45 0 192 7 45 0 193 7 45 0 195 7 45 0 199 7 45 0 200 1 145 0 202 7 45 0 208 1 153 0 209 1 157 0 210 1 161 0 211 7 45 0 241 7 45 0 242 7 45 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 7 49 0 76] 
#[0 7 53 0 137] 
#[1 3 109 0 139 7 57 0 234] 
#[1 2 49 0 2 0 50 0 9 7 61 0 194] 
#[1 2 49 0 2 0 50 0 137 7 65 0 194] 
#[1 3 25 0 2 0 182 0 3 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 7 69 0 140 1 157 0 141 1 181 0 143 1 109 0 147 7 73 0 196 1 157 0 210 3 45 0 211 3 49 0 212 3 53 0 213 3 57 0 214 3 61 0 215 3 65 0 216 3 69 0 217 3 45 1 113 1 181 1 118 1 185 1 129] 
#[0 2 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 3 153 0 2 2 246 0 3 3 161 0 4 2 246 0 5 3 157 0 6 0 246 0 7 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 2 246 0 14 2 246 0 16 3 161 0 18 3 161 0 20 2 246 0 21 2 246 0 23 2 246 0 27 2 246 0 30 2 246 0 31 2 246 0 33 3 161 0 35 2 246 0 36 2 246 0 52 2 246 0 57 3 161 0 58 2 246 0 59 3 161 0 64 2 246 0 65 3 161 0 71 2 246 0 74 2 246 0 77 3 161 0 80 2 246 0 87 2 246 0 89 2 246 0 96 2 246 0 97 2 246 0 104 3 161 0 108 3 161 0 109 2 246 0 112 2 246 0 115 2 246 0 118 2 246 0 123 2 246 0 127 2 246 0 128 3 161 0 129 2 246 0 130 2 246 0 131 1 39 0 132 3 161 0 133 3 161 0 135 3 161 0 136 2 246 0 137 3 161 1 123 2 246 1 130] 
#[0 2 250 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 7 77 0 139] 
#[0 2 254 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 7 93 0 208 1 153 0 209 1 157 0 210 7 85 0 211 7 89 0 245 7 93 0 246 7 85 1 113 1 181 1 118 1 185 1 129] 
#[0 7 97 0 77] 
#[0 7 101 0 40] 
#[1 3 2 0 3 3 2 0 24 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 7 105 0 226] 
#[1 3 6 0 3 3 6 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 3 6 0 40 7 121 0 52 3 6 0 88 7 125 0 89 7 129 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 171 7 141 0 177 7 141 0 236 7 141 0 237 7 149 0 238 7 141 0 239 7 141 0 240 7 141 0 252 7 141 0 253 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 3 7 141 1 4 7 141 1 5 7 141 1 7 7 201 1 8 7 141 1 9 7 209 1 30 7 141 1 38 7 217 1 39 7 141 1 41 7 225 1 42 7 141 1 45 4 65 1 46 7 141 1 47 4 73 1 48 7 141 1 50 7 141 1 51 7 141 1 53 4 85 1 54 7 141 1 55 4 93 1 56 7 141 1 58 7 141 1 59 7 141 1 61 8 9 1 62 7 141 1 67 4 109 1 68] 
#[0 3 10 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 3 153 0 2 3 14 0 3 3 161 0 4 3 14 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 8 17 0 3 8 21 0 5] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[1 3 153 0 2 3 22 0 3 3 161 0 4 3 22 0 5 3 157 0 6 3 22 0 7 3 161 0 8 3 22 0 9 1 43 0 11 1 47 0 12 1 51 0 13 3 22 0 14 3 22 0 16 3 161 0 18 3 161 0 20 3 22 0 21 3 22 0 23 3 22 0 27 3 22 0 30 3 22 0 31 3 22 0 33 3 161 0 35 3 22 0 36 3 22 0 52 3 22 0 57 1 55 0 58 3 22 0 59 3 161 0 64 3 22 0 65 3 161 0 71 3 22 0 74 3 22 0 77 3 161 0 80 3 22 0 87 3 22 0 89 3 22 0 96 3 22 0 97 3 22 0 104 3 161 0 108 3 161 0 109 3 22 0 112 3 22 0 115 3 22 0 118 3 22 0 123 3 22 0 127 3 22 0 128 3 161 0 129 3 22 0 130 3 22 0 131 1 59 0 132 1 63 0 133 3 161 0 135 3 161 0 136 3 22 0 137 3 161 1 123 3 22 1 130] 
#[1 3 26 0 3 3 26 0 5 3 26 0 14 3 26 0 21 3 26 0 23 3 26 0 27 3 26 0 30 3 26 0 31 3 26 0 33 3 26 0 36 3 26 0 52 3 26 0 57 3 26 0 59 3 26 0 65 3 26 0 74 3 26 0 77 3 26 0 87 3 26 0 89 3 26 0 96 3 26 0 97 3 26 0 104 3 26 0 112 3 26 0 115 3 26 0 118 3 26 0 123 3 26 0 127 3 26 0 128 3 169 0 130 3 26 0 131 3 26 0 132 3 26 0 137 3 26 1 130] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 8 25 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[0 3 30 0 26 0 28 0 32 0 52 0 89 0 139] 
#[0 3 34 0 5 0 132] 
#[1 8 29 0 5 8 33 0 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 8 37 0 26 8 97 0 34 1 53 0 46 1 57 0 52 8 97 0 63 1 61 0 75 8 49 0 76 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 8 53 0 182 8 57 0 183 8 61 0 186 8 65 0 187 1 121 0 190 8 69 0 192 8 73 0 193 8 65 0 195 8 61 0 198 8 65 0 199 8 65 0 200 1 145 0 202 8 65 0 208 1 153 0 209 1 157 0 210 1 161 0 211 8 61 0 219 8 61 0 220 8 61 0 223 1 165 0 241 8 65 0 242 8 65 0 243 8 61 0 247 8 97 0 248 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 8 101 0 14] 
#[0 3 38 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 3 42 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 46 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 50 0 40 0 48 0 56 0 61 0 63 1 130] 
#[0 3 54 0 5 0 137] 
#[0 3 58 0 5 0 137] 
#[0 3 62 1 130] 
#[0 8 105 0 139] 
#[0 3 66 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 8 109 0 6] 
#[1 1 205 0 139 8 113 0 168] 
#[0 3 70 0 29] 
#[1 3 217 0 5 8 117 0 137] 
#[0 8 121 0 6] 
#[0 3 74 1 130] 
#[1 4 13 0 27 3 78 0 40 3 78 0 48 4 17 0 52 3 78 0 56 3 78 0 61 4 25 0 89 4 29 0 104 4 33 0 115 4 37 0 118 4 41 0 123 8 125 0 170 8 125 0 171 8 125 0 174 8 125 0 177 8 125 1 0 8 125 1 3 8 125 1 45 4 65 1 46 8 125 1 47 4 73 1 48 8 125 1 53 4 85 1 54 8 125 1 55 4 93 1 56 8 125 1 67 4 109 1 68] 
#[1 3 82 0 23 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 32 3 82 0 40 3 82 0 43 3 82 0 48 3 82 0 52 3 82 0 61 3 82 0 89 3 82 0 104 3 82 0 115 3 82 0 118 3 82 0 123 8 153 1 35] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 8 157 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 3 86 0 40 8 161 0 48 8 165 1 125] 
#[1 4 169 0 9 1 62 0 14 8 169 1 6] 
#[1 3 90 0 3 3 90 0 21 3 90 0 23 3 90 0 24 3 90 0 26 3 90 0 27 3 90 0 28 3 90 0 32 3 90 0 40 3 90 0 43 3 90 0 48 3 90 0 52 3 90 0 56 3 90 0 61 3 90 0 65 3 90 0 88 3 90 0 89 3 90 0 91 3 90 0 92 3 90 0 93 3 90 0 94 3 90 0 104 3 90 0 113 3 90 0 115 3 90 0 118 3 90 0 123 3 90 0 130 6 21 0 139 8 173 0 173] 
#[0 3 94 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 49 0 2 5 125 0 6 0 50 0 9 0 50 0 137 8 177 0 194] 
#[0 3 98 0 3 0 5 0 9 0 131 0 137] 
#[1 8 181 0 5 8 185 0 137] 
#[1 2 49 0 2 5 125 0 6 0 50 0 137 8 189 0 194] 
#[0 8 193 0 14] 
#[1 3 102 0 21 3 102 0 23 3 102 0 26 3 102 0 27 3 102 0 28 3 102 0 32 3 102 0 40 3 102 0 43 3 102 0 48 3 102 0 52 3 102 0 56 3 102 0 61 3 102 0 65 3 102 0 89 3 102 0 104 3 102 0 115 3 102 0 118 3 102 0 123 6 49 0 139 8 197 0 176] 
#[0 3 106 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 8 181 0 5 8 201 0 9] 
#[1 3 110 0 3 3 110 0 21 3 110 0 23 3 110 0 24 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 32 3 110 0 40 3 110 0 43 3 110 0 48 3 110 0 52 3 110 0 56 3 110 0 61 3 110 0 65 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 104 3 110 0 113 3 110 0 115 3 110 0 118 3 110 0 123 3 110 0 130 6 37 0 139 6 61 1 30 8 205 1 70] 
#[0 3 114 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 118 0 3 3 118 0 21 3 118 0 23 3 118 0 24 3 118 0 26 3 118 0 27 3 118 0 28 3 118 0 32 3 118 0 40 3 118 0 43 3 118 0 48 3 118 0 52 3 118 0 56 3 118 0 61 3 118 0 65 3 118 0 88 3 118 0 89 3 118 0 91 3 118 0 92 3 118 0 93 3 118 0 94 3 118 0 104 3 118 0 113 3 118 0 115 3 118 0 118 3 118 0 123 1 189 0 130 1 193 0 139 8 209 0 179 1 201 0 238] 
#[0 3 122 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 126 0 3 3 126 0 21 3 126 0 23 3 126 0 24 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 32 3 126 0 40 3 126 0 43 3 126 0 48 3 126 0 52 3 126 0 56 3 126 0 61 3 126 0 65 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 104 3 126 0 113 3 126 0 115 3 126 0 118 3 126 0 123 3 126 0 130 6 37 0 139 6 61 1 30 8 205 1 70] 
#[0 3 130 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 8 213 0 137 8 217 0 139 8 221 0 143] 
#[0 8 225 0 137] 
#[1 3 134 0 3 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 8 229 1 21] 
#[0 3 138 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 134 0 3 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 8 233 1 21] 
#[0 3 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 3 146 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 153 0 2 3 161 0 4 3 150 0 5 3 157 0 6 8 237 0 7 3 161 0 8 3 150 0 9 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 8 241 0 39 3 154 0 40 8 245 1 93] 
#[1 1 246 0 39 1 246 0 40 8 249 0 137 8 253 1 86] 
#[0 3 158 0 39 0 40 0 137] 
#[0 9 1 0 9] 
#[0 9 5 0 5] 
#[1 3 162 0 5 3 166 0 9] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 9 17 0 37 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 9 17 0 116 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 9 17 1 98 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 9 21 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[0 3 170 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 4 165 0 27 4 165 0 81 4 165 0 123 1 58 0 139 9 25 1 29 4 165 1 32] 
#[1 3 174 0 3 8 181 0 5 9 29 0 9 3 174 0 131 3 174 0 137] 
#[1 3 178 0 14 3 165 0 16 3 178 0 21 3 178 0 23 3 178 0 27 3 178 0 30 3 178 0 33 3 178 0 36 3 178 0 52 3 178 0 57 3 178 0 59 3 178 0 65 3 178 0 74 3 178 0 77 3 178 0 89 3 178 0 96 3 178 0 97 3 178 0 104 3 178 0 112 3 178 0 115 3 178 0 118 3 178 0 123 3 178 0 127 3 178 0 128 3 169 0 130 3 178 0 137] 
#[1 9 33 0 39 3 182 0 40 3 182 0 41 3 182 0 48 3 182 0 49 3 182 0 61 3 182 0 78 3 182 0 121 3 182 0 137 3 182 1 130] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 9 37 0 3 6 253 0 5] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 9 41 1 103 0 249 1 104 9 41 1 105 9 41 1 106 1 5 1 107 9 41 1 108 1 13 1 109 9 41 1 110 9 41 1 111 9 41 1 112 9 41 1 113 1 33 1 118 9 41 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 9 45 1 103 0 249 1 104 9 45 1 105 9 45 1 106 1 5 1 107 9 45 1 108 1 13 1 109 9 45 1 110 9 45 1 111 9 45 1 112 9 45 1 113 1 33 1 118 9 45 1 119 1 41 1 129] 
#[1 5 125 0 6 3 190 0 39 3 190 0 40 3 190 0 41 3 190 0 48 3 190 0 49 3 190 0 61 3 190 0 78 3 190 0 121 3 190 0 137 3 190 1 130] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 194 0 39 3 194 0 40 3 194 0 41 3 194 0 48 3 194 0 49 3 5 0 58 3 194 0 61 3 5 0 64 3 5 0 71 3 194 0 78 3 5 0 80 3 5 0 108 3 5 0 109 3 194 0 121 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 3 194 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123 3 194 1 130] 
#[1 3 109 0 139 9 49 0 234] 
#[1 9 53 0 39 3 198 0 40 3 198 0 49 4 125 0 137 9 57 1 83] 
#[1 9 53 0 39 3 198 0 40 3 198 0 49 6 197 0 78 9 61 1 82 9 65 1 83] 
#[0 3 202 0 39 0 40 0 49 0 78] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 9 69 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[0 9 73 0 40] 
#[0 3 206 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 2 157 0 2 3 5 0 4 3 210 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 210 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[0 3 214 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 2 157 0 2 3 5 0 4 3 218 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 218 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[0 3 222 0 5 0 131] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 165 0 183 9 77 0 187 1 121 0 190 1 165 0 192 1 165 0 193 9 77 0 195 9 77 0 199 9 77 0 200 1 145 0 202 9 77 0 208 1 153 0 209 1 157 0 210 1 161 0 211 1 165 0 241 9 77 0 242 9 77 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 5 5 1 103 0 249 1 104 5 5 1 105 5 5 1 106 1 5 1 107 5 5 1 108 1 13 1 109 5 5 1 110 5 5 1 111 5 5 1 112 5 5 1 113 1 33 1 118 5 5 1 119 9 81 1 121 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 9 85 1 103 0 249 1 104 9 85 1 105 9 85 1 106 1 5 1 107 9 85 1 108 1 13 1 109 9 85 1 110 9 85 1 111 9 85 1 112 9 85 1 113 1 33 1 118 9 85 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 9 89 1 103 0 249 1 104 9 89 1 105 9 89 1 106 1 5 1 107 9 89 1 108 1 13 1 109 9 89 1 110 9 89 1 111 9 89 1 112 9 89 1 113 1 33 1 118 9 89 1 119 1 41 1 129] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 3 153 0 2 3 238 0 3 3 161 0 4 3 238 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 3 153 0 2 3 242 0 3 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 242 0 137 3 161 1 123] 
#[0 3 246 0 3 0 5] 
#[1 3 153 0 2 3 250 0 3 3 161 0 4 3 250 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[0 3 254 0 3 0 5] 
#[0 4 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[0 5 45 0 9] 
#[0 4 6 0 3 0 137] 
#[1 3 165 0 16 5 89 0 77 3 169 0 130 2 10 0 137 9 93 1 2] 
#[0 4 10 0 137] 
#[1 3 134 0 3 3 134 0 5 3 134 0 14 3 134 0 16 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 30 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 36 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 57 3 134 0 59 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 74 3 134 0 77 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 96 3 134 0 97 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 112 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 127 3 134 0 128 3 134 0 130 3 134 0 131 3 134 0 132 3 134 0 137 3 134 0 139 9 97 1 21 3 134 1 130] 
#[1 5 125 0 6 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 9 101 0 201 5 145 0 225 5 149 0 235] 
#[0 9 105 0 9] 
#[0 9 109 0 137] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 1 67 0 5 0 194 0 6 0 194 0 8 5 45 0 9 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 18 0 194 0 20 0 194 0 35 0 194 0 58 0 194 0 64 0 194 0 71 0 194 0 80 0 194 0 108 0 194 0 109 0 194 0 129 0 194 0 132 0 194 0 133 0 194 0 135 0 194 0 136] 
#[0 9 117 0 3] 
#[1 1 14 0 2 1 14 0 3 1 14 0 5 1 14 0 6 1 14 0 9 3 177 0 11 1 14 0 14 1 14 0 16 1 14 0 21 1 14 0 23 1 14 0 24 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 36 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 48 1 14 0 49 1 14 0 52 1 14 0 57 1 14 0 59 1 14 0 61 1 14 0 65 1 14 0 74 1 14 0 77 1 14 0 78 1 14 0 87 1 14 0 88 1 14 0 89 1 14 0 91 1 14 0 92 1 14 0 93 1 14 0 94 1 14 0 96 1 14 0 97 1 14 0 104 1 14 0 112 1 14 0 113 1 14 0 115 1 14 0 118 1 14 0 121 1 14 0 123 1 14 0 127 1 14 0 128 1 14 0 130 1 14 0 131 1 14 0 132 1 14 0 137 1 14 0 139 9 121 0 180 1 14 1 130] 
#[0 4 14 0 5 0 131] 
#[1 3 153 0 2 3 161 0 4 4 18 0 5 3 157 0 6 0 246 0 7 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 4 18 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 9 125 0 5 9 129 0 131] 
#[0 4 22 0 5 0 131] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 9 133 0 27 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 9 137 0 183 9 137 0 187 1 121 0 190 9 137 0 192 9 137 0 193 9 137 0 195 9 137 0 199 9 137 0 200 1 145 0 202 9 137 0 208 1 153 0 209 1 157 0 210 1 161 0 211 9 137 0 241 9 137 0 242 9 137 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 4 26 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 4 30 0 3 9 141 0 24 4 30 0 40 9 145 0 88 9 149 0 92 9 153 0 93 9 157 0 94 9 161 0 113 9 165 0 203 9 169 0 227 9 169 0 228 9 169 0 229 9 169 0 230 9 169 0 231] 
#[1 9 189 0 28 9 193 0 32 4 17 0 52 9 197 0 79 4 25 0 89 7 129 0 91 4 33 0 115 4 41 0 123 9 201 1 8 9 205 1 46 9 209 1 48 9 213 1 54 9 217 1 56 9 221 1 68] 
#[1 3 109 0 139 9 225 0 234] 
#[1 3 109 0 139 9 229 0 234] 
#[1 3 109 0 139 9 233 0 234] 
#[1 3 109 0 139 9 237 0 234] 
#[0 9 241 0 139] 
#[0 4 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 9 245 0 26 7 113 0 28 7 117 0 32 4 17 0 52 4 25 0 89 9 249 0 254 9 253 0 255 10 1 1 0 10 5 1 1 10 9 1 3 10 13 1 4 10 17 1 5 9 249 1 38 7 217 1 39 9 253 1 41 7 225 1 42 10 1 1 45 4 65 1 46 10 1 1 47 4 73 1 48 10 5 1 50 10 5 1 51 10 9 1 53 4 85 1 54 10 9 1 55 4 93 1 56 10 13 1 58 10 13 1 59 10 17 1 61 8 9 1 62] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 8 181 0 5 10 21 0 9] 
#[0 4 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 110 0 3 4 110 0 24 4 110 0 26 4 110 0 27 4 110 0 28 4 110 0 32 4 110 0 40 6 89 0 44 6 93 0 51 4 110 0 52 4 110 0 88 4 110 0 89 4 110 0 91 4 110 0 92 4 110 0 93 4 110 0 94 4 110 0 113 4 110 0 115 4 110 0 118 4 110 0 123 4 110 0 130 4 110 0 139 10 25 1 25] 
#[0 4 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 118 0 3 4 118 0 24 4 118 0 26 4 118 0 27 4 118 0 28 4 118 0 32 4 118 0 40 6 89 0 44 6 93 0 51 4 118 0 52 4 118 0 88 4 118 0 89 4 118 0 91 4 118 0 92 4 118 0 93 4 118 0 94 4 118 0 113 4 118 0 115 4 118 0 118 4 118 0 123 4 118 0 130 4 118 0 139 10 29 1 25] 
#[0 4 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 158 0 3 4 158 0 24 4 158 0 26 4 158 0 27 4 158 0 28 4 158 0 32 4 158 0 40 6 89 0 44 6 93 0 51 4 158 0 52 4 158 0 88 4 158 0 89 4 158 0 91 4 158 0 92 4 158 0 93 4 158 0 94 4 158 0 113 4 158 0 115 4 158 0 118 4 158 0 123 4 158 0 130 4 158 0 139 10 33 1 25] 
#[0 4 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 10 37 0 211 10 37 1 113 1 181 1 118 1 185 1 129] 
#[0 4 170 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 10 41 0 139] 
#[0 4 174 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[1 4 178 0 2 4 178 0 17 4 178 0 26 4 178 0 27 4 178 0 28 4 178 0 31 4 178 0 32 4 178 0 40 4 178 0 52 4 178 0 54 10 45 0 77 4 178 0 87 4 178 0 88 4 178 0 89 4 178 0 91 4 178 0 92 4 178 0 93 4 178 0 94 4 178 0 106 4 178 0 113 4 178 0 115 4 178 0 118 4 178 0 123 4 178 0 130 4 178 0 137 4 178 0 139 10 49 0 221] 
#[0 4 182 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 4 186 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 10 53 0 2 4 190 0 26 4 190 0 27 4 190 0 28 4 190 0 32 4 190 0 40 4 190 0 52 4 190 0 88 4 190 0 89 4 190 0 91 4 190 0 92 4 190 0 93 4 190 0 94 4 190 0 113 4 190 0 115 4 190 0 118 4 190 0 123 4 190 0 130 4 190 0 139 10 57 0 232] 
#[0 4 194 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 130] 
#[1 0 206 0 16 0 206 0 130 10 61 0 137] 
#[1 10 65 0 31 10 65 0 87 1 22 0 137 10 65 0 191] 
#[1 0 210 0 16 10 69 0 31 10 69 0 87 0 210 0 130 1 22 0 137 10 69 0 191] 
#[1 4 198 0 3 0 218 0 16 4 198 0 21 4 198 0 23 4 198 0 24 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 32 4 198 0 40 4 198 0 43 4 198 0 48 4 198 0 52 4 198 0 56 4 198 0 61 4 198 0 65 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 4 198 0 104 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 1 71 0 130 4 198 0 139 4 198 1 130] 
#[1 4 202 0 3 0 222 0 16 4 202 0 21 4 202 0 23 4 202 0 24 4 202 0 26 4 202 0 27 4 202 0 28 4 202 0 32 4 202 0 40 4 202 0 43 4 202 0 48 4 202 0 52 4 202 0 56 4 202 0 61 4 202 0 65 4 202 0 88 4 202 0 89 4 202 0 91 4 202 0 92 4 202 0 93 4 202 0 94 4 202 0 104 4 202 0 113 4 202 0 115 4 202 0 118 4 202 0 123 1 75 0 130 4 202 0 139 4 202 1 130] 
#[0 4 206 0 31 0 87 0 137] 
#[0 4 210 0 31 0 87 0 137] 
#[0 4 214 0 31 0 87 0 137] 
#[0 4 218 0 31 0 87 0 137] 
#[0 4 222 0 31 0 87 0 137] 
#[1 10 53 0 2 4 190 0 26 4 226 0 31 4 190 0 40 4 190 0 52 4 226 0 87 4 190 0 89 4 190 0 91 4 190 0 130 4 226 0 137 10 73 0 232] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 8 37 0 26 8 97 0 34 1 53 0 46 1 57 0 52 8 97 0 63 1 61 0 75 8 49 0 76 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 10 77 0 182 8 57 0 183 8 61 0 186 8 65 0 187 1 121 0 190 8 69 0 192 8 73 0 193 8 65 0 195 8 61 0 198 8 65 0 199 8 65 0 200 1 145 0 202 8 65 0 208 1 153 0 209 1 157 0 210 1 161 0 211 8 61 0 219 8 61 0 220 8 61 0 223 1 165 0 241 8 65 0 242 8 65 0 243 8 61 0 247 8 97 0 248 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 10 81 0 137] 
#[0 4 230 1 130] 
#[1 4 234 0 5 3 189 0 6 4 234 0 137] 
#[0 4 238 0 40] 
#[0 4 242 1 130] 
#[0 4 246 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 4 250 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 4 254 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 2 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 10 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 14 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 10 85 0 23 9 245 0 26 4 13 0 27 7 113 0 28 7 117 0 32 5 18 0 40 10 89 0 43 5 18 0 48 4 17 0 52 5 18 0 61 4 25 0 89 4 29 0 104 4 33 0 115 4 37 0 118 4 41 0 123 10 109 0 171 10 109 0 174 10 109 0 177 10 105 1 34 10 109 1 36 10 109 1 37 10 117 1 38 10 121 1 39 10 109 1 40 10 129 1 41 10 133 1 42 10 109 1 44 4 61 1 45 4 65 1 46 4 69 1 47 4 73 1 48 10 109 1 49 10 145 1 50 10 149 1 51 10 109 1 52 4 81 1 53 4 85 1 54 4 89 1 55 4 93 1 56 10 109 1 57 10 161 1 58 10 165 1 59 10 109 1 60 10 173 1 61 10 177 1 62 10 109 1 67 4 109 1 68 10 109 1 126] 
#[1 5 22 0 40 5 22 0 48 4 125 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 10 189 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 5 253 0 40 10 193 1 128] 
#[0 10 197 0 14] 
#[0 5 26 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 169 0 9 1 62 0 137 10 201 1 6] 
#[0 10 205 0 139] 
#[0 5 30 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 10 209 0 137] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 10 213 0 211 10 213 1 113 1 181 1 118 1 185 1 129] 
#[0 5 34 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 10 217 0 183 10 217 0 187 1 121 0 190 10 217 0 192 10 217 0 193 10 217 0 195 10 217 0 199 10 217 0 200 1 145 0 202 10 217 0 208 1 153 0 209 1 157 0 210 1 161 0 211 10 217 0 241 10 217 0 242 10 217 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 5 38 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 46 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[1 10 221 0 72 10 225 0 137] 
#[1 10 229 0 72 10 233 0 137] 
#[0 5 50 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[1 5 54 0 3 11 89 0 17 5 54 0 21 11 89 0 22 5 54 0 23 5 54 0 24 11 89 0 25 5 54 0 26 5 54 0 27 5 54 0 28 11 89 0 31 5 54 0 32 10 253 0 33 11 89 0 38 5 54 0 40 11 89 0 42 5 54 0 43 6 89 0 44 11 89 0 45 11 89 0 47 5 54 0 48 6 93 0 51 5 54 0 52 5 54 0 56 5 54 0 61 11 89 0 62 5 54 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 5 54 0 88 5 54 0 89 5 54 0 91 5 54 0 92 5 54 0 93 5 54 0 94 11 89 0 100 11 89 0 101 5 54 0 104 11 89 0 105 11 89 0 110 11 89 0 111 5 54 0 113 5 54 0 115 5 54 0 118 11 89 0 120 5 54 0 123 11 89 0 124 5 54 0 130 5 54 0 139 11 77 1 23 11 77 1 24 11 77 1 25 11 89 1 26] 
#[1 5 58 0 3 11 89 0 17 5 58 0 21 11 89 0 22 5 58 0 23 5 58 0 24 11 89 0 25 5 58 0 26 5 58 0 27 5 58 0 28 11 89 0 31 5 58 0 32 10 253 0 33 11 89 0 38 5 58 0 40 11 89 0 42 5 58 0 43 6 89 0 44 11 89 0 45 11 89 0 47 5 58 0 48 6 93 0 51 5 58 0 52 5 58 0 56 5 58 0 61 11 89 0 62 5 58 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 5 58 0 88 5 58 0 89 5 58 0 91 5 58 0 92 5 58 0 93 5 58 0 94 11 89 0 100 11 89 0 101 5 58 0 104 11 89 0 105 11 89 0 110 11 89 0 111 5 58 0 113 5 58 0 115 5 58 0 118 11 89 0 120 5 58 0 123 11 89 0 124 5 58 0 130 5 58 0 139 11 77 1 23 11 77 1 24 11 77 1 25 11 89 1 26] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 11 93 0 211 11 93 1 113 1 181 1 118 1 185 1 129] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 11 97 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[0 11 101 0 40] 
#[1 3 25 0 2 1 49 0 15 2 234 0 39 2 234 0 40 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 6 117 0 211 11 105 1 89 6 133 1 90 6 137 1 91 6 141 1 92 6 117 1 113 1 181 1 118 1 185 1 129] 
#[0 5 62 0 39 0 40] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 11 109 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 11 109 1 100 11 109 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 6 117 0 211 11 113 1 92 6 117 1 113 1 181 1 118 1 185 1 129] 
#[0 5 66 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 129] 
#[0 5 70 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 11 117 1 103 0 249 1 104 11 117 1 105 11 117 1 106 1 5 1 107 11 117 1 108 1 13 1 109 11 117 1 110 11 117 1 111 11 117 1 112 11 117 1 113 1 33 1 118 11 117 1 119 1 41 1 129] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 11 121 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 11 121 1 100 11 121 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[0 5 74 0 3 0 131 0 137] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 11 125 0 183 11 125 0 187 1 121 0 190 11 125 0 192 11 125 0 193 11 125 0 195 11 125 0 199 11 125 0 200 1 145 0 202 11 125 0 208 1 153 0 209 1 157 0 210 1 161 0 211 11 125 0 241 11 125 0 242 11 125 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 11 129 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 11 129 1 100 11 129 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 11 133 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 11 137 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 5 125 0 6 4 169 0 9 1 62 0 36 11 141 1 6] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 11 145 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[0 5 82 0 40 0 49] 
#[0 5 86 0 39 0 40 0 49 0 78] 
#[0 5 90 0 40 0 49] 
#[1 5 94 0 40 4 125 0 137] 
#[0 5 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 5 102 0 5 0 210 0 16 0 210 0 130 5 102 0 132] 
#[1 5 106 0 3 5 106 0 5 7 1 0 9] 
#[1 2 157 0 2 5 110 0 3 3 5 0 4 5 110 0 5 2 165 0 6 3 5 0 8 5 110 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 2 157 0 2 3 5 0 4 5 114 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 5 114 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[0 11 149 0 137] 
#[1 5 118 0 3 5 118 0 5 5 118 0 14 5 118 0 16 11 89 0 17 5 118 0 21 11 89 0 22 5 118 0 23 5 118 0 24 11 89 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 30 1 79 0 31 5 118 0 32 1 83 0 33 5 118 0 36 11 89 0 38 5 118 0 40 11 89 0 42 5 118 0 43 6 89 0 44 11 89 0 45 11 89 0 47 5 118 0 48 6 93 0 51 5 118 0 52 5 118 0 56 5 118 0 57 5 118 0 59 5 118 0 61 11 89 0 62 5 118 0 65 11 89 0 67 11 25 0 70 11 89 0 73 5 118 0 74 5 118 0 77 11 89 0 82 11 89 0 83 11 89 0 86 1 87 0 87 5 118 0 88 5 118 0 89 5 118 0 91 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 96 5 118 0 97 11 89 0 100 11 89 0 101 5 118 0 104 11 89 0 105 11 89 0 110 11 89 0 111 5 118 0 112 5 118 0 113 5 118 0 115 5 118 0 118 11 89 0 120 5 118 0 123 11 89 0 124 5 118 0 127 5 118 0 128 5 118 0 130 5 118 0 131 5 118 0 132 5 118 0 137 5 118 0 139 11 77 1 23 11 77 1 24 11 77 1 25 11 89 1 26 5 118 1 130] 
#[0 11 153 0 40] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 11 157 0 183 11 157 0 187 1 121 0 190 11 157 0 192 11 157 0 193 11 157 0 195 11 157 0 199 11 157 0 200 1 145 0 202 11 157 0 208 1 153 0 209 1 157 0 210 1 161 0 211 11 157 0 241 11 157 0 242 11 157 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[0 5 122 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[1 11 161 0 140 11 165 0 197] 
#[0 5 126 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[0 5 130 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 11 169 0 208 1 153 0 209 1 157 0 210 7 85 0 211 11 169 0 246 7 85 1 113 1 181 1 118 1 185 1 129] 
#[0 5 134 0 77] 
#[0 5 138 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 5 142 0 3 5 142 0 5 5 142 0 14 3 165 0 16 5 142 0 21 5 142 0 23 5 142 0 27 5 142 0 30 5 142 0 31 5 142 0 33 5 142 0 36 5 142 0 52 5 142 0 57 5 142 0 59 5 142 0 65 5 142 0 74 5 142 0 77 5 142 0 87 5 142 0 89 5 142 0 96 5 142 0 97 5 142 0 104 5 142 0 112 5 142 0 115 5 142 0 118 5 142 0 123 5 142 0 127 5 142 0 128 3 169 0 130 5 142 0 131 5 142 0 132 5 142 0 137 5 142 1 130] 
#[0 11 173 0 139] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 177 0 235] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 181 0 235] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 185 0 235] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 189 0 235] 
#[1 11 193 0 88 11 197 0 92] 
#[0 5 146 0 3 0 40] 
#[0 5 150 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 154 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 158 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 162 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 166 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 3 109 0 139 11 201 0 234] 
#[1 3 109 0 139 11 205 0 234] 
#[1 3 109 0 139 11 209 0 234] 
#[0 5 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 174 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 178 0 3 5 178 0 21 5 178 0 23 5 178 0 24 5 178 0 26 5 178 0 27 5 178 0 28 5 178 0 32 5 178 0 40 6 89 0 44 6 93 0 51 5 178 0 52 5 178 0 65 5 178 0 88 5 178 0 89 5 178 0 91 5 178 0 92 5 178 0 93 5 178 0 94 5 178 0 104 5 178 0 113 5 178 0 115 5 178 0 118 5 178 0 123 5 178 0 130 5 178 0 139 6 97 1 25] 
#[0 5 182 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 186 0 3 5 186 0 21 5 186 0 23 5 186 0 24 5 186 0 26 5 186 0 27 5 186 0 28 5 186 0 32 5 186 0 40 6 89 0 44 6 93 0 51 5 186 0 52 5 186 0 65 5 186 0 88 5 186 0 89 5 186 0 91 5 186 0 92 5 186 0 93 5 186 0 94 5 186 0 104 5 186 0 113 5 186 0 115 5 186 0 118 5 186 0 123 5 186 0 130 5 186 0 139 6 105 1 25] 
#[0 5 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 49 0 2 5 125 0 6 0 50 0 137 11 213 0 194] 
#[1 11 217 0 2 5 125 0 6 5 194 0 137 11 221 1 43] 
#[1 2 49 0 2 5 125 0 6 0 50 0 9 11 225 0 14 0 50 0 137 8 177 0 194] 
#[1 2 49 0 2 5 125 0 6 11 229 0 14 0 50 0 137 8 189 0 194] 
#[1 5 198 0 9 5 198 0 30 5 198 0 33 5 198 0 57 5 198 0 59 5 198 0 74 5 198 0 96 5 198 0 97 5 198 0 112 5 198 0 127 5 198 0 128 11 233 0 130 5 198 0 137 11 237 1 11] 
#[1 9 189 0 28 9 193 0 32 4 17 0 52 9 197 0 79 4 25 0 89 9 205 1 46 9 209 1 48 9 213 1 54 9 217 1 56] 
#[0 5 202 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 218 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 222 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 11 241 0 183 11 241 0 187 1 121 0 190 11 241 0 192 11 241 0 193 11 241 0 195 11 241 0 199 11 241 0 200 1 145 0 202 11 241 0 208 1 153 0 209 1 157 0 210 1 161 0 211 11 241 0 241 11 241 0 242 11 241 0 243 1 161 1 113 1 181 1 118 1 185 1 129] 
#[1 3 134 0 3 3 134 0 17 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 61 3 134 0 62 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 11 245 1 21] 
#[1 3 134 0 3 3 134 0 17 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 61 3 134 0 62 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 11 249 1 21] 
#[1 3 134 0 3 3 134 0 17 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 61 3 134 0 62 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 11 253 1 21] 
#[1 3 153 0 2 5 230 0 3 3 161 0 4 5 230 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[0 5 234 0 5 0 132] 
#[0 12 1 0 139] 
#[1 10 53 0 2 12 17 0 17 4 190 0 26 4 190 0 27 4 190 0 28 4 190 0 31 4 190 0 32 4 190 0 40 4 190 0 52 12 9 0 54 4 190 0 87 4 190 0 88 4 190 0 89 4 190 0 91 4 190 0 92 4 190 0 93 4 190 0 94 12 17 0 106 4 190 0 113 4 190 0 115 4 190 0 118 4 190 0 123 4 190 0 130 4 190 0 137 4 190 0 139 12 17 0 222 12 21 0 232] 
#[1 12 25 0 140 12 29 0 190 12 33 0 233] 
#[1 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 12 37 0 225 5 149 0 235] 
#[0 5 238 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 130] 
#[0 12 41 0 137] 
#[0 12 45 0 137] 
#[1 5 242 0 26 5 242 0 40 5 242 0 52 5 242 0 89 5 242 0 91 12 49 0 130 12 53 0 249] 
#[0 5 246 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 130] 
#[0 5 250 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 12 57 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 12 61 0 139 12 65 1 127] 
#[0 5 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 10 0 40 0 48 0 61] 
#[0 6 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 89 0 44 6 93 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 25 1 25 12 69 1 63 2 13 1 64] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 89 0 44 6 93 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 29 1 25 12 73 1 63 2 13 1 64] 
#[0 6 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 77 1 63 2 13 1 64] 
#[0 6 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 54 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 81 1 63 2 13 1 64] 
#[0 6 58 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 62 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 89 0 44 6 93 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 33 1 25 12 85 1 63 2 13 1 64] 
#[0 6 66 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 70 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 74 0 40 4 125 0 137] 
#[0 6 78 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 12 89 0 211 12 89 1 113 1 181 1 118 1 185 1 129] 
#[0 12 93 0 137] 
#[0 6 82 0 3 0 5 0 9 0 131 0 137] 
#[1 6 86 0 3 6 86 0 17 6 86 0 21 6 86 0 22 6 86 0 23 6 86 0 24 6 86 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 38 6 86 0 40 6 86 0 42 6 86 0 44 6 86 0 45 6 86 0 47 6 86 0 48 6 86 0 51 6 86 0 52 6 86 0 56 6 86 0 61 6 86 0 62 6 86 0 65 6 86 0 67 6 86 0 70 6 86 0 73 6 86 0 82 6 86 0 83 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 100 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 110 6 86 0 111 6 86 0 113 6 86 0 115 6 86 0 118 6 86 0 120 6 86 0 123 6 86 0 124 6 86 0 130 6 86 0 139 12 97 1 22] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 12 105 0 31 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 6 90 0 137 12 105 0 224 3 161 1 123] 
#[1 1 22 0 14 3 165 0 16 12 109 0 31 12 109 0 87 3 169 0 130 1 22 0 137 12 109 0 191] 
#[0 12 113 0 143] 
#[0 6 94 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 12 117 0 143] 
#[0 6 98 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 6 102 0 137] 
#[0 6 106 0 137] 
#[0 6 110 0 137] 
#[0 6 114 0 137] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 12 121 0 211 12 121 1 113 1 181 1 118 1 185 1 129] 
#[0 6 118 0 137] 
#[0 6 122 0 137] 
#[0 6 126 0 137] 
#[0 6 130 0 137] 
#[0 6 134 0 137] 
#[0 6 138 0 137] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 12 125 0 211 12 125 1 113 1 181 1 118 1 185 1 129] 
#[0 6 142 0 137] 
#[0 6 146 0 137] 
#[0 6 150 0 137] 
#[0 6 154 0 137] 
#[0 6 158 0 137] 
#[0 6 162 0 137] 
#[0 6 166 0 137] 
#[0 6 170 0 137] 
#[0 6 174 0 137] 
#[0 6 178 0 137] 
#[0 6 182 0 137] 
#[0 6 186 0 137] 
#[0 6 190 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 6 194 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 6 198 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 12 129 0 137] 
#[1 3 153 0 2 3 161 0 4 6 202 0 5 3 157 0 6 3 161 0 8 6 202 0 9 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 6 206 0 40 4 125 0 137] 
#[0 6 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 6 214 0 39 0 40 0 137] 
#[0 6 218 0 39 0 40 0 137] 
#[1 6 222 0 5 6 226 0 9] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 12 133 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[0 6 230 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 6 234 0 3 12 137 0 14 3 165 0 16 3 169 0 130 6 234 0 131 6 234 0 137 12 141 1 31] 
#[0 6 238 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[0 6 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 6 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 130] 
#[0 12 145 0 36] 
#[1 6 250 0 40 6 250 0 49 4 125 0 137] 
#[1 3 134 0 3 3 134 0 5 3 134 0 14 3 134 0 16 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 30 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 36 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 57 3 134 0 59 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 74 3 134 0 77 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 96 3 134 0 97 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 112 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 127 3 134 0 128 3 134 0 130 3 134 0 131 3 134 0 132 3 134 0 137 3 134 0 139 12 149 1 21 3 134 1 130] 
#[0 6 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 130] 
#[1 3 165 0 16 3 169 0 130 12 153 0 137] 
#[0 7 2 0 3 0 5] 
#[1 7 6 0 3 12 157 0 5] 
#[0 7 10 0 5 0 131] 
#[1 4 169 0 9 1 62 0 77 12 161 1 6] 
#[1 7 14 0 3 7 14 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 14 0 40 7 121 0 52 7 14 0 88 7 125 0 89 7 129 0 91 7 14 0 92 7 14 0 93 7 14 0 94 7 14 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 171 7 141 0 177 7 141 0 236 7 141 0 237 7 149 0 238 7 141 0 239 7 141 0 240 7 141 0 252 7 141 0 253 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 3 7 141 1 4 7 141 1 5 7 141 1 7 7 201 1 8 7 141 1 9 7 209 1 30 7 141 1 38 7 217 1 39 7 141 1 41 7 225 1 42 7 141 1 45 4 65 1 46 7 141 1 47 4 73 1 48 7 141 1 50 7 141 1 51 7 141 1 53 4 85 1 54 7 141 1 55 4 93 1 56 7 141 1 58 7 141 1 59 7 141 1 61 8 9 1 62 7 141 1 67 4 109 1 68] 
#[1 7 18 0 3 7 18 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 18 0 40 7 121 0 52 7 18 0 88 7 125 0 89 7 129 0 91 7 18 0 92 7 18 0 93 7 18 0 94 7 18 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 171 7 141 0 177 7 141 0 236 7 141 0 237 7 149 0 238 7 141 0 239 7 141 0 240 7 141 0 252 7 141 0 253 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 3 7 141 1 4 7 141 1 5 7 141 1 7 7 201 1 8 7 141 1 9 7 209 1 30 7 141 1 38 7 217 1 39 7 141 1 41 7 225 1 42 7 141 1 45 4 65 1 46 7 141 1 47 4 73 1 48 7 141 1 50 7 141 1 51 7 141 1 53 4 85 1 54 7 141 1 55 4 93 1 56 7 141 1 58 7 141 1 59 7 141 1 61 8 9 1 62 7 141 1 67 4 109 1 68] 
#[1 7 22 0 3 7 22 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 22 0 40 7 121 0 52 7 22 0 88 7 125 0 89 7 129 0 91 7 22 0 92 7 22 0 93 7 22 0 94 7 22 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 171 7 141 0 177 7 141 0 236 7 141 0 237 7 149 0 238 7 141 0 239 7 141 0 240 7 141 0 252 7 141 0 253 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 3 7 141 1 4 7 141 1 5 7 141 1 7 7 201 1 8 7 141 1 9 7 209 1 30 7 141 1 38 7 217 1 39 7 141 1 41 7 225 1 42 7 141 1 45 4 65 1 46 7 141 1 47 4 73 1 48 7 141 1 50 7 141 1 51 7 141 1 53 4 85 1 54 7 141 1 55 4 93 1 56 7 141 1 58 7 141 1 59 7 141 1 61 8 9 1 62 7 141 1 67 4 109 1 68] 
#[1 7 26 0 3 7 26 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 26 0 40 7 121 0 52 7 26 0 88 7 125 0 89 7 129 0 91 7 26 0 92 7 26 0 93 7 26 0 94 7 26 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 171 7 141 0 177 7 141 0 236 7 141 0 237 7 149 0 238 7 141 0 239 7 141 0 240 7 141 0 252 7 141 0 253 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 3 7 141 1 4 7 141 1 5 7 141 1 7 7 201 1 8 7 141 1 9 7 209 1 30 7 141 1 38 7 217 1 39 7 141 1 41 7 225 1 42 7 141 1 45 4 65 1 46 7 141 1 47 4 73 1 48 7 141 1 50 7 141 1 51 7 141 1 53 4 85 1 54 7 141 1 55 4 93 1 56 7 141 1 58 7 141 1 59 7 141 1 61 8 9 1 62 7 141 1 67 4 109 1 68] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 12 165 0 235] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 12 169 0 235] 
#[1 2 49 0 2 5 125 0 6 0 50 0 137 12 173 0 194] 
#[1 11 217 0 2 5 125 0 6 5 194 0 137 12 177 1 43] 
#[1 2 49 0 2 5 125 0 6 0 50 0 9 0 50 0 137 12 181 0 194] 
#[0 12 185 0 137] 
#[0 12 189 0 3] 
#[0 12 193 0 137] 
#[0 12 197 0 139] 
#[0 12 201 0 139] 
#[1 4 165 0 27 4 165 0 81 4 165 0 123 1 54 0 131 1 58 0 139 12 205 1 27 4 157 1 28 4 161 1 29 4 165 1 32] 
#[1 4 169 0 9 1 62 0 30 1 62 0 33 1 62 0 57 1 62 0 59 1 62 0 74 1 62 0 96 1 62 0 97 1 62 0 112 1 62 0 127 1 62 0 128 1 62 0 137 12 209 1 6] 
#[1 3 165 0 16 12 213 0 31 12 213 0 87 3 169 0 130 1 22 0 137 12 213 0 191] 
#[1 7 30 0 3 11 89 0 17 11 89 0 22 7 30 0 23 7 30 0 24 11 89 0 25 7 30 0 26 7 30 0 27 7 30 0 28 11 89 0 31 7 30 0 32 10 253 0 33 11 89 0 38 7 30 0 40 11 89 0 42 7 30 0 43 6 89 0 44 11 89 0 45 11 89 0 47 7 30 0 48 6 93 0 51 7 30 0 52 7 30 0 61 11 89 0 62 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 7 30 0 88 7 30 0 89 7 30 0 91 7 30 0 92 7 30 0 93 7 30 0 94 11 89 0 100 11 89 0 101 7 30 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 30 0 113 7 30 0 115 7 30 0 118 11 89 0 120 7 30 0 123 11 89 0 124 7 30 0 130 7 30 0 139 11 77 1 23 11 77 1 24 11 77 1 25 11 89 1 26] 
#[1 7 34 0 3 11 89 0 17 11 89 0 22 7 34 0 23 7 34 0 24 11 89 0 25 7 34 0 26 7 34 0 27 7 34 0 28 11 89 0 31 7 34 0 32 10 253 0 33 11 89 0 38 7 34 0 40 11 89 0 42 7 34 0 43 6 89 0 44 11 89 0 45 11 89 0 47 7 34 0 48 6 93 0 51 7 34 0 52 7 34 0 61 11 89 0 62 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 7 34 0 88 7 34 0 89 7 34 0 91 7 34 0 92 7 34 0 93 7 34 0 94 11 89 0 100 11 89 0 101 7 34 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 34 0 113 7 34 0 115 7 34 0 118 11 89 0 120 7 34 0 123 11 89 0 124 7 34 0 130 7 34 0 139 11 77 1 23 11 77 1 24 11 77 1 25 11 89 1 26] 
#[1 7 38 0 3 11 89 0 17 11 89 0 22 7 38 0 23 7 38 0 24 11 89 0 25 7 38 0 26 7 38 0 27 7 38 0 28 11 89 0 31 7 38 0 32 10 253 0 33 11 89 0 38 7 38 0 40 11 89 0 42 7 38 0 43 6 89 0 44 11 89 0 45 11 89 0 47 7 38 0 48 6 93 0 51 7 38 0 52 7 38 0 61 11 89 0 62 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 7 38 0 88 7 38 0 89 7 38 0 91 7 38 0 92 7 38 0 93 7 38 0 94 11 89 0 100 11 89 0 101 7 38 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 38 0 113 7 38 0 115 7 38 0 118 11 89 0 120 7 38 0 123 11 89 0 124 7 38 0 130 7 38 0 139 11 77 1 23 11 77 1 24 11 77 1 25 11 89 1 26] 
#[0 7 42 0 31 0 87 0 137] 
#[0 7 46 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 12 217 0 50] 
#[0 7 50 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 54 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 38 0 26 2 38 0 27 2 38 0 28 7 58 0 31 2 38 0 32 2 38 0 40 2 38 0 52 7 58 0 87 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 7 58 0 137 2 38 0 139 12 221 0 225 5 149 0 235] 
#[0 0 198 0 3 0 5 0 6 0 11] 
#[1 7 62 0 3 7 62 0 5 3 133 0 6 2 141 0 11 3 137 0 188] 
#[1 12 225 0 3 12 229 0 5] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 12 233 0 226] 
#[0 7 66 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 130] 
#[0 7 70 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 12 237 0 211 12 237 1 113 1 181 1 118 1 185 1 129] 
#[1 7 74 0 26 7 74 0 40 7 74 0 52 7 74 0 89 7 74 0 91 12 241 0 250] 
#[1 7 78 0 40 7 78 0 48 7 78 0 61 4 125 0 137] 
#[0 7 82 0 5 0 137] 
#[1 12 245 0 5 12 249 0 137] 
#[0 7 86 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 90 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 94 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 98 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 102 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 1 91 0 31 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 12 253 0 87 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 1 22 0 137 12 253 0 191 3 161 1 123] 
#[1 6 86 0 3 6 86 0 17 6 86 0 21 6 86 0 22 6 86 0 23 6 86 0 24 6 86 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 38 6 86 0 40 6 86 0 42 6 86 0 44 6 86 0 45 6 86 0 47 6 86 0 48 6 86 0 51 6 86 0 52 6 86 0 56 6 86 0 61 6 86 0 62 6 86 0 65 6 86 0 67 6 86 0 70 6 86 0 73 6 86 0 82 6 86 0 83 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 100 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 110 6 86 0 111 6 86 0 113 6 86 0 115 6 86 0 118 6 86 0 120 6 86 0 123 6 86 0 124 6 86 0 130 6 86 0 139 13 1 1 22] 
#[1 7 106 0 3 11 89 0 17 7 106 0 21 11 89 0 22 7 106 0 23 7 106 0 24 11 89 0 25 7 106 0 26 7 106 0 27 7 106 0 28 11 89 0 31 7 106 0 32 10 253 0 33 11 89 0 38 7 106 0 40 11 89 0 42 7 106 0 44 11 89 0 45 11 89 0 47 7 106 0 48 7 106 0 51 7 106 0 52 7 106 0 56 7 106 0 61 11 89 0 62 7 106 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 7 106 0 88 7 106 0 89 7 106 0 91 7 106 0 92 7 106 0 93 7 106 0 94 11 89 0 100 11 89 0 101 7 106 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 106 0 113 7 106 0 115 7 106 0 118 11 89 0 120 7 106 0 123 11 89 0 124 7 106 0 130 7 106 0 139 13 5 1 24 11 89 1 26] 
#[0 7 110 0 137] 
#[0 13 9 0 137] 
#[1 12 137 0 14 6 234 0 137 13 13 1 31] 
#[0 13 17 0 137] 
#[0 13 21 0 137] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 13 25 0 137 3 161 1 123] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 13 29 0 137 3 161 1 123] 
#[0 7 114 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 13 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 13 33 1 100 13 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129 0 14 1 130] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 13 37 0 211 13 37 1 113 1 181 1 118 1 185 1 129] 
#[0 7 118 0 3 0 131 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 210 13 41 1 71 2 33 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 33 1 100 2 33 1 101 0 241 1 102 0 245 1 103 0 249 1 104 0 245 1 105 0 245 1 106 1 5 1 107 0 245 1 108 1 13 1 109 0 245 1 110 0 245 1 111 0 245 1 112 0 245 1 113 1 33 1 118 0 245 1 119 1 41 1 129] 
#[1 7 122 0 3 7 122 0 5 7 122 0 14 7 122 0 16 11 89 0 17 7 122 0 21 11 89 0 22 7 122 0 23 7 122 0 24 11 89 0 25 7 122 0 26 7 122 0 27 7 122 0 28 7 122 0 30 1 95 0 31 7 122 0 32 1 99 0 33 7 122 0 36 11 89 0 38 7 122 0 40 11 89 0 42 7 122 0 43 6 89 0 44 11 89 0 45 11 89 0 47 7 122 0 48 6 93 0 51 7 122 0 52 7 122 0 56 7 122 0 57 7 122 0 59 7 122 0 61 11 89 0 62 7 122 0 65 11 89 0 67 11 25 0 70 11 89 0 73 7 122 0 74 7 122 0 77 11 89 0 82 11 89 0 83 11 89 0 86 1 103 0 87 7 122 0 88 7 122 0 89 7 122 0 91 7 122 0 92 7 122 0 93 7 122 0 94 7 122 0 96 7 122 0 97 11 89 0 100 11 89 0 101 7 122 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 122 0 112 7 122 0 113 7 122 0 115 7 122 0 118 11 89 0 120 7 122 0 123 11 89 0 124 7 122 0 127 7 122 0 128 7 122 0 130 7 122 0 131 7 122 0 132 7 122 0 137 7 122 0 139 11 77 1 23 11 77 1 24 11 77 1 25 11 89 1 26 7 122 1 130] 
#[0 7 126 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 13 45 0 140] 
#[0 13 49 0 77] 
#[1 7 130 0 3 7 130 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 130 0 40 7 121 0 52 7 130 0 88 7 125 0 89 7 129 0 91 7 130 0 92 7 130 0 93 7 130 0 94 7 130 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 171 7 141 0 177 7 141 0 236 7 141 0 237 7 149 0 238 7 141 0 239 7 141 0 240 7 141 0 252 7 141 0 253 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 3 7 141 1 4 7 141 1 5 7 141 1 7 7 201 1 8 7 141 1 9 7 209 1 30 7 141 1 38 7 217 1 39 7 141 1 41 7 225 1 42 7 141 1 45 4 65 1 46 7 141 1 47 4 73 1 48 7 141 1 50 7 141 1 51 7 141 1 53 4 85 1 54 7 141 1 55 4 93 1 56 7 141 1 58 7 141 1 59 7 141 1 61 8 9 1 62 7 141 1 67 4 109 1 68] 
#[1 7 134 0 3 7 134 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 134 0 40 7 121 0 52 7 134 0 88 7 125 0 89 7 129 0 91 7 134 0 92 7 134 0 93 7 134 0 94 7 134 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 171 7 141 0 177 7 141 0 236 7 141 0 237 7 149 0 238 7 141 0 239 7 141 0 240 7 141 0 252 7 141 0 253 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 3 7 141 1 4 7 141 1 5 7 141 1 7 7 201 1 8 7 141 1 9 7 209 1 30 7 141 1 38 7 217 1 39 7 141 1 41 7 225 1 42 7 141 1 45 4 65 1 46 7 141 1 47 4 73 1 48 7 141 1 50 7 141 1 51 7 141 1 53 4 85 1 54 7 141 1 55 4 93 1 56 7 141 1 58 7 141 1 59 7 141 1 61 8 9 1 62 7 141 1 67 4 109 1 68] 
#[0 13 53 0 137] 
#[0 13 57 0 137] 
#[1 4 169 0 9 1 62 0 137 13 61 1 6] 
#[1 6 86 0 3 6 86 0 17 6 86 0 21 6 86 0 22 6 86 0 23 6 86 0 24 6 86 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 38 6 86 0 40 6 86 0 42 6 86 0 44 6 86 0 45 6 86 0 47 6 86 0 51 6 86 0 52 6 86 0 62 6 86 0 65 6 86 0 67 6 86 0 70 6 86 0 73 6 86 0 82 6 86 0 83 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 100 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 110 6 86 0 111 6 86 0 113 6 86 0 115 6 86 0 118 6 86 0 120 6 86 0 123 6 86 0 124 6 86 0 130 6 86 0 139 13 65 1 22] 
#[0 7 138 0 137] 
#[1 6 86 0 3 6 86 0 17 6 86 0 21 6 86 0 22 6 86 0 23 6 86 0 24 6 86 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 38 6 86 0 40 6 86 0 42 6 86 0 44 6 86 0 45 6 86 0 47 6 86 0 51 6 86 0 52 6 86 0 62 6 86 0 65 6 86 0 67 6 86 0 70 6 86 0 73 6 86 0 82 6 86 0 83 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 100 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 110 6 86 0 111 6 86 0 113 6 86 0 115 6 86 0 118 6 86 0 120 6 86 0 123 6 86 0 124 6 86 0 130 6 86 0 139 13 69 1 22] 
#[0 13 73 0 137] 
#[0 13 77 0 137] 
#[0 13 81 0 131] 
#[1 7 142 0 30 7 142 0 33 7 142 0 57 7 142 0 59 7 142 0 74 7 142 0 96 7 142 0 97 7 142 0 112 7 142 0 127 7 142 0 128 7 142 0 137 13 85 1 10] 
#[0 13 89 0 137] 
#[1 3 109 0 139 13 93 0 234] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 13 97 0 226] 
#[0 7 146 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 25 0 140 13 101 0 190] 
#[1 13 105 0 40 9 145 0 88 9 149 0 92 9 153 0 93 9 157 0 94 9 161 0 113 9 169 0 227 9 169 0 228 9 169 0 229 9 169 0 230 9 169 0 231] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 13 109 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 13 113 0 26 13 117 0 40 4 17 0 52 4 25 0 89 7 129 0 91 13 121 0 251 13 121 0 252 13 121 0 253 13 121 1 0 13 121 1 1 13 121 1 3 13 121 1 4 13 121 1 5 13 121 1 7 7 201 1 8 13 121 1 9 13 121 1 45 4 65 1 46 13 121 1 47 4 73 1 48 13 121 1 50 13 121 1 51 13 121 1 53 4 85 1 54 13 121 1 55 4 93 1 56 13 121 1 58 13 121 1 59 13 121 1 61 8 9 1 62] 
#[0 13 133 0 139] 
#[0 7 150 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 13 137 0 31 6 90 0 137 13 137 0 224] 
#[1 7 154 0 3 11 89 0 17 7 154 0 21 11 89 0 22 7 154 0 23 7 154 0 24 11 89 0 25 7 154 0 26 7 154 0 27 7 154 0 28 11 89 0 31 7 154 0 32 10 253 0 33 11 89 0 38 7 154 0 40 11 89 0 42 7 154 0 44 11 89 0 45 11 89 0 47 7 154 0 48 7 154 0 51 7 154 0 52 7 154 0 56 7 154 0 61 11 89 0 62 7 154 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 7 154 0 88 7 154 0 89 7 154 0 91 7 154 0 92 7 154 0 93 7 154 0 94 11 89 0 100 11 89 0 101 7 154 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 154 0 113 7 154 0 115 7 154 0 118 11 89 0 120 7 154 0 123 11 89 0 124 7 154 0 130 7 154 0 139 13 5 1 24 11 89 1 26] 
#[0 7 158 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139] 
#[0 7 162 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 13 141 0 137] 
#[0 7 166 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 7 170 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 7 174 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 7 178 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 130] 
#[0 7 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 130] 
#[1 3 153 0 2 7 186 0 3 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 7 186 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 7 186 0 137 3 161 1 123] 
#[1 7 190 0 39 7 190 0 40 7 190 0 49 7 190 0 78 4 125 0 137] 
#[0 7 194 0 3 0 5] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 13 145 0 204 13 149 0 205 13 153 0 206 13 157 0 207 1 157 0 210 13 161 0 211 13 161 1 113 1 181 1 118 1 185 1 129] 
#[1 6 86 0 3 6 86 0 17 6 86 0 21 6 86 0 22 6 86 0 23 6 86 0 24 6 86 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 38 6 86 0 40 6 86 0 42 6 86 0 44 6 86 0 45 6 86 0 47 6 86 0 51 6 86 0 52 6 86 0 62 6 86 0 65 6 86 0 67 6 86 0 70 6 86 0 73 6 86 0 82 6 86 0 83 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 100 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 110 6 86 0 111 6 86 0 113 6 86 0 115 6 86 0 118 6 86 0 120 6 86 0 123 6 86 0 124 6 86 0 130 6 86 0 139 13 165 1 22] 
#[1 6 86 0 3 6 86 0 17 6 86 0 21 6 86 0 22 6 86 0 23 6 86 0 24 6 86 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 38 6 86 0 40 6 86 0 42 6 86 0 44 6 86 0 45 6 86 0 47 6 86 0 51 6 86 0 52 6 86 0 62 6 86 0 65 6 86 0 67 6 86 0 70 6 86 0 73 6 86 0 82 6 86 0 83 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 100 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 110 6 86 0 111 6 86 0 113 6 86 0 115 6 86 0 118 6 86 0 120 6 86 0 123 6 86 0 124 6 86 0 130 6 86 0 139 13 169 1 22] 
#[0 13 173 0 137] 
#[1 7 198 0 3 11 89 0 17 7 198 0 21 11 89 0 22 7 198 0 23 7 198 0 24 11 89 0 25 7 198 0 26 7 198 0 27 7 198 0 28 11 89 0 31 7 198 0 32 10 253 0 33 11 89 0 38 7 198 0 40 11 89 0 42 7 198 0 44 11 89 0 45 11 89 0 47 7 198 0 51 7 198 0 52 11 89 0 62 7 198 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 7 198 0 88 7 198 0 89 7 198 0 91 7 198 0 92 7 198 0 93 7 198 0 94 11 89 0 100 11 89 0 101 7 198 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 198 0 113 7 198 0 115 7 198 0 118 11 89 0 120 7 198 0 123 11 89 0 124 7 198 0 130 7 198 0 139 13 5 1 24 11 89 1 26] 
#[1 7 202 0 3 11 89 0 17 7 202 0 21 11 89 0 22 7 202 0 23 7 202 0 24 11 89 0 25 7 202 0 26 7 202 0 27 7 202 0 28 11 89 0 31 7 202 0 32 10 253 0 33 11 89 0 38 7 202 0 40 11 89 0 42 7 202 0 44 11 89 0 45 11 89 0 47 7 202 0 51 7 202 0 52 11 89 0 62 7 202 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 7 202 0 88 7 202 0 89 7 202 0 91 7 202 0 92 7 202 0 93 7 202 0 94 11 89 0 100 11 89 0 101 7 202 0 104 11 89 0 105 11 89 0 110 11 89 0 111 7 202 0 113 7 202 0 115 7 202 0 118 11 89 0 120 7 202 0 123 11 89 0 124 7 202 0 130 7 202 0 139 13 5 1 24 11 89 1 26] 
#[0 7 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 214 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 177 0 30 13 181 0 33 13 185 0 57 13 189 0 59 13 193 0 74 13 197 0 96 13 201 0 97 13 205 0 112 13 209 0 127 13 213 0 128 13 217 0 137 13 221 1 12 13 225 1 13 13 229 1 14 13 233 1 15 13 237 1 16 13 241 1 17 13 245 1 19] 
#[0 7 218 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 53 0 2 5 125 0 6 4 190 0 26 4 190 0 27 4 190 0 28 4 190 0 31 4 190 0 32 4 190 0 40 4 190 0 52 4 190 0 87 4 190 0 88 4 190 0 89 4 190 0 91 4 190 0 92 4 190 0 93 4 190 0 94 4 190 0 113 4 190 0 115 4 190 0 118 4 190 0 123 4 190 0 130 4 190 0 137 4 190 0 139 13 249 0 232] 
#[1 13 253 0 40 9 145 0 88 9 149 0 92 9 153 0 93 9 157 0 94 9 161 0 113 9 169 0 227 9 169 0 228 9 169 0 229 9 169 0 230 9 169 0 231] 
#[1 7 222 0 3 7 222 0 5 3 133 0 6 2 141 0 11 3 137 0 188] 
#[0 7 226 0 31 0 87 0 137] 
#[0 7 230 0 26 0 40 0 52 0 89 0 91] 
#[1 4 17 0 52 9 197 0 79 4 25 0 89 7 129 0 91 9 201 1 8 9 205 1 46 9 209 1 48 9 213 1 54 9 217 1 56] 
#[0 7 234 0 31 0 87 0 137] 
#[0 7 238 0 26 0 40 0 52 0 89 0 91] 
#[0 7 242 0 26 0 40 0 52 0 89 0 91] 
#[0 7 246 0 26 0 40 0 52 0 89 0 91] 
#[0 7 250 0 5 0 137] 
#[0 14 1 0 137] 
#[0 7 254 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 246 0 3 1 246 0 40 14 5 0 137 14 9 1 86] 
#[0 8 2 0 3 0 40 0 137] 
#[1 14 13 0 5 14 17 0 9] 
#[0 8 6 0 5 0 9] 
#[1 3 153 0 2 3 161 0 4 8 10 0 5 3 157 0 6 3 161 0 8 8 10 0 9 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 123] 
#[1 8 14 0 3 11 89 0 17 8 14 0 21 11 89 0 22 8 14 0 23 8 14 0 24 11 89 0 25 8 14 0 26 8 14 0 27 8 14 0 28 11 89 0 31 8 14 0 32 10 253 0 33 11 89 0 38 8 14 0 40 11 89 0 42 8 14 0 44 11 89 0 45 11 89 0 47 8 14 0 51 8 14 0 52 11 89 0 62 8 14 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 8 14 0 88 8 14 0 89 8 14 0 91 8 14 0 92 8 14 0 93 8 14 0 94 11 89 0 100 11 89 0 101 8 14 0 104 11 89 0 105 11 89 0 110 11 89 0 111 8 14 0 113 8 14 0 115 8 14 0 118 11 89 0 120 8 14 0 123 11 89 0 124 8 14 0 130 8 14 0 139 13 5 1 24 11 89 1 26] 
#[1 8 18 0 3 11 89 0 17 8 18 0 21 11 89 0 22 8 18 0 23 8 18 0 24 11 89 0 25 8 18 0 26 8 18 0 27 8 18 0 28 11 89 0 31 8 18 0 32 10 253 0 33 11 89 0 38 8 18 0 40 11 89 0 42 8 18 0 44 11 89 0 45 11 89 0 47 8 18 0 51 8 18 0 52 11 89 0 62 8 18 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 8 18 0 88 8 18 0 89 8 18 0 91 8 18 0 92 8 18 0 93 8 18 0 94 11 89 0 100 11 89 0 101 8 18 0 104 11 89 0 105 11 89 0 110 11 89 0 111 8 18 0 113 8 18 0 115 8 18 0 118 11 89 0 120 8 18 0 123 11 89 0 124 8 18 0 130 8 18 0 139 13 5 1 24 11 89 1 26] 
#[1 6 86 0 3 6 86 0 17 6 86 0 21 6 86 0 22 6 86 0 23 6 86 0 24 6 86 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 31 6 86 0 32 6 86 0 33 6 86 0 38 6 86 0 40 6 86 0 42 6 86 0 44 6 86 0 45 6 86 0 47 6 86 0 51 6 86 0 52 6 86 0 62 6 86 0 65 6 86 0 67 6 86 0 70 6 86 0 73 6 86 0 82 6 86 0 83 6 86 0 86 6 86 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 100 6 86 0 101 6 86 0 104 6 86 0 105 6 86 0 110 6 86 0 111 6 86 0 113 6 86 0 115 6 86 0 118 6 86 0 120 6 86 0 123 6 86 0 124 6 86 0 130 6 86 0 139 14 21 1 22] 
#[1 3 25 0 2 1 49 0 15 8 22 0 30 8 22 0 33 8 22 0 57 8 22 0 59 8 22 0 74 1 61 0 75 8 22 0 96 8 22 0 97 8 22 0 112 8 22 0 127 8 22 0 128 0 153 0 130 1 89 0 135 1 93 0 136 8 22 0 137 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 14 25 0 211 14 25 1 113 1 181 1 118 1 185 1 129] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 14 29 0 211 14 29 1 113 1 181 1 118 1 185 1 129] 
#[1 14 33 0 139 14 37 1 18] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 14 41 0 211 14 41 1 113 1 181 1 118 1 185 1 129] 
#[0 8 26 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 14 45 1 103 0 249 1 104 14 45 1 105 14 45 1 106 1 5 1 107 14 45 1 108 1 13 1 109 14 45 1 110 14 45 1 111 14 45 1 112 14 45 1 113 1 33 1 118 14 45 1 119 1 41 1 129] 
#[0 14 49 0 33] 
#[0 14 53 0 139] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 210 14 57 1 103 0 249 1 104 14 57 1 105 14 57 1 106 1 5 1 107 14 57 1 108 1 13 1 109 14 57 1 110 14 57 1 111 14 57 1 112 14 57 1 113 1 33 1 118 14 57 1 119 1 41 1 129] 
#[0 14 61 0 33] 
#[1 8 30 0 3 8 30 0 24 8 30 0 26 8 30 0 27 8 30 0 28 14 65 0 30 8 30 0 32 8 30 0 40 8 30 0 52 8 30 0 88 8 30 0 89 8 30 0 91 8 30 0 92 8 30 0 93 8 30 0 94 8 30 0 113 8 30 0 115 8 30 0 118 8 30 0 123 8 30 0 130 8 30 0 139 14 69 1 20] 
#[0 8 34 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 38 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 42 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 46 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 50 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 54 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 58 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 38 0 26 2 38 0 27 2 38 0 28 8 62 0 31 2 38 0 32 2 38 0 40 2 38 0 52 8 62 0 87 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 8 62 0 137 2 38 0 139 14 73 0 225 5 149 0 235] 
#[0 8 66 0 31 0 87 0 137] 
#[0 8 70 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 25 0 2 2 234 0 3 1 49 0 15 2 234 0 40 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 14 77 0 205 13 153 0 206 13 157 0 207 1 157 0 210 13 161 0 211 13 161 1 113 1 181 1 118 1 185 1 129] 
#[0 8 74 0 3 0 40] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 14 81 0 207 1 157 0 210 13 161 0 211 13 161 1 113 1 181 1 118 1 185 1 129] 
#[0 14 85 0 2] 
#[1 8 78 0 3 11 89 0 17 8 78 0 21 11 89 0 22 8 78 0 23 8 78 0 24 11 89 0 25 8 78 0 26 8 78 0 27 8 78 0 28 11 89 0 31 8 78 0 32 10 253 0 33 11 89 0 38 8 78 0 40 11 89 0 42 8 78 0 44 11 89 0 45 11 89 0 47 8 78 0 51 8 78 0 52 11 89 0 62 8 78 0 65 11 89 0 67 11 25 0 70 11 89 0 73 11 89 0 82 11 89 0 83 11 89 0 86 11 89 0 87 8 78 0 88 8 78 0 89 8 78 0 91 8 78 0 92 8 78 0 93 8 78 0 94 11 89 0 100 11 89 0 101 8 78 0 104 11 89 0 105 11 89 0 110 11 89 0 111 8 78 0 113 8 78 0 115 8 78 0 118 11 89 0 120 8 78 0 123 11 89 0 124 8 78 0 130 8 78 0 139 13 5 1 24 11 89 1 26] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 82 0 30 8 82 0 33 3 161 0 35 8 82 0 57 3 161 0 58 8 82 0 59 3 161 0 64 3 161 0 71 8 82 0 74 3 161 0 80 8 82 0 96 8 82 0 97 3 161 0 108 3 161 0 109 8 82 0 112 8 82 0 127 8 82 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 82 0 137 3 161 1 123] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 86 0 30 8 86 0 33 3 161 0 35 8 86 0 57 3 161 0 58 8 86 0 59 3 161 0 64 3 161 0 71 8 86 0 74 3 161 0 80 8 86 0 96 8 86 0 97 3 161 0 108 3 161 0 109 8 86 0 112 8 86 0 127 8 86 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 86 0 137 3 161 1 123] 
#[0 8 90 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 89 0 5 8 94 0 30 8 94 0 33 8 94 0 57 8 94 0 59 8 94 0 74 8 94 0 96 8 94 0 97 8 94 0 112 8 94 0 127 8 94 0 128 8 94 0 137] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 98 0 30 8 98 0 33 3 161 0 35 8 98 0 57 3 161 0 58 8 98 0 59 3 161 0 64 3 161 0 71 8 98 0 74 3 161 0 80 8 98 0 96 8 98 0 97 3 161 0 108 3 161 0 109 8 98 0 112 8 98 0 127 8 98 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 98 0 137 3 161 1 123] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 8 102 0 30 8 102 0 33 3 5 0 35 8 102 0 57 3 5 0 58 8 102 0 59 3 5 0 64 3 5 0 71 8 102 0 74 3 5 0 80 8 102 0 96 8 102 0 97 3 5 0 108 3 5 0 109 8 102 0 112 8 102 0 127 8 102 0 128 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 8 102 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 14 93 0 211 14 93 1 113 1 181 1 118 1 185 1 129] 
#[0 8 106 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 8 110 0 30 8 110 0 33 3 5 0 35 8 110 0 57 3 5 0 58 8 110 0 59 3 5 0 64 3 5 0 71 8 110 0 74 3 5 0 80 8 110 0 96 8 110 0 97 3 5 0 108 3 5 0 109 8 110 0 112 8 110 0 127 8 110 0 128 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 8 110 0 137 2 253 0 138 3 1 1 116 3 5 1 122 3 5 1 123] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 210 14 97 0 211 14 97 1 113 1 181 1 118 1 185 1 129] 
#[0 14 101 0 137] 
#[0 8 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 14 105 0 226] 
#[0 8 118 0 3 0 40 0 137] 
#[0 8 122 0 5 0 9] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 14 109 0 201 5 145 0 225 5 149 0 235] 
#[0 14 113 0 139] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 126 0 30 8 126 0 33 3 161 0 35 8 126 0 57 3 161 0 58 8 126 0 59 3 161 0 64 3 161 0 71 8 126 0 74 3 161 0 80 8 126 0 96 8 126 0 97 3 161 0 108 3 161 0 109 8 126 0 112 8 126 0 127 8 126 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 126 0 137 3 161 1 123] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 130 0 30 8 130 0 33 3 161 0 35 8 130 0 57 3 161 0 58 8 130 0 59 3 161 0 64 3 161 0 71 8 130 0 74 3 161 0 80 8 130 0 96 8 130 0 97 3 161 0 108 3 161 0 109 8 130 0 112 8 130 0 127 8 130 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 130 0 137 3 161 1 123] 
#[0 8 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 14 117 0 40 9 145 0 88 9 149 0 92 9 153 0 93 9 157 0 94 9 161 0 113 9 169 0 227 9 169 0 228 9 169 0 229 9 169 0 230 9 169 0 231] 
#[0 14 121 0 3] 
#[0 8 138 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 142 0 31 0 87 0 137] 
#[0 8 146 0 3 0 40 0 137]
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
			(id = scanner atId
				or: [ #('on' 'mem')
						anySatisfy: [ :each | currentToken value sameAs: each ] ])
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
DelphiParser >> reduceActionForAnonymousFunction1: nodes [
	| result |
	result := DelphiAnonymousFunctionDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForAnonymousFunctionHeader1: nodes [
	| result |
	result := DelphiFunctionHeaderNode new.
	result functionToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result right: ((nodes at: 2) at: 4).
	result colon: ((nodes at: 3) at: 1).
	result type: ((nodes at: 3) at: 2).
	^ result
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
DelphiParser >> reduceActionForAnonymousFunctionType2: nodes [
	| result |
	result := DelphiAnonymousFunctionTypeNode new.
	result referenceToken: (nodes at: 1).
	result toToken: (nodes at: 2).
	result functionToken: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result semicolons.
	result right: ((nodes at: 4) at: 4).
	result colon: (nodes at: 5).
	result type: (nodes at: 6).
	result addToken: (nodes at: 7) to: result semicolons.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForAnonymousProcedure1: nodes [
	| result |
	result := DelphiAnonymousProcedureDefinitionNode new.
	result header: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result definitions.
	result block: ((nodes at: 2) at: 2).
	result semicolon: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForAnonymousProcedureHeader1: nodes [
	| result |
	result := DelphiProcedureHeaderNode new.
	result procedureToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result right: ((nodes at: 2) at: 4).
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
DelphiParser >> reduceActionForAnonymousProcedureType2: nodes [
	| result |
	result := DelphiAnonymousProcedureTypeNode new.
	result referenceToken: (nodes at: 1).
	result toToken: (nodes at: 2).
	result procedureToken: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result semicolons.
	result right: ((nodes at: 4) at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
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
DelphiParser >> reduceActionForAttribute1: nodes [
	| result |
	result := DelphiAttributeNode new.
	result left: (nodes at: 1).
	result expression: (nodes at: 2).
	result right: (nodes at: 3).
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
DelphiParser >> reduceActionForExpression3: nodes [
	| result |
	result := DelphiPropertyExpressionNode new.
	result expression: ((nodes at: 1) at: 1).
	result period: ((nodes at: 1) at: 2).
	result name: ((nodes at: 1) at: 3).
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
DelphiParser >> reduceActionForInstantiatedGenericPropertyExpression1: nodes [
	| result |
	result := DelphiInstantiatedGenericPropertyExpressionNode new.
	result expression: ((nodes at: 1) at: 1).
	result period: ((nodes at: 1) at: 2).
	result name: ((nodes at: 1) at: 3).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result typeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
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
DelphiParser >> reduceActionForNamedDefinedType2: nodes [
	| result |
	result := DelphiNamedDefinedTypeNode new.
	result attribute: (nodes at: 1).
	result name: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result
		addTokens: ((nodes at: 3) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: ((nodes at: 3) at: 4).
	result equalToken: (nodes at: 4).
	result type: ((nodes at: 5) at: 1).
	result modifier: ((nodes at: 5) at: 2).
	result semicolon: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNamedType2: nodes [
	| result |
	result := DelphiPropertyExpressionNode new.
	result expression: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNamedType3: nodes [
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
DelphiParser >> reduceActionForOptionalType1: nodes [
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
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	result left: ((nodes at: 4) at: 1).
	result
		addTokens: ((nodes at: 4) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: ((nodes at: 4) at: 4).
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
