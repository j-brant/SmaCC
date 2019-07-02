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
#[ 0 18 1 65] 
#[ 0 62 2 133] 
#[ 0 186 0 190] 
#[ 0 238 2 229] 
#[ 1 38 2 169] 
#[ 1 38 2 173] 
#[ 1 38 2 177] 
#[ 1 38 2 181] 
#[ 1 38 2 197] 
#[ 1 38 2 229] 
#[ 1 38 2 233] 
#[ 1 70 2 169] 
#[ 1 70 2 173] 
#[ 1 70 2 177] 
#[ 1 70 2 181] 
#[ 1 70 2 197] 
#[ 1 70 2 229] 
#[ 1 70 2 233] 
#[ 1 102 2 169] 
#[ 1 102 2 173] 
#[ 1 102 2 177] 
#[ 1 102 2 181] 
#[ 1 102 2 197] 
#[ 1 102 2 229] 
#[ 1 102 2 233] 
#[ 1 106 2 169] 
#[ 1 106 2 173] 
#[ 1 106 2 177] 
#[ 1 106 2 181] 
#[ 1 106 2 197] 
#[ 1 106 2 229] 
#[ 1 106 2 233] 
#[ 1 238 5 65] 
#[ 1 246 2 169] 
#[ 1 246 2 173] 
#[ 1 246 2 177] 
#[ 1 246 2 197] 
#[ 1 246 2 229] 
#[ 1 246 2 233] 
#[ 1 250 2 169] 
#[ 1 250 2 173] 
#[ 1 250 2 177] 
#[ 1 250 2 197] 
#[ 1 250 2 229] 
#[ 1 250 2 233] 
#[ 2 6 2 169] 
#[ 2 6 2 173] 
#[ 2 6 2 177] 
#[ 2 6 2 197] 
#[ 2 6 2 229] 
#[ 2 6 2 233] 
#[ 2 10 2 169] 
#[ 2 10 2 173] 
#[ 2 10 2 177] 
#[ 2 10 2 197] 
#[ 2 10 2 229] 
#[ 2 10 2 233] 
#[ 2 169 2 202] 
#[ 2 173 2 202] 
#[ 2 177 2 202] 
#[ 2 181 2 202] 
#[ 2 197 2 202] 
#[ 2 202 2 229] 
#[ 2 202 2 233] 
#[ 2 169 2 210] 
#[ 2 173 2 210] 
#[ 2 177 2 210] 
#[ 2 181 2 210] 
#[ 2 197 2 210] 
#[ 2 210 2 229] 
#[ 2 210 2 233] 
#[ 2 229 2 234] 
#[ 2 169 3 10] 
#[ 2 173 3 10] 
#[ 2 177 3 10] 
#[ 2 197 3 10] 
#[ 2 229 3 10] 
#[ 2 233 3 10] 
#[ 0 186 9 101] 
#[ 0 210 4 186] 
#[ 0 214 4 190] 
#[ 5 106 10 237] 
#[ 5 106 10 241] 
#[ 5 106 11 33] 
#[ 1 14 3 181] 
#[ 7 110 10 237] 
#[ 7 110 10 241] 
#[ 7 110 11 33]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-02T14:14:35.452856-05:00'
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
	| AnonymousFunction
	| AnonymousProcedure
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
	#(165 0 #reduceActionForUsesList1: 5793793 false ) 
	#(358 0 #reduceActionForBeforeAsm1: 32105473 false ) 
	#(328 0 #reduceActionForStatement14: 28624910 false ) 
	#(202 0 #nil 11192321 false ) 
	#(149 1 #reduceActionForFile2: 4144130 false ) 
	#(149 1 #reduceActionForFile3: 4144131 false ) 
	#(149 1 #reduceActionForFile4: 4144132 false ) 
	#(149 1 #reduceActionForFile1: 4144129 false ) 
	#(164 0 #nil 5679105 false ) 
	#(162 1 #reduceActionForUnitFile2: 5352450 false ) 
	#(320 0 #reduceActionForMethodVariables2: 27870210 false ) 
	#(194 0 #reduceActionForOptionalArguments1: 10084353 false ) 
	#(373 1 #reduceActionForInheritedFunctionCall4: 35044356 false ) 
	#(350 1 #reduceActionForRaiseStatement2: 31271938 false ) 
	#(365 1 #reduceActionForVariableExpression1: 34341889 false ) 
	#(210 1 #liftFirstValue: 11884545 false ) 
	#(372 1 #liftFirstValue: 35021825 false ) 
	#(359 1 #reduceActionForExpression10: 32223242 false ) 
	#(359 1 #reduceActionForExpression10: 32223240 false ) 
	#(328 1 #reduceActionForStatement13: 28624909 false ) 
	#(328 1 #reduceActionForStatement11: 28624907 false ) 
	#(328 1 #reduceActionForStatement2: 28624898 false ) 
	#(328 1 #reduceActionForStatement3: 28624899 false ) 
	#(328 1 #reduceActionForStatement4: 28624900 false ) 
	#(328 1 #reduceActionForStatement5: 28624901 false ) 
	#(328 1 #reduceActionForStatement6: 28624902 false ) 
	#(328 1 #reduceActionForStatement7: 28624903 false ) 
	#(328 1 #reduceActionForStatement8: 28624904 false ) 
	#(328 1 #reduceActionForStatement9: 28624905 false ) 
	#(328 1 #reduceActionForStatement10: 28624906 false ) 
	#(328 1 #liftFirstValue: 28624908 false ) 
	#(356 1 #liftFirstValue: 31926274 false ) 
	#(328 1 #liftFirstValue: 28624897 false ) 
	#(359 1 #liftFirstValue: 32223256 false ) 
	#(359 1 #liftFirstValue: 32223255 false ) 
	#(359 1 #liftFirstValue: 32223254 false ) 
	#(359 1 #liftFirstValue: 32223233 false ) 
	#(359 1 #liftFirstValue: 32223234 false ) 
	#(359 1 #liftFirstValue: 32223251 false ) 
	#(359 1 #reduceActionForExpression10: 32223241 false ) 
	#(359 1 #liftFirstValue: 32223239 false ) 
	#(359 1 #reduceActionForExpression10: 32223253 false ) 
	#(212 0 #reduceActionForConstantArray2: 12966914 false ) 
	#(242 1 #reduceActionForFileType2: 17487874 false ) 
	#(202 1 #liftFirstValue: 11192322 false ) 
	#(211 1 #reduceActionForVariableExpression1: 11907075 false ) 
	#(190 1 #reduceActionForVariableExpression1: 8997889 false ) 
	#(211 1 #reduceActionForExpression10: 11907079 false ) 
	#(241 1 #liftFirstValue: 17393668 false ) 
	#(241 1 #liftFirstValue: 17393665 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8297473 false ) 
	#(241 1 #liftFirstValue: 17393666 false ) 
	#(241 1 #liftFirstValue: 17393667 false ) 
	#(187 1 #liftFirstValue: 8297481 false ) 
	#(187 1 #liftFirstValue: 8297476 false ) 
	#(187 1 #liftFirstValue: 8297477 false ) 
	#(187 1 #liftFirstValue: 8297482 false ) 
	#(211 1 #reduceActionForExpression10: 11907073 false ) 
	#(209 1 #liftFirstValue: 11821057 false ) 
	#(187 1 #liftFirstValue: 8297479 false ) 
	#(187 1 #liftFirstValue: 8297475 false ) 
	#(211 1 #liftFirstValue: 11907081 false ) 
	#(211 1 #reduceActionForExpression10: 11907078 false ) 
	#(211 1 #reduceActionForExpression10: 11907074 false ) 
	#(180 0 #reduceActionForOptionalArguments1: 7447553 false ) 
	#(168 1 #reduceActionForFullModuleName1: 6061057 false ) 
	#(191 0 #nil 9339905 false ) 
	#(166 1 #reduceActionForUsesModuleList1: 5872641 false ) 
	#(167 1 #reduceActionForUsesModule1: 5947393 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4703233 false ) 
	#(289 0 #nil 23485441 false ) 
	#(156 1 #reduceActionForMainMethod1: 4862977 false ) 
	#(359 2 #reduceActionForExpression15: 32223247 false ) 
	#(327 1 #reduceActionForStatements1: 28521473 false ) 
	#(283 0 #reduceActionForArgumentList1: 22974465 false ) 
	#(288 0 #nil 23398401 false ) 
	#(262 0 #reduceActionForOptionalType1: 19440641 false ) 
	#(330 2 #reduceActionForGotoStatement1: 29236225 false ) 
	#(330 2 #reduceActionForGotoStatement1: 29236226 false ) 
	#(373 2 #reduceActionForInheritedFunctionCall3: 35044355 false ) 
	#(359 2 #reduceActionForExpression16: 32223248 false ) 
	#(361 2 #reduceActionForAnonymousProcedureHeader1: 33751041 false ) 
	#(351 0 #reduceActionForOptionalType1: 31380481 false ) 
	#(336 0 #nil 29980673 false ) 
	#(334 1 #reduceActionForStatements1: 29774849 false ) 
	#(367 2 #reduceActionForSetConstructor2: 34515970 false ) 
	#(369 1 #reduceActionForSetValue1: 34746369 false ) 
	#(368 1 #reduceActionForStatements1: 34646017 false ) 
	#(359 2 #reduceActionForExpression17: 32223249 false ) 
	#(359 2 #reduceActionForExpression18: 32223250 false ) 
	#(366 2 #reduceActionForInstantiatedGenericVariableExpression1: 34411521 false ) 
	#(377 1 #liftFirstValue: 35742727 false ) 
	#(377 1 #liftFirstValue: 35742728 false ) 
	#(377 1 #liftFirstValue: 35742735 false ) 
	#(377 1 #liftFirstValue: 35742736 false ) 
	#(377 1 #liftFirstValue: 35742724 false ) 
	#(376 1 #liftFirstValue: 35678209 false ) 
	#(377 1 #liftFirstValue: 35742721 false ) 
	#(377 1 #liftFirstValue: 35742733 false ) 
	#(377 1 #liftFirstValue: 35742725 false ) 
	#(377 1 #liftFirstValue: 35742738 false ) 
	#(377 1 #liftFirstValue: 35742739 false ) 
	#(377 1 #liftFirstValue: 35742726 false ) 
	#(377 1 #liftFirstValue: 35742722 false ) 
	#(377 1 #liftFirstValue: 35742731 false ) 
	#(377 1 #liftFirstValue: 35742732 false ) 
	#(377 1 #liftFirstValue: 35742723 false ) 
	#(377 1 #liftFirstValue: 35742734 false ) 
	#(377 1 #liftFirstValue: 35742737 false ) 
	#(377 1 #liftFirstValue: 35742730 false ) 
	#(377 1 #liftFirstValue: 35742729 false ) 
	#(359 2 #reduceActionForExpression20: 32223252 false ) 
	#(359 2 #reduceActionForExpression14: 32223246 false ) 
	#(376 1 #liftFirstValue: 35678210 false ) 
	#(360 2 #reduceActionForAnonymousProcedure1: 33639425 false ) 
	#(362 2 #reduceActionForAnonymousFunction1: 33851393 false ) 
	#(185 1 #reduceActionForEnumName1: 8076289 false ) 
	#(184 1 #reduceActionForStatements1: 8003585 false ) 
	#(214 1 #reduceActionForUsesModule1: 13194241 false ) 
	#(212 1 #reduceActionForConstantArray1: 12966913 false ) 
	#(213 1 #reduceActionForUsesModuleList1: 13014017 false ) 
	#(342 0 #nil 30572545 false ) 
	#(215 1 #reduceActionForConstantArray1: 13329409 false ) 
	#(216 1 #reduceActionForStatements1: 13372417 false ) 
	#(211 2 #reduceActionForExpression15: 11907087 false ) 
	#(211 2 #reduceActionForExpression16: 11907084 false ) 
	#(258 0 #reduceActionForOptionalType1: 19093505 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8297483 false ) 
	#(211 2 #reduceActionForExpression17: 11907085 false ) 
	#(211 2 #reduceActionForExpression18: 11907086 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8297474 false ) 
	#(190 2 #reduceActionForNamedType3: 8997891 false ) 
	#(244 0 #reduceActionForOptionalArguments1: 17810434 false ) 
	#(235 0 #reduceActionForMethodVariables2: 15935489 false ) 
	#(191 1 #liftFirstValue: 9339907 false ) 
	#(191 1 #liftFirstValue: 9339906 false ) 
	#(158 3 #reduceActionForPackageLine1: 4980737 false ) 
	#(165 3 #reduceActionForUsesList2: 5793794 false ) 
	#(160 1 #reduceActionForStatements1: 5159937 false ) 
	#(169 0 #reduceActionForMethodVariables2: 6185985 false ) 
	#(378 0 #nil 35929089 false ) 
	#(150 3 #reduceActionForProgramFile2: 4274178 false ) 
	#(321 1 #liftFirstValue: 27941891 false ) 
	#(321 1 #liftFirstValue: 27941895 false ) 
	#(321 1 #liftFirstValue: 27941890 false ) 
	#(321 1 #liftFirstValue: 27941892 false ) 
	#(300 1 #reduceActionForProcedureDefinition2: 25156610 false ) 
	#(301 1 #reduceActionForExternalProcedureHeader1: 25323521 false ) 
	#(303 1 #reduceActionForExternalProcedureHeader1: 25521153 false ) 
	#(321 1 #liftFirstValue: 27941893 false ) 
	#(308 1 #reduceActionForFunctionDefinition2: 26199042 false ) 
	#(309 1 #reduceActionForExternalFunctionHeader1: 26360833 false ) 
	#(311 1 #reduceActionForExternalFunctionHeader1: 26553345 false ) 
	#(320 2 #reduceActionForMethodVariables1: 27870209 false ) 
	#(321 1 #liftFirstValue: 27941894 false ) 
	#(321 1 #liftFirstValue: 27941889 false ) 
	#(323 1 #reduceActionForVars1: 28180481 false ) 
	#(359 3 #reduceActionForExpression12: 32223244 false ) 
	#(356 3 #reduceActionForStatementBlock1: 31926273 false ) 
	#(288 1 #liftFirstValue: 23398403 false ) 
	#(288 1 #liftFirstValue: 23398404 false ) 
	#(288 1 #liftFirstValue: 23398402 false ) 
	#(283 1 #reduceActionForConstantArray1: 22974466 false ) 
	#(284 1 #reduceActionForStatements1: 23008257 false ) 
	#(363 3 #reduceActionForAnonymousFunctionHeader1: 33959937 false ) 
	#(350 3 #reduceActionForRaiseStatement1: 31271937 false ) 
	#(340 0 #nil 30383105 false ) 
	#(367 3 #reduceActionForSetConstructor1: 34515969 false ) 
	#(329 3 #reduceActionForPackageLine1: 29101057 false ) 
	#(189 1 #reduceActionForStatements1: 8835073 false ) 
	#(329 3 #reduceActionForPackageLine1: 29101058 false ) 
	#(357 3 #reduceActionForAsmBlock1: 32030721 false ) 
	#(359 3 #reduceActionForExpression6: 32223238 false ) 
	#(375 1 #liftFirstValue: 35544065 false ) 
	#(374 1 #reduceActionForStatements1: 35436545 false ) 
	#(359 3 #reduceActionForExpression4: 32223236 false ) 
	#(359 3 #reduceActionForExpression4: 32223235 false ) 
	#(359 3 #reduceActionForExpression13: 32223245 false ) 
	#(371 1 #reduceActionForStatements1: 34933761 false ) 
	#(359 3 #reduceActionForExpression11: 32223243 false ) 
	#(183 3 #reduceActionForEnumType1: 7950337 false ) 
	#(211 3 #reduceActionForConstantExpression11: 11907083 false ) 
	#(342 1 #liftFirstValue: 30572546 false ) 
	#(242 3 #reduceActionForFileType1: 17487873 false ) 
	#(195 3 #reduceActionForSetType2: 10148866 false ) 
	#(195 3 #reduceActionForSetType1: 10148865 false ) 
	#(234 2 #reduceActionForQualifiedName1: 15734785 false ) 
	#(190 3 #reduceActionForExpression4: 8997890 false ) 
	#(226 0 #reduceActionForMethodVariables2: 14801921 false ) 
	#(225 1 #reduceActionForImplicitClassSection1: 14729217 false ) 
	#(208 3 #reduceActionForRangeType1: 11730945 false ) 
	#(218 1 #reduceActionForStatements1: 13631489 false ) 
	#(211 3 #reduceActionForExpression4: 11907076 false ) 
	#(211 3 #reduceActionForExpression11: 11907077 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8297480 false ) 
	#(238 3 #reduceActionForAttribute1: 16930817 false ) 
	#(181 1 #reduceActionForStatements1: 7535617 false ) 
	#(168 3 #reduceActionForFullModuleName2: 6061058 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4586497 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4389889 false ) 
	#(163 4 #reduceActionForLibraryLine1: 5574657 false ) 
	#(166 3 #reduceActionForUsesModuleList2: 5872642 false ) 
	#(167 3 #reduceActionForPackageLine1: 5947394 false ) 
	#(150 4 #reduceActionForProgramFile1: 4274177 false ) 
	#(154 2 #reduceActionForMethodVariables1: 4703234 false ) 
	#(159 3 #reduceActionForRequires1: 5079041 false ) 
	#(157 4 #reduceActionForPackageFile1: 4923393 false ) 
	#(164 3 #reduceActionForInterfaceSection2: 5679106 false ) 
	#(291 0 #reduceActionForMethodVariables2: 23717889 false ) 
	#(379 0 #nil 36039681 false ) 
	#(171 2 #reduceActionForConstantValueList1: 6415361 false ) 
	#(172 1 #reduceActionForConstantValues1: 6494209 false ) 
	#(286 1 #reduceActionForStatements1: 23242753 false ) 
	#(174 2 #reduceActionForResourceStringList1: 6779905 false ) 
	#(175 1 #reduceActionForConstantValues1: 6879233 false ) 
	#(324 2 #reduceActionForVarsVars2: 28210178 false ) 
	#(325 1 #reduceActionForConstantValues1: 28298241 false ) 
	#(177 2 #reduceActionForDefinedTypeList1: 7109633 false ) 
	#(178 1 #reduceActionForConstantValues1: 7190529 false ) 
	#(324 2 #reduceActionForVarsVars2: 28210177 false ) 
	#(300 2 #reduceActionForProcedureDefinition1: 25156609 false ) 
	#(277 0 #reduceActionForMethodVariables2: 21462017 false ) 
	#(308 2 #reduceActionForFunctionDefinition1: 26199041 false ) 
	#(319 3 #reduceActionForMethodComponents1: 27782145 false ) 
	#(327 3 #reduceActionForStatements2: 28521474 false ) 
	#(348 1 #reduceActionForBaseCaseLabel1: 31059969 false ) 
	#(349 0 #reduceActionForElseCase1: 31221761 false ) 
	#(344 1 #reduceActionForStatements1: 30676993 false ) 
	#(347 1 #reduceActionForStatements1: 30970881 false ) 
	#(346 1 #liftFirstValue: 30865409 false ) 
	#(194 3 #reduceActionForRequires1: 10084354 false ) 
	#(285 2 #reduceActionForArgument2: 23103490 false ) 
	#(262 2 #reduceActionForGotoStatement1: 19440642 false ) 
	#(332 4 #reduceActionForIfStatement1: 29441025 false ) 
	#(373 4 #reduceActionForInheritedFunctionCall2: 35044354 false ) 
	#(351 2 #reduceActionForGotoStatement1: 31380482 false ) 
	#(331 4 #reduceActionForRepeatStatement1: 29337601 false ) 
	#(339 0 #nil 30307329 false ) 
	#(337 1 #reduceActionForConstantValues1: 30140417 false ) 
	#(355 4 #reduceActionForLibraryLine1: 31820801 false ) 
	#(334 3 #reduceActionForStatements2: 29774850 false ) 
	#(333 4 #reduceActionForRepeatStatement1: 29680641 false ) 
	#(369 3 #reduceActionForSetValue2: 34746370 false ) 
	#(368 3 #reduceActionForStatements2: 34646018 false ) 
	#(188 3 #reduceActionForRequires1: 8733697 false ) 
	#(359 4 #reduceActionForExpression5: 32223237 false ) 
	#(370 3 #reduceActionForRequires1: 34879489 false ) 
	#(185 3 #reduceActionForEnumName2: 8076290 false ) 
	#(217 3 #reduceActionForConstantRecordField1: 13506561 false ) 
	#(184 3 #reduceActionForStatements2: 8003586 false ) 
	#(214 3 #reduceActionForPackageLine1: 13194242 false ) 
	#(213 3 #reduceActionForUsesModuleList2: 13014018 false ) 
	#(211 4 #reduceActionForConstantExpression10: 11907082 false ) 
	#(216 3 #reduceActionForStatements2: 13372418 false ) 
	#(258 2 #reduceActionForGotoStatement1: 19093506 false ) 
	#(246 1 #liftFirstValue: 17987586 false ) 
	#(246 1 #liftFirstValue: 17987585 false ) 
	#(245 1 #reduceActionForStatements1: 17875969 false ) 
	#(199 4 #reduceActionForRecordType1: 10782721 false ) 
	#(201 2 #reduceActionForRecordFieldList1: 11056129 false ) 
	#(236 1 #liftFirstValue: 16015372 false ) 
	#(236 1 #liftFirstValue: 16015373 false ) 
	#(235 2 #reduceActionForMethodVariables1: 15935490 false ) 
	#(236 1 #liftFirstValue: 16015368 false ) 
	#(236 1 #liftFirstValue: 16015370 false ) 
	#(236 1 #liftFirstValue: 16015371 false ) 
	#(236 1 #liftFirstValue: 16015369 false ) 
	#(237 1 #liftFirstValue: 16537606 false ) 
	#(236 1 #liftFirstValue: 16015364 false ) 
	#(236 1 #liftFirstValue: 16015366 false ) 
	#(253 1 #liftFirstValue: 18619393 false ) 
	#(253 1 #liftFirstValue: 18619394 false ) 
	#(253 1 #liftFirstValue: 18619395 false ) 
	#(253 1 #liftFirstValue: 18619396 false ) 
	#(253 1 #liftFirstValue: 18619397 false ) 
	#(252 1 #liftFirstValue: 18546689 false ) 
	#(263 1 #reduceActionForPropertyHeader1: 19488769 false ) 
	#(252 1 #liftFirstValue: 18546690 false ) 
	#(254 1 #liftFirstValue: 18757633 false ) 
	#(254 1 #liftFirstValue: 18757634 false ) 
	#(255 1 #liftFirstValue: 18841601 false ) 
	#(255 1 #liftFirstValue: 18841602 false ) 
	#(256 1 #liftFirstValue: 18922497 false ) 
	#(256 1 #liftFirstValue: 18922498 false ) 
	#(257 1 #liftFirstValue: 19000321 false ) 
	#(257 1 #liftFirstValue: 19000322 false ) 
	#(259 1 #liftFirstValue: 19185665 false ) 
	#(259 1 #liftFirstValue: 19185666 false ) 
	#(260 1 #liftFirstValue: 19260417 false ) 
	#(260 1 #liftFirstValue: 19260418 false ) 
	#(261 1 #liftFirstValue: 19350529 false ) 
	#(261 1 #liftFirstValue: 19350530 false ) 
	#(236 1 #liftFirstValue: 16015363 false ) 
	#(211 4 #reduceActionForExpression5: 11907080 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8297478 false ) 
	#(180 3 #reduceActionForRequires1: 7447554 false ) 
	#(221 0 #reduceActionForMethodVariables2: 14399489 false ) 
	#(248 1 #liftFirstValue: 18238466 false ) 
	#(248 1 #liftFirstValue: 18238465 false ) 
	#(232 0 #reduceActionForOptionalArguments1: 15574017 false ) 
	#(179 4 #reduceActionForNamedDefinedType1: 7298049 false ) 
	#(182 1 #reduceActionForUsesModule1: 7678979 false ) 
	#(182 1 #reduceActionForUsesModule1: 7678980 false ) 
	#(186 1 #liftFirstValue: 8185860 false ) 
	#(186 1 #liftFirstValue: 8185857 false ) 
	#(186 1 #liftFirstValue: 8185861 false ) 
	#(186 1 #liftFirstValue: 8185858 false ) 
	#(186 1 #liftFirstValue: 8185859 false ) 
	#(247 1 #reduceActionForInterfaceType2: 18043906 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4506625 false ) 
	#(160 3 #reduceActionForStatements2: 5159938 false ) 
	#(161 3 #reduceActionForUsesList2: 5269505 false ) 
	#(382 2 #reduceActionForGotoStatement1: 36344833 false ) 
	#(169 2 #reduceActionForMethodVariables1: 6185986 false ) 
	#(170 1 #liftFirstValue: 6280195 false ) 
	#(170 1 #liftFirstValue: 6280194 false ) 
	#(170 1 #liftFirstValue: 6280193 false ) 
	#(170 1 #liftFirstValue: 6280196 false ) 
	#(170 1 #liftFirstValue: 6280197 false ) 
	#(170 1 #liftFirstValue: 6280198 false ) 
	#(290 0 #nil 23631873 false ) 
	#(378 2 #reduceActionForInitializationSection2: 35929090 false ) 
	#(172 2 #reduceActionForMethodVariables1: 6494210 false ) 
	#(322 3 #reduceActionForLabels1: 28088321 false ) 
	#(175 2 #reduceActionForMethodVariables1: 6879234 false ) 
	#(325 2 #reduceActionForMethodVariables1: 28298242 false ) 
	#(178 2 #reduceActionForMethodVariables1: 7190530 false ) 
	#(281 2 #reduceActionForExternalMethodModifier1: 22031361 false ) 
	#(281 2 #reduceActionForExternalMethodModifier6: 22031366 false ) 
	#(302 3 #reduceActionForExternalProcedureHeaderVars1: 25403393 false ) 
	#(310 3 #reduceActionForExternalFunctionHeaderVars1: 26437633 false ) 
	#(343 2 #reduceActionForCaseOptionList1: 30624769 false ) 
	#(354 1 #liftFirstValue: 31788034 false ) 
	#(354 1 #liftFirstValue: 31788033 false ) 
	#(284 3 #reduceActionForStatements2: 23008258 false ) 
	#(373 5 #reduceActionForInheritedFunctionCall1: 35044353 false ) 
	#(336 3 #reduceActionForExcept3: 29980675 false ) 
	#(337 2 #reduceActionForMethodVariables1: 30140418 false ) 
	#(336 3 #reduceActionForExcept2: 29980674 false ) 
	#(340 2 #reduceActionForFinally2: 30383106 false ) 
	#(335 5 #reduceActionForTryStatement1: 29880321 false ) 
	#(189 3 #reduceActionForStatements2: 8835074 false ) 
	#(374 3 #reduceActionForStatements2: 35436546 false ) 
	#(375 3 #reduceActionForMethodArgument2: 35544066 false ) 
	#(371 3 #reduceActionForStatements2: 34933762 false ) 
	#(192 5 #reduceActionForAnonymousProcedureType1: 9416705 false ) 
	#(192 5 #reduceActionForAnonymousProcedureType2: 9416706 false ) 
	#(195 5 #reduceActionForSetType3: 10148867 false ) 
	#(234 4 #reduceActionForQualifiedName2: 15734786 false ) 
	#(244 3 #reduceActionForRequires1: 17810433 false ) 
	#(243 5 #reduceActionForArrayType2: 17599490 false ) 
	#(243 5 #reduceActionForArrayType1: 17599489 false ) 
	#(201 3 #reduceActionForRecordFieldList2: 11056130 false ) 
	#(226 2 #reduceActionForMethodVariables1: 14801922 false ) 
	#(227 1 #liftFirstValue: 14864385 false ) 
	#(227 1 #liftFirstValue: 14864386 false ) 
	#(227 1 #liftFirstValue: 14864387 false ) 
	#(227 1 #liftFirstValue: 14864388 false ) 
	#(265 2 #reduceActionForClassPropertyHeader1: 19746817 false ) 
	#(306 2 #reduceActionForExternalClassProcedureHeader1: 25969665 false ) 
	#(307 2 #reduceActionForExternalClassProcedureHeader1: 26081281 false ) 
	#(314 2 #reduceActionForExternalClassFunctionHeader1: 27002881 false ) 
	#(315 2 #reduceActionForExternalClassFunctionHeader1: 27111425 false ) 
	#(236 2 #reduceActionForNewClassComponent2: 16015362 false ) 
	#(299 0 #reduceActionForOptionalType1: 25108481 false ) 
	#(267 0 #nil 20169729 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16015365 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16015367 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16537601 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16537602 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16537603 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16537604 false ) 
	#(237 2 #reduceActionForNewClassComponent5: 16537605 false ) 
	#(218 3 #reduceActionForStatements2: 13631490 false ) 
	#(181 3 #reduceActionForStatements2: 7535618 false ) 
	#(182 2 #reduceActionForDefinedType2: 7678978 false ) 
	#(249 0 #nil 18293761 false ) 
	#(179 5 #reduceActionForNamedDefinedType2: 7298050 false ) 
	#(155 3 #reduceActionForLibraryExport1: 4753409 false ) 
	#(292 1 #liftFirstValue: 23777290 false ) 
	#(292 1 #liftFirstValue: 23777291 false ) 
	#(292 1 #liftFirstValue: 23777288 false ) 
	#(289 4 #reduceActionForImplementationSection2: 23485442 false ) 
	#(291 2 #reduceActionForMethodVariables1: 23717890 false ) 
	#(292 1 #liftFirstValue: 23777281 false ) 
	#(293 1 #reduceActionForConstructorDefinition2: 24065026 false ) 
	#(292 1 #liftFirstValue: 23777282 false ) 
	#(296 1 #reduceActionForDestructorDefinition2: 24594434 false ) 
	#(292 1 #liftFirstValue: 23777283 false ) 
	#(292 1 #liftFirstValue: 23777284 false ) 
	#(305 1 #reduceActionForClassProcedureDefinition2: 25777154 false ) 
	#(292 1 #liftFirstValue: 23777285 false ) 
	#(292 1 #liftFirstValue: 23777286 false ) 
	#(313 1 #reduceActionForClassFunctionDefinition2: 26815490 false ) 
	#(292 1 #liftFirstValue: 23777287 false ) 
	#(316 1 #reduceActionForClassOperatorDefinition2: 27226114 false ) 
	#(292 1 #liftFirstValue: 23777289 false ) 
	#(292 1 #liftFirstValue: 23777292 false ) 
	#(379 2 #reduceActionForFinalizationSection2: 36039682 false ) 
	#(162 6 #reduceActionForUnitFile1: 5352449 false ) 
	#(286 3 #reduceActionForStatements2: 23242754 false ) 
	#(278 0 #reduceActionForMethodVariables2: 21532673 false ) 
	#(224 0 #nil 14668801 false ) 
	#(281 3 #reduceActionForExternalMethodModifier4: 22031364 false ) 
	#(281 3 #reduceActionForExternalMethodModifier4: 22031362 false ) 
	#(282 1 #liftFirstValue: 22685707 false ) 
	#(282 1 #liftFirstValue: 22685701 false ) 
	#(282 1 #liftFirstValue: 22685710 false ) 
	#(282 1 #liftFirstValue: 22685705 false ) 
	#(282 1 #liftFirstValue: 22685711 false ) 
	#(282 1 #liftFirstValue: 22685714 false ) 
	#(282 1 #liftFirstValue: 22685709 false ) 
	#(282 1 #liftFirstValue: 22685717 false ) 
	#(282 1 #liftFirstValue: 22685716 false ) 
	#(282 1 #liftFirstValue: 22685715 false ) 
	#(282 1 #liftFirstValue: 22685708 false ) 
	#(282 1 #liftFirstValue: 22685697 false ) 
	#(282 1 #liftFirstValue: 22685698 false ) 
	#(282 1 #liftFirstValue: 22685702 false ) 
	#(282 1 #liftFirstValue: 22685713 false ) 
	#(282 1 #liftFirstValue: 22685700 false ) 
	#(282 1 #liftFirstValue: 22685703 false ) 
	#(282 1 #liftFirstValue: 22685718 false ) 
	#(282 1 #liftFirstValue: 22685712 false ) 
	#(282 1 #liftFirstValue: 22685699 false ) 
	#(282 1 #liftFirstValue: 22685706 false ) 
	#(282 1 #liftFirstValue: 22685704 false ) 
	#(277 2 #reduceActionForMethodVariables1: 21462018 false ) 
	#(279 1 #liftFirstValue: 21636097 false ) 
	#(279 1 #liftFirstValue: 21636098 false ) 
	#(348 3 #reduceActionForBaseCaseLabel2: 31059970 false ) 
	#(349 2 #reduceActionForElseCase2: 31221762 false ) 
	#(341 6 #reduceActionForCaseStatement1: 30450689 false ) 
	#(344 3 #reduceActionForStatements2: 30676994 false ) 
	#(345 3 #reduceActionForCaseOption1: 30779393 false ) 
	#(347 3 #reduceActionForStatements2: 30970882 false ) 
	#(346 3 #reduceActionForCaseLabel2: 30865410 false ) 
	#(353 6 #reduceActionForForInStatement1: 31641601 false ) 
	#(287 0 #reduceActionForOptionalType1: 23333889 false ) 
	#(332 6 #reduceActionForForInStatement1: 29441026 false ) 
	#(364 6 #reduceActionForMemExpression1: 34069505 false ) 
	#(364 6 #reduceActionForMemExpression1: 34069506 false ) 
	#(339 2 #reduceActionForPossibleExceptElse2: 30307330 false ) 
	#(200 6 #reduceActionForRecordHelperType1: 10888193 false ) 
	#(197 1 #reduceActionForStatements1: 10583041 false ) 
	#(196 3 #reduceActionForTwoItemSetNameList1: 10426369 false ) 
	#(245 3 #reduceActionForStatements2: 17875970 false ) 
	#(228 2 #reduceActionForPrivateClassSection2: 14978050 false ) 
	#(229 2 #reduceActionForProtectedClassSection2: 15170562 false ) 
	#(230 2 #reduceActionForPublicClassSection1: 15377409 false ) 
	#(231 2 #reduceActionForPublishedClassSection1: 15469569 false ) 
	#(294 3 #reduceActionForExternalConstructorHeader1: 24242177 false ) 
	#(297 3 #reduceActionForExternalConstructorHeader1: 24766465 false ) 
	#(317 3 #reduceActionForExternalConstructorHeader1: 27413505 false ) 
	#(198 3 #reduceActionForMetaclassType1: 10686465 false ) 
	#(222 1 #liftFirstValue: 14474241 false ) 
	#(222 1 #liftFirstValue: 14474242 false ) 
	#(221 2 #reduceActionForMethodVariables1: 14399490 false ) 
	#(219 3 #reduceActionForNewClassType2: 13751298 false ) 
	#(233 1 #reduceActionForStatements1: 15635457 false ) 
	#(182 3 #reduceActionForPackageLine1: 7678981 false ) 
	#(182 3 #reduceActionForPackageLine1: 7678977 false ) 
	#(250 0 #reduceActionForMethodVariables2: 18369537 false ) 
	#(290 2 #reduceActionForImplementationCode2: 23631874 false ) 
	#(381 1 #reduceActionForStatements1: 36253697 false ) 
	#(293 2 #reduceActionForConstructorDefinition1: 24065025 false ) 
	#(296 2 #reduceActionForDestructorDefinition1: 24594433 false ) 
	#(305 2 #reduceActionForClassProcedureDefinition1: 25777153 false ) 
	#(313 2 #reduceActionForClassFunctionDefinition1: 26815489 false ) 
	#(316 2 #reduceActionForClassOperatorDefinition1: 27226113 false ) 
	#(304 5 #reduceActionForNonExternalProcedureHeaderVars1: 25607169 false ) 
	#(224 1 #liftFirstValue: 14668802 false ) 
	#(280 2 #reduceActionForExternalMethodModifier6: 21710849 false ) 
	#(285 5 #reduceActionForArgument1: 23103489 false ) 
	#(193 7 #reduceActionForAnonymousFunctionType1: 9729025 false ) 
	#(193 7 #reduceActionForAnonymousFunctionType2: 9729026 false ) 
	#(228 3 #reduceActionForPrivateClassSection1: 14978049 false ) 
	#(229 3 #reduceActionForProtectedClassSection1: 15170561 false ) 
	#(299 2 #reduceActionForGotoStatement1: 25108482 false ) 
	#(266 0 #reduceActionForPropertyValues1: 19838977 false ) 
	#(232 3 #reduceActionForRequires1: 15574018 false ) 
	#(380 3 #reduceActionForExportsDefinition1: 36143105 false ) 
	#(312 6 #reduceActionForNonExternalFunctionHeaderVars1: 26636289 false ) 
	#(278 2 #reduceActionForMethodVariables1: 21532674 false ) 
	#(176 5 #reduceActionForResource1: 6953985 false ) 
	#(281 5 #reduceActionForExternalMethodModifier5: 22031365 false ) 
	#(281 5 #reduceActionForExternalMethodModifier5: 22031363 false ) 
	#(280 3 #reduceActionForNonExternalMethodModifier3: 21710851 false ) 
	#(280 3 #reduceActionForNonExternalMethodModifier3: 21710850 false ) 
	#(352 8 #reduceActionForForStatement1: 31448065 false ) 
	#(287 2 #reduceActionForGotoStatement1: 23333890 false ) 
	#(338 5 #reduceActionForOnDo1: 30204929 false ) 
	#(197 3 #reduceActionForStatements2: 10583042 false ) 
	#(295 5 #reduceActionForNonExternalConstructorHeader1: 24378369 false ) 
	#(298 5 #reduceActionForNonExternalDestructorHeader1: 24899585 false ) 
	#(239 5 #reduceActionForInterfaceFunctionAssignment1: 17017857 false ) 
	#(240 5 #reduceActionForInterfaceProcedureAssignment1: 17201153 false ) 
	#(267 3 #reduceActionForPropertyArrayAccessors2: 20169730 false ) 
	#(236 5 #reduceActionForNewClassComponent1: 16015361 false ) 
	#(233 3 #reduceActionForStatements2: 15635458 false ) 
	#(223 5 #reduceActionForOldClassType1: 14519297 false ) 
	#(249 3 #reduceActionForGuid2: 18293762 false ) 
	#(247 5 #reduceActionForInterfaceType1: 18043905 false ) 
	#(250 2 #reduceActionForMethodVariables1: 18369538 false ) 
	#(251 1 #liftFirstValue: 18461698 false ) 
	#(251 1 #liftFirstValue: 18461697 false ) 
	#(381 3 #reduceActionForStatements2: 36253698 false ) 
	#(326 6 #reduceActionForVariable1: 28397569 false ) 
	#(204 1 #reduceActionForStatements1: 11390977 false ) 
	#(206 1 #reduceActionForStatements1: 11606017 false ) 
	#(207 1 #liftFirstValue: 11693057 false ) 
	#(295 6 #reduceActionForNonExternalConstructorHeader2: 24378370 false ) 
	#(298 6 #reduceActionForNonExternalDestructorHeader2: 24899586 false ) 
	#(272 1 #reduceActionForPropertyDefault2: 20844546 false ) 
	#(272 1 #reduceActionForPropertyDefault3: 20844547 false ) 
	#(276 0 #nil 21361665 false ) 
	#(266 2 #reduceActionForPropertyValues2: 19838978 false ) 
	#(266 2 #reduceActionForCaseOptionList1: 19838979 false ) 
	#(266 2 #reduceActionForPropertyValues4: 19838980 false ) 
	#(266 2 #reduceActionForPropertyValues8: 19838984 false ) 
	#(266 2 #reduceActionForPropertyValues5: 19838981 false ) 
	#(266 2 #reduceActionForPropertyValues7: 19838983 false ) 
	#(266 2 #reduceActionForPropertyValues6: 19838982 false ) 
	#(220 6 #reduceActionForClassHelperType2: 13983746 false ) 
	#(219 6 #reduceActionForNewClassType1: 13751297 false ) 
	#(173 7 #reduceActionForConstantValue1: 6589441 false ) 
	#(203 6 #reduceActionForVariantRecordPart1: 11241473 false ) 
	#(318 7 #reduceActionForNonExternalClassOperatorHeader1: 27555841 false ) 
	#(272 2 #reduceActionForPropertyDefault1: 20844545 false ) 
	#(271 2 #reduceActionForPropertyDispid1: 20532225 false ) 
	#(274 1 #reduceActionForStatements1: 21152769 false ) 
	#(273 2 #reduceActionForPropertyImplements1: 21048321 false ) 
	#(268 2 #reduceActionForPropertyIndex1: 20267009 false ) 
	#(269 2 #reduceActionForPropertyReader1: 20360193 false ) 
	#(275 2 #reduceActionForPropertyStored1: 21272577 false ) 
	#(270 2 #reduceActionForPropertyWriter1: 20445185 false ) 
	#(264 7 #reduceActionForPropertyHeaderVars1: 19549185 false ) 
	#(204 3 #reduceActionForStatements2: 11390978 false ) 
	#(206 3 #reduceActionForStatements2: 11606018 false ) 
	#(271 3 #reduceActionForPropertyDispid2: 20532226 false ) 
	#(271 3 #reduceActionForPropertyDispid3: 20532227 false ) 
	#(276 2 #reduceActionForPropertyModifiers2: 21361666 false ) 
	#(274 3 #reduceActionForStatements2: 21152770 false ) 
	#(220 9 #reduceActionForClassHelperType1: 13983745 false ) 
	#(205 5 #reduceActionForVariantType1: 11505665 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'LibraryExport' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'InstantiatedGenericVariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiProgramNode #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiLibraryExportNode #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiInstantiatedGenericVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 21 0 66 0 25 0 84 0 6 0 89 0 29 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 33 0 119 0 37 0 122 0 6 0 123 0 41 0 149 0 45 0 150 0 49 0 151 0 53 0 152 0 57 0 153 0 61 0 157 0 65 0 158 0 69 0 162 0 73 0 163 0 77 0 165] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 0 185 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 0 185 1 100 0 185 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 157 0 183 1 109 0 187 1 113 0 190 1 157 0 192 1 157 0 193 1 109 0 195 1 109 0 199 1 109 0 200 1 137 0 202 1 109 0 208 1 145 0 209 1 149 0 210 1 153 0 211 1 157 0 241 1 109 0 242 1 109 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[1 1 181 0 130 1 185 0 139 1 189 0 179 1 193 0 238] 
#[1 1 197 0 139 1 201 0 168] 
#[1 1 197 0 139 1 205 0 168] 
#[1 1 197 0 139 1 209 0 168] 
#[1 1 197 0 139 1 213 0 168] 
#[1 1 197 0 139 1 217 0 166 1 221 0 167 1 225 0 168] 
#[0 0 0 1 128] 
#[0 0 22 1 128] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 229 0 165] 
#[0 0 26 1 128] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 233 0 165] 
#[0 0 30 1 128] 
#[1 1 237 0 103 1 241 0 159] 
#[0 0 34 1 128] 
#[1 0 38 0 40 0 38 0 48 0 38 0 56 0 38 0 61 1 245 0 63 1 249 0 164 0 42 1 128] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 1 253 0 156 2 1 1 63 2 5 1 64] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 13 1 103 2 13 1 104 0 253 1 105 2 13 1 106 1 5 1 107 2 13 1 108 2 13 1 109 2 13 1 110 2 13 1 111 1 25 1 116 2 13 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 17 1 103 2 17 1 104 0 253 1 105 2 17 1 106 1 5 1 107 2 17 1 108 2 17 1 109 2 17 1 110 2 17 1 111 1 25 1 116 2 17 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 21 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 29 1 103 2 29 1 104 0 253 1 105 2 29 1 106 1 5 1 107 2 29 1 108 2 29 1 109 2 29 1 110 2 29 1 111 1 25 1 116 2 29 1 117 1 33 1 127] 
#[1 2 33 0 139 2 37 1 109] 
#[1 2 41 0 2 0 50 0 9 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 45 0 194] 
#[1 2 49 0 139 2 53 0 141] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 57 1 103 2 57 1 104 0 253 1 105 2 57 1 106 1 5 1 107 2 57 1 108 2 57 1 109 2 57 1 110 2 57 1 111 1 25 1 116 2 57 1 117 1 33 1 127] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 18 0 54 0 20 0 54 0 30 0 54 0 33 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 48 0 54 0 49 0 54 0 57 0 54 0 58 0 54 0 59 0 54 0 61 0 54 0 64 0 54 0 71 0 54 0 74 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 96 0 54 0 97 0 54 0 108 0 54 0 109 0 54 0 112 0 54 0 114 0 54 0 116 0 54 0 121 0 54 0 127 0 54 0 128 0 54 0 129 0 54 0 130 0 54 0 131 0 54 0 132 0 54 0 133 0 54 0 134 0 54 0 135 0 54 0 136 0 54 0 137 0 54 0 138 2 61 0 139 0 54 1 128] 
#[0 2 65 0 130] 
#[0 2 69 0 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 73 1 103 2 73 1 104 0 253 1 105 2 73 1 106 1 5 1 107 2 73 1 108 2 73 1 109 2 73 1 110 2 73 1 111 1 25 1 116 2 73 1 117 1 33 1 127] 
#[1 2 41 0 2 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 77 0 194] 
#[1 0 81 0 2 0 85 0 15 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 101 0 52 0 113 0 60 0 58 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 58 0 78 0 129 0 89 0 58 0 121 0 153 0 130 0 157 0 135 0 161 0 136 0 58 0 137 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 81 1 103 2 81 1 104 0 253 1 105 2 81 1 106 1 5 1 107 2 81 1 108 2 81 1 109 2 81 1 110 2 81 1 111 1 25 1 116 2 81 1 117 1 33 1 127 0 58 1 128] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 85 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 89 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 93 1 103 2 93 1 104 0 253 1 105 2 93 1 106 1 5 1 107 2 93 1 108 2 93 1 109 2 93 1 110 2 93 1 111 1 25 1 116 2 93 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 97 1 78 2 101 1 103 2 101 1 104 0 253 1 105 2 101 1 106 1 5 1 107 2 101 1 108 2 101 1 109 2 101 1 110 2 101 1 111 1 25 1 116 2 101 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 2 105 0 131 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 109 1 103 2 109 1 104 0 253 1 105 2 109 1 106 1 5 1 107 2 109 1 108 2 109 1 109 2 109 1 110 2 109 1 111 2 113 1 112 2 117 1 113 1 25 1 116 2 109 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 121 1 103 2 121 1 104 0 253 1 105 2 121 1 106 1 5 1 107 2 121 1 108 2 121 1 109 2 121 1 110 2 121 1 111 1 25 1 116 2 121 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 125 1 103 2 125 1 104 0 253 1 105 2 125 1 106 1 5 1 107 2 125 1 108 2 125 1 109 2 125 1 110 2 125 1 111 1 25 1 116 2 125 1 117 1 33 1 127] 
#[1 0 62 0 2 0 62 0 4 0 62 0 6 0 62 0 8 2 129 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 35 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 58 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 78 0 62 0 80 0 62 0 108 0 62 0 109 0 62 0 121 0 62 0 129 0 62 0 130 0 62 0 132 0 62 0 133 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 2 137 0 188 0 62 1 128] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 141 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 128] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 0 1 128] 
#[0 0 82 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 2 145 0 21] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 48 0 134 0 49 2 253 0 58 0 134 0 61 2 253 0 64 2 253 0 71 0 134 0 78 2 253 0 80 2 253 0 108 2 253 0 109 0 134 0 121 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 0 134 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 0 134 1 128] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 5 1 63 2 5 1 64] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 9 1 63 2 5 1 64] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 3 13 0 2 0 174 0 3 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 17 0 139 3 21 0 140 1 149 0 141 1 173 0 143 1 101 0 147 3 25 0 184 3 29 0 185 1 149 0 210 3 33 0 211 3 37 0 212 3 41 0 213 3 45 0 214 3 49 0 215 3 53 0 216 3 57 0 217 3 33 1 111 1 173 1 116 1 177 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 3 65 0 211 3 65 1 111 1 173 1 116 1 177 1 127] 
#[1 0 178 0 3 0 178 0 5 0 178 0 14 0 178 0 16 0 178 0 21 0 178 0 23 0 178 0 27 0 178 0 30 0 178 0 31 0 178 0 33 0 178 0 36 0 178 0 52 0 178 0 57 0 178 0 59 0 178 0 65 0 178 0 74 3 69 0 77 0 178 0 87 0 178 0 89 0 178 0 96 0 178 0 97 0 178 0 104 0 178 0 112 0 178 0 115 0 178 0 118 0 178 0 123 0 178 0 127 0 178 0 128 0 178 0 130 0 178 0 131 0 178 0 132 0 178 0 137 0 178 1 128] 
#[1 2 41 0 2 0 50 0 9 3 73 0 194] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 3 77 0 211 3 77 1 111 1 173 1 116 1 177 1 127] 
#[0 0 182 0 19 0 98] 
#[1 2 41 0 2 0 50 0 77 0 50 0 137 3 81 0 194] 
#[0 3 85 0 54] 
#[0 3 89 0 116] 
#[0 3 93 0 77] 
#[1 3 97 0 139 3 101 0 234] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 3 105 0 211 3 105 1 111 1 173 1 116 1 177 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 3 109 0 211 3 109 1 111 1 173 1 116 1 177 1 127] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 3 117 0 183 3 117 0 187 1 113 0 190 3 117 0 192 3 117 0 193 3 117 0 195 3 117 0 199 3 117 0 200 1 137 0 202 3 117 0 208 1 145 0 209 1 149 0 210 1 153 0 211 3 117 0 241 3 117 0 242 3 117 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[1 0 186 0 2 0 190 0 3 0 186 0 4 0 190 0 5 0 15 0 6 0 186 0 7 0 186 0 8 0 15 0 11 0 186 0 12 0 186 0 13 0 190 0 14 0 190 0 16 0 186 0 18 0 186 0 20 0 190 0 21 0 190 0 23 0 190 0 27 0 190 0 30 0 190 0 31 0 190 0 33 0 186 0 35 0 190 0 36 0 190 0 52 0 190 0 57 0 186 0 58 0 190 0 59 0 186 0 64 0 190 0 65 0 186 0 71 0 190 0 74 0 190 0 77 0 186 0 80 0 190 0 87 0 190 0 89 0 190 0 96 0 190 0 97 0 190 0 104 0 186 0 108 0 186 0 109 0 190 0 112 0 190 0 115 0 190 0 118 0 190 0 123 0 190 0 127 0 190 0 128 0 186 0 129 0 190 0 130 0 190 0 131 0 15 0 132 0 186 0 133 0 186 0 135 0 186 0 136 0 190 0 137 0 190 1 128] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[0 0 198 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 0 202 0 16 0 202 0 130 0 0 1 128] 
#[1 0 206 0 3 0 206 0 5 3 121 0 6 2 133 0 11 0 206 0 14 0 206 0 16 0 206 0 21 0 206 0 23 0 206 0 27 0 206 0 30 0 206 0 31 0 206 0 33 0 206 0 36 0 206 0 52 0 206 0 57 0 206 0 59 0 206 0 65 0 206 0 74 0 206 0 77 0 206 0 87 0 206 0 89 0 206 0 96 0 206 0 97 0 206 0 104 0 206 0 112 0 206 0 115 0 206 0 118 0 206 0 123 0 206 0 127 0 206 0 128 0 206 0 130 0 206 0 131 0 206 0 132 0 206 0 137 3 125 0 188 0 206 1 128] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 0 214 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 0 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 3 129 0 19 3 133 0 98] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 3 137 0 7] 
#[0 0 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[1 3 141 0 2 0 238 0 3 3 149 0 4 0 238 0 5 3 145 0 6 0 238 0 7 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 0 238 0 14 0 238 0 16 3 149 0 18 3 149 0 20 0 238 0 21 0 238 0 23 0 238 0 27 0 238 0 30 0 238 0 31 0 238 0 33 3 149 0 35 0 238 0 36 0 238 0 52 0 238 0 57 3 149 0 58 0 238 0 59 3 149 0 64 0 238 0 65 3 149 0 71 0 238 0 74 0 238 0 77 3 149 0 80 0 238 0 87 0 238 0 89 0 238 0 96 0 238 0 97 0 238 0 104 3 149 0 108 3 149 0 109 0 238 0 112 0 238 0 115 0 238 0 118 0 238 0 123 0 238 0 127 0 238 0 128 3 149 0 129 0 238 0 130 0 238 0 131 0 19 0 132 3 149 0 133 3 149 0 135 3 149 0 136 0 238 0 137 3 149 1 121 0 238 1 128] 
#[1 3 153 0 16 3 157 0 130] 
#[0 0 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 0 246 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 3 161 0 211 3 161 1 111 1 173 1 116 1 177 1 127] 
#[1 3 165 0 11 1 6 0 14 3 169 0 180] 
#[0 0 0 1 128] 
#[0 3 173 0 139] 
#[0 1 10 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 3 177 0 6 3 189 0 31 3 189 0 87 1 14 0 137 3 189 0 191] 
#[1 3 177 0 6 3 193 0 137] 
#[1 3 177 0 6 3 197 0 31 3 197 0 87 1 14 0 137 3 197 0 191] 
#[1 3 177 0 6 3 201 0 31 3 201 0 87 1 14 0 137 3 201 0 191] 
#[1 3 205 0 5 3 209 0 137] 
#[0 1 18 0 5 0 137] 
#[1 1 22 0 5 3 177 0 6 3 213 0 58 1 22 0 137] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 217 0 156 2 1 1 63 2 5 1 64] 
#[1 1 26 0 21 1 26 0 23 1 26 0 27 1 26 0 43 1 26 0 52 1 26 0 65 1 26 0 89 1 26 0 104 1 26 0 115 1 26 0 118 1 26 0 123 3 221 0 154] 
#[1 1 197 0 139 3 225 0 160 3 229 0 168] 
#[1 3 233 0 29 3 237 0 161] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 3 241 0 165] 
#[1 1 30 0 40 1 30 0 48 3 245 0 56 1 30 0 61 3 249 1 33] 
#[0 3 253 0 6] 
#[0 1 34 0 6] 
#[1 0 10 0 21 0 89 0 23 4 1 0 27 4 5 0 52 4 9 0 65 4 13 0 89 4 17 0 104 4 21 0 115 4 25 0 118 4 29 0 123 4 85 0 171 4 85 0 174 4 85 0 177 4 85 1 44 4 49 1 45 4 53 1 46 4 57 1 47 4 61 1 48 4 85 1 52 4 69 1 53 4 73 1 54 4 77 1 55 4 81 1 56 4 85 1 65 4 85 1 66 4 85 1 67 4 97 1 68 4 101 1 100 4 101 1 101 0 241 1 102] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 30 0 62 0 33 0 62 0 35 0 62 0 36 0 62 0 37 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 57 0 62 0 58 0 62 0 59 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 74 0 62 0 77 0 62 0 78 0 62 0 80 0 62 0 96 0 62 0 97 0 62 0 108 0 62 0 109 0 62 0 112 0 62 0 114 0 62 0 116 0 62 0 121 0 62 0 127 0 62 0 128 0 62 0 129 0 62 0 130 0 62 0 131 0 62 0 132 0 62 0 133 0 62 0 134 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 2 137 0 188 0 62 1 128] 
#[1 2 149 0 2 4 105 0 3 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 2 149 0 2 1 38 0 3 1 38 0 4 1 38 0 5 2 157 0 6 1 38 0 7 1 38 0 8 1 38 0 9 1 38 0 10 0 23 0 11 0 27 0 12 0 31 0 13 0 35 0 14 1 38 0 18 1 38 0 20 1 38 0 30 1 38 0 33 1 38 0 35 1 38 0 36 1 38 0 37 1 38 0 39 1 38 0 40 1 38 0 41 1 38 0 48 1 38 0 49 1 38 0 57 0 39 0 58 1 38 0 59 1 38 0 61 1 38 0 64 1 38 0 71 1 38 0 74 1 38 0 77 1 38 0 78 1 38 0 80 1 38 0 96 1 38 0 97 1 38 0 108 1 38 0 109 1 38 0 112 1 38 0 114 1 38 0 116 1 38 0 121 1 38 0 127 1 38 0 128 1 38 0 129 2 225 0 130 1 38 0 131 0 43 0 132 0 47 0 133 1 38 0 134 1 38 0 135 1 38 0 136 1 38 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 1 38 1 128] 
#[1 4 109 0 40 4 113 0 137] 
#[0 1 42 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 4 117 0 77 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[0 0 62 0 10 0 58] 
#[1 4 121 0 10 4 125 0 58] 
#[1 1 46 0 3 4 153 0 27 4 153 0 81 4 153 0 123 1 50 0 139 4 141 1 27 4 145 1 28 4 149 1 29 4 153 1 32] 
#[1 4 157 0 9 1 54 0 21 1 54 0 23 1 54 0 27 1 54 0 52 1 54 0 65 1 54 0 89 1 54 0 104 1 54 0 115 1 54 0 118 1 54 0 123 4 161 1 6] 
#[0 1 58 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 1 62 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 4 165 0 114 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 4 169 0 2 1 66 0 3 1 66 0 4 1 66 0 5 1 66 0 6 1 66 0 7 1 66 0 8 1 66 0 9 1 66 0 10 1 66 0 11 1 66 0 12 1 66 0 13 1 66 0 14 1 66 0 18 1 66 0 20 1 66 0 30 1 66 0 33 1 66 0 35 1 66 0 36 1 66 0 37 1 66 0 39 1 66 0 40 1 66 0 41 1 66 0 48 1 66 0 49 1 66 0 57 1 66 0 58 1 66 0 59 1 66 0 61 1 66 0 64 1 66 0 71 1 66 0 74 1 66 0 77 1 66 0 78 1 66 0 80 1 66 0 96 1 66 0 97 1 66 0 108 1 66 0 109 1 66 0 112 1 66 0 114 1 66 0 116 1 66 0 121 1 66 0 127 1 66 0 128 1 66 0 129 1 66 0 130 1 66 0 131 1 66 0 132 1 66 0 133 1 66 0 134 1 66 0 135 1 66 0 136 1 66 0 137 1 66 0 138 1 66 1 128] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 4 173 1 103 4 173 1 104 0 253 1 105 4 173 1 106 1 5 1 107 4 173 1 108 4 173 1 109 4 173 1 110 4 173 1 111 1 25 1 116 4 173 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 4 177 1 103 4 177 1 104 0 253 1 105 4 177 1 106 1 5 1 107 4 177 1 108 4 177 1 109 4 177 1 110 4 177 1 111 1 25 1 116 4 177 1 117 1 33 1 127] 
#[1 2 149 0 2 1 70 0 3 2 253 0 4 1 70 0 5 2 157 0 6 1 70 0 7 2 253 0 8 1 70 0 9 2 165 0 10 0 51 0 11 0 55 0 12 0 59 0 13 0 63 0 14 2 253 0 18 2 253 0 20 1 70 0 30 1 70 0 33 2 253 0 35 1 70 0 36 1 70 0 37 1 70 0 39 1 70 0 40 1 70 0 41 1 70 0 48 1 70 0 49 1 70 0 57 0 67 0 58 1 70 0 59 1 70 0 61 2 253 0 64 2 253 0 71 1 70 0 74 1 70 0 77 1 70 0 78 2 253 0 80 1 70 0 96 1 70 0 97 2 253 0 108 2 253 0 109 1 70 0 112 1 70 0 114 1 70 0 116 1 70 0 121 1 70 0 127 1 70 0 128 2 253 0 129 2 225 0 130 1 70 0 131 0 71 0 132 0 75 0 133 1 70 0 134 2 253 0 135 2 253 0 136 1 70 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 1 70 1 128] 
#[0 1 74 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 1 78 0 39 1 78 0 40 1 78 0 41 1 78 0 48 1 78 0 49 2 253 0 58 1 78 0 61 2 253 0 64 2 253 0 71 1 78 0 78 2 253 0 80 2 253 0 108 2 253 0 109 1 78 0 121 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 4 181 0 134 2 253 0 135 2 253 0 136 1 78 0 137 2 245 0 138 4 185 1 95 2 249 1 114 2 253 1 120 2 253 1 121 1 78 1 128] 
#[1 4 189 0 121 4 113 0 137] 
#[1 1 82 0 40 4 193 0 41 1 82 0 49 4 113 0 137 4 197 1 80] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 4 201 0 36 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 4 205 0 5 4 209 0 36] 
#[1 2 149 0 2 2 253 0 4 1 86 0 5 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 1 86 0 36 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 2 149 0 2 2 253 0 4 1 94 0 5 2 157 0 6 4 213 0 7 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 1 94 0 131 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 4 217 0 5 4 221 0 131] 
#[0 1 98 0 5 0 131] 
#[1 2 149 0 2 1 102 0 3 2 253 0 4 1 102 0 5 2 157 0 6 1 102 0 7 2 253 0 8 1 102 0 9 1 102 0 10 0 79 0 11 0 83 0 12 0 87 0 13 0 91 0 14 1 102 0 18 1 102 0 20 1 102 0 30 1 102 0 33 2 253 0 35 1 102 0 36 1 102 0 37 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 48 1 102 0 49 1 102 0 57 0 95 0 58 1 102 0 59 1 102 0 61 1 102 0 64 2 253 0 71 1 102 0 74 1 102 0 77 1 102 0 78 1 102 0 80 1 102 0 96 1 102 0 97 2 253 0 108 2 253 0 109 1 102 0 112 1 102 0 114 1 102 0 116 1 102 0 121 1 102 0 127 1 102 0 128 1 102 0 129 2 225 0 130 1 102 0 131 0 99 0 132 0 103 0 133 1 102 0 134 1 102 0 135 1 102 0 136 1 102 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 1 102 1 128] 
#[1 2 149 0 2 1 106 0 3 2 253 0 4 1 106 0 5 2 157 0 6 1 106 0 7 2 253 0 8 1 106 0 9 1 106 0 10 0 107 0 11 0 111 0 12 0 115 0 13 0 119 0 14 1 106 0 18 1 106 0 20 1 106 0 30 1 106 0 33 2 253 0 35 1 106 0 36 1 106 0 37 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 48 1 106 0 49 1 106 0 57 0 123 0 58 1 106 0 59 1 106 0 61 1 106 0 64 2 253 0 71 1 106 0 74 1 106 0 77 1 106 0 78 1 106 0 80 1 106 0 96 1 106 0 97 2 253 0 108 2 253 0 109 1 106 0 112 1 106 0 114 1 106 0 116 1 106 0 121 1 106 0 127 1 106 0 128 1 106 0 129 2 225 0 130 1 106 0 131 0 127 0 132 0 131 0 133 1 106 0 134 1 106 0 135 1 106 0 136 1 106 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 1 106 1 128] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 4 225 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 4 225 1 100 4 225 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 157 0 183 4 229 0 187 4 233 0 189 1 113 0 190 1 157 0 192 1 157 0 193 4 229 0 195 4 229 0 199 4 229 0 200 1 137 0 202 4 229 0 208 1 145 0 209 1 149 0 210 1 153 0 211 1 157 0 241 4 229 0 242 4 229 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 4 237 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 4 237 1 100 4 237 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[0 4 241 0 40] 
#[1 0 81 0 2 4 245 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 4 249 1 103 4 249 1 104 0 253 1 105 4 249 1 106 1 5 1 107 4 249 1 108 4 249 1 109 4 249 1 110 4 249 1 111 1 25 1 116 4 249 1 117 4 253 1 118 5 1 1 119 1 33 1 127] 
#[0 1 114 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[1 5 5 0 1 5 9 0 139] 
#[0 1 118 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 5 13 1 103 5 13 1 104 0 253 1 105 5 13 1 106 1 5 1 107 5 13 1 108 5 13 1 109 5 13 1 110 5 13 1 111 1 25 1 116 5 13 1 117 1 33 1 127] 
#[0 1 122 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 130 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 127] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 5 17 1 103 5 17 1 104 0 253 1 105 5 17 1 106 1 5 1 107 5 17 1 108 5 17 1 109 5 17 1 110 5 17 1 111 5 21 1 115 1 25 1 116 5 17 1 117 1 33 1 127] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 127] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 5 25 1 103 5 25 1 104 0 253 1 105 5 25 1 106 1 5 1 107 5 25 1 108 5 25 1 109 5 25 1 110 5 25 1 111 1 25 1 116 5 25 1 117 1 33 1 127] 
#[0 1 202 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 127] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 3 13 0 2 0 174 0 3 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 21 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 3 33 0 211 3 37 0 212 3 41 0 213 3 45 0 214 3 49 0 215 3 53 0 216 3 57 0 217 3 33 1 111 1 173 1 116 1 177 1 127] 
#[1 1 214 0 3 1 214 0 5 5 29 0 14] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 5 0 186 0 6 0 186 0 8 5 33 0 9 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 18 0 186 0 20 0 186 0 35 0 186 0 58 0 186 0 64 0 186 0 71 0 186 0 80 0 186 0 108 0 186 0 109 0 186 0 129 0 186 0 132 0 186 0 133 0 186 0 135 0 186 0 136] 
#[1 5 37 0 3 5 41 0 5] 
#[0 1 218 0 3 0 5] 
#[1 3 141 0 2 1 222 0 3 3 149 0 4 1 222 0 5 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 5 45 0 14 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[0 5 49 0 3] 
#[1 1 226 0 3 5 53 0 5] 
#[0 1 230 0 3 0 5] 
#[1 1 234 0 3 5 61 0 137 5 61 1 86] 
#[1 1 238 0 3 0 135 0 137] 
#[0 1 242 0 3 0 137] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[1 3 141 0 2 1 246 0 3 1 246 0 4 1 246 0 5 3 145 0 6 1 246 0 7 1 246 0 8 1 246 0 9 0 139 0 11 0 143 0 12 0 147 0 13 1 246 0 14 1 246 0 16 1 246 0 18 1 246 0 20 1 246 0 21 1 246 0 23 1 246 0 27 1 246 0 30 1 246 0 31 1 246 0 33 1 246 0 35 1 246 0 36 1 246 0 52 1 246 0 57 0 151 0 58 1 246 0 59 1 246 0 64 1 246 0 65 1 246 0 71 1 246 0 74 1 246 0 77 1 246 0 80 1 246 0 87 1 246 0 89 1 246 0 96 1 246 0 97 1 246 0 104 1 246 0 108 1 246 0 109 1 246 0 112 1 246 0 115 1 246 0 118 1 246 0 123 1 246 0 127 1 246 0 128 1 246 0 129 1 246 0 130 1 246 0 131 0 155 0 132 0 159 0 133 1 246 0 135 1 246 0 136 1 246 0 137 3 149 1 121 1 246 1 128] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 5 69 0 183 5 69 0 187 1 113 0 190 5 69 0 192 5 69 0 193 5 69 0 195 5 69 0 199 5 69 0 200 1 137 0 202 5 69 0 208 1 145 0 209 1 149 0 210 1 153 0 211 5 69 0 241 5 69 0 242 5 69 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 5 73 0 9] 
#[1 3 141 0 2 1 250 0 3 3 149 0 4 1 250 0 5 3 145 0 6 1 250 0 7 3 149 0 8 1 250 0 9 0 163 0 11 0 167 0 12 0 171 0 13 1 250 0 14 1 250 0 16 3 149 0 18 3 149 0 20 1 250 0 21 1 250 0 23 1 250 0 27 1 250 0 30 1 250 0 31 1 250 0 33 3 149 0 35 1 250 0 36 1 250 0 52 1 250 0 57 0 175 0 58 1 250 0 59 3 149 0 64 1 250 0 65 3 149 0 71 1 250 0 74 1 250 0 77 3 149 0 80 1 250 0 87 1 250 0 89 1 250 0 96 1 250 0 97 1 250 0 104 3 149 0 108 3 149 0 109 1 250 0 112 1 250 0 115 1 250 0 118 1 250 0 123 1 250 0 127 1 250 0 128 3 149 0 129 1 250 0 130 1 250 0 131 0 179 0 132 0 183 0 133 3 149 0 135 3 149 0 136 1 250 0 137 3 149 1 121 1 250 1 128] 
#[1 5 77 0 77 1 254 0 137 5 81 1 2] 
#[0 5 85 0 50] 
#[1 5 89 0 52 5 93 0 89] 
#[1 5 97 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 5 101 0 208 1 145 0 209 1 149 0 210 5 105 0 211 5 105 1 111 1 173 1 116 1 177 1 127] 
#[1 1 6 0 2 1 6 0 3 1 6 0 5 1 6 0 6 1 6 0 9 3 165 0 11 1 6 0 14 1 6 0 16 1 6 0 21 1 6 0 23 1 6 0 24 1 6 0 26 1 6 0 27 1 6 0 28 1 6 0 30 1 6 0 31 1 6 0 32 1 6 0 33 1 6 0 36 1 6 0 39 1 6 0 40 1 6 0 41 1 6 0 48 1 6 0 49 1 6 0 52 1 6 0 57 1 6 0 59 1 6 0 61 1 6 0 65 1 6 0 74 1 6 0 77 1 6 0 78 1 6 0 87 1 6 0 88 1 6 0 89 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 96 1 6 0 97 1 6 0 104 1 6 0 112 1 6 0 113 1 6 0 115 1 6 0 118 1 6 0 121 1 6 0 123 1 6 0 127 1 6 0 128 1 6 0 130 1 6 0 131 1 6 0 132 1 6 0 137 1 6 0 139 5 109 0 180 1 6 1 128] 
#[1 2 2 0 3 2 2 0 5 5 113 0 6 2 2 0 14 2 2 0 16 2 2 0 21 2 2 0 23 2 2 0 27 2 2 0 30 2 2 0 31 2 2 0 33 2 2 0 36 2 2 0 52 2 2 0 57 2 2 0 59 2 2 0 65 2 2 0 74 2 2 0 77 2 2 0 87 2 2 0 89 2 2 0 96 2 2 0 97 2 2 0 104 2 2 0 112 2 2 0 115 2 2 0 118 2 2 0 123 2 2 0 127 2 2 0 128 2 2 0 130 2 2 0 131 2 2 0 132 2 2 0 137 2 2 1 128] 
#[1 3 141 0 2 2 6 0 3 3 149 0 4 2 6 0 5 3 145 0 6 2 6 0 7 3 149 0 8 2 6 0 9 0 187 0 11 0 191 0 12 0 195 0 13 2 6 0 14 2 6 0 16 2 6 0 18 2 6 0 20 2 6 0 21 2 6 0 23 2 6 0 27 2 6 0 30 2 6 0 31 2 6 0 33 3 149 0 35 2 6 0 36 2 6 0 52 2 6 0 57 0 199 0 58 2 6 0 59 2 6 0 64 2 6 0 65 3 149 0 71 2 6 0 74 2 6 0 77 2 6 0 80 2 6 0 87 2 6 0 89 2 6 0 96 2 6 0 97 2 6 0 104 3 149 0 108 3 149 0 109 2 6 0 112 2 6 0 115 2 6 0 118 2 6 0 123 2 6 0 127 2 6 0 128 2 6 0 129 2 6 0 130 2 6 0 131 0 203 0 132 0 207 0 133 2 6 0 135 2 6 0 136 2 6 0 137 3 149 1 121 2 6 1 128] 
#[1 3 141 0 2 2 10 0 3 3 149 0 4 2 10 0 5 3 145 0 6 2 10 0 7 3 149 0 8 2 10 0 9 0 211 0 11 0 215 0 12 0 219 0 13 2 10 0 14 2 10 0 16 2 10 0 18 2 10 0 20 2 10 0 21 2 10 0 23 2 10 0 27 2 10 0 30 2 10 0 31 2 10 0 33 3 149 0 35 2 10 0 36 2 10 0 52 2 10 0 57 0 223 0 58 2 10 0 59 2 10 0 64 2 10 0 65 3 149 0 71 2 10 0 74 2 10 0 77 2 10 0 80 2 10 0 87 2 10 0 89 2 10 0 96 2 10 0 97 2 10 0 104 3 149 0 108 3 149 0 109 2 10 0 112 2 10 0 115 2 10 0 118 2 10 0 123 2 10 0 127 2 10 0 128 2 10 0 129 2 10 0 130 2 10 0 131 0 227 0 132 0 231 0 133 2 10 0 135 2 10 0 136 2 10 0 137 3 149 1 121 2 10 1 128] 
#[0 0 202 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 2 14 0 3 2 14 0 5 2 14 0 14 2 14 0 16 2 14 0 21 2 14 0 23 2 14 0 27 2 14 0 30 2 14 0 31 2 14 0 33 2 14 0 36 2 14 0 52 2 14 0 57 2 14 0 59 2 14 0 65 2 14 0 74 2 14 0 77 2 14 0 87 2 14 0 89 2 14 0 96 2 14 0 97 2 14 0 104 2 14 0 112 2 14 0 115 2 14 0 118 2 14 0 123 2 14 0 127 2 14 0 128 3 157 0 130 2 14 0 131 2 14 0 132 2 14 0 137 2 14 1 128] 
#[0 5 117 0 140] 
#[0 2 18 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 2 22 0 77 5 121 0 130 5 125 0 244] 
#[1 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 5 129 0 201 5 133 0 225 5 137 0 235] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 5 141 0 209 1 149 0 210 1 153 0 211 1 153 1 111 1 173 1 116 1 177 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 5 145 0 211 5 149 0 218 5 145 1 111 1 173 1 116 1 177 1 127] 
#[0 5 153 0 140] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 5 157 0 211 5 157 1 111 1 173 1 116 1 177 1 127] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 5 161 0 183 5 161 0 187 1 113 0 190 5 161 0 192 5 161 0 193 5 161 0 195 5 161 0 199 5 161 0 200 1 137 0 202 5 161 0 208 1 145 0 209 1 149 0 210 1 153 0 211 5 161 0 241 5 161 0 242 5 161 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 5 165 0 211 5 165 1 111 1 173 1 116 1 177 1 127] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 5 169 0 131 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 5 173 0 139 5 177 0 181] 
#[0 5 181 0 14] 
#[1 3 165 0 11 1 6 0 14 5 185 0 180] 
#[0 5 189 0 139] 
#[0 2 30 0 14 0 31 0 137] 
#[0 2 34 0 14 0 31 0 137] 
#[0 5 193 0 137] 
#[0 2 38 0 103] 
#[0 5 197 0 137] 
#[0 5 201 0 137] 
#[1 1 197 0 139 5 205 0 167 1 225 0 168] 
#[0 2 42 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 5 209 0 143] 
#[0 5 213 0 6] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 5 217 0 43 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 5 221 0 155 5 225 0 156 2 1 1 63 2 5 1 64] 
#[1 5 229 0 5 5 233 0 137] 
#[1 2 46 0 5 3 177 0 6 2 46 0 137] 
#[1 1 197 0 139 5 237 0 166 1 221 0 167 1 225 0 168] 
#[1 5 241 0 40 5 245 1 126] 
#[1 2 50 0 27 2 50 0 40 2 50 0 48 2 50 0 52 2 50 0 56 2 50 0 61 2 50 0 89 2 50 0 104 2 50 0 115 2 50 0 118 2 50 0 123 5 249 0 169] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 5 253 0 165] 
#[1 2 54 0 40 2 54 0 48 6 1 0 61 6 5 1 122] 
#[0 2 58 1 128] 
#[1 6 9 0 139 6 13 0 172 6 17 0 173] 
#[1 3 97 0 139 6 21 0 234] 
#[1 6 25 0 139 6 29 1 30] 
#[1 3 97 0 139 6 33 0 234] 
#[1 6 37 0 139 6 41 0 175 6 45 0 176] 
#[1 6 25 0 139 6 49 1 30 6 53 1 69 6 57 1 70] 
#[1 1 181 0 130 1 185 0 139 6 61 0 178 6 65 0 179 1 193 0 238] 
#[1 6 25 0 139 6 49 1 30 6 69 1 69 6 57 1 70] 
#[0 2 62 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 66 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 70 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 74 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 78 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 82 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 73 1 63 2 5 1 64] 
#[1 2 86 0 3 2 86 0 21 2 86 0 23 2 86 0 24 2 86 0 26 2 86 0 27 2 86 0 28 2 86 0 32 2 86 0 40 6 77 0 44 2 86 0 48 6 81 0 51 2 86 0 52 2 86 0 56 2 86 0 61 2 86 0 65 2 86 0 88 2 86 0 89 2 86 0 91 2 86 0 92 2 86 0 93 2 86 0 94 2 86 0 104 2 86 0 113 2 86 0 115 2 86 0 118 2 86 0 123 2 86 0 130 2 86 0 139 6 85 1 25] 
#[0 2 90 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 94 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 98 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 89 1 63 2 5 1 64] 
#[1 2 102 0 3 2 102 0 21 2 102 0 23 2 102 0 24 2 102 0 26 2 102 0 27 2 102 0 28 2 102 0 32 2 102 0 40 6 77 0 44 2 102 0 48 6 81 0 51 2 102 0 52 2 102 0 56 2 102 0 61 2 102 0 65 2 102 0 88 2 102 0 89 2 102 0 91 2 102 0 92 2 102 0 93 2 102 0 94 2 102 0 104 2 102 0 113 2 102 0 115 2 102 0 118 2 102 0 123 2 102 0 130 2 102 0 139 6 93 1 25] 
#[0 2 106 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 110 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 114 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 118 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 6 97 0 137] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 2 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 101 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 101 1 100 6 101 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 6 105 0 211 6 109 1 87 6 113 1 88 6 117 1 89 6 121 1 90 6 125 1 91 6 129 1 92 6 105 1 111 1 173 1 116 1 177 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 133 1 103 6 133 1 104 0 253 1 105 6 133 1 106 1 5 1 107 6 133 1 108 6 133 1 109 6 133 1 110 6 133 1 111 1 25 1 116 6 133 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 137 1 103 6 137 1 104 0 253 1 105 6 137 1 106 1 5 1 107 6 137 1 108 6 137 1 109 6 137 1 110 6 137 1 111 1 25 1 116 6 137 1 117 1 33 1 127] 
#[0 2 130 0 139] 
#[0 2 134 0 139] 
#[0 2 138 0 139] 
#[0 6 141 0 3] 
#[1 2 142 0 3 2 142 0 131 6 145 0 137] 
#[0 2 146 0 3 0 131 0 137] 
#[1 6 25 0 139 6 149 1 30] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 6 153 0 183 6 153 0 187 1 113 0 190 6 153 0 192 6 153 0 193 6 153 0 195 6 153 0 199 6 153 0 200 1 137 0 202 6 153 0 208 1 145 0 209 1 149 0 210 1 153 0 211 6 153 0 241 6 153 0 242 6 153 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 2 150 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 157 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 157 1 100 6 157 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[1 0 81 0 2 6 161 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 4 249 1 103 4 249 1 104 0 253 1 105 4 249 1 106 1 5 1 107 4 249 1 108 4 249 1 109 4 249 1 110 4 249 1 111 1 25 1 116 4 249 1 117 6 165 1 118 5 1 1 119 1 33 1 127] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 6 169 0 9 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 6 173 0 9 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 3 97 0 139 6 177 0 234] 
#[0 2 154 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 181 1 103 6 181 1 104 0 253 1 105 6 181 1 106 1 5 1 107 6 181 1 108 6 181 1 109 6 181 1 110 6 181 1 111 1 25 1 116 6 181 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 6 185 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 189 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 6 193 1 81 6 197 1 82 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 2 158 0 40 6 201 0 49 6 205 1 84] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 209 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 209 1 100 6 209 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 213 1 103 6 213 1 104 0 253 1 105 6 213 1 106 1 5 1 107 6 213 1 108 6 213 1 109 6 213 1 110 6 213 1 111 1 25 1 116 6 213 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 217 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 6 217 1 100 6 217 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 6 221 1 103 6 221 1 104 0 253 1 105 6 221 1 106 1 5 1 107 6 221 1 108 6 221 1 109 6 221 1 110 6 221 1 111 1 25 1 116 6 221 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 2 109 1 103 2 109 1 104 0 253 1 105 2 109 1 106 1 5 1 107 2 109 1 108 2 109 1 109 2 109 1 110 2 109 1 111 6 225 1 113 1 25 1 116 2 109 1 117 1 33 1 127] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 2 166 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 2 170 0 5 0 202 0 16 0 202 0 130 2 170 0 132] 
#[1 6 229 0 5 6 233 0 132] 
#[0 2 174 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 2 178 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 2 149 0 2 2 186 0 3 2 253 0 4 2 186 0 5 2 157 0 6 2 253 0 8 2 186 0 9 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 6 237 0 3 6 241 0 5] 
#[1 2 190 0 3 2 190 0 5 6 245 0 9] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 2 149 0 2 2 202 0 3 2 253 0 4 2 202 0 5 2 157 0 6 2 202 0 7 2 253 0 8 2 202 0 9 2 165 0 10 0 235 0 11 0 239 0 12 0 243 0 13 0 247 0 14 2 253 0 18 2 253 0 20 2 202 0 30 2 202 0 33 2 253 0 35 2 202 0 36 2 202 0 37 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 48 2 202 0 49 2 202 0 57 0 251 0 58 2 202 0 59 2 202 0 61 2 253 0 64 2 253 0 71 2 202 0 74 2 202 0 77 2 202 0 78 2 253 0 80 2 202 0 96 2 202 0 97 2 253 0 108 2 253 0 109 2 202 0 112 2 202 0 114 2 202 0 116 2 202 0 121 2 202 0 127 2 202 0 128 2 253 0 129 2 225 0 130 2 202 0 131 0 255 0 132 1 3 0 133 2 202 0 134 2 253 0 135 2 253 0 136 2 202 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 2 202 1 128] 
#[1 2 149 0 2 2 253 0 4 2 206 0 5 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 206 0 131 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 6 249 0 5 6 253 0 131] 
#[1 2 149 0 2 2 210 0 3 2 253 0 4 2 210 0 5 2 157 0 6 2 210 0 7 2 253 0 8 2 210 0 9 2 165 0 10 1 7 0 11 1 11 0 12 1 15 0 13 1 19 0 14 2 253 0 18 2 253 0 20 2 210 0 30 2 210 0 33 2 253 0 35 2 210 0 36 2 210 0 37 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 48 2 210 0 49 2 210 0 57 1 23 0 58 2 210 0 59 2 210 0 61 2 253 0 64 2 253 0 71 2 210 0 74 2 210 0 77 2 210 0 78 2 253 0 80 2 210 0 96 2 210 0 97 2 253 0 108 2 253 0 109 2 210 0 112 2 210 0 114 2 210 0 116 2 210 0 121 2 210 0 127 2 210 0 128 2 253 0 129 2 225 0 130 2 210 0 131 1 27 0 132 1 31 0 133 2 210 0 134 2 253 0 135 2 253 0 136 2 210 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 2 210 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 7 1 0 211 7 1 1 111 1 173 1 116 1 177 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 7 5 0 211 7 5 1 111 1 173 1 116 1 177 1 127] 
#[0 2 214 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 3 17 0 139 7 9 0 185] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 7 13 0 211 7 13 1 111 1 173 1 116 1 177 1 127] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 3 33 0 211 7 17 0 214 3 33 1 111 1 173 1 116 1 177 1 127] 
#[0 2 222 0 3] 
#[0 7 21 0 3] 
#[1 7 25 0 140 7 29 0 217] 
#[1 2 226 0 3 2 226 0 5 2 226 0 14 3 153 0 16 2 226 0 21 2 226 0 23 2 226 0 27 2 226 0 30 2 226 0 31 2 226 0 33 2 226 0 36 2 226 0 52 2 226 0 57 2 226 0 59 2 226 0 65 2 226 0 74 2 226 0 77 2 226 0 87 2 226 0 89 2 226 0 96 2 226 0 97 2 226 0 104 2 226 0 112 2 226 0 115 2 226 0 118 2 226 0 123 2 226 0 127 2 226 0 128 3 157 0 130 2 226 0 131 2 226 0 132 2 226 0 137 2 226 1 128] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 7 33 0 183 7 33 0 187 1 113 0 190 7 33 0 192 7 33 0 193 7 33 0 195 7 33 0 199 7 33 0 200 1 137 0 202 7 33 0 208 1 145 0 209 1 149 0 210 1 153 0 211 7 33 0 241 7 33 0 242 7 33 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 7 37 0 76] 
#[0 7 41 0 137] 
#[1 3 97 0 139 7 45 0 234] 
#[1 2 41 0 2 0 50 0 9 7 49 0 194] 
#[1 2 41 0 2 0 50 0 137 7 53 0 194] 
#[1 3 13 0 2 0 174 0 3 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 7 57 0 140 1 149 0 141 1 173 0 143 1 101 0 147 7 61 0 196 1 149 0 210 3 33 0 211 3 37 0 212 3 41 0 213 3 45 0 214 3 49 0 215 3 53 0 216 3 57 0 217 3 33 1 111 1 173 1 116 1 177 1 127] 
#[0 2 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 3 141 0 2 2 234 0 3 3 149 0 4 2 234 0 5 3 145 0 6 0 238 0 7 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 2 234 0 14 2 234 0 16 3 149 0 18 3 149 0 20 2 234 0 21 2 234 0 23 2 234 0 27 2 234 0 30 2 234 0 31 2 234 0 33 3 149 0 35 2 234 0 36 2 234 0 52 2 234 0 57 3 149 0 58 2 234 0 59 3 149 0 64 2 234 0 65 3 149 0 71 2 234 0 74 2 234 0 77 3 149 0 80 2 234 0 87 2 234 0 89 2 234 0 96 2 234 0 97 2 234 0 104 3 149 0 108 3 149 0 109 2 234 0 112 2 234 0 115 2 234 0 118 2 234 0 123 2 234 0 127 2 234 0 128 3 149 0 129 2 234 0 130 2 234 0 131 1 35 0 132 3 149 0 133 3 149 0 135 3 149 0 136 2 234 0 137 3 149 1 121 2 234 1 128] 
#[0 2 238 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 7 65 0 139] 
#[0 2 242 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 7 81 0 208 1 145 0 209 1 149 0 210 7 73 0 211 7 77 0 245 7 81 0 246 7 73 1 111 1 173 1 116 1 177 1 127] 
#[0 7 85 0 77] 
#[0 7 89 0 40] 
#[1 2 246 0 3 2 246 0 24 2 246 0 40 2 246 0 88 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 113 7 93 0 226] 
#[1 2 250 0 3 2 250 0 24 7 97 0 26 4 1 0 27 7 101 0 28 7 105 0 32 2 250 0 40 7 109 0 52 2 250 0 88 7 113 0 89 7 117 0 91 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 113 4 21 0 115 4 25 0 118 4 29 0 123 1 181 0 130 6 25 0 139 7 129 0 171 7 129 0 177 7 129 0 236 7 129 0 237 7 137 0 238 7 129 0 239 7 129 0 240 7 129 0 252 7 129 0 253 7 129 0 254 7 129 0 255 7 129 1 0 7 129 1 1 7 129 1 3 7 129 1 4 7 129 1 5 7 129 1 7 7 189 1 8 7 129 1 9 7 197 1 30 7 129 1 38 7 205 1 39 7 129 1 41 7 213 1 42 7 129 1 45 4 53 1 46 7 129 1 47 4 61 1 48 7 129 1 50 7 129 1 51 7 129 1 53 4 73 1 54 7 129 1 55 4 81 1 56 7 129 1 58 7 129 1 59 7 129 1 61 7 253 1 62 7 129 1 67 4 97 1 68] 
#[0 2 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 3 141 0 2 3 2 0 3 3 149 0 4 3 2 0 5 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 8 5 0 3 8 9 0 5] 
#[0 3 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[1 3 141 0 2 3 10 0 3 3 149 0 4 3 10 0 5 3 145 0 6 3 10 0 7 3 149 0 8 3 10 0 9 1 39 0 11 1 43 0 12 1 47 0 13 3 10 0 14 3 10 0 16 3 149 0 18 3 149 0 20 3 10 0 21 3 10 0 23 3 10 0 27 3 10 0 30 3 10 0 31 3 10 0 33 3 149 0 35 3 10 0 36 3 10 0 52 3 10 0 57 1 51 0 58 3 10 0 59 3 149 0 64 3 10 0 65 3 149 0 71 3 10 0 74 3 10 0 77 3 149 0 80 3 10 0 87 3 10 0 89 3 10 0 96 3 10 0 97 3 10 0 104 3 149 0 108 3 149 0 109 3 10 0 112 3 10 0 115 3 10 0 118 3 10 0 123 3 10 0 127 3 10 0 128 3 149 0 129 3 10 0 130 3 10 0 131 1 55 0 132 1 59 0 133 3 149 0 135 3 149 0 136 3 10 0 137 3 149 1 121 3 10 1 128] 
#[1 3 14 0 3 3 14 0 5 3 14 0 14 3 14 0 21 3 14 0 23 3 14 0 27 3 14 0 30 3 14 0 31 3 14 0 33 3 14 0 36 3 14 0 52 3 14 0 57 3 14 0 59 3 14 0 65 3 14 0 74 3 14 0 77 3 14 0 87 3 14 0 89 3 14 0 96 3 14 0 97 3 14 0 104 3 14 0 112 3 14 0 115 3 14 0 118 3 14 0 123 3 14 0 127 3 14 0 128 3 157 0 130 3 14 0 131 3 14 0 132 3 14 0 137 3 14 1 128] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 8 13 0 131 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[0 3 18 0 26 0 28 0 32 0 52 0 89 0 139] 
#[0 3 22 0 5 0 132] 
#[1 8 17 0 5 8 21 0 132] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 8 25 0 26 8 85 0 34 1 45 0 46 1 49 0 52 8 85 0 63 1 53 0 75 8 37 0 76 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 8 41 0 182 8 45 0 183 8 49 0 186 8 53 0 187 1 113 0 190 8 57 0 192 8 61 0 193 8 53 0 195 8 49 0 198 8 53 0 199 8 53 0 200 1 137 0 202 8 53 0 208 1 145 0 209 1 149 0 210 1 153 0 211 8 49 0 219 8 49 0 220 8 49 0 223 1 157 0 241 8 53 0 242 8 53 0 243 8 49 0 247 8 85 0 248 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 8 89 0 14] 
#[0 3 26 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 3 30 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 34 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 38 0 40 0 48 0 56 0 61 0 63 1 128] 
#[0 3 42 0 5 0 137] 
#[0 3 46 0 5 0 137] 
#[0 3 50 1 128] 
#[0 8 93 0 139] 
#[0 3 54 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 8 97 0 6] 
#[1 1 197 0 139 8 101 0 168] 
#[0 3 58 0 29] 
#[1 3 205 0 5 8 105 0 137] 
#[0 8 109 0 6] 
#[0 3 62 1 128] 
#[1 4 1 0 27 3 66 0 40 3 66 0 48 4 5 0 52 3 66 0 56 3 66 0 61 4 13 0 89 4 17 0 104 4 21 0 115 4 25 0 118 4 29 0 123 8 113 0 170 8 113 0 171 8 113 0 174 8 113 0 177 8 113 1 0 8 113 1 3 8 113 1 45 4 53 1 46 8 113 1 47 4 61 1 48 8 113 1 53 4 73 1 54 8 113 1 55 4 81 1 56 8 113 1 67 4 97 1 68] 
#[1 3 70 0 23 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 32 3 70 0 40 3 70 0 43 3 70 0 48 3 70 0 52 3 70 0 61 3 70 0 89 3 70 0 104 3 70 0 115 3 70 0 118 3 70 0 123 8 141 1 35] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 8 145 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 3 74 0 40 8 149 0 48 8 153 1 123] 
#[1 4 157 0 9 1 54 0 14 8 157 1 6] 
#[1 3 78 0 3 3 78 0 21 3 78 0 23 3 78 0 24 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 32 3 78 0 40 3 78 0 43 3 78 0 48 3 78 0 52 3 78 0 56 3 78 0 61 3 78 0 65 3 78 0 88 3 78 0 89 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 104 3 78 0 113 3 78 0 115 3 78 0 118 3 78 0 123 3 78 0 130 6 9 0 139 8 161 0 173] 
#[0 3 82 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 41 0 2 5 113 0 6 0 50 0 9 0 50 0 137 8 165 0 194] 
#[0 3 86 0 3 0 5 0 9 0 131 0 137] 
#[1 8 169 0 5 8 173 0 137] 
#[1 2 41 0 2 5 113 0 6 0 50 0 137 8 177 0 194] 
#[0 8 181 0 14] 
#[1 3 90 0 21 3 90 0 23 3 90 0 26 3 90 0 27 3 90 0 28 3 90 0 32 3 90 0 40 3 90 0 43 3 90 0 48 3 90 0 52 3 90 0 56 3 90 0 61 3 90 0 65 3 90 0 89 3 90 0 104 3 90 0 115 3 90 0 118 3 90 0 123 6 37 0 139 8 185 0 176] 
#[0 3 94 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 8 169 0 5 8 189 0 9] 
#[1 3 98 0 3 3 98 0 21 3 98 0 23 3 98 0 24 3 98 0 26 3 98 0 27 3 98 0 28 3 98 0 32 3 98 0 40 3 98 0 43 3 98 0 48 3 98 0 52 3 98 0 56 3 98 0 61 3 98 0 65 3 98 0 88 3 98 0 89 3 98 0 91 3 98 0 92 3 98 0 93 3 98 0 94 3 98 0 104 3 98 0 113 3 98 0 115 3 98 0 118 3 98 0 123 3 98 0 130 6 25 0 139 6 49 1 30 8 193 1 70] 
#[0 3 102 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 106 0 3 3 106 0 21 3 106 0 23 3 106 0 24 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 32 3 106 0 40 3 106 0 43 3 106 0 48 3 106 0 52 3 106 0 56 3 106 0 61 3 106 0 65 3 106 0 88 3 106 0 89 3 106 0 91 3 106 0 92 3 106 0 93 3 106 0 94 3 106 0 104 3 106 0 113 3 106 0 115 3 106 0 118 3 106 0 123 1 181 0 130 1 185 0 139 8 197 0 179 1 193 0 238] 
#[0 3 110 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 114 0 3 3 114 0 21 3 114 0 23 3 114 0 24 3 114 0 26 3 114 0 27 3 114 0 28 3 114 0 32 3 114 0 40 3 114 0 43 3 114 0 48 3 114 0 52 3 114 0 56 3 114 0 61 3 114 0 65 3 114 0 88 3 114 0 89 3 114 0 91 3 114 0 92 3 114 0 93 3 114 0 94 3 114 0 104 3 114 0 113 3 114 0 115 3 114 0 118 3 114 0 123 3 114 0 130 6 25 0 139 6 49 1 30 8 193 1 70] 
#[0 3 118 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 8 201 0 137 8 205 0 139 8 209 0 143] 
#[0 8 213 0 137] 
#[1 3 122 0 3 3 122 0 17 3 122 0 21 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 38 3 122 0 40 3 122 0 42 3 122 0 43 3 122 0 44 3 122 0 45 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 56 3 122 0 61 3 122 0 62 3 122 0 65 3 122 0 67 3 122 0 70 3 122 0 73 3 122 0 82 3 122 0 83 3 122 0 86 3 122 0 87 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 100 3 122 0 101 3 122 0 104 3 122 0 105 3 122 0 110 3 122 0 111 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 120 3 122 0 123 3 122 0 124 3 122 0 130 3 122 0 139 8 217 1 21] 
#[0 3 126 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 122 0 3 3 122 0 17 3 122 0 21 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 38 3 122 0 40 3 122 0 42 3 122 0 43 3 122 0 44 3 122 0 45 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 56 3 122 0 61 3 122 0 62 3 122 0 65 3 122 0 67 3 122 0 70 3 122 0 73 3 122 0 82 3 122 0 83 3 122 0 86 3 122 0 87 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 100 3 122 0 101 3 122 0 104 3 122 0 105 3 122 0 110 3 122 0 111 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 120 3 122 0 123 3 122 0 124 3 122 0 130 3 122 0 139 8 221 1 21] 
#[0 3 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 3 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 141 0 2 3 149 0 4 3 138 0 5 3 145 0 6 8 225 0 7 3 149 0 8 3 138 0 9 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 8 229 0 39 3 142 0 40 8 233 1 93] 
#[1 1 234 0 39 1 234 0 40 8 237 0 137 8 241 1 86] 
#[0 3 146 0 39 0 40 0 137] 
#[0 8 245 0 9] 
#[0 8 249 0 5] 
#[1 3 150 0 5 3 154 0 9] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 9 5 0 37 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 9 5 0 116 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 9 5 1 98 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 9 9 0 36 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[0 3 158 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 4 153 0 27 4 153 0 81 4 153 0 123 1 50 0 139 9 13 1 29 4 153 1 32] 
#[1 3 162 0 3 8 169 0 5 9 17 0 9 3 162 0 131 3 162 0 137] 
#[1 3 166 0 14 3 153 0 16 3 166 0 21 3 166 0 23 3 166 0 27 3 166 0 30 3 166 0 33 3 166 0 36 3 166 0 52 3 166 0 57 3 166 0 59 3 166 0 65 3 166 0 74 3 166 0 77 3 166 0 89 3 166 0 96 3 166 0 97 3 166 0 104 3 166 0 112 3 166 0 115 3 166 0 118 3 166 0 123 3 166 0 127 3 166 0 128 3 157 0 130 3 166 0 137] 
#[1 9 21 0 39 3 170 0 40 3 170 0 41 3 170 0 48 3 170 0 49 3 170 0 61 3 170 0 78 3 170 0 121 3 170 0 137 3 170 1 128] 
#[0 3 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 9 25 0 3 6 241 0 5] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 9 29 1 103 9 29 1 104 0 253 1 105 9 29 1 106 1 5 1 107 9 29 1 108 9 29 1 109 9 29 1 110 9 29 1 111 1 25 1 116 9 29 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 9 33 1 103 9 33 1 104 0 253 1 105 9 33 1 106 1 5 1 107 9 33 1 108 9 33 1 109 9 33 1 110 9 33 1 111 1 25 1 116 9 33 1 117 1 33 1 127] 
#[1 5 113 0 6 3 178 0 39 3 178 0 40 3 178 0 41 3 178 0 48 3 178 0 49 3 178 0 61 3 178 0 78 3 178 0 121 3 178 0 137 3 178 1 128] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 3 182 0 39 3 182 0 40 3 182 0 41 3 182 0 48 3 182 0 49 2 253 0 58 3 182 0 61 2 253 0 64 2 253 0 71 3 182 0 78 2 253 0 80 2 253 0 108 2 253 0 109 3 182 0 121 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 3 182 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121 3 182 1 128] 
#[1 3 97 0 139 9 37 0 234] 
#[1 9 41 0 39 3 186 0 40 3 186 0 49 4 113 0 137 9 45 1 83] 
#[1 9 41 0 39 3 186 0 40 3 186 0 49 6 185 0 78 9 49 1 82 9 53 1 83] 
#[0 3 190 0 39 0 40 0 49 0 78] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 9 57 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[0 9 61 0 40] 
#[0 3 194 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 2 149 0 2 2 253 0 4 3 198 0 5 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 3 198 0 36 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[0 3 202 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 2 149 0 2 2 253 0 4 3 206 0 5 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 3 206 0 131 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[0 3 210 0 5 0 131] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 157 0 183 9 65 0 187 1 113 0 190 1 157 0 192 1 157 0 193 9 65 0 195 9 65 0 199 9 65 0 200 1 137 0 202 9 65 0 208 1 145 0 209 1 149 0 210 1 153 0 211 1 157 0 241 9 65 0 242 9 65 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 3 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 3 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 4 249 1 103 4 249 1 104 0 253 1 105 4 249 1 106 1 5 1 107 4 249 1 108 4 249 1 109 4 249 1 110 4 249 1 111 1 25 1 116 4 249 1 117 9 69 1 119 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 9 73 1 103 9 73 1 104 0 253 1 105 9 73 1 106 1 5 1 107 9 73 1 108 9 73 1 109 9 73 1 110 9 73 1 111 1 25 1 116 9 73 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 9 77 1 103 9 77 1 104 0 253 1 105 9 77 1 106 1 5 1 107 9 77 1 108 9 77 1 109 9 77 1 110 9 77 1 111 1 25 1 116 9 77 1 117 1 33 1 127] 
#[0 3 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 3 141 0 2 3 226 0 3 3 149 0 4 3 226 0 5 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 3 141 0 2 3 230 0 3 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 230 0 137 3 149 1 121] 
#[0 3 234 0 3 0 5] 
#[1 3 141 0 2 3 238 0 3 3 149 0 4 3 238 0 5 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[0 3 242 0 3 0 5] 
#[0 3 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[0 5 33 0 9] 
#[0 3 250 0 3 0 137] 
#[1 3 153 0 16 5 77 0 77 3 157 0 130 1 254 0 137 9 81 1 2] 
#[0 3 254 0 137] 
#[1 3 122 0 3 3 122 0 5 3 122 0 14 3 122 0 16 3 122 0 17 3 122 0 21 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 30 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 36 3 122 0 38 3 122 0 40 3 122 0 42 3 122 0 43 3 122 0 44 3 122 0 45 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 56 3 122 0 57 3 122 0 59 3 122 0 61 3 122 0 62 3 122 0 65 3 122 0 67 3 122 0 70 3 122 0 73 3 122 0 74 3 122 0 77 3 122 0 82 3 122 0 83 3 122 0 86 3 122 0 87 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 96 3 122 0 97 3 122 0 100 3 122 0 101 3 122 0 104 3 122 0 105 3 122 0 110 3 122 0 111 3 122 0 112 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 120 3 122 0 123 3 122 0 124 3 122 0 127 3 122 0 128 3 122 0 130 3 122 0 131 3 122 0 132 3 122 0 137 3 122 0 139 9 85 1 21 3 122 1 128] 
#[1 5 113 0 6 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 9 89 0 201 5 133 0 225 5 137 0 235] 
#[0 9 93 0 9] 
#[0 9 97 0 137] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 1 63 0 5 0 186 0 6 0 186 0 8 5 33 0 9 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 18 0 186 0 20 0 186 0 35 0 186 0 58 0 186 0 64 0 186 0 71 0 186 0 80 0 186 0 108 0 186 0 109 0 186 0 129 0 186 0 132 0 186 0 133 0 186 0 135 0 186 0 136] 
#[0 9 105 0 3] 
#[1 1 6 0 2 1 6 0 3 1 6 0 5 1 6 0 6 1 6 0 9 3 165 0 11 1 6 0 14 1 6 0 16 1 6 0 21 1 6 0 23 1 6 0 24 1 6 0 26 1 6 0 27 1 6 0 28 1 6 0 30 1 6 0 31 1 6 0 32 1 6 0 33 1 6 0 36 1 6 0 39 1 6 0 40 1 6 0 41 1 6 0 48 1 6 0 49 1 6 0 52 1 6 0 57 1 6 0 59 1 6 0 61 1 6 0 65 1 6 0 74 1 6 0 77 1 6 0 78 1 6 0 87 1 6 0 88 1 6 0 89 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 96 1 6 0 97 1 6 0 104 1 6 0 112 1 6 0 113 1 6 0 115 1 6 0 118 1 6 0 121 1 6 0 123 1 6 0 127 1 6 0 128 1 6 0 130 1 6 0 131 1 6 0 132 1 6 0 137 1 6 0 139 9 109 0 180 1 6 1 128] 
#[0 4 2 0 5 0 131] 
#[1 3 141 0 2 3 149 0 4 4 6 0 5 3 145 0 6 0 238 0 7 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 4 6 0 131 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 9 113 0 5 9 117 0 131] 
#[0 4 10 0 5 0 131] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 9 121 0 27 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 9 125 0 183 9 125 0 187 1 113 0 190 9 125 0 192 9 125 0 193 9 125 0 195 9 125 0 199 9 125 0 200 1 137 0 202 9 125 0 208 1 145 0 209 1 149 0 210 1 153 0 211 9 125 0 241 9 125 0 242 9 125 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 4 14 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 4 18 0 3 9 129 0 24 4 18 0 40 9 133 0 88 9 137 0 92 9 141 0 93 9 145 0 94 9 149 0 113 9 153 0 203 9 157 0 227 9 157 0 228 9 157 0 229 9 157 0 230 9 157 0 231] 
#[1 9 177 0 28 9 181 0 32 4 5 0 52 9 185 0 79 4 13 0 89 7 117 0 91 4 21 0 115 4 29 0 123 9 189 1 8 9 193 1 46 9 197 1 48 9 201 1 54 9 205 1 56 9 209 1 68] 
#[1 3 97 0 139 9 213 0 234] 
#[1 3 97 0 139 9 217 0 234] 
#[1 3 97 0 139 9 221 0 234] 
#[1 3 97 0 139 9 225 0 234] 
#[0 9 229 0 139] 
#[0 4 22 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 26 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 9 233 0 26 7 101 0 28 7 105 0 32 4 5 0 52 4 13 0 89 9 237 0 254 9 241 0 255 9 245 1 0 9 249 1 1 9 253 1 3 10 1 1 4 10 5 1 5 9 237 1 38 7 205 1 39 9 241 1 41 7 213 1 42 9 245 1 45 4 53 1 46 9 245 1 47 4 61 1 48 9 249 1 50 9 249 1 51 9 253 1 53 4 73 1 54 9 253 1 55 4 81 1 56 10 1 1 58 10 1 1 59 10 5 1 61 7 253 1 62] 
#[0 4 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
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
#[1 8 169 0 5 10 9 0 9] 
#[0 4 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 98 0 3 4 98 0 24 4 98 0 26 4 98 0 27 4 98 0 28 4 98 0 32 4 98 0 40 6 77 0 44 6 81 0 51 4 98 0 52 4 98 0 88 4 98 0 89 4 98 0 91 4 98 0 92 4 98 0 93 4 98 0 94 4 98 0 113 4 98 0 115 4 98 0 118 4 98 0 123 4 98 0 130 4 98 0 139 10 13 1 25] 
#[0 4 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 106 0 3 4 106 0 24 4 106 0 26 4 106 0 27 4 106 0 28 4 106 0 32 4 106 0 40 6 77 0 44 6 81 0 51 4 106 0 52 4 106 0 88 4 106 0 89 4 106 0 91 4 106 0 92 4 106 0 93 4 106 0 94 4 106 0 113 4 106 0 115 4 106 0 118 4 106 0 123 4 106 0 130 4 106 0 139 10 17 1 25] 
#[0 4 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 146 0 3 4 146 0 24 4 146 0 26 4 146 0 27 4 146 0 28 4 146 0 32 4 146 0 40 6 77 0 44 6 81 0 51 4 146 0 52 4 146 0 88 4 146 0 89 4 146 0 91 4 146 0 92 4 146 0 93 4 146 0 94 4 146 0 113 4 146 0 115 4 146 0 118 4 146 0 123 4 146 0 130 4 146 0 139 10 21 1 25] 
#[0 4 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 10 25 0 211 10 25 1 111 1 173 1 116 1 177 1 127] 
#[0 4 158 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 10 29 0 139] 
#[0 4 162 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[1 4 166 0 2 4 166 0 17 4 166 0 26 4 166 0 27 4 166 0 28 4 166 0 31 4 166 0 32 4 166 0 40 4 166 0 52 4 166 0 54 10 33 0 77 4 166 0 87 4 166 0 88 4 166 0 89 4 166 0 91 4 166 0 92 4 166 0 93 4 166 0 94 4 166 0 106 4 166 0 113 4 166 0 115 4 166 0 118 4 166 0 123 4 166 0 130 4 166 0 137 4 166 0 139 10 37 0 221] 
#[0 4 170 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 4 174 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 10 41 0 2 4 178 0 26 4 178 0 27 4 178 0 28 4 178 0 32 4 178 0 40 4 178 0 52 4 178 0 88 4 178 0 89 4 178 0 91 4 178 0 92 4 178 0 93 4 178 0 94 4 178 0 113 4 178 0 115 4 178 0 118 4 178 0 123 4 178 0 130 4 178 0 139 10 45 0 232] 
#[0 4 182 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 128] 
#[1 0 198 0 16 0 198 0 130 10 49 0 137] 
#[1 10 53 0 31 10 53 0 87 1 14 0 137 10 53 0 191] 
#[1 0 202 0 16 10 57 0 31 10 57 0 87 0 202 0 130 1 14 0 137 10 57 0 191] 
#[1 4 186 0 3 0 210 0 16 4 186 0 21 4 186 0 23 4 186 0 24 4 186 0 26 4 186 0 27 4 186 0 28 4 186 0 32 4 186 0 40 4 186 0 43 4 186 0 48 4 186 0 52 4 186 0 56 4 186 0 61 4 186 0 65 4 186 0 88 4 186 0 89 4 186 0 91 4 186 0 92 4 186 0 93 4 186 0 94 4 186 0 104 4 186 0 113 4 186 0 115 4 186 0 118 4 186 0 123 1 67 0 130 4 186 0 139 4 186 1 128] 
#[1 4 190 0 3 0 214 0 16 4 190 0 21 4 190 0 23 4 190 0 24 4 190 0 26 4 190 0 27 4 190 0 28 4 190 0 32 4 190 0 40 4 190 0 43 4 190 0 48 4 190 0 52 4 190 0 56 4 190 0 61 4 190 0 65 4 190 0 88 4 190 0 89 4 190 0 91 4 190 0 92 4 190 0 93 4 190 0 94 4 190 0 104 4 190 0 113 4 190 0 115 4 190 0 118 4 190 0 123 1 71 0 130 4 190 0 139 4 190 1 128] 
#[0 4 194 0 31 0 87 0 137] 
#[0 4 198 0 31 0 87 0 137] 
#[0 4 202 0 31 0 87 0 137] 
#[0 4 206 0 31 0 87 0 137] 
#[0 4 210 0 31 0 87 0 137] 
#[1 10 41 0 2 4 178 0 26 4 214 0 31 4 178 0 40 4 178 0 52 4 214 0 87 4 178 0 89 4 178 0 91 4 178 0 130 4 214 0 137 10 61 0 232] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 8 25 0 26 8 85 0 34 1 45 0 46 1 49 0 52 8 85 0 63 1 53 0 75 8 37 0 76 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 10 65 0 182 8 45 0 183 8 49 0 186 8 53 0 187 1 113 0 190 8 57 0 192 8 61 0 193 8 53 0 195 8 49 0 198 8 53 0 199 8 53 0 200 1 137 0 202 8 53 0 208 1 145 0 209 1 149 0 210 1 153 0 211 8 49 0 219 8 49 0 220 8 49 0 223 1 157 0 241 8 53 0 242 8 53 0 243 8 49 0 247 8 85 0 248 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 10 69 0 137] 
#[0 4 218 1 128] 
#[1 4 222 0 5 3 177 0 6 4 222 0 137] 
#[0 4 226 0 40] 
#[0 4 230 1 128] 
#[0 4 234 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 4 238 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 4 242 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 4 246 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 4 250 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 4 254 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 2 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 10 73 0 23 9 233 0 26 4 1 0 27 7 101 0 28 7 105 0 32 5 6 0 40 10 77 0 43 5 6 0 48 4 5 0 52 5 6 0 61 4 13 0 89 4 17 0 104 4 21 0 115 4 25 0 118 4 29 0 123 10 97 0 171 10 97 0 174 10 97 0 177 10 93 1 34 10 97 1 36 10 97 1 37 10 105 1 38 10 109 1 39 10 97 1 40 10 117 1 41 10 121 1 42 10 97 1 44 4 49 1 45 4 53 1 46 4 57 1 47 4 61 1 48 10 97 1 49 10 133 1 50 10 137 1 51 10 97 1 52 4 69 1 53 4 73 1 54 4 77 1 55 4 81 1 56 10 97 1 57 10 149 1 58 10 153 1 59 10 97 1 60 10 161 1 61 10 165 1 62 10 97 1 67 4 97 1 68 10 97 1 124] 
#[1 5 10 0 40 5 10 0 48 4 113 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 10 177 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 5 241 0 40 10 181 1 126] 
#[0 10 185 0 14] 
#[0 5 14 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 157 0 9 1 54 0 137 10 189 1 6] 
#[0 10 193 0 139] 
#[0 5 18 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 10 197 0 137] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 10 201 0 211 10 201 1 111 1 173 1 116 1 177 1 127] 
#[0 5 22 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 10 205 0 183 10 205 0 187 1 113 0 190 10 205 0 192 10 205 0 193 10 205 0 195 10 205 0 199 10 205 0 200 1 137 0 202 10 205 0 208 1 145 0 209 1 149 0 210 1 153 0 211 10 205 0 241 10 205 0 242 10 205 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 5 26 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 30 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 34 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[1 10 209 0 72 10 213 0 137] 
#[1 10 217 0 72 10 221 0 137] 
#[0 5 38 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[1 5 42 0 3 11 77 0 17 5 42 0 21 11 77 0 22 5 42 0 23 5 42 0 24 11 77 0 25 5 42 0 26 5 42 0 27 5 42 0 28 11 77 0 31 5 42 0 32 10 241 0 33 11 77 0 38 5 42 0 40 11 77 0 42 5 42 0 43 6 77 0 44 11 77 0 45 11 77 0 47 5 42 0 48 6 81 0 51 5 42 0 52 5 42 0 56 5 42 0 61 11 77 0 62 5 42 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 5 42 0 88 5 42 0 89 5 42 0 91 5 42 0 92 5 42 0 93 5 42 0 94 11 77 0 100 11 77 0 101 5 42 0 104 11 77 0 105 11 77 0 110 11 77 0 111 5 42 0 113 5 42 0 115 5 42 0 118 11 77 0 120 5 42 0 123 11 77 0 124 5 42 0 130 5 42 0 139 11 65 1 23 11 65 1 24 11 65 1 25 11 77 1 26] 
#[1 5 46 0 3 11 77 0 17 5 46 0 21 11 77 0 22 5 46 0 23 5 46 0 24 11 77 0 25 5 46 0 26 5 46 0 27 5 46 0 28 11 77 0 31 5 46 0 32 10 241 0 33 11 77 0 38 5 46 0 40 11 77 0 42 5 46 0 43 6 77 0 44 11 77 0 45 11 77 0 47 5 46 0 48 6 81 0 51 5 46 0 52 5 46 0 56 5 46 0 61 11 77 0 62 5 46 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 5 46 0 88 5 46 0 89 5 46 0 91 5 46 0 92 5 46 0 93 5 46 0 94 11 77 0 100 11 77 0 101 5 46 0 104 11 77 0 105 11 77 0 110 11 77 0 111 5 46 0 113 5 46 0 115 5 46 0 118 11 77 0 120 5 46 0 123 11 77 0 124 5 46 0 130 5 46 0 139 11 65 1 23 11 65 1 24 11 65 1 25 11 77 1 26] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 11 81 0 211 11 81 1 111 1 173 1 116 1 177 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 11 85 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[0 11 89 0 40] 
#[1 3 13 0 2 1 41 0 15 2 222 0 39 2 222 0 40 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 6 105 0 211 11 93 1 89 6 121 1 90 6 125 1 91 6 129 1 92 6 105 1 111 1 173 1 116 1 177 1 127] 
#[0 5 50 0 39 0 40] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 11 97 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 11 97 1 100 11 97 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 6 105 0 211 11 101 1 92 6 105 1 111 1 173 1 116 1 177 1 127] 
#[0 5 54 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 127] 
#[0 5 58 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 11 105 1 103 11 105 1 104 0 253 1 105 11 105 1 106 1 5 1 107 11 105 1 108 11 105 1 109 11 105 1 110 11 105 1 111 1 25 1 116 11 105 1 117 1 33 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 11 109 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 11 109 1 100 11 109 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[0 5 62 0 3 0 131 0 137] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 11 113 0 183 11 113 0 187 1 113 0 190 11 113 0 192 11 113 0 193 11 113 0 195 11 113 0 199 11 113 0 200 1 137 0 202 11 113 0 208 1 145 0 209 1 149 0 210 1 153 0 211 11 113 0 241 11 113 0 242 11 113 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 11 117 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 11 117 1 100 11 117 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[0 5 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 11 121 0 131 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 11 125 0 131 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 5 113 0 6 4 157 0 9 1 54 0 36 11 129 1 6] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 11 133 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[0 5 70 0 40 0 49] 
#[0 5 74 0 39 0 40 0 49 0 78] 
#[0 5 78 0 40 0 49] 
#[1 5 82 0 40 4 113 0 137] 
#[0 5 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 5 90 0 5 0 202 0 16 0 202 0 130 5 90 0 132] 
#[1 5 94 0 3 5 94 0 5 6 245 0 9] 
#[1 2 149 0 2 5 98 0 3 2 253 0 4 5 98 0 5 2 157 0 6 2 253 0 8 5 98 0 9 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 2 149 0 2 2 253 0 4 5 102 0 5 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 5 102 0 131 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[0 11 137 0 137] 
#[1 5 106 0 3 5 106 0 5 5 106 0 14 5 106 0 16 11 77 0 17 5 106 0 21 11 77 0 22 5 106 0 23 5 106 0 24 11 77 0 25 5 106 0 26 5 106 0 27 5 106 0 28 5 106 0 30 1 75 0 31 5 106 0 32 1 79 0 33 5 106 0 36 11 77 0 38 5 106 0 40 11 77 0 42 5 106 0 43 6 77 0 44 11 77 0 45 11 77 0 47 5 106 0 48 6 81 0 51 5 106 0 52 5 106 0 56 5 106 0 57 5 106 0 59 5 106 0 61 11 77 0 62 5 106 0 65 11 77 0 67 11 13 0 70 11 77 0 73 5 106 0 74 5 106 0 77 11 77 0 82 11 77 0 83 11 77 0 86 1 83 0 87 5 106 0 88 5 106 0 89 5 106 0 91 5 106 0 92 5 106 0 93 5 106 0 94 5 106 0 96 5 106 0 97 11 77 0 100 11 77 0 101 5 106 0 104 11 77 0 105 11 77 0 110 11 77 0 111 5 106 0 112 5 106 0 113 5 106 0 115 5 106 0 118 11 77 0 120 5 106 0 123 11 77 0 124 5 106 0 127 5 106 0 128 5 106 0 130 5 106 0 131 5 106 0 132 5 106 0 137 5 106 0 139 11 65 1 23 11 65 1 24 11 65 1 25 11 77 1 26 5 106 1 128] 
#[0 11 141 0 40] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 11 145 0 183 11 145 0 187 1 113 0 190 11 145 0 192 11 145 0 193 11 145 0 195 11 145 0 199 11 145 0 200 1 137 0 202 11 145 0 208 1 145 0 209 1 149 0 210 1 153 0 211 11 145 0 241 11 145 0 242 11 145 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[0 5 110 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[1 11 149 0 140 11 153 0 197] 
#[0 5 114 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[0 5 118 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 11 157 0 208 1 145 0 209 1 149 0 210 7 73 0 211 11 157 0 246 7 73 1 111 1 173 1 116 1 177 1 127] 
#[0 5 122 0 77] 
#[0 5 126 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 5 130 0 3 5 130 0 5 5 130 0 14 3 153 0 16 5 130 0 21 5 130 0 23 5 130 0 27 5 130 0 30 5 130 0 31 5 130 0 33 5 130 0 36 5 130 0 52 5 130 0 57 5 130 0 59 5 130 0 65 5 130 0 74 5 130 0 77 5 130 0 87 5 130 0 89 5 130 0 96 5 130 0 97 5 130 0 104 5 130 0 112 5 130 0 115 5 130 0 118 5 130 0 123 5 130 0 127 5 130 0 128 3 157 0 130 5 130 0 131 5 130 0 132 5 130 0 137 5 130 1 128] 
#[0 11 161 0 139] 
#[1 2 26 0 3 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 11 165 0 235] 
#[1 2 26 0 3 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 11 169 0 235] 
#[1 2 26 0 3 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 11 173 0 235] 
#[1 2 26 0 3 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 11 177 0 235] 
#[1 11 181 0 88 11 185 0 92] 
#[0 5 134 0 3 0 40] 
#[0 5 138 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 142 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 146 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 150 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 154 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 3 97 0 139 11 189 0 234] 
#[1 3 97 0 139 11 193 0 234] 
#[1 3 97 0 139 11 197 0 234] 
#[0 5 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 162 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 166 0 3 5 166 0 21 5 166 0 23 5 166 0 24 5 166 0 26 5 166 0 27 5 166 0 28 5 166 0 32 5 166 0 40 6 77 0 44 6 81 0 51 5 166 0 52 5 166 0 65 5 166 0 88 5 166 0 89 5 166 0 91 5 166 0 92 5 166 0 93 5 166 0 94 5 166 0 104 5 166 0 113 5 166 0 115 5 166 0 118 5 166 0 123 5 166 0 130 5 166 0 139 6 85 1 25] 
#[0 5 170 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 174 0 3 5 174 0 21 5 174 0 23 5 174 0 24 5 174 0 26 5 174 0 27 5 174 0 28 5 174 0 32 5 174 0 40 6 77 0 44 6 81 0 51 5 174 0 52 5 174 0 65 5 174 0 88 5 174 0 89 5 174 0 91 5 174 0 92 5 174 0 93 5 174 0 94 5 174 0 104 5 174 0 113 5 174 0 115 5 174 0 118 5 174 0 123 5 174 0 130 5 174 0 139 6 93 1 25] 
#[0 5 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 41 0 2 5 113 0 6 0 50 0 137 11 201 0 194] 
#[1 11 205 0 2 5 113 0 6 5 182 0 137 11 209 1 43] 
#[1 2 41 0 2 5 113 0 6 0 50 0 9 11 213 0 14 0 50 0 137 8 165 0 194] 
#[1 2 41 0 2 5 113 0 6 11 217 0 14 0 50 0 137 8 177 0 194] 
#[1 5 186 0 9 5 186 0 30 5 186 0 33 5 186 0 57 5 186 0 59 5 186 0 74 5 186 0 96 5 186 0 97 5 186 0 112 5 186 0 127 5 186 0 128 11 221 0 130 5 186 0 137 11 225 1 11] 
#[1 9 177 0 28 9 181 0 32 4 5 0 52 9 185 0 79 4 13 0 89 9 193 1 46 9 197 1 48 9 201 1 54 9 205 1 56] 
#[0 5 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 198 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 202 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 37 0 2 1 41 0 15 0 18 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 137 0 85 1 61 0 89 0 7 0 98 1 69 0 99 1 73 0 107 1 77 0 118 0 153 0 130 1 81 0 135 1 85 0 136 1 89 0 138 1 93 0 140 1 149 0 141 1 173 0 143 1 101 0 147 11 229 0 183 11 229 0 187 1 113 0 190 11 229 0 192 11 229 0 193 11 229 0 195 11 229 0 199 11 229 0 200 1 137 0 202 11 229 0 208 1 145 0 209 1 149 0 210 1 153 0 211 11 229 0 241 11 229 0 242 11 229 0 243 1 153 1 111 1 173 1 116 1 177 1 127] 
#[1 3 122 0 3 3 122 0 17 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 38 3 122 0 40 3 122 0 42 3 122 0 43 3 122 0 44 3 122 0 45 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 61 3 122 0 62 3 122 0 67 3 122 0 70 3 122 0 73 3 122 0 82 3 122 0 83 3 122 0 86 3 122 0 87 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 100 3 122 0 101 3 122 0 104 3 122 0 105 3 122 0 110 3 122 0 111 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 120 3 122 0 123 3 122 0 124 3 122 0 130 3 122 0 139 11 233 1 21] 
#[1 3 122 0 3 3 122 0 17 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 38 3 122 0 40 3 122 0 42 3 122 0 43 3 122 0 44 3 122 0 45 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 61 3 122 0 62 3 122 0 67 3 122 0 70 3 122 0 73 3 122 0 82 3 122 0 83 3 122 0 86 3 122 0 87 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 100 3 122 0 101 3 122 0 104 3 122 0 105 3 122 0 110 3 122 0 111 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 120 3 122 0 123 3 122 0 124 3 122 0 130 3 122 0 139 11 237 1 21] 
#[1 3 122 0 3 3 122 0 17 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 38 3 122 0 40 3 122 0 42 3 122 0 43 3 122 0 44 3 122 0 45 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 61 3 122 0 62 3 122 0 67 3 122 0 70 3 122 0 73 3 122 0 82 3 122 0 83 3 122 0 86 3 122 0 87 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 100 3 122 0 101 3 122 0 104 3 122 0 105 3 122 0 110 3 122 0 111 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 120 3 122 0 123 3 122 0 124 3 122 0 130 3 122 0 139 11 241 1 21] 
#[1 3 141 0 2 5 218 0 3 3 149 0 4 5 218 0 5 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[0 5 222 0 5 0 132] 
#[0 11 245 0 139] 
#[1 10 41 0 2 12 5 0 17 4 178 0 26 4 178 0 27 4 178 0 28 4 178 0 31 4 178 0 32 4 178 0 40 4 178 0 52 11 253 0 54 4 178 0 87 4 178 0 88 4 178 0 89 4 178 0 91 4 178 0 92 4 178 0 93 4 178 0 94 12 5 0 106 4 178 0 113 4 178 0 115 4 178 0 118 4 178 0 123 4 178 0 130 4 178 0 137 4 178 0 139 12 5 0 222 12 9 0 232] 
#[1 12 13 0 140 12 17 0 190 12 21 0 233] 
#[1 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 12 25 0 225 5 137 0 235] 
#[0 5 226 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 128] 
#[0 12 29 0 137] 
#[0 12 33 0 137] 
#[1 5 230 0 26 5 230 0 40 5 230 0 52 5 230 0 89 5 230 0 91 12 37 0 130 12 41 0 249] 
#[0 5 234 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 128] 
#[0 5 238 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 12 45 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 12 49 0 139 12 53 1 125] 
#[0 5 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 254 0 40 0 48 0 61] 
#[0 6 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 77 0 44 6 81 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 13 1 25 12 57 1 63 2 5 1 64] 
#[0 6 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 77 0 44 6 81 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 17 1 25 12 61 1 63 2 5 1 64] 
#[0 6 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 65 1 63 2 5 1 64] 
#[0 6 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 69 1 63 2 5 1 64] 
#[0 6 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 77 0 44 6 81 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 21 1 25 12 73 1 63 2 5 1 64] 
#[0 6 54 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 58 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 62 0 40 4 113 0 137] 
#[0 6 66 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 12 77 0 211 12 77 1 111 1 173 1 116 1 177 1 127] 
#[0 12 81 0 137] 
#[0 6 70 0 3 0 5 0 9 0 131 0 137] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 48 6 74 0 51 6 74 0 52 6 74 0 56 6 74 0 61 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 100 6 74 0 101 6 74 0 104 6 74 0 105 6 74 0 110 6 74 0 111 6 74 0 113 6 74 0 115 6 74 0 118 6 74 0 120 6 74 0 123 6 74 0 124 6 74 0 130 6 74 0 139 12 85 1 22] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 12 93 0 31 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 6 78 0 137 12 93 0 224 3 149 1 121] 
#[1 1 14 0 14 3 153 0 16 12 97 0 31 12 97 0 87 3 157 0 130 1 14 0 137 12 97 0 191] 
#[0 12 101 0 143] 
#[0 6 82 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 12 105 0 143] 
#[0 6 86 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 6 90 0 137] 
#[0 6 94 0 137] 
#[0 6 98 0 137] 
#[0 6 102 0 137] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 12 109 0 211 12 109 1 111 1 173 1 116 1 177 1 127] 
#[0 6 106 0 137] 
#[0 6 110 0 137] 
#[0 6 114 0 137] 
#[0 6 118 0 137] 
#[0 6 122 0 137] 
#[0 6 126 0 137] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 12 113 0 211 12 113 1 111 1 173 1 116 1 177 1 127] 
#[0 6 130 0 137] 
#[0 6 134 0 137] 
#[0 6 138 0 137] 
#[0 6 142 0 137] 
#[0 6 146 0 137] 
#[0 6 150 0 137] 
#[0 6 154 0 137] 
#[0 6 158 0 137] 
#[0 6 162 0 137] 
#[0 6 166 0 137] 
#[0 6 170 0 137] 
#[0 6 174 0 137] 
#[0 6 178 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 6 182 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 6 186 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 12 117 0 137] 
#[1 3 141 0 2 3 149 0 4 6 190 0 5 3 145 0 6 3 149 0 8 6 190 0 9 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 6 194 0 40 4 113 0 137] 
#[0 6 198 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 6 202 0 39 0 40 0 137] 
#[0 6 206 0 39 0 40 0 137] 
#[1 6 210 0 5 6 214 0 9] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 2 253 0 35 12 121 0 36 2 253 0 58 2 253 0 64 2 253 0 71 2 253 0 80 2 253 0 108 2 253 0 109 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[0 6 218 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 6 222 0 3 12 125 0 14 3 153 0 16 3 157 0 130 6 222 0 131 6 222 0 137 12 129 1 31] 
#[0 6 226 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[0 6 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 6 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 128] 
#[0 12 133 0 36] 
#[1 6 238 0 40 6 238 0 49 4 113 0 137] 
#[1 3 122 0 3 3 122 0 5 3 122 0 14 3 122 0 16 3 122 0 17 3 122 0 21 3 122 0 22 3 122 0 23 3 122 0 24 3 122 0 25 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 30 3 122 0 31 3 122 0 32 3 122 0 33 3 122 0 36 3 122 0 38 3 122 0 40 3 122 0 42 3 122 0 43 3 122 0 44 3 122 0 45 3 122 0 47 3 122 0 48 3 122 0 51 3 122 0 52 3 122 0 56 3 122 0 57 3 122 0 59 3 122 0 61 3 122 0 62 3 122 0 65 3 122 0 67 3 122 0 70 3 122 0 73 3 122 0 74 3 122 0 77 3 122 0 82 3 122 0 83 3 122 0 86 3 122 0 87 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 96 3 122 0 97 3 122 0 100 3 122 0 101 3 122 0 104 3 122 0 105 3 122 0 110 3 122 0 111 3 122 0 112 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 120 3 122 0 123 3 122 0 124 3 122 0 127 3 122 0 128 3 122 0 130 3 122 0 131 3 122 0 132 3 122 0 137 3 122 0 139 12 137 1 21 3 122 1 128] 
#[0 6 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 128] 
#[1 3 153 0 16 3 157 0 130 12 141 0 137] 
#[0 6 246 0 3 0 5] 
#[1 6 250 0 3 12 145 0 5] 
#[0 6 254 0 5 0 131] 
#[1 4 157 0 9 1 54 0 77 12 149 1 6] 
#[1 7 2 0 3 7 2 0 24 7 97 0 26 4 1 0 27 7 101 0 28 7 105 0 32 7 2 0 40 7 109 0 52 7 2 0 88 7 113 0 89 7 117 0 91 7 2 0 92 7 2 0 93 7 2 0 94 7 2 0 113 4 21 0 115 4 25 0 118 4 29 0 123 1 181 0 130 6 25 0 139 7 129 0 171 7 129 0 177 7 129 0 236 7 129 0 237 7 137 0 238 7 129 0 239 7 129 0 240 7 129 0 252 7 129 0 253 7 129 0 254 7 129 0 255 7 129 1 0 7 129 1 1 7 129 1 3 7 129 1 4 7 129 1 5 7 129 1 7 7 189 1 8 7 129 1 9 7 197 1 30 7 129 1 38 7 205 1 39 7 129 1 41 7 213 1 42 7 129 1 45 4 53 1 46 7 129 1 47 4 61 1 48 7 129 1 50 7 129 1 51 7 129 1 53 4 73 1 54 7 129 1 55 4 81 1 56 7 129 1 58 7 129 1 59 7 129 1 61 7 253 1 62 7 129 1 67 4 97 1 68] 
#[1 7 6 0 3 7 6 0 24 7 97 0 26 4 1 0 27 7 101 0 28 7 105 0 32 7 6 0 40 7 109 0 52 7 6 0 88 7 113 0 89 7 117 0 91 7 6 0 92 7 6 0 93 7 6 0 94 7 6 0 113 4 21 0 115 4 25 0 118 4 29 0 123 1 181 0 130 6 25 0 139 7 129 0 171 7 129 0 177 7 129 0 236 7 129 0 237 7 137 0 238 7 129 0 239 7 129 0 240 7 129 0 252 7 129 0 253 7 129 0 254 7 129 0 255 7 129 1 0 7 129 1 1 7 129 1 3 7 129 1 4 7 129 1 5 7 129 1 7 7 189 1 8 7 129 1 9 7 197 1 30 7 129 1 38 7 205 1 39 7 129 1 41 7 213 1 42 7 129 1 45 4 53 1 46 7 129 1 47 4 61 1 48 7 129 1 50 7 129 1 51 7 129 1 53 4 73 1 54 7 129 1 55 4 81 1 56 7 129 1 58 7 129 1 59 7 129 1 61 7 253 1 62 7 129 1 67 4 97 1 68] 
#[1 7 10 0 3 7 10 0 24 7 97 0 26 4 1 0 27 7 101 0 28 7 105 0 32 7 10 0 40 7 109 0 52 7 10 0 88 7 113 0 89 7 117 0 91 7 10 0 92 7 10 0 93 7 10 0 94 7 10 0 113 4 21 0 115 4 25 0 118 4 29 0 123 1 181 0 130 6 25 0 139 7 129 0 171 7 129 0 177 7 129 0 236 7 129 0 237 7 137 0 238 7 129 0 239 7 129 0 240 7 129 0 252 7 129 0 253 7 129 0 254 7 129 0 255 7 129 1 0 7 129 1 1 7 129 1 3 7 129 1 4 7 129 1 5 7 129 1 7 7 189 1 8 7 129 1 9 7 197 1 30 7 129 1 38 7 205 1 39 7 129 1 41 7 213 1 42 7 129 1 45 4 53 1 46 7 129 1 47 4 61 1 48 7 129 1 50 7 129 1 51 7 129 1 53 4 73 1 54 7 129 1 55 4 81 1 56 7 129 1 58 7 129 1 59 7 129 1 61 7 253 1 62 7 129 1 67 4 97 1 68] 
#[1 7 14 0 3 7 14 0 24 7 97 0 26 4 1 0 27 7 101 0 28 7 105 0 32 7 14 0 40 7 109 0 52 7 14 0 88 7 113 0 89 7 117 0 91 7 14 0 92 7 14 0 93 7 14 0 94 7 14 0 113 4 21 0 115 4 25 0 118 4 29 0 123 1 181 0 130 6 25 0 139 7 129 0 171 7 129 0 177 7 129 0 236 7 129 0 237 7 137 0 238 7 129 0 239 7 129 0 240 7 129 0 252 7 129 0 253 7 129 0 254 7 129 0 255 7 129 1 0 7 129 1 1 7 129 1 3 7 129 1 4 7 129 1 5 7 129 1 7 7 189 1 8 7 129 1 9 7 197 1 30 7 129 1 38 7 205 1 39 7 129 1 41 7 213 1 42 7 129 1 45 4 53 1 46 7 129 1 47 4 61 1 48 7 129 1 50 7 129 1 51 7 129 1 53 4 73 1 54 7 129 1 55 4 81 1 56 7 129 1 58 7 129 1 59 7 129 1 61 7 253 1 62 7 129 1 67 4 97 1 68] 
#[1 2 26 0 3 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 12 153 0 235] 
#[1 2 26 0 3 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 40 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 12 157 0 235] 
#[1 2 41 0 2 5 113 0 6 0 50 0 137 12 161 0 194] 
#[1 11 205 0 2 5 113 0 6 5 182 0 137 12 165 1 43] 
#[1 2 41 0 2 5 113 0 6 0 50 0 9 0 50 0 137 12 169 0 194] 
#[0 12 173 0 137] 
#[0 12 177 0 3] 
#[0 12 181 0 137] 
#[0 12 185 0 139] 
#[0 12 189 0 139] 
#[1 4 153 0 27 4 153 0 81 4 153 0 123 1 46 0 131 1 50 0 139 12 193 1 27 4 145 1 28 4 149 1 29 4 153 1 32] 
#[1 4 157 0 9 1 54 0 30 1 54 0 33 1 54 0 57 1 54 0 59 1 54 0 74 1 54 0 96 1 54 0 97 1 54 0 112 1 54 0 127 1 54 0 128 1 54 0 137 12 197 1 6] 
#[1 3 153 0 16 12 201 0 31 12 201 0 87 3 157 0 130 1 14 0 137 12 201 0 191] 
#[1 7 18 0 3 11 77 0 17 11 77 0 22 7 18 0 23 7 18 0 24 11 77 0 25 7 18 0 26 7 18 0 27 7 18 0 28 11 77 0 31 7 18 0 32 10 241 0 33 11 77 0 38 7 18 0 40 11 77 0 42 7 18 0 43 6 77 0 44 11 77 0 45 11 77 0 47 7 18 0 48 6 81 0 51 7 18 0 52 7 18 0 61 11 77 0 62 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 7 18 0 88 7 18 0 89 7 18 0 91 7 18 0 92 7 18 0 93 7 18 0 94 11 77 0 100 11 77 0 101 7 18 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 18 0 113 7 18 0 115 7 18 0 118 11 77 0 120 7 18 0 123 11 77 0 124 7 18 0 130 7 18 0 139 11 65 1 23 11 65 1 24 11 65 1 25 11 77 1 26] 
#[1 7 22 0 3 11 77 0 17 11 77 0 22 7 22 0 23 7 22 0 24 11 77 0 25 7 22 0 26 7 22 0 27 7 22 0 28 11 77 0 31 7 22 0 32 10 241 0 33 11 77 0 38 7 22 0 40 11 77 0 42 7 22 0 43 6 77 0 44 11 77 0 45 11 77 0 47 7 22 0 48 6 81 0 51 7 22 0 52 7 22 0 61 11 77 0 62 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 7 22 0 88 7 22 0 89 7 22 0 91 7 22 0 92 7 22 0 93 7 22 0 94 11 77 0 100 11 77 0 101 7 22 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 22 0 113 7 22 0 115 7 22 0 118 11 77 0 120 7 22 0 123 11 77 0 124 7 22 0 130 7 22 0 139 11 65 1 23 11 65 1 24 11 65 1 25 11 77 1 26] 
#[1 7 26 0 3 11 77 0 17 11 77 0 22 7 26 0 23 7 26 0 24 11 77 0 25 7 26 0 26 7 26 0 27 7 26 0 28 11 77 0 31 7 26 0 32 10 241 0 33 11 77 0 38 7 26 0 40 11 77 0 42 7 26 0 43 6 77 0 44 11 77 0 45 11 77 0 47 7 26 0 48 6 81 0 51 7 26 0 52 7 26 0 61 11 77 0 62 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 7 26 0 88 7 26 0 89 7 26 0 91 7 26 0 92 7 26 0 93 7 26 0 94 11 77 0 100 11 77 0 101 7 26 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 26 0 113 7 26 0 115 7 26 0 118 11 77 0 120 7 26 0 123 11 77 0 124 7 26 0 130 7 26 0 139 11 65 1 23 11 65 1 24 11 65 1 25 11 77 1 26] 
#[0 7 30 0 31 0 87 0 137] 
#[0 7 34 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 12 205 0 50] 
#[0 7 38 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 42 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 26 0 26 2 26 0 27 2 26 0 28 7 46 0 31 2 26 0 32 2 26 0 40 2 26 0 52 7 46 0 87 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 7 46 0 137 2 26 0 139 12 209 0 225 5 137 0 235] 
#[0 0 190 0 3 0 5 0 6 0 11] 
#[1 7 50 0 3 7 50 0 5 3 121 0 6 2 133 0 11 3 125 0 188] 
#[1 12 213 0 3 12 217 0 5] 
#[1 2 246 0 40 2 246 0 88 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 113 12 221 0 226] 
#[0 7 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 128] 
#[0 7 58 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 12 225 0 211 12 225 1 111 1 173 1 116 1 177 1 127] 
#[1 7 62 0 26 7 62 0 40 7 62 0 52 7 62 0 89 7 62 0 91 12 229 0 250] 
#[1 7 66 0 40 7 66 0 48 7 66 0 61 4 113 0 137] 
#[0 7 70 0 5 0 137] 
#[1 12 233 0 5 12 237 0 137] 
#[0 7 74 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 78 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 82 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 86 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 90 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 1 87 0 31 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 12 241 0 87 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 1 14 0 137 12 241 0 191 3 149 1 121] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 48 6 74 0 51 6 74 0 52 6 74 0 56 6 74 0 61 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 100 6 74 0 101 6 74 0 104 6 74 0 105 6 74 0 110 6 74 0 111 6 74 0 113 6 74 0 115 6 74 0 118 6 74 0 120 6 74 0 123 6 74 0 124 6 74 0 130 6 74 0 139 12 245 1 22] 
#[1 7 94 0 3 11 77 0 17 7 94 0 21 11 77 0 22 7 94 0 23 7 94 0 24 11 77 0 25 7 94 0 26 7 94 0 27 7 94 0 28 11 77 0 31 7 94 0 32 10 241 0 33 11 77 0 38 7 94 0 40 11 77 0 42 7 94 0 44 11 77 0 45 11 77 0 47 7 94 0 48 7 94 0 51 7 94 0 52 7 94 0 56 7 94 0 61 11 77 0 62 7 94 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 7 94 0 88 7 94 0 89 7 94 0 91 7 94 0 92 7 94 0 93 7 94 0 94 11 77 0 100 11 77 0 101 7 94 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 94 0 113 7 94 0 115 7 94 0 118 11 77 0 120 7 94 0 123 11 77 0 124 7 94 0 130 7 94 0 139 12 249 1 24 11 77 1 26] 
#[0 7 98 0 137] 
#[0 12 253 0 137] 
#[1 12 125 0 14 6 222 0 137 13 1 1 31] 
#[0 13 5 0 137] 
#[0 13 9 0 137] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 13 13 0 137 3 149 1 121] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 13 17 0 137 3 149 1 121] 
#[0 7 102 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 13 21 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 13 21 1 100 13 21 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127 0 14 1 128] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 13 25 0 211 13 25 1 111 1 173 1 116 1 177 1 127] 
#[0 7 106 0 3 0 131 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 25 0 143 0 177 0 147 0 181 0 210 13 29 1 71 2 25 1 72 0 189 1 73 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 79 0 213 1 85 0 217 1 94 0 221 1 96 0 225 1 97 0 229 1 99 2 25 1 100 2 25 1 101 0 241 1 102 0 245 1 103 0 245 1 104 0 253 1 105 0 245 1 106 1 5 1 107 0 245 1 108 0 245 1 109 0 245 1 110 0 245 1 111 1 25 1 116 0 245 1 117 1 33 1 127] 
#[1 7 110 0 3 7 110 0 5 7 110 0 14 7 110 0 16 11 77 0 17 7 110 0 21 11 77 0 22 7 110 0 23 7 110 0 24 11 77 0 25 7 110 0 26 7 110 0 27 7 110 0 28 7 110 0 30 1 91 0 31 7 110 0 32 1 95 0 33 7 110 0 36 11 77 0 38 7 110 0 40 11 77 0 42 7 110 0 43 6 77 0 44 11 77 0 45 11 77 0 47 7 110 0 48 6 81 0 51 7 110 0 52 7 110 0 56 7 110 0 57 7 110 0 59 7 110 0 61 11 77 0 62 7 110 0 65 11 77 0 67 11 13 0 70 11 77 0 73 7 110 0 74 7 110 0 77 11 77 0 82 11 77 0 83 11 77 0 86 1 99 0 87 7 110 0 88 7 110 0 89 7 110 0 91 7 110 0 92 7 110 0 93 7 110 0 94 7 110 0 96 7 110 0 97 11 77 0 100 11 77 0 101 7 110 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 110 0 112 7 110 0 113 7 110 0 115 7 110 0 118 11 77 0 120 7 110 0 123 11 77 0 124 7 110 0 127 7 110 0 128 7 110 0 130 7 110 0 131 7 110 0 132 7 110 0 137 7 110 0 139 11 65 1 23 11 65 1 24 11 65 1 25 11 77 1 26 7 110 1 128] 
#[0 7 114 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 13 33 0 140] 
#[0 13 37 0 77] 
#[1 7 118 0 3 7 118 0 24 7 97 0 26 4 1 0 27 7 101 0 28 7 105 0 32 7 118 0 40 7 109 0 52 7 118 0 88 7 113 0 89 7 117 0 91 7 118 0 92 7 118 0 93 7 118 0 94 7 118 0 113 4 21 0 115 4 25 0 118 4 29 0 123 1 181 0 130 6 25 0 139 7 129 0 171 7 129 0 177 7 129 0 236 7 129 0 237 7 137 0 238 7 129 0 239 7 129 0 240 7 129 0 252 7 129 0 253 7 129 0 254 7 129 0 255 7 129 1 0 7 129 1 1 7 129 1 3 7 129 1 4 7 129 1 5 7 129 1 7 7 189 1 8 7 129 1 9 7 197 1 30 7 129 1 38 7 205 1 39 7 129 1 41 7 213 1 42 7 129 1 45 4 53 1 46 7 129 1 47 4 61 1 48 7 129 1 50 7 129 1 51 7 129 1 53 4 73 1 54 7 129 1 55 4 81 1 56 7 129 1 58 7 129 1 59 7 129 1 61 7 253 1 62 7 129 1 67 4 97 1 68] 
#[1 7 122 0 3 7 122 0 24 7 97 0 26 4 1 0 27 7 101 0 28 7 105 0 32 7 122 0 40 7 109 0 52 7 122 0 88 7 113 0 89 7 117 0 91 7 122 0 92 7 122 0 93 7 122 0 94 7 122 0 113 4 21 0 115 4 25 0 118 4 29 0 123 1 181 0 130 6 25 0 139 7 129 0 171 7 129 0 177 7 129 0 236 7 129 0 237 7 137 0 238 7 129 0 239 7 129 0 240 7 129 0 252 7 129 0 253 7 129 0 254 7 129 0 255 7 129 1 0 7 129 1 1 7 129 1 3 7 129 1 4 7 129 1 5 7 129 1 7 7 189 1 8 7 129 1 9 7 197 1 30 7 129 1 38 7 205 1 39 7 129 1 41 7 213 1 42 7 129 1 45 4 53 1 46 7 129 1 47 4 61 1 48 7 129 1 50 7 129 1 51 7 129 1 53 4 73 1 54 7 129 1 55 4 81 1 56 7 129 1 58 7 129 1 59 7 129 1 61 7 253 1 62 7 129 1 67 4 97 1 68] 
#[0 13 41 0 137] 
#[0 13 45 0 137] 
#[1 4 157 0 9 1 54 0 137 13 49 1 6] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 100 6 74 0 101 6 74 0 104 6 74 0 105 6 74 0 110 6 74 0 111 6 74 0 113 6 74 0 115 6 74 0 118 6 74 0 120 6 74 0 123 6 74 0 124 6 74 0 130 6 74 0 139 13 53 1 22] 
#[0 7 126 0 137] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 100 6 74 0 101 6 74 0 104 6 74 0 105 6 74 0 110 6 74 0 111 6 74 0 113 6 74 0 115 6 74 0 118 6 74 0 120 6 74 0 123 6 74 0 124 6 74 0 130 6 74 0 139 13 57 1 22] 
#[0 13 61 0 137] 
#[0 13 65 0 137] 
#[0 13 69 0 131] 
#[1 7 130 0 30 7 130 0 33 7 130 0 57 7 130 0 59 7 130 0 74 7 130 0 96 7 130 0 97 7 130 0 112 7 130 0 127 7 130 0 128 7 130 0 137 13 73 1 10] 
#[0 13 77 0 137] 
#[1 3 97 0 139 13 81 0 234] 
#[1 2 246 0 40 2 246 0 88 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 113 13 85 0 226] 
#[0 7 134 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 13 0 140 13 89 0 190] 
#[1 13 93 0 40 9 133 0 88 9 137 0 92 9 141 0 93 9 145 0 94 9 149 0 113 9 157 0 227 9 157 0 228 9 157 0 229 9 157 0 230 9 157 0 231] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 13 97 0 131 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 13 101 0 26 13 105 0 40 4 5 0 52 4 13 0 89 7 117 0 91 13 109 0 251 13 109 0 252 13 109 0 253 13 109 1 0 13 109 1 1 13 109 1 3 13 109 1 4 13 109 1 5 13 109 1 7 7 189 1 8 13 109 1 9 13 109 1 45 4 53 1 46 13 109 1 47 4 61 1 48 13 109 1 50 13 109 1 51 13 109 1 53 4 73 1 54 13 109 1 55 4 81 1 56 13 109 1 58 13 109 1 59 13 109 1 61 7 253 1 62] 
#[0 13 121 0 139] 
#[0 7 138 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 13 125 0 31 6 78 0 137 13 125 0 224] 
#[1 7 142 0 3 11 77 0 17 7 142 0 21 11 77 0 22 7 142 0 23 7 142 0 24 11 77 0 25 7 142 0 26 7 142 0 27 7 142 0 28 11 77 0 31 7 142 0 32 10 241 0 33 11 77 0 38 7 142 0 40 11 77 0 42 7 142 0 44 11 77 0 45 11 77 0 47 7 142 0 48 7 142 0 51 7 142 0 52 7 142 0 56 7 142 0 61 11 77 0 62 7 142 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 7 142 0 88 7 142 0 89 7 142 0 91 7 142 0 92 7 142 0 93 7 142 0 94 11 77 0 100 11 77 0 101 7 142 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 142 0 113 7 142 0 115 7 142 0 118 11 77 0 120 7 142 0 123 11 77 0 124 7 142 0 130 7 142 0 139 12 249 1 24 11 77 1 26] 
#[0 7 146 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139] 
#[0 7 150 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 13 129 0 137] 
#[0 7 154 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 7 158 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 7 162 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 7 166 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 128] 
#[0 7 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 128] 
#[1 3 141 0 2 7 174 0 3 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 7 174 0 131 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 7 174 0 137 3 149 1 121] 
#[1 7 178 0 39 7 178 0 40 7 178 0 49 7 178 0 78 4 113 0 137] 
#[0 7 182 0 3 0 5] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 13 133 0 204 13 137 0 205 13 141 0 206 13 145 0 207 1 149 0 210 13 149 0 211 13 149 1 111 1 173 1 116 1 177 1 127] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 100 6 74 0 101 6 74 0 104 6 74 0 105 6 74 0 110 6 74 0 111 6 74 0 113 6 74 0 115 6 74 0 118 6 74 0 120 6 74 0 123 6 74 0 124 6 74 0 130 6 74 0 139 13 153 1 22] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 100 6 74 0 101 6 74 0 104 6 74 0 105 6 74 0 110 6 74 0 111 6 74 0 113 6 74 0 115 6 74 0 118 6 74 0 120 6 74 0 123 6 74 0 124 6 74 0 130 6 74 0 139 13 157 1 22] 
#[0 13 161 0 137] 
#[1 7 186 0 3 11 77 0 17 7 186 0 21 11 77 0 22 7 186 0 23 7 186 0 24 11 77 0 25 7 186 0 26 7 186 0 27 7 186 0 28 11 77 0 31 7 186 0 32 10 241 0 33 11 77 0 38 7 186 0 40 11 77 0 42 7 186 0 44 11 77 0 45 11 77 0 47 7 186 0 51 7 186 0 52 11 77 0 62 7 186 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 7 186 0 88 7 186 0 89 7 186 0 91 7 186 0 92 7 186 0 93 7 186 0 94 11 77 0 100 11 77 0 101 7 186 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 186 0 113 7 186 0 115 7 186 0 118 11 77 0 120 7 186 0 123 11 77 0 124 7 186 0 130 7 186 0 139 12 249 1 24 11 77 1 26] 
#[1 7 190 0 3 11 77 0 17 7 190 0 21 11 77 0 22 7 190 0 23 7 190 0 24 11 77 0 25 7 190 0 26 7 190 0 27 7 190 0 28 11 77 0 31 7 190 0 32 10 241 0 33 11 77 0 38 7 190 0 40 11 77 0 42 7 190 0 44 11 77 0 45 11 77 0 47 7 190 0 51 7 190 0 52 11 77 0 62 7 190 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 7 190 0 88 7 190 0 89 7 190 0 91 7 190 0 92 7 190 0 93 7 190 0 94 11 77 0 100 11 77 0 101 7 190 0 104 11 77 0 105 11 77 0 110 11 77 0 111 7 190 0 113 7 190 0 115 7 190 0 118 11 77 0 120 7 190 0 123 11 77 0 124 7 190 0 130 7 190 0 139 12 249 1 24 11 77 1 26] 
#[0 7 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 198 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 202 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 165 0 30 13 169 0 33 13 173 0 57 13 177 0 59 13 181 0 74 13 185 0 96 13 189 0 97 13 193 0 112 13 197 0 127 13 201 0 128 13 205 0 137 13 209 1 12 13 213 1 13 13 217 1 14 13 221 1 15 13 225 1 16 13 229 1 17 13 233 1 19] 
#[0 7 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 41 0 2 5 113 0 6 4 178 0 26 4 178 0 27 4 178 0 28 4 178 0 31 4 178 0 32 4 178 0 40 4 178 0 52 4 178 0 87 4 178 0 88 4 178 0 89 4 178 0 91 4 178 0 92 4 178 0 93 4 178 0 94 4 178 0 113 4 178 0 115 4 178 0 118 4 178 0 123 4 178 0 130 4 178 0 137 4 178 0 139 13 237 0 232] 
#[1 13 241 0 40 9 133 0 88 9 137 0 92 9 141 0 93 9 145 0 94 9 149 0 113 9 157 0 227 9 157 0 228 9 157 0 229 9 157 0 230 9 157 0 231] 
#[1 7 210 0 3 7 210 0 5 3 121 0 6 2 133 0 11 3 125 0 188] 
#[0 7 214 0 31 0 87 0 137] 
#[0 7 218 0 26 0 40 0 52 0 89 0 91] 
#[1 4 5 0 52 9 185 0 79 4 13 0 89 7 117 0 91 9 189 1 8 9 193 1 46 9 197 1 48 9 201 1 54 9 205 1 56] 
#[0 7 222 0 31 0 87 0 137] 
#[0 7 226 0 26 0 40 0 52 0 89 0 91] 
#[0 7 230 0 26 0 40 0 52 0 89 0 91] 
#[0 7 234 0 26 0 40 0 52 0 89 0 91] 
#[0 7 238 0 5 0 137] 
#[0 13 245 0 137] 
#[0 7 242 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 234 0 3 1 234 0 40 13 249 0 137 13 253 1 86] 
#[0 7 246 0 3 0 40 0 137] 
#[1 14 1 0 5 14 5 0 9] 
#[0 7 250 0 5 0 9] 
#[1 3 141 0 2 3 149 0 4 7 254 0 5 3 145 0 6 3 149 0 8 7 254 0 9 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 3 149 0 35 3 149 0 58 3 149 0 64 3 149 0 71 3 149 0 80 3 149 0 108 3 149 0 109 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 3 149 1 121] 
#[1 8 2 0 3 11 77 0 17 8 2 0 21 11 77 0 22 8 2 0 23 8 2 0 24 11 77 0 25 8 2 0 26 8 2 0 27 8 2 0 28 11 77 0 31 8 2 0 32 10 241 0 33 11 77 0 38 8 2 0 40 11 77 0 42 8 2 0 44 11 77 0 45 11 77 0 47 8 2 0 51 8 2 0 52 11 77 0 62 8 2 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 8 2 0 88 8 2 0 89 8 2 0 91 8 2 0 92 8 2 0 93 8 2 0 94 11 77 0 100 11 77 0 101 8 2 0 104 11 77 0 105 11 77 0 110 11 77 0 111 8 2 0 113 8 2 0 115 8 2 0 118 11 77 0 120 8 2 0 123 11 77 0 124 8 2 0 130 8 2 0 139 12 249 1 24 11 77 1 26] 
#[1 8 6 0 3 11 77 0 17 8 6 0 21 11 77 0 22 8 6 0 23 8 6 0 24 11 77 0 25 8 6 0 26 8 6 0 27 8 6 0 28 11 77 0 31 8 6 0 32 10 241 0 33 11 77 0 38 8 6 0 40 11 77 0 42 8 6 0 44 11 77 0 45 11 77 0 47 8 6 0 51 8 6 0 52 11 77 0 62 8 6 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 8 6 0 88 8 6 0 89 8 6 0 91 8 6 0 92 8 6 0 93 8 6 0 94 11 77 0 100 11 77 0 101 8 6 0 104 11 77 0 105 11 77 0 110 11 77 0 111 8 6 0 113 8 6 0 115 8 6 0 118 11 77 0 120 8 6 0 123 11 77 0 124 8 6 0 130 8 6 0 139 12 249 1 24 11 77 1 26] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 100 6 74 0 101 6 74 0 104 6 74 0 105 6 74 0 110 6 74 0 111 6 74 0 113 6 74 0 115 6 74 0 118 6 74 0 120 6 74 0 123 6 74 0 124 6 74 0 130 6 74 0 139 14 9 1 22] 
#[1 3 13 0 2 1 41 0 15 8 10 0 30 8 10 0 33 8 10 0 57 8 10 0 59 8 10 0 74 1 53 0 75 8 10 0 96 8 10 0 97 8 10 0 112 8 10 0 127 8 10 0 128 0 153 0 130 1 81 0 135 1 85 0 136 8 10 0 137 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 14 13 0 211 14 13 1 111 1 173 1 116 1 177 1 127] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 14 17 0 211 14 17 1 111 1 173 1 116 1 177 1 127] 
#[1 14 21 0 139 14 25 1 18] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 14 29 0 211 14 29 1 111 1 173 1 116 1 177 1 127] 
#[0 8 14 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 14 33 1 103 14 33 1 104 0 253 1 105 14 33 1 106 1 5 1 107 14 33 1 108 14 33 1 109 14 33 1 110 14 33 1 111 1 25 1 116 14 33 1 117 1 33 1 127] 
#[0 14 37 0 33] 
#[0 14 41 0 139] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 9 0 139 0 181 0 141 1 25 0 143 0 177 0 147 0 181 0 210 14 45 1 103 14 45 1 104 0 253 1 105 14 45 1 106 1 5 1 107 14 45 1 108 14 45 1 109 14 45 1 110 14 45 1 111 1 25 1 116 14 45 1 117 1 33 1 127] 
#[0 14 49 0 33] 
#[1 8 18 0 3 8 18 0 24 8 18 0 26 8 18 0 27 8 18 0 28 14 53 0 30 8 18 0 32 8 18 0 40 8 18 0 52 8 18 0 88 8 18 0 89 8 18 0 91 8 18 0 92 8 18 0 93 8 18 0 94 8 18 0 113 8 18 0 115 8 18 0 118 8 18 0 123 8 18 0 130 8 18 0 139 14 57 1 20] 
#[0 8 22 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 26 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 30 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 34 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 38 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 42 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 46 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 26 0 26 2 26 0 27 2 26 0 28 8 50 0 31 2 26 0 32 2 26 0 40 2 26 0 52 8 50 0 87 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 8 50 0 137 2 26 0 139 14 61 0 225 5 137 0 235] 
#[0 8 54 0 31 0 87 0 137] 
#[0 8 58 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 13 0 2 2 222 0 3 1 41 0 15 2 222 0 40 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 14 65 0 205 13 141 0 206 13 145 0 207 1 149 0 210 13 149 0 211 13 149 1 111 1 173 1 116 1 177 1 127] 
#[0 8 62 0 3 0 40] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 14 69 0 207 1 149 0 210 13 149 0 211 13 149 1 111 1 173 1 116 1 177 1 127] 
#[0 14 73 0 2] 
#[1 8 66 0 3 11 77 0 17 8 66 0 21 11 77 0 22 8 66 0 23 8 66 0 24 11 77 0 25 8 66 0 26 8 66 0 27 8 66 0 28 11 77 0 31 8 66 0 32 10 241 0 33 11 77 0 38 8 66 0 40 11 77 0 42 8 66 0 44 11 77 0 45 11 77 0 47 8 66 0 51 8 66 0 52 11 77 0 62 8 66 0 65 11 77 0 67 11 13 0 70 11 77 0 73 11 77 0 82 11 77 0 83 11 77 0 86 11 77 0 87 8 66 0 88 8 66 0 89 8 66 0 91 8 66 0 92 8 66 0 93 8 66 0 94 11 77 0 100 11 77 0 101 8 66 0 104 11 77 0 105 11 77 0 110 11 77 0 111 8 66 0 113 8 66 0 115 8 66 0 118 11 77 0 120 8 66 0 123 11 77 0 124 8 66 0 130 8 66 0 139 12 249 1 24 11 77 1 26] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 8 70 0 30 8 70 0 33 3 149 0 35 8 70 0 57 3 149 0 58 8 70 0 59 3 149 0 64 3 149 0 71 8 70 0 74 3 149 0 80 8 70 0 96 8 70 0 97 3 149 0 108 3 149 0 109 8 70 0 112 8 70 0 127 8 70 0 128 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 8 70 0 137 3 149 1 121] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 8 74 0 30 8 74 0 33 3 149 0 35 8 74 0 57 3 149 0 58 8 74 0 59 3 149 0 64 3 149 0 71 8 74 0 74 3 149 0 80 8 74 0 96 8 74 0 97 3 149 0 108 3 149 0 109 8 74 0 112 8 74 0 127 8 74 0 128 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 8 74 0 137 3 149 1 121] 
#[0 8 78 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 77 0 5 8 82 0 30 8 82 0 33 8 82 0 57 8 82 0 59 8 82 0 74 8 82 0 96 8 82 0 97 8 82 0 112 8 82 0 127 8 82 0 128 8 82 0 137] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 8 86 0 30 8 86 0 33 3 149 0 35 8 86 0 57 3 149 0 58 8 86 0 59 3 149 0 64 3 149 0 71 8 86 0 74 3 149 0 80 8 86 0 96 8 86 0 97 3 149 0 108 3 149 0 109 8 86 0 112 8 86 0 127 8 86 0 128 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 8 86 0 137 3 149 1 121] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 8 90 0 30 8 90 0 33 2 253 0 35 8 90 0 57 2 253 0 58 8 90 0 59 2 253 0 64 2 253 0 71 8 90 0 74 2 253 0 80 8 90 0 96 8 90 0 97 2 253 0 108 2 253 0 109 8 90 0 112 8 90 0 127 8 90 0 128 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 8 90 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 14 81 0 211 14 81 1 111 1 173 1 116 1 177 1 127] 
#[0 8 94 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 149 0 2 2 253 0 4 2 157 0 6 2 253 0 8 2 165 0 10 2 253 0 11 2 253 0 12 2 253 0 13 2 253 0 14 2 253 0 18 2 253 0 20 8 98 0 30 8 98 0 33 2 253 0 35 8 98 0 57 2 253 0 58 8 98 0 59 2 253 0 64 2 253 0 71 8 98 0 74 2 253 0 80 8 98 0 96 8 98 0 97 2 253 0 108 2 253 0 109 8 98 0 112 8 98 0 127 8 98 0 128 2 253 0 129 2 225 0 130 2 253 0 132 2 253 0 133 2 253 0 135 2 253 0 136 8 98 0 137 2 245 0 138 2 249 1 114 2 253 1 120 2 253 1 121] 
#[1 3 13 0 2 1 41 0 15 1 53 0 75 0 153 0 130 1 81 0 135 1 85 0 136 3 61 0 140 1 149 0 141 1 173 0 143 1 101 0 147 1 149 0 210 14 85 0 211 14 85 1 111 1 173 1 116 1 177 1 127] 
#[0 14 89 0 137] 
#[0 8 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 246 0 40 2 246 0 88 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 113 14 93 0 226] 
#[0 8 106 0 3 0 40 0 137] 
#[0 8 110 0 5 0 9] 
#[1 2 26 0 3 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 32 2 26 0 52 2 26 0 88 2 26 0 89 2 26 0 91 2 26 0 92 2 26 0 93 2 26 0 94 2 26 0 113 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 130 2 26 0 139 14 97 0 201 5 133 0 225 5 137 0 235] 
#[0 14 101 0 139] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 8 114 0 30 8 114 0 33 3 149 0 35 8 114 0 57 3 149 0 58 8 114 0 59 3 149 0 64 3 149 0 71 8 114 0 74 3 149 0 80 8 114 0 96 8 114 0 97 3 149 0 108 3 149 0 109 8 114 0 112 8 114 0 127 8 114 0 128 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 8 114 0 137 3 149 1 121] 
#[1 3 141 0 2 3 149 0 4 3 145 0 6 3 149 0 8 3 149 0 11 3 149 0 12 3 149 0 13 3 149 0 18 3 149 0 20 8 118 0 30 8 118 0 33 3 149 0 35 8 118 0 57 3 149 0 58 8 118 0 59 3 149 0 64 3 149 0 71 8 118 0 74 3 149 0 80 8 118 0 96 8 118 0 97 3 149 0 108 3 149 0 109 8 118 0 112 8 118 0 127 8 118 0 128 3 149 0 129 3 149 0 132 3 149 0 133 3 149 0 135 3 149 0 136 8 118 0 137 3 149 1 121] 
#[0 8 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 14 105 0 40 9 133 0 88 9 137 0 92 9 141 0 93 9 145 0 94 9 149 0 113 9 157 0 227 9 157 0 228 9 157 0 229 9 157 0 230 9 157 0 231] 
#[0 14 109 0 3] 
#[0 8 126 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 130 0 31 0 87 0 137] 
#[0 8 134 0 3 0 40 0 137]
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
