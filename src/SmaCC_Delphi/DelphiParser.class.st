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
#[ 0 18 1 105] 
#[ 0 146 0 150] 
#[ 0 150 0 170] 
#[ 0 206 0 210] 
#[ 1 2 4 5] 
#[ 1 2 4 37] 
#[ 1 242 3 233] 
#[ 1 242 3 237] 
#[ 1 242 3 241] 
#[ 1 242 3 245] 
#[ 1 242 4 5] 
#[ 1 242 4 37] 
#[ 1 242 4 41] 
#[ 2 14 3 233] 
#[ 2 14 3 237] 
#[ 2 14 3 241] 
#[ 2 14 3 245] 
#[ 2 14 4 5] 
#[ 2 14 4 37] 
#[ 2 14 4 41] 
#[ 2 46 3 233] 
#[ 2 46 3 237] 
#[ 2 46 3 241] 
#[ 2 46 3 245] 
#[ 2 46 4 5] 
#[ 2 46 4 37] 
#[ 2 46 4 41] 
#[ 2 50 3 233] 
#[ 2 50 3 237] 
#[ 2 50 3 241] 
#[ 2 50 3 245] 
#[ 2 50 4 5] 
#[ 2 50 4 37] 
#[ 2 50 4 41] 
#[ 2 186 7 13] 
#[ 2 194 3 233] 
#[ 2 194 3 237] 
#[ 2 194 3 241] 
#[ 2 194 4 5] 
#[ 2 194 4 37] 
#[ 2 194 4 41] 
#[ 2 198 3 233] 
#[ 2 198 3 237] 
#[ 2 198 3 241] 
#[ 2 198 4 5] 
#[ 2 198 4 37] 
#[ 2 198 4 41] 
#[ 2 210 3 233] 
#[ 2 210 3 237] 
#[ 2 210 3 241] 
#[ 2 210 4 5] 
#[ 2 210 4 37] 
#[ 2 210 4 41] 
#[ 2 214 3 233] 
#[ 2 214 3 237] 
#[ 2 214 3 241] 
#[ 2 214 4 5] 
#[ 2 214 4 37] 
#[ 2 214 4 41] 
#[ 3 214 3 233] 
#[ 3 214 3 237] 
#[ 3 214 3 241] 
#[ 3 214 3 245] 
#[ 3 214 4 5] 
#[ 3 214 4 37] 
#[ 3 214 4 41] 
#[ 3 222 3 233] 
#[ 3 222 3 237] 
#[ 3 222 3 241] 
#[ 3 222 3 245] 
#[ 3 222 4 5] 
#[ 3 222 4 37] 
#[ 3 222 4 41] 
#[ 3 246 4 5] 
#[ 3 246 4 37] 
#[ 3 233 4 22] 
#[ 3 237 4 22] 
#[ 3 241 4 22] 
#[ 4 5 4 22] 
#[ 4 22 4 37] 
#[ 4 22 4 41] 
#[ 0 206 11 117] 
#[ 0 230 5 86] 
#[ 0 234 5 90] 
#[ 6 122 10 45] 
#[ 6 122 10 49] 
#[ 6 122 10 97] 
#[ 8 26 10 45] 
#[ 8 26 10 49] 
#[ 8 26 10 97]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2020-11-30T08:00:14.419901-06:00'
]

{ #category : #generated }
DelphiParser class >> definitionComment [
"%start File Statement SimpleDefinedType NamedDefinedType ConstantValue Variable Argument NewClassComponent Attribute CaseOption;

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
	DeprecatedMethodModifier
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
	InstantiatedGenericExpression
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
	VariableStatement
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
%hierarchy CompilationFile (
	LibraryFile
	PackageFile
	ProgramFile
	UnitFile
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
	: ""PROGRAM"" 'programToken' FullModuleName 'programName' OptionalPlatform OptionalDeprecated 'deprecated' <semicolon> 'semicolon' 
	;
LibraryFile
	: LibraryLine UsesList Exports MainMethod 'main' ""."" 'period'
	;
LibraryLine
	: ""LIBRARY"" 'libraryToken' FullModuleName 'libraryName' OptionalPlatform OptionalDeprecated 'deprecated' <semicolon> 'semicolon' 
	;
Exports
	: 
	| Exports ExportsDefinition 'export'
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
	: (""UNIT"" 'unitToken' | ""NAMESPACE"" 'unitToken') FullModuleName 'unitName' OptionalPlatform OptionalDeprecated 'deprecated' <semicolon> 'semicolon' 
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
	: <identifier> 'name' OptionalType ""="" 'equalToken' ConstantExpression 'expression' OptionalPlatform OptionalDeprecated 'deprecated' <semicolon> 'semicolon' {{ConstantDefinition}} 
	;
ResourceStringList
	: ""RESOURCESTRING"" 'resourceStringToken' Resources {{ResourceStringList}}
	;
Resources
	: Resource 'definition'
	| Resources Resource 'definition'
	;
Resource
	: <identifier> 'name' ""="" 'equalToken' ConstantExpression 'value' OptionalDeprecated 'deprecated' <semicolon> 'semicolon' {{ResourceStringDefinition}} 
	;
DefinedTypeList
	: ""TYPE"" 'typeToken' NamedDefinedTypes {{DefinedTypeList}}
	;
NamedDefinedTypes
	: NamedDefinedType 'definition'
	| NamedDefinedTypes NamedDefinedType 'definition'
	;
NamedDefinedType
	: Attributes? <identifier> 'name'  OptionalGenericTypeArguments ""="" 'equalToken' DefinedType {{NamedDefinedType}}
	;
OptionalGenericTypeArguments
	:
	| ""<"" 'left' GenericTypeArgumentList <gt> 'right'
	;
GenericTypeArgumentList
	: GenericTypeArgument 'genericTypeArgument'
	|  GenericTypeArgumentList "","" 'comma' GenericTypeArgument 'genericTypeArgument'
	;
GenericTypeArgument
	: <identifier> 'argument' {{TypeArgument}}
	| <identifier> 'argument' "":"" 'colon' Type 'typeConstraint' {{TypeArgument}}
	;
DefinedType 
	: SimpleDefinedType 'type' OptionalPlatform OptionalDeprecated 'deprecated' <semicolon> 'semicolon'
	| EnumType 'type' <semicolon> 'semicolon'
	| AnonymousProcedureType 'type'
	| AnonymousFunctionType 'type'
	| ClassOrInterfaceType 'type' OptionalPlatform OptionalDeprecated 'deprecated' <semicolon> 'semicolon'
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
	: InsideGeneric ""<"" 'left' InstantiatedGenericTypeArgumentList OutsideGeneric <gt> 'right'
	;
InsideGeneric
	: [self genericCount: self genericCount + 1. nil]
	;
OutsideGeneric
	: [self genericCount: self genericCount - 1. nil]
	;
InstantiatedGenericTypeArgumentList
	: SimpleDefinedType 'typeArgument'
	| InstantiatedGenericTypeArgumentList "","" 'comma' SimpleDefinedType 'typeArgument'
	;
NamedType
	: <constantIdentifier> 'name' {{VariableExpression}}
	| ""REFERENCE"" 'name' {{VariableExpression}}
	| NamedType 'expression' ""."" 'period' <constantIdentifier> 'name' {{PropertyExpression}} 
	| NamedType 'type' InstantiatedGenericTypeArguments {{InstantiatedGenericType}}
	#: ConstantExpression 'typeExpression' {{NamedType}} #should be check if we have a valid type
	;
OptionalPlatform
	:
	| ""PLATFORM"" 'modifier'
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
	| ""DEPRECATED"" 'deprecatedToken' <string> 'message'? {{DeprecatedModifier}}
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
	: VariableNames "":"" 'colon' Type 'type' OptionalPlatform OptionalDeprecated 'deprecated' <semicolon> 'semicolon' {{VariableDefinition}}
	| ""CLASS"" 'classToken' VarsVars {{ClassVars}}
	| Vars
	| ConstructorHeader
	| Attributes ConstructorHeader {{ConstructorHeader}}
	| DestructorHeader
	| Attributes DestructorHeader {{DestructorHeader}}
	| NewClassMethodComponent
	| InterfacePropertyComponent
	| InterfaceFunctionAssignment
	| InterfaceProcedureAssignment
	| ConstantValueList
	| DefinedTypeList
	;
NewClassMethodComponent
	: Attributes ProcedureHeader {{ProcedureHeader}}
	| Attributes ClassProcedureHeader {{ClassProcedureHeader}}
	| Attributes FunctionHeader {{FunctionHeader}}
	| Attributes ClassFunctionHeader {{ClassFunctionHeader}}
	| Attributes ClassOperatorHeader {{ClassOperatorHeader}}
	| InterfaceMethodComponent
	;
Attributes
	: Attribute 'annotation'
	| Attributes Attribute 'annotation'
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
	| ""DEPRECATED"" 'modifier' <string> 'message' <semicolon> 'semicolon' {{DeprecatedMethodModifier}}
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
	: ""CLASS"" 'classToken'? ""DESTRUCTOR"" 'destructorToken' QualifiedName 'qualifiedName' OptionalArguments <semicolon> 'semicolon' NonExternalMethodModifiers {{DestructorHeader}}
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
	| VariableStatement {{VariableStatement}}
	| {{EmptyStatement}}
	;
VariableStatement
	: ""VAR"" 'varToken' VariableNames ("":"" 'colon' Type 'type')? "":="" 'assignmentToken' Expression 'value'
	| ""VAR"" 'varToken' VariableNames "":"" 'colon' Type 'type'
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
	: ""FOR"" 'forToken' ForVariableExpression 'variable' "":="" 'assignmentToken' Expression 'fromExpr' ToDownTo  'toToken' Expression 'toExpr' ""DO"" 'doToken' Statement 'statement' 
	;
ForInStatement
	: ""FOR"" 'forToken' ForVariableExpression 'variable' ""IN"" 'inToken' Expression 'fromExpr' ""DO"" 'doToken' Statement 'statement' 
	;
ForVariableExpression
    : VariableExpression
    | ""VAR"" 'varToken' <identifier> 'name' ("":"" 'colon' Type 'type')? {{ForVariable}}
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
	| InstantiatedGenericExpression
	| PropertyExpression 
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
	: Expression 'expression' ""."" 'period' <identifier> 'name' {{}}
	| Expression 'expression' ""."" 'period' ""&OPERATOR"" 'name' {{}}
	;
InstantiatedGenericExpression
	: PropertyExpression 'value' InstantiatedGenericTypeArguments {{}}
	| VariableExpression 'value' InstantiatedGenericTypeArguments {{}}
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
	#(165 0 #reduceActionForUsesList1: 5972993 false ) 
	#(363 0 #reduceActionForBeforeAsm1: 33228801 false ) 
	#(331 0 #reduceActionForStatement15: 29369359 false ) 
	#(205 0 #nil 11803649 false ) 
	#(292 0 #nil 24187905 false ) 
	#(150 1 #reduceActionForFile2: 4301826 false ) 
	#(150 1 #reduceActionForFile3: 4301827 false ) 
	#(150 1 #reduceActionForFile4: 4301828 false ) 
	#(150 1 #reduceActionForFile1: 4301825 false ) 
	#(164 0 #nil 5858305 false ) 
	#(162 1 #reduceActionForUnitFile2: 5470210 false ) 
	#(323 0 #reduceActionForMethodVariables2: 28614658 false ) 
	#(197 0 #reduceActionForOptionalArguments1: 10695681 false ) 
	#(379 1 #reduceActionForInheritedFunctionCall4: 36237316 false ) 
	#(354 1 #reduceActionForRaiseStatement2: 32246786 false ) 
	#(372 1 #reduceActionForVariableExpression1: 35639297 false ) 
	#(213 1 #liftFirstValue: 12495873 false ) 
	#(378 1 #liftFirstValue: 36214785 false ) 
	#(364 1 #reduceActionForExpression9: 33346569 false ) 
	#(364 1 #reduceActionForExpression9: 33346567 false ) 
	#(331 1 #reduceActionForStatement14: 29369358 false ) 
	#(331 1 #reduceActionForStatement13: 29369357 false ) 
	#(331 1 #reduceActionForStatement11: 29369355 false ) 
	#(331 1 #reduceActionForStatement2: 29369346 false ) 
	#(331 1 #reduceActionForStatement3: 29369347 false ) 
	#(331 1 #reduceActionForStatement4: 29369348 false ) 
	#(331 1 #reduceActionForStatement5: 29369349 false ) 
	#(331 1 #reduceActionForStatement6: 29369350 false ) 
	#(331 1 #reduceActionForStatement7: 29369351 false ) 
	#(331 1 #reduceActionForStatement8: 29369352 false ) 
	#(331 1 #reduceActionForStatement9: 29369353 false ) 
	#(331 1 #reduceActionForStatement10: 29369354 false ) 
	#(331 1 #liftFirstValue: 29369356 false ) 
	#(361 1 #liftFirstValue: 33049602 false ) 
	#(331 1 #liftFirstValue: 29369345 false ) 
	#(364 1 #liftFirstValue: 33346563 false ) 
	#(190 0 #reduceActionForInsideGeneric1: 9287681 true ) 
	#(364 1 #liftFirstValue: 33346562 false ) 
	#(364 1 #liftFirstValue: 33346583 false ) 
	#(364 1 #liftFirstValue: 33346582 false ) 
	#(364 1 #liftFirstValue: 33346581 false ) 
	#(364 1 #liftFirstValue: 33346561 false ) 
	#(364 1 #liftFirstValue: 33346578 false ) 
	#(364 1 #reduceActionForExpression9: 33346568 false ) 
	#(364 1 #liftFirstValue: 33346566 false ) 
	#(364 1 #reduceActionForExpression9: 33346580 false ) 
	#(215 0 #reduceActionForConstantArray2: 13578242 false ) 
	#(246 1 #reduceActionForFileType2: 18176002 false ) 
	#(205 1 #liftFirstValue: 11803650 false ) 
	#(193 1 #reduceActionForVariableExpression1: 9590786 false ) 
	#(214 1 #reduceActionForVariableExpression1: 12518403 false ) 
	#(193 1 #reduceActionForVariableExpression1: 9590785 false ) 
	#(214 1 #reduceActionForExpression9: 12518407 false ) 
	#(245 1 #liftFirstValue: 18081796 false ) 
	#(245 1 #liftFirstValue: 18081793 false ) 
	#(188 1 #reduceActionForSimpleDefinedType1: 8720385 false ) 
	#(245 1 #liftFirstValue: 18081794 false ) 
	#(245 1 #liftFirstValue: 18081795 false ) 
	#(188 1 #liftFirstValue: 8720393 false ) 
	#(188 1 #liftFirstValue: 8720388 false ) 
	#(188 1 #liftFirstValue: 8720389 false ) 
	#(188 1 #liftFirstValue: 8720394 false ) 
	#(214 1 #reduceActionForExpression9: 12518401 false ) 
	#(212 1 #liftFirstValue: 12432385 false ) 
	#(188 1 #liftFirstValue: 8720391 false ) 
	#(188 1 #liftFirstValue: 8720387 false ) 
	#(214 1 #liftFirstValue: 12518409 false ) 
	#(214 1 #reduceActionForExpression9: 12518406 false ) 
	#(214 1 #reduceActionForExpression9: 12518402 false ) 
	#(180 0 #reduceActionForOptionalArguments1: 7642113 false ) 
	#(241 1 #reduceActionForAttributes1: 17540097 false ) 
	#(266 0 #reduceActionForOptionalType1: 20128769 false ) 
	#(290 1 #reduceActionForVariableNames1: 24032257 false ) 
	#(292 1 #liftFirstValue: 24187907 false ) 
	#(292 1 #liftFirstValue: 24187908 false ) 
	#(292 1 #liftFirstValue: 24187906 false ) 
	#(239 1 #liftFirstValue: 16670732 false ) 
	#(239 1 #liftFirstValue: 16670733 false ) 
	#(239 1 #liftFirstValue: 16670728 false ) 
	#(239 1 #liftFirstValue: 16670730 false ) 
	#(239 1 #liftFirstValue: 16670731 false ) 
	#(239 1 #liftFirstValue: 16670729 false ) 
	#(240 1 #liftFirstValue: 17203206 false ) 
	#(239 1 #liftFirstValue: 16670724 false ) 
	#(239 1 #liftFirstValue: 16670726 false ) 
	#(257 1 #liftFirstValue: 19307521 false ) 
	#(257 1 #liftFirstValue: 19307522 false ) 
	#(257 1 #liftFirstValue: 19307523 false ) 
	#(257 1 #liftFirstValue: 19307524 false ) 
	#(257 1 #liftFirstValue: 19307525 false ) 
	#(256 1 #liftFirstValue: 19234817 false ) 
	#(267 1 #reduceActionForPropertyHeader1: 20176897 false ) 
	#(256 1 #liftFirstValue: 19234818 false ) 
	#(258 1 #liftFirstValue: 19445761 false ) 
	#(258 1 #liftFirstValue: 19445762 false ) 
	#(259 1 #liftFirstValue: 19529729 false ) 
	#(259 1 #liftFirstValue: 19529730 false ) 
	#(260 1 #liftFirstValue: 19610625 false ) 
	#(304 1 #reduceActionForExternalProcedureHeader1: 26067969 false ) 
	#(260 1 #liftFirstValue: 19610626 false ) 
	#(306 1 #reduceActionForExternalProcedureHeader1: 26265601 false ) 
	#(261 1 #liftFirstValue: 19688449 false ) 
	#(261 1 #liftFirstValue: 19688450 false ) 
	#(263 1 #liftFirstValue: 19873793 false ) 
	#(312 1 #reduceActionForExternalFunctionHeader1: 27105281 false ) 
	#(263 1 #liftFirstValue: 19873794 false ) 
	#(314 1 #reduceActionForExternalFunctionHeader1: 27297793 false ) 
	#(264 1 #liftFirstValue: 19948545 false ) 
	#(264 1 #liftFirstValue: 19948546 false ) 
	#(265 1 #liftFirstValue: 20038657 false ) 
	#(265 1 #liftFirstValue: 20038658 false ) 
	#(239 1 #liftFirstValue: 16670723 false ) 
	#(326 1 #reduceActionForVars1: 28924929 false ) 
	#(352 1 #reduceActionForBaseCaseLabel1: 32034817 false ) 
	#(351 1 #reduceActionForVariableNames1: 31945729 false ) 
	#(350 1 #liftFirstValue: 31840257 false ) 
	#(168 1 #reduceActionForFullModuleName1: 6240257 false ) 
	#(194 0 #nil 9978881 false ) 
	#(166 1 #reduceActionForUsesModuleList1: 6051841 false ) 
	#(167 1 #reduceActionForUsesModule1: 6126593 false ) 
	#(155 0 #reduceActionForMethodVariables2: 4926465 false ) 
	#(293 0 #nil 24274945 false ) 
	#(156 1 #reduceActionForMainMethod1: 4980737 false ) 
	#(364 2 #reduceActionForExpression14: 33346574 false ) 
	#(330 1 #reduceActionForVariableNames1: 29265921 false ) 
	#(358 1 #liftFirstValue: 32769025 false ) 
	#(287 0 #reduceActionForArgumentList1: 23763969 false ) 
	#(334 2 #reduceActionForGotoStatement1: 30211073 false ) 
	#(334 2 #reduceActionForGotoStatement1: 30211074 false ) 
	#(379 2 #reduceActionForInheritedFunctionCall3: 36237315 false ) 
	#(364 2 #reduceActionForExpression15: 33346575 false ) 
	#(368 2 #reduceActionForAnonymousProcedureHeader1: 35048449 false ) 
	#(355 0 #reduceActionForOptionalType1: 32355329 false ) 
	#(340 0 #nil 30955521 false ) 
	#(338 1 #reduceActionForVariableNames1: 30749697 false ) 
	#(373 2 #reduceActionForSetConstructor2: 35708930 false ) 
	#(375 1 #reduceActionForSetValue1: 35939329 false ) 
	#(374 1 #reduceActionForVariableNames1: 35838977 false ) 
	#(364 2 #reduceActionForExpression16: 33346576 false ) 
	#(364 2 #reduceActionForExpression17: 33346577 false ) 
	#(383 1 #liftFirstValue: 36935687 false ) 
	#(383 1 #liftFirstValue: 36935688 false ) 
	#(383 1 #liftFirstValue: 36935695 false ) 
	#(383 1 #liftFirstValue: 36935696 false ) 
	#(383 1 #liftFirstValue: 36935684 false ) 
	#(382 1 #liftFirstValue: 36871169 false ) 
	#(383 1 #liftFirstValue: 36935681 false ) 
	#(383 1 #liftFirstValue: 36935693 false ) 
	#(383 1 #liftFirstValue: 36935685 false ) 
	#(383 1 #liftFirstValue: 36935698 false ) 
	#(383 1 #liftFirstValue: 36935699 false ) 
	#(383 1 #liftFirstValue: 36935686 false ) 
	#(383 1 #liftFirstValue: 36935682 false ) 
	#(383 1 #liftFirstValue: 36935691 false ) 
	#(383 1 #liftFirstValue: 36935692 false ) 
	#(383 1 #liftFirstValue: 36935683 false ) 
	#(383 1 #liftFirstValue: 36935694 false ) 
	#(383 1 #liftFirstValue: 36935697 false ) 
	#(383 1 #liftFirstValue: 36935690 false ) 
	#(383 1 #liftFirstValue: 36935689 false ) 
	#(364 2 #reduceActionForExpression19: 33346579 false ) 
	#(364 2 #reduceActionForExpression13: 33346573 false ) 
	#(382 1 #liftFirstValue: 36871170 false ) 
	#(366 2 #reduceActionForInstantiatedGenericExpression1: 34763777 false ) 
	#(367 2 #reduceActionForAnonymousProcedure1: 34936833 false ) 
	#(369 2 #reduceActionForAnonymousFunction1: 35148801 false ) 
	#(366 2 #reduceActionForInstantiatedGenericExpression1: 34763778 false ) 
	#(186 1 #reduceActionForEnumName1: 8499201 false ) 
	#(185 1 #reduceActionForVariableNames1: 8426497 false ) 
	#(217 1 #reduceActionForUsesModule1: 13805569 false ) 
	#(215 1 #reduceActionForConstantArray1: 13578241 false ) 
	#(216 1 #reduceActionForUsesModuleList1: 13625345 false ) 
	#(346 0 #nil 31547393 false ) 
	#(218 1 #reduceActionForConstantArray1: 13940737 false ) 
	#(219 1 #reduceActionForVariableNames1: 13983745 false ) 
	#(214 2 #reduceActionForExpression14: 12518415 false ) 
	#(214 2 #reduceActionForExpression15: 12518412 false ) 
	#(262 0 #reduceActionForOptionalType1: 19781633 false ) 
	#(188 2 #reduceActionForSimpleDefinedType11: 8720395 false ) 
	#(214 2 #reduceActionForExpression16: 12518413 false ) 
	#(214 2 #reduceActionForExpression17: 12518414 false ) 
	#(188 2 #reduceActionForSimpleDefinedType2: 8720386 false ) 
	#(193 2 #reduceActionForNamedType4: 9590788 false ) 
	#(248 0 #reduceActionForOptionalArguments1: 18498562 false ) 
	#(238 0 #reduceActionForMethodVariables2: 16590849 false ) 
	#(241 2 #reduceActionForAttributes2: 17540098 false ) 
	#(289 2 #reduceActionForArgument2: 23892994 false ) 
	#(269 2 #reduceActionForClassPropertyHeader1: 20434945 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26714113 false ) 
	#(310 2 #reduceActionForExternalClassProcedureHeader1: 26825729 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27747329 false ) 
	#(318 2 #reduceActionForExternalClassFunctionHeader1: 27855873 false ) 
	#(239 2 #reduceActionForNewClassComponent2: 16670722 false ) 
	#(171 2 #reduceActionForConstantValueList1: 6594561 false ) 
	#(172 1 #reduceActionForAttributes1: 6673409 false ) 
	#(271 0 #nil 20857857 false ) 
	#(327 2 #reduceActionForVarsVars2: 28954626 false ) 
	#(328 1 #reduceActionForAttributes1: 29042689 false ) 
	#(177 2 #reduceActionForDefinedTypeList1: 7315457 false ) 
	#(178 1 #reduceActionForAttributes1: 7396353 false ) 
	#(327 2 #reduceActionForVarsVars2: 28954625 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16670725 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16670727 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 17203201 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 17203202 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 17203203 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 17203204 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 17203205 false ) 
	#(281 0 #reduceActionForMethodVariables2: 22150145 false ) 
	#(194 1 #liftFirstValue: 9978882 false ) 
	#(227 0 #nil 15280129 false ) 
	#(158 3 #reduceActionForPackageLine1: 5098497 false ) 
	#(165 3 #reduceActionForUsesList2: 5972994 false ) 
	#(160 1 #reduceActionForVariableNames1: 5277697 false ) 
	#(169 0 #reduceActionForMethodVariables2: 6365185 false ) 
	#(384 0 #nil 37122049 false ) 
	#(151 3 #reduceActionForProgramFile2: 4431874 false ) 
	#(324 1 #liftFirstValue: 28686339 false ) 
	#(324 1 #liftFirstValue: 28686343 false ) 
	#(324 1 #liftFirstValue: 28686338 false ) 
	#(324 1 #liftFirstValue: 28686340 false ) 
	#(303 1 #reduceActionForProcedureDefinition2: 25901058 false ) 
	#(324 1 #liftFirstValue: 28686341 false ) 
	#(311 1 #reduceActionForFunctionDefinition2: 26943490 false ) 
	#(323 2 #reduceActionForAttributes2: 28614657 false ) 
	#(324 1 #liftFirstValue: 28686342 false ) 
	#(324 1 #liftFirstValue: 28686337 false ) 
	#(364 3 #reduceActionForExpression11: 33346571 false ) 
	#(361 3 #reduceActionForStatementBlock1: 33049601 false ) 
	#(358 2 #reduceActionForForVariableExpression2: 32769026 false ) 
	#(287 1 #reduceActionForConstantArray1: 23763970 false ) 
	#(288 1 #reduceActionForVariableNames1: 23797761 false ) 
	#(370 3 #reduceActionForAnonymousFunctionHeader1: 35257345 false ) 
	#(354 3 #reduceActionForRaiseStatement1: 32246785 false ) 
	#(344 0 #nil 31357953 false ) 
	#(373 3 #reduceActionForSetConstructor1: 35708929 false ) 
	#(333 3 #reduceActionForPackageLine1: 30075905 false ) 
	#(333 3 #reduceActionForPackageLine1: 30075906 false ) 
	#(362 3 #reduceActionForAsmBlock1: 33154049 false ) 
	#(364 3 #reduceActionForExpression5: 33346565 false ) 
	#(381 1 #liftFirstValue: 36737025 false ) 
	#(380 1 #reduceActionForVariableNames1: 36629505 false ) 
	#(365 3 #reduceActionForPropertyExpression2: 34609154 false ) 
	#(365 3 #reduceActionForPropertyExpression2: 34609153 false ) 
	#(364 3 #reduceActionForExpression12: 33346572 false ) 
	#(377 1 #reduceActionForVariableNames1: 36126721 false ) 
	#(364 3 #reduceActionForExpression10: 33346570 false ) 
	#(184 3 #reduceActionForEnumType1: 8373249 false ) 
	#(214 3 #reduceActionForConstantExpression11: 12518411 false ) 
	#(346 1 #liftFirstValue: 31547394 false ) 
	#(246 3 #reduceActionForFileType1: 18176001 false ) 
	#(198 3 #reduceActionForSetType2: 10760194 false ) 
	#(198 3 #reduceActionForSetType1: 10760193 false ) 
	#(237 2 #reduceActionForQualifiedName1: 16390145 false ) 
	#(193 3 #reduceActionForPropertyExpression2: 9590787 false ) 
	#(229 0 #reduceActionForMethodVariables2: 15457281 false ) 
	#(228 1 #reduceActionForImplicitClassSection1: 15384577 false ) 
	#(211 3 #reduceActionForRangeType1: 12342273 false ) 
	#(221 1 #reduceActionForVariableNames1: 14242817 false ) 
	#(214 3 #reduceActionForPropertyExpression2: 12518404 false ) 
	#(214 3 #reduceActionForExpression10: 12518405 false ) 
	#(188 3 #reduceActionForSimpleDefinedType8: 8720392 false ) 
	#(242 3 #reduceActionForAttribute1: 17618945 false ) 
	#(182 1 #reduceActionForGenericTypeArgument1: 7887873 false ) 
	#(181 1 #reduceActionForVariableNames1: 7730177 false ) 
	#(266 2 #reduceActionForGotoStatement1: 20128770 false ) 
	#(290 3 #reduceActionForVariableNames2: 24032258 false ) 
	#(172 2 #reduceActionForAttributes2: 6673410 false ) 
	#(328 2 #reduceActionForAttributes2: 29042690 false ) 
	#(178 2 #reduceActionForAttributes2: 7396354 false ) 
	#(285 2 #reduceActionForExternalMethodModifier1: 22820865 false ) 
	#(285 2 #reduceActionForExternalMethodModifier6: 22820870 false ) 
	#(298 3 #reduceActionForExternalConstructorHeader1: 25031681 false ) 
	#(301 3 #reduceActionForExternalConstructorHeader1: 25555969 false ) 
	#(305 3 #reduceActionForExternalProcedureHeaderVars1: 26147841 false ) 
	#(313 3 #reduceActionForExternalFunctionHeaderVars1: 27182081 false ) 
	#(320 3 #reduceActionForExternalConstructorHeader1: 28157953 false ) 
	#(352 3 #reduceActionForBaseCaseLabel2: 32034818 false ) 
	#(349 3 #reduceActionForCaseOption1: 31754241 false ) 
	#(351 3 #reduceActionForVariableNames2: 31945730 false ) 
	#(350 3 #reduceActionForCaseLabel2: 31840258 false ) 
	#(168 3 #reduceActionForFullModuleName2: 6240258 false ) 
	#(227 1 #reduceActionForOptionalDeprecated2: 15280130 false ) 
	#(166 3 #reduceActionForUsesModuleList2: 6051842 false ) 
	#(167 3 #reduceActionForPackageLine1: 6126594 false ) 
	#(151 4 #reduceActionForProgramFile1: 4431873 false ) 
	#(155 2 #reduceActionForAttributes2: 4926466 false ) 
	#(159 3 #reduceActionForRequires1: 5196801 false ) 
	#(157 4 #reduceActionForPackageFile1: 5041153 false ) 
	#(164 3 #reduceActionForInterfaceSection2: 5858306 false ) 
	#(295 0 #reduceActionForMethodVariables2: 24507393 false ) 
	#(385 0 #nil 37232641 false ) 
	#(174 2 #reduceActionForResourceStringList1: 6972417 false ) 
	#(175 1 #reduceActionForAttributes1: 7071745 false ) 
	#(303 2 #reduceActionForProcedureDefinition1: 25901057 false ) 
	#(311 2 #reduceActionForFunctionDefinition1: 26943489 false ) 
	#(322 3 #reduceActionForMethodComponents1: 28526593 false ) 
	#(330 3 #reduceActionForVariableNames2: 29265922 false ) 
	#(353 0 #reduceActionForElseCase1: 32196609 false ) 
	#(348 1 #reduceActionForVariableNames1: 31651841 false ) 
	#(197 3 #reduceActionForRequires1: 10695682 false ) 
	#(336 4 #reduceActionForIfStatement1: 30415873 false ) 
	#(379 4 #reduceActionForInheritedFunctionCall2: 36237314 false ) 
	#(355 2 #reduceActionForGotoStatement1: 32355330 false ) 
	#(335 4 #reduceActionForRepeatStatement1: 30312449 false ) 
	#(343 0 #nil 31282177 false ) 
	#(341 1 #reduceActionForAttributes1: 31115265 false ) 
	#(332 4 #reduceActionForVariableStatement3: 29889539 false ) 
	#(332 4 #reduceActionForVariableStatement1: 29889537 false ) 
	#(360 4 #reduceActionForWhileStatement1: 32944129 false ) 
	#(338 3 #reduceActionForVariableNames2: 30749698 false ) 
	#(337 4 #reduceActionForRepeatStatement1: 30655489 false ) 
	#(375 3 #reduceActionForSetValue2: 35939330 false ) 
	#(374 3 #reduceActionForVariableNames2: 35838978 false ) 
	#(364 4 #reduceActionForExpression4: 33346564 false ) 
	#(376 3 #reduceActionForRequires1: 36072449 false ) 
	#(192 1 #reduceActionForVariableNames1: 9427969 false ) 
	#(191 0 #reduceActionForOutsideGeneric1: 9357313 true ) 
	#(186 3 #reduceActionForEnumName2: 8499202 false ) 
	#(220 3 #reduceActionForConstantRecordField1: 14117889 false ) 
	#(185 3 #reduceActionForVariableNames2: 8426498 false ) 
	#(217 3 #reduceActionForPackageLine1: 13805570 false ) 
	#(216 3 #reduceActionForUsesModuleList2: 13625346 false ) 
	#(214 4 #reduceActionForConstantExpression10: 12518410 false ) 
	#(219 3 #reduceActionForVariableNames2: 13983746 false ) 
	#(262 2 #reduceActionForGotoStatement1: 19781634 false ) 
	#(250 1 #liftFirstValue: 18675714 false ) 
	#(250 1 #liftFirstValue: 18675713 false ) 
	#(249 1 #reduceActionForVariableNames1: 18564097 false ) 
	#(202 4 #reduceActionForRecordType1: 11394049 false ) 
	#(204 2 #reduceActionForRecordFieldList1: 11667457 false ) 
	#(238 2 #reduceActionForAttributes2: 16590850 false ) 
	#(214 4 #reduceActionForExpression4: 12518408 false ) 
	#(188 4 #reduceActionForSimpleDefinedType6: 8720390 false ) 
	#(180 3 #reduceActionForRequires1: 7642114 false ) 
	#(224 0 #reduceActionForMethodVariables2: 15010817 false ) 
	#(252 1 #liftFirstValue: 18926594 false ) 
	#(252 1 #liftFirstValue: 18926593 false ) 
	#(235 0 #reduceActionForOptionalArguments1: 16229377 false ) 
	#(179 4 #reduceActionForNamedDefinedType1: 7503873 false ) 
	#(183 1 #reduceActionForRaiseStatement2: 8036355 false ) 
	#(183 1 #reduceActionForRaiseStatement2: 8036356 false ) 
	#(187 1 #liftFirstValue: 8608772 false ) 
	#(187 1 #liftFirstValue: 8608769 false ) 
	#(187 1 #liftFirstValue: 8608773 false ) 
	#(187 1 #liftFirstValue: 8608770 false ) 
	#(187 1 #liftFirstValue: 8608771 false ) 
	#(251 1 #reduceActionForInterfaceType2: 18732034 false ) 
	#(291 0 #reduceActionForOptionalType1: 24123393 false ) 
	#(282 0 #reduceActionForMethodVariables2: 22220801 false ) 
	#(270 0 #reduceActionForPropertyValues1: 20527105 false ) 
	#(285 3 #reduceActionForExternalMethodModifier4: 22820868 false ) 
	#(285 3 #reduceActionForExternalMethodModifier4: 22820866 false ) 
	#(286 1 #liftFirstValue: 23475211 false ) 
	#(286 1 #liftFirstValue: 23475205 false ) 
	#(286 1 #liftFirstValue: 23475214 false ) 
	#(286 1 #liftFirstValue: 23475209 false ) 
	#(286 1 #liftFirstValue: 23475215 false ) 
	#(286 1 #liftFirstValue: 23475218 false ) 
	#(286 1 #liftFirstValue: 23475213 false ) 
	#(286 1 #liftFirstValue: 23475221 false ) 
	#(286 1 #liftFirstValue: 23475220 false ) 
	#(286 1 #liftFirstValue: 23475219 false ) 
	#(286 1 #liftFirstValue: 23475212 false ) 
	#(286 1 #liftFirstValue: 23475201 false ) 
	#(286 1 #liftFirstValue: 23475202 false ) 
	#(286 1 #liftFirstValue: 23475206 false ) 
	#(286 1 #liftFirstValue: 23475217 false ) 
	#(286 1 #liftFirstValue: 23475204 false ) 
	#(286 1 #liftFirstValue: 23475207 false ) 
	#(286 1 #liftFirstValue: 23475222 false ) 
	#(286 1 #liftFirstValue: 23475216 false ) 
	#(286 1 #liftFirstValue: 23475203 false ) 
	#(286 1 #liftFirstValue: 23475210 false ) 
	#(286 1 #liftFirstValue: 23475208 false ) 
	#(281 2 #reduceActionForAttributes2: 22150146 false ) 
	#(283 1 #liftFirstValue: 22324225 false ) 
	#(283 1 #liftFirstValue: 22324226 false ) 
	#(227 2 #reduceActionForOptionalDeprecated3: 15280131 false ) 
	#(154 5 #reduceActionForLibraryLine1: 4776961 false ) 
	#(163 5 #reduceActionForLibraryLine1: 5692418 false ) 
	#(152 5 #reduceActionForLibraryLine1: 4547585 false ) 
	#(163 5 #reduceActionForLibraryLine1: 5692417 false ) 
	#(387 1 #reduceActionForVariableNames1: 37446657 false ) 
	#(153 5 #reduceActionForLibraryFile1: 4697089 false ) 
	#(160 3 #reduceActionForVariableNames2: 5277698 false ) 
	#(161 3 #reduceActionForUsesList2: 5387265 false ) 
	#(388 2 #reduceActionForGotoStatement1: 37537793 false ) 
	#(169 2 #reduceActionForAttributes2: 6365186 false ) 
	#(170 1 #liftFirstValue: 6459395 false ) 
	#(170 1 #liftFirstValue: 6459394 false ) 
	#(170 1 #liftFirstValue: 6459393 false ) 
	#(170 1 #liftFirstValue: 6459396 false ) 
	#(170 1 #liftFirstValue: 6459397 false ) 
	#(170 1 #liftFirstValue: 6459398 false ) 
	#(294 0 #nil 24421377 false ) 
	#(384 2 #reduceActionForInitializationSection2: 37122050 false ) 
	#(325 3 #reduceActionForLabels1: 28832769 false ) 
	#(175 2 #reduceActionForAttributes2: 7071746 false ) 
	#(347 2 #reduceActionForCaseOptionList1: 31599617 false ) 
	#(358 4 #reduceActionForForVariableExpression3: 32769027 false ) 
	#(359 1 #liftFirstValue: 32911362 false ) 
	#(359 1 #liftFirstValue: 32911361 false ) 
	#(288 3 #reduceActionForVariableNames2: 23797762 false ) 
	#(379 5 #reduceActionForInheritedFunctionCall1: 36237313 false ) 
	#(340 3 #reduceActionForExcept3: 30955523 false ) 
	#(341 2 #reduceActionForAttributes2: 31115266 false ) 
	#(340 3 #reduceActionForExcept2: 30955522 false ) 
	#(344 2 #reduceActionForFinally2: 31357954 false ) 
	#(339 5 #reduceActionForTryStatement1: 30855169 false ) 
	#(380 3 #reduceActionForVariableNames2: 36629506 false ) 
	#(381 3 #reduceActionForMethodArgument2: 36737026 false ) 
	#(377 3 #reduceActionForVariableNames2: 36126722 false ) 
	#(195 5 #reduceActionForAnonymousProcedureType1: 10028033 false ) 
	#(195 5 #reduceActionForAnonymousProcedureType2: 10028034 false ) 
	#(198 5 #reduceActionForSetType3: 10760195 false ) 
	#(237 4 #reduceActionForQualifiedName2: 16390146 false ) 
	#(248 3 #reduceActionForRequires1: 18498561 false ) 
	#(247 5 #reduceActionForArrayType2: 18287618 false ) 
	#(247 5 #reduceActionForArrayType1: 18287617 false ) 
	#(204 3 #reduceActionForRecordFieldList2: 11667458 false ) 
	#(229 2 #reduceActionForAttributes2: 15457282 false ) 
	#(230 1 #liftFirstValue: 15519745 false ) 
	#(230 1 #liftFirstValue: 15519746 false ) 
	#(230 1 #liftFirstValue: 15519747 false ) 
	#(230 1 #liftFirstValue: 15519748 false ) 
	#(221 3 #reduceActionForVariableNames2: 14242818 false ) 
	#(182 3 #reduceActionForGenericTypeArgument2: 7887874 false ) 
	#(181 3 #reduceActionForVariableNames2: 7730178 false ) 
	#(183 2 #reduceActionForDefinedType2: 8036354 false ) 
	#(253 0 #nil 18981889 false ) 
	#(179 5 #reduceActionForNamedDefinedType2: 7503874 false ) 
	#(289 5 #reduceActionForArgument1: 23892993 false ) 
	#(299 5 #reduceActionForNonExternalConstructorHeader1: 25167873 false ) 
	#(302 5 #reduceActionForNonExternalDestructorHeader1: 25689089 false ) 
	#(243 5 #reduceActionForInterfaceFunctionAssignment1: 17705985 false ) 
	#(244 5 #reduceActionForInterfaceProcedureAssignment1: 17889281 false ) 
	#(307 5 #reduceActionForNonExternalProcedureHeaderVars1: 26351617 false ) 
	#(271 3 #reduceActionForPropertyArrayAccessors2: 20857858 false ) 
	#(284 2 #reduceActionForExternalMethodModifier6: 22398977 false ) 
	#(386 3 #reduceActionForExportsDefinition1: 37336065 false ) 
	#(296 1 #liftFirstValue: 24566794 false ) 
	#(296 1 #liftFirstValue: 24566795 false ) 
	#(296 1 #liftFirstValue: 24566792 false ) 
	#(293 4 #reduceActionForImplementationSection2: 24274946 false ) 
	#(295 2 #reduceActionForAttributes2: 24507394 false ) 
	#(296 1 #liftFirstValue: 24566785 false ) 
	#(297 1 #reduceActionForConstructorDefinition2: 24854530 false ) 
	#(296 1 #liftFirstValue: 24566786 false ) 
	#(300 1 #reduceActionForDestructorDefinition2: 25383938 false ) 
	#(296 1 #liftFirstValue: 24566787 false ) 
	#(296 1 #liftFirstValue: 24566788 false ) 
	#(308 1 #reduceActionForClassProcedureDefinition2: 26521602 false ) 
	#(296 1 #liftFirstValue: 24566789 false ) 
	#(296 1 #liftFirstValue: 24566790 false ) 
	#(316 1 #reduceActionForClassFunctionDefinition2: 27559938 false ) 
	#(296 1 #liftFirstValue: 24566791 false ) 
	#(319 1 #reduceActionForClassOperatorDefinition2: 27970562 false ) 
	#(296 1 #liftFirstValue: 24566793 false ) 
	#(296 1 #liftFirstValue: 24566796 false ) 
	#(385 2 #reduceActionForFinalizationSection2: 37232642 false ) 
	#(162 6 #reduceActionForUnitFile1: 5470209 false ) 
	#(353 2 #reduceActionForElseCase2: 32196610 false ) 
	#(345 6 #reduceActionForCaseStatement1: 31425537 false ) 
	#(348 3 #reduceActionForVariableNames2: 31651842 false ) 
	#(357 6 #reduceActionForForInStatement1: 32619521 false ) 
	#(336 6 #reduceActionForForInStatement1: 30415874 false ) 
	#(371 6 #reduceActionForMemExpression1: 35366913 false ) 
	#(371 6 #reduceActionForMemExpression1: 35366914 false ) 
	#(343 2 #reduceActionForPossibleExceptElse2: 31282178 false ) 
	#(332 6 #reduceActionForVariableStatement2: 29889538 false ) 
	#(192 3 #reduceActionForVariableNames2: 9427970 false ) 
	#(189 5 #reduceActionForInstantiatedGenericTypeArguments1: 9156609 false ) 
	#(203 6 #reduceActionForRecordHelperType1: 11499521 false ) 
	#(200 1 #reduceActionForVariableNames1: 11194369 false ) 
	#(199 3 #reduceActionForTwoItemSetNameList1: 11037697 false ) 
	#(249 3 #reduceActionForVariableNames2: 18564098 false ) 
	#(231 2 #reduceActionForPrivateClassSection2: 15633410 false ) 
	#(232 2 #reduceActionForProtectedClassSection2: 15825922 false ) 
	#(233 2 #reduceActionForPublicClassSection1: 16032769 false ) 
	#(234 2 #reduceActionForPublishedClassSection1: 16124929 false ) 
	#(201 3 #reduceActionForMetaclassType1: 11297793 false ) 
	#(225 1 #liftFirstValue: 15085569 false ) 
	#(225 1 #liftFirstValue: 15085570 false ) 
	#(224 2 #reduceActionForAttributes2: 15010818 false ) 
	#(222 3 #reduceActionForNewClassType2: 14362626 false ) 
	#(236 1 #reduceActionForVariableNames1: 16290817 false ) 
	#(254 0 #reduceActionForMethodVariables2: 19057665 false ) 
	#(291 2 #reduceActionForGotoStatement1: 24123394 false ) 
	#(329 6 #reduceActionForVariable1: 29142017 false ) 
	#(299 6 #reduceActionForNonExternalConstructorHeader2: 25167874 false ) 
	#(302 6 #reduceActionForNonExternalDestructorHeader2: 25689090 false ) 
	#(282 2 #reduceActionForAttributes2: 22220802 false ) 
	#(315 6 #reduceActionForNonExternalFunctionHeaderVars1: 27380737 false ) 
	#(276 1 #reduceActionForPropertyDefault2: 21532674 false ) 
	#(276 1 #reduceActionForPropertyDefault3: 21532675 false ) 
	#(280 0 #nil 22049793 false ) 
	#(270 2 #reduceActionForPropertyValues2: 20527106 false ) 
	#(270 2 #reduceActionForCaseOptionList1: 20527107 false ) 
	#(270 2 #reduceActionForPropertyValues4: 20527108 false ) 
	#(270 2 #reduceActionForPropertyValues8: 20527112 false ) 
	#(270 2 #reduceActionForPropertyValues5: 20527109 false ) 
	#(270 2 #reduceActionForPropertyValues7: 20527111 false ) 
	#(270 2 #reduceActionForPropertyValues6: 20527110 false ) 
	#(239 6 #reduceActionForNewClassComponent1: 16670721 false ) 
	#(285 5 #reduceActionForExternalMethodModifier5: 22820869 false ) 
	#(285 5 #reduceActionForExternalMethodModifier5: 22820867 false ) 
	#(284 3 #reduceActionForNonExternalMethodModifier2: 22398978 false ) 
	#(284 3 #reduceActionForNonExternalMethodModifier4: 22398980 false ) 
	#(284 3 #reduceActionForNonExternalMethodModifier4: 22398979 false ) 
	#(387 3 #reduceActionForVariableNames2: 37446658 false ) 
	#(294 2 #reduceActionForImplementationCode2: 24421378 false ) 
	#(297 2 #reduceActionForConstructorDefinition1: 24854529 false ) 
	#(300 2 #reduceActionForDestructorDefinition1: 25383937 false ) 
	#(308 2 #reduceActionForClassProcedureDefinition1: 26521601 false ) 
	#(316 2 #reduceActionForClassFunctionDefinition1: 27559937 false ) 
	#(319 2 #reduceActionForClassOperatorDefinition1: 27970561 false ) 
	#(196 7 #reduceActionForAnonymousFunctionType1: 10340353 false ) 
	#(196 7 #reduceActionForAnonymousFunctionType2: 10340354 false ) 
	#(231 3 #reduceActionForPrivateClassSection1: 15633409 false ) 
	#(232 3 #reduceActionForProtectedClassSection1: 15825921 false ) 
	#(235 3 #reduceActionForRequires1: 16229378 false ) 
	#(183 4 #reduceActionForWhileStatement1: 8036357 false ) 
	#(183 4 #reduceActionForWhileStatement1: 8036353 false ) 
	#(173 7 #reduceActionForConstantValue1: 6768641 false ) 
	#(321 7 #reduceActionForNonExternalClassOperatorHeader1: 28300289 false ) 
	#(276 2 #reduceActionForPropertyDefault1: 21532673 false ) 
	#(275 2 #reduceActionForPropertyDispid1: 21220353 false ) 
	#(278 1 #reduceActionForVariableNames1: 21840897 false ) 
	#(277 2 #reduceActionForPropertyImplements1: 21736449 false ) 
	#(272 2 #reduceActionForPropertyIndex1: 20955137 false ) 
	#(273 2 #reduceActionForPropertyReader1: 21048321 false ) 
	#(279 2 #reduceActionForPropertyStored1: 21960705 false ) 
	#(274 2 #reduceActionForPropertyWriter1: 21133313 false ) 
	#(268 7 #reduceActionForPropertyHeaderVars1: 20237313 false ) 
	#(176 5 #reduceActionForResource1: 7146497 false ) 
	#(356 8 #reduceActionForForStatement1: 32422913 false ) 
	#(342 5 #reduceActionForOnDo1: 31179777 false ) 
	#(200 3 #reduceActionForVariableNames2: 11194370 false ) 
	#(236 3 #reduceActionForVariableNames2: 16290818 false ) 
	#(226 5 #reduceActionForOldClassType1: 15130625 false ) 
	#(253 3 #reduceActionForGuid2: 18981890 false ) 
	#(251 5 #reduceActionForInterfaceType1: 18732033 false ) 
	#(254 2 #reduceActionForAttributes2: 19057666 false ) 
	#(255 1 #liftFirstValue: 19149826 false ) 
	#(255 1 #liftFirstValue: 19149825 false ) 
	#(275 3 #reduceActionForPropertyDispid2: 21220354 false ) 
	#(275 3 #reduceActionForPropertyDispid3: 21220355 false ) 
	#(280 2 #reduceActionForPropertyModifiers2: 22049794 false ) 
	#(207 1 #reduceActionForVariableNames1: 12002305 false ) 
	#(209 1 #reduceActionForVariableNames1: 12217345 false ) 
	#(210 1 #liftFirstValue: 12304385 false ) 
	#(223 6 #reduceActionForClassHelperType2: 14595074 false ) 
	#(222 6 #reduceActionForNewClassType1: 14362625 false ) 
	#(278 3 #reduceActionForVariableNames2: 21840898 false ) 
	#(206 6 #reduceActionForVariantRecordPart1: 11852801 false ) 
	#(207 3 #reduceActionForVariableNames2: 12002306 false ) 
	#(209 3 #reduceActionForVariableNames2: 12217346 false ) 
	#(223 9 #reduceActionForClassHelperType1: 14595073 false ) 
	#(208 5 #reduceActionForVariantType1: 12116993 false )
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> scannerClass [
	^DelphiScanner
]

{ #category : #generated }
DelphiParser class >> startingStateForArgument [
	^ 7
]

{ #category : #generated }
DelphiParser class >> startingStateForAttribute [
	^ 9
]

{ #category : #generated }
DelphiParser class >> startingStateForCaseOption [
	^ 10
]

{ #category : #generated }
DelphiParser class >> startingStateForConstantValue [
	^ 5
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
DelphiParser class >> startingStateForNewClassComponent [
	^ 8
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
DelphiParser class >> startingStateForVariable [
	^ 6
]

{ #category : #generated }
DelphiParser class >> symbolNames [
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NAMESPACE"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attributes' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'VariableStatement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ForVariableExpression' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #DelphiDeprecatedModifierNode #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #OrderedCollection #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 45 0 66 0 49 0 73 0 53 0 85 0 6 0 90 0 57 0 91 0 6 0 105 0 6 0 116 0 6 0 119 0 61 0 120 0 65 0 123 0 6 0 124 0 69 0 150 0 73 0 151 0 77 0 152 0 81 0 153 0 85 0 154 0 89 0 157 0 93 0 158 0 97 0 162 0 101 0 163 0 105 0 165] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 0 217 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 0 217 1 105 0 217 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 197 0 184 1 149 0 188 1 153 0 193 1 197 0 195 1 197 0 196 1 149 0 198 1 149 0 202 1 149 0 203 1 177 0 205 1 149 0 211 1 185 0 212 1 189 0 213 1 193 0 214 1 197 0 245 1 149 0 246 1 149 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 1 221 0 131 1 225 0 140 1 229 0 179 1 233 0 241 1 237 0 242] 
#[1 1 241 0 140 1 245 0 173] 
#[1 1 249 0 140 1 253 1 34 2 1 1 73] 
#[1 2 21 0 27 2 21 0 82 2 21 0 124 0 22 0 140 2 17 1 33 2 21 1 36] 
#[1 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 2 41 0 52 2 45 0 90 2 49 0 92 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 2 73 0 171 2 73 0 177 2 73 0 239 2 73 0 240 2 81 0 241 1 237 0 242 2 73 0 243 2 73 0 244 2 73 1 0 2 73 1 1 2 73 1 2 2 73 1 3 2 73 1 4 2 73 1 5 2 73 1 7 2 73 1 8 2 73 1 9 2 73 1 11 2 133 1 12 2 73 1 13 2 141 1 34 2 73 1 42 2 149 1 43 2 73 1 45 2 157 1 46 2 73 1 48 2 165 1 49 2 73 1 50 2 173 1 51 2 73 1 53 2 73 1 54 2 73 1 56 2 189 1 57 2 73 1 58 2 197 1 59 2 73 1 61 2 73 1 62 2 73 1 64 2 213 1 65 2 73 1 70 2 221 1 71] 
#[1 1 221 0 131 2 225 0 242] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 2 237 0 214 2 241 1 93 2 245 1 94 2 249 1 95 2 253 1 96 2 237 1 117 1 213 1 122 1 217 1 133] 
#[1 3 1 0 140 3 5 0 168] 
#[1 3 1 0 140 3 9 0 168] 
#[1 3 1 0 140 3 13 0 168] 
#[1 3 1 0 140 3 17 0 168] 
#[1 3 1 0 140 3 21 0 168] 
#[1 3 1 0 140 3 25 0 166 3 29 0 167 3 33 0 168] 
#[0 0 0 1 134] 
#[0 0 26 1 134] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 65 0 123 0 6 0 124 3 37 0 165] 
#[0 0 30 1 134] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 65 0 123 0 6 0 124 3 41 0 165] 
#[0 0 34 1 134] 
#[1 3 45 0 104 3 49 0 159] 
#[0 0 38 1 134] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 3 53 0 63 3 57 0 164 0 46 1 134] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 3 61 0 156 3 65 1 66 3 69 1 67] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 77 1 108 1 29 1 109 3 77 1 110 3 77 1 111 1 41 1 112 3 77 1 113 1 49 1 114 3 77 1 115 1 57 1 116 3 77 1 117 1 65 1 122 3 77 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 81 1 108 1 29 1 109 3 81 1 110 3 81 1 111 1 41 1 112 3 81 1 113 1 49 1 114 3 81 1 115 1 57 1 116 3 81 1 117 1 65 1 122 3 81 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 85 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 93 1 108 1 29 1 109 3 93 1 110 3 93 1 111 1 41 1 112 3 93 1 113 1 49 1 114 3 93 1 115 1 57 1 116 3 93 1 117 1 65 1 122 3 93 1 123 1 73 1 133] 
#[1 3 97 0 124 3 73 0 140 3 101 1 102 3 101 1 116] 
#[1 3 109 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 90 0 54 0 105 0 54 0 116 0 54 0 119 0 54 0 124 3 113 0 197] 
#[1 3 117 0 140 3 121 0 142] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 125 1 108 1 29 1 109 3 125 1 110 3 125 1 111 1 41 1 112 3 125 1 113 1 49 1 114 3 125 1 115 1 57 1 116 3 125 1 117 1 65 1 122 3 125 1 123 1 73 1 133] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 75 0 58 0 78 0 58 0 79 0 58 0 81 0 58 0 97 0 58 0 98 0 58 0 109 0 58 0 110 0 58 0 113 0 58 0 115 0 58 0 117 0 58 0 122 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 0 58 0 139 3 129 0 140 0 58 1 134] 
#[0 3 133 0 131] 
#[0 3 137 0 131] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 141 1 108 1 29 1 109 3 141 1 110 3 141 1 111 1 41 1 112 3 141 1 113 1 49 1 114 3 141 1 115 1 57 1 116 3 141 1 117 1 65 1 122 3 141 1 123 1 73 1 133] 
#[1 3 109 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 90 0 54 0 105 0 54 0 116 0 54 0 119 0 54 0 124 3 145 0 197] 
#[1 0 109 0 2 0 113 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 129 0 52 0 141 0 60 0 62 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 62 0 79 0 157 0 90 0 62 0 122 0 185 0 131 0 189 0 136 0 193 0 137 0 62 0 138 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 149 1 108 1 29 1 109 3 149 1 110 3 149 1 111 1 41 1 112 3 149 1 113 1 49 1 114 3 149 1 115 1 57 1 116 3 149 1 117 1 65 1 122 3 149 1 123 1 73 1 133 0 62 1 134] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 153 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 157 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 1 249 0 140 3 161 1 34] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 165 1 108 1 29 1 109 3 165 1 110 3 165 1 111 1 41 1 112 3 165 1 113 1 49 1 114 3 165 1 115 1 57 1 116 3 165 1 117 1 65 1 122 3 165 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 169 1 82 3 173 1 108 1 29 1 109 3 173 1 110 3 173 1 111 1 41 1 112 3 173 1 113 1 49 1 114 3 173 1 115 1 57 1 116 3 173 1 117 1 65 1 122 3 173 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 3 177 0 132 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 181 1 108 1 29 1 109 3 181 1 110 3 181 1 111 1 41 1 112 3 181 1 113 1 49 1 114 3 181 1 115 1 57 1 116 3 181 1 117 3 185 1 118 3 189 1 119 1 65 1 122 3 181 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 193 1 108 1 29 1 109 3 193 1 110 3 193 1 111 1 41 1 112 3 193 1 113 1 49 1 114 3 193 1 115 1 57 1 116 3 193 1 117 1 65 1 122 3 193 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 197 1 108 1 29 1 109 3 197 1 110 3 197 1 111 1 41 1 112 3 197 1 113 1 49 1 114 3 197 1 115 1 57 1 116 3 197 1 117 1 65 1 122 3 197 1 123 1 73 1 133] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 3 201 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 79 0 66 0 81 0 66 0 109 0 66 0 110 0 66 0 122 0 66 0 130 0 66 0 131 0 66 0 133 0 66 0 134 0 66 0 136 0 66 0 137 0 66 0 138 0 66 0 139 0 66 1 134] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 3 205 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 79 0 70 0 81 0 70 0 109 0 70 0 110 0 70 0 122 0 70 0 130 0 70 0 131 0 70 0 133 0 70 0 134 0 70 0 136 0 70 0 137 0 70 0 138 0 70 0 139 0 70 1 134] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 0 1 134] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 134 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 0 138 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 3 209 0 21] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 48 0 142 0 49 4 61 0 58 0 142 0 61 4 61 0 64 4 61 0 71 0 142 0 79 4 61 0 81 4 61 0 109 4 61 0 110 0 142 0 122 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 0 142 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 0 142 1 134] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 5 0 146 0 6 0 146 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 11 0 11 0 146 0 12 0 146 0 13 0 146 0 14 0 146 0 18 0 146 0 20 0 146 0 30 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 48 0 146 0 49 0 146 0 57 0 146 0 58 0 146 0 59 0 146 0 61 0 146 0 64 0 146 0 71 0 146 0 75 0 146 0 78 0 146 0 79 0 146 0 81 0 146 0 97 0 146 0 98 0 146 0 109 0 146 0 110 0 146 0 113 0 146 0 115 0 146 0 117 0 146 0 122 0 146 0 128 0 146 0 129 0 146 0 130 0 146 0 131 0 146 0 132 0 146 0 133 0 146 0 134 0 146 0 135 0 146 0 136 0 146 0 137 0 146 0 138 0 146 0 139 4 69 0 189 4 73 0 190 0 146 1 134] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 4 77 1 66 3 69 1 67] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 4 81 1 66 3 69 1 67] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 15 0 11 0 170 0 12 0 170 0 13 0 170 0 14 0 170 0 18 0 170 0 20 0 170 0 30 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 48 0 170 0 49 0 170 0 57 0 170 0 58 0 170 0 59 0 170 0 61 0 170 0 64 0 170 0 71 0 170 0 75 0 170 0 78 0 170 0 79 0 170 0 81 0 170 0 97 0 170 0 98 0 170 0 109 0 170 0 110 0 170 0 113 0 170 0 115 0 170 0 117 0 170 0 122 0 170 0 128 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 132 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 137 0 170 0 138 0 170 0 139 4 85 0 189 4 73 0 190 0 170 1 134] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 2 229 0 2 0 190 0 3 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 4 89 0 140 4 93 0 141 1 189 0 142 1 213 0 144 1 141 0 148 4 97 0 185 4 101 0 186 1 189 0 213 4 105 0 214 4 109 0 215 4 113 0 216 4 117 0 217 4 121 0 218 4 125 0 219 4 129 0 220 4 105 1 117 1 213 1 122 1 217 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 4 133 0 214 4 133 1 117 1 213 1 122 1 217 1 133] 
#[1 0 194 0 3 0 194 0 5 0 194 0 10 0 194 0 14 0 194 0 16 0 194 0 21 0 194 0 23 0 194 0 27 0 194 0 30 0 194 0 31 0 194 0 33 0 194 0 36 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 48 0 194 0 49 0 194 0 52 0 194 0 57 0 194 0 58 0 194 0 59 0 194 0 61 0 194 0 65 0 194 0 75 4 137 0 78 0 194 0 79 0 194 0 88 0 194 0 90 0 194 0 97 0 194 0 98 0 194 0 105 0 194 0 113 0 194 0 116 0 194 0 119 0 194 0 122 0 194 0 124 0 194 0 128 0 194 0 129 0 194 0 131 0 194 0 132 0 194 0 133 0 194 0 138 0 194 1 134] 
#[1 3 109 0 2 0 54 0 9 4 141 0 197] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 4 145 0 214 4 145 1 117 1 213 1 122 1 217 1 133] 
#[0 0 198 0 19 0 99] 
#[1 3 109 0 2 0 54 0 78 0 54 0 138 4 149 0 197] 
#[0 4 153 0 54] 
#[1 0 202 0 3 0 202 0 5 0 202 0 6 0 202 0 10 0 202 0 11 0 202 0 14 0 202 0 16 0 202 0 21 0 202 0 23 0 202 0 27 0 202 0 30 0 202 0 31 0 202 0 33 0 202 0 36 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 48 0 202 0 49 0 202 0 52 0 202 0 57 0 202 0 58 0 202 0 59 0 202 0 61 0 202 0 65 0 202 0 75 0 202 0 78 0 202 0 79 0 202 0 88 0 202 0 90 0 202 0 97 0 202 0 98 0 202 0 105 0 202 0 113 0 202 0 116 4 157 0 117 0 202 0 119 0 202 0 122 0 202 0 124 0 202 0 128 0 202 0 129 0 202 0 131 0 202 0 132 0 202 0 133 0 202 0 138 0 202 1 134] 
#[0 4 161 0 78] 
#[1 4 165 0 140 4 169 0 237] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 4 173 0 214 4 173 1 117 1 213 1 122 1 217 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 4 177 0 214 4 177 1 117 1 213 1 122 1 217 1 133] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 4 185 0 184 4 185 0 188 1 153 0 193 4 185 0 195 4 185 0 196 4 185 0 198 4 185 0 202 4 185 0 203 1 177 0 205 4 185 0 211 1 185 0 212 1 189 0 213 1 193 0 214 4 185 0 245 4 185 0 246 4 185 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 0 206 0 2 0 210 0 3 0 206 0 4 0 210 0 5 0 19 0 6 0 206 0 7 0 206 0 8 0 210 0 10 0 19 0 11 0 206 0 12 0 206 0 13 0 210 0 14 0 210 0 16 0 206 0 18 0 206 0 20 0 210 0 21 0 210 0 23 0 210 0 27 0 210 0 30 0 210 0 31 0 210 0 33 0 206 0 35 0 210 0 36 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 48 0 210 0 49 0 210 0 52 0 210 0 57 0 19 0 58 0 210 0 59 0 210 0 61 0 206 0 64 0 210 0 65 0 206 0 71 0 210 0 75 0 210 0 78 0 210 0 79 0 206 0 81 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 98 0 210 0 105 0 206 0 109 0 206 0 110 0 210 0 113 0 210 0 116 0 210 0 119 0 210 0 122 0 210 0 124 0 210 0 128 0 210 0 129 0 206 0 130 0 210 0 131 0 210 0 132 0 19 0 133 0 206 0 134 0 206 0 136 0 206 0 137 0 210 0 138 0 210 1 134] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[0 0 218 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 0 222 0 16 0 222 0 131 0 0 1 134] 
#[1 0 226 0 3 0 226 0 5 4 189 0 6 0 226 0 10 0 150 0 11 0 226 0 14 0 226 0 16 0 226 0 21 0 226 0 23 0 226 0 27 0 226 0 30 0 226 0 31 0 226 0 33 0 226 0 36 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 48 0 226 0 49 0 226 0 52 0 226 0 57 0 226 0 58 0 226 0 59 0 226 0 61 0 226 0 65 0 226 0 75 0 226 0 78 0 226 0 79 0 226 0 88 0 226 0 90 0 226 0 97 0 226 0 98 0 226 0 105 0 226 0 113 0 226 0 116 0 226 0 119 0 226 0 122 0 226 0 124 0 226 0 128 0 226 0 129 0 226 0 131 0 226 0 132 0 226 0 133 0 226 0 138 4 193 0 189 4 73 0 190 0 226 1 134] 
#[0 0 230 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 0 234 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 0 238 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 0 242 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 0 246 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 4 197 0 19 4 201 0 99] 
#[0 0 250 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 4 205 0 7] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[1 4 209 0 2 1 2 0 3 4 217 0 4 1 2 0 5 4 213 0 6 1 2 0 7 4 217 0 8 1 2 0 10 4 217 0 11 4 217 0 12 4 217 0 13 1 2 0 14 1 2 0 16 4 217 0 18 4 217 0 20 1 2 0 21 1 2 0 23 1 2 0 27 1 2 0 30 1 2 0 31 1 2 0 33 4 217 0 35 1 2 0 36 1 2 0 39 1 2 0 40 1 2 0 41 1 2 0 48 1 2 0 49 1 2 0 52 1 2 0 57 0 23 0 58 1 2 0 59 1 2 0 61 4 217 0 64 1 2 0 65 4 217 0 71 1 2 0 75 1 2 0 78 1 2 0 79 4 217 0 81 1 2 0 88 1 2 0 90 1 2 0 97 1 2 0 98 1 2 0 105 4 217 0 109 4 217 0 110 1 2 0 113 1 2 0 116 1 2 0 119 1 2 0 122 1 2 0 124 1 2 0 128 1 2 0 129 4 217 0 130 1 2 0 131 1 2 0 132 0 27 0 133 4 217 0 134 4 217 0 136 4 217 0 137 1 2 0 138 4 217 1 127 1 2 1 134] 
#[1 4 221 0 16 4 225 0 131] 
#[0 1 6 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 1 10 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[0 1 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 4 229 0 214 4 229 1 117 1 213 1 122 1 217 1 133] 
#[1 4 233 0 11 1 26 0 14 4 237 0 180] 
#[0 0 0 1 134] 
#[1 1 221 0 131 4 241 0 140 4 245 0 242] 
#[0 1 30 0 26 0 28 0 32 0 52 0 90 0 131 0 140] 
#[1 4 249 0 9 1 34 0 14 4 253 1 10] 
#[0 0 0 1 134] 
#[0 1 38 0 3 0 5 0 9 0 10 0 132 0 138 1 134] 
#[1 5 1 0 5 5 5 0 9] 
#[0 0 0 1 134] 
#[0 1 42 0 140] 
#[0 1 46 0 140] 
#[0 1 50 0 140] 
#[0 0 0 1 134] 
#[1 1 249 0 140 5 9 1 34] 
#[1 5 13 0 28 5 17 0 32 5 21 0 52 5 25 0 80 5 29 0 90 2 49 0 92 2 53 0 116 2 61 0 124 5 33 1 12 5 37 1 49 5 41 1 51 5 45 1 57 5 49 1 59 5 53 1 71] 
#[1 1 241 0 140 5 57 0 172 5 61 0 173] 
#[1 4 165 0 140 5 65 0 237] 
#[1 4 165 0 140 5 69 0 237] 
#[1 4 165 0 140 5 73 0 237] 
#[1 4 165 0 140 5 77 0 237] 
#[0 5 81 0 140] 
#[1 1 249 0 140 1 253 1 34 5 85 1 72 5 89 1 73] 
#[1 1 221 0 131 1 225 0 140 5 93 0 178 5 97 0 179 1 233 0 241 1 237 0 242] 
#[1 1 249 0 140 1 253 1 34 5 101 1 72 5 89 1 73] 
#[0 1 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 0 0 1 134] 
#[0 1 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 5 105 0 26 2 33 0 28 2 37 0 32 5 21 0 52 5 29 0 90 1 221 0 131 4 245 0 242 5 109 1 2 5 113 1 3 5 117 1 4 5 121 1 5 5 125 1 7 5 129 1 8 5 133 1 9 5 109 1 42 2 149 1 43 5 113 1 45 2 157 1 46 5 117 1 48 2 165 1 49 5 117 1 50 2 173 1 51 5 121 1 53 5 121 1 54 5 125 1 56 2 189 1 57 5 125 1 58 2 197 1 59 5 129 1 61 5 129 1 62 5 133 1 64 2 213 1 65] 
#[0 1 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 5 1 0 5 5 137 0 9] 
#[0 1 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 1 126 0 3 1 126 0 24 1 126 0 26 1 126 0 27 1 126 0 28 1 126 0 32 1 126 0 40 5 141 0 44 5 145 0 51 1 126 0 52 1 126 0 89 1 126 0 90 1 126 0 92 1 126 0 93 1 126 0 94 1 126 0 95 1 126 0 114 1 126 0 116 1 126 0 119 1 126 0 124 1 126 0 131 1 126 0 140 5 149 1 29 1 126 1 134] 
#[0 1 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 1 134 0 3 1 134 0 24 1 134 0 26 1 134 0 27 1 134 0 28 1 134 0 32 1 134 0 40 5 141 0 44 5 145 0 51 1 134 0 52 1 134 0 89 1 134 0 90 1 134 0 92 1 134 0 93 1 134 0 94 1 134 0 95 1 134 0 114 1 134 0 116 1 134 0 119 1 134 0 124 1 134 0 131 1 134 0 140 5 153 1 29 1 134 1 134] 
#[0 1 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 142 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 1 150 0 3 1 150 0 21 1 150 0 23 1 150 0 24 1 150 0 26 1 150 0 27 1 150 0 28 1 150 0 32 1 150 0 40 5 141 0 44 1 150 0 48 5 145 0 51 1 150 0 52 1 150 0 56 1 150 0 61 1 150 0 65 1 150 0 89 1 150 0 90 1 150 0 92 1 150 0 93 1 150 0 94 1 150 0 95 1 150 0 105 1 150 0 114 1 150 0 116 1 150 0 119 1 150 0 124 1 150 0 131 1 150 0 140 5 157 1 29 1 150 1 134] 
#[0 1 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 166 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 1 174 0 3 1 174 0 21 1 174 0 23 1 174 0 24 1 174 0 26 1 174 0 27 1 174 0 28 1 174 0 32 1 174 0 40 5 141 0 44 1 174 0 48 5 145 0 51 1 174 0 52 1 174 0 56 1 174 0 61 1 174 0 65 1 174 0 89 1 174 0 90 1 174 0 92 1 174 0 93 1 174 0 94 1 174 0 95 1 174 0 105 1 174 0 114 1 174 0 116 1 174 0 119 1 174 0 124 1 174 0 131 1 174 0 140 5 161 1 29 1 174 1 134] 
#[0 1 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 186 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 1 190 0 3 1 190 0 24 1 190 0 26 1 190 0 27 1 190 0 28 1 190 0 32 1 190 0 40 5 141 0 44 5 145 0 51 1 190 0 52 1 190 0 89 1 190 0 90 1 190 0 92 1 190 0 93 1 190 0 94 1 190 0 95 1 190 0 114 1 190 0 116 1 190 0 119 1 190 0 124 1 190 0 131 1 190 0 140 5 165 1 29 1 190 1 134] 
#[0 1 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 1 198 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 0 0 1 134] 
#[1 2 229 0 2 0 190 0 3 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 4 93 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 4 105 0 214 4 109 0 215 4 113 0 216 4 117 0 217 4 121 0 218 4 125 0 219 4 129 0 220 4 105 1 117 1 213 1 122 1 217 1 133] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[1 4 209 0 2 4 217 0 4 1 202 0 5 4 213 0 6 5 169 0 7 4 217 0 8 1 202 0 9 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[0 0 0 1 134] 
#[0 5 173 0 9] 
#[0 5 177 0 5] 
#[1 1 206 0 5 1 210 0 9] 
#[0 1 214 0 5 0 6 0 31 0 58 0 88 0 138] 
#[1 5 181 0 6 1 218 0 31 5 189 0 88 1 218 0 138 5 189 0 194] 
#[1 5 181 0 6 1 218 0 31 5 193 0 88 1 218 0 138 5 193 0 194] 
#[1 5 181 0 6 5 197 0 138] 
#[1 5 181 0 6 1 218 0 31 5 201 0 88 1 218 0 138 5 201 0 194] 
#[1 5 181 0 6 1 218 0 31 5 205 0 88 1 218 0 138 5 205 0 194] 
#[1 5 209 0 5 5 213 0 138] 
#[0 1 222 0 5 0 138] 
#[1 1 226 0 5 5 181 0 6 5 217 0 58 1 226 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 221 0 156 3 65 1 66 3 69 1 67] 
#[1 1 230 0 21 1 230 0 23 1 230 0 27 1 230 0 43 1 230 0 52 1 230 0 65 1 230 0 90 1 230 0 105 1 230 0 116 1 230 0 119 1 230 0 124 5 225 0 155] 
#[1 3 1 0 140 5 229 0 160 5 233 0 168] 
#[1 5 237 0 29 5 241 0 161] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 65 0 123 0 6 0 124 5 245 0 165] 
#[1 1 234 0 40 1 234 0 48 5 249 0 56 1 234 0 61 5 253 1 37] 
#[0 6 1 0 6] 
#[0 1 238 0 6] 
#[1 0 10 0 21 0 117 0 23 2 29 0 27 5 21 0 52 6 5 0 65 5 29 0 90 6 9 0 105 2 53 0 116 2 57 0 119 2 61 0 124 6 49 0 171 6 49 0 174 6 49 0 177 6 49 1 47 6 29 1 48 2 165 1 49 6 33 1 50 2 173 1 51 6 49 1 55 6 41 1 56 2 189 1 57 6 45 1 58 2 197 1 59 6 49 1 68 6 49 1 69 6 49 1 70 2 221 1 71 6 61 1 105 6 61 1 106 1 21 1 107] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 3 213 0 2 6 65 0 3 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 3 213 0 2 1 242 0 3 1 242 0 4 1 242 0 5 3 221 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 10 0 31 0 11 0 35 0 12 0 39 0 13 0 43 0 14 1 242 0 18 1 242 0 20 1 242 0 30 1 242 0 33 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 39 1 242 0 40 1 242 0 41 1 242 0 48 1 242 0 49 1 242 0 57 0 47 0 58 1 242 0 59 1 242 0 61 1 242 0 64 1 242 0 71 1 242 0 75 1 242 0 78 1 242 0 79 1 242 0 81 1 242 0 97 1 242 0 98 1 242 0 109 1 242 0 110 1 242 0 113 1 242 0 115 1 242 0 117 1 242 0 122 1 242 0 128 1 242 0 129 1 242 0 130 4 33 0 131 1 242 0 132 0 51 0 133 0 55 0 134 1 242 0 135 1 242 0 136 1 242 0 137 1 242 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 1 242 1 134] 
#[1 6 69 0 40 6 73 0 138] 
#[0 1 246 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 6 77 0 78 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[0 6 81 0 140] 
#[1 6 85 0 10 6 89 0 58] 
#[0 1 250 0 10 0 58] 
#[1 1 254 0 3 2 21 0 27 2 21 0 82 2 21 0 124 0 22 0 140 6 93 1 31 6 97 1 32 6 101 1 33 2 21 1 36] 
#[1 4 249 0 9 1 34 0 21 1 34 0 23 1 34 0 27 1 34 0 52 1 34 0 65 1 34 0 90 1 34 0 105 1 34 0 116 1 34 0 119 1 34 0 124 6 105 1 10] 
#[0 2 2 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 2 6 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 6 109 0 115 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 6 113 0 2 2 10 0 3 2 10 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 8 2 10 0 9 2 10 0 10 2 10 0 11 2 10 0 12 2 10 0 13 2 10 0 14 2 10 0 18 2 10 0 20 2 10 0 30 2 10 0 33 2 10 0 35 2 10 0 36 2 10 0 37 2 10 0 39 2 10 0 40 2 10 0 41 2 10 0 48 2 10 0 49 2 10 0 57 2 10 0 58 2 10 0 59 2 10 0 61 2 10 0 64 2 10 0 71 2 10 0 75 2 10 0 78 2 10 0 79 2 10 0 81 2 10 0 97 2 10 0 98 2 10 0 109 2 10 0 110 2 10 0 113 2 10 0 115 2 10 0 117 2 10 0 122 2 10 0 128 2 10 0 129 2 10 0 130 2 10 0 131 2 10 0 132 2 10 0 133 2 10 0 134 2 10 0 135 2 10 0 136 2 10 0 137 2 10 0 138 2 10 0 139 2 10 1 134] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 117 1 108 1 29 1 109 6 117 1 110 6 117 1 111 1 41 1 112 6 117 1 113 1 49 1 114 6 117 1 115 1 57 1 116 6 117 1 117 1 65 1 122 6 117 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 121 1 108 1 29 1 109 6 121 1 110 6 121 1 111 1 41 1 112 6 121 1 113 1 49 1 114 6 121 1 115 1 57 1 116 6 121 1 117 1 65 1 122 6 121 1 123 1 73 1 133] 
#[1 3 213 0 2 2 14 0 3 4 61 0 4 2 14 0 5 3 221 0 6 2 14 0 7 4 61 0 8 2 14 0 9 3 229 0 10 0 59 0 11 0 63 0 12 0 67 0 13 0 71 0 14 4 61 0 18 4 61 0 20 2 14 0 30 2 14 0 33 4 61 0 35 2 14 0 36 2 14 0 37 2 14 0 39 2 14 0 40 2 14 0 41 2 14 0 48 2 14 0 49 2 14 0 57 0 75 0 58 2 14 0 59 2 14 0 61 4 61 0 64 4 61 0 71 2 14 0 75 2 14 0 78 2 14 0 79 4 61 0 81 2 14 0 97 2 14 0 98 4 61 0 109 4 61 0 110 2 14 0 113 2 14 0 115 2 14 0 117 2 14 0 122 2 14 0 128 2 14 0 129 4 61 0 130 4 33 0 131 2 14 0 132 0 79 0 133 0 83 0 134 2 14 0 135 4 61 0 136 4 61 0 137 2 14 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 2 14 1 134] 
#[0 2 18 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 2 22 0 39 2 22 0 40 2 22 0 41 2 22 0 48 2 22 0 49 4 61 0 58 2 22 0 61 4 61 0 64 4 61 0 71 2 22 0 79 4 61 0 81 4 61 0 109 4 61 0 110 2 22 0 122 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 6 125 0 135 4 61 0 136 4 61 0 137 2 22 0 138 4 53 0 139 6 129 1 99 4 57 1 120 4 61 1 126 4 61 1 127 2 22 1 134] 
#[1 6 133 0 122 6 73 0 138] 
#[1 2 26 0 40 6 137 0 41 2 26 0 49 6 73 0 138 6 141 1 84] 
#[1 5 1 0 5 6 145 0 9 6 149 0 10] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 6 153 0 36 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 6 157 0 5 6 161 0 36] 
#[1 3 213 0 2 4 61 0 4 2 30 0 5 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 2 30 0 36 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[0 2 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 3 213 0 2 4 61 0 4 2 38 0 5 3 221 0 6 6 165 0 7 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 2 38 0 132 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 6 169 0 5 6 173 0 132] 
#[0 2 42 0 5 0 132] 
#[1 3 213 0 2 2 46 0 3 4 61 0 4 2 46 0 5 3 221 0 6 2 46 0 7 4 61 0 8 2 46 0 9 2 46 0 10 0 87 0 11 0 91 0 12 0 95 0 13 0 99 0 14 2 46 0 18 2 46 0 20 2 46 0 30 2 46 0 33 4 61 0 35 2 46 0 36 2 46 0 37 2 46 0 39 2 46 0 40 2 46 0 41 2 46 0 48 2 46 0 49 2 46 0 57 0 103 0 58 2 46 0 59 2 46 0 61 2 46 0 64 4 61 0 71 2 46 0 75 2 46 0 78 2 46 0 79 2 46 0 81 2 46 0 97 2 46 0 98 4 61 0 109 4 61 0 110 2 46 0 113 2 46 0 115 2 46 0 117 2 46 0 122 2 46 0 128 2 46 0 129 2 46 0 130 4 33 0 131 2 46 0 132 0 107 0 133 0 111 0 134 2 46 0 135 2 46 0 136 2 46 0 137 2 46 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 2 46 1 134] 
#[1 3 213 0 2 2 50 0 3 4 61 0 4 2 50 0 5 3 221 0 6 2 50 0 7 4 61 0 8 2 50 0 9 2 50 0 10 0 115 0 11 0 119 0 12 0 123 0 13 0 127 0 14 2 50 0 18 2 50 0 20 2 50 0 30 2 50 0 33 4 61 0 35 2 50 0 36 2 50 0 37 2 50 0 39 2 50 0 40 2 50 0 41 2 50 0 48 2 50 0 49 2 50 0 57 0 131 0 58 2 50 0 59 2 50 0 61 2 50 0 64 4 61 0 71 2 50 0 75 2 50 0 78 2 50 0 79 2 50 0 81 2 50 0 97 2 50 0 98 4 61 0 109 4 61 0 110 2 50 0 113 2 50 0 115 2 50 0 117 2 50 0 122 2 50 0 128 2 50 0 129 2 50 0 130 4 33 0 131 2 50 0 132 0 135 0 133 0 139 0 134 2 50 0 135 2 50 0 136 2 50 0 137 2 50 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 2 50 1 134] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 177 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 6 177 1 105 6 177 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 181 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 6 181 1 105 6 181 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[0 6 185 0 40] 
#[1 0 109 0 2 6 189 0 3 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 193 1 108 1 29 1 109 6 193 1 110 6 193 1 111 1 41 1 112 6 193 1 113 1 49 1 114 6 193 1 115 1 57 1 116 6 193 1 117 1 65 1 122 6 193 1 123 6 197 1 124 6 201 1 125 1 73 1 133] 
#[0 2 54 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[1 6 205 0 1 6 209 0 140] 
#[0 2 58 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 213 1 108 1 29 1 109 6 213 1 110 6 213 1 111 1 41 1 112 6 213 1 113 1 49 1 114 6 213 1 115 1 57 1 116 6 213 1 117 1 65 1 122 6 213 1 123 1 73 1 133] 
#[0 2 62 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 66 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 70 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 74 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 133] 
#[0 2 78 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 82 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 86 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 90 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 94 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 98 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 102 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 106 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 110 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 114 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 217 1 108 1 29 1 109 6 217 1 110 6 217 1 111 1 41 1 112 6 217 1 113 1 49 1 114 6 217 1 115 1 57 1 116 6 217 1 117 6 221 1 121 1 65 1 122 6 217 1 123 1 73 1 133] 
#[0 2 118 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 122 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 126 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 130 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 133] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 225 1 108 1 29 1 109 6 225 1 110 6 225 1 111 1 41 1 112 6 225 1 113 1 49 1 114 6 225 1 115 1 57 1 116 6 225 1 117 1 65 1 122 6 225 1 123 1 73 1 133] 
#[0 2 142 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 133] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 6 229 0 11] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 2 162 0 3 2 162 0 5 6 233 0 14] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 8 6 237 0 9 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 18 0 206 0 20 0 206 0 35 0 206 0 58 0 206 0 64 0 206 0 71 0 206 0 81 0 206 0 109 0 206 0 110 0 206 0 130 0 206 0 133 0 206 0 134 0 206 0 136 0 206 0 137] 
#[1 6 241 0 3 6 245 0 5] 
#[0 2 166 0 3 0 5] 
#[1 4 209 0 2 2 170 0 3 4 217 0 4 2 170 0 5 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 6 249 0 14 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[0 6 253 0 3] 
#[1 2 174 0 3 7 1 0 5] 
#[0 2 178 0 3 0 5] 
#[1 2 182 0 3 7 9 0 138 7 9 1 90] 
#[1 2 186 0 3 0 143 0 138] 
#[0 2 190 0 3 0 138] 
#[1 4 209 0 2 2 194 0 3 2 194 0 4 2 194 0 5 4 213 0 6 2 194 0 7 2 194 0 8 2 194 0 9 2 194 0 10 0 147 0 11 0 151 0 12 0 155 0 13 2 194 0 14 2 194 0 16 2 194 0 18 2 194 0 20 2 194 0 21 2 194 0 23 2 194 0 27 2 194 0 30 2 194 0 31 2 194 0 33 2 194 0 35 2 194 0 36 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 48 2 194 0 49 2 194 0 52 2 194 0 57 0 159 0 58 2 194 0 59 2 194 0 61 2 194 0 64 2 194 0 65 2 194 0 71 2 194 0 75 2 194 0 78 2 194 0 79 2 194 0 81 2 194 0 88 2 194 0 90 2 194 0 97 2 194 0 98 2 194 0 105 2 194 0 109 2 194 0 110 2 194 0 113 2 194 0 116 2 194 0 119 2 194 0 122 2 194 0 124 2 194 0 128 2 194 0 129 2 194 0 130 2 194 0 131 2 194 0 132 0 163 0 133 0 167 0 134 2 194 0 136 2 194 0 137 2 194 0 138 4 217 1 127 2 194 1 134] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 7 17 0 184 7 17 0 188 1 153 0 193 7 17 0 195 7 17 0 196 7 17 0 198 7 17 0 202 7 17 0 203 1 177 0 205 7 17 0 211 1 185 0 212 1 189 0 213 1 193 0 214 7 17 0 245 7 17 0 246 7 17 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[0 7 21 0 9] 
#[1 4 209 0 2 2 198 0 3 4 217 0 4 2 198 0 5 4 213 0 6 2 198 0 7 4 217 0 8 2 198 0 9 2 198 0 10 0 171 0 11 0 175 0 12 0 179 0 13 2 198 0 14 2 198 0 16 4 217 0 18 4 217 0 20 2 198 0 21 2 198 0 23 2 198 0 27 2 198 0 30 2 198 0 31 2 198 0 33 4 217 0 35 2 198 0 36 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 48 2 198 0 49 2 198 0 52 2 198 0 57 0 183 0 58 2 198 0 59 2 198 0 61 4 217 0 64 2 198 0 65 4 217 0 71 2 198 0 75 2 198 0 78 2 198 0 79 4 217 0 81 2 198 0 88 2 198 0 90 2 198 0 97 2 198 0 98 2 198 0 105 4 217 0 109 4 217 0 110 2 198 0 113 2 198 0 116 2 198 0 119 2 198 0 122 2 198 0 124 2 198 0 128 2 198 0 129 4 217 0 130 2 198 0 131 2 198 0 132 0 187 0 133 0 191 0 134 4 217 0 136 4 217 0 137 2 198 0 138 4 217 1 127 2 198 1 134] 
#[1 7 25 0 78 2 202 0 138 7 29 1 6] 
#[0 7 33 0 50] 
#[1 7 37 0 52 7 41 0 90] 
#[1 7 45 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 7 49 0 211 1 185 0 212 1 189 0 213 7 53 0 214 7 53 1 117 1 213 1 122 1 217 1 133] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 4 233 0 11 1 26 0 14 1 26 0 16 1 26 0 21 1 26 0 23 1 26 0 24 1 26 0 26 1 26 0 27 1 26 0 28 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 36 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 48 1 26 0 49 1 26 0 52 1 26 0 57 1 26 0 58 1 26 0 59 1 26 0 61 1 26 0 65 1 26 0 75 1 26 0 78 1 26 0 79 1 26 0 88 1 26 0 89 1 26 0 90 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 95 1 26 0 97 1 26 0 98 1 26 0 105 1 26 0 113 1 26 0 114 1 26 0 116 1 26 0 119 1 26 0 122 1 26 0 124 1 26 0 128 1 26 0 129 1 26 0 131 1 26 0 132 1 26 0 133 1 26 0 138 1 26 0 140 7 57 0 180 1 26 1 134] 
#[1 2 206 0 3 2 206 0 5 7 61 0 6 2 206 0 10 2 206 0 14 2 206 0 16 2 206 0 21 2 206 0 23 2 206 0 27 2 206 0 30 2 206 0 31 2 206 0 33 2 206 0 36 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 48 2 206 0 49 2 206 0 52 2 206 0 57 2 206 0 58 2 206 0 59 2 206 0 61 2 206 0 65 2 206 0 75 2 206 0 78 2 206 0 79 2 206 0 88 2 206 0 90 2 206 0 97 2 206 0 98 2 206 0 105 2 206 0 113 2 206 0 116 2 206 0 119 2 206 0 122 2 206 0 124 2 206 0 128 2 206 0 129 2 206 0 131 2 206 0 132 2 206 0 133 2 206 0 138 2 206 1 134] 
#[1 4 209 0 2 2 210 0 3 4 217 0 4 2 210 0 5 4 213 0 6 2 210 0 7 4 217 0 8 2 210 0 9 2 210 0 10 0 195 0 11 0 199 0 12 0 203 0 13 2 210 0 14 2 210 0 16 2 210 0 18 2 210 0 20 2 210 0 21 2 210 0 23 2 210 0 27 2 210 0 30 2 210 0 31 2 210 0 33 4 217 0 35 2 210 0 36 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 48 2 210 0 49 2 210 0 52 2 210 0 57 0 207 0 58 2 210 0 59 2 210 0 61 2 210 0 64 2 210 0 65 4 217 0 71 2 210 0 75 2 210 0 78 2 210 0 79 2 210 0 81 2 210 0 88 2 210 0 90 2 210 0 97 2 210 0 98 2 210 0 105 4 217 0 109 4 217 0 110 2 210 0 113 2 210 0 116 2 210 0 119 2 210 0 122 2 210 0 124 2 210 0 128 2 210 0 129 2 210 0 130 2 210 0 131 2 210 0 132 0 211 0 133 0 215 0 134 2 210 0 136 2 210 0 137 2 210 0 138 4 217 1 127 2 210 1 134] 
#[1 4 209 0 2 2 214 0 3 4 217 0 4 2 214 0 5 4 213 0 6 2 214 0 7 4 217 0 8 2 214 0 9 2 214 0 10 0 219 0 11 0 223 0 12 0 227 0 13 2 214 0 14 2 214 0 16 2 214 0 18 2 214 0 20 2 214 0 21 2 214 0 23 2 214 0 27 2 214 0 30 2 214 0 31 2 214 0 33 4 217 0 35 2 214 0 36 2 214 0 39 2 214 0 40 2 214 0 41 2 214 0 48 2 214 0 49 2 214 0 52 2 214 0 57 0 231 0 58 2 214 0 59 2 214 0 61 2 214 0 64 2 214 0 65 4 217 0 71 2 214 0 75 2 214 0 78 2 214 0 79 2 214 0 81 2 214 0 88 2 214 0 90 2 214 0 97 2 214 0 98 2 214 0 105 4 217 0 109 4 217 0 110 2 214 0 113 2 214 0 116 2 214 0 119 2 214 0 122 2 214 0 124 2 214 0 128 2 214 0 129 2 214 0 130 2 214 0 131 2 214 0 132 0 235 0 133 0 239 0 134 2 214 0 136 2 214 0 137 2 214 0 138 4 217 1 127 2 214 1 134] 
#[0 0 222 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 2 218 0 3 2 218 0 5 2 218 0 10 2 218 0 14 2 218 0 16 2 218 0 21 2 218 0 23 2 218 0 27 2 218 0 30 2 218 0 31 2 218 0 33 2 218 0 36 2 218 0 39 2 218 0 40 2 218 0 41 2 218 0 48 2 218 0 49 2 218 0 52 2 218 0 57 2 218 0 58 2 218 0 59 2 218 0 61 2 218 0 65 2 218 0 75 2 218 0 78 2 218 0 79 2 218 0 88 2 218 0 90 2 218 0 97 2 218 0 98 2 218 0 105 2 218 0 113 2 218 0 116 2 218 0 119 2 218 0 122 2 218 0 124 2 218 0 128 2 218 0 129 4 225 0 131 2 218 0 132 2 218 0 133 2 218 0 138 2 218 1 134] 
#[0 7 65 0 141] 
#[0 2 222 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 2 226 0 78 7 69 0 131 7 73 0 248] 
#[1 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 7 77 0 204 7 81 0 228 7 85 0 238] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 7 89 0 212 1 189 0 213 1 193 0 214 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 7 93 0 214 7 97 0 221 7 93 1 117 1 213 1 122 1 217 1 133] 
#[0 7 101 0 141] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 7 105 0 214 7 105 1 117 1 213 1 122 1 217 1 133] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 7 109 0 184 7 109 0 188 1 153 0 193 7 109 0 195 7 109 0 196 7 109 0 198 7 109 0 202 7 109 0 203 1 177 0 205 7 109 0 211 1 185 0 212 1 189 0 213 1 193 0 214 7 109 0 245 7 109 0 246 7 109 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 7 113 0 214 7 113 1 117 1 213 1 122 1 217 1 133] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 7 117 0 132 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[1 7 121 0 140 7 125 0 181 7 129 0 182] 
#[0 7 133 0 14] 
#[1 4 233 0 11 1 26 0 14 7 137 0 180] 
#[0 2 234 0 26 0 28 0 32 0 52 0 90 0 131 0 140] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 7 141 0 184 7 141 0 188 1 153 0 193 7 141 0 195 7 141 0 196 7 141 0 198 7 141 0 202 7 141 0 203 1 177 0 205 7 141 0 211 1 185 0 212 1 189 0 213 1 193 0 214 7 141 0 245 7 141 0 246 7 141 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[0 7 145 0 14] 
#[0 7 149 0 140] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 7 153 0 184 7 153 0 188 1 153 0 193 7 153 0 195 7 153 0 196 7 153 0 198 7 153 0 202 7 153 0 203 1 177 0 205 7 153 0 211 1 185 0 212 1 189 0 213 1 193 0 214 7 153 0 245 7 153 0 246 7 153 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 2 238 0 3 5 1 0 5 7 157 0 9 2 238 0 132 2 238 0 138 2 238 1 134] 
#[1 4 165 0 140 7 161 0 237] 
#[1 4 165 0 140 7 165 0 237] 
#[1 4 165 0 140 7 169 0 237] 
#[1 4 165 0 140 7 173 0 237] 
#[1 4 165 0 140 7 177 0 237] 
#[0 2 242 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 2 246 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 2 250 0 3 2 250 0 21 2 250 0 23 2 250 0 24 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 32 2 250 0 40 5 141 0 44 5 145 0 51 2 250 0 52 2 250 0 65 2 250 0 89 2 250 0 90 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 95 2 250 0 105 2 250 0 114 2 250 0 116 2 250 0 119 2 250 0 124 2 250 0 131 2 250 0 140 5 157 1 29 2 250 1 134] 
#[0 2 254 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 3 2 0 3 3 2 0 21 3 2 0 23 3 2 0 24 3 2 0 26 3 2 0 27 3 2 0 28 3 2 0 32 3 2 0 40 5 141 0 44 5 145 0 51 3 2 0 52 3 2 0 65 3 2 0 89 3 2 0 90 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 95 3 2 0 105 3 2 0 114 3 2 0 116 3 2 0 119 3 2 0 124 3 2 0 131 3 2 0 140 5 161 1 29 3 2 1 134] 
#[0 3 6 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 3 10 0 3 3 10 0 21 3 10 0 23 3 10 0 24 3 10 0 26 3 10 0 27 3 10 0 28 3 10 0 32 3 10 0 40 3 10 0 43 3 10 0 48 3 10 0 52 3 10 0 56 3 10 0 61 3 10 0 65 3 10 0 89 3 10 0 90 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 95 3 10 0 105 3 10 0 114 3 10 0 116 3 10 0 119 3 10 0 124 3 10 0 131 1 241 0 140 7 181 0 173 3 10 1 134] 
#[0 3 14 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 3 109 0 2 7 61 0 6 0 54 0 138 7 185 0 197] 
#[1 3 109 0 2 7 61 0 6 0 54 0 138 7 189 0 197] 
#[1 3 109 0 2 7 61 0 6 0 54 0 9 7 193 0 14 0 54 0 138 7 197 0 197] 
#[1 3 109 0 2 7 61 0 6 7 201 0 14 0 54 0 138 7 205 0 197] 
#[1 3 18 0 9 3 18 0 30 3 18 0 33 3 18 0 57 3 18 0 59 3 18 0 75 3 18 0 97 3 18 0 98 3 18 0 113 3 18 0 128 3 18 0 129 7 209 0 131 3 18 0 138 7 213 1 15] 
#[1 3 22 0 3 3 22 0 21 3 22 0 23 3 22 0 24 3 22 0 26 3 22 0 27 3 22 0 28 3 22 0 32 3 22 0 40 3 22 0 43 3 22 0 48 3 22 0 52 3 22 0 56 3 22 0 61 3 22 0 65 3 22 0 89 3 22 0 90 3 22 0 92 3 22 0 93 3 22 0 94 3 22 0 95 3 22 0 105 3 22 0 114 3 22 0 116 3 22 0 119 3 22 0 124 3 22 0 131 1 249 0 140 1 253 1 34 7 217 1 73 3 22 1 134] 
#[0 3 26 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 3 30 0 3 3 30 0 21 3 30 0 23 3 30 0 24 3 30 0 26 3 30 0 27 3 30 0 28 3 30 0 32 3 30 0 40 3 30 0 43 3 30 0 48 3 30 0 52 3 30 0 56 3 30 0 61 3 30 0 65 3 30 0 89 3 30 0 90 3 30 0 92 3 30 0 93 3 30 0 94 3 30 0 95 3 30 0 105 3 30 0 114 3 30 0 116 3 30 0 119 3 30 0 124 1 221 0 131 1 225 0 140 7 221 0 179 1 233 0 241 1 237 0 242 3 30 1 134] 
#[0 3 34 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 3 38 0 3 3 38 0 21 3 38 0 23 3 38 0 24 3 38 0 26 3 38 0 27 3 38 0 28 3 38 0 32 3 38 0 40 3 38 0 43 3 38 0 48 3 38 0 52 3 38 0 56 3 38 0 61 3 38 0 65 3 38 0 89 3 38 0 90 3 38 0 92 3 38 0 93 3 38 0 94 3 38 0 95 3 38 0 105 3 38 0 114 3 38 0 116 3 38 0 119 3 38 0 124 3 38 0 131 1 249 0 140 1 253 1 34 7 217 1 73 3 38 1 134] 
#[1 5 13 0 28 5 17 0 32 5 21 0 52 5 25 0 80 5 29 0 90 5 37 1 49 5 41 1 51 5 45 1 57 5 49 1 59] 
#[0 3 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 3 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 3 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 3 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 3 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 3 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 3 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 7 225 0 184 7 225 0 188 1 153 0 193 7 225 0 195 7 225 0 196 7 225 0 198 7 225 0 202 7 225 0 203 1 177 0 205 7 225 0 211 1 185 0 212 1 189 0 213 1 193 0 214 7 225 0 245 7 225 0 246 7 225 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 7 229 0 138 7 233 0 140 7 237 0 144] 
#[0 7 241 0 138] 
#[1 3 70 0 3 3 70 0 17 3 70 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 38 3 70 0 40 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 47 3 70 0 48 3 70 0 51 3 70 0 52 3 70 0 61 3 70 0 62 3 70 0 67 3 70 0 70 3 70 0 74 3 70 0 83 3 70 0 84 3 70 0 87 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 140 7 245 1 25 3 70 1 134] 
#[1 3 70 0 3 3 70 0 17 3 70 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 38 3 70 0 40 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 47 3 70 0 48 3 70 0 51 3 70 0 52 3 70 0 61 3 70 0 62 3 70 0 67 3 70 0 70 3 70 0 74 3 70 0 83 3 70 0 84 3 70 0 87 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 140 7 249 1 25 3 70 1 134] 
#[1 3 70 0 3 3 70 0 17 3 70 0 21 3 70 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 38 3 70 0 40 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 47 3 70 0 48 3 70 0 51 3 70 0 52 3 70 0 56 3 70 0 61 3 70 0 62 3 70 0 65 3 70 0 67 3 70 0 70 3 70 0 74 3 70 0 83 3 70 0 84 3 70 0 87 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 140 7 253 1 25 3 70 1 134] 
#[1 3 70 0 3 3 70 0 17 3 70 0 21 3 70 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 38 3 70 0 40 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 47 3 70 0 48 3 70 0 51 3 70 0 52 3 70 0 56 3 70 0 61 3 70 0 62 3 70 0 65 3 70 0 67 3 70 0 70 3 70 0 74 3 70 0 83 3 70 0 84 3 70 0 87 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 140 8 1 1 25 3 70 1 134] 
#[1 3 70 0 3 3 70 0 17 3 70 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 38 3 70 0 40 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 47 3 70 0 48 3 70 0 51 3 70 0 52 3 70 0 61 3 70 0 62 3 70 0 67 3 70 0 70 3 70 0 74 3 70 0 83 3 70 0 84 3 70 0 87 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 124 3 70 0 125 3 70 0 131 3 70 0 140 8 5 1 25 3 70 1 134] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 8 9 0 214 8 9 1 117 1 213 1 122 1 217 1 133] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 13 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 8 13 1 105 8 13 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 2 237 0 214 8 17 1 96 2 237 1 117 1 213 1 122 1 217 1 133] 
#[0 8 21 0 140] 
#[0 3 74 0 14 0 31 0 138] 
#[1 8 25 0 31 3 78 0 138 8 29 0 227] 
#[1 8 25 0 31 3 78 0 138 8 33 0 227] 
#[0 3 82 0 104] 
#[1 8 25 0 31 3 78 0 138 8 37 0 227] 
#[1 8 25 0 31 3 78 0 138 8 41 0 227] 
#[1 3 1 0 140 8 45 0 167 3 33 0 168] 
#[0 3 86 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 8 49 0 144] 
#[0 8 53 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 8 57 0 43 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 8 61 0 156 3 65 1 66 3 69 1 67 8 65 1 130] 
#[1 8 69 0 5 8 73 0 138] 
#[1 3 90 0 5 5 181 0 6 3 90 0 138] 
#[1 3 1 0 140 8 77 0 166 3 29 0 167 3 33 0 168] 
#[1 8 81 0 40 8 85 1 132] 
#[1 3 94 0 27 3 94 0 40 3 94 0 48 3 94 0 52 3 94 0 56 3 94 0 61 3 94 0 90 3 94 0 105 3 94 0 116 3 94 0 119 3 94 0 124 8 89 0 169] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 65 0 123 0 6 0 124 8 93 0 165] 
#[1 3 98 0 40 3 98 0 48 8 97 0 61 8 101 1 128] 
#[0 3 102 1 134] 
#[1 1 249 0 140 8 105 1 34] 
#[1 8 109 0 140 8 113 0 175 8 117 0 176] 
#[0 3 106 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 110 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 114 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 118 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 122 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 8 121 1 66 3 69 1 67] 
#[0 3 126 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 130 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 8 125 1 66 3 69 1 67] 
#[0 3 134 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 138 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 142 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 8 129 0 138] 
#[0 3 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 3 150 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 133 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 8 133 1 105 8 133 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 2 237 0 214 8 137 1 91 8 141 1 92 8 145 1 93 2 245 1 94 2 249 1 95 2 253 1 96 2 237 1 117 1 213 1 122 1 217 1 133] 
#[1 8 149 0 9 3 154 0 10 3 154 0 58] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 153 1 108 1 29 1 109 8 153 1 110 8 153 1 111 1 41 1 112 8 153 1 113 1 49 1 114 8 153 1 115 1 57 1 116 8 153 1 117 1 65 1 122 8 153 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 157 1 108 1 29 1 109 8 157 1 110 8 157 1 111 1 41 1 112 8 157 1 113 1 49 1 114 8 157 1 115 1 57 1 116 8 157 1 117 1 65 1 122 8 157 1 123 1 73 1 133] 
#[0 8 161 0 3] 
#[1 3 158 0 3 3 158 0 132 8 165 0 138] 
#[0 3 162 0 3 0 132 0 138] 
#[0 3 166 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 169 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 8 169 1 105 8 169 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[1 0 109 0 2 8 173 0 3 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 193 1 108 1 29 1 109 6 193 1 110 6 193 1 111 1 41 1 112 6 193 1 113 1 49 1 114 6 193 1 115 1 57 1 116 6 193 1 117 1 65 1 122 6 193 1 123 8 177 1 124 6 201 1 125 1 73 1 133] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 8 181 0 9 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 8 185 0 9 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 4 165 0 140 8 189 0 237] 
#[0 3 170 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 193 1 108 1 29 1 109 8 193 1 110 8 193 1 111 1 41 1 112 8 193 1 113 1 49 1 114 8 193 1 115 1 57 1 116 8 193 1 117 1 65 1 122 8 193 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 8 197 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 201 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 8 205 1 85 8 209 1 86 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 3 174 0 40 8 213 0 49 8 217 1 88] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 8 221 0 184 8 221 0 188 1 153 0 193 8 221 0 195 8 221 0 196 8 221 0 198 8 221 0 202 8 221 0 203 1 177 0 205 8 221 0 211 1 185 0 212 1 189 0 213 1 193 0 214 8 221 0 245 8 221 0 246 8 221 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 225 1 108 1 29 1 109 8 225 1 110 8 225 1 111 1 41 1 112 8 225 1 113 1 49 1 114 8 225 1 115 1 57 1 116 8 225 1 117 1 65 1 122 8 225 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 229 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 8 229 1 105 8 229 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 233 1 108 1 29 1 109 8 233 1 110 8 233 1 111 1 41 1 112 8 233 1 113 1 49 1 114 8 233 1 115 1 57 1 116 8 233 1 117 1 65 1 122 8 233 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 237 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 8 237 1 105 8 237 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 8 241 1 108 1 29 1 109 8 241 1 110 8 241 1 111 1 41 1 112 8 241 1 113 1 49 1 114 8 241 1 115 1 57 1 116 8 241 1 117 1 65 1 122 8 241 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 3 181 1 108 1 29 1 109 3 181 1 110 3 181 1 111 1 41 1 112 3 181 1 113 1 49 1 114 3 181 1 115 1 57 1 116 3 181 1 117 8 245 1 119 1 65 1 122 3 181 1 123 1 73 1 133] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 3 182 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 3 186 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 3 190 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 3 213 0 2 3 198 0 3 4 61 0 4 3 198 0 5 3 221 0 6 4 61 0 8 3 198 0 9 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 8 249 0 3 8 253 0 5] 
#[1 3 202 0 3 3 202 0 5 9 1 0 9] 
#[0 3 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 3 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 3 213 0 2 3 214 0 3 4 61 0 4 3 214 0 5 3 221 0 6 3 214 0 7 4 61 0 8 3 214 0 9 3 229 0 10 0 243 0 11 0 247 0 12 0 251 0 13 0 255 0 14 4 61 0 18 4 61 0 20 3 214 0 30 3 214 0 33 4 61 0 35 3 214 0 36 3 214 0 37 3 214 0 39 3 214 0 40 3 214 0 41 3 214 0 48 3 214 0 49 3 214 0 57 1 3 0 58 3 214 0 59 3 214 0 61 4 61 0 64 4 61 0 71 3 214 0 75 3 214 0 78 3 214 0 79 4 61 0 81 3 214 0 97 3 214 0 98 4 61 0 109 4 61 0 110 3 214 0 113 3 214 0 115 3 214 0 117 3 214 0 122 3 214 0 128 3 214 0 129 4 61 0 130 4 33 0 131 3 214 0 132 1 7 0 133 1 11 0 134 3 214 0 135 4 61 0 136 4 61 0 137 3 214 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 3 214 1 134] 
#[1 3 213 0 2 4 61 0 4 3 218 0 5 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 3 218 0 132 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 9 5 0 5 9 9 0 132] 
#[1 3 213 0 2 3 222 0 3 4 61 0 4 3 222 0 5 3 221 0 6 3 222 0 7 4 61 0 8 3 222 0 9 3 229 0 10 1 15 0 11 1 19 0 12 1 23 0 13 1 27 0 14 4 61 0 18 4 61 0 20 3 222 0 30 3 222 0 33 4 61 0 35 3 222 0 36 3 222 0 37 3 222 0 39 3 222 0 40 3 222 0 41 3 222 0 48 3 222 0 49 3 222 0 57 1 31 0 58 3 222 0 59 3 222 0 61 4 61 0 64 4 61 0 71 3 222 0 75 3 222 0 78 3 222 0 79 4 61 0 81 3 222 0 97 3 222 0 98 4 61 0 109 4 61 0 110 3 222 0 113 3 222 0 115 3 222 0 117 3 222 0 122 3 222 0 128 3 222 0 129 4 61 0 130 4 33 0 131 3 222 0 132 1 35 0 133 1 39 0 134 3 222 0 135 4 61 0 136 4 61 0 137 3 222 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 3 222 1 134] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 197 0 184 9 13 0 188 9 17 0 192 1 153 0 193 1 197 0 195 1 197 0 196 9 13 0 198 9 13 0 202 9 13 0 203 1 177 0 205 9 13 0 211 1 185 0 212 1 189 0 213 1 193 0 214 1 197 0 245 9 13 0 246 9 13 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 9 21 0 214 9 21 1 117 1 213 1 122 1 217 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 9 25 0 214 9 25 1 117 1 213 1 122 1 217 1 133] 
#[0 3 226 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 4 89 0 140 9 29 0 186] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 9 33 0 214 9 33 1 117 1 213 1 122 1 217 1 133] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 4 105 0 214 9 37 0 217 4 105 1 117 1 213 1 122 1 217 1 133] 
#[0 3 234 0 3] 
#[0 9 41 0 3] 
#[1 9 45 0 141 9 49 0 220] 
#[1 3 238 0 3 3 238 0 5 3 238 0 10 3 238 0 14 4 221 0 16 3 238 0 21 3 238 0 23 3 238 0 27 3 238 0 30 3 238 0 31 3 238 0 33 3 238 0 36 3 238 0 39 3 238 0 40 3 238 0 41 3 238 0 48 3 238 0 49 3 238 0 52 3 238 0 57 3 238 0 58 3 238 0 59 3 238 0 61 3 238 0 65 3 238 0 75 3 238 0 78 3 238 0 79 3 238 0 88 3 238 0 90 3 238 0 97 3 238 0 98 3 238 0 105 3 238 0 113 3 238 0 116 3 238 0 119 3 238 0 122 3 238 0 124 3 238 0 128 3 238 0 129 4 225 0 131 3 238 0 132 3 238 0 133 3 238 0 138 3 238 1 134] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 9 53 0 184 9 53 0 188 1 153 0 193 9 53 0 195 9 53 0 196 9 53 0 198 9 53 0 202 9 53 0 203 1 177 0 205 9 53 0 211 1 185 0 212 1 189 0 213 1 193 0 214 9 53 0 245 9 53 0 246 9 53 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[0 9 57 0 77] 
#[0 9 61 0 138] 
#[1 4 165 0 140 9 65 0 237] 
#[1 3 109 0 2 0 54 0 9 9 69 0 197] 
#[1 3 109 0 2 0 54 0 138 9 73 0 197] 
#[1 2 229 0 2 0 190 0 3 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 9 77 0 141 1 189 0 142 1 213 0 144 1 141 0 148 9 81 0 199 1 189 0 213 4 105 0 214 4 109 0 215 4 113 0 216 4 117 0 217 4 121 0 218 4 125 0 219 4 129 0 220 4 105 1 117 1 213 1 122 1 217 1 133] 
#[0 3 242 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 4 209 0 2 3 246 0 3 4 217 0 4 3 246 0 5 4 213 0 6 1 2 0 7 4 217 0 8 3 246 0 10 4 217 0 11 4 217 0 12 4 217 0 13 3 246 0 14 3 246 0 16 4 217 0 18 4 217 0 20 3 246 0 21 3 246 0 23 3 246 0 27 3 246 0 30 3 246 0 31 3 246 0 33 4 217 0 35 3 246 0 36 3 246 0 39 3 246 0 40 3 246 0 41 3 246 0 48 3 246 0 49 3 246 0 52 3 246 0 57 1 43 0 58 3 246 0 59 3 246 0 61 4 217 0 64 3 246 0 65 4 217 0 71 3 246 0 75 3 246 0 78 3 246 0 79 4 217 0 81 3 246 0 88 3 246 0 90 3 246 0 97 3 246 0 98 3 246 0 105 4 217 0 109 4 217 0 110 3 246 0 113 3 246 0 116 3 246 0 119 3 246 0 122 3 246 0 124 3 246 0 128 3 246 0 129 4 217 0 130 3 246 0 131 3 246 0 132 1 47 0 133 4 217 0 134 4 217 0 136 4 217 0 137 3 246 0 138 4 217 1 127 3 246 1 134] 
#[0 3 250 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 9 85 0 140] 
#[0 3 254 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 9 101 0 211 1 185 0 212 1 189 0 213 9 93 0 214 9 97 0 249 9 101 0 250 9 93 1 117 1 213 1 122 1 217 1 133] 
#[0 9 105 0 78] 
#[0 9 109 0 40] 
#[1 4 2 0 3 4 2 0 24 4 2 0 40 4 2 0 89 4 2 0 93 4 2 0 94 4 2 0 95 4 2 0 114 9 113 0 229] 
#[1 4 6 0 3 4 6 0 24 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 4 6 0 40 2 41 0 52 4 6 0 89 2 45 0 90 2 49 0 92 4 6 0 93 4 6 0 94 4 6 0 95 4 6 0 114 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 9 117 0 171 9 117 0 177 9 117 0 239 9 117 0 240 2 81 0 241 1 237 0 242 9 117 0 243 9 117 0 244 9 117 1 0 9 117 1 1 9 117 1 2 9 117 1 3 9 117 1 4 9 117 1 5 9 117 1 7 9 117 1 8 9 117 1 9 9 117 1 11 2 133 1 12 9 117 1 13 2 141 1 34 9 117 1 42 2 149 1 43 9 117 1 45 2 157 1 46 9 117 1 48 2 165 1 49 9 117 1 50 2 173 1 51 9 117 1 53 9 117 1 54 9 117 1 56 2 189 1 57 9 117 1 58 2 197 1 59 9 117 1 61 9 117 1 62 9 117 1 64 2 213 1 65 9 117 1 70 2 221 1 71] 
#[0 4 10 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 4 209 0 2 4 14 0 3 4 217 0 4 4 14 0 5 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[1 9 121 0 3 9 125 0 5] 
#[0 4 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[1 4 209 0 2 4 22 0 3 4 217 0 4 4 22 0 5 4 213 0 6 4 22 0 7 4 217 0 8 4 22 0 9 4 22 0 10 1 51 0 11 1 55 0 12 1 59 0 13 4 22 0 14 4 22 0 16 4 217 0 18 4 217 0 20 4 22 0 21 4 22 0 23 4 22 0 27 4 22 0 30 4 22 0 31 4 22 0 33 4 217 0 35 4 22 0 36 4 22 0 39 4 22 0 40 4 22 0 41 4 22 0 48 4 22 0 49 4 22 0 52 4 22 0 57 1 63 0 58 4 22 0 59 4 22 0 61 4 217 0 64 4 22 0 65 4 217 0 71 4 22 0 75 4 22 0 78 4 22 0 79 4 217 0 81 4 22 0 88 4 22 0 90 4 22 0 97 4 22 0 98 4 22 0 105 4 217 0 109 4 217 0 110 4 22 0 113 4 22 0 116 4 22 0 119 4 22 0 122 4 22 0 124 4 22 0 128 4 22 0 129 4 217 0 130 4 22 0 131 4 22 0 132 1 67 0 133 1 71 0 134 4 217 0 136 4 217 0 137 4 22 0 138 4 217 1 127 4 22 1 134] 
#[1 4 26 0 3 4 26 0 5 4 26 0 10 4 26 0 14 4 26 0 21 4 26 0 23 4 26 0 27 4 26 0 30 4 26 0 31 4 26 0 33 4 26 0 36 4 26 0 39 4 26 0 40 4 26 0 41 4 26 0 48 4 26 0 49 4 26 0 52 4 26 0 57 4 26 0 58 4 26 0 59 4 26 0 61 4 26 0 65 4 26 0 75 4 26 0 78 4 26 0 79 4 26 0 88 4 26 0 90 4 26 0 97 4 26 0 98 4 26 0 105 4 26 0 113 4 26 0 116 4 26 0 119 4 26 0 122 4 26 0 124 4 26 0 128 4 26 0 129 4 225 0 131 4 26 0 132 4 26 0 133 4 26 0 138 4 26 1 134] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 9 129 0 132 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[0 4 30 0 26 0 28 0 32 0 52 0 90 0 131 0 140 1 134] 
#[1 4 34 0 5 9 133 0 9 4 34 0 133] 
#[1 9 137 0 5 9 141 0 133] 
#[0 4 38 0 5 0 133] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 9 145 0 26 9 205 0 34 1 85 0 46 1 89 0 52 9 205 0 63 1 93 0 76 9 157 0 77 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 9 161 0 183 9 165 0 184 9 169 0 187 9 173 0 188 1 153 0 193 9 177 0 195 9 181 0 196 9 173 0 198 9 169 0 201 9 173 0 202 9 173 0 203 1 177 0 205 9 173 0 211 1 185 0 212 1 189 0 213 1 193 0 214 9 169 0 222 9 169 0 223 9 169 0 226 1 197 0 245 9 173 0 246 9 173 0 247 9 169 0 251 9 205 0 252 1 193 1 117 1 213 1 122 1 217 1 133] 
#[0 9 209 0 14] 
#[1 4 42 0 14 4 221 0 16 4 42 0 21 4 42 0 23 4 42 0 27 4 42 0 30 4 42 0 33 4 42 0 36 4 42 0 52 4 42 0 57 4 42 0 59 4 42 0 65 4 42 0 75 4 42 0 78 4 42 0 90 4 42 0 97 4 42 0 98 4 42 0 105 4 42 0 113 4 42 0 116 4 42 0 119 4 42 0 124 4 42 0 128 4 42 0 129 4 225 0 131 4 42 0 138] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 9 213 0 214 9 213 1 117 1 213 1 122 1 217 1 133] 
#[0 4 46 0 3 0 5 0 9 0 10 0 132 0 138 1 134] 
#[1 1 218 0 14 4 221 0 16 9 217 0 88 4 225 0 131 1 218 0 138 9 217 0 194] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 9 221 0 184 9 221 0 188 1 153 0 193 9 221 0 195 9 221 0 196 9 221 0 198 9 221 0 202 9 221 0 203 1 177 0 205 9 221 0 211 1 185 0 212 1 189 0 213 1 193 0 214 9 221 0 245 9 221 0 246 9 221 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 3 109 0 2 7 61 0 6 0 54 0 138 9 225 0 197] 
#[1 3 109 0 2 7 61 0 6 0 54 0 138 9 229 0 197] 
#[1 3 109 0 2 7 61 0 6 0 54 0 9 0 54 0 138 7 197 0 197] 
#[1 3 109 0 2 7 61 0 6 0 54 0 9 0 54 0 138 9 233 0 197] 
#[1 3 109 0 2 7 61 0 6 0 54 0 138 7 205 0 197] 
#[0 4 50 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 9 237 0 138] 
#[0 9 241 0 138] 
#[0 9 245 0 140] 
#[1 4 249 0 9 1 34 0 138 9 249 1 10] 
#[0 9 253 0 140] 
#[0 10 1 0 138] 
#[1 2 21 0 27 2 21 0 82 2 21 0 124 1 254 0 132 0 22 0 140 10 5 1 31 6 97 1 32 6 101 1 33 2 21 1 36] 
#[1 4 249 0 9 1 34 0 30 1 34 0 33 1 34 0 57 1 34 0 59 1 34 0 75 1 34 0 97 1 34 0 98 1 34 0 113 1 34 0 128 1 34 0 129 1 34 0 138 10 9 1 10] 
#[0 4 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 4 58 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 4 221 0 16 1 218 0 31 10 13 0 88 4 225 0 131 1 218 0 138 10 13 0 194] 
#[0 4 62 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[1 10 17 0 72 10 21 0 138] 
#[1 10 25 0 72 10 29 0 138] 
#[0 4 66 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[1 4 70 0 3 10 141 0 17 10 141 0 22 4 70 0 23 4 70 0 24 10 141 0 25 4 70 0 26 4 70 0 27 4 70 0 28 10 45 0 31 4 70 0 32 10 49 0 33 10 141 0 38 4 70 0 40 10 141 0 42 4 70 0 43 5 141 0 44 10 141 0 45 10 141 0 47 4 70 0 48 5 145 0 51 4 70 0 52 4 70 0 61 10 141 0 62 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 4 70 0 89 4 70 0 90 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 95 10 141 0 101 10 141 0 102 4 70 0 105 10 141 0 106 10 141 0 111 10 141 0 112 4 70 0 114 4 70 0 116 4 70 0 119 10 141 0 121 4 70 0 124 10 141 0 125 4 70 0 131 4 70 0 140 10 129 1 27 10 129 1 28 10 129 1 29 10 141 1 30 4 70 1 134] 
#[1 4 74 0 3 10 141 0 17 10 141 0 22 4 74 0 23 4 74 0 24 10 141 0 25 4 74 0 26 4 74 0 27 4 74 0 28 10 45 0 31 4 74 0 32 10 49 0 33 10 141 0 38 4 74 0 40 10 141 0 42 4 74 0 43 5 141 0 44 10 141 0 45 10 141 0 47 4 74 0 48 5 145 0 51 4 74 0 52 4 74 0 61 10 141 0 62 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 4 74 0 89 4 74 0 90 4 74 0 92 4 74 0 93 4 74 0 94 4 74 0 95 10 141 0 101 10 141 0 102 4 74 0 105 10 141 0 106 10 141 0 111 10 141 0 112 4 74 0 114 4 74 0 116 4 74 0 119 10 141 0 121 4 74 0 124 10 141 0 125 4 74 0 131 4 74 0 140 10 129 1 27 10 129 1 28 10 129 1 29 10 141 1 30 4 74 1 134] 
#[1 4 78 0 3 10 141 0 17 4 78 0 21 10 141 0 22 4 78 0 23 4 78 0 24 10 141 0 25 4 78 0 26 4 78 0 27 4 78 0 28 10 45 0 31 4 78 0 32 10 49 0 33 10 141 0 38 4 78 0 40 10 141 0 42 4 78 0 43 5 141 0 44 10 141 0 45 10 141 0 47 4 78 0 48 5 145 0 51 4 78 0 52 4 78 0 56 4 78 0 61 10 141 0 62 4 78 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 4 78 0 89 4 78 0 90 4 78 0 92 4 78 0 93 4 78 0 94 4 78 0 95 10 141 0 101 10 141 0 102 4 78 0 105 10 141 0 106 10 141 0 111 10 141 0 112 4 78 0 114 4 78 0 116 4 78 0 119 10 141 0 121 4 78 0 124 10 141 0 125 4 78 0 131 4 78 0 140 10 129 1 27 10 129 1 28 10 129 1 29 10 141 1 30 4 78 1 134] 
#[1 4 82 0 3 10 141 0 17 4 82 0 21 10 141 0 22 4 82 0 23 4 82 0 24 10 141 0 25 4 82 0 26 4 82 0 27 4 82 0 28 10 45 0 31 4 82 0 32 10 49 0 33 10 141 0 38 4 82 0 40 10 141 0 42 4 82 0 43 5 141 0 44 10 141 0 45 10 141 0 47 4 82 0 48 5 145 0 51 4 82 0 52 4 82 0 56 4 82 0 61 10 141 0 62 4 82 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 4 82 0 89 4 82 0 90 4 82 0 92 4 82 0 93 4 82 0 94 4 82 0 95 10 141 0 101 10 141 0 102 4 82 0 105 10 141 0 106 10 141 0 111 10 141 0 112 4 82 0 114 4 82 0 116 4 82 0 119 10 141 0 121 4 82 0 124 10 141 0 125 4 82 0 131 4 82 0 140 10 129 1 27 10 129 1 28 10 129 1 29 10 141 1 30 4 82 1 134] 
#[1 4 86 0 3 10 141 0 17 10 141 0 22 4 86 0 23 4 86 0 24 10 141 0 25 4 86 0 26 4 86 0 27 4 86 0 28 10 45 0 31 4 86 0 32 10 49 0 33 10 141 0 38 4 86 0 40 10 141 0 42 4 86 0 43 5 141 0 44 10 141 0 45 10 141 0 47 4 86 0 48 5 145 0 51 4 86 0 52 4 86 0 61 10 141 0 62 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 4 86 0 89 4 86 0 90 4 86 0 92 4 86 0 93 4 86 0 94 4 86 0 95 10 141 0 101 10 141 0 102 4 86 0 105 10 141 0 106 10 141 0 111 10 141 0 112 4 86 0 114 4 86 0 116 4 86 0 119 10 141 0 121 4 86 0 124 10 141 0 125 4 86 0 131 4 86 0 140 10 129 1 27 10 129 1 28 10 129 1 29 10 141 1 30 4 86 1 134] 
#[1 4 209 0 2 4 217 0 4 4 90 0 5 4 213 0 6 4 217 0 8 4 90 0 9 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[0 4 94 0 39 0 40 0 138 1 134] 
#[1 4 98 0 5 4 102 0 9] 
#[0 4 106 0 5 0 6 0 31 0 58 0 88 0 138] 
#[1 4 110 0 138 10 145 0 144] 
#[0 10 149 0 138] 
#[0 10 153 0 138] 
#[0 10 157 0 138] 
#[0 10 161 0 138] 
#[0 4 114 0 5 0 138] 
#[0 4 118 0 5 0 138] 
#[0 4 122 1 134] 
#[1 10 165 0 140 10 169 1 131] 
#[0 10 173 0 6] 
#[0 4 126 0 21 0 23 0 27 0 43 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 3 1 0 140 10 177 0 168] 
#[0 4 130 0 29] 
#[1 5 209 0 5 10 181 0 138] 
#[0 10 185 0 6] 
#[0 4 134 1 134] 
#[1 2 29 0 27 4 138 0 40 4 138 0 48 5 21 0 52 4 138 0 56 4 138 0 61 5 29 0 90 6 9 0 105 2 53 0 116 2 57 0 119 2 61 0 124 10 189 0 170 10 189 0 171 10 189 0 174 10 189 0 177 10 189 1 4 10 189 1 7 10 189 1 48 2 165 1 49 10 189 1 50 2 173 1 51 10 189 1 56 2 189 1 57 10 189 1 58 2 197 1 59 10 189 1 70 2 221 1 71] 
#[1 4 142 0 23 4 142 0 26 4 142 0 27 4 142 0 28 4 142 0 32 4 142 0 40 4 142 0 43 4 142 0 48 4 142 0 52 4 142 0 61 4 142 0 90 4 142 0 105 4 142 0 116 4 142 0 119 4 142 0 124 10 217 1 39] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 14 0 48 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 10 221 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 4 146 0 40 10 225 0 48 10 229 1 129] 
#[1 5 1 0 5 10 233 0 138] 
#[0 10 237 0 14] 
#[1 4 150 0 21 4 150 0 23 4 150 0 26 4 150 0 27 4 150 0 28 4 150 0 32 4 150 0 40 4 150 0 43 4 150 0 48 4 150 0 52 4 150 0 56 4 150 0 61 4 150 0 65 4 150 0 90 4 150 0 105 4 150 0 116 4 150 0 119 4 150 0 124 8 109 0 140 10 241 0 176] 
#[0 4 154 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124 0 140] 
#[0 4 158 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 4 162 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 4 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 4 170 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138] 
#[1 10 245 0 39 4 174 0 40 10 249 1 97] 
#[1 2 182 0 39 2 182 0 40 10 253 0 138 11 1 1 90] 
#[0 4 178 0 39 0 40 0 138] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 11 5 0 184 11 5 0 188 1 153 0 193 11 5 0 195 11 5 0 196 11 5 0 198 11 5 0 202 11 5 0 203 1 177 0 205 11 5 0 211 1 185 0 212 1 189 0 213 1 193 0 214 11 5 0 245 11 5 0 246 11 5 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 11 17 0 37 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 11 17 0 117 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 11 17 1 103 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 11 21 0 36 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[0 4 182 0 9 0 21 0 23 0 27 0 52 0 65 0 78 0 90 0 105 0 116 0 119 0 124 0 138] 
#[1 2 21 0 27 2 21 0 82 2 21 0 124 0 22 0 140 11 25 1 33 2 21 1 36] 
#[1 11 29 0 39 4 186 0 40 4 186 0 41 4 186 0 48 4 186 0 49 4 186 0 61 4 186 0 79 4 186 0 122 4 186 0 138 4 186 1 134] 
#[0 4 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 11 33 0 3 8 253 0 5] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 11 37 1 108 1 29 1 109 11 37 1 110 11 37 1 111 1 41 1 112 11 37 1 113 1 49 1 114 11 37 1 115 1 57 1 116 11 37 1 117 1 65 1 122 11 37 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 11 41 1 108 1 29 1 109 11 41 1 110 11 41 1 111 1 41 1 112 11 41 1 113 1 49 1 114 11 41 1 115 1 57 1 116 11 41 1 117 1 65 1 122 11 41 1 123 1 73 1 133] 
#[1 7 61 0 6 4 194 0 39 4 194 0 40 4 194 0 41 4 194 0 48 4 194 0 49 4 194 0 61 4 194 0 79 4 194 0 122 4 194 0 138 4 194 1 134] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 198 0 39 4 198 0 40 4 198 0 41 4 198 0 48 4 198 0 49 4 61 0 58 4 198 0 61 4 61 0 64 4 61 0 71 4 198 0 79 4 61 0 81 4 61 0 109 4 61 0 110 4 198 0 122 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 198 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 4 198 1 134] 
#[1 4 165 0 140 11 45 0 237] 
#[1 11 49 0 39 4 202 0 40 4 202 0 49 6 73 0 138 11 53 1 87] 
#[1 11 49 0 39 4 202 0 40 4 202 0 49 8 197 0 79 11 57 1 86 11 61 1 87] 
#[0 4 206 0 39 0 40 0 49 0 79] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 11 65 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[0 11 69 0 40] 
#[1 11 73 0 10 4 221 0 16 4 210 0 39 4 210 0 40 4 210 0 41 4 210 0 48 4 210 0 49 4 210 0 61 4 210 0 79 4 210 0 122 4 225 0 131 4 210 0 138 4 210 1 134] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 214 0 39 4 214 0 40 4 214 0 41 4 214 0 48 4 214 0 49 4 61 0 58 4 214 0 61 4 61 0 64 4 61 0 71 4 214 0 79 4 61 0 81 4 61 0 109 4 61 0 110 4 214 0 122 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 214 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 4 214 1 134] 
#[0 4 218 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[1 3 213 0 2 4 61 0 4 4 222 0 5 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 222 0 36 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[0 4 226 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[1 3 213 0 2 4 61 0 4 4 230 0 5 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 230 0 132 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[0 4 234 0 5 0 132] 
#[0 4 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 6 193 1 108 1 29 1 109 6 193 1 110 6 193 1 111 1 41 1 112 6 193 1 113 1 49 1 114 6 193 1 115 1 57 1 116 6 193 1 117 1 65 1 122 6 193 1 123 11 77 1 125 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 11 81 1 108 1 29 1 109 11 81 1 110 11 81 1 111 1 41 1 112 11 81 1 113 1 49 1 114 11 81 1 115 1 57 1 116 11 81 1 117 1 65 1 122 11 81 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 11 85 1 108 1 29 1 109 11 85 1 110 11 85 1 111 1 41 1 112 11 85 1 113 1 49 1 114 11 85 1 115 1 57 1 116 11 85 1 117 1 65 1 122 11 85 1 123 1 73 1 133] 
#[0 4 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 4 246 0 5 0 222 0 16 0 222 0 131 4 246 0 133] 
#[1 11 89 0 5 4 250 0 133 11 93 0 191] 
#[1 4 209 0 2 4 254 0 3 4 217 0 4 4 254 0 5 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[1 4 209 0 2 5 2 0 3 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 5 2 0 138 4 217 1 127] 
#[0 5 6 0 3 0 5] 
#[1 4 209 0 2 5 10 0 3 4 217 0 4 5 10 0 5 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[0 5 14 0 3 0 5] 
#[0 5 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[0 6 237 0 9] 
#[0 5 22 0 3 0 138] 
#[1 4 221 0 16 7 25 0 78 4 225 0 131 2 202 0 138 11 97 1 6] 
#[0 5 26 0 138] 
#[1 3 70 0 3 3 70 0 5 3 70 0 10 3 70 0 14 3 70 0 16 3 70 0 17 3 70 0 21 3 70 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 30 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 36 3 70 0 38 3 70 0 39 3 70 0 40 3 70 0 41 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 47 3 70 0 48 3 70 0 49 3 70 0 51 3 70 0 52 3 70 0 56 3 70 0 57 3 70 0 58 3 70 0 59 3 70 0 61 3 70 0 62 3 70 0 65 3 70 0 67 3 70 0 70 3 70 0 74 3 70 0 75 3 70 0 78 3 70 0 79 3 70 0 83 3 70 0 84 3 70 0 87 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 97 3 70 0 98 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 113 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 122 3 70 0 124 3 70 0 125 3 70 0 128 3 70 0 129 3 70 0 131 3 70 0 132 3 70 0 133 3 70 0 138 3 70 0 140 11 101 1 25 3 70 1 134] 
#[1 7 61 0 6 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 11 105 0 204 7 81 0 228 7 85 0 238] 
#[0 11 109 0 9] 
#[0 11 113 0 138] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 1 75 0 5 0 206 0 6 0 206 0 8 6 237 0 9 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 18 0 206 0 20 0 206 0 35 0 206 0 58 0 206 0 64 0 206 0 71 0 206 0 81 0 206 0 109 0 206 0 110 0 206 0 130 0 206 0 133 0 206 0 134 0 206 0 136 0 206 0 137] 
#[0 11 121 0 3] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 4 233 0 11 1 26 0 14 1 26 0 16 1 26 0 21 1 26 0 23 1 26 0 24 1 26 0 26 1 26 0 27 1 26 0 28 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 36 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 48 1 26 0 49 1 26 0 52 1 26 0 57 1 26 0 58 1 26 0 59 1 26 0 61 1 26 0 65 1 26 0 75 1 26 0 78 1 26 0 79 1 26 0 88 1 26 0 89 1 26 0 90 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 95 1 26 0 97 1 26 0 98 1 26 0 105 1 26 0 113 1 26 0 114 1 26 0 116 1 26 0 119 1 26 0 122 1 26 0 124 1 26 0 128 1 26 0 129 1 26 0 131 1 26 0 132 1 26 0 133 1 26 0 138 1 26 0 140 11 125 0 180 1 26 1 134] 
#[0 5 30 0 5 0 132] 
#[1 4 209 0 2 4 217 0 4 5 34 0 5 4 213 0 6 1 2 0 7 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 5 34 0 132 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[1 11 129 0 5 11 133 0 132] 
#[0 5 38 0 5 0 132] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 11 137 0 27 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 11 141 0 184 11 141 0 188 1 153 0 193 11 141 0 195 11 141 0 196 11 141 0 198 11 141 0 202 11 141 0 203 1 177 0 205 11 141 0 211 1 185 0 212 1 189 0 213 1 193 0 214 11 141 0 245 11 141 0 246 11 141 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[0 5 42 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 5 46 0 3 11 145 0 24 5 46 0 40 11 149 0 89 11 153 0 93 11 157 0 94 11 161 0 95 11 165 0 114 11 169 0 206 11 173 0 230 11 173 0 231 11 173 0 232 11 173 0 233 11 173 0 234] 
#[0 5 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140] 
#[0 5 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 134] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 11 193 0 214 11 193 1 117 1 213 1 122 1 217 1 133] 
#[0 5 58 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 11 197 0 184 11 197 0 188 1 153 0 193 11 197 0 195 11 197 0 196 11 197 0 198 11 197 0 202 11 197 0 203 1 177 0 205 11 197 0 211 1 185 0 212 1 189 0 213 1 193 0 214 11 197 0 245 11 197 0 246 11 197 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 7 121 0 140 11 201 0 182] 
#[0 5 62 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[1 5 66 0 2 5 66 0 17 5 66 0 26 5 66 0 27 5 66 0 28 5 66 0 31 5 66 0 32 5 66 0 40 5 66 0 52 5 66 0 54 11 205 0 78 5 66 0 88 5 66 0 89 5 66 0 90 5 66 0 92 5 66 0 93 5 66 0 94 5 66 0 95 5 66 0 107 5 66 0 114 5 66 0 116 5 66 0 119 5 66 0 124 5 66 0 131 5 66 0 138 5 66 0 140 11 209 0 224] 
#[0 5 70 0 2 0 26 0 31 0 40 0 52 0 88 0 90 0 92 0 131 0 138] 
#[0 5 74 0 2 0 26 0 31 0 40 0 52 0 88 0 90 0 92 0 131 0 138] 
#[1 11 213 0 2 5 78 0 26 5 78 0 27 5 78 0 28 5 78 0 32 5 78 0 40 5 78 0 52 5 78 0 89 5 78 0 90 5 78 0 92 5 78 0 93 5 78 0 94 5 78 0 95 5 78 0 114 5 78 0 116 5 78 0 119 5 78 0 124 5 78 0 131 5 78 0 140 11 217 0 235] 
#[0 5 82 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 0 218 0 16 0 218 0 131 11 221 0 138] 
#[1 1 218 0 31 11 225 0 88 1 218 0 138 11 225 0 194] 
#[1 0 222 0 16 1 218 0 31 11 229 0 88 0 222 0 131 1 218 0 138 11 229 0 194] 
#[1 5 86 0 3 0 230 0 16 5 86 0 21 5 86 0 23 5 86 0 24 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 32 5 86 0 40 5 86 0 43 5 86 0 48 5 86 0 52 5 86 0 56 5 86 0 61 5 86 0 65 5 86 0 89 5 86 0 90 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 95 5 86 0 105 5 86 0 114 5 86 0 116 5 86 0 119 5 86 0 124 1 79 0 131 5 86 0 140 5 86 1 134] 
#[1 5 90 0 3 0 234 0 16 5 90 0 21 5 90 0 23 5 90 0 24 5 90 0 26 5 90 0 27 5 90 0 28 5 90 0 32 5 90 0 40 5 90 0 43 5 90 0 48 5 90 0 52 5 90 0 56 5 90 0 61 5 90 0 65 5 90 0 89 5 90 0 90 5 90 0 92 5 90 0 93 5 90 0 94 5 90 0 95 5 90 0 105 5 90 0 114 5 90 0 116 5 90 0 119 5 90 0 124 1 83 0 131 5 90 0 140 5 90 1 134] 
#[0 5 94 0 31 0 88 0 138] 
#[0 5 98 0 31 0 88 0 138] 
#[0 5 102 0 31 0 88 0 138] 
#[0 5 106 0 31 0 88 0 138] 
#[0 5 110 0 31 0 88 0 138] 
#[1 11 213 0 2 5 78 0 26 5 114 0 31 5 78 0 40 5 78 0 52 5 114 0 88 5 78 0 90 5 78 0 92 5 78 0 131 5 114 0 138 11 233 0 235] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 9 145 0 26 9 205 0 34 1 85 0 46 1 89 0 52 9 205 0 63 1 93 0 76 9 157 0 77 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 11 237 0 183 9 165 0 184 9 169 0 187 9 173 0 188 1 153 0 193 9 177 0 195 9 181 0 196 9 173 0 198 9 169 0 201 9 173 0 202 9 173 0 203 1 177 0 205 9 173 0 211 1 185 0 212 1 189 0 213 1 193 0 214 9 169 0 222 9 169 0 223 9 169 0 226 1 197 0 245 9 173 0 246 9 173 0 247 9 169 0 251 9 205 0 252 1 193 1 117 1 213 1 122 1 217 1 133] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 1 218 0 31 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 11 241 0 88 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 1 218 0 138 11 241 0 194 4 217 1 127] 
#[1 11 245 0 14 5 118 0 138 11 249 1 35] 
#[1 5 118 0 3 11 245 0 14 4 221 0 16 4 225 0 131 5 118 0 132 5 118 0 138 11 253 1 35 5 118 1 134] 
#[0 12 1 0 138] 
#[0 12 5 0 138] 
#[1 4 249 0 9 1 34 0 138 12 9 1 10] 
#[1 5 122 0 3 5 122 0 17 5 122 0 21 5 122 0 22 5 122 0 23 5 122 0 24 5 122 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 31 5 122 0 32 5 122 0 33 5 122 0 38 5 122 0 40 5 122 0 42 5 122 0 44 5 122 0 45 5 122 0 47 5 122 0 51 5 122 0 52 5 122 0 62 5 122 0 65 5 122 0 67 5 122 0 70 5 122 0 74 5 122 0 83 5 122 0 84 5 122 0 87 5 122 0 88 5 122 0 89 5 122 0 90 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 95 5 122 0 101 5 122 0 102 5 122 0 105 5 122 0 106 5 122 0 111 5 122 0 112 5 122 0 114 5 122 0 116 5 122 0 119 5 122 0 121 5 122 0 124 5 122 0 125 5 122 0 131 5 122 0 140 12 13 1 26 5 122 1 134] 
#[1 5 122 0 3 5 122 0 17 5 122 0 21 5 122 0 22 5 122 0 23 5 122 0 24 5 122 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 31 5 122 0 32 5 122 0 33 5 122 0 38 5 122 0 40 5 122 0 42 5 122 0 44 5 122 0 45 5 122 0 47 5 122 0 51 5 122 0 52 5 122 0 62 5 122 0 65 5 122 0 67 5 122 0 70 5 122 0 74 5 122 0 83 5 122 0 84 5 122 0 87 5 122 0 88 5 122 0 89 5 122 0 90 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 95 5 122 0 101 5 122 0 102 5 122 0 105 5 122 0 106 5 122 0 111 5 122 0 112 5 122 0 114 5 122 0 116 5 122 0 119 5 122 0 121 5 122 0 124 5 122 0 125 5 122 0 131 5 122 0 140 12 17 1 26 5 122 1 134] 
#[0 12 21 0 138] 
#[0 12 25 0 138] 
#[0 12 29 0 138] 
#[1 5 122 0 3 5 122 0 17 5 122 0 21 5 122 0 22 5 122 0 23 5 122 0 24 5 122 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 31 5 122 0 32 5 122 0 33 5 122 0 38 5 122 0 40 5 122 0 42 5 122 0 44 5 122 0 45 5 122 0 47 5 122 0 48 5 122 0 51 5 122 0 52 5 122 0 56 5 122 0 61 5 122 0 62 5 122 0 65 5 122 0 67 5 122 0 70 5 122 0 74 5 122 0 83 5 122 0 84 5 122 0 87 5 122 0 88 5 122 0 89 5 122 0 90 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 95 5 122 0 101 5 122 0 102 5 122 0 105 5 122 0 106 5 122 0 111 5 122 0 112 5 122 0 114 5 122 0 116 5 122 0 119 5 122 0 121 5 122 0 124 5 122 0 125 5 122 0 131 5 122 0 140 12 33 1 26 5 122 1 134] 
#[0 12 37 0 132] 
#[1 5 126 0 30 5 126 0 33 5 126 0 57 5 126 0 59 5 126 0 75 5 126 0 97 5 126 0 98 5 126 0 113 5 126 0 128 5 126 0 129 5 126 0 138 12 41 1 14] 
#[1 8 25 0 31 3 78 0 138 12 45 0 227] 
#[0 12 49 0 144] 
#[0 5 130 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 12 53 0 144] 
#[0 5 134 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 5 138 0 138] 
#[0 5 142 0 138] 
#[0 5 146 0 138] 
#[1 5 150 0 138 12 57 0 144] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 12 61 0 214 12 61 1 117 1 213 1 122 1 217 1 133] 
#[0 5 154 0 138] 
#[0 5 158 0 138] 
#[0 5 162 0 138] 
#[0 5 166 0 138] 
#[0 5 170 0 138] 
#[0 5 174 0 138] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 12 65 0 214 12 65 1 117 1 213 1 122 1 217 1 133] 
#[0 5 178 0 138] 
#[0 5 182 0 138] 
#[0 5 186 0 138] 
#[0 5 190 0 138] 
#[0 5 194 0 138] 
#[0 5 198 0 138] 
#[0 5 202 0 138] 
#[0 5 206 0 138] 
#[0 5 210 0 138] 
#[0 5 214 0 138] 
#[0 5 218 0 138] 
#[0 5 222 0 138] 
#[0 5 226 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 5 230 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 5 234 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 12 69 0 138] 
#[0 5 238 0 138] 
#[0 5 242 0 21 0 23 0 27 0 43 0 52 0 65 0 90 0 105 0 116 0 119 0 123 0 124] 
#[0 5 246 0 40 0 48 0 56 0 61 0 63 1 134] 
#[0 5 250 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 123 0 124] 
#[0 5 254 0 40 0 48 0 56 0 61 0 63 1 134] 
#[0 6 2 0 5 0 138] 
#[1 12 73 0 5 12 77 0 138] 
#[0 6 6 1 134] 
#[1 6 10 0 5 5 181 0 6 6 10 0 138] 
#[0 6 14 0 40] 
#[0 6 18 1 134] 
#[0 6 22 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 26 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 30 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 34 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 38 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 42 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 46 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 12 81 0 23 5 105 0 26 2 29 0 27 2 33 0 28 2 37 0 32 6 50 0 40 8 57 0 43 6 50 0 48 5 21 0 52 6 50 0 61 5 29 0 90 6 9 0 105 2 53 0 116 2 57 0 119 2 61 0 124 12 101 0 171 12 101 0 174 12 101 0 177 12 97 1 38 12 101 1 40 12 101 1 41 12 109 1 42 12 113 1 43 12 101 1 44 12 121 1 45 12 125 1 46 12 101 1 47 6 29 1 48 2 165 1 49 6 33 1 50 2 173 1 51 12 101 1 52 12 137 1 53 12 141 1 54 12 101 1 55 6 41 1 56 2 189 1 57 6 45 1 58 2 197 1 59 12 101 1 60 12 153 1 61 12 157 1 62 12 101 1 63 12 165 1 64 12 169 1 65 12 101 1 70 2 221 1 71 12 101 1 130] 
#[1 6 54 0 40 6 54 0 48 6 73 0 138] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 12 181 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 8 81 0 40 12 185 1 132] 
#[0 6 58 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 12 189 0 214 12 189 1 117 1 213 1 122 1 217 1 133] 
#[0 6 62 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124 0 140] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 12 193 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[0 12 197 0 40] 
#[1 2 229 0 2 1 81 0 15 3 234 0 39 3 234 0 40 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 2 237 0 214 12 201 1 93 2 245 1 94 2 249 1 95 2 253 1 96 2 237 1 117 1 213 1 122 1 217 1 133] 
#[0 6 66 0 39 0 40] 
#[1 6 70 0 10 4 221 0 16 6 70 0 58 4 225 0 131] 
#[0 6 74 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 133] 
#[0 6 78 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 133] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 12 205 1 108 1 29 1 109 12 205 1 110 12 205 1 111 1 41 1 112 12 205 1 113 1 49 1 114 12 205 1 115 1 57 1 116 12 205 1 117 1 65 1 122 12 205 1 123 1 73 1 133] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 12 209 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 12 209 1 105 12 209 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[0 6 82 0 3 0 132 0 138] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 12 213 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 12 213 1 105 12 213 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[0 6 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 12 217 0 132 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 12 221 0 132 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 7 61 0 6 4 249 0 9 1 34 0 36 12 225 1 10] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 12 229 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[0 6 90 0 40 0 49] 
#[0 6 94 0 39 0 40 0 49 0 79] 
#[0 6 98 0 40 0 49] 
#[1 6 102 0 40 6 73 0 138] 
#[0 6 106 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 12 233 1 108 1 29 1 109 12 233 1 110 12 233 1 111 1 41 1 112 12 233 1 113 1 49 1 114 12 233 1 115 1 57 1 116 12 233 1 117 1 65 1 122 12 233 1 123 1 73 1 133] 
#[1 6 110 0 3 6 110 0 5 9 1 0 9] 
#[1 3 213 0 2 6 114 0 3 4 61 0 4 6 114 0 5 3 221 0 6 4 61 0 8 6 114 0 9 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 3 213 0 2 4 61 0 4 6 118 0 5 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 6 118 0 132 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 197 0 184 12 237 0 188 1 153 0 193 1 197 0 195 1 197 0 196 12 237 0 198 12 237 0 202 12 237 0 203 1 177 0 205 12 237 0 211 1 185 0 212 1 189 0 213 1 193 0 214 1 197 0 245 12 237 0 246 12 237 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[0 12 241 0 133] 
#[0 12 245 0 138] 
#[1 6 122 0 3 6 122 0 5 6 122 0 10 6 122 0 14 6 122 0 16 10 141 0 17 6 122 0 21 10 141 0 22 6 122 0 23 6 122 0 24 10 141 0 25 6 122 0 26 6 122 0 27 6 122 0 28 6 122 0 30 1 87 0 31 6 122 0 32 1 91 0 33 6 122 0 36 10 141 0 38 6 122 0 39 6 122 0 40 6 122 0 41 10 141 0 42 6 122 0 43 5 141 0 44 10 141 0 45 10 141 0 47 6 122 0 48 6 122 0 49 5 145 0 51 6 122 0 52 6 122 0 56 6 122 0 57 6 122 0 58 6 122 0 59 6 122 0 61 10 141 0 62 6 122 0 65 10 141 0 67 10 77 0 70 10 141 0 74 6 122 0 75 6 122 0 78 6 122 0 79 10 141 0 83 10 141 0 84 10 141 0 87 1 95 0 88 6 122 0 89 6 122 0 90 6 122 0 92 6 122 0 93 6 122 0 94 6 122 0 95 6 122 0 97 6 122 0 98 10 141 0 101 10 141 0 102 6 122 0 105 10 141 0 106 10 141 0 111 10 141 0 112 6 122 0 113 6 122 0 114 6 122 0 116 6 122 0 119 10 141 0 121 6 122 0 122 6 122 0 124 10 141 0 125 6 122 0 128 6 122 0 129 6 122 0 131 6 122 0 132 6 122 0 133 6 122 0 138 6 122 0 140 10 129 1 27 10 129 1 28 10 129 1 29 10 141 1 30 6 122 1 134] 
#[0 12 249 0 40] 
#[1 1 77 0 2 1 81 0 15 0 18 0 19 1 85 0 46 1 89 0 52 1 93 0 76 1 177 0 86 1 101 0 90 0 7 0 99 1 109 0 100 1 113 0 108 1 117 0 119 0 185 0 131 1 121 0 136 1 125 0 137 1 129 0 139 1 133 0 141 1 189 0 142 1 213 0 144 1 141 0 148 12 253 0 184 12 253 0 188 1 153 0 193 12 253 0 195 12 253 0 196 12 253 0 198 12 253 0 202 12 253 0 203 1 177 0 205 12 253 0 211 1 185 0 212 1 189 0 213 1 193 0 214 12 253 0 245 12 253 0 246 12 253 0 247 1 193 1 117 1 213 1 122 1 217 1 133] 
#[0 6 126 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[1 13 1 0 141 13 5 0 200] 
#[0 6 130 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[0 6 134 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 13 9 0 211 1 185 0 212 1 189 0 213 9 93 0 214 13 9 0 250 9 93 1 117 1 213 1 122 1 217 1 133] 
#[0 6 138 0 78] 
#[0 6 142 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 6 146 0 3 6 146 0 5 6 146 0 10 6 146 0 14 4 221 0 16 6 146 0 21 6 146 0 23 6 146 0 27 6 146 0 30 6 146 0 31 6 146 0 33 6 146 0 36 6 146 0 39 6 146 0 40 6 146 0 41 6 146 0 48 6 146 0 49 6 146 0 52 6 146 0 57 6 146 0 58 6 146 0 59 6 146 0 61 6 146 0 65 6 146 0 75 6 146 0 78 6 146 0 79 6 146 0 88 6 146 0 90 6 146 0 97 6 146 0 98 6 146 0 105 6 146 0 113 6 146 0 116 6 146 0 119 6 146 0 122 6 146 0 124 6 146 0 128 6 146 0 129 4 225 0 131 6 146 0 132 6 146 0 133 6 146 0 138 6 146 1 134] 
#[0 13 13 0 140] 
#[1 2 230 0 3 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 13 17 0 238] 
#[1 2 230 0 3 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 13 21 0 238] 
#[1 2 230 0 3 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 13 25 0 238] 
#[1 2 230 0 3 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 13 29 0 238] 
#[1 13 33 0 89 13 37 0 93] 
#[0 6 150 0 3 0 40] 
#[0 6 154 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 158 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 162 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 166 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 170 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[1 4 209 0 2 6 174 0 3 4 217 0 4 6 174 0 5 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[1 6 178 0 5 4 221 0 16 4 225 0 131 6 178 0 133] 
#[0 6 182 0 5 0 133] 
#[0 13 41 0 140] 
#[1 11 213 0 2 13 57 0 17 5 78 0 26 5 78 0 27 5 78 0 28 5 78 0 31 5 78 0 32 5 78 0 40 5 78 0 52 13 49 0 54 5 78 0 88 5 78 0 89 5 78 0 90 5 78 0 92 5 78 0 93 5 78 0 94 5 78 0 95 13 57 0 107 5 78 0 114 5 78 0 116 5 78 0 119 5 78 0 124 5 78 0 131 5 78 0 138 5 78 0 140 13 57 0 225 13 61 0 235] 
#[1 13 65 0 100 13 69 0 141 13 73 0 193 13 77 0 236] 
#[1 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 13 81 0 228 7 85 0 238] 
#[0 6 186 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 8 25 0 31 3 78 0 138 13 85 0 227] 
#[1 8 25 0 31 3 78 0 138 13 89 0 227] 
#[1 6 190 0 26 6 190 0 40 6 190 0 52 6 190 0 90 6 190 0 92 13 93 0 131 13 97 0 253] 
#[0 6 194 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 8 25 0 31 3 78 0 138 13 101 0 227] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 13 105 0 214 13 105 1 117 1 213 1 122 1 217 1 133] 
#[0 13 109 0 138] 
#[0 6 198 0 3 0 132 0 138 1 134] 
#[1 5 122 0 3 5 122 0 17 5 122 0 21 5 122 0 22 5 122 0 23 5 122 0 24 5 122 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 31 5 122 0 32 5 122 0 33 5 122 0 38 5 122 0 40 5 122 0 42 5 122 0 44 5 122 0 45 5 122 0 47 5 122 0 51 5 122 0 52 5 122 0 62 5 122 0 65 5 122 0 67 5 122 0 70 5 122 0 74 5 122 0 83 5 122 0 84 5 122 0 87 5 122 0 88 5 122 0 89 5 122 0 90 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 95 5 122 0 101 5 122 0 102 5 122 0 105 5 122 0 106 5 122 0 111 5 122 0 112 5 122 0 114 5 122 0 116 5 122 0 119 5 122 0 121 5 122 0 124 5 122 0 125 5 122 0 131 5 122 0 140 13 113 1 26 5 122 1 134] 
#[1 5 122 0 3 5 122 0 17 5 122 0 21 5 122 0 22 5 122 0 23 5 122 0 24 5 122 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 31 5 122 0 32 5 122 0 33 5 122 0 38 5 122 0 40 5 122 0 42 5 122 0 44 5 122 0 45 5 122 0 47 5 122 0 51 5 122 0 52 5 122 0 62 5 122 0 65 5 122 0 67 5 122 0 70 5 122 0 74 5 122 0 83 5 122 0 84 5 122 0 87 5 122 0 88 5 122 0 89 5 122 0 90 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 95 5 122 0 101 5 122 0 102 5 122 0 105 5 122 0 106 5 122 0 111 5 122 0 112 5 122 0 114 5 122 0 116 5 122 0 119 5 122 0 121 5 122 0 124 5 122 0 125 5 122 0 131 5 122 0 140 13 117 1 26 5 122 1 134] 
#[0 13 121 0 138] 
#[1 6 202 0 3 10 141 0 17 6 202 0 21 10 141 0 22 6 202 0 23 6 202 0 24 10 141 0 25 6 202 0 26 6 202 0 27 6 202 0 28 10 45 0 31 6 202 0 32 10 49 0 33 10 141 0 38 6 202 0 40 10 141 0 42 6 202 0 44 10 141 0 45 10 141 0 47 6 202 0 51 6 202 0 52 10 141 0 62 6 202 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 6 202 0 89 6 202 0 90 6 202 0 92 6 202 0 93 6 202 0 94 6 202 0 95 10 141 0 101 10 141 0 102 6 202 0 105 10 141 0 106 10 141 0 111 10 141 0 112 6 202 0 114 6 202 0 116 6 202 0 119 10 141 0 121 6 202 0 124 10 141 0 125 6 202 0 131 6 202 0 140 13 125 1 28 10 141 1 30 6 202 1 134] 
#[1 6 206 0 3 10 141 0 17 6 206 0 21 10 141 0 22 6 206 0 23 6 206 0 24 10 141 0 25 6 206 0 26 6 206 0 27 6 206 0 28 10 45 0 31 6 206 0 32 10 49 0 33 10 141 0 38 6 206 0 40 10 141 0 42 6 206 0 44 10 141 0 45 10 141 0 47 6 206 0 51 6 206 0 52 10 141 0 62 6 206 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 6 206 0 89 6 206 0 90 6 206 0 92 6 206 0 93 6 206 0 94 6 206 0 95 10 141 0 101 10 141 0 102 6 206 0 105 10 141 0 106 10 141 0 111 10 141 0 112 6 206 0 114 6 206 0 116 6 206 0 119 10 141 0 121 6 206 0 124 10 141 0 125 6 206 0 131 6 206 0 140 13 125 1 28 10 141 1 30 6 206 1 134] 
#[0 6 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 5 122 0 3 5 122 0 17 5 122 0 21 5 122 0 22 5 122 0 23 5 122 0 24 5 122 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 31 5 122 0 32 5 122 0 33 5 122 0 38 5 122 0 40 5 122 0 42 5 122 0 44 5 122 0 45 5 122 0 47 5 122 0 48 5 122 0 51 5 122 0 52 5 122 0 56 5 122 0 61 5 122 0 62 5 122 0 65 5 122 0 67 5 122 0 70 5 122 0 74 5 122 0 83 5 122 0 84 5 122 0 87 5 122 0 88 5 122 0 89 5 122 0 90 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 95 5 122 0 101 5 122 0 102 5 122 0 105 5 122 0 106 5 122 0 111 5 122 0 112 5 122 0 114 5 122 0 116 5 122 0 119 5 122 0 121 5 122 0 124 5 122 0 125 5 122 0 131 5 122 0 140 13 129 1 26 5 122 1 134] 
#[0 6 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 6 218 0 3 10 141 0 17 6 218 0 21 10 141 0 22 6 218 0 23 6 218 0 24 10 141 0 25 6 218 0 26 6 218 0 27 6 218 0 28 10 45 0 31 6 218 0 32 10 49 0 33 10 141 0 38 6 218 0 40 10 141 0 42 6 218 0 44 10 141 0 45 10 141 0 47 6 218 0 48 6 218 0 51 6 218 0 52 6 218 0 56 6 218 0 61 10 141 0 62 6 218 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 6 218 0 89 6 218 0 90 6 218 0 92 6 218 0 93 6 218 0 94 6 218 0 95 10 141 0 101 10 141 0 102 6 218 0 105 10 141 0 106 10 141 0 111 10 141 0 112 6 218 0 114 6 218 0 116 6 218 0 119 10 141 0 121 6 218 0 124 10 141 0 125 6 218 0 131 6 218 0 140 13 125 1 28 10 141 1 30 6 218 1 134] 
#[0 6 222 0 9 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 13 133 0 30 13 137 0 33 13 141 0 57 13 145 0 59 13 149 0 75 13 153 0 97 13 157 0 98 13 161 0 113 13 165 0 128 13 169 0 129 13 173 0 138 13 177 1 16 13 181 1 17 13 185 1 18 13 189 1 19 13 193 1 20 13 197 1 21 13 201 1 23] 
#[0 13 205 0 138] 
#[0 13 209 0 138] 
#[0 13 213 0 138] 
#[0 13 217 0 138] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 13 221 0 138 4 217 1 127] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 13 225 0 138 4 217 1 127] 
#[0 6 226 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 13 229 0 140] 
#[0 6 230 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 40 0 14 0 48 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 13 233 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[0 6 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 238 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 246 0 40 0 48 0 61] 
#[0 6 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 141 0 44 5 145 0 51 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 149 1 29 13 237 1 66 3 69 1 67] 
#[0 7 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 141 0 44 5 145 0 51 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 153 1 29 13 241 1 66 3 69 1 67] 
#[0 7 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 13 245 1 66 3 69 1 67] 
#[0 7 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 13 249 1 66 3 69 1 67] 
#[0 7 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 141 0 44 5 145 0 51 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 165 1 29 13 253 1 66 3 69 1 67] 
#[0 7 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 7 54 0 40 6 73 0 138] 
#[0 7 58 1 134] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 8 25 0 31 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 3 78 0 138 14 1 0 227 4 217 1 127] 
#[1 7 62 0 40 6 73 0 138] 
#[0 7 66 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 7 70 0 39 0 40 0 138] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 14 5 0 36 4 61 0 58 4 61 0 64 4 61 0 71 4 61 0 81 4 61 0 109 4 61 0 110 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[0 7 74 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 7 78 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[0 7 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 7 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[0 14 9 0 36] 
#[1 7 90 0 40 7 90 0 49 6 73 0 138] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 4 61 0 35 7 94 0 39 7 94 0 40 7 94 0 41 7 94 0 48 7 94 0 49 4 61 0 58 7 94 0 61 4 61 0 64 4 61 0 71 7 94 0 79 4 61 0 81 4 61 0 109 4 61 0 110 7 94 0 122 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 7 94 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127 7 94 1 134] 
#[1 7 98 0 5 0 222 0 16 0 222 0 131 7 98 0 133] 
#[0 7 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 134] 
#[1 3 70 0 3 3 70 0 5 3 70 0 10 3 70 0 14 3 70 0 16 3 70 0 17 3 70 0 21 3 70 0 22 3 70 0 23 3 70 0 24 3 70 0 25 3 70 0 26 3 70 0 27 3 70 0 28 3 70 0 30 3 70 0 31 3 70 0 32 3 70 0 33 3 70 0 36 3 70 0 38 3 70 0 39 3 70 0 40 3 70 0 41 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 47 3 70 0 48 3 70 0 49 3 70 0 51 3 70 0 52 3 70 0 56 3 70 0 57 3 70 0 58 3 70 0 59 3 70 0 61 3 70 0 62 3 70 0 65 3 70 0 67 3 70 0 70 3 70 0 74 3 70 0 75 3 70 0 78 3 70 0 79 3 70 0 83 3 70 0 84 3 70 0 87 3 70 0 88 3 70 0 89 3 70 0 90 3 70 0 92 3 70 0 93 3 70 0 94 3 70 0 95 3 70 0 97 3 70 0 98 3 70 0 101 3 70 0 102 3 70 0 105 3 70 0 106 3 70 0 111 3 70 0 112 3 70 0 113 3 70 0 114 3 70 0 116 3 70 0 119 3 70 0 121 3 70 0 122 3 70 0 124 3 70 0 125 3 70 0 128 3 70 0 129 3 70 0 131 3 70 0 132 3 70 0 133 3 70 0 138 3 70 0 140 14 13 1 25 3 70 1 134] 
#[0 7 106 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 134] 
#[1 4 221 0 16 4 225 0 131 14 17 0 138] 
#[0 7 110 0 3 0 5] 
#[1 7 114 0 3 14 21 0 5] 
#[0 7 118 0 5 0 132] 
#[1 4 249 0 9 1 34 0 78 14 25 1 10] 
#[1 7 122 0 3 7 122 0 24 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 7 122 0 40 2 41 0 52 7 122 0 89 2 45 0 90 2 49 0 92 7 122 0 93 7 122 0 94 7 122 0 95 7 122 0 114 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 9 117 0 171 9 117 0 177 9 117 0 239 9 117 0 240 2 81 0 241 1 237 0 242 9 117 0 243 9 117 0 244 9 117 1 0 9 117 1 1 9 117 1 2 9 117 1 3 9 117 1 4 9 117 1 5 9 117 1 7 9 117 1 8 9 117 1 9 9 117 1 11 2 133 1 12 9 117 1 13 2 141 1 34 9 117 1 42 2 149 1 43 9 117 1 45 2 157 1 46 9 117 1 48 2 165 1 49 9 117 1 50 2 173 1 51 9 117 1 53 9 117 1 54 9 117 1 56 2 189 1 57 9 117 1 58 2 197 1 59 9 117 1 61 9 117 1 62 9 117 1 64 2 213 1 65 9 117 1 70 2 221 1 71] 
#[1 7 126 0 3 7 126 0 24 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 7 126 0 40 2 41 0 52 7 126 0 89 2 45 0 90 2 49 0 92 7 126 0 93 7 126 0 94 7 126 0 95 7 126 0 114 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 9 117 0 171 9 117 0 177 9 117 0 239 9 117 0 240 2 81 0 241 1 237 0 242 9 117 0 243 9 117 0 244 9 117 1 0 9 117 1 1 9 117 1 2 9 117 1 3 9 117 1 4 9 117 1 5 9 117 1 7 9 117 1 8 9 117 1 9 9 117 1 11 2 133 1 12 9 117 1 13 2 141 1 34 9 117 1 42 2 149 1 43 9 117 1 45 2 157 1 46 9 117 1 48 2 165 1 49 9 117 1 50 2 173 1 51 9 117 1 53 9 117 1 54 9 117 1 56 2 189 1 57 9 117 1 58 2 197 1 59 9 117 1 61 9 117 1 62 9 117 1 64 2 213 1 65 9 117 1 70 2 221 1 71] 
#[1 7 130 0 3 7 130 0 24 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 7 130 0 40 2 41 0 52 7 130 0 89 2 45 0 90 2 49 0 92 7 130 0 93 7 130 0 94 7 130 0 95 7 130 0 114 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 9 117 0 171 9 117 0 177 9 117 0 239 9 117 0 240 2 81 0 241 1 237 0 242 9 117 0 243 9 117 0 244 9 117 1 0 9 117 1 1 9 117 1 2 9 117 1 3 9 117 1 4 9 117 1 5 9 117 1 7 9 117 1 8 9 117 1 9 9 117 1 11 2 133 1 12 9 117 1 13 2 141 1 34 9 117 1 42 2 149 1 43 9 117 1 45 2 157 1 46 9 117 1 48 2 165 1 49 9 117 1 50 2 173 1 51 9 117 1 53 9 117 1 54 9 117 1 56 2 189 1 57 9 117 1 58 2 197 1 59 9 117 1 61 9 117 1 62 9 117 1 64 2 213 1 65 9 117 1 70 2 221 1 71] 
#[1 7 134 0 3 7 134 0 24 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 7 134 0 40 2 41 0 52 7 134 0 89 2 45 0 90 2 49 0 92 7 134 0 93 7 134 0 94 7 134 0 95 7 134 0 114 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 9 117 0 171 9 117 0 177 9 117 0 239 9 117 0 240 2 81 0 241 1 237 0 242 9 117 0 243 9 117 0 244 9 117 1 0 9 117 1 1 9 117 1 2 9 117 1 3 9 117 1 4 9 117 1 5 9 117 1 7 9 117 1 8 9 117 1 9 9 117 1 11 2 133 1 12 9 117 1 13 2 141 1 34 9 117 1 42 2 149 1 43 9 117 1 45 2 157 1 46 9 117 1 48 2 165 1 49 9 117 1 50 2 173 1 51 9 117 1 53 9 117 1 54 9 117 1 56 2 189 1 57 9 117 1 58 2 197 1 59 9 117 1 61 9 117 1 62 9 117 1 64 2 213 1 65 9 117 1 70 2 221 1 71] 
#[1 2 230 0 3 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 14 29 0 238] 
#[1 2 230 0 3 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 14 33 0 238] 
#[0 7 138 0 31 0 88 0 138] 
#[0 7 142 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 107 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[0 14 37 0 50] 
#[0 7 146 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 107 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[0 7 150 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 107 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[1 2 230 0 26 2 230 0 27 2 230 0 28 7 154 0 31 2 230 0 32 2 230 0 40 2 230 0 52 7 154 0 88 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 7 154 0 138 2 230 0 140 14 41 0 228 7 85 0 238] 
#[0 0 202 0 3 0 5 0 6 0 11] 
#[0 0 210 0 3 0 5 0 6 0 11] 
#[1 7 158 0 3 7 158 0 5 4 189 0 6 0 150 0 11 4 193 0 189 4 73 0 190] 
#[1 14 45 0 3 14 49 0 5] 
#[1 4 2 0 40 4 2 0 89 4 2 0 93 4 2 0 94 4 2 0 95 4 2 0 114 14 53 0 229] 
#[0 14 57 0 138] 
#[0 14 61 0 138] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 14 65 0 214 14 65 1 117 1 213 1 122 1 217 1 133] 
#[1 7 162 0 26 7 162 0 40 7 162 0 52 7 162 0 90 7 162 0 92 14 69 0 254] 
#[0 14 73 0 138] 
#[1 4 209 0 2 7 166 0 3 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 7 166 0 132 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 7 166 0 138 4 217 1 127 7 166 1 134] 
#[0 7 170 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 7 174 0 3 10 141 0 17 7 174 0 21 10 141 0 22 7 174 0 23 7 174 0 24 10 141 0 25 7 174 0 26 7 174 0 27 7 174 0 28 10 45 0 31 7 174 0 32 10 49 0 33 10 141 0 38 7 174 0 40 10 141 0 42 7 174 0 44 10 141 0 45 10 141 0 47 7 174 0 51 7 174 0 52 10 141 0 62 7 174 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 7 174 0 89 7 174 0 90 7 174 0 92 7 174 0 93 7 174 0 94 7 174 0 95 10 141 0 101 10 141 0 102 7 174 0 105 10 141 0 106 10 141 0 111 10 141 0 112 7 174 0 114 7 174 0 116 7 174 0 119 10 141 0 121 7 174 0 124 10 141 0 125 7 174 0 131 7 174 0 140 13 125 1 28 10 141 1 30 7 174 1 134] 
#[1 7 178 0 3 10 141 0 17 7 178 0 21 10 141 0 22 7 178 0 23 7 178 0 24 10 141 0 25 7 178 0 26 7 178 0 27 7 178 0 28 10 45 0 31 7 178 0 32 10 49 0 33 10 141 0 38 7 178 0 40 10 141 0 42 7 178 0 44 10 141 0 45 10 141 0 47 7 178 0 51 7 178 0 52 10 141 0 62 7 178 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 7 178 0 89 7 178 0 90 7 178 0 92 7 178 0 93 7 178 0 94 7 178 0 95 10 141 0 101 10 141 0 102 7 178 0 105 10 141 0 106 10 141 0 111 10 141 0 112 7 178 0 114 7 178 0 116 7 178 0 119 10 141 0 121 7 178 0 124 10 141 0 125 7 178 0 131 7 178 0 140 13 125 1 28 10 141 1 30 7 178 1 134] 
#[1 5 122 0 3 5 122 0 17 5 122 0 21 5 122 0 22 5 122 0 23 5 122 0 24 5 122 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 31 5 122 0 32 5 122 0 33 5 122 0 38 5 122 0 40 5 122 0 42 5 122 0 44 5 122 0 45 5 122 0 47 5 122 0 51 5 122 0 52 5 122 0 62 5 122 0 65 5 122 0 67 5 122 0 70 5 122 0 74 5 122 0 83 5 122 0 84 5 122 0 87 5 122 0 88 5 122 0 89 5 122 0 90 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 95 5 122 0 101 5 122 0 102 5 122 0 105 5 122 0 106 5 122 0 111 5 122 0 112 5 122 0 114 5 122 0 116 5 122 0 119 5 122 0 121 5 122 0 124 5 122 0 125 5 122 0 131 5 122 0 140 14 77 1 26 5 122 1 134] 
#[0 7 182 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 74 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 101 0 102 0 105 0 106 0 111 0 112 0 114 0 116 0 119 0 121 0 124 0 125 0 131 0 140 1 134] 
#[1 7 186 0 3 10 141 0 17 7 186 0 21 10 141 0 22 7 186 0 23 7 186 0 24 10 141 0 25 7 186 0 26 7 186 0 27 7 186 0 28 10 45 0 31 7 186 0 32 10 49 0 33 10 141 0 38 7 186 0 40 10 141 0 42 7 186 0 44 10 141 0 45 10 141 0 47 7 186 0 48 7 186 0 51 7 186 0 52 7 186 0 56 7 186 0 61 10 141 0 62 7 186 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 7 186 0 89 7 186 0 90 7 186 0 92 7 186 0 93 7 186 0 94 7 186 0 95 10 141 0 101 10 141 0 102 7 186 0 105 10 141 0 106 10 141 0 111 10 141 0 112 7 186 0 114 7 186 0 116 7 186 0 119 10 141 0 121 7 186 0 124 10 141 0 125 7 186 0 131 7 186 0 140 13 125 1 28 10 141 1 30 7 186 1 134] 
#[1 2 229 0 2 1 81 0 15 7 190 0 30 7 190 0 33 7 190 0 57 7 190 0 59 7 190 0 75 1 93 0 76 7 190 0 97 7 190 0 98 7 190 0 113 7 190 0 128 7 190 0 129 0 185 0 131 1 121 0 136 1 125 0 137 7 190 0 138 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 14 81 0 214 14 81 1 117 1 213 1 122 1 217 1 133] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 14 85 0 214 14 85 1 117 1 213 1 122 1 217 1 133] 
#[1 14 89 0 140 14 93 1 22] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 14 97 0 214 14 97 1 117 1 213 1 122 1 217 1 133] 
#[0 7 194 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 14 101 1 108 1 29 1 109 14 101 1 110 14 101 1 111 1 41 1 112 14 101 1 113 1 49 1 114 14 101 1 115 1 57 1 116 14 101 1 117 1 65 1 122 14 101 1 123 1 73 1 133] 
#[0 14 105 0 33] 
#[0 14 109 0 140] 
#[1 0 109 0 2 0 113 0 15 0 129 0 52 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 157 0 90 0 185 0 131 0 189 0 136 0 193 0 137 3 73 0 140 0 213 0 142 1 65 0 144 0 209 0 148 0 213 0 213 14 113 1 108 1 29 1 109 14 113 1 110 14 113 1 111 1 41 1 112 14 113 1 113 1 49 1 114 14 113 1 115 1 57 1 116 14 113 1 117 1 65 1 122 14 113 1 123 1 73 1 133] 
#[0 14 117 0 33] 
#[1 7 198 0 3 7 198 0 24 7 198 0 26 7 198 0 27 7 198 0 28 14 121 0 30 7 198 0 32 7 198 0 40 7 198 0 52 7 198 0 89 7 198 0 90 7 198 0 92 7 198 0 93 7 198 0 94 7 198 0 95 7 198 0 114 7 198 0 116 7 198 0 119 7 198 0 124 7 198 0 131 7 198 0 140 14 125 1 24 7 198 1 134] 
#[0 7 202 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 206 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 210 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 214 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 218 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 222 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 226 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 7 234 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 7 238 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 7 242 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 7 246 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 7 250 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 7 254 0 5 0 138] 
#[1 8 2 0 40 8 2 0 48 8 2 0 61 6 73 0 138] 
#[0 8 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 14 129 0 138] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 14 0 61 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 14 0 122 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 14 133 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 14 133 1 105 14 133 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133 0 14 1 134] 
#[1 0 109 0 2 0 113 0 15 0 10 0 21 0 117 0 23 0 121 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 125 0 50 0 129 0 52 0 133 0 53 0 137 0 55 0 141 0 60 0 145 0 68 0 149 0 69 0 153 0 76 0 14 0 79 0 157 0 90 0 161 0 96 0 165 0 103 0 169 0 118 0 173 0 124 0 177 0 126 0 181 0 127 0 185 0 131 0 189 0 136 0 193 0 137 0 14 0 138 0 197 0 140 0 201 0 142 1 65 0 144 0 209 0 148 0 213 0 213 14 137 1 74 3 89 1 75 0 221 1 76 0 225 1 77 0 229 1 78 0 233 1 79 0 237 1 80 0 241 1 81 0 245 1 83 0 249 1 89 0 253 1 98 1 1 1 100 1 5 1 101 1 9 1 104 3 89 1 105 3 89 1 106 1 21 1 107 1 25 1 108 1 29 1 109 1 25 1 110 1 25 1 111 1 41 1 112 1 25 1 113 1 49 1 114 1 25 1 115 1 57 1 116 1 25 1 117 1 65 1 122 1 25 1 123 1 73 1 133] 
#[1 8 26 0 3 8 26 0 5 8 26 0 10 8 26 0 14 8 26 0 16 10 141 0 17 8 26 0 21 10 141 0 22 8 26 0 23 8 26 0 24 10 141 0 25 8 26 0 26 8 26 0 27 8 26 0 28 8 26 0 30 1 99 0 31 8 26 0 32 1 103 0 33 8 26 0 36 10 141 0 38 8 26 0 39 8 26 0 40 8 26 0 41 10 141 0 42 8 26 0 43 5 141 0 44 10 141 0 45 10 141 0 47 8 26 0 48 8 26 0 49 5 145 0 51 8 26 0 52 8 26 0 56 8 26 0 57 8 26 0 58 8 26 0 59 8 26 0 61 10 141 0 62 8 26 0 65 10 141 0 67 10 77 0 70 10 141 0 74 8 26 0 75 8 26 0 78 8 26 0 79 10 141 0 83 10 141 0 84 10 141 0 87 1 107 0 88 8 26 0 89 8 26 0 90 8 26 0 92 8 26 0 93 8 26 0 94 8 26 0 95 8 26 0 97 8 26 0 98 10 141 0 101 10 141 0 102 8 26 0 105 10 141 0 106 10 141 0 111 10 141 0 112 8 26 0 113 8 26 0 114 8 26 0 116 8 26 0 119 10 141 0 121 8 26 0 122 8 26 0 124 10 141 0 125 8 26 0 128 8 26 0 129 8 26 0 131 8 26 0 132 8 26 0 133 8 26 0 138 8 26 0 140 10 129 1 27 10 129 1 28 10 129 1 29 10 141 1 30 8 26 1 134] 
#[0 8 30 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 134] 
#[0 14 141 0 141] 
#[0 14 145 0 78] 
#[1 8 34 0 3 8 34 0 24 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 8 34 0 40 2 41 0 52 8 34 0 89 2 45 0 90 2 49 0 92 8 34 0 93 8 34 0 94 8 34 0 95 8 34 0 114 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 9 117 0 171 9 117 0 177 9 117 0 239 9 117 0 240 2 81 0 241 1 237 0 242 9 117 0 243 9 117 0 244 9 117 1 0 9 117 1 1 9 117 1 2 9 117 1 3 9 117 1 4 9 117 1 5 9 117 1 7 9 117 1 8 9 117 1 9 9 117 1 11 2 133 1 12 9 117 1 13 2 141 1 34 9 117 1 42 2 149 1 43 9 117 1 45 2 157 1 46 9 117 1 48 2 165 1 49 9 117 1 50 2 173 1 51 9 117 1 53 9 117 1 54 9 117 1 56 2 189 1 57 9 117 1 58 2 197 1 59 9 117 1 61 9 117 1 62 9 117 1 64 2 213 1 65 9 117 1 70 2 221 1 71] 
#[1 8 38 0 3 8 38 0 24 2 25 0 26 2 29 0 27 2 33 0 28 2 37 0 32 8 38 0 40 2 41 0 52 8 38 0 89 2 45 0 90 2 49 0 92 8 38 0 93 8 38 0 94 8 38 0 95 8 38 0 114 2 53 0 116 2 57 0 119 2 61 0 124 1 221 0 131 1 249 0 140 9 117 0 171 9 117 0 177 9 117 0 239 9 117 0 240 2 81 0 241 1 237 0 242 9 117 0 243 9 117 0 244 9 117 1 0 9 117 1 1 9 117 1 2 9 117 1 3 9 117 1 4 9 117 1 5 9 117 1 7 9 117 1 8 9 117 1 9 9 117 1 11 2 133 1 12 9 117 1 13 2 141 1 34 9 117 1 42 2 149 1 43 9 117 1 45 2 157 1 46 9 117 1 48 2 165 1 49 9 117 1 50 2 173 1 51 9 117 1 53 9 117 1 54 9 117 1 56 2 189 1 57 9 117 1 58 2 197 1 59 9 117 1 61 9 117 1 62 9 117 1 64 2 213 1 65 9 117 1 70 2 221 1 71] 
#[1 4 165 0 140 14 149 0 237] 
#[1 4 2 0 40 4 2 0 89 4 2 0 93 4 2 0 94 4 2 0 95 4 2 0 114 14 153 0 229] 
#[0 8 42 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[1 13 65 0 100 13 69 0 141 14 157 0 193] 
#[1 14 161 0 40 11 149 0 89 11 153 0 93 11 157 0 94 11 161 0 95 11 165 0 114 11 173 0 230 11 173 0 231 11 173 0 232 11 173 0 233 11 173 0 234] 
#[0 8 46 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 8 50 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 14 165 0 132 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[1 14 169 0 26 14 173 0 40 5 21 0 52 5 29 0 90 2 49 0 92 14 177 0 255 14 177 1 0 14 177 1 1 14 177 1 4 14 177 1 5 14 177 1 7 14 177 1 8 14 177 1 9 14 177 1 11 2 133 1 12 14 177 1 13 14 177 1 48 2 165 1 49 14 177 1 50 2 173 1 51 14 177 1 53 14 177 1 54 14 177 1 56 2 189 1 57 14 177 1 58 2 197 1 59 14 177 1 61 14 177 1 62 14 177 1 64 2 213 1 65] 
#[0 8 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 8 58 0 3 10 141 0 17 8 58 0 21 10 141 0 22 8 58 0 23 8 58 0 24 10 141 0 25 8 58 0 26 8 58 0 27 8 58 0 28 10 45 0 31 8 58 0 32 10 49 0 33 10 141 0 38 8 58 0 40 10 141 0 42 8 58 0 44 10 141 0 45 10 141 0 47 8 58 0 51 8 58 0 52 10 141 0 62 8 58 0 65 10 141 0 67 10 77 0 70 10 141 0 74 10 141 0 83 10 141 0 84 10 141 0 87 10 141 0 88 8 58 0 89 8 58 0 90 8 58 0 92 8 58 0 93 8 58 0 94 8 58 0 95 10 141 0 101 10 141 0 102 8 58 0 105 10 141 0 106 10 141 0 111 10 141 0 112 8 58 0 114 8 58 0 116 8 58 0 119 10 141 0 121 8 58 0 124 10 141 0 125 8 58 0 131 8 58 0 140 13 125 1 28 10 141 1 30 8 58 1 134] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 8 62 0 30 8 62 0 33 4 217 0 35 8 62 0 57 4 217 0 58 8 62 0 59 4 217 0 64 4 217 0 71 8 62 0 75 4 217 0 81 8 62 0 97 8 62 0 98 4 217 0 109 4 217 0 110 8 62 0 113 8 62 0 128 8 62 0 129 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 8 62 0 138 4 217 1 127] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 8 66 0 30 8 66 0 33 4 217 0 35 8 66 0 57 4 217 0 58 8 66 0 59 4 217 0 64 4 217 0 71 8 66 0 75 4 217 0 81 8 66 0 97 8 66 0 98 4 217 0 109 4 217 0 110 8 66 0 113 8 66 0 128 8 66 0 129 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 8 66 0 138 4 217 1 127] 
#[0 8 70 0 5 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 14 189 0 5 8 74 0 30 8 74 0 33 8 74 0 57 8 74 0 59 8 74 0 75 8 74 0 97 8 74 0 98 8 74 0 113 8 74 0 128 8 74 0 129 8 74 0 138] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 8 78 0 30 8 78 0 33 4 217 0 35 8 78 0 57 4 217 0 58 8 78 0 59 4 217 0 64 4 217 0 71 8 78 0 75 4 217 0 81 8 78 0 97 8 78 0 98 4 217 0 109 4 217 0 110 8 78 0 113 8 78 0 128 8 78 0 129 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 8 78 0 138 4 217 1 127] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 8 82 0 30 8 82 0 33 4 61 0 35 8 82 0 57 4 61 0 58 8 82 0 59 4 61 0 64 4 61 0 71 8 82 0 75 4 61 0 81 8 82 0 97 8 82 0 98 4 61 0 109 4 61 0 110 8 82 0 113 8 82 0 128 8 82 0 129 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 8 82 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 14 193 0 214 14 193 1 117 1 213 1 122 1 217 1 133] 
#[0 8 86 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 3 213 0 2 4 61 0 4 3 221 0 6 4 61 0 8 3 229 0 10 4 61 0 11 4 61 0 12 4 61 0 13 4 61 0 14 4 61 0 18 4 61 0 20 8 90 0 30 8 90 0 33 4 61 0 35 8 90 0 57 4 61 0 58 8 90 0 59 4 61 0 64 4 61 0 71 8 90 0 75 4 61 0 81 8 90 0 97 8 90 0 98 4 61 0 109 4 61 0 110 8 90 0 113 8 90 0 128 8 90 0 129 4 61 0 130 4 33 0 131 4 61 0 133 4 61 0 134 4 61 0 136 4 61 0 137 8 90 0 138 4 53 0 139 4 57 1 120 4 61 1 126 4 61 1 127] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 1 189 0 213 14 197 0 214 14 197 1 117 1 213 1 122 1 217 1 133] 
#[0 14 201 0 138] 
#[0 8 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[0 8 98 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124 0 140] 
#[0 8 102 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 134] 
#[1 8 106 0 39 8 106 0 40 8 106 0 49 8 106 0 79 6 73 0 138] 
#[0 8 110 0 3 0 5] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 14 205 0 207 14 209 0 208 14 213 0 209 14 217 0 210 1 189 0 213 14 221 0 214 14 221 1 117 1 213 1 122 1 217 1 133] 
#[1 11 213 0 2 7 61 0 6 5 78 0 26 5 78 0 27 5 78 0 28 5 78 0 31 5 78 0 32 5 78 0 40 5 78 0 52 5 78 0 88 5 78 0 89 5 78 0 90 5 78 0 92 5 78 0 93 5 78 0 94 5 78 0 95 5 78 0 114 5 78 0 116 5 78 0 119 5 78 0 124 5 78 0 131 5 78 0 138 5 78 0 140 14 225 0 235] 
#[1 14 229 0 40 11 149 0 89 11 153 0 93 11 157 0 94 11 161 0 95 11 165 0 114 11 173 0 230 11 173 0 231 11 173 0 232 11 173 0 233 11 173 0 234] 
#[1 8 114 0 3 8 114 0 5 4 189 0 6 0 150 0 11 4 193 0 189 4 73 0 190] 
#[0 8 118 0 31 0 88 0 138] 
#[0 8 122 0 26 0 40 0 52 0 90 0 92] 
#[1 5 21 0 52 5 25 0 80 5 29 0 90 2 49 0 92 5 33 1 12 5 37 1 49 5 41 1 51 5 45 1 57 5 49 1 59] 
#[0 8 126 0 31 0 88 0 138] 
#[0 8 130 0 26 0 40 0 52 0 90 0 92] 
#[0 8 134 0 26 0 40 0 52 0 90 0 92] 
#[0 8 138 0 26 0 40 0 52 0 90 0 92] 
#[0 14 233 0 140] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 8 142 0 30 8 142 0 33 4 217 0 35 8 142 0 57 4 217 0 58 8 142 0 59 4 217 0 64 4 217 0 71 8 142 0 75 4 217 0 81 8 142 0 97 8 142 0 98 4 217 0 109 4 217 0 110 8 142 0 113 8 142 0 128 8 142 0 129 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 8 142 0 138 4 217 1 127] 
#[1 4 209 0 2 4 217 0 4 4 213 0 6 4 217 0 8 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 8 146 0 30 8 146 0 33 4 217 0 35 8 146 0 57 4 217 0 58 8 146 0 59 4 217 0 64 4 217 0 71 8 146 0 75 4 217 0 81 8 146 0 97 8 146 0 98 4 217 0 109 4 217 0 110 8 146 0 113 8 146 0 128 8 146 0 129 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 8 146 0 138 4 217 1 127] 
#[0 8 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 134] 
#[1 2 182 0 3 2 182 0 40 14 237 0 138 14 241 1 90] 
#[0 8 154 0 3 0 40 0 138] 
#[1 14 245 0 5 14 249 0 9] 
#[0 8 158 0 5 0 9] 
#[1 4 209 0 2 4 217 0 4 8 162 0 5 4 213 0 6 4 217 0 8 8 162 0 9 4 217 0 11 4 217 0 12 4 217 0 13 4 217 0 18 4 217 0 20 4 217 0 35 4 217 0 58 4 217 0 64 4 217 0 71 4 217 0 81 4 217 0 109 4 217 0 110 4 217 0 130 4 217 0 133 4 217 0 134 4 217 0 136 4 217 0 137 4 217 1 127] 
#[1 2 230 0 26 2 230 0 27 2 230 0 28 8 166 0 31 2 230 0 32 2 230 0 40 2 230 0 52 8 166 0 88 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 8 166 0 138 2 230 0 140 14 253 0 228 7 85 0 238] 
#[0 8 170 0 31 0 88 0 138] 
#[0 8 174 0 5 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 2 229 0 2 3 234 0 3 1 81 0 15 3 234 0 40 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 15 1 0 208 14 213 0 209 14 217 0 210 1 189 0 213 14 221 0 214 14 221 1 117 1 213 1 122 1 217 1 133] 
#[0 8 178 0 3 0 40] 
#[1 2 229 0 2 1 81 0 15 1 93 0 76 0 185 0 131 1 121 0 136 1 125 0 137 2 233 0 141 1 189 0 142 1 213 0 144 1 141 0 148 15 5 0 210 1 189 0 213 14 221 0 214 14 221 1 117 1 213 1 122 1 217 1 133] 
#[0 15 9 0 2] 
#[1 4 2 0 40 4 2 0 89 4 2 0 93 4 2 0 94 4 2 0 95 4 2 0 114 15 13 0 229] 
#[0 8 182 0 3 0 40 0 138] 
#[0 8 186 0 5 0 9] 
#[1 2 230 0 3 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 52 2 230 0 89 2 230 0 90 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 114 2 230 0 116 2 230 0 119 2 230 0 124 2 230 0 131 2 230 0 140 15 17 0 204 7 81 0 228 7 85 0 238] 
#[1 15 21 0 40 11 149 0 89 11 153 0 93 11 157 0 94 11 161 0 95 11 165 0 114 11 173 0 230 11 173 0 231 11 173 0 232 11 173 0 233 11 173 0 234] 
#[0 15 25 0 3] 
#[0 8 190 0 31 0 88 0 138] 
#[0 8 194 0 3 0 40 0 138]
	).
]

{ #category : #private }
DelphiParser >> actionsForCurrentToken [
	| actions action ids newToken |
	actions := OrderedCollection new: 1.
	ids := currentToken ids.
	ids
		do: [ :id | 
			(id = scanner gtEqId and: [ self genericCount > 0 ])
				ifTrue: [ self addActionsFor: scanner gtId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := scanner tokenClass
								value: '>'
								start: currentToken startPosition
								ids: (Array with: scanner gtId).
							self position: currentToken startPosition.
							^ actions ] ].
			self addActionsFor: id to: actions.
			(id = scanner atId
				or: [ #('on' 'mem')
						anySatisfy: [ :each | currentToken value sameAs: each ] ])
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
DelphiParser >> genericCount [
	^ (self currentGLRState attributeNamed: #genericCount) ifNil: [ 0 ]
]

{ #category : #private }
DelphiParser >> genericCount: anInteger [
	^ self currentGLRState attributeNamed: #genericCount put: anInteger
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
DelphiParser >> reduceActionForAttributes1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForAttributes2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
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
	result _deprecated: (nodes at: 6).
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
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
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
	result := DelphiBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result operator: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression11: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression12: nodes [
	| result |
	result := DelphiAssignmentExpressionNode new.
	result lhs: (nodes at: 1).
	result assignment: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression13: nodes [
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
DelphiParser >> reduceActionForExpression14: nodes [
	| result |
	result := DelphiAddressExpressionNode new.
	result atToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression15: nodes [
	| result |
	result := DelphiNotExpressionNode new.
	result notToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression16: nodes [
	| result |
	result := DelphiMinusExpressionNode new.
	result minus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression17: nodes [
	| result |
	result := DelphiPlusExpressionNode new.
	result plus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression19: nodes [
	| result |
	result := DelphiPointerExpressionNode new.
	result expression: (nodes at: 1).
	result upArrow: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression4: nodes [
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
DelphiParser >> reduceActionForExpression5: nodes [
	| result |
	result := DelphiMethodCallExpressionNode new.
	result receiver: (nodes at: 1).
	result left: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExpression9: nodes [
	| result |
	result := DelphiLiteralExpressionNode new.
	result value: (nodes at: 1).
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
	result _deprecated: ((nodes at: 1) at: 4).
	result semicolon: ((nodes at: 1) at: 5).
	result interfaceSection: ((nodes at: 1) at: 6).
	result implementationSection: ((nodes at: 1) at: 7).
	result initializationSection: ((nodes at: 1) at: 8).
	result finalizationSection: ((nodes at: 1) at: 9).
	result endToken: ((nodes at: 1) at: 10).
	result period: ((nodes at: 1) at: 11).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFile2: nodes [
	| result |
	result := DelphiProgramFileNode new.
	result programToken: ((nodes at: 1) at: 1).
	result programName: ((nodes at: 1) at: 2).
	result modifier: ((nodes at: 1) at: 3).
	result _deprecated: ((nodes at: 1) at: 4).
	result addTokens: ((nodes at: 1) at: 5) to: result semicolons.
	result usesToken: ((nodes at: 1) at: 6).
	result addNodes: ((nodes at: 1) at: 7) to: result moduleNames.
	result addTokens: ((nodes at: 1) at: 8) to: result inTokens.
	result addTokens: ((nodes at: 1) at: 9) to: result filenames.
	result addTokens: ((nodes at: 1) at: 10) to: result commas.
	result main: ((nodes at: 1) at: 11).
	result period: ((nodes at: 1) at: 12).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForFile3: nodes [
	| result |
	result := DelphiLibraryFileNode new.
	result libraryToken: ((nodes at: 1) at: 1).
	result libraryName: ((nodes at: 1) at: 2).
	result modifier: ((nodes at: 1) at: 3).
	result _deprecated: ((nodes at: 1) at: 4).
	result addTokens: ((nodes at: 1) at: 5) to: result semicolons.
	result usesToken: ((nodes at: 1) at: 6).
	result addNodes: ((nodes at: 1) at: 7) to: result moduleNames.
	result addTokens: ((nodes at: 1) at: 8) to: result inTokens.
	result addTokens: ((nodes at: 1) at: 9) to: result filenames.
	result addTokens: ((nodes at: 1) at: 10) to: result commas.
	result addNodes: ((nodes at: 1) at: 11) to: result exports.
	result main: ((nodes at: 1) at: 12).
	result period: ((nodes at: 1) at: 13).
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
DelphiParser >> reduceActionForForVariableExpression2: nodes [
	| result |
	result := DelphiForVariableNode new.
	result varToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForForVariableExpression3: nodes [
	| result |
	result := DelphiForVariableNode new.
	result varToken: (nodes at: 1).
	result name: (nodes at: 2).
	result colon: (nodes at: 3).
	result type: (nodes at: 4).
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
DelphiParser >> reduceActionForGenericTypeArgument1: nodes [
	| result |
	result := DelphiTypeArgumentNode new.
	result argument: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForGenericTypeArgument2: nodes [
	| result |
	result := DelphiTypeArgumentNode new.
	result argument: (nodes at: 1).
	result colon: (nodes at: 2).
	result typeConstraint: (nodes at: 3).
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
DelphiParser >> reduceActionForInsideGeneric1: nodes [
	self genericCount: self genericCount + 1.
	^ nil
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInstantiatedGenericExpression1: nodes [
	| result |
	result := DelphiInstantiatedGenericExpressionNode new.
	result value: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result typeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInstantiatedGenericTypeArguments1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 5).
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
DelphiParser >> reduceActionForLibraryFile1: nodes [
	| result |
	result := Array new: 13.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 6 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 9).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 10).
	self add: ((nodes at: 2) at: 6) to: (result at: 5).
	self addAll: (nodes at: 3) to: (result at: 11).
	result at: 12 put: (nodes at: 4).
	result at: 13 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForLibraryLine1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
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
		addNodes: ((nodes at: 2) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	result equalToken: (nodes at: 3).
	result type: ((nodes at: 4) at: 1).
	result modifier: ((nodes at: 4) at: 2).
	result _deprecated: ((nodes at: 4) at: 3).
	result semicolon: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNamedDefinedType2: nodes [
	| result |
	result := DelphiNamedDefinedTypeNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result
		addNodes: ((nodes at: 3) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: ((nodes at: 3) at: 4).
	result equalToken: (nodes at: 4).
	result type: ((nodes at: 5) at: 1).
	result modifier: ((nodes at: 5) at: 2).
	result _deprecated: ((nodes at: 5) at: 3).
	result semicolon: ((nodes at: 5) at: 4).
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
	result _deprecated: (nodes at: 5).
	result semicolon: (nodes at: 6).
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
	result addFirstNodes: (nodes at: 1) to: result annotations.
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
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result addTokens: ((nodes at: 3) at: 3) to: result semicolons.
	result right: ((nodes at: 3) at: 4).
	result addToken: (nodes at: 4) to: result semicolons.
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
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result semicolons.
	result right: ((nodes at: 4) at: 4).
	result addToken: (nodes at: 5) to: result semicolons.
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
DelphiParser >> reduceActionForNonExternalMethodModifier2: nodes [
	| result |
	result := DelphiDeprecatedMethodModifierNode new.
	result modifier: (nodes at: 1).
	result message: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalMethodModifier4: nodes [
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
DelphiParser >> reduceActionForOptionalDeprecated2: nodes [
	| result |
	result := DelphiDeprecatedModifierNode new.
	result deprecatedToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForOptionalDeprecated3: nodes [
	| result |
	result := DelphiDeprecatedModifierNode new.
	result deprecatedToken: (nodes at: 1).
	result message: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForOptionalType1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForOutsideGeneric1: nodes [
	self genericCount: self genericCount - 1.
	^ nil
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
	result := Array new: 12.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 6 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 9).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 10).
	self add: ((nodes at: 2) at: 6) to: (result at: 5).
	result at: 11 put: (nodes at: 3).
	result at: 12 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForProgramFile2: nodes [
	| result |
	result := Array new: 12.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 10).
	self add: ((nodes at: 1) at: 6) to: (result at: 5).
	result at: 11 put: (nodes at: 2).
	result at: 12 put: (nodes at: 3).
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
DelphiParser >> reduceActionForPropertyExpression2: nodes [
	| result |
	result := DelphiPropertyExpressionNode new.
	result expression: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
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
		addNodes: ((nodes at: 2) at: 2)
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
		addNodes: ((nodes at: 4) at: 2)
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
	result _deprecated: (nodes at: 4).
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
	result := DelphiVariableStatementNode new.
	result varToken: ((nodes at: 1) at: 1).
	result addTokens: ((nodes at: 1) at: 2) to: result names.
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result assignmentToken: ((nodes at: 1) at: 4).
	result value: ((nodes at: 1) at: 5).
	result colon: ((nodes at: 1) at: 6).
	result type: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForStatement15: nodes [
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
	result := Array new: 11.
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 5 put: ((nodes at: 1) at: 5).
	result at: 6 put: (nodes at: 2).
	result at: 7 put: (nodes at: 3).
	result at: 8 put: (nodes at: 4).
	result at: 9 put: (nodes at: 5).
	result at: 10 put: ((nodes at: 6) at: 1).
	result at: 11 put: ((nodes at: 6) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForUnitFile2: nodes [
	| result |
	result := Array new: 11.
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 5 put: ((nodes at: 1) at: 5).
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
DelphiParser >> reduceActionForVariableNames1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVariableNames2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVariableStatement1: nodes [
	| result |
	result := Array new: 7.
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
DelphiParser >> reduceActionForVariableStatement2: nodes [
	| result |
	result := Array new: 7.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 6 put: (nodes at: 3).
	result at: 7 put: (nodes at: 4).
	result at: 4 put: (nodes at: 5).
	result at: 5 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForVariableStatement3: nodes [
	| result |
	result := Array new: 7.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 6 put: (nodes at: 3).
	result at: 7 put: (nodes at: 4).
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

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForWhileStatement1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]
