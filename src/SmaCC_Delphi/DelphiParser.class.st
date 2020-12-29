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
#[ 1 2 4 13] 
#[ 1 2 4 45] 
#[ 1 242 3 241] 
#[ 1 242 3 245] 
#[ 1 242 3 249] 
#[ 1 242 3 253] 
#[ 1 242 4 13] 
#[ 1 242 4 45] 
#[ 1 242 4 49] 
#[ 2 14 3 241] 
#[ 2 14 3 245] 
#[ 2 14 3 249] 
#[ 2 14 3 253] 
#[ 2 14 4 13] 
#[ 2 14 4 45] 
#[ 2 14 4 49] 
#[ 2 46 3 241] 
#[ 2 46 3 245] 
#[ 2 46 3 249] 
#[ 2 46 3 253] 
#[ 2 46 4 13] 
#[ 2 46 4 45] 
#[ 2 46 4 49] 
#[ 2 50 3 241] 
#[ 2 50 3 245] 
#[ 2 50 3 249] 
#[ 2 50 3 253] 
#[ 2 50 4 13] 
#[ 2 50 4 45] 
#[ 2 50 4 49] 
#[ 2 186 7 37] 
#[ 2 194 3 241] 
#[ 2 194 3 245] 
#[ 2 194 3 249] 
#[ 2 194 4 13] 
#[ 2 194 4 45] 
#[ 2 194 4 49] 
#[ 2 198 3 241] 
#[ 2 198 3 245] 
#[ 2 198 3 249] 
#[ 2 198 4 13] 
#[ 2 198 4 45] 
#[ 2 198 4 49] 
#[ 2 210 3 241] 
#[ 2 210 3 245] 
#[ 2 210 3 249] 
#[ 2 210 4 13] 
#[ 2 210 4 45] 
#[ 2 210 4 49] 
#[ 2 214 3 241] 
#[ 2 214 3 245] 
#[ 2 214 3 249] 
#[ 2 214 4 13] 
#[ 2 214 4 45] 
#[ 2 214 4 49] 
#[ 3 222 3 241] 
#[ 3 222 3 245] 
#[ 3 222 3 249] 
#[ 3 222 3 253] 
#[ 3 222 4 13] 
#[ 3 222 4 45] 
#[ 3 222 4 49] 
#[ 3 230 3 241] 
#[ 3 230 3 245] 
#[ 3 230 3 249] 
#[ 3 230 3 253] 
#[ 3 230 4 13] 
#[ 3 230 4 45] 
#[ 3 230 4 49] 
#[ 3 254 4 13] 
#[ 3 254 4 45] 
#[ 3 241 4 30] 
#[ 3 245 4 30] 
#[ 3 249 4 30] 
#[ 4 13 4 30] 
#[ 4 30 4 45] 
#[ 4 30 4 49] 
#[ 0 206 11 225] 
#[ 0 230 5 118] 
#[ 0 234 5 122] 
#[ 6 150 10 153] 
#[ 6 150 10 157] 
#[ 6 150 10 205] 
#[ 8 86 10 153] 
#[ 8 86 10 157] 
#[ 8 86 10 205]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2021-01-01T17:53:35.938123-06:00'
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
	| GenericTypeArgumentList ("","" 'comma' | "";"" 'comma') GenericTypeArgument 'genericTypeArgument'
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
	| ""TYPE"" 'typeToken' QualifiedName 'typeName' (""("" 'leftParen' (<identifier> 'codePage' | <number> 'codePage') "")"" 'rightParen')? {{TypeType}}
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
	: TypeModifier? ""CLASS"" 'classToken' ClassAttributes Superclass ImplicitClassSection 'implicitClassSection' ClassSections ""END"" 'endToken' {{NewClassType}}
	| ""CLASS"" 'classToken' ClassAttributes Superclass {{NewClassType}}
	;
TypeModifier
	: (""PUBLIC"" 'accessToken' | ""PROTECTED"" 'accessToken' | ""PRIVATE"" 'accessToken') ""PARTIAL"" 'partial'?
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
	: ""["" 'left' AttributeExpressionList ""]"" 'right' {{Attribute}}
	;
AttributeExpressionList
	: ConstantExpression 'expression'
	| AttributeExpressionList "","" 'comma' ConstantExpression 'expression'
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
	: TypeModifier? InterfaceKeyword 'interfaceToken' Superclass Guid 'guid' NewInterfaceComponents ""END"" 'endToken' {{InterfaceType}}
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
	:  ""EXTERNAL"" 'modifier' ((<string> 'library' | <identifier> 'library') (""NAME"" 'nameToken' <string> 'methodName')? (""INDEX"" 'indexToken' <number> 'index')?)? ""DELAYED"" 'delayed'? <semicolon> 'semicolon' {{ExternalMethodModifier}}
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
	| ""CLASS"" 'classToken'? ""CONSTRUCTOR"" 'constructorToken' OptionalArguments <semicolon> 'semicolon' NonExternalMethodModifiers {{ConstructorHeader}}
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
	: (""FUNCTION"" 'functionToken' | ""METHOD"" 'functionToken') QualifiedName 'qualifiedName' OptionalArguments OptionalType <semicolon> 'semicolon' NonExternalMethodModifiers
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
    | <identifier> 'name' "":"" 'colon' Type 'type' {{ForVariable}}
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
	#(169 0 #reduceActionForUsesList1: 5972993 false ) 
	#(370 0 #reduceActionForBeforeAsm1: 33537025 false ) 
	#(338 0 #reduceActionForStatement15: 29609999 false ) 
	#(209 0 #nil 11905025 false ) 
	#(299 0 #nil 24246273 false ) 
	#(154 1 #reduceActionForFile2: 4301826 false ) 
	#(154 1 #reduceActionForFile3: 4301827 false ) 
	#(154 1 #reduceActionForFile4: 4301828 false ) 
	#(154 1 #reduceActionForFile1: 4301825 false ) 
	#(168 0 #nil 5858305 false ) 
	#(166 1 #reduceActionForUnitFile2: 5470210 false ) 
	#(330 0 #reduceActionForMethodVariables2: 28855298 false ) 
	#(201 0 #reduceActionForOptionalArguments1: 10797057 false ) 
	#(386 1 #reduceActionForInheritedFunctionCall4: 36545540 false ) 
	#(361 1 #reduceActionForRaiseStatement2: 32487426 false ) 
	#(379 1 #reduceActionForVariableExpression1: 35947521 false ) 
	#(217 1 #liftFirstValue: 12597249 false ) 
	#(385 1 #liftFirstValue: 36523009 false ) 
	#(371 1 #reduceActionForExpression9: 33654793 false ) 
	#(371 1 #reduceActionForExpression9: 33654791 false ) 
	#(338 1 #reduceActionForStatement14: 29609998 false ) 
	#(338 1 #reduceActionForStatement13: 29609997 false ) 
	#(338 1 #reduceActionForStatement11: 29609995 false ) 
	#(338 1 #reduceActionForStatement2: 29609986 false ) 
	#(338 1 #reduceActionForStatement3: 29609987 false ) 
	#(338 1 #reduceActionForStatement4: 29609988 false ) 
	#(338 1 #reduceActionForStatement5: 29609989 false ) 
	#(338 1 #reduceActionForStatement6: 29609990 false ) 
	#(338 1 #reduceActionForStatement7: 29609991 false ) 
	#(338 1 #reduceActionForStatement8: 29609992 false ) 
	#(338 1 #reduceActionForStatement9: 29609993 false ) 
	#(338 1 #reduceActionForStatement10: 29609994 false ) 
	#(338 1 #liftFirstValue: 29609996 false ) 
	#(368 1 #liftFirstValue: 33357826 false ) 
	#(338 1 #liftFirstValue: 29609985 false ) 
	#(371 1 #liftFirstValue: 33654787 false ) 
	#(194 0 #reduceActionForInsideGeneric1: 9389057 true ) 
	#(371 1 #liftFirstValue: 33654786 false ) 
	#(371 1 #liftFirstValue: 33654807 false ) 
	#(371 1 #liftFirstValue: 33654806 false ) 
	#(371 1 #liftFirstValue: 33654805 false ) 
	#(371 1 #liftFirstValue: 33654785 false ) 
	#(371 1 #liftFirstValue: 33654802 false ) 
	#(371 1 #reduceActionForExpression9: 33654792 false ) 
	#(371 1 #liftFirstValue: 33654790 false ) 
	#(371 1 #reduceActionForExpression9: 33654804 false ) 
	#(219 0 #reduceActionForConstantArray2: 13679618 false ) 
	#(252 1 #reduceActionForFileType2: 18541570 false ) 
	#(209 1 #liftFirstValue: 11905026 false ) 
	#(197 1 #reduceActionForVariableExpression1: 9692162 false ) 
	#(218 1 #reduceActionForVariableExpression1: 12619779 false ) 
	#(197 1 #reduceActionForVariableExpression1: 9692161 false ) 
	#(218 1 #reduceActionForExpression9: 12619783 false ) 
	#(251 1 #liftFirstValue: 18447364 false ) 
	#(251 1 #liftFirstValue: 18447361 false ) 
	#(192 1 #reduceActionForSimpleDefinedType1: 8735745 false ) 
	#(251 1 #liftFirstValue: 18447362 false ) 
	#(251 1 #liftFirstValue: 18447363 false ) 
	#(192 1 #liftFirstValue: 8735753 false ) 
	#(192 1 #liftFirstValue: 8735748 false ) 
	#(192 1 #liftFirstValue: 8735749 false ) 
	#(192 1 #liftFirstValue: 8735754 false ) 
	#(218 1 #reduceActionForExpression9: 12619777 false ) 
	#(216 1 #liftFirstValue: 12533761 false ) 
	#(192 1 #liftFirstValue: 8735751 false ) 
	#(192 1 #liftFirstValue: 8735747 false ) 
	#(218 1 #liftFirstValue: 12619785 false ) 
	#(218 1 #reduceActionForExpression9: 12619782 false ) 
	#(218 1 #reduceActionForExpression9: 12619778 false ) 
	#(184 0 #reduceActionForOptionalArguments1: 7642113 false ) 
	#(246 1 #reduceActionForAttributes1: 17777665 false ) 
	#(272 0 #reduceActionForOptionalType1: 20508673 false ) 
	#(297 1 #reduceActionForVariableNames1: 24090625 false ) 
	#(299 1 #liftFirstValue: 24246275 false ) 
	#(299 1 #liftFirstValue: 24246276 false ) 
	#(299 1 #liftFirstValue: 24246274 false ) 
	#(244 1 #liftFirstValue: 16908300 false ) 
	#(244 1 #liftFirstValue: 16908301 false ) 
	#(244 1 #liftFirstValue: 16908296 false ) 
	#(244 1 #liftFirstValue: 16908298 false ) 
	#(244 1 #liftFirstValue: 16908299 false ) 
	#(244 1 #liftFirstValue: 16908297 false ) 
	#(245 1 #liftFirstValue: 17440774 false ) 
	#(244 1 #liftFirstValue: 16908292 false ) 
	#(244 1 #liftFirstValue: 16908294 false ) 
	#(263 1 #liftFirstValue: 19687425 false ) 
	#(263 1 #liftFirstValue: 19687426 false ) 
	#(263 1 #liftFirstValue: 19687427 false ) 
	#(263 1 #liftFirstValue: 19687428 false ) 
	#(263 1 #liftFirstValue: 19687429 false ) 
	#(262 1 #liftFirstValue: 19614721 false ) 
	#(273 1 #reduceActionForPropertyHeader1: 20556801 false ) 
	#(262 1 #liftFirstValue: 19614722 false ) 
	#(264 1 #liftFirstValue: 19825665 false ) 
	#(264 1 #liftFirstValue: 19825666 false ) 
	#(265 1 #liftFirstValue: 19909633 false ) 
	#(265 1 #liftFirstValue: 19909634 false ) 
	#(266 1 #liftFirstValue: 19990529 false ) 
	#(311 1 #reduceActionForExternalProcedureHeader1: 26278913 false ) 
	#(266 1 #liftFirstValue: 19990530 false ) 
	#(313 1 #reduceActionForExternalProcedureHeader1: 26476545 false ) 
	#(267 1 #liftFirstValue: 20068353 false ) 
	#(267 1 #liftFirstValue: 20068354 false ) 
	#(269 1 #liftFirstValue: 20253697 false ) 
	#(319 1 #reduceActionForExternalFunctionHeader1: 27316225 false ) 
	#(269 1 #liftFirstValue: 20253698 false ) 
	#(321 1 #reduceActionForExternalFunctionHeader1: 27508737 false ) 
	#(270 1 #liftFirstValue: 20328449 false ) 
	#(270 1 #liftFirstValue: 20328450 false ) 
	#(271 1 #liftFirstValue: 20418561 false ) 
	#(271 1 #liftFirstValue: 20418562 false ) 
	#(244 1 #liftFirstValue: 16908291 false ) 
	#(333 1 #reduceActionForVars1: 29165569 false ) 
	#(359 1 #reduceActionForBaseCaseLabel1: 32275457 false ) 
	#(358 1 #reduceActionForVariableNames1: 32186369 false ) 
	#(357 1 #liftFirstValue: 32080897 false ) 
	#(172 1 #reduceActionForFullModuleName1: 6240257 false ) 
	#(198 0 #nil 10080257 false ) 
	#(170 1 #reduceActionForUsesModuleList1: 6051841 false ) 
	#(171 1 #reduceActionForUsesModule1: 6126593 false ) 
	#(159 0 #reduceActionForMethodVariables2: 4926465 false ) 
	#(300 0 #nil 24333313 false ) 
	#(160 1 #reduceActionForMainMethod1: 4980737 false ) 
	#(371 2 #reduceActionForExpression14: 33654798 false ) 
	#(337 1 #reduceActionForVariableNames1: 29506561 false ) 
	#(365 1 #liftFirstValue: 33009665 false ) 
	#(294 0 #reduceActionForArgumentList1: 23822337 false ) 
	#(341 2 #reduceActionForGotoStatement1: 30451713 false ) 
	#(341 2 #reduceActionForGotoStatement1: 30451714 false ) 
	#(386 2 #reduceActionForInheritedFunctionCall3: 36545539 false ) 
	#(371 2 #reduceActionForExpression15: 33654799 false ) 
	#(375 2 #reduceActionForAnonymousProcedureHeader1: 35356673 false ) 
	#(362 0 #reduceActionForOptionalType1: 32595969 false ) 
	#(347 0 #nil 31196161 false ) 
	#(345 1 #reduceActionForVariableNames1: 30990337 false ) 
	#(380 2 #reduceActionForSetConstructor2: 36017154 false ) 
	#(382 1 #reduceActionForSetValue1: 36247553 false ) 
	#(381 1 #reduceActionForVariableNames1: 36147201 false ) 
	#(371 2 #reduceActionForExpression16: 33654800 false ) 
	#(371 2 #reduceActionForExpression17: 33654801 false ) 
	#(390 1 #liftFirstValue: 37243911 false ) 
	#(390 1 #liftFirstValue: 37243912 false ) 
	#(390 1 #liftFirstValue: 37243919 false ) 
	#(390 1 #liftFirstValue: 37243920 false ) 
	#(390 1 #liftFirstValue: 37243908 false ) 
	#(389 1 #liftFirstValue: 37179393 false ) 
	#(390 1 #liftFirstValue: 37243905 false ) 
	#(390 1 #liftFirstValue: 37243917 false ) 
	#(390 1 #liftFirstValue: 37243909 false ) 
	#(390 1 #liftFirstValue: 37243922 false ) 
	#(390 1 #liftFirstValue: 37243923 false ) 
	#(390 1 #liftFirstValue: 37243910 false ) 
	#(390 1 #liftFirstValue: 37243906 false ) 
	#(390 1 #liftFirstValue: 37243915 false ) 
	#(390 1 #liftFirstValue: 37243916 false ) 
	#(390 1 #liftFirstValue: 37243907 false ) 
	#(390 1 #liftFirstValue: 37243918 false ) 
	#(390 1 #liftFirstValue: 37243921 false ) 
	#(390 1 #liftFirstValue: 37243914 false ) 
	#(390 1 #liftFirstValue: 37243913 false ) 
	#(371 2 #reduceActionForExpression19: 33654803 false ) 
	#(371 2 #reduceActionForExpression13: 33654797 false ) 
	#(389 1 #liftFirstValue: 37179394 false ) 
	#(373 2 #reduceActionForInstantiatedGenericExpression1: 35072001 false ) 
	#(374 2 #reduceActionForAnonymousProcedure1: 35245057 false ) 
	#(376 2 #reduceActionForAnonymousFunction1: 35457025 false ) 
	#(373 2 #reduceActionForInstantiatedGenericExpression1: 35072002 false ) 
	#(190 1 #reduceActionForEnumName1: 8514561 false ) 
	#(189 1 #reduceActionForVariableNames1: 8441857 false ) 
	#(221 1 #reduceActionForUsesModule1: 13906945 false ) 
	#(219 1 #reduceActionForConstantArray1: 13679617 false ) 
	#(220 1 #reduceActionForUsesModuleList1: 13726721 false ) 
	#(353 0 #nil 31788033 false ) 
	#(222 1 #reduceActionForConstantArray1: 14042113 false ) 
	#(223 1 #reduceActionForVariableNames1: 14085121 false ) 
	#(218 2 #reduceActionForExpression14: 12619791 false ) 
	#(218 2 #reduceActionForExpression15: 12619788 false ) 
	#(268 0 #reduceActionForOptionalType1: 20161537 false ) 
	#(192 2 #reduceActionForSimpleDefinedType11: 8735755 false ) 
	#(218 2 #reduceActionForExpression16: 12619789 false ) 
	#(218 2 #reduceActionForExpression17: 12619790 false ) 
	#(192 2 #reduceActionForSimpleDefinedType2: 8735746 false ) 
	#(197 2 #reduceActionForNamedType4: 9692164 false ) 
	#(254 0 #reduceActionForOptionalArguments1: 18864130 false ) 
	#(243 0 #reduceActionForMethodVariables2: 16828417 false ) 
	#(248 1 #reduceActionForVariableNames1: 17935361 false ) 
	#(246 2 #reduceActionForAttributes2: 17777666 false ) 
	#(296 2 #reduceActionForArgument2: 23951362 false ) 
	#(275 2 #reduceActionForClassPropertyHeader1: 20814849 false ) 
	#(316 2 #reduceActionForExternalClassProcedureHeader1: 26925057 false ) 
	#(317 2 #reduceActionForExternalClassProcedureHeader1: 27036673 false ) 
	#(324 2 #reduceActionForExternalClassFunctionHeader1: 27987969 false ) 
	#(325 2 #reduceActionForExternalClassFunctionHeader1: 28096513 false ) 
	#(244 2 #reduceActionForNewClassComponent2: 16908290 false ) 
	#(175 2 #reduceActionForConstantValueList1: 6594561 false ) 
	#(176 1 #reduceActionForAttributes1: 6673409 false ) 
	#(277 0 #nil 21237761 false ) 
	#(334 2 #reduceActionForVarsVars2: 29195266 false ) 
	#(335 1 #reduceActionForAttributes1: 29283329 false ) 
	#(181 2 #reduceActionForDefinedTypeList1: 7315457 false ) 
	#(182 1 #reduceActionForAttributes1: 7396353 false ) 
	#(334 2 #reduceActionForVarsVars2: 29195265 false ) 
	#(244 2 #reduceActionForNewClassComponent5: 16908293 false ) 
	#(244 2 #reduceActionForNewClassComponent5: 16908295 false ) 
	#(245 2 #reduceActionForNewClassComponent5: 17440769 false ) 
	#(245 2 #reduceActionForNewClassComponent5: 17440770 false ) 
	#(245 2 #reduceActionForNewClassComponent5: 17440771 false ) 
	#(245 2 #reduceActionForNewClassComponent5: 17440772 false ) 
	#(245 2 #reduceActionForNewClassComponent5: 17440773 false ) 
	#(292 0 #nil 23388161 false ) 
	#(287 0 #reduceActionForMethodVariables2: 22530049 false ) 
	#(198 1 #liftFirstValue: 10080258 false ) 
	#(232 0 #nil 15517697 false ) 
	#(162 3 #reduceActionForPackageLine1: 5098497 false ) 
	#(169 3 #reduceActionForUsesList2: 5972994 false ) 
	#(164 1 #reduceActionForVariableNames1: 5277697 false ) 
	#(173 0 #reduceActionForMethodVariables2: 6365185 false ) 
	#(391 0 #nil 37430273 false ) 
	#(155 3 #reduceActionForProgramFile2: 4431874 false ) 
	#(331 1 #liftFirstValue: 28926979 false ) 
	#(331 1 #liftFirstValue: 28926983 false ) 
	#(331 1 #liftFirstValue: 28926978 false ) 
	#(331 1 #liftFirstValue: 28926980 false ) 
	#(310 1 #reduceActionForProcedureDefinition2: 26112002 false ) 
	#(331 1 #liftFirstValue: 28926981 false ) 
	#(318 1 #reduceActionForFunctionDefinition2: 27154434 false ) 
	#(330 2 #reduceActionForAttributes2: 28855297 false ) 
	#(331 1 #liftFirstValue: 28926982 false ) 
	#(331 1 #liftFirstValue: 28926977 false ) 
	#(371 3 #reduceActionForExpression11: 33654795 false ) 
	#(368 3 #reduceActionForStatementBlock1: 33357825 false ) 
	#(365 2 #reduceActionForForVariableExpression2: 33009666 false ) 
	#(294 1 #reduceActionForConstantArray1: 23822338 false ) 
	#(295 1 #reduceActionForVariableNames1: 23856129 false ) 
	#(377 3 #reduceActionForAnonymousFunctionHeader1: 35565569 false ) 
	#(361 3 #reduceActionForRaiseStatement1: 32487425 false ) 
	#(351 0 #nil 31598593 false ) 
	#(380 3 #reduceActionForSetConstructor1: 36017153 false ) 
	#(340 3 #reduceActionForPackageLine1: 30316545 false ) 
	#(340 3 #reduceActionForPackageLine1: 30316546 false ) 
	#(369 3 #reduceActionForAsmBlock1: 33462273 false ) 
	#(371 3 #reduceActionForExpression5: 33654789 false ) 
	#(388 1 #liftFirstValue: 37045249 false ) 
	#(387 1 #reduceActionForVariableNames1: 36937729 false ) 
	#(372 3 #reduceActionForPropertyExpression2: 34917378 false ) 
	#(372 3 #reduceActionForPropertyExpression2: 34917377 false ) 
	#(371 3 #reduceActionForExpression12: 33654796 false ) 
	#(384 1 #reduceActionForVariableNames1: 36434945 false ) 
	#(371 3 #reduceActionForExpression10: 33654794 false ) 
	#(188 3 #reduceActionForEnumType1: 8388609 false ) 
	#(218 3 #reduceActionForConstantExpression11: 12619787 false ) 
	#(353 1 #liftFirstValue: 31788034 false ) 
	#(252 3 #reduceActionForFileType1: 18541569 false ) 
	#(202 3 #reduceActionForSetType2: 10861570 false ) 
	#(202 3 #reduceActionForSetType1: 10861569 false ) 
	#(242 2 #reduceActionForQualifiedName1: 16627713 false ) 
	#(197 3 #reduceActionForPropertyExpression2: 9692163 false ) 
	#(234 0 #reduceActionForMethodVariables2: 15694849 false ) 
	#(233 1 #reduceActionForImplicitClassSection1: 15622145 false ) 
	#(215 3 #reduceActionForRangeType1: 12443649 false ) 
	#(225 1 #reduceActionForVariableNames1: 14344193 false ) 
	#(218 3 #reduceActionForPropertyExpression2: 12619780 false ) 
	#(218 3 #reduceActionForExpression10: 12619781 false ) 
	#(192 3 #reduceActionForSimpleDefinedType8: 8735752 false ) 
	#(247 3 #reduceActionForAttribute1: 17856513 false ) 
	#(186 1 #reduceActionForGenericTypeArgument1: 7903233 false ) 
	#(185 1 #reduceActionForVariableNames1: 7730177 false ) 
	#(272 2 #reduceActionForGotoStatement1: 20508674 false ) 
	#(297 3 #reduceActionForVariableNames2: 24090626 false ) 
	#(176 2 #reduceActionForAttributes2: 6673410 false ) 
	#(288 0 #reduceActionForMethodVariables2: 22600705 false ) 
	#(335 2 #reduceActionForAttributes2: 29283330 false ) 
	#(182 2 #reduceActionForAttributes2: 7396354 false ) 
	#(292 1 #liftFirstValue: 23388162 false ) 
	#(291 2 #reduceActionForExternalMethodModifier10: 23200778 false ) 
	#(305 3 #reduceActionForExternalConstructorHeader1: 25090049 false ) 
	#(308 3 #reduceActionForExternalConstructorHeader1: 25766913 false ) 
	#(312 3 #reduceActionForExternalProcedureHeaderVars1: 26358785 false ) 
	#(320 3 #reduceActionForExternalFunctionHeaderVars1: 27393025 false ) 
	#(327 3 #reduceActionForExternalConstructorHeader1: 28398593 false ) 
	#(359 3 #reduceActionForBaseCaseLabel2: 32275458 false ) 
	#(356 3 #reduceActionForCaseOption1: 31994881 false ) 
	#(358 3 #reduceActionForVariableNames2: 32186370 false ) 
	#(357 3 #reduceActionForCaseLabel2: 32080898 false ) 
	#(172 3 #reduceActionForFullModuleName2: 6240258 false ) 
	#(232 1 #reduceActionForOptionalDeprecated2: 15517698 false ) 
	#(170 3 #reduceActionForUsesModuleList2: 6051842 false ) 
	#(171 3 #reduceActionForPackageLine1: 6126594 false ) 
	#(155 4 #reduceActionForProgramFile1: 4431873 false ) 
	#(159 2 #reduceActionForAttributes2: 4926466 false ) 
	#(163 3 #reduceActionForRequires1: 5196801 false ) 
	#(161 4 #reduceActionForPackageFile1: 5041153 false ) 
	#(168 3 #reduceActionForInterfaceSection2: 5858306 false ) 
	#(302 0 #reduceActionForMethodVariables2: 24565761 false ) 
	#(392 0 #nil 37540865 false ) 
	#(178 2 #reduceActionForResourceStringList1: 6972417 false ) 
	#(179 1 #reduceActionForAttributes1: 7071745 false ) 
	#(310 2 #reduceActionForProcedureDefinition1: 26112001 false ) 
	#(318 2 #reduceActionForFunctionDefinition1: 27154433 false ) 
	#(329 3 #reduceActionForMethodComponents1: 28767233 false ) 
	#(337 3 #reduceActionForVariableNames2: 29506562 false ) 
	#(360 0 #reduceActionForElseCase1: 32437249 false ) 
	#(355 1 #reduceActionForVariableNames1: 31892481 false ) 
	#(365 3 #reduceActionForForVariableExpression4: 33009668 false ) 
	#(201 3 #reduceActionForRequires1: 10797058 false ) 
	#(343 4 #reduceActionForIfStatement1: 30656513 false ) 
	#(386 4 #reduceActionForInheritedFunctionCall2: 36545538 false ) 
	#(362 2 #reduceActionForGotoStatement1: 32595970 false ) 
	#(342 4 #reduceActionForRepeatStatement1: 30553089 false ) 
	#(350 0 #nil 31522817 false ) 
	#(348 1 #reduceActionForAttributes1: 31355905 false ) 
	#(339 4 #reduceActionForVariableStatement3: 30130179 false ) 
	#(339 4 #reduceActionForVariableStatement1: 30130177 false ) 
	#(367 4 #reduceActionForWhileStatement1: 33252353 false ) 
	#(345 3 #reduceActionForVariableNames2: 30990338 false ) 
	#(344 4 #reduceActionForRepeatStatement1: 30896129 false ) 
	#(382 3 #reduceActionForSetValue2: 36247554 false ) 
	#(381 3 #reduceActionForVariableNames2: 36147202 false ) 
	#(371 4 #reduceActionForExpression4: 33654788 false ) 
	#(383 3 #reduceActionForRequires1: 36380673 false ) 
	#(196 1 #reduceActionForVariableNames1: 9529345 false ) 
	#(195 0 #reduceActionForOutsideGeneric1: 9458689 true ) 
	#(190 3 #reduceActionForEnumName2: 8514562 false ) 
	#(224 3 #reduceActionForConstantRecordField1: 14219265 false ) 
	#(189 3 #reduceActionForVariableNames2: 8441858 false ) 
	#(221 3 #reduceActionForPackageLine1: 13906946 false ) 
	#(220 3 #reduceActionForUsesModuleList2: 13726722 false ) 
	#(218 4 #reduceActionForConstantExpression10: 12619786 false ) 
	#(223 3 #reduceActionForVariableNames2: 14085122 false ) 
	#(268 2 #reduceActionForGotoStatement1: 20161538 false ) 
	#(256 1 #liftFirstValue: 19041282 false ) 
	#(256 1 #liftFirstValue: 19041281 false ) 
	#(255 1 #reduceActionForVariableNames1: 18929665 false ) 
	#(206 4 #reduceActionForRecordType1: 11495425 false ) 
	#(208 2 #reduceActionForRecordFieldList1: 11768833 false ) 
	#(243 2 #reduceActionForAttributes2: 16828418 false ) 
	#(218 4 #reduceActionForExpression4: 12619784 false ) 
	#(192 4 #reduceActionForSimpleDefinedType6: 8735750 false ) 
	#(248 3 #reduceActionForVariableNames2: 17935362 false ) 
	#(184 3 #reduceActionForRequires1: 7642114 false ) 
	#(229 0 #reduceActionForMethodVariables2: 15248385 false ) 
	#(258 1 #liftFirstValue: 19306498 false ) 
	#(258 1 #liftFirstValue: 19306497 false ) 
	#(240 0 #reduceActionForOptionalArguments1: 16466945 false ) 
	#(227 1 #reduceActionForTypeModifier5: 14710789 false ) 
	#(227 1 #reduceActionForTypeModifier5: 14710787 false ) 
	#(227 1 #reduceActionForTypeModifier5: 14710785 false ) 
	#(183 4 #reduceActionForNamedDefinedType1: 7503873 false ) 
	#(187 1 #reduceActionForRaiseStatement2: 8051715 false ) 
	#(187 1 #reduceActionForRaiseStatement2: 8051716 false ) 
	#(191 1 #liftFirstValue: 8624132 false ) 
	#(191 1 #liftFirstValue: 8624129 false ) 
	#(191 1 #liftFirstValue: 8624133 false ) 
	#(191 1 #liftFirstValue: 8624130 false ) 
	#(191 1 #liftFirstValue: 8624131 false ) 
	#(257 1 #reduceActionForInterfaceType3: 19097603 false ) 
	#(298 0 #reduceActionForOptionalType1: 24181761 false ) 
	#(306 4 #reduceActionForNonExternalConstructorHeader3: 25226243 false ) 
	#(276 0 #reduceActionForPropertyValues1: 20907009 false ) 
	#(291 3 #reduceActionForExternalMethodModifier1: 23200769 false ) 
	#(293 1 #liftFirstValue: 23533579 false ) 
	#(293 1 #liftFirstValue: 23533573 false ) 
	#(293 1 #liftFirstValue: 23533582 false ) 
	#(293 1 #liftFirstValue: 23533577 false ) 
	#(293 1 #liftFirstValue: 23533583 false ) 
	#(293 1 #liftFirstValue: 23533586 false ) 
	#(293 1 #liftFirstValue: 23533581 false ) 
	#(293 1 #liftFirstValue: 23533589 false ) 
	#(293 1 #liftFirstValue: 23533588 false ) 
	#(293 1 #liftFirstValue: 23533587 false ) 
	#(293 1 #liftFirstValue: 23533580 false ) 
	#(293 1 #liftFirstValue: 23533569 false ) 
	#(293 1 #liftFirstValue: 23533570 false ) 
	#(293 1 #liftFirstValue: 23533574 false ) 
	#(293 1 #liftFirstValue: 23533585 false ) 
	#(293 1 #liftFirstValue: 23533572 false ) 
	#(293 1 #liftFirstValue: 23533575 false ) 
	#(293 1 #liftFirstValue: 23533590 false ) 
	#(293 1 #liftFirstValue: 23533584 false ) 
	#(293 1 #liftFirstValue: 23533571 false ) 
	#(293 1 #liftFirstValue: 23533578 false ) 
	#(293 1 #liftFirstValue: 23533576 false ) 
	#(287 2 #reduceActionForAttributes2: 22530050 false ) 
	#(289 1 #liftFirstValue: 22704129 false ) 
	#(289 1 #liftFirstValue: 22704130 false ) 
	#(232 2 #reduceActionForOptionalDeprecated3: 15517699 false ) 
	#(158 5 #reduceActionForLibraryLine1: 4776961 false ) 
	#(167 5 #reduceActionForLibraryLine1: 5692418 false ) 
	#(156 5 #reduceActionForLibraryLine1: 4547585 false ) 
	#(167 5 #reduceActionForLibraryLine1: 5692417 false ) 
	#(394 1 #reduceActionForVariableNames1: 37754881 false ) 
	#(157 5 #reduceActionForLibraryFile1: 4697089 false ) 
	#(164 3 #reduceActionForVariableNames2: 5277698 false ) 
	#(165 3 #reduceActionForUsesList2: 5387265 false ) 
	#(395 2 #reduceActionForGotoStatement1: 37846017 false ) 
	#(173 2 #reduceActionForAttributes2: 6365186 false ) 
	#(174 1 #liftFirstValue: 6459395 false ) 
	#(174 1 #liftFirstValue: 6459394 false ) 
	#(174 1 #liftFirstValue: 6459393 false ) 
	#(174 1 #liftFirstValue: 6459396 false ) 
	#(174 1 #liftFirstValue: 6459397 false ) 
	#(174 1 #liftFirstValue: 6459398 false ) 
	#(301 0 #nil 24479745 false ) 
	#(391 2 #reduceActionForInitializationSection2: 37430274 false ) 
	#(332 3 #reduceActionForLabels1: 29073409 false ) 
	#(179 2 #reduceActionForAttributes2: 7071746 false ) 
	#(354 2 #reduceActionForCaseOptionList1: 31840257 false ) 
	#(365 4 #reduceActionForForVariableExpression3: 33009667 false ) 
	#(366 1 #liftFirstValue: 33219586 false ) 
	#(366 1 #liftFirstValue: 33219585 false ) 
	#(295 3 #reduceActionForVariableNames2: 23856130 false ) 
	#(386 5 #reduceActionForInheritedFunctionCall1: 36545537 false ) 
	#(347 3 #reduceActionForExcept3: 31196163 false ) 
	#(348 2 #reduceActionForAttributes2: 31355906 false ) 
	#(347 3 #reduceActionForExcept2: 31196162 false ) 
	#(351 2 #reduceActionForFinally2: 31598594 false ) 
	#(346 5 #reduceActionForTryStatement1: 31095809 false ) 
	#(387 3 #reduceActionForVariableNames2: 36937730 false ) 
	#(388 3 #reduceActionForMethodArgument2: 37045250 false ) 
	#(384 3 #reduceActionForVariableNames2: 36434946 false ) 
	#(199 5 #reduceActionForAnonymousProcedureType1: 10129409 false ) 
	#(199 5 #reduceActionForAnonymousProcedureType2: 10129410 false ) 
	#(202 5 #reduceActionForSetType3: 10861571 false ) 
	#(192 5 #reduceActionForSimpleDefinedType12: 8735756 false ) 
	#(192 5 #reduceActionForSimpleDefinedType12: 8735757 false ) 
	#(242 4 #reduceActionForQualifiedName2: 16627714 false ) 
	#(254 3 #reduceActionForRequires1: 18864129 false ) 
	#(253 5 #reduceActionForArrayType2: 18653186 false ) 
	#(253 5 #reduceActionForArrayType1: 18653185 false ) 
	#(208 3 #reduceActionForRecordFieldList2: 11768834 false ) 
	#(234 2 #reduceActionForAttributes2: 15694850 false ) 
	#(235 1 #liftFirstValue: 15757313 false ) 
	#(235 1 #liftFirstValue: 15757314 false ) 
	#(235 1 #liftFirstValue: 15757315 false ) 
	#(235 1 #liftFirstValue: 15757316 false ) 
	#(225 3 #reduceActionForVariableNames2: 14344194 false ) 
	#(186 3 #reduceActionForGenericTypeArgument2: 7903234 false ) 
	#(185 3 #reduceActionForVariableNames2: 7730178 false ) 
	#(185 3 #reduceActionForVariableNames2: 7730179 false ) 
	#(227 2 #reduceActionForGotoStatement1: 14710790 false ) 
	#(227 2 #reduceActionForGotoStatement1: 14710788 false ) 
	#(227 2 #reduceActionForGotoStatement1: 14710786 false ) 
	#(187 2 #reduceActionForDefinedType2: 8051714 false ) 
	#(259 0 #nil 19361793 false ) 
	#(183 5 #reduceActionForNamedDefinedType2: 7503874 false ) 
	#(296 5 #reduceActionForArgument1: 23951361 false ) 
	#(306 5 #reduceActionForNonExternalConstructorHeader4: 25226244 false ) 
	#(288 2 #reduceActionForAttributes2: 22600706 false ) 
	#(306 5 #reduceActionForNonExternalConstructorHeader1: 25226241 false ) 
	#(309 5 #reduceActionForNonExternalDestructorHeader1: 25900033 false ) 
	#(249 5 #reduceActionForInterfaceFunctionAssignment1: 18071553 false ) 
	#(250 5 #reduceActionForInterfaceProcedureAssignment1: 18254849 false ) 
	#(314 5 #reduceActionForNonExternalProcedureHeaderVars1: 26562561 false ) 
	#(277 3 #reduceActionForPropertyArrayAccessors2: 21237762 false ) 
	#(291 4 #reduceActionForExternalMethodModifier6: 23200774 false ) 
	#(291 4 #reduceActionForExternalMethodModifier6: 23200770 false ) 
	#(290 2 #reduceActionForExternalMethodModifier10: 22778881 false ) 
	#(393 3 #reduceActionForExportsDefinition1: 37644289 false ) 
	#(303 1 #liftFirstValue: 24625162 false ) 
	#(303 1 #liftFirstValue: 24625163 false ) 
	#(303 1 #liftFirstValue: 24625160 false ) 
	#(300 4 #reduceActionForImplementationSection2: 24333314 false ) 
	#(302 2 #reduceActionForAttributes2: 24565762 false ) 
	#(303 1 #liftFirstValue: 24625153 false ) 
	#(304 1 #reduceActionForConstructorDefinition2: 24912898 false ) 
	#(303 1 #liftFirstValue: 24625154 false ) 
	#(307 1 #reduceActionForDestructorDefinition2: 25594882 false ) 
	#(303 1 #liftFirstValue: 24625155 false ) 
	#(303 1 #liftFirstValue: 24625156 false ) 
	#(315 1 #reduceActionForClassProcedureDefinition2: 26732546 false ) 
	#(303 1 #liftFirstValue: 24625157 false ) 
	#(303 1 #liftFirstValue: 24625158 false ) 
	#(323 1 #reduceActionForClassFunctionDefinition2: 27800578 false ) 
	#(303 1 #liftFirstValue: 24625159 false ) 
	#(326 1 #reduceActionForClassOperatorDefinition2: 28211202 false ) 
	#(303 1 #liftFirstValue: 24625161 false ) 
	#(303 1 #liftFirstValue: 24625164 false ) 
	#(392 2 #reduceActionForFinalizationSection2: 37540866 false ) 
	#(166 6 #reduceActionForUnitFile1: 5470209 false ) 
	#(360 2 #reduceActionForElseCase2: 32437250 false ) 
	#(352 6 #reduceActionForCaseStatement1: 31666177 false ) 
	#(355 3 #reduceActionForVariableNames2: 31892482 false ) 
	#(364 6 #reduceActionForForInStatement1: 32860161 false ) 
	#(343 6 #reduceActionForForInStatement1: 30656514 false ) 
	#(378 6 #reduceActionForMemExpression1: 35675137 false ) 
	#(378 6 #reduceActionForMemExpression1: 35675138 false ) 
	#(350 2 #reduceActionForPossibleExceptElse2: 31522818 false ) 
	#(339 6 #reduceActionForVariableStatement2: 30130178 false ) 
	#(196 3 #reduceActionForVariableNames2: 9529346 false ) 
	#(193 5 #reduceActionForInstantiatedGenericTypeArguments1: 9257985 false ) 
	#(207 6 #reduceActionForRecordHelperType1: 11600897 false ) 
	#(204 1 #reduceActionForVariableNames1: 11295745 false ) 
	#(203 3 #reduceActionForTwoItemSetNameList1: 11139073 false ) 
	#(255 3 #reduceActionForVariableNames2: 18929666 false ) 
	#(236 2 #reduceActionForPrivateClassSection2: 15870978 false ) 
	#(237 2 #reduceActionForProtectedClassSection2: 16063490 false ) 
	#(238 2 #reduceActionForPublicClassSection1: 16270337 false ) 
	#(239 2 #reduceActionForPublishedClassSection1: 16362497 false ) 
	#(205 3 #reduceActionForMetaclassType1: 11399169 false ) 
	#(230 1 #liftFirstValue: 15323137 false ) 
	#(230 1 #liftFirstValue: 15323138 false ) 
	#(229 2 #reduceActionForAttributes2: 15248386 false ) 
	#(226 3 #reduceActionForNewClassType3: 14464003 false ) 
	#(241 1 #reduceActionForVariableNames1: 16528385 false ) 
	#(260 0 #reduceActionForMethodVariables2: 19437569 false ) 
	#(298 2 #reduceActionForGotoStatement1: 24181762 false ) 
	#(336 6 #reduceActionForVariable1: 29382657 false ) 
	#(306 6 #reduceActionForNonExternalConstructorHeader2: 25226242 false ) 
	#(309 6 #reduceActionForNonExternalDestructorHeader2: 25900034 false ) 
	#(322 6 #reduceActionForNonExternalFunctionHeaderVars1: 27591681 false ) 
	#(322 6 #reduceActionForNonExternalFunctionHeaderVars1: 27591682 false ) 
	#(282 1 #reduceActionForPropertyDefault2: 21912578 false ) 
	#(282 1 #reduceActionForPropertyDefault3: 21912579 false ) 
	#(286 0 #nil 22429697 false ) 
	#(276 2 #reduceActionForPropertyValues2: 20907010 false ) 
	#(276 2 #reduceActionForCaseOptionList1: 20907011 false ) 
	#(276 2 #reduceActionForPropertyValues4: 20907012 false ) 
	#(276 2 #reduceActionForPropertyValues8: 20907016 false ) 
	#(276 2 #reduceActionForPropertyValues5: 20907013 false ) 
	#(276 2 #reduceActionForPropertyValues7: 20907015 false ) 
	#(276 2 #reduceActionForPropertyValues6: 20907014 false ) 
	#(244 6 #reduceActionForNewClassComponent1: 16908289 false ) 
	#(290 3 #reduceActionForNonExternalMethodModifier2: 22778882 false ) 
	#(290 3 #reduceActionForNonExternalMethodModifier4: 22778884 false ) 
	#(290 3 #reduceActionForNonExternalMethodModifier4: 22778883 false ) 
	#(394 3 #reduceActionForVariableNames2: 37754882 false ) 
	#(301 2 #reduceActionForImplementationCode2: 24479746 false ) 
	#(304 2 #reduceActionForConstructorDefinition1: 24912897 false ) 
	#(307 2 #reduceActionForDestructorDefinition1: 25594881 false ) 
	#(315 2 #reduceActionForClassProcedureDefinition1: 26732545 false ) 
	#(323 2 #reduceActionForClassFunctionDefinition1: 27800577 false ) 
	#(326 2 #reduceActionForClassOperatorDefinition1: 28211201 false ) 
	#(200 7 #reduceActionForAnonymousFunctionType1: 10441729 false ) 
	#(200 7 #reduceActionForAnonymousFunctionType2: 10441730 false ) 
	#(236 3 #reduceActionForPrivateClassSection1: 15870977 false ) 
	#(237 3 #reduceActionForProtectedClassSection1: 16063489 false ) 
	#(240 3 #reduceActionForRequires1: 16466946 false ) 
	#(187 4 #reduceActionForWhileStatement1: 8051717 false ) 
	#(187 4 #reduceActionForWhileStatement1: 8051713 false ) 
	#(177 7 #reduceActionForConstantValue1: 6768641 false ) 
	#(328 7 #reduceActionForNonExternalClassOperatorHeader1: 28540929 false ) 
	#(282 2 #reduceActionForPropertyDefault1: 21912577 false ) 
	#(281 2 #reduceActionForPropertyDispid1: 21600257 false ) 
	#(284 1 #reduceActionForVariableNames1: 22220801 false ) 
	#(283 2 #reduceActionForPropertyImplements1: 22116353 false ) 
	#(278 2 #reduceActionForPropertyIndex1: 21335041 false ) 
	#(279 2 #reduceActionForPropertyReader1: 21428225 false ) 
	#(285 2 #reduceActionForPropertyStored1: 22340609 false ) 
	#(280 2 #reduceActionForPropertyWriter1: 21513217 false ) 
	#(274 7 #reduceActionForPropertyHeaderVars1: 20617217 false ) 
	#(291 6 #reduceActionForExternalMethodModifier7: 23200775 false ) 
	#(291 6 #reduceActionForExternalMethodModifier8: 23200776 false ) 
	#(291 6 #reduceActionForExternalMethodModifier7: 23200771 false ) 
	#(291 6 #reduceActionForExternalMethodModifier8: 23200772 false ) 
	#(180 5 #reduceActionForResource1: 7146497 false ) 
	#(363 8 #reduceActionForForStatement1: 32663553 false ) 
	#(349 5 #reduceActionForOnDo1: 31420417 false ) 
	#(204 3 #reduceActionForVariableNames2: 11295746 false ) 
	#(241 3 #reduceActionForVariableNames2: 16528386 false ) 
	#(231 5 #reduceActionForOldClassType1: 15368193 false ) 
	#(259 3 #reduceActionForGuid2: 19361794 false ) 
	#(257 5 #reduceActionForInterfaceType1: 19097601 false ) 
	#(260 2 #reduceActionForAttributes2: 19437570 false ) 
	#(261 1 #liftFirstValue: 19529730 false ) 
	#(261 1 #liftFirstValue: 19529729 false ) 
	#(281 3 #reduceActionForPropertyDispid2: 21600258 false ) 
	#(281 3 #reduceActionForPropertyDispid3: 21600259 false ) 
	#(286 2 #reduceActionForPropertyModifiers2: 22429698 false ) 
	#(211 1 #reduceActionForVariableNames1: 12103681 false ) 
	#(213 1 #reduceActionForVariableNames1: 12318721 false ) 
	#(214 1 #liftFirstValue: 12405761 false ) 
	#(228 6 #reduceActionForClassHelperType2: 14832642 false ) 
	#(226 6 #reduceActionForNewClassType1: 14464001 false ) 
	#(257 6 #reduceActionForInterfaceType2: 19097602 false ) 
	#(284 3 #reduceActionForVariableNames2: 22220802 false ) 
	#(291 8 #reduceActionForExternalMethodModifier9: 23200777 false ) 
	#(291 8 #reduceActionForExternalMethodModifier9: 23200773 false ) 
	#(210 6 #reduceActionForVariantRecordPart1: 11954177 false ) 
	#(226 7 #reduceActionForNewClassType2: 14464002 false ) 
	#(211 3 #reduceActionForVariableNames2: 12103682 false ) 
	#(213 3 #reduceActionForVariableNames2: 12318722 false ) 
	#(228 9 #reduceActionForClassHelperType1: 14832641 false ) 
	#(212 5 #reduceActionForVariantType1: 12218369 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '";"' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DELAYED"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"METHOD"' '"MOD"' '"NAME"' '"NAMESPACE"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PARTIAL"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'TypeModifier' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attributes' 'Attribute' 'AttributeExpressionList' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' '"DELAYED" ''delayed''?' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'VariableStatement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ForVariableExpression' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #OrderedCollection #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #DelphiDeprecatedModifierNode #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #OrderedCollection #DelphiAttributeNode #OrderedCollection #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 22 0 6 0 24 0 6 0 28 0 6 0 54 0 6 0 67 0 45 0 68 0 6 0 73 0 49 0 76 0 53 0 88 0 6 0 94 0 57 0 95 0 6 0 109 0 6 0 120 0 6 0 123 0 61 0 124 0 65 0 127 0 6 0 128 0 69 0 154 0 73 0 155 0 77 0 156 0 81 0 157 0 85 0 158 0 89 0 161 0 93 0 162 0 97 0 166 0 101 0 167 0 105 0 169] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 0 217 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 0 217 1 112 0 217 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 197 0 188 1 149 0 192 1 153 0 197 1 197 0 199 1 197 0 200 1 149 0 202 1 149 0 206 1 149 0 207 1 177 0 209 1 149 0 215 1 185 0 216 1 189 0 217 1 193 0 218 1 197 0 251 1 149 0 252 1 149 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 1 221 0 135 1 225 0 144 1 229 0 183 1 233 0 246 1 237 0 247] 
#[1 1 241 0 144 1 245 0 177] 
#[1 1 249 0 144 1 253 1 41 2 1 1 80] 
#[1 2 21 0 28 2 21 0 85 2 21 0 128 0 22 0 144 2 17 1 40 2 21 1 43] 
#[1 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 2 41 0 54 2 45 0 73 2 49 0 94 2 53 0 96 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 2 77 0 175 2 77 0 181 2 77 0 244 2 77 0 245 2 85 0 246 1 237 0 247 2 77 0 249 2 77 0 250 2 77 1 6 2 77 1 7 2 77 1 8 2 77 1 9 2 77 1 10 2 77 1 11 2 77 1 13 2 77 1 14 2 77 1 15 2 77 1 17 2 137 1 18 2 77 1 19 2 145 1 41 2 77 1 49 2 153 1 50 2 77 1 52 2 161 1 53 2 77 1 55 2 169 1 56 2 77 1 57 2 177 1 58 2 77 1 60 2 77 1 61 2 77 1 63 2 193 1 64 2 77 1 65 2 201 1 66 2 77 1 68 2 77 1 69 2 77 1 71 2 217 1 72 2 77 1 77 2 225 1 78] 
#[1 1 221 0 135 2 229 0 247] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 2 241 0 218 2 245 1 100 2 249 1 101 2 253 1 102 3 1 1 103 2 241 1 124 1 213 1 129 1 217 1 140] 
#[1 3 5 0 144 3 9 0 172] 
#[1 3 5 0 144 3 13 0 172] 
#[1 3 5 0 144 3 17 0 172] 
#[1 3 5 0 144 3 21 0 172] 
#[1 3 5 0 144 3 25 0 172] 
#[1 3 5 0 144 3 29 0 170 3 33 0 171 3 37 0 172] 
#[0 0 0 1 141] 
#[0 0 26 1 141] 
#[1 0 6 0 22 0 6 0 24 0 6 0 28 0 6 0 54 0 6 0 67 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 3 41 0 169] 
#[0 0 30 1 141] 
#[1 0 6 0 22 0 6 0 24 0 6 0 28 0 6 0 45 0 6 0 54 0 6 0 67 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 3 45 0 169] 
#[0 0 34 1 141] 
#[1 3 49 0 108 3 53 0 163] 
#[0 0 38 1 141] 
#[1 0 42 0 42 0 42 0 50 0 42 0 58 0 42 0 63 3 57 0 65 3 61 0 168 0 46 1 141] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 3 65 0 160 3 69 1 73 3 73 1 74] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 81 1 115 1 29 1 116 3 81 1 117 3 81 1 118 1 41 1 119 3 81 1 120 1 49 1 121 3 81 1 122 1 57 1 123 3 81 1 124 1 65 1 129 3 81 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 85 1 115 1 29 1 116 3 85 1 117 3 85 1 118 1 41 1 119 3 85 1 120 1 49 1 121 3 85 1 122 1 57 1 123 3 85 1 124 1 65 1 129 3 85 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 89 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 97 1 115 1 29 1 116 3 97 1 117 3 97 1 118 1 41 1 119 3 97 1 120 1 49 1 121 3 97 1 122 1 57 1 123 3 97 1 124 1 65 1 129 3 97 1 130 1 73 1 140] 
#[1 3 101 0 128 3 105 0 144 3 109 1 109 3 109 1 123] 
#[1 3 117 0 2 0 54 0 9 0 54 0 22 0 54 0 24 0 54 0 28 0 54 0 54 0 54 0 67 0 54 0 73 0 54 0 94 0 54 0 109 0 54 0 120 0 54 0 123 0 54 0 128 3 121 0 201] 
#[1 3 125 0 144 3 129 0 146] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 133 1 115 1 29 1 116 3 133 1 117 3 133 1 118 1 41 1 119 3 133 1 120 1 49 1 121 3 133 1 122 1 57 1 123 3 133 1 124 1 65 1 129 3 133 1 130 1 73 1 140] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 15 0 58 0 19 0 58 0 21 0 58 0 31 0 58 0 35 0 58 0 37 0 58 0 38 0 58 0 39 0 58 0 41 0 58 0 42 0 58 0 43 0 58 0 50 0 58 0 51 0 58 0 59 0 58 0 60 0 58 0 61 0 58 0 63 0 58 0 66 0 58 0 74 0 58 0 78 0 58 0 81 0 58 0 82 0 58 0 84 0 58 0 101 0 58 0 102 0 58 0 113 0 58 0 114 0 58 0 117 0 58 0 119 0 58 0 121 0 58 0 126 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 0 58 0 139 0 58 0 140 0 58 0 141 0 58 0 142 0 58 0 143 3 137 0 144 0 58 1 141] 
#[0 3 141 0 135] 
#[0 3 145 0 135] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 149 1 115 1 29 1 116 3 149 1 117 3 149 1 118 1 41 1 119 3 149 1 120 1 49 1 121 3 149 1 122 1 57 1 123 3 149 1 124 1 65 1 129 3 149 1 130 1 73 1 140] 
#[1 3 117 0 2 0 54 0 22 0 54 0 24 0 54 0 28 0 54 0 54 0 54 0 67 0 54 0 73 0 54 0 94 0 54 0 109 0 54 0 120 0 54 0 123 0 54 0 128 3 153 0 201] 
#[1 0 109 0 2 0 113 0 16 0 62 0 41 0 62 0 42 0 62 0 43 0 62 0 50 0 62 0 51 0 129 0 54 0 141 0 62 0 62 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 62 0 82 0 157 0 94 0 62 0 126 0 185 0 135 0 189 0 140 0 193 0 141 0 62 0 142 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 157 1 115 1 29 1 116 3 157 1 117 3 157 1 118 1 41 1 119 3 157 1 120 1 49 1 121 3 157 1 122 1 57 1 123 3 157 1 124 1 65 1 129 3 157 1 130 1 73 1 140 0 62 1 141] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 161 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 43 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 165 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 1 249 0 144 3 169 1 41] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 173 1 115 1 29 1 116 3 173 1 117 3 173 1 118 1 41 1 119 3 173 1 120 1 49 1 121 3 173 1 122 1 57 1 123 3 173 1 124 1 65 1 129 3 173 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 177 1 89 3 181 1 115 1 29 1 116 3 181 1 117 3 181 1 118 1 41 1 119 3 181 1 120 1 49 1 121 3 181 1 122 1 57 1 123 3 181 1 124 1 65 1 129 3 181 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 3 185 0 136 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 189 1 115 1 29 1 116 3 189 1 117 3 189 1 118 1 41 1 119 3 189 1 120 1 49 1 121 3 189 1 122 1 57 1 123 3 189 1 124 3 193 1 125 3 197 1 126 1 65 1 129 3 189 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 201 1 115 1 29 1 116 3 201 1 117 3 201 1 118 1 41 1 119 3 201 1 120 1 49 1 121 3 201 1 122 1 57 1 123 3 201 1 124 1 65 1 129 3 201 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 205 1 115 1 29 1 116 3 205 1 117 3 205 1 118 1 41 1 119 3 205 1 120 1 49 1 121 3 205 1 122 1 57 1 123 3 205 1 124 1 65 1 129 3 205 1 130 1 73 1 140] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 3 209 0 9 0 66 0 10 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 15 0 66 0 19 0 66 0 21 0 66 0 37 0 66 0 41 0 66 0 42 0 66 0 43 0 66 0 50 0 66 0 51 0 66 0 60 0 66 0 63 0 66 0 66 0 66 0 74 0 66 0 82 0 66 0 84 0 66 0 113 0 66 0 114 0 66 0 126 0 66 0 134 0 66 0 135 0 66 0 137 0 66 0 138 0 66 0 140 0 66 0 141 0 66 0 142 0 66 0 143 0 66 1 141] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 3 213 0 9 0 70 0 10 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 15 0 70 0 19 0 70 0 21 0 70 0 37 0 70 0 41 0 70 0 42 0 70 0 43 0 70 0 50 0 70 0 51 0 70 0 60 0 70 0 63 0 70 0 66 0 70 0 74 0 70 0 82 0 70 0 84 0 70 0 113 0 70 0 114 0 70 0 126 0 70 0 134 0 70 0 135 0 70 0 137 0 70 0 138 0 70 0 140 0 70 0 141 0 70 0 142 0 70 0 143 0 70 1 141] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 0 1 141] 
#[0 0 86 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 90 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 94 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 98 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 102 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 106 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 110 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 114 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 118 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 122 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 126 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 130 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 134 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 0 138 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 3 217 0 22] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 50 0 142 0 51 4 69 0 60 0 142 0 63 4 69 0 66 4 69 0 74 0 142 0 82 4 69 0 84 4 69 0 113 4 69 0 114 0 142 0 126 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 0 142 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 0 142 1 141] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 5 0 146 0 6 0 146 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 11 0 12 0 146 0 13 0 146 0 14 0 146 0 15 0 146 0 19 0 146 0 21 0 146 0 31 0 146 0 35 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 50 0 146 0 51 0 146 0 59 0 146 0 60 0 146 0 61 0 146 0 63 0 146 0 66 0 146 0 74 0 146 0 78 0 146 0 81 0 146 0 82 0 146 0 84 0 146 0 101 0 146 0 102 0 146 0 113 0 146 0 114 0 146 0 117 0 146 0 119 0 146 0 121 0 146 0 126 0 146 0 132 0 146 0 133 0 146 0 134 0 146 0 135 0 146 0 136 0 146 0 137 0 146 0 138 0 146 0 139 0 146 0 140 0 146 0 141 0 146 0 142 0 146 0 143 4 77 0 193 4 81 0 194 0 146 1 141] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 4 85 1 73 3 73 1 74] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 4 89 1 73 3 73 1 74] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 15 0 12 0 170 0 13 0 170 0 14 0 170 0 15 0 170 0 19 0 170 0 21 0 170 0 31 0 170 0 35 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 50 0 170 0 51 0 170 0 59 0 170 0 60 0 170 0 61 0 170 0 63 0 170 0 66 0 170 0 74 0 170 0 78 0 170 0 81 0 170 0 82 0 170 0 84 0 170 0 101 0 170 0 102 0 170 0 113 0 170 0 114 0 170 0 117 0 170 0 119 0 170 0 121 0 170 0 126 0 170 0 132 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 137 0 170 0 138 0 170 0 139 0 170 0 140 0 170 0 141 0 170 0 142 0 170 0 143 4 93 0 193 4 81 0 194 0 170 1 141] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 2 233 0 2 0 190 0 3 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 4 97 0 144 4 101 0 145 1 189 0 146 1 213 0 148 1 141 0 152 4 105 0 189 4 109 0 190 1 189 0 217 4 113 0 218 4 117 0 219 4 121 0 220 4 125 0 221 4 129 0 222 4 133 0 223 4 137 0 224 4 113 1 124 1 213 1 129 1 217 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 4 141 0 218 4 141 1 124 1 213 1 129 1 217 1 140] 
#[1 0 194 0 3 0 194 0 5 0 194 0 10 0 194 0 11 0 194 0 15 0 194 0 17 0 194 0 22 0 194 0 24 0 194 0 28 0 194 0 31 0 194 0 33 0 194 0 35 0 194 0 38 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 50 0 194 0 51 0 194 0 54 0 194 0 59 0 194 0 60 0 194 0 61 0 194 0 63 0 194 0 67 0 194 0 73 0 194 0 78 4 145 0 81 0 194 0 82 0 194 0 92 0 194 0 94 0 194 0 101 0 194 0 102 0 194 0 109 0 194 0 117 0 194 0 120 0 194 0 123 0 194 0 126 0 194 0 128 0 194 0 132 0 194 0 133 0 194 0 135 0 194 0 136 0 194 0 137 0 194 0 142 0 194 1 141] 
#[1 3 117 0 2 0 54 0 9 4 149 0 201] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 4 153 0 218 4 153 1 124 1 213 1 129 1 217 1 140] 
#[0 0 198 0 20 0 103] 
#[1 3 117 0 2 0 54 0 81 0 54 0 142 4 157 0 201] 
#[0 4 161 0 56] 
#[1 0 202 0 3 0 202 0 5 0 202 0 6 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 15 0 202 0 17 0 202 0 22 0 202 0 24 0 202 0 28 0 202 0 31 0 202 0 33 0 202 0 35 0 202 0 38 0 202 0 41 0 202 0 42 0 202 0 43 0 202 0 50 0 202 0 51 0 202 0 54 0 202 0 59 0 202 0 60 0 202 0 61 0 202 0 63 0 202 0 67 0 202 0 73 0 202 0 78 0 202 0 81 0 202 0 82 0 202 0 92 0 202 0 94 0 202 0 101 0 202 0 102 0 202 0 109 0 202 0 117 0 202 0 120 4 165 0 121 0 202 0 123 0 202 0 126 0 202 0 128 0 202 0 132 0 202 0 133 0 202 0 135 0 202 0 136 0 202 0 137 0 202 0 142 0 202 1 141] 
#[0 4 169 0 81] 
#[1 4 173 0 144 4 177 0 242] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 4 181 0 218 4 181 1 124 1 213 1 129 1 217 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 4 185 0 218 4 185 1 124 1 213 1 129 1 217 1 140] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 4 193 0 188 4 193 0 192 1 153 0 197 4 193 0 199 4 193 0 200 4 193 0 202 4 193 0 206 4 193 0 207 1 177 0 209 4 193 0 215 1 185 0 216 1 189 0 217 1 193 0 218 4 193 0 251 4 193 0 252 4 193 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 0 206 0 2 0 210 0 3 0 206 0 4 0 210 0 5 0 19 0 6 0 206 0 7 0 206 0 8 0 210 0 10 0 210 0 11 0 19 0 12 0 206 0 13 0 206 0 14 0 210 0 15 0 210 0 17 0 206 0 19 0 206 0 21 0 210 0 22 0 210 0 24 0 210 0 28 0 210 0 31 0 210 0 33 0 210 0 35 0 206 0 37 0 210 0 38 0 210 0 41 0 210 0 42 0 210 0 43 0 210 0 50 0 210 0 51 0 210 0 54 0 210 0 59 0 19 0 60 0 210 0 61 0 210 0 63 0 206 0 66 0 210 0 67 0 210 0 73 0 206 0 74 0 210 0 78 0 210 0 81 0 210 0 82 0 206 0 84 0 210 0 92 0 210 0 94 0 210 0 101 0 210 0 102 0 210 0 109 0 206 0 113 0 206 0 114 0 210 0 117 0 210 0 120 0 210 0 123 0 210 0 126 0 210 0 128 0 210 0 132 0 210 0 133 0 206 0 134 0 210 0 135 0 210 0 136 0 19 0 137 0 206 0 138 0 206 0 140 0 206 0 141 0 210 0 142 0 210 1 141] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[0 0 218 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 0 222 0 17 0 222 0 135 0 0 1 141] 
#[1 0 226 0 3 0 226 0 5 4 197 0 6 0 226 0 10 0 226 0 11 0 150 0 12 0 226 0 15 0 226 0 17 0 226 0 22 0 226 0 24 0 226 0 28 0 226 0 31 0 226 0 33 0 226 0 35 0 226 0 38 0 226 0 41 0 226 0 42 0 226 0 43 0 226 0 50 0 226 0 51 0 226 0 54 0 226 0 59 0 226 0 60 0 226 0 61 0 226 0 63 0 226 0 67 0 226 0 73 0 226 0 78 0 226 0 81 0 226 0 82 0 226 0 92 0 226 0 94 0 226 0 101 0 226 0 102 0 226 0 109 0 226 0 117 0 226 0 120 0 226 0 123 0 226 0 126 0 226 0 128 0 226 0 132 0 226 0 133 0 226 0 135 0 226 0 136 0 226 0 137 0 226 0 142 4 201 0 193 4 81 0 194 0 226 1 141] 
#[0 0 230 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 0 234 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 0 238 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 0 242 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 0 246 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 4 205 0 20 4 209 0 103] 
#[0 0 250 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 4 213 0 7] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[1 4 217 0 2 1 2 0 3 4 225 0 4 1 2 0 5 4 221 0 6 1 2 0 7 4 225 0 8 1 2 0 10 1 2 0 11 4 225 0 12 4 225 0 13 4 225 0 14 1 2 0 15 1 2 0 17 4 225 0 19 4 225 0 21 1 2 0 22 1 2 0 24 1 2 0 28 1 2 0 31 1 2 0 33 1 2 0 35 4 225 0 37 1 2 0 38 1 2 0 41 1 2 0 42 1 2 0 43 1 2 0 50 1 2 0 51 1 2 0 54 1 2 0 59 0 23 0 60 1 2 0 61 1 2 0 63 4 225 0 66 1 2 0 67 1 2 0 73 4 225 0 74 1 2 0 78 1 2 0 81 1 2 0 82 4 225 0 84 1 2 0 92 1 2 0 94 1 2 0 101 1 2 0 102 1 2 0 109 4 225 0 113 4 225 0 114 1 2 0 117 1 2 0 120 1 2 0 123 1 2 0 126 1 2 0 128 1 2 0 132 1 2 0 133 4 225 0 134 1 2 0 135 1 2 0 136 0 27 0 137 4 225 0 138 4 225 0 140 4 225 0 141 1 2 0 142 4 225 1 134 1 2 1 141] 
#[1 4 229 0 17 4 233 0 135] 
#[0 1 6 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 1 10 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[0 1 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 4 237 0 218 4 241 0 248 4 237 1 124 1 213 1 129 1 217 1 140] 
#[1 4 245 0 12 1 26 0 15 4 249 0 184] 
#[0 0 0 1 141] 
#[1 1 221 0 135 4 253 0 144 5 1 0 247] 
#[0 1 30 0 27 0 29 0 34 0 54 0 73 0 94 0 135 0 144] 
#[1 5 5 0 9 1 34 0 15 5 9 1 16] 
#[0 0 0 1 141] 
#[0 1 38 0 3 0 5 0 9 0 10 0 136 0 142 1 141] 
#[1 5 13 0 5 5 17 0 9] 
#[0 0 0 1 141] 
#[0 1 42 0 144] 
#[0 1 46 0 144] 
#[0 1 50 0 144] 
#[0 0 0 1 141] 
#[1 1 249 0 144 5 21 1 41] 
#[1 5 25 0 29 5 29 0 34 5 33 0 54 2 45 0 73 5 37 0 83 5 41 0 94 2 53 0 96 2 57 0 120 2 65 0 128 5 45 1 18 5 49 1 56 5 53 1 58 5 57 1 64 5 61 1 66 5 65 1 78] 
#[1 1 241 0 144 5 69 0 176 5 73 0 177] 
#[1 3 117 0 2 0 54 0 142 4 173 0 144 5 77 0 201 5 81 0 242] 
#[1 4 173 0 144 5 85 0 242] 
#[1 4 173 0 144 5 89 0 242] 
#[1 4 173 0 144 5 93 0 242] 
#[1 4 173 0 144 5 97 0 242] 
#[0 5 101 0 144] 
#[1 1 249 0 144 1 253 1 41 5 105 1 79 5 109 1 80] 
#[1 1 221 0 135 1 225 0 144 5 113 0 182 5 117 0 183 1 233 0 246 1 237 0 247] 
#[1 1 249 0 144 1 253 1 41 5 121 1 79 5 109 1 80] 
#[0 1 54 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 58 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 0 0 1 141] 
#[0 1 62 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 5 125 0 27 2 33 0 29 2 37 0 34 5 33 0 54 2 45 0 73 5 41 0 94 1 221 0 135 5 1 0 247 5 129 1 8 5 133 1 9 5 137 1 10 5 141 1 11 5 145 1 13 5 149 1 14 5 153 1 15 5 129 1 49 2 153 1 50 5 133 1 52 2 161 1 53 5 137 1 55 2 169 1 56 5 137 1 57 2 177 1 58 5 141 1 60 5 141 1 61 5 145 1 63 2 193 1 64 5 145 1 65 2 201 1 66 5 149 1 68 5 149 1 69 5 153 1 71 2 217 1 72] 
#[0 1 66 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 70 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 74 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 78 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 82 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 86 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 90 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 94 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 98 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 102 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 106 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 110 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 114 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 118 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 5 13 0 5 5 157 0 9] 
#[0 1 122 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 1 126 0 3 1 126 0 25 1 126 0 27 1 126 0 28 1 126 0 29 1 126 0 34 1 126 0 42 5 161 0 46 5 165 0 53 1 126 0 54 1 126 0 73 1 126 0 93 1 126 0 94 1 126 0 96 1 126 0 97 1 126 0 98 1 126 0 99 1 126 0 118 1 126 0 120 1 126 0 123 1 126 0 128 1 126 0 135 1 126 0 144 5 169 1 35 1 126 1 141] 
#[0 1 130 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 1 134 0 3 1 134 0 25 1 134 0 27 1 134 0 28 1 134 0 29 1 134 0 34 1 134 0 42 5 161 0 46 5 165 0 53 1 134 0 54 1 134 0 73 1 134 0 93 1 134 0 94 1 134 0 96 1 134 0 97 1 134 0 98 1 134 0 99 1 134 0 118 1 134 0 120 1 134 0 123 1 134 0 128 1 134 0 135 1 134 0 144 5 173 1 35 1 134 1 141] 
#[0 1 138 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 142 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 146 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 1 150 0 3 1 150 0 22 1 150 0 24 1 150 0 25 1 150 0 27 1 150 0 28 1 150 0 29 1 150 0 34 1 150 0 42 5 161 0 46 1 150 0 50 5 165 0 53 1 150 0 54 1 150 0 58 1 150 0 63 1 150 0 67 1 150 0 73 1 150 0 93 1 150 0 94 1 150 0 96 1 150 0 97 1 150 0 98 1 150 0 99 1 150 0 109 1 150 0 118 1 150 0 120 1 150 0 123 1 150 0 128 1 150 0 135 1 150 0 144 5 177 1 35 1 150 1 141] 
#[0 1 154 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 158 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 162 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 166 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 170 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 1 174 0 3 1 174 0 22 1 174 0 24 1 174 0 25 1 174 0 27 1 174 0 28 1 174 0 29 1 174 0 34 1 174 0 42 5 161 0 46 1 174 0 50 5 165 0 53 1 174 0 54 1 174 0 58 1 174 0 63 1 174 0 67 1 174 0 73 1 174 0 93 1 174 0 94 1 174 0 96 1 174 0 97 1 174 0 98 1 174 0 99 1 174 0 109 1 174 0 118 1 174 0 120 1 174 0 123 1 174 0 128 1 174 0 135 1 174 0 144 5 181 1 35 1 174 1 141] 
#[0 1 178 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 182 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 186 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 1 190 0 3 1 190 0 25 1 190 0 27 1 190 0 28 1 190 0 29 1 190 0 34 1 190 0 42 5 161 0 46 5 165 0 53 1 190 0 54 1 190 0 73 1 190 0 93 1 190 0 94 1 190 0 96 1 190 0 97 1 190 0 98 1 190 0 99 1 190 0 118 1 190 0 120 1 190 0 123 1 190 0 128 1 190 0 135 1 190 0 144 5 185 1 35 1 190 1 141] 
#[0 1 194 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 1 198 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 0 0 1 141] 
#[1 2 233 0 2 0 190 0 3 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 4 101 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 4 113 0 218 4 117 0 219 4 121 0 220 4 125 0 221 4 129 0 222 4 133 0 223 4 137 0 224 4 113 1 124 1 213 1 129 1 217 1 140] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[1 4 217 0 2 4 225 0 4 1 202 0 5 4 221 0 6 5 189 0 7 4 225 0 8 1 202 0 9 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[0 0 0 1 141] 
#[0 5 193 0 9] 
#[0 5 197 0 5] 
#[1 1 206 0 5 1 210 0 9] 
#[0 1 214 0 5 0 6 0 33 0 60 0 92 0 142] 
#[1 5 201 0 6 1 218 0 33 5 209 0 92 1 218 0 142 5 209 0 198] 
#[1 5 201 0 6 1 218 0 33 5 213 0 92 1 218 0 142 5 213 0 198] 
#[1 5 201 0 6 5 217 0 142] 
#[1 5 201 0 6 1 218 0 33 5 221 0 92 1 218 0 142 5 221 0 198] 
#[1 5 201 0 6 1 218 0 33 5 225 0 92 1 218 0 142 5 225 0 198] 
#[1 5 229 0 5 5 233 0 142] 
#[0 1 222 0 5 0 142] 
#[1 1 226 0 5 5 201 0 6 5 237 0 60 1 226 0 142] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 241 0 160 3 69 1 73 3 73 1 74] 
#[1 1 230 0 22 1 230 0 24 1 230 0 28 1 230 0 45 1 230 0 54 1 230 0 67 1 230 0 73 1 230 0 94 1 230 0 109 1 230 0 120 1 230 0 123 1 230 0 128 5 245 0 159] 
#[1 3 5 0 144 5 249 0 164 5 253 0 172] 
#[1 6 1 0 30 6 5 0 165] 
#[1 0 6 0 28 0 6 0 42 0 6 0 50 0 6 0 54 0 6 0 58 0 6 0 63 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 6 9 0 169] 
#[1 1 234 0 42 1 234 0 50 6 13 0 58 1 234 0 63 6 17 1 44] 
#[0 6 21 0 6] 
#[0 1 238 0 6] 
#[1 0 10 0 22 0 117 0 24 2 29 0 28 5 33 0 54 6 25 0 67 2 45 0 73 5 41 0 94 6 29 0 109 2 57 0 120 2 61 0 123 2 65 0 128 6 69 0 175 6 69 0 178 6 69 0 181 6 69 1 54 6 49 1 55 2 169 1 56 6 53 1 57 2 177 1 58 6 69 1 62 6 61 1 63 2 193 1 64 6 65 1 65 2 201 1 66 6 69 1 75 6 69 1 76 6 69 1 77 2 225 1 78 6 81 1 112 6 81 1 113 1 21 1 114] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 3 221 0 2 6 85 0 3 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 3 221 0 2 1 242 0 3 1 242 0 4 1 242 0 5 3 229 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 10 0 31 0 12 0 35 0 13 0 39 0 14 0 43 0 15 1 242 0 19 1 242 0 21 1 242 0 31 1 242 0 35 1 242 0 37 1 242 0 38 1 242 0 39 1 242 0 41 1 242 0 42 1 242 0 43 1 242 0 50 1 242 0 51 1 242 0 59 0 47 0 60 1 242 0 61 1 242 0 63 1 242 0 66 1 242 0 74 1 242 0 78 1 242 0 81 1 242 0 82 1 242 0 84 1 242 0 101 1 242 0 102 1 242 0 113 1 242 0 114 1 242 0 117 1 242 0 119 1 242 0 121 1 242 0 126 1 242 0 132 1 242 0 133 1 242 0 134 4 41 0 135 1 242 0 136 0 51 0 137 0 55 0 138 1 242 0 139 1 242 0 140 1 242 0 141 1 242 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 1 242 1 141] 
#[1 6 89 0 42 6 93 0 142] 
#[0 1 246 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 6 97 0 81 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[0 6 101 0 144] 
#[1 6 105 0 9 0 66 0 10 0 66 0 60] 
#[1 6 109 0 10 6 113 0 60] 
#[0 1 250 0 10 0 60] 
#[1 1 254 0 3 2 21 0 28 2 21 0 85 2 21 0 128 0 22 0 144 6 117 1 38 6 121 1 39 6 125 1 40 2 21 1 43] 
#[1 5 5 0 9 1 34 0 22 1 34 0 24 1 34 0 28 1 34 0 54 1 34 0 67 1 34 0 73 1 34 0 94 1 34 0 109 1 34 0 120 1 34 0 123 1 34 0 128 6 129 1 16] 
#[0 2 2 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 2 6 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 6 133 0 119 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 6 137 0 2 2 10 0 3 2 10 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 8 2 10 0 9 2 10 0 10 2 10 0 12 2 10 0 13 2 10 0 14 2 10 0 15 2 10 0 19 2 10 0 21 2 10 0 31 2 10 0 35 2 10 0 37 2 10 0 38 2 10 0 39 2 10 0 41 2 10 0 42 2 10 0 43 2 10 0 50 2 10 0 51 2 10 0 59 2 10 0 60 2 10 0 61 2 10 0 63 2 10 0 66 2 10 0 74 2 10 0 78 2 10 0 81 2 10 0 82 2 10 0 84 2 10 0 101 2 10 0 102 2 10 0 113 2 10 0 114 2 10 0 117 2 10 0 119 2 10 0 121 2 10 0 126 2 10 0 132 2 10 0 133 2 10 0 134 2 10 0 135 2 10 0 136 2 10 0 137 2 10 0 138 2 10 0 139 2 10 0 140 2 10 0 141 2 10 0 142 2 10 0 143 2 10 1 141] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 141 1 115 1 29 1 116 6 141 1 117 6 141 1 118 1 41 1 119 6 141 1 120 1 49 1 121 6 141 1 122 1 57 1 123 6 141 1 124 1 65 1 129 6 141 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 145 1 115 1 29 1 116 6 145 1 117 6 145 1 118 1 41 1 119 6 145 1 120 1 49 1 121 6 145 1 122 1 57 1 123 6 145 1 124 1 65 1 129 6 145 1 130 1 73 1 140] 
#[1 3 221 0 2 2 14 0 3 4 69 0 4 2 14 0 5 3 229 0 6 2 14 0 7 4 69 0 8 2 14 0 9 3 237 0 10 0 59 0 12 0 63 0 13 0 67 0 14 0 71 0 15 4 69 0 19 4 69 0 21 2 14 0 31 2 14 0 35 4 69 0 37 2 14 0 38 2 14 0 39 2 14 0 41 2 14 0 42 2 14 0 43 2 14 0 50 2 14 0 51 2 14 0 59 0 75 0 60 2 14 0 61 2 14 0 63 4 69 0 66 4 69 0 74 2 14 0 78 2 14 0 81 2 14 0 82 4 69 0 84 2 14 0 101 2 14 0 102 4 69 0 113 4 69 0 114 2 14 0 117 2 14 0 119 2 14 0 121 2 14 0 126 2 14 0 132 2 14 0 133 4 69 0 134 4 41 0 135 2 14 0 136 0 79 0 137 0 83 0 138 2 14 0 139 4 69 0 140 4 69 0 141 2 14 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 2 14 1 141] 
#[0 2 18 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 2 22 0 41 2 22 0 42 2 22 0 43 2 22 0 50 2 22 0 51 4 69 0 60 2 22 0 63 4 69 0 66 4 69 0 74 2 22 0 82 4 69 0 84 4 69 0 113 4 69 0 114 2 22 0 126 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 6 149 0 139 4 69 0 140 4 69 0 141 2 22 0 142 4 61 0 143 6 153 1 106 4 65 1 127 4 69 1 133 4 69 1 134 2 22 1 141] 
#[1 6 157 0 126 6 93 0 142] 
#[1 2 26 0 42 6 161 0 43 2 26 0 51 6 93 0 142 6 165 1 91] 
#[1 5 13 0 5 6 169 0 9 6 173 0 10] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 6 177 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 6 181 0 5 6 185 0 38] 
#[1 3 221 0 2 4 69 0 4 2 30 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 2 30 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[0 2 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 3 221 0 2 4 69 0 4 2 38 0 5 3 229 0 6 6 189 0 7 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 2 38 0 136 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 6 193 0 5 6 197 0 136] 
#[0 2 42 0 5 0 136] 
#[1 3 221 0 2 2 46 0 3 4 69 0 4 2 46 0 5 3 229 0 6 2 46 0 7 4 69 0 8 2 46 0 9 2 46 0 10 0 87 0 12 0 91 0 13 0 95 0 14 0 99 0 15 2 46 0 19 2 46 0 21 2 46 0 31 2 46 0 35 4 69 0 37 2 46 0 38 2 46 0 39 2 46 0 41 2 46 0 42 2 46 0 43 2 46 0 50 2 46 0 51 2 46 0 59 0 103 0 60 2 46 0 61 2 46 0 63 2 46 0 66 4 69 0 74 2 46 0 78 2 46 0 81 2 46 0 82 2 46 0 84 2 46 0 101 2 46 0 102 4 69 0 113 4 69 0 114 2 46 0 117 2 46 0 119 2 46 0 121 2 46 0 126 2 46 0 132 2 46 0 133 2 46 0 134 4 41 0 135 2 46 0 136 0 107 0 137 0 111 0 138 2 46 0 139 2 46 0 140 2 46 0 141 2 46 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 2 46 1 141] 
#[1 3 221 0 2 2 50 0 3 4 69 0 4 2 50 0 5 3 229 0 6 2 50 0 7 4 69 0 8 2 50 0 9 2 50 0 10 0 115 0 12 0 119 0 13 0 123 0 14 0 127 0 15 2 50 0 19 2 50 0 21 2 50 0 31 2 50 0 35 4 69 0 37 2 50 0 38 2 50 0 39 2 50 0 41 2 50 0 42 2 50 0 43 2 50 0 50 2 50 0 51 2 50 0 59 0 131 0 60 2 50 0 61 2 50 0 63 2 50 0 66 4 69 0 74 2 50 0 78 2 50 0 81 2 50 0 82 2 50 0 84 2 50 0 101 2 50 0 102 4 69 0 113 4 69 0 114 2 50 0 117 2 50 0 119 2 50 0 121 2 50 0 126 2 50 0 132 2 50 0 133 2 50 0 134 4 41 0 135 2 50 0 136 0 135 0 137 0 139 0 138 2 50 0 139 2 50 0 140 2 50 0 141 2 50 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 2 50 1 141] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 201 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 6 201 1 112 6 201 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 205 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 6 205 1 112 6 205 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[0 6 209 0 42] 
#[1 0 109 0 2 6 213 0 3 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 217 1 115 1 29 1 116 6 217 1 117 6 217 1 118 1 41 1 119 6 217 1 120 1 49 1 121 6 217 1 122 1 57 1 123 6 217 1 124 1 65 1 129 6 217 1 130 6 221 1 131 6 225 1 132 1 73 1 140] 
#[0 2 54 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[1 6 229 0 1 6 233 0 144] 
#[0 2 58 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 237 1 115 1 29 1 116 6 237 1 117 6 237 1 118 1 41 1 119 6 237 1 120 1 49 1 121 6 237 1 122 1 57 1 123 6 237 1 124 1 65 1 129 6 237 1 130 1 73 1 140] 
#[0 2 62 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 66 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 70 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 74 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 146 0 148 0 152 1 140] 
#[0 2 78 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 82 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 86 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 90 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 94 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 98 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 102 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 106 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 110 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 114 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 241 1 115 1 29 1 116 6 241 1 117 6 241 1 118 1 41 1 119 6 241 1 120 1 49 1 121 6 241 1 122 1 57 1 123 6 241 1 124 6 245 1 128 1 65 1 129 6 241 1 130 1 73 1 140] 
#[0 2 118 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 122 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 126 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 130 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 145 0 146 0 148 0 152 1 140] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 249 1 115 1 29 1 116 6 249 1 117 6 249 1 118 1 41 1 119 6 249 1 120 1 49 1 121 6 249 1 122 1 57 1 123 6 249 1 124 1 65 1 129 6 249 1 130 1 73 1 140] 
#[0 2 142 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 146 0 148 0 152 1 140] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 6 253 0 12] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 2 162 0 3 2 162 0 5 7 1 0 15] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 8 7 5 0 9 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 19 0 206 0 21 0 206 0 37 0 206 0 60 0 206 0 66 0 206 0 74 0 206 0 84 0 206 0 113 0 206 0 114 0 206 0 134 0 206 0 137 0 206 0 138 0 206 0 140 0 206 0 141] 
#[1 7 9 0 3 7 13 0 5] 
#[0 2 166 0 3 0 5] 
#[1 4 217 0 2 2 170 0 3 4 225 0 4 2 170 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 7 17 0 15 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[0 7 21 0 3] 
#[1 2 174 0 3 7 25 0 5] 
#[0 2 178 0 3 0 5] 
#[1 2 182 0 3 7 33 0 142 7 33 1 97] 
#[1 2 186 0 3 0 143 0 142] 
#[0 2 190 0 3 0 142] 
#[1 4 217 0 2 2 194 0 3 2 194 0 4 2 194 0 5 4 221 0 6 2 194 0 7 2 194 0 8 2 194 0 9 2 194 0 10 2 194 0 11 0 147 0 12 0 151 0 13 0 155 0 14 2 194 0 15 2 194 0 17 2 194 0 19 2 194 0 21 2 194 0 22 2 194 0 24 2 194 0 28 2 194 0 31 2 194 0 33 2 194 0 35 2 194 0 37 2 194 0 38 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 50 2 194 0 51 2 194 0 54 2 194 0 59 0 159 0 60 2 194 0 61 2 194 0 63 2 194 0 66 2 194 0 67 2 194 0 73 2 194 0 74 2 194 0 78 2 194 0 81 2 194 0 82 2 194 0 84 2 194 0 92 2 194 0 94 2 194 0 101 2 194 0 102 2 194 0 109 2 194 0 113 2 194 0 114 2 194 0 117 2 194 0 120 2 194 0 123 2 194 0 126 2 194 0 128 2 194 0 132 2 194 0 133 2 194 0 134 2 194 0 135 2 194 0 136 0 163 0 137 0 167 0 138 2 194 0 140 2 194 0 141 2 194 0 142 4 225 1 134 2 194 1 141] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 7 41 0 188 7 41 0 192 1 153 0 197 7 41 0 199 7 41 0 200 7 41 0 202 7 41 0 206 7 41 0 207 1 177 0 209 7 41 0 215 1 185 0 216 1 189 0 217 1 193 0 218 7 41 0 251 7 41 0 252 7 41 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 7 45 0 9] 
#[1 4 217 0 2 2 198 0 3 4 225 0 4 2 198 0 5 4 221 0 6 2 198 0 7 4 225 0 8 2 198 0 9 2 198 0 10 2 198 0 11 0 171 0 12 0 175 0 13 0 179 0 14 2 198 0 15 2 198 0 17 4 225 0 19 4 225 0 21 2 198 0 22 2 198 0 24 2 198 0 28 2 198 0 31 2 198 0 33 2 198 0 35 4 225 0 37 2 198 0 38 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 50 2 198 0 51 2 198 0 54 2 198 0 59 0 183 0 60 2 198 0 61 2 198 0 63 4 225 0 66 2 198 0 67 2 198 0 73 4 225 0 74 2 198 0 78 2 198 0 81 2 198 0 82 4 225 0 84 2 198 0 92 2 198 0 94 2 198 0 101 2 198 0 102 2 198 0 109 4 225 0 113 4 225 0 114 2 198 0 117 2 198 0 120 2 198 0 123 2 198 0 126 2 198 0 128 2 198 0 132 2 198 0 133 4 225 0 134 2 198 0 135 2 198 0 136 0 187 0 137 0 191 0 138 4 225 0 140 4 225 0 141 2 198 0 142 4 225 1 134 2 198 1 141] 
#[1 7 49 0 81 2 202 0 142 7 53 1 12] 
#[0 7 57 0 52] 
#[1 7 61 0 54 7 65 0 94] 
#[1 7 69 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 7 73 0 215 1 185 0 216 1 189 0 217 7 77 0 218 7 77 1 124 1 213 1 129 1 217 1 140] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 1 26 0 11 4 245 0 12 1 26 0 15 1 26 0 17 1 26 0 22 1 26 0 24 1 26 0 25 1 26 0 27 1 26 0 28 1 26 0 29 1 26 0 31 1 26 0 33 1 26 0 34 1 26 0 35 1 26 0 38 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 50 1 26 0 51 1 26 0 54 1 26 0 59 1 26 0 60 1 26 0 61 1 26 0 63 1 26 0 67 1 26 0 73 1 26 0 78 1 26 0 81 1 26 0 82 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 96 1 26 0 97 1 26 0 98 1 26 0 99 1 26 0 101 1 26 0 102 1 26 0 109 1 26 0 117 1 26 0 118 1 26 0 120 1 26 0 123 1 26 0 126 1 26 0 128 1 26 0 132 1 26 0 133 1 26 0 135 1 26 0 136 1 26 0 137 1 26 0 142 1 26 0 144 7 81 0 184 1 26 1 141] 
#[1 7 85 0 2 2 206 0 3 2 206 0 5 7 89 0 6 2 206 0 10 2 206 0 11 2 206 0 15 2 206 0 17 2 206 0 22 2 206 0 24 2 206 0 28 2 206 0 31 2 206 0 33 2 206 0 35 2 206 0 38 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 50 2 206 0 51 2 206 0 54 2 206 0 59 2 206 0 60 2 206 0 61 2 206 0 63 2 206 0 67 2 206 0 73 2 206 0 78 2 206 0 81 2 206 0 82 2 206 0 92 2 206 0 94 2 206 0 101 2 206 0 102 2 206 0 109 2 206 0 117 2 206 0 120 2 206 0 123 2 206 0 126 2 206 0 128 2 206 0 132 2 206 0 133 2 206 0 135 2 206 0 136 2 206 0 137 2 206 0 142 2 206 1 141] 
#[1 4 217 0 2 2 210 0 3 4 225 0 4 2 210 0 5 4 221 0 6 2 210 0 7 4 225 0 8 2 210 0 9 2 210 0 10 2 210 0 11 0 195 0 12 0 199 0 13 0 203 0 14 2 210 0 15 2 210 0 17 2 210 0 19 2 210 0 21 2 210 0 22 2 210 0 24 2 210 0 28 2 210 0 31 2 210 0 33 2 210 0 35 4 225 0 37 2 210 0 38 2 210 0 41 2 210 0 42 2 210 0 43 2 210 0 50 2 210 0 51 2 210 0 54 2 210 0 59 0 207 0 60 2 210 0 61 2 210 0 63 2 210 0 66 2 210 0 67 2 210 0 73 4 225 0 74 2 210 0 78 2 210 0 81 2 210 0 82 2 210 0 84 2 210 0 92 2 210 0 94 2 210 0 101 2 210 0 102 2 210 0 109 4 225 0 113 4 225 0 114 2 210 0 117 2 210 0 120 2 210 0 123 2 210 0 126 2 210 0 128 2 210 0 132 2 210 0 133 2 210 0 134 2 210 0 135 2 210 0 136 0 211 0 137 0 215 0 138 2 210 0 140 2 210 0 141 2 210 0 142 4 225 1 134 2 210 1 141] 
#[1 4 217 0 2 2 214 0 3 4 225 0 4 2 214 0 5 4 221 0 6 2 214 0 7 4 225 0 8 2 214 0 9 2 214 0 10 2 214 0 11 0 219 0 12 0 223 0 13 0 227 0 14 2 214 0 15 2 214 0 17 2 214 0 19 2 214 0 21 2 214 0 22 2 214 0 24 2 214 0 28 2 214 0 31 2 214 0 33 2 214 0 35 4 225 0 37 2 214 0 38 2 214 0 41 2 214 0 42 2 214 0 43 2 214 0 50 2 214 0 51 2 214 0 54 2 214 0 59 0 231 0 60 2 214 0 61 2 214 0 63 2 214 0 66 2 214 0 67 2 214 0 73 4 225 0 74 2 214 0 78 2 214 0 81 2 214 0 82 2 214 0 84 2 214 0 92 2 214 0 94 2 214 0 101 2 214 0 102 2 214 0 109 4 225 0 113 4 225 0 114 2 214 0 117 2 214 0 120 2 214 0 123 2 214 0 126 2 214 0 128 2 214 0 132 2 214 0 133 2 214 0 134 2 214 0 135 2 214 0 136 0 235 0 137 0 239 0 138 2 214 0 140 2 214 0 141 2 214 0 142 4 225 1 134 2 214 1 141] 
#[0 0 222 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 2 218 0 3 2 218 0 5 2 218 0 10 2 218 0 11 2 218 0 15 2 218 0 17 2 218 0 22 2 218 0 24 2 218 0 28 2 218 0 31 2 218 0 33 2 218 0 35 2 218 0 38 2 218 0 41 2 218 0 42 2 218 0 43 2 218 0 50 2 218 0 51 2 218 0 54 2 218 0 59 2 218 0 60 2 218 0 61 2 218 0 63 2 218 0 67 2 218 0 73 2 218 0 78 2 218 0 81 2 218 0 82 2 218 0 92 2 218 0 94 2 218 0 101 2 218 0 102 2 218 0 109 2 218 0 117 2 218 0 120 2 218 0 123 2 218 0 126 2 218 0 128 2 218 0 132 2 218 0 133 4 233 0 135 2 218 0 136 2 218 0 137 2 218 0 142 2 218 1 141] 
#[0 7 93 0 145] 
#[0 2 222 0 3 0 5 0 6 0 10 0 11 0 12 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 2 226 0 81 7 97 0 135 7 101 0 254] 
#[1 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 7 105 0 208 7 109 0 233 7 113 0 243] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 7 117 0 216 1 189 0 217 1 193 0 218 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 7 121 0 218 7 125 0 225 7 121 1 124 1 213 1 129 1 217 1 140] 
#[0 7 129 0 145] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 7 133 0 218 7 133 1 124 1 213 1 129 1 217 1 140] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 7 137 0 188 7 137 0 192 1 153 0 197 7 137 0 199 7 137 0 200 7 137 0 202 7 137 0 206 7 137 0 207 1 177 0 209 7 137 0 215 1 185 0 216 1 189 0 217 1 193 0 218 7 137 0 251 7 137 0 252 7 137 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 7 141 0 218 7 141 1 124 1 213 1 129 1 217 1 140] 
#[1 4 217 0 2 4 225 0 4 2 234 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 2 234 0 136 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 7 145 0 5 7 149 0 136] 
#[1 7 153 0 144 7 157 0 185 7 161 0 186] 
#[0 7 165 0 15] 
#[1 4 245 0 12 1 26 0 15 7 169 0 184] 
#[0 2 238 0 27 0 29 0 34 0 54 0 73 0 94 0 135 0 144] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 7 173 0 188 7 173 0 192 1 153 0 197 7 173 0 199 7 173 0 200 7 173 0 202 7 173 0 206 7 173 0 207 1 177 0 209 7 173 0 215 1 185 0 216 1 189 0 217 1 193 0 218 7 173 0 251 7 173 0 252 7 173 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 7 177 0 15] 
#[0 7 181 0 144] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 7 185 0 188 7 185 0 192 1 153 0 197 7 185 0 199 7 185 0 200 7 185 0 202 7 185 0 206 7 185 0 207 1 177 0 209 7 185 0 215 1 185 0 216 1 189 0 217 1 193 0 218 7 185 0 251 7 185 0 252 7 185 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 2 242 0 3 5 13 0 5 7 189 0 9 2 242 0 136 2 242 0 142 2 242 1 141] 
#[1 3 117 0 2 0 54 0 142 4 173 0 144 7 193 0 201 7 197 0 242] 
#[1 4 173 0 144 7 201 0 242] 
#[1 4 173 0 144 7 205 0 242] 
#[1 4 173 0 144 7 209 0 242] 
#[1 4 173 0 144 7 213 0 242] 
#[0 2 246 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 2 250 0 3 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 2 254 0 3 2 254 0 22 2 254 0 24 2 254 0 25 2 254 0 27 2 254 0 28 2 254 0 29 2 254 0 34 2 254 0 42 5 161 0 46 5 165 0 53 2 254 0 54 2 254 0 67 2 254 0 73 2 254 0 93 2 254 0 94 2 254 0 96 2 254 0 97 2 254 0 98 2 254 0 99 2 254 0 109 2 254 0 118 2 254 0 120 2 254 0 123 2 254 0 128 2 254 0 135 2 254 0 144 5 177 1 35 2 254 1 141] 
#[0 3 2 0 3 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 3 6 0 3 3 6 0 22 3 6 0 24 3 6 0 25 3 6 0 27 3 6 0 28 3 6 0 29 3 6 0 34 3 6 0 42 5 161 0 46 5 165 0 53 3 6 0 54 3 6 0 67 3 6 0 73 3 6 0 93 3 6 0 94 3 6 0 96 3 6 0 97 3 6 0 98 3 6 0 99 3 6 0 109 3 6 0 118 3 6 0 120 3 6 0 123 3 6 0 128 3 6 0 135 3 6 0 144 5 181 1 35 3 6 1 141] 
#[0 3 10 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 3 14 0 3 3 14 0 22 3 14 0 24 3 14 0 25 3 14 0 27 3 14 0 28 3 14 0 29 3 14 0 34 3 14 0 42 3 14 0 45 3 14 0 50 3 14 0 54 3 14 0 58 3 14 0 63 3 14 0 67 3 14 0 73 3 14 0 93 3 14 0 94 3 14 0 96 3 14 0 97 3 14 0 98 3 14 0 99 3 14 0 109 3 14 0 118 3 14 0 120 3 14 0 123 3 14 0 128 3 14 0 135 1 241 0 144 7 217 0 177 3 14 1 141] 
#[0 3 18 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 7 221 0 142] 
#[1 3 117 0 2 7 89 0 6 0 54 0 142 7 225 0 201] 
#[1 3 117 0 2 7 89 0 6 0 54 0 142 7 229 0 201] 
#[1 3 117 0 2 7 89 0 6 0 54 0 9 7 233 0 15 0 54 0 142 7 237 0 201] 
#[1 3 117 0 2 7 89 0 6 0 54 0 9 0 54 0 142 7 241 0 201] 
#[1 3 117 0 2 7 89 0 6 7 245 0 15 0 54 0 142 7 249 0 201] 
#[1 3 22 0 9 3 22 0 31 3 22 0 35 3 22 0 59 3 22 0 61 3 22 0 78 3 22 0 101 3 22 0 102 3 22 0 117 3 22 0 132 3 22 0 133 7 253 0 135 3 22 0 142 8 1 1 21] 
#[1 3 26 0 3 3 26 0 22 3 26 0 24 3 26 0 25 3 26 0 27 3 26 0 28 3 26 0 29 3 26 0 34 3 26 0 42 3 26 0 45 3 26 0 50 3 26 0 54 3 26 0 58 3 26 0 63 3 26 0 67 3 26 0 73 3 26 0 93 3 26 0 94 3 26 0 96 3 26 0 97 3 26 0 98 3 26 0 99 3 26 0 109 3 26 0 118 3 26 0 120 3 26 0 123 3 26 0 128 3 26 0 135 1 249 0 144 1 253 1 41 8 5 1 80 3 26 1 141] 
#[0 3 30 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 3 34 0 3 3 34 0 22 3 34 0 24 3 34 0 25 3 34 0 27 3 34 0 28 3 34 0 29 3 34 0 34 3 34 0 42 3 34 0 45 3 34 0 50 3 34 0 54 3 34 0 58 3 34 0 63 3 34 0 67 3 34 0 73 3 34 0 93 3 34 0 94 3 34 0 96 3 34 0 97 3 34 0 98 3 34 0 99 3 34 0 109 3 34 0 118 3 34 0 120 3 34 0 123 3 34 0 128 1 221 0 135 1 225 0 144 8 9 0 183 1 233 0 246 1 237 0 247 3 34 1 141] 
#[0 3 38 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 3 42 0 3 3 42 0 22 3 42 0 24 3 42 0 25 3 42 0 27 3 42 0 28 3 42 0 29 3 42 0 34 3 42 0 42 3 42 0 45 3 42 0 50 3 42 0 54 3 42 0 58 3 42 0 63 3 42 0 67 3 42 0 73 3 42 0 93 3 42 0 94 3 42 0 96 3 42 0 97 3 42 0 98 3 42 0 99 3 42 0 109 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 128 3 42 0 135 1 249 0 144 1 253 1 41 8 5 1 80 3 42 1 141] 
#[1 5 25 0 29 5 29 0 34 5 33 0 54 2 45 0 73 5 37 0 83 5 41 0 94 5 49 1 56 5 53 1 58 5 57 1 64 5 61 1 66] 
#[0 3 46 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 3 50 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 3 54 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 3 58 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 3 62 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 3 66 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 3 70 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 8 13 0 188 8 13 0 192 1 153 0 197 8 13 0 199 8 13 0 200 8 13 0 202 8 13 0 206 8 13 0 207 1 177 0 209 8 13 0 215 1 185 0 216 1 189 0 217 1 193 0 218 8 13 0 251 8 13 0 252 8 13 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 8 29 0 32 3 74 0 142 8 21 0 144 8 25 0 148 8 29 1 36] 
#[0 8 33 0 142] 
#[1 3 78 0 3 3 78 0 18 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 29 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 40 3 78 0 42 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 50 3 78 0 53 3 78 0 54 3 78 0 63 3 78 0 64 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 77 3 78 0 86 3 78 0 87 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 3 78 0 99 3 78 0 105 3 78 0 106 3 78 0 109 3 78 0 110 3 78 0 115 3 78 0 116 3 78 0 118 3 78 0 120 3 78 0 123 3 78 0 125 3 78 0 128 3 78 0 129 3 78 0 135 3 78 0 144 8 37 1 31 3 78 1 141] 
#[1 3 78 0 3 3 78 0 18 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 29 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 40 3 78 0 42 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 50 3 78 0 53 3 78 0 54 3 78 0 63 3 78 0 64 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 77 3 78 0 86 3 78 0 87 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 3 78 0 99 3 78 0 105 3 78 0 106 3 78 0 109 3 78 0 110 3 78 0 115 3 78 0 116 3 78 0 118 3 78 0 120 3 78 0 123 3 78 0 125 3 78 0 128 3 78 0 129 3 78 0 135 3 78 0 144 8 41 1 31 3 78 1 141] 
#[1 3 78 0 3 3 78 0 18 3 78 0 22 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 29 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 40 3 78 0 42 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 50 3 78 0 53 3 78 0 54 3 78 0 58 3 78 0 63 3 78 0 64 3 78 0 67 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 77 3 78 0 86 3 78 0 87 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 3 78 0 99 3 78 0 105 3 78 0 106 3 78 0 109 3 78 0 110 3 78 0 115 3 78 0 116 3 78 0 118 3 78 0 120 3 78 0 123 3 78 0 125 3 78 0 128 3 78 0 129 3 78 0 135 3 78 0 144 8 45 1 31 3 78 1 141] 
#[1 3 78 0 3 3 78 0 18 3 78 0 22 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 29 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 40 3 78 0 42 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 50 3 78 0 53 3 78 0 54 3 78 0 58 3 78 0 63 3 78 0 64 3 78 0 67 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 77 3 78 0 86 3 78 0 87 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 3 78 0 99 3 78 0 105 3 78 0 106 3 78 0 109 3 78 0 110 3 78 0 115 3 78 0 116 3 78 0 118 3 78 0 120 3 78 0 123 3 78 0 125 3 78 0 128 3 78 0 129 3 78 0 135 3 78 0 144 8 49 1 31 3 78 1 141] 
#[1 3 78 0 3 3 78 0 18 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 29 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 40 3 78 0 42 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 50 3 78 0 53 3 78 0 54 3 78 0 63 3 78 0 64 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 77 3 78 0 86 3 78 0 87 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 3 78 0 99 3 78 0 105 3 78 0 106 3 78 0 109 3 78 0 110 3 78 0 115 3 78 0 116 3 78 0 118 3 78 0 120 3 78 0 123 3 78 0 125 3 78 0 128 3 78 0 129 3 78 0 135 3 78 0 144 8 53 1 31 3 78 1 141] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 8 57 0 218 8 57 1 124 1 213 1 129 1 217 1 140] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 8 61 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 8 61 1 112 8 61 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 2 241 0 218 8 65 1 103 2 241 1 124 1 213 1 129 1 217 1 140] 
#[0 8 69 0 144] 
#[0 3 82 0 15 0 33 0 142] 
#[1 8 73 0 33 3 86 0 142 8 77 0 232] 
#[1 8 73 0 33 3 86 0 142 8 81 0 232] 
#[0 3 90 0 108] 
#[1 8 73 0 33 3 86 0 142 8 85 0 232] 
#[1 8 73 0 33 3 86 0 142 8 89 0 232] 
#[1 3 5 0 144 8 93 0 171 3 37 0 172] 
#[0 3 94 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 97 0 148] 
#[0 8 101 0 6] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 8 105 0 45 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 8 109 0 160 3 69 1 73 3 73 1 74 8 113 1 137] 
#[1 8 117 0 5 8 121 0 142] 
#[1 3 98 0 5 5 201 0 6 3 98 0 142] 
#[1 3 5 0 144 8 125 0 170 3 33 0 171 3 37 0 172] 
#[1 8 129 0 42 8 133 1 139] 
#[1 3 102 0 28 3 102 0 42 3 102 0 50 3 102 0 54 3 102 0 58 3 102 0 63 3 102 0 73 3 102 0 94 3 102 0 109 3 102 0 120 3 102 0 123 3 102 0 128 8 137 0 173] 
#[1 0 6 0 24 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 34 0 6 0 42 0 6 0 45 0 6 0 50 0 6 0 54 0 6 0 63 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 8 141 0 169] 
#[1 3 106 0 42 3 106 0 50 8 145 0 63 8 149 1 135] 
#[0 3 110 1 141] 
#[1 1 249 0 144 8 153 1 41] 
#[1 8 157 0 144 8 161 0 179 8 165 0 180] 
#[0 3 114 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 118 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 122 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 126 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 130 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 8 169 1 73 3 73 1 74] 
#[0 3 134 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 138 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 8 173 1 73 3 73 1 74] 
#[0 3 142 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 146 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 150 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 177 0 142] 
#[0 3 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 3 158 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 8 181 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 8 181 1 112 8 181 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 2 241 0 218 8 185 1 98 8 189 1 99 8 193 1 100 2 249 1 101 2 253 1 102 3 1 1 103 2 241 1 124 1 213 1 129 1 217 1 140] 
#[1 8 197 0 9 3 162 0 10 3 162 0 60] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 8 201 0 188 8 201 0 192 1 153 0 197 8 201 0 199 8 201 0 200 8 201 0 202 8 201 0 206 8 201 0 207 1 177 0 209 8 201 0 215 1 185 0 216 1 189 0 217 1 193 0 218 8 201 0 251 8 201 0 252 8 201 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 8 205 1 115 1 29 1 116 8 205 1 117 8 205 1 118 1 41 1 119 8 205 1 120 1 49 1 121 8 205 1 122 1 57 1 123 8 205 1 124 1 65 1 129 8 205 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 8 209 1 115 1 29 1 116 8 209 1 117 8 209 1 118 1 41 1 119 8 209 1 120 1 49 1 121 8 209 1 122 1 57 1 123 8 209 1 124 1 65 1 129 8 209 1 130 1 73 1 140] 
#[0 8 213 0 3] 
#[1 3 166 0 3 3 166 0 136 8 217 0 142] 
#[0 3 170 0 3 0 136 0 142] 
#[0 3 174 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 8 221 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 8 221 1 112 8 221 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[1 0 109 0 2 8 225 0 3 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 217 1 115 1 29 1 116 6 217 1 117 6 217 1 118 1 41 1 119 6 217 1 120 1 49 1 121 6 217 1 122 1 57 1 123 6 217 1 124 1 65 1 129 6 217 1 130 8 229 1 131 6 225 1 132 1 73 1 140] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 8 233 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 8 237 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 4 173 0 144 8 241 0 242] 
#[0 3 178 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 8 245 1 115 1 29 1 116 8 245 1 117 8 245 1 118 1 41 1 119 8 245 1 120 1 49 1 121 8 245 1 122 1 57 1 123 8 245 1 124 1 65 1 129 8 245 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 8 249 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 8 253 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 9 1 1 92 9 5 1 93 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 3 182 0 42 9 9 0 51 9 13 1 95] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 9 17 0 188 9 17 0 192 1 153 0 197 9 17 0 199 9 17 0 200 9 17 0 202 9 17 0 206 9 17 0 207 1 177 0 209 9 17 0 215 1 185 0 216 1 189 0 217 1 193 0 218 9 17 0 251 9 17 0 252 9 17 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 9 21 1 115 1 29 1 116 9 21 1 117 9 21 1 118 1 41 1 119 9 21 1 120 1 49 1 121 9 21 1 122 1 57 1 123 9 21 1 124 1 65 1 129 9 21 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 9 25 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 9 25 1 112 9 25 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 9 29 1 115 1 29 1 116 9 29 1 117 9 29 1 118 1 41 1 119 9 29 1 120 1 49 1 121 9 29 1 122 1 57 1 123 9 29 1 124 1 65 1 129 9 29 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 9 33 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 9 33 1 112 9 33 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 9 37 1 115 1 29 1 116 9 37 1 117 9 37 1 118 1 41 1 119 9 37 1 120 1 49 1 121 9 37 1 122 1 57 1 123 9 37 1 124 1 65 1 129 9 37 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 3 189 1 115 1 29 1 116 3 189 1 117 3 189 1 118 1 41 1 119 3 189 1 120 1 49 1 121 3 189 1 122 1 57 1 123 3 189 1 124 9 41 1 126 1 65 1 129 3 189 1 130 1 73 1 140] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 3 190 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 3 194 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 3 198 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 3 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 3 221 0 2 3 206 0 3 4 69 0 4 3 206 0 5 3 229 0 6 4 69 0 8 3 206 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 9 45 0 3 9 49 0 5] 
#[1 3 210 0 3 3 210 0 5 9 53 0 9] 
#[0 3 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 3 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 3 221 0 2 3 222 0 3 4 69 0 4 3 222 0 5 3 229 0 6 3 222 0 7 4 69 0 8 3 222 0 9 3 237 0 10 0 243 0 12 0 247 0 13 0 251 0 14 0 255 0 15 4 69 0 19 4 69 0 21 3 222 0 31 3 222 0 35 4 69 0 37 3 222 0 38 3 222 0 39 3 222 0 41 3 222 0 42 3 222 0 43 3 222 0 50 3 222 0 51 3 222 0 59 1 3 0 60 3 222 0 61 3 222 0 63 4 69 0 66 4 69 0 74 3 222 0 78 3 222 0 81 3 222 0 82 4 69 0 84 3 222 0 101 3 222 0 102 4 69 0 113 4 69 0 114 3 222 0 117 3 222 0 119 3 222 0 121 3 222 0 126 3 222 0 132 3 222 0 133 4 69 0 134 4 41 0 135 3 222 0 136 1 7 0 137 1 11 0 138 3 222 0 139 4 69 0 140 4 69 0 141 3 222 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 3 222 1 141] 
#[1 3 221 0 2 4 69 0 4 3 226 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 3 226 0 136 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 9 57 0 5 9 61 0 136] 
#[1 3 221 0 2 3 230 0 3 4 69 0 4 3 230 0 5 3 229 0 6 3 230 0 7 4 69 0 8 3 230 0 9 3 237 0 10 1 15 0 12 1 19 0 13 1 23 0 14 1 27 0 15 4 69 0 19 4 69 0 21 3 230 0 31 3 230 0 35 4 69 0 37 3 230 0 38 3 230 0 39 3 230 0 41 3 230 0 42 3 230 0 43 3 230 0 50 3 230 0 51 3 230 0 59 1 31 0 60 3 230 0 61 3 230 0 63 4 69 0 66 4 69 0 74 3 230 0 78 3 230 0 81 3 230 0 82 4 69 0 84 3 230 0 101 3 230 0 102 4 69 0 113 4 69 0 114 3 230 0 117 3 230 0 119 3 230 0 121 3 230 0 126 3 230 0 132 3 230 0 133 4 69 0 134 4 41 0 135 3 230 0 136 1 35 0 137 1 39 0 138 3 230 0 139 4 69 0 140 4 69 0 141 3 230 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 3 230 1 141] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 197 0 188 9 65 0 192 9 69 0 196 1 153 0 197 1 197 0 199 1 197 0 200 9 65 0 202 9 65 0 206 9 65 0 207 1 177 0 209 9 65 0 215 1 185 0 216 1 189 0 217 1 193 0 218 1 197 0 251 9 65 0 252 9 65 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 9 73 0 218 9 73 1 124 1 213 1 129 1 217 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 9 77 0 218 9 77 1 124 1 213 1 129 1 217 1 140] 
#[0 3 234 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 4 97 0 144 9 81 0 190] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 9 85 0 218 9 85 1 124 1 213 1 129 1 217 1 140] 
#[0 3 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 4 113 0 218 9 89 0 221 4 113 1 124 1 213 1 129 1 217 1 140] 
#[0 3 242 0 3] 
#[0 9 93 0 3] 
#[1 9 97 0 145 9 101 0 224] 
#[1 3 246 0 3 3 246 0 5 3 246 0 10 3 246 0 11 3 246 0 15 4 229 0 17 3 246 0 22 3 246 0 24 3 246 0 28 3 246 0 31 3 246 0 33 3 246 0 35 3 246 0 38 3 246 0 41 3 246 0 42 3 246 0 43 3 246 0 50 3 246 0 51 3 246 0 54 3 246 0 59 3 246 0 60 3 246 0 61 3 246 0 63 3 246 0 67 3 246 0 73 3 246 0 78 3 246 0 81 3 246 0 82 3 246 0 92 3 246 0 94 3 246 0 101 3 246 0 102 3 246 0 109 3 246 0 117 3 246 0 120 3 246 0 123 3 246 0 126 3 246 0 128 3 246 0 132 3 246 0 133 4 233 0 135 3 246 0 136 3 246 0 137 3 246 0 142 3 246 1 141] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 9 105 0 188 9 105 0 192 1 153 0 197 9 105 0 199 9 105 0 200 9 105 0 202 9 105 0 206 9 105 0 207 1 177 0 209 9 105 0 215 1 185 0 216 1 189 0 217 1 193 0 218 9 105 0 251 9 105 0 252 9 105 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 9 109 0 80] 
#[0 9 113 0 142] 
#[1 4 173 0 144 9 117 0 242] 
#[1 3 117 0 2 0 54 0 9 9 121 0 201] 
#[1 3 117 0 2 0 54 0 142 9 125 0 201] 
#[1 2 233 0 2 0 190 0 3 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 9 129 0 145 1 189 0 146 1 213 0 148 1 141 0 152 9 133 0 203 1 189 0 217 4 113 0 218 4 117 0 219 4 121 0 220 4 125 0 221 4 129 0 222 4 133 0 223 4 137 0 224 4 113 1 124 1 213 1 129 1 217 1 140] 
#[0 3 250 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 4 217 0 2 3 254 0 3 4 225 0 4 3 254 0 5 4 221 0 6 1 2 0 7 4 225 0 8 3 254 0 10 3 254 0 11 4 225 0 12 4 225 0 13 4 225 0 14 3 254 0 15 3 254 0 17 4 225 0 19 4 225 0 21 3 254 0 22 3 254 0 24 3 254 0 28 3 254 0 31 3 254 0 33 3 254 0 35 4 225 0 37 3 254 0 38 3 254 0 41 3 254 0 42 3 254 0 43 3 254 0 50 3 254 0 51 3 254 0 54 3 254 0 59 1 43 0 60 3 254 0 61 3 254 0 63 4 225 0 66 3 254 0 67 3 254 0 73 4 225 0 74 3 254 0 78 3 254 0 81 3 254 0 82 4 225 0 84 3 254 0 92 3 254 0 94 3 254 0 101 3 254 0 102 3 254 0 109 4 225 0 113 4 225 0 114 3 254 0 117 3 254 0 120 3 254 0 123 3 254 0 126 3 254 0 128 3 254 0 132 3 254 0 133 4 225 0 134 3 254 0 135 3 254 0 136 1 47 0 137 4 225 0 138 4 225 0 140 4 225 0 141 3 254 0 142 4 225 1 134 3 254 1 141] 
#[0 4 2 0 2 0 3 0 5 0 6 0 9 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 9 137 0 144 9 141 0 146] 
#[0 9 145 0 144] 
#[0 4 6 0 3 0 5 0 6 0 10 0 11 0 12 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 9 161 0 215 1 185 0 216 1 189 0 217 9 153 0 218 9 157 0 255 9 161 1 0 9 153 1 124 1 213 1 129 1 217 1 140] 
#[0 9 165 0 81] 
#[0 9 169 0 42] 
#[1 4 10 0 3 4 10 0 25 4 10 0 42 4 10 0 93 4 10 0 97 4 10 0 98 4 10 0 99 4 10 0 118 9 173 0 234] 
#[1 4 14 0 3 4 14 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 4 14 0 42 2 41 0 54 2 45 0 73 4 14 0 93 2 49 0 94 2 53 0 96 4 14 0 97 4 14 0 98 4 14 0 99 4 14 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 9 177 0 175 9 177 0 181 9 177 0 244 9 177 0 245 2 85 0 246 1 237 0 247 9 177 0 249 9 177 0 250 9 177 1 6 9 177 1 7 9 177 1 8 9 177 1 9 9 177 1 10 9 177 1 11 9 177 1 13 9 177 1 14 9 177 1 15 9 177 1 17 2 137 1 18 9 177 1 19 2 145 1 41 9 177 1 49 2 153 1 50 9 177 1 52 2 161 1 53 9 177 1 55 2 169 1 56 9 177 1 57 2 177 1 58 9 177 1 60 9 177 1 61 9 177 1 63 2 193 1 64 9 177 1 65 2 201 1 66 9 177 1 68 9 177 1 69 9 177 1 71 2 217 1 72 9 177 1 77 2 225 1 78] 
#[0 4 18 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 4 217 0 2 4 22 0 3 4 225 0 4 4 22 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 9 181 0 3 9 185 0 5] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[1 4 217 0 2 4 30 0 3 4 225 0 4 4 30 0 5 4 221 0 6 4 30 0 7 4 225 0 8 4 30 0 9 4 30 0 10 4 30 0 11 1 51 0 12 1 55 0 13 1 59 0 14 4 30 0 15 4 30 0 17 4 225 0 19 4 225 0 21 4 30 0 22 4 30 0 24 4 30 0 28 4 30 0 31 4 30 0 33 4 30 0 35 4 225 0 37 4 30 0 38 4 30 0 41 4 30 0 42 4 30 0 43 4 30 0 50 4 30 0 51 4 30 0 54 4 30 0 59 1 63 0 60 4 30 0 61 4 30 0 63 4 225 0 66 4 30 0 67 4 30 0 73 4 225 0 74 4 30 0 78 4 30 0 81 4 30 0 82 4 225 0 84 4 30 0 92 4 30 0 94 4 30 0 101 4 30 0 102 4 30 0 109 4 225 0 113 4 225 0 114 4 30 0 117 4 30 0 120 4 30 0 123 4 30 0 126 4 30 0 128 4 30 0 132 4 30 0 133 4 225 0 134 4 30 0 135 4 30 0 136 1 67 0 137 1 71 0 138 4 225 0 140 4 225 0 141 4 30 0 142 4 225 1 134 4 30 1 141] 
#[1 4 34 0 3 4 34 0 5 4 34 0 10 4 34 0 11 4 34 0 15 4 34 0 22 4 34 0 24 4 34 0 28 4 34 0 31 4 34 0 33 4 34 0 35 4 34 0 38 4 34 0 41 4 34 0 42 4 34 0 43 4 34 0 50 4 34 0 51 4 34 0 54 4 34 0 59 4 34 0 60 4 34 0 61 4 34 0 63 4 34 0 67 4 34 0 73 4 34 0 78 4 34 0 81 4 34 0 82 4 34 0 92 4 34 0 94 4 34 0 101 4 34 0 102 4 34 0 109 4 34 0 117 4 34 0 120 4 34 0 123 4 34 0 126 4 34 0 128 4 34 0 132 4 34 0 133 4 233 0 135 4 34 0 136 4 34 0 137 4 34 0 142 4 34 1 141] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 9 189 0 136 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 9 193 0 218 9 193 1 124 1 213 1 129 1 217 1 140] 
#[0 4 38 0 27 0 29 0 34 0 54 0 73 0 94 0 135 0 144 1 141] 
#[1 4 42 0 5 9 197 0 9 4 42 0 11 4 42 0 137] 
#[1 9 201 0 5 9 205 0 11 9 209 0 137] 
#[0 4 46 0 5 0 11 0 137] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 9 213 0 27 10 33 0 36 1 85 0 48 1 89 0 54 10 33 0 65 1 93 0 79 9 225 0 80 1 177 0 89 9 229 0 93 1 101 0 94 9 233 0 97 9 237 0 98 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 9 241 0 187 9 245 0 188 9 249 0 191 9 253 0 192 1 153 0 197 10 1 0 199 10 5 0 200 9 253 0 202 9 249 0 205 9 253 0 206 9 253 0 207 1 177 0 209 9 253 0 215 1 185 0 216 1 189 0 217 1 193 0 218 9 249 0 226 10 17 0 227 9 249 0 228 9 249 0 231 1 197 0 251 9 253 0 252 9 253 0 253 9 249 1 1 10 33 1 2 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 10 37 0 15] 
#[1 4 50 0 15 4 229 0 17 4 50 0 22 4 50 0 24 4 50 0 28 4 50 0 31 4 50 0 35 4 50 0 38 4 50 0 54 4 50 0 59 4 50 0 61 4 50 0 67 4 50 0 73 4 50 0 78 4 50 0 81 4 50 0 94 4 50 0 101 4 50 0 102 4 50 0 109 4 50 0 117 4 50 0 120 4 50 0 123 4 50 0 128 4 50 0 132 4 50 0 133 4 233 0 135 4 50 0 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 10 41 0 218 10 41 1 124 1 213 1 129 1 217 1 140] 
#[0 4 54 0 3 0 5 0 9 0 10 0 136 0 142 1 141] 
#[1 1 218 0 15 4 229 0 17 10 45 0 92 4 233 0 135 1 218 0 142 10 45 0 198] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 10 49 0 188 10 49 0 192 1 153 0 197 10 49 0 199 10 49 0 200 10 49 0 202 10 49 0 206 10 49 0 207 1 177 0 209 10 49 0 215 1 185 0 216 1 189 0 217 1 193 0 218 10 49 0 251 10 49 0 252 10 49 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 10 53 0 142] 
#[1 3 117 0 2 7 89 0 6 0 54 0 142 10 57 0 201] 
#[1 3 117 0 2 7 89 0 6 0 54 0 142 10 61 0 201] 
#[1 3 117 0 2 7 89 0 6 0 54 0 9 0 54 0 142 7 237 0 201] 
#[1 3 117 0 2 7 89 0 6 0 54 0 9 0 54 0 142 10 65 0 201] 
#[1 3 117 0 2 7 89 0 6 0 54 0 142 7 249 0 201] 
#[0 4 58 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 10 69 1 32 4 62 1 141] 
#[0 10 73 0 142] 
#[0 10 77 0 142] 
#[0 10 81 0 144] 
#[1 5 5 0 9 1 34 0 142 10 85 1 16] 
#[1 5 5 0 9 1 34 0 142 10 89 1 16] 
#[0 10 93 0 144] 
#[0 10 97 0 142] 
#[1 2 21 0 28 2 21 0 85 2 21 0 128 1 254 0 136 0 22 0 144 10 101 1 38 6 121 1 39 6 125 1 40 2 21 1 43] 
#[1 5 5 0 9 1 34 0 31 1 34 0 35 1 34 0 59 1 34 0 61 1 34 0 78 1 34 0 101 1 34 0 102 1 34 0 117 1 34 0 132 1 34 0 133 1 34 0 142 10 105 1 16] 
#[0 4 66 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 4 70 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 4 229 0 17 1 218 0 33 10 109 0 92 4 233 0 135 1 218 0 142 10 109 0 198] 
#[0 4 74 0 142] 
#[1 10 121 0 32 10 113 0 61 10 117 0 75 3 74 0 142 10 121 1 36] 
#[1 10 133 0 32 10 125 0 61 10 129 0 75 3 74 0 142 10 133 1 36] 
#[0 10 137 0 142] 
#[0 4 78 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 4 82 0 3 10 249 0 18 10 249 0 23 4 82 0 24 4 82 0 25 10 249 0 26 4 82 0 27 4 82 0 28 4 82 0 29 10 153 0 33 4 82 0 34 10 157 0 35 10 249 0 40 4 82 0 42 10 249 0 44 4 82 0 45 5 161 0 46 10 249 0 47 10 249 0 49 4 82 0 50 5 165 0 53 4 82 0 54 4 82 0 63 10 249 0 64 10 249 0 69 10 185 0 72 4 82 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 4 82 0 93 4 82 0 94 4 82 0 96 4 82 0 97 4 82 0 98 4 82 0 99 10 249 0 105 10 249 0 106 4 82 0 109 10 249 0 110 10 249 0 115 10 249 0 116 4 82 0 118 4 82 0 120 4 82 0 123 10 249 0 125 4 82 0 128 10 249 0 129 4 82 0 135 4 82 0 144 10 237 1 33 10 237 1 34 10 237 1 35 10 249 1 37 4 82 1 141] 
#[1 4 86 0 3 10 249 0 18 10 249 0 23 4 86 0 24 4 86 0 25 10 249 0 26 4 86 0 27 4 86 0 28 4 86 0 29 10 153 0 33 4 86 0 34 10 157 0 35 10 249 0 40 4 86 0 42 10 249 0 44 4 86 0 45 5 161 0 46 10 249 0 47 10 249 0 49 4 86 0 50 5 165 0 53 4 86 0 54 4 86 0 63 10 249 0 64 10 249 0 69 10 185 0 72 4 86 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 4 86 0 93 4 86 0 94 4 86 0 96 4 86 0 97 4 86 0 98 4 86 0 99 10 249 0 105 10 249 0 106 4 86 0 109 10 249 0 110 10 249 0 115 10 249 0 116 4 86 0 118 4 86 0 120 4 86 0 123 10 249 0 125 4 86 0 128 10 249 0 129 4 86 0 135 4 86 0 144 10 237 1 33 10 237 1 34 10 237 1 35 10 249 1 37 4 86 1 141] 
#[1 4 90 0 3 10 249 0 18 4 90 0 22 10 249 0 23 4 90 0 24 4 90 0 25 10 249 0 26 4 90 0 27 4 90 0 28 4 90 0 29 10 153 0 33 4 90 0 34 10 157 0 35 10 249 0 40 4 90 0 42 10 249 0 44 4 90 0 45 5 161 0 46 10 249 0 47 10 249 0 49 4 90 0 50 5 165 0 53 4 90 0 54 4 90 0 58 4 90 0 63 10 249 0 64 4 90 0 67 10 249 0 69 10 185 0 72 4 90 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 4 90 0 93 4 90 0 94 4 90 0 96 4 90 0 97 4 90 0 98 4 90 0 99 10 249 0 105 10 249 0 106 4 90 0 109 10 249 0 110 10 249 0 115 10 249 0 116 4 90 0 118 4 90 0 120 4 90 0 123 10 249 0 125 4 90 0 128 10 249 0 129 4 90 0 135 4 90 0 144 10 237 1 33 10 237 1 34 10 237 1 35 10 249 1 37 4 90 1 141] 
#[1 4 94 0 3 10 249 0 18 4 94 0 22 10 249 0 23 4 94 0 24 4 94 0 25 10 249 0 26 4 94 0 27 4 94 0 28 4 94 0 29 10 153 0 33 4 94 0 34 10 157 0 35 10 249 0 40 4 94 0 42 10 249 0 44 4 94 0 45 5 161 0 46 10 249 0 47 10 249 0 49 4 94 0 50 5 165 0 53 4 94 0 54 4 94 0 58 4 94 0 63 10 249 0 64 4 94 0 67 10 249 0 69 10 185 0 72 4 94 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 4 94 0 93 4 94 0 94 4 94 0 96 4 94 0 97 4 94 0 98 4 94 0 99 10 249 0 105 10 249 0 106 4 94 0 109 10 249 0 110 10 249 0 115 10 249 0 116 4 94 0 118 4 94 0 120 4 94 0 123 10 249 0 125 4 94 0 128 10 249 0 129 4 94 0 135 4 94 0 144 10 237 1 33 10 237 1 34 10 237 1 35 10 249 1 37 4 94 1 141] 
#[1 4 98 0 3 10 249 0 18 10 249 0 23 4 98 0 24 4 98 0 25 10 249 0 26 4 98 0 27 4 98 0 28 4 98 0 29 10 153 0 33 4 98 0 34 10 157 0 35 10 249 0 40 4 98 0 42 10 249 0 44 4 98 0 45 5 161 0 46 10 249 0 47 10 249 0 49 4 98 0 50 5 165 0 53 4 98 0 54 4 98 0 63 10 249 0 64 10 249 0 69 10 185 0 72 4 98 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 4 98 0 93 4 98 0 94 4 98 0 96 4 98 0 97 4 98 0 98 4 98 0 99 10 249 0 105 10 249 0 106 4 98 0 109 10 249 0 110 10 249 0 115 10 249 0 116 4 98 0 118 4 98 0 120 4 98 0 123 10 249 0 125 4 98 0 128 10 249 0 129 4 98 0 135 4 98 0 144 10 237 1 33 10 237 1 34 10 237 1 35 10 249 1 37 4 98 1 141] 
#[1 4 217 0 2 4 225 0 4 4 102 0 5 4 221 0 6 4 225 0 8 4 102 0 9 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[0 4 106 0 41 0 42 0 142 1 141] 
#[1 4 110 0 5 4 114 0 9] 
#[0 4 118 0 5 0 6 0 33 0 60 0 92 0 142] 
#[1 4 122 0 142 10 253 0 148] 
#[0 11 1 0 142] 
#[0 11 5 0 142] 
#[0 11 9 0 142] 
#[0 11 13 0 142] 
#[0 4 126 0 5 0 142] 
#[0 4 130 0 5 0 142] 
#[0 4 134 1 141] 
#[1 11 17 0 144 11 21 1 138] 
#[0 11 25 0 6] 
#[0 4 138 0 22 0 24 0 28 0 45 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 3 5 0 144 11 29 0 172] 
#[0 4 142 0 30] 
#[1 5 229 0 5 11 33 0 142] 
#[0 11 37 0 6] 
#[0 4 146 1 141] 
#[1 2 29 0 28 4 150 0 42 4 150 0 50 5 33 0 54 4 150 0 58 4 150 0 63 2 45 0 73 5 41 0 94 6 29 0 109 2 57 0 120 2 61 0 123 2 65 0 128 11 41 0 174 11 41 0 175 11 41 0 178 11 41 0 181 11 41 1 10 11 41 1 13 11 41 1 55 2 169 1 56 11 41 1 57 2 177 1 58 11 41 1 63 2 193 1 64 11 41 1 65 2 201 1 66 11 41 1 77 2 225 1 78] 
#[1 4 154 0 24 4 154 0 27 4 154 0 28 4 154 0 29 4 154 0 34 4 154 0 42 4 154 0 45 4 154 0 50 4 154 0 54 4 154 0 63 4 154 0 73 4 154 0 94 4 154 0 109 4 154 0 120 4 154 0 123 4 154 0 128 11 69 1 46] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 50 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 11 73 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 4 158 0 42 11 77 0 50 11 81 1 136] 
#[1 5 13 0 5 11 85 0 142] 
#[0 11 89 0 15] 
#[1 4 162 0 22 4 162 0 24 4 162 0 27 4 162 0 28 4 162 0 29 4 162 0 34 4 162 0 42 4 162 0 45 4 162 0 50 4 162 0 54 4 162 0 58 4 162 0 63 4 162 0 67 4 162 0 73 4 162 0 94 4 162 0 109 4 162 0 120 4 162 0 123 4 162 0 128 8 157 0 144 11 93 0 180] 
#[0 4 166 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128 0 144] 
#[0 4 170 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 4 174 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 4 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 22 0 24 0 27 0 28 0 29 0 31 0 34 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 45 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 4 182 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142] 
#[1 11 97 0 41 4 186 0 42 11 101 1 104] 
#[1 2 182 0 41 2 182 0 42 11 105 0 142 11 109 1 97] 
#[0 4 190 0 41 0 42 0 142] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 11 113 0 188 11 113 0 192 1 153 0 197 11 113 0 199 11 113 0 200 11 113 0 202 11 113 0 206 11 113 0 207 1 177 0 209 11 113 0 215 1 185 0 216 1 189 0 217 1 193 0 218 11 113 0 251 11 113 0 252 11 113 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 4 194 0 10 4 229 0 17 4 194 0 60 4 233 0 135] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 11 125 0 39 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 11 125 0 121 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 11 125 1 110 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 11 129 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[0 4 198 0 9 0 22 0 24 0 28 0 54 0 67 0 73 0 81 0 94 0 109 0 120 0 123 0 128 0 142] 
#[1 2 21 0 28 2 21 0 85 2 21 0 128 0 22 0 144 11 133 1 40 2 21 1 43] 
#[1 11 137 0 41 4 202 0 42 4 202 0 43 4 202 0 50 4 202 0 51 4 202 0 63 4 202 0 82 4 202 0 126 4 202 0 142 4 202 1 141] 
#[0 4 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 11 141 0 3 9 49 0 5] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 11 145 1 115 1 29 1 116 11 145 1 117 11 145 1 118 1 41 1 119 11 145 1 120 1 49 1 121 11 145 1 122 1 57 1 123 11 145 1 124 1 65 1 129 11 145 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 11 149 1 115 1 29 1 116 11 149 1 117 11 149 1 118 1 41 1 119 11 149 1 120 1 49 1 121 11 149 1 122 1 57 1 123 11 149 1 124 1 65 1 129 11 149 1 130 1 73 1 140] 
#[1 7 89 0 6 4 210 0 41 4 210 0 42 4 210 0 43 4 210 0 50 4 210 0 51 4 210 0 63 4 210 0 82 4 210 0 126 4 210 0 142 4 210 1 141] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 214 0 41 4 214 0 42 4 214 0 43 4 214 0 50 4 214 0 51 4 69 0 60 4 214 0 63 4 69 0 66 4 69 0 74 4 214 0 82 4 69 0 84 4 69 0 113 4 69 0 114 4 214 0 126 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 214 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 4 214 1 141] 
#[1 4 173 0 144 11 153 0 242] 
#[1 11 157 0 41 4 218 0 42 4 218 0 51 6 93 0 142 11 161 1 94] 
#[1 11 157 0 41 4 218 0 42 4 218 0 51 8 249 0 82 11 165 1 93 11 169 1 94] 
#[0 4 222 0 41 0 42 0 51 0 82] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 11 173 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[0 11 177 0 42] 
#[1 11 181 0 10 4 229 0 17 4 226 0 41 4 226 0 42 4 226 0 43 4 226 0 50 4 226 0 51 4 226 0 63 4 226 0 82 4 226 0 126 4 233 0 135 4 226 0 142 4 226 1 141] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 230 0 41 4 230 0 42 4 230 0 43 4 230 0 50 4 230 0 51 4 69 0 60 4 230 0 63 4 69 0 66 4 69 0 74 4 230 0 82 4 69 0 84 4 69 0 113 4 69 0 114 4 230 0 126 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 230 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 4 230 1 141] 
#[0 4 234 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[1 3 221 0 2 4 69 0 4 4 238 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 238 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[0 4 242 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[1 3 221 0 2 4 69 0 4 4 246 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 246 0 136 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[0 4 250 0 5 0 136] 
#[0 4 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 6 217 1 115 1 29 1 116 6 217 1 117 6 217 1 118 1 41 1 119 6 217 1 120 1 49 1 121 6 217 1 122 1 57 1 123 6 217 1 124 1 65 1 129 6 217 1 130 11 185 1 132 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 11 189 1 115 1 29 1 116 11 189 1 117 11 189 1 118 1 41 1 119 11 189 1 120 1 49 1 121 11 189 1 122 1 57 1 123 11 189 1 124 1 65 1 129 11 189 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 11 193 1 115 1 29 1 116 11 193 1 117 11 193 1 118 1 41 1 119 11 193 1 120 1 49 1 121 11 193 1 122 1 57 1 123 11 193 1 124 1 65 1 129 11 193 1 130 1 73 1 140] 
#[0 5 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 5 6 0 5 0 222 0 17 0 222 0 135 5 6 0 137] 
#[1 11 197 0 5 5 10 0 137 11 201 0 195] 
#[1 4 217 0 2 5 14 0 3 4 225 0 4 5 14 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 4 217 0 2 5 18 0 3 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 5 18 0 142 4 225 1 134] 
#[0 5 22 0 3 0 5] 
#[1 4 217 0 2 5 26 0 3 4 225 0 4 5 26 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[0 5 30 0 3 0 5] 
#[0 5 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[0 7 5 0 9] 
#[0 5 38 0 3 0 142] 
#[1 4 229 0 17 7 49 0 81 4 233 0 135 2 202 0 142 11 205 1 12] 
#[0 5 42 0 142] 
#[1 3 78 0 3 3 78 0 5 3 78 0 10 3 78 0 11 3 78 0 15 3 78 0 17 3 78 0 18 3 78 0 22 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 29 3 78 0 31 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 38 3 78 0 40 3 78 0 41 3 78 0 42 3 78 0 43 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 50 3 78 0 51 3 78 0 53 3 78 0 54 3 78 0 58 3 78 0 59 3 78 0 60 3 78 0 61 3 78 0 63 3 78 0 64 3 78 0 67 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 77 3 78 0 78 3 78 0 81 3 78 0 82 3 78 0 86 3 78 0 87 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 3 78 0 99 3 78 0 101 3 78 0 102 3 78 0 105 3 78 0 106 3 78 0 109 3 78 0 110 3 78 0 115 3 78 0 116 3 78 0 117 3 78 0 118 3 78 0 120 3 78 0 123 3 78 0 125 3 78 0 126 3 78 0 128 3 78 0 129 3 78 0 132 3 78 0 133 3 78 0 135 3 78 0 136 3 78 0 137 3 78 0 142 3 78 0 144 11 209 1 31 3 78 1 141] 
#[1 7 89 0 6 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 11 213 0 208 7 109 0 233 7 113 0 243] 
#[0 11 217 0 9] 
#[0 11 221 0 142] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 1 75 0 5 0 206 0 6 0 206 0 8 7 5 0 9 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 19 0 206 0 21 0 206 0 37 0 206 0 60 0 206 0 66 0 206 0 74 0 206 0 84 0 206 0 113 0 206 0 114 0 206 0 134 0 206 0 137 0 206 0 138 0 206 0 140 0 206 0 141] 
#[0 11 229 0 3] 
#[0 11 233 0 3] 
#[0 11 237 0 3] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 1 26 0 11 4 245 0 12 1 26 0 15 1 26 0 17 1 26 0 22 1 26 0 24 1 26 0 25 1 26 0 27 1 26 0 28 1 26 0 29 1 26 0 31 1 26 0 33 1 26 0 34 1 26 0 35 1 26 0 38 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 50 1 26 0 51 1 26 0 54 1 26 0 59 1 26 0 60 1 26 0 61 1 26 0 63 1 26 0 67 1 26 0 73 1 26 0 78 1 26 0 81 1 26 0 82 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 96 1 26 0 97 1 26 0 98 1 26 0 99 1 26 0 101 1 26 0 102 1 26 0 109 1 26 0 117 1 26 0 118 1 26 0 120 1 26 0 123 1 26 0 126 1 26 0 128 1 26 0 132 1 26 0 133 1 26 0 135 1 26 0 136 1 26 0 137 1 26 0 142 1 26 0 144 11 241 0 184 1 26 1 141] 
#[0 5 46 0 5 0 136] 
#[1 4 217 0 2 4 225 0 4 5 50 0 5 4 221 0 6 1 2 0 7 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 5 50 0 136 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 11 245 0 5 11 249 0 136] 
#[0 5 54 0 5 0 136] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 11 253 0 28 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 12 1 0 188 12 1 0 192 1 153 0 197 12 1 0 199 12 1 0 200 12 1 0 202 12 1 0 206 12 1 0 207 1 177 0 209 12 1 0 215 1 185 0 216 1 189 0 217 1 193 0 218 12 1 0 251 12 1 0 252 12 1 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 5 58 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 5 62 0 3 12 5 0 25 5 62 0 42 12 9 0 93 12 13 0 97 12 17 0 98 12 21 0 99 12 25 0 118 12 29 0 210 12 33 0 235 12 33 0 236 12 33 0 237 12 33 0 238 12 33 0 239] 
#[0 5 66 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144] 
#[0 5 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 140 0 141 0 142 1 141] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 12 53 0 218 12 53 1 124 1 213 1 129 1 217 1 140] 
#[0 5 74 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 4 217 0 2 4 225 0 4 5 78 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 5 78 0 136 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 12 57 0 188 12 57 0 192 1 153 0 197 12 57 0 199 12 57 0 200 12 57 0 202 12 57 0 206 12 57 0 207 1 177 0 209 12 57 0 215 1 185 0 216 1 189 0 217 1 193 0 218 12 57 0 251 12 57 0 252 12 57 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 7 153 0 144 12 61 0 186] 
#[1 7 153 0 144 12 65 0 186] 
#[0 5 82 0 2 0 3 0 5 0 6 0 9 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 5 86 0 2 5 86 0 18 5 86 0 27 5 86 0 28 5 86 0 29 5 86 0 33 5 86 0 34 5 86 0 42 5 86 0 54 5 86 0 56 5 86 0 73 12 69 0 81 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 96 5 86 0 97 5 86 0 98 5 86 0 99 5 86 0 111 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 128 5 86 0 135 5 86 0 142 5 86 0 144 12 73 0 229] 
#[0 5 90 0 2 0 27 0 33 0 42 0 54 0 73 0 92 0 94 0 96 0 135 0 142] 
#[0 5 94 0 2 0 27 0 33 0 42 0 54 0 73 0 92 0 94 0 96 0 135 0 142] 
#[1 12 77 0 2 5 98 0 27 5 98 0 28 5 98 0 29 5 98 0 34 5 98 0 42 5 98 0 54 5 98 0 73 5 98 0 93 5 98 0 94 5 98 0 96 5 98 0 97 5 98 0 98 5 98 0 99 5 98 0 118 5 98 0 120 5 98 0 123 5 98 0 128 5 98 0 135 5 98 0 144 12 81 0 240] 
#[1 5 102 0 27 5 102 0 36 5 102 0 65 12 85 0 90] 
#[1 5 106 0 27 5 106 0 36 5 106 0 65 12 89 0 90] 
#[1 5 110 0 27 5 110 0 36 5 110 0 65 12 93 0 90] 
#[0 5 114 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 0 218 0 17 0 218 0 135 12 97 0 142] 
#[1 1 218 0 33 12 101 0 92 1 218 0 142 12 101 0 198] 
#[1 0 222 0 17 1 218 0 33 12 105 0 92 0 222 0 135 1 218 0 142 12 105 0 198] 
#[1 5 118 0 3 0 230 0 17 5 118 0 22 5 118 0 24 5 118 0 25 5 118 0 27 5 118 0 28 5 118 0 29 5 118 0 34 5 118 0 42 5 118 0 45 5 118 0 50 5 118 0 54 5 118 0 58 5 118 0 63 5 118 0 67 5 118 0 73 5 118 0 93 5 118 0 94 5 118 0 96 5 118 0 97 5 118 0 98 5 118 0 99 5 118 0 109 5 118 0 118 5 118 0 120 5 118 0 123 5 118 0 128 1 79 0 135 5 118 0 144 5 118 1 141] 
#[1 5 122 0 3 0 234 0 17 5 122 0 22 5 122 0 24 5 122 0 25 5 122 0 27 5 122 0 28 5 122 0 29 5 122 0 34 5 122 0 42 5 122 0 45 5 122 0 50 5 122 0 54 5 122 0 58 5 122 0 63 5 122 0 67 5 122 0 73 5 122 0 93 5 122 0 94 5 122 0 96 5 122 0 97 5 122 0 98 5 122 0 99 5 122 0 109 5 122 0 118 5 122 0 120 5 122 0 123 5 122 0 128 1 83 0 135 5 122 0 144 5 122 1 141] 
#[0 5 126 0 33 0 92 0 142] 
#[0 5 130 0 33 0 92 0 142] 
#[1 12 109 0 27 12 113 0 36 12 113 0 65 12 113 1 2] 
#[0 5 134 0 33 0 92 0 142] 
#[0 5 138 0 33 0 92 0 142] 
#[0 5 142 0 33 0 92 0 142] 
#[1 12 77 0 2 5 98 0 27 5 146 0 33 5 98 0 42 5 98 0 54 5 98 0 73 5 146 0 92 5 98 0 94 5 98 0 96 5 98 0 135 5 146 0 142 12 117 0 240] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 9 213 0 27 10 33 0 36 1 85 0 48 1 89 0 54 10 33 0 65 1 93 0 79 9 225 0 80 1 177 0 89 9 229 0 93 1 101 0 94 9 233 0 97 9 237 0 98 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 12 121 0 187 9 245 0 188 9 249 0 191 9 253 0 192 1 153 0 197 10 1 0 199 10 5 0 200 9 253 0 202 9 249 0 205 9 253 0 206 9 253 0 207 1 177 0 209 9 253 0 215 1 185 0 216 1 189 0 217 1 193 0 218 9 249 0 226 10 17 0 227 9 249 0 228 9 249 0 231 1 197 0 251 9 253 0 252 9 253 0 253 9 249 1 1 10 33 1 2 1 193 1 124 1 213 1 129 1 217 1 140] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 1 218 0 33 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 12 125 0 92 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 1 218 0 142 12 125 0 198 4 225 1 134] 
#[1 12 129 0 15 5 150 0 142 12 133 1 42] 
#[1 5 150 0 3 12 129 0 15 4 229 0 17 4 233 0 135 5 150 0 136 5 150 0 142 12 137 1 42 5 150 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 12 141 1 32 4 62 1 141] 
#[0 12 145 0 142] 
#[0 12 149 0 142] 
#[1 5 5 0 9 1 34 0 142 12 153 1 16] 
#[1 5 154 0 3 10 249 0 18 5 154 0 22 10 249 0 23 5 154 0 24 5 154 0 25 10 249 0 26 5 154 0 27 5 154 0 28 5 154 0 29 10 153 0 33 5 154 0 34 10 157 0 35 10 249 0 40 5 154 0 42 10 249 0 44 5 154 0 46 10 249 0 47 10 249 0 49 5 154 0 53 5 154 0 54 10 249 0 64 5 154 0 67 10 249 0 69 10 185 0 72 5 154 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 5 154 0 93 5 154 0 94 5 154 0 96 5 154 0 97 5 154 0 98 5 154 0 99 10 249 0 105 10 249 0 106 5 154 0 109 10 249 0 110 10 249 0 115 10 249 0 116 5 154 0 118 5 154 0 120 5 154 0 123 10 249 0 125 5 154 0 128 10 249 0 129 5 154 0 135 5 154 0 144 12 157 1 34 10 249 1 37 5 154 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 12 161 1 32 4 62 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 12 165 1 32 4 62 1 141] 
#[0 12 169 0 142] 
#[0 12 173 0 142] 
#[0 12 177 0 142] 
#[0 12 181 0 142] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 50 4 62 0 53 4 62 0 54 4 62 0 58 4 62 0 63 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 12 185 1 32 4 62 1 141] 
#[0 12 189 0 136] 
#[1 5 158 0 31 5 158 0 35 5 158 0 59 5 158 0 61 5 158 0 78 5 158 0 101 5 158 0 102 5 158 0 117 5 158 0 132 5 158 0 133 5 158 0 142 12 193 1 20] 
#[1 8 73 0 33 3 86 0 142 12 197 0 232] 
#[0 12 201 0 146] 
#[0 12 205 0 148] 
#[0 12 209 0 142] 
#[0 12 213 0 146] 
#[0 12 217 0 148] 
#[0 12 221 0 142] 
#[0 5 162 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 5 166 0 142] 
#[0 5 170 0 142] 
#[0 5 174 0 142] 
#[1 5 178 0 142 12 225 0 148] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 12 229 0 218 12 229 1 124 1 213 1 129 1 217 1 140] 
#[0 5 182 0 142] 
#[0 5 186 0 142] 
#[0 5 190 0 142] 
#[0 5 194 0 142] 
#[0 5 198 0 142] 
#[0 5 202 0 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 12 233 0 218 12 233 1 124 1 213 1 129 1 217 1 140] 
#[0 5 206 0 142] 
#[0 5 210 0 142] 
#[0 5 214 0 142] 
#[0 5 218 0 142] 
#[0 5 222 0 142] 
#[0 5 226 0 142] 
#[0 5 230 0 142] 
#[0 5 234 0 142] 
#[0 5 238 0 142] 
#[0 5 242 0 142] 
#[0 5 246 0 142] 
#[0 5 250 0 142] 
#[0 5 254 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 6 2 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 6 6 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 12 237 0 142] 
#[0 6 10 0 142] 
#[0 6 14 0 22 0 24 0 28 0 45 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 127 0 128] 
#[0 6 18 0 42 0 50 0 58 0 63 0 65 1 141] 
#[0 6 22 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 127 0 128] 
#[0 6 26 0 42 0 50 0 58 0 63 0 65 1 141] 
#[0 6 30 0 5 0 142] 
#[1 12 241 0 5 12 245 0 142] 
#[0 6 34 1 141] 
#[1 6 38 0 5 5 201 0 6 6 38 0 142] 
#[0 6 42 0 42] 
#[0 6 46 1 141] 
#[0 6 50 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 54 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 58 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 62 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 66 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 70 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 74 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 12 249 0 24 5 125 0 27 2 29 0 28 2 33 0 29 2 37 0 34 6 78 0 42 8 105 0 45 6 78 0 50 5 33 0 54 6 78 0 63 2 45 0 73 5 41 0 94 6 29 0 109 2 57 0 120 2 61 0 123 2 65 0 128 13 13 0 175 13 13 0 178 13 13 0 181 13 9 1 45 13 13 1 47 13 13 1 48 13 21 1 49 13 25 1 50 13 13 1 51 13 33 1 52 13 37 1 53 13 13 1 54 6 49 1 55 2 169 1 56 6 53 1 57 2 177 1 58 13 13 1 59 13 49 1 60 13 53 1 61 13 13 1 62 6 61 1 63 2 193 1 64 6 65 1 65 2 201 1 66 13 13 1 67 13 65 1 68 13 69 1 69 13 13 1 70 13 77 1 71 13 81 1 72 13 13 1 77 2 225 1 78 13 13 1 137] 
#[1 6 82 0 42 6 82 0 50 6 93 0 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 13 93 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 8 129 0 42 13 97 1 139] 
#[0 6 86 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 13 101 0 218 13 101 1 124 1 213 1 129 1 217 1 140] 
#[0 6 90 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128 0 144] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 13 105 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[0 13 109 0 42] 
#[1 2 233 0 2 1 81 0 16 3 242 0 41 3 242 0 42 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 2 241 0 218 13 113 1 100 2 249 1 101 2 253 1 102 3 1 1 103 2 241 1 124 1 213 1 129 1 217 1 140] 
#[0 6 94 0 41 0 42] 
#[1 6 98 0 10 4 229 0 17 6 98 0 60 4 233 0 135] 
#[0 6 102 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 146 0 148 0 152 1 140] 
#[0 6 106 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 135 0 140 0 141 0 144 0 146 0 148 0 152 1 140] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 13 117 1 115 1 29 1 116 13 117 1 117 13 117 1 118 1 41 1 119 13 117 1 120 1 49 1 121 13 117 1 122 1 57 1 123 13 117 1 124 1 65 1 129 13 117 1 130 1 73 1 140] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 13 121 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 13 121 1 112 13 121 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[0 6 110 0 3 0 136 0 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 13 125 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 13 125 1 112 13 125 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[0 6 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 13 129 0 136 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 13 133 0 136 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 7 89 0 6 5 5 0 9 1 34 0 38 13 137 1 16] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 13 141 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[0 6 118 0 42 0 51] 
#[0 6 122 0 41 0 42 0 51 0 82] 
#[0 6 126 0 42 0 51] 
#[1 6 130 0 42 6 93 0 142] 
#[0 6 134 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 13 145 1 115 1 29 1 116 13 145 1 117 13 145 1 118 1 41 1 119 13 145 1 120 1 49 1 121 13 145 1 122 1 57 1 123 13 145 1 124 1 65 1 129 13 145 1 130 1 73 1 140] 
#[1 6 138 0 3 6 138 0 5 9 53 0 9] 
#[1 3 221 0 2 6 142 0 3 4 69 0 4 6 142 0 5 3 229 0 6 4 69 0 8 6 142 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 3 221 0 2 4 69 0 4 6 146 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 6 146 0 136 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 197 0 188 13 149 0 192 1 153 0 197 1 197 0 199 1 197 0 200 13 149 0 202 13 149 0 206 13 149 0 207 1 177 0 209 13 149 0 215 1 185 0 216 1 189 0 217 1 193 0 218 1 197 0 251 13 149 0 252 13 149 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 13 153 0 137] 
#[0 13 157 0 142] 
#[1 6 150 0 3 6 150 0 5 6 150 0 10 6 150 0 11 6 150 0 15 6 150 0 17 10 249 0 18 6 150 0 22 10 249 0 23 6 150 0 24 6 150 0 25 10 249 0 26 6 150 0 27 6 150 0 28 6 150 0 29 6 150 0 31 1 87 0 33 6 150 0 34 1 91 0 35 6 150 0 38 10 249 0 40 6 150 0 41 6 150 0 42 6 150 0 43 10 249 0 44 6 150 0 45 5 161 0 46 10 249 0 47 10 249 0 49 6 150 0 50 6 150 0 51 5 165 0 53 6 150 0 54 6 150 0 58 6 150 0 59 6 150 0 60 6 150 0 61 6 150 0 63 10 249 0 64 6 150 0 67 10 249 0 69 10 185 0 72 6 150 0 73 10 249 0 77 6 150 0 78 6 150 0 81 6 150 0 82 10 249 0 86 10 249 0 87 10 249 0 91 1 95 0 92 6 150 0 93 6 150 0 94 6 150 0 96 6 150 0 97 6 150 0 98 6 150 0 99 6 150 0 101 6 150 0 102 10 249 0 105 10 249 0 106 6 150 0 109 10 249 0 110 10 249 0 115 10 249 0 116 6 150 0 117 6 150 0 118 6 150 0 120 6 150 0 123 10 249 0 125 6 150 0 126 6 150 0 128 10 249 0 129 6 150 0 132 6 150 0 133 6 150 0 135 6 150 0 136 6 150 0 137 6 150 0 142 6 150 0 144 10 237 1 33 10 237 1 34 10 237 1 35 10 249 1 37 6 150 1 141] 
#[0 13 161 0 42] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 135 1 121 0 140 1 125 0 141 1 129 0 143 1 133 0 145 1 189 0 146 1 213 0 148 1 141 0 152 13 165 0 188 13 165 0 192 1 153 0 197 13 165 0 199 13 165 0 200 13 165 0 202 13 165 0 206 13 165 0 207 1 177 0 209 13 165 0 215 1 185 0 216 1 189 0 217 1 193 0 218 13 165 0 251 13 165 0 252 13 165 0 253 1 193 1 124 1 213 1 129 1 217 1 140] 
#[0 6 154 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 45 0 50 0 51 0 54 0 58 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 13 169 0 145 13 173 0 204] 
#[0 6 158 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 6 162 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 6 166 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[0 6 170 0 2 0 3 0 5 0 6 0 9 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 13 177 0 215 1 185 0 216 1 189 0 217 9 153 0 218 13 177 1 0 9 153 1 124 1 213 1 129 1 217 1 140] 
#[0 6 174 0 81] 
#[0 6 178 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 6 182 0 3 6 182 0 5 6 182 0 10 6 182 0 11 6 182 0 15 4 229 0 17 6 182 0 22 6 182 0 24 6 182 0 28 6 182 0 31 6 182 0 33 6 182 0 35 6 182 0 38 6 182 0 41 6 182 0 42 6 182 0 43 6 182 0 50 6 182 0 51 6 182 0 54 6 182 0 59 6 182 0 60 6 182 0 61 6 182 0 63 6 182 0 67 6 182 0 73 6 182 0 78 6 182 0 81 6 182 0 82 6 182 0 92 6 182 0 94 6 182 0 101 6 182 0 102 6 182 0 109 6 182 0 117 6 182 0 120 6 182 0 123 6 182 0 126 6 182 0 128 6 182 0 132 6 182 0 133 4 233 0 135 6 182 0 136 6 182 0 137 6 182 0 142 6 182 1 141] 
#[0 13 181 0 144] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 13 185 0 243] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 13 189 0 243] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 13 193 0 243] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 13 197 0 243] 
#[1 13 201 0 93 13 205 0 97] 
#[0 6 186 0 3 0 42] 
#[0 6 190 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 194 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 198 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 202 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 206 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[1 4 217 0 2 6 210 0 3 4 225 0 4 6 210 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 6 214 0 5 6 214 0 11 4 229 0 17 4 233 0 135 6 214 0 137] 
#[0 6 218 0 5 0 11 0 137] 
#[0 6 222 0 5 0 11 0 137] 
#[0 13 209 0 144] 
#[1 12 77 0 2 13 225 0 18 5 98 0 27 5 98 0 28 5 98 0 29 5 98 0 33 5 98 0 34 5 98 0 42 5 98 0 54 13 217 0 56 5 98 0 73 5 98 0 92 5 98 0 93 5 98 0 94 5 98 0 96 5 98 0 97 5 98 0 98 5 98 0 99 13 225 0 111 5 98 0 118 5 98 0 120 5 98 0 123 5 98 0 128 5 98 0 135 5 98 0 142 5 98 0 144 13 225 0 230 13 229 0 240] 
#[1 13 233 0 104 13 237 0 145 13 241 0 197 13 245 0 241] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 13 249 0 233 7 113 0 243] 
#[0 6 226 0 27 0 36 0 65] 
#[0 6 230 0 27 0 36 0 65] 
#[0 6 234 0 27 0 36 0 65] 
#[0 6 238 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 8 73 0 33 3 86 0 142 13 253 0 232] 
#[1 8 73 0 33 3 86 0 142 14 1 0 232] 
#[1 5 86 0 2 5 86 0 18 5 86 0 27 5 86 0 28 5 86 0 29 5 86 0 34 5 86 0 42 5 86 0 54 5 86 0 73 5 86 0 93 5 86 0 94 5 86 0 96 5 86 0 97 5 86 0 98 5 86 0 99 5 86 0 111 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 128 5 86 0 135 5 86 0 144 14 5 0 229] 
#[1 12 77 0 2 5 98 0 27 5 98 0 42 5 98 0 54 5 98 0 73 5 98 0 94 5 98 0 96 5 98 0 135 14 9 0 240] 
#[1 6 242 0 27 6 242 0 42 6 242 0 54 6 242 0 73 6 242 0 94 6 242 0 96 14 13 0 135 14 17 1 3] 
#[0 6 246 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 8 73 0 33 3 86 0 142 14 21 0 232] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 14 25 0 218 14 25 1 124 1 213 1 129 1 217 1 140] 
#[0 14 29 0 142] 
#[0 6 250 0 3 0 136 0 142 1 141] 
#[1 6 254 0 3 10 249 0 18 6 254 0 22 10 249 0 23 6 254 0 24 6 254 0 25 10 249 0 26 6 254 0 27 6 254 0 28 6 254 0 29 10 153 0 33 6 254 0 34 10 157 0 35 10 249 0 40 6 254 0 42 10 249 0 44 6 254 0 46 10 249 0 47 10 249 0 49 6 254 0 53 6 254 0 54 10 249 0 64 6 254 0 67 10 249 0 69 10 185 0 72 6 254 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 6 254 0 93 6 254 0 94 6 254 0 96 6 254 0 97 6 254 0 98 6 254 0 99 10 249 0 105 10 249 0 106 6 254 0 109 10 249 0 110 10 249 0 115 10 249 0 116 6 254 0 118 6 254 0 120 6 254 0 123 10 249 0 125 6 254 0 128 10 249 0 129 6 254 0 135 6 254 0 144 12 157 1 34 10 249 1 37 6 254 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 14 33 1 32 4 62 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 14 37 1 32 4 62 1 141] 
#[0 14 41 0 142] 
#[0 7 2 0 3 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 33 0 34 0 35 0 40 0 42 0 44 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 105 0 106 0 109 0 110 0 115 0 116 0 118 0 120 0 123 0 125 0 128 0 129 0 135 0 144 1 141] 
#[1 7 6 0 3 10 249 0 18 7 6 0 22 10 249 0 23 7 6 0 24 7 6 0 25 10 249 0 26 7 6 0 27 7 6 0 28 7 6 0 29 10 153 0 33 7 6 0 34 10 157 0 35 10 249 0 40 7 6 0 42 10 249 0 44 7 6 0 46 10 249 0 47 10 249 0 49 7 6 0 53 7 6 0 54 10 249 0 64 7 6 0 67 10 249 0 69 10 185 0 72 7 6 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 7 6 0 93 7 6 0 94 7 6 0 96 7 6 0 97 7 6 0 98 7 6 0 99 10 249 0 105 10 249 0 106 7 6 0 109 10 249 0 110 10 249 0 115 10 249 0 116 7 6 0 118 7 6 0 120 7 6 0 123 10 249 0 125 7 6 0 128 10 249 0 129 7 6 0 135 7 6 0 144 12 157 1 34 10 249 1 37 7 6 1 141] 
#[1 7 10 0 3 10 249 0 18 7 10 0 22 10 249 0 23 7 10 0 24 7 10 0 25 10 249 0 26 7 10 0 27 7 10 0 28 7 10 0 29 10 153 0 33 7 10 0 34 10 157 0 35 10 249 0 40 7 10 0 42 10 249 0 44 7 10 0 46 10 249 0 47 10 249 0 49 7 10 0 53 7 10 0 54 10 249 0 64 7 10 0 67 10 249 0 69 10 185 0 72 7 10 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 7 10 0 93 7 10 0 94 7 10 0 96 7 10 0 97 7 10 0 98 7 10 0 99 10 249 0 105 10 249 0 106 7 10 0 109 10 249 0 110 10 249 0 115 10 249 0 116 7 10 0 118 7 10 0 120 7 10 0 123 10 249 0 125 7 10 0 128 10 249 0 129 7 10 0 135 7 10 0 144 12 157 1 34 10 249 1 37 7 10 1 141] 
#[0 7 14 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 50 4 62 0 53 4 62 0 54 4 62 0 58 4 62 0 63 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 14 45 1 32 4 62 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 50 4 62 0 53 4 62 0 54 4 62 0 58 4 62 0 63 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 14 49 1 32 4 62 1 141] 
#[0 7 18 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 7 22 0 3 10 249 0 18 7 22 0 22 10 249 0 23 7 22 0 24 7 22 0 25 10 249 0 26 7 22 0 27 7 22 0 28 7 22 0 29 10 153 0 33 7 22 0 34 10 157 0 35 10 249 0 40 7 22 0 42 10 249 0 44 7 22 0 46 10 249 0 47 10 249 0 49 7 22 0 50 7 22 0 53 7 22 0 54 7 22 0 58 7 22 0 63 10 249 0 64 7 22 0 67 10 249 0 69 10 185 0 72 7 22 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 7 22 0 93 7 22 0 94 7 22 0 96 7 22 0 97 7 22 0 98 7 22 0 99 10 249 0 105 10 249 0 106 7 22 0 109 10 249 0 110 10 249 0 115 10 249 0 116 7 22 0 118 7 22 0 120 7 22 0 123 10 249 0 125 7 22 0 128 10 249 0 129 7 22 0 135 7 22 0 144 12 157 1 34 10 249 1 37 7 22 1 141] 
#[0 7 26 0 9 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[1 14 53 0 31 14 57 0 35 14 61 0 59 14 65 0 61 14 69 0 78 14 73 0 101 14 77 0 102 14 81 0 117 14 85 0 132 14 89 0 133 14 93 0 142 14 97 1 22 14 101 1 23 14 105 1 24 14 109 1 25 14 113 1 26 14 117 1 27 14 121 1 29] 
#[0 14 125 0 142] 
#[1 14 129 0 32 3 74 0 142 14 129 1 36] 
#[1 14 137 0 32 14 133 0 61 3 74 0 142 14 137 1 36] 
#[0 7 30 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 14 141 0 32 3 74 0 142 14 141 1 36] 
#[1 14 149 0 32 14 145 0 61 3 74 0 142 14 149 1 36] 
#[0 7 34 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 14 153 0 142] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 14 157 0 142 4 225 1 134] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 14 161 0 142 4 225 1 134] 
#[0 7 38 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 14 165 0 144] 
#[0 7 42 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 50 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 14 169 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[0 7 46 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 50 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 54 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 58 0 42 0 50 0 63] 
#[0 7 62 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 66 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 70 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 5 161 0 46 5 165 0 53 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 169 1 35 14 173 1 73 3 73 1 74] 
#[0 7 74 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 78 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 5 161 0 46 5 165 0 53 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 173 1 35 14 177 1 73 3 73 1 74] 
#[0 7 82 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 86 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 90 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 14 181 1 73 3 73 1 74] 
#[0 7 94 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 98 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 102 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 14 185 1 73 3 73 1 74] 
#[0 7 106 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 110 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 5 161 0 46 5 165 0 53 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 185 1 35 14 189 1 73 3 73 1 74] 
#[0 7 114 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 118 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 7 122 0 42 6 93 0 142] 
#[0 7 126 1 141] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 73 0 33 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 3 86 0 142 14 193 0 232 4 225 1 134] 
#[1 7 130 0 42 6 93 0 142] 
#[0 7 134 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 7 138 0 41 0 42 0 142] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 14 197 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[0 7 142 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 7 146 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[0 7 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 7 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[0 14 201 0 38] 
#[1 7 158 0 42 7 158 0 51 6 93 0 142] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 7 162 0 41 7 162 0 42 7 162 0 43 7 162 0 50 7 162 0 51 4 69 0 60 7 162 0 63 4 69 0 66 4 69 0 74 7 162 0 82 4 69 0 84 4 69 0 113 4 69 0 114 7 162 0 126 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 7 162 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134 7 162 1 141] 
#[1 7 166 0 5 0 222 0 17 0 222 0 135 7 166 0 137] 
#[0 7 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 1 141] 
#[1 3 78 0 3 3 78 0 5 3 78 0 10 3 78 0 11 3 78 0 15 3 78 0 17 3 78 0 18 3 78 0 22 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 29 3 78 0 31 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 38 3 78 0 40 3 78 0 41 3 78 0 42 3 78 0 43 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 50 3 78 0 51 3 78 0 53 3 78 0 54 3 78 0 58 3 78 0 59 3 78 0 60 3 78 0 61 3 78 0 63 3 78 0 64 3 78 0 67 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 77 3 78 0 78 3 78 0 81 3 78 0 82 3 78 0 86 3 78 0 87 3 78 0 91 3 78 0 92 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 3 78 0 99 3 78 0 101 3 78 0 102 3 78 0 105 3 78 0 106 3 78 0 109 3 78 0 110 3 78 0 115 3 78 0 116 3 78 0 117 3 78 0 118 3 78 0 120 3 78 0 123 3 78 0 125 3 78 0 126 3 78 0 128 3 78 0 129 3 78 0 132 3 78 0 133 3 78 0 135 3 78 0 136 3 78 0 137 3 78 0 142 3 78 0 144 14 205 1 31 3 78 1 141] 
#[0 7 174 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 1 141] 
#[1 4 229 0 17 4 233 0 135 14 209 0 142] 
#[0 7 178 0 3 0 5] 
#[1 7 182 0 3 14 213 0 5] 
#[0 7 186 0 5 0 136] 
#[1 5 5 0 9 1 34 0 81 14 217 1 16] 
#[1 7 190 0 3 7 190 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 190 0 42 2 41 0 54 2 45 0 73 7 190 0 93 2 49 0 94 2 53 0 96 7 190 0 97 7 190 0 98 7 190 0 99 7 190 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 9 177 0 175 9 177 0 181 9 177 0 244 9 177 0 245 2 85 0 246 1 237 0 247 9 177 0 249 9 177 0 250 9 177 1 6 9 177 1 7 9 177 1 8 9 177 1 9 9 177 1 10 9 177 1 11 9 177 1 13 9 177 1 14 9 177 1 15 9 177 1 17 2 137 1 18 9 177 1 19 2 145 1 41 9 177 1 49 2 153 1 50 9 177 1 52 2 161 1 53 9 177 1 55 2 169 1 56 9 177 1 57 2 177 1 58 9 177 1 60 9 177 1 61 9 177 1 63 2 193 1 64 9 177 1 65 2 201 1 66 9 177 1 68 9 177 1 69 9 177 1 71 2 217 1 72 9 177 1 77 2 225 1 78] 
#[1 7 194 0 3 7 194 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 194 0 42 2 41 0 54 2 45 0 73 7 194 0 93 2 49 0 94 2 53 0 96 7 194 0 97 7 194 0 98 7 194 0 99 7 194 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 9 177 0 175 9 177 0 181 9 177 0 244 9 177 0 245 2 85 0 246 1 237 0 247 9 177 0 249 9 177 0 250 9 177 1 6 9 177 1 7 9 177 1 8 9 177 1 9 9 177 1 10 9 177 1 11 9 177 1 13 9 177 1 14 9 177 1 15 9 177 1 17 2 137 1 18 9 177 1 19 2 145 1 41 9 177 1 49 2 153 1 50 9 177 1 52 2 161 1 53 9 177 1 55 2 169 1 56 9 177 1 57 2 177 1 58 9 177 1 60 9 177 1 61 9 177 1 63 2 193 1 64 9 177 1 65 2 201 1 66 9 177 1 68 9 177 1 69 9 177 1 71 2 217 1 72 9 177 1 77 2 225 1 78] 
#[1 7 198 0 3 7 198 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 198 0 42 2 41 0 54 2 45 0 73 7 198 0 93 2 49 0 94 2 53 0 96 7 198 0 97 7 198 0 98 7 198 0 99 7 198 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 9 177 0 175 9 177 0 181 9 177 0 244 9 177 0 245 2 85 0 246 1 237 0 247 9 177 0 249 9 177 0 250 9 177 1 6 9 177 1 7 9 177 1 8 9 177 1 9 9 177 1 10 9 177 1 11 9 177 1 13 9 177 1 14 9 177 1 15 9 177 1 17 2 137 1 18 9 177 1 19 2 145 1 41 9 177 1 49 2 153 1 50 9 177 1 52 2 161 1 53 9 177 1 55 2 169 1 56 9 177 1 57 2 177 1 58 9 177 1 60 9 177 1 61 9 177 1 63 2 193 1 64 9 177 1 65 2 201 1 66 9 177 1 68 9 177 1 69 9 177 1 71 2 217 1 72 9 177 1 77 2 225 1 78] 
#[1 7 202 0 3 7 202 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 202 0 42 2 41 0 54 2 45 0 73 7 202 0 93 2 49 0 94 2 53 0 96 7 202 0 97 7 202 0 98 7 202 0 99 7 202 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 9 177 0 175 9 177 0 181 9 177 0 244 9 177 0 245 2 85 0 246 1 237 0 247 9 177 0 249 9 177 0 250 9 177 1 6 9 177 1 7 9 177 1 8 9 177 1 9 9 177 1 10 9 177 1 11 9 177 1 13 9 177 1 14 9 177 1 15 9 177 1 17 2 137 1 18 9 177 1 19 2 145 1 41 9 177 1 49 2 153 1 50 9 177 1 52 2 161 1 53 9 177 1 55 2 169 1 56 9 177 1 57 2 177 1 58 9 177 1 60 9 177 1 61 9 177 1 63 2 193 1 64 9 177 1 65 2 201 1 66 9 177 1 68 9 177 1 69 9 177 1 71 2 217 1 72 9 177 1 77 2 225 1 78] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 14 221 0 243] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 14 225 0 243] 
#[0 7 206 0 33 0 92 0 142] 
#[0 7 210 0 2 0 18 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 56 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 111 0 118 0 120 0 123 0 128 0 135 0 142 0 144] 
#[0 14 229 0 52] 
#[0 7 214 0 2 0 18 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 56 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 111 0 118 0 120 0 123 0 128 0 135 0 142 0 144] 
#[0 7 218 0 2 0 18 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 56 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 111 0 118 0 120 0 123 0 128 0 135 0 142 0 144] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 7 222 0 33 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 7 222 0 92 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 7 222 0 142 2 230 0 144 14 233 0 233 7 113 0 243] 
#[0 0 202 0 3 0 5 0 6 0 12] 
#[0 0 210 0 3 0 5 0 6 0 12] 
#[1 7 226 0 3 7 226 0 5 4 197 0 6 0 150 0 12 4 201 0 193 4 81 0 194] 
#[1 14 237 0 3 14 241 0 5] 
#[1 4 10 0 42 4 10 0 93 4 10 0 97 4 10 0 98 4 10 0 99 4 10 0 118 14 245 0 234] 
#[0 14 249 0 142] 
#[0 14 253 0 142] 
#[1 12 77 0 2 13 225 0 18 5 98 0 27 5 98 0 28 5 98 0 29 5 98 0 34 5 98 0 42 5 98 0 54 5 98 0 73 5 98 0 93 5 98 0 94 5 98 0 96 5 98 0 97 5 98 0 98 5 98 0 99 13 225 0 111 5 98 0 118 5 98 0 120 5 98 0 123 5 98 0 128 5 98 0 135 5 98 0 144 13 225 0 230 15 1 0 240] 
#[1 6 242 0 27 6 242 0 42 6 242 0 54 6 242 0 73 6 242 0 94 6 242 0 96 14 13 0 135 15 5 1 3] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 15 9 0 218 15 9 1 124 1 213 1 129 1 217 1 140] 
#[1 7 230 0 27 7 230 0 42 7 230 0 54 7 230 0 73 7 230 0 94 7 230 0 96 15 13 1 4] 
#[0 15 17 0 142] 
#[1 4 217 0 2 7 234 0 3 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 7 234 0 136 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 7 234 0 142 4 225 1 134 7 234 1 141] 
#[0 7 238 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 7 242 0 3 10 249 0 18 7 242 0 22 10 249 0 23 7 242 0 24 7 242 0 25 10 249 0 26 7 242 0 27 7 242 0 28 7 242 0 29 10 153 0 33 7 242 0 34 10 157 0 35 10 249 0 40 7 242 0 42 10 249 0 44 7 242 0 46 10 249 0 47 10 249 0 49 7 242 0 53 7 242 0 54 10 249 0 64 7 242 0 67 10 249 0 69 10 185 0 72 7 242 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 7 242 0 93 7 242 0 94 7 242 0 96 7 242 0 97 7 242 0 98 7 242 0 99 10 249 0 105 10 249 0 106 7 242 0 109 10 249 0 110 10 249 0 115 10 249 0 116 7 242 0 118 7 242 0 120 7 242 0 123 10 249 0 125 7 242 0 128 10 249 0 129 7 242 0 135 7 242 0 144 12 157 1 34 10 249 1 37 7 242 1 141] 
#[1 7 246 0 3 10 249 0 18 7 246 0 22 10 249 0 23 7 246 0 24 7 246 0 25 10 249 0 26 7 246 0 27 7 246 0 28 7 246 0 29 10 153 0 33 7 246 0 34 10 157 0 35 10 249 0 40 7 246 0 42 10 249 0 44 7 246 0 46 10 249 0 47 10 249 0 49 7 246 0 53 7 246 0 54 10 249 0 64 7 246 0 67 10 249 0 69 10 185 0 72 7 246 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 7 246 0 93 7 246 0 94 7 246 0 96 7 246 0 97 7 246 0 98 7 246 0 99 10 249 0 105 10 249 0 106 7 246 0 109 10 249 0 110 10 249 0 115 10 249 0 116 7 246 0 118 7 246 0 120 7 246 0 123 10 249 0 125 7 246 0 128 10 249 0 129 7 246 0 135 7 246 0 144 12 157 1 34 10 249 1 37 7 246 1 141] 
#[1 4 62 0 3 4 62 0 18 4 62 0 22 4 62 0 23 4 62 0 24 4 62 0 25 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 29 4 62 0 33 4 62 0 34 4 62 0 35 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 46 4 62 0 47 4 62 0 49 4 62 0 53 4 62 0 54 4 62 0 64 4 62 0 67 4 62 0 69 4 62 0 72 4 62 0 73 4 62 0 77 4 62 0 86 4 62 0 87 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 0 99 4 62 0 105 4 62 0 106 4 62 0 109 4 62 0 110 4 62 0 115 4 62 0 116 4 62 0 118 4 62 0 120 4 62 0 123 4 62 0 125 4 62 0 128 4 62 0 129 4 62 0 135 4 62 0 144 15 21 1 32 4 62 1 141] 
#[1 7 250 0 3 10 249 0 18 7 250 0 22 10 249 0 23 7 250 0 24 7 250 0 25 10 249 0 26 7 250 0 27 7 250 0 28 7 250 0 29 10 153 0 33 7 250 0 34 10 157 0 35 10 249 0 40 7 250 0 42 10 249 0 44 7 250 0 46 10 249 0 47 10 249 0 49 7 250 0 50 7 250 0 53 7 250 0 54 7 250 0 58 7 250 0 63 10 249 0 64 7 250 0 67 10 249 0 69 10 185 0 72 7 250 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 7 250 0 93 7 250 0 94 7 250 0 96 7 250 0 97 7 250 0 98 7 250 0 99 10 249 0 105 10 249 0 106 7 250 0 109 10 249 0 110 10 249 0 115 10 249 0 116 7 250 0 118 7 250 0 120 7 250 0 123 10 249 0 125 7 250 0 128 10 249 0 129 7 250 0 135 7 250 0 144 12 157 1 34 10 249 1 37 7 250 1 141] 
#[1 7 254 0 3 10 249 0 18 7 254 0 22 10 249 0 23 7 254 0 24 7 254 0 25 10 249 0 26 7 254 0 27 7 254 0 28 7 254 0 29 10 153 0 33 7 254 0 34 10 157 0 35 10 249 0 40 7 254 0 42 10 249 0 44 7 254 0 46 10 249 0 47 10 249 0 49 7 254 0 50 7 254 0 53 7 254 0 54 7 254 0 58 7 254 0 63 10 249 0 64 7 254 0 67 10 249 0 69 10 185 0 72 7 254 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 7 254 0 93 7 254 0 94 7 254 0 96 7 254 0 97 7 254 0 98 7 254 0 99 10 249 0 105 10 249 0 106 7 254 0 109 10 249 0 110 10 249 0 115 10 249 0 116 7 254 0 118 7 254 0 120 7 254 0 123 10 249 0 125 7 254 0 128 10 249 0 129 7 254 0 135 7 254 0 144 12 157 1 34 10 249 1 37 7 254 1 141] 
#[1 2 233 0 2 1 81 0 16 8 2 0 31 8 2 0 35 8 2 0 59 8 2 0 61 8 2 0 78 1 93 0 79 8 2 0 101 8 2 0 102 8 2 0 117 8 2 0 132 8 2 0 133 0 185 0 135 1 121 0 140 1 125 0 141 8 2 0 142 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 15 25 0 218 15 25 1 124 1 213 1 129 1 217 1 140] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 15 29 0 218 15 29 1 124 1 213 1 129 1 217 1 140] 
#[1 15 33 0 144 15 37 1 28] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 15 41 0 218 15 41 1 124 1 213 1 129 1 217 1 140] 
#[0 8 6 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 15 45 1 115 1 29 1 116 15 45 1 117 15 45 1 118 1 41 1 119 15 45 1 120 1 49 1 121 15 45 1 122 1 57 1 123 15 45 1 124 1 65 1 129 15 45 1 130 1 73 1 140] 
#[0 15 49 0 35] 
#[0 15 53 0 144] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 135 0 189 0 140 0 193 0 141 3 77 0 144 0 213 0 146 1 65 0 148 0 209 0 152 0 213 0 217 15 57 1 115 1 29 1 116 15 57 1 117 15 57 1 118 1 41 1 119 15 57 1 120 1 49 1 121 15 57 1 122 1 57 1 123 15 57 1 124 1 65 1 129 15 57 1 130 1 73 1 140] 
#[0 15 61 0 35] 
#[1 8 10 0 3 8 10 0 25 8 10 0 27 8 10 0 28 8 10 0 29 15 65 0 31 8 10 0 34 8 10 0 42 8 10 0 54 8 10 0 73 8 10 0 93 8 10 0 94 8 10 0 96 8 10 0 97 8 10 0 98 8 10 0 99 8 10 0 118 8 10 0 120 8 10 0 123 8 10 0 128 8 10 0 135 8 10 0 144 15 69 1 30 8 10 1 141] 
#[0 8 14 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 8 18 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 8 22 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 8 26 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 8 30 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 8 34 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 8 38 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 8 42 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 15 73 0 142] 
#[0 15 77 0 146] 
#[0 15 81 0 142] 
#[0 15 85 0 142] 
#[0 15 89 0 146] 
#[0 15 93 0 142] 
#[0 8 46 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 8 50 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 8 54 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 8 58 0 5 0 142] 
#[1 8 62 0 42 8 62 0 50 8 62 0 63 6 93 0 142] 
#[0 8 66 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 70 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 74 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 78 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 82 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 15 97 0 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 15 101 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 15 101 1 112 15 101 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140 0 14 1 141] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 130 0 181 0 131 0 185 0 135 0 189 0 140 0 193 0 141 0 14 0 142 0 197 0 144 0 201 0 146 1 65 0 148 0 209 0 152 0 213 0 217 15 105 1 81 3 93 1 82 0 221 1 83 0 225 1 84 0 229 1 85 0 233 1 86 0 237 1 87 0 241 1 88 0 245 1 90 0 249 1 96 0 253 1 105 1 1 1 107 1 5 1 108 1 9 1 111 3 93 1 112 3 93 1 113 1 21 1 114 1 25 1 115 1 29 1 116 1 25 1 117 1 25 1 118 1 41 1 119 1 25 1 120 1 49 1 121 1 25 1 122 1 57 1 123 1 25 1 124 1 65 1 129 1 25 1 130 1 73 1 140] 
#[1 8 86 0 3 8 86 0 5 8 86 0 10 8 86 0 11 8 86 0 15 8 86 0 17 10 249 0 18 8 86 0 22 10 249 0 23 8 86 0 24 8 86 0 25 10 249 0 26 8 86 0 27 8 86 0 28 8 86 0 29 8 86 0 31 1 99 0 33 8 86 0 34 1 103 0 35 8 86 0 38 10 249 0 40 8 86 0 41 8 86 0 42 8 86 0 43 10 249 0 44 8 86 0 45 5 161 0 46 10 249 0 47 10 249 0 49 8 86 0 50 8 86 0 51 5 165 0 53 8 86 0 54 8 86 0 58 8 86 0 59 8 86 0 60 8 86 0 61 8 86 0 63 10 249 0 64 8 86 0 67 10 249 0 69 10 185 0 72 8 86 0 73 10 249 0 77 8 86 0 78 8 86 0 81 8 86 0 82 10 249 0 86 10 249 0 87 10 249 0 91 1 107 0 92 8 86 0 93 8 86 0 94 8 86 0 96 8 86 0 97 8 86 0 98 8 86 0 99 8 86 0 101 8 86 0 102 10 249 0 105 10 249 0 106 8 86 0 109 10 249 0 110 10 249 0 115 10 249 0 116 8 86 0 117 8 86 0 118 8 86 0 120 8 86 0 123 10 249 0 125 8 86 0 126 8 86 0 128 10 249 0 129 8 86 0 132 8 86 0 133 8 86 0 135 8 86 0 136 8 86 0 137 8 86 0 142 8 86 0 144 10 237 1 33 10 237 1 34 10 237 1 35 10 249 1 37 8 86 1 141] 
#[0 8 90 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 45 0 50 0 51 0 54 0 58 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 15 109 0 145] 
#[0 15 113 0 81] 
#[1 8 94 0 3 8 94 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 8 94 0 42 2 41 0 54 2 45 0 73 8 94 0 93 2 49 0 94 2 53 0 96 8 94 0 97 8 94 0 98 8 94 0 99 8 94 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 9 177 0 175 9 177 0 181 9 177 0 244 9 177 0 245 2 85 0 246 1 237 0 247 9 177 0 249 9 177 0 250 9 177 1 6 9 177 1 7 9 177 1 8 9 177 1 9 9 177 1 10 9 177 1 11 9 177 1 13 9 177 1 14 9 177 1 15 9 177 1 17 2 137 1 18 9 177 1 19 2 145 1 41 9 177 1 49 2 153 1 50 9 177 1 52 2 161 1 53 9 177 1 55 2 169 1 56 9 177 1 57 2 177 1 58 9 177 1 60 9 177 1 61 9 177 1 63 2 193 1 64 9 177 1 65 2 201 1 66 9 177 1 68 9 177 1 69 9 177 1 71 2 217 1 72 9 177 1 77 2 225 1 78] 
#[1 8 98 0 3 8 98 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 8 98 0 42 2 41 0 54 2 45 0 73 8 98 0 93 2 49 0 94 2 53 0 96 8 98 0 97 8 98 0 98 8 98 0 99 8 98 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 135 1 249 0 144 9 177 0 175 9 177 0 181 9 177 0 244 9 177 0 245 2 85 0 246 1 237 0 247 9 177 0 249 9 177 0 250 9 177 1 6 9 177 1 7 9 177 1 8 9 177 1 9 9 177 1 10 9 177 1 11 9 177 1 13 9 177 1 14 9 177 1 15 9 177 1 17 2 137 1 18 9 177 1 19 2 145 1 41 9 177 1 49 2 153 1 50 9 177 1 52 2 161 1 53 9 177 1 55 2 169 1 56 9 177 1 57 2 177 1 58 9 177 1 60 9 177 1 61 9 177 1 63 2 193 1 64 9 177 1 65 2 201 1 66 9 177 1 68 9 177 1 69 9 177 1 71 2 217 1 72 9 177 1 77 2 225 1 78] 
#[1 4 173 0 144 15 117 0 242] 
#[1 4 10 0 42 4 10 0 93 4 10 0 97 4 10 0 98 4 10 0 99 4 10 0 118 15 121 0 234] 
#[0 8 102 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 142 0 144] 
#[1 13 233 0 104 13 237 0 145 15 125 0 197] 
#[1 15 129 0 42 12 9 0 93 12 13 0 97 12 17 0 98 12 21 0 99 12 25 0 118 12 33 0 235 12 33 0 236 12 33 0 237 12 33 0 238 12 33 0 239] 
#[0 8 106 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 8 110 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 15 133 0 233 7 113 0 243] 
#[1 7 230 0 27 7 230 0 42 7 230 0 54 7 230 0 73 7 230 0 94 7 230 0 96 15 137 1 4] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 15 141 0 136 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 15 145 0 27 15 149 0 42 5 33 0 54 2 45 0 73 5 41 0 94 2 53 0 96 15 153 1 5 15 153 1 6 15 153 1 7 15 153 1 10 15 153 1 11 15 153 1 13 15 153 1 14 15 153 1 15 15 153 1 17 2 137 1 18 15 153 1 19 15 153 1 55 2 169 1 56 15 153 1 57 2 177 1 58 15 153 1 60 15 153 1 61 15 153 1 63 2 193 1 64 15 153 1 65 2 201 1 66 15 153 1 68 15 153 1 69 15 153 1 71 2 217 1 72] 
#[0 8 114 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[1 8 118 0 3 10 249 0 18 8 118 0 22 10 249 0 23 8 118 0 24 8 118 0 25 10 249 0 26 8 118 0 27 8 118 0 28 8 118 0 29 10 153 0 33 8 118 0 34 10 157 0 35 10 249 0 40 8 118 0 42 10 249 0 44 8 118 0 46 10 249 0 47 10 249 0 49 8 118 0 53 8 118 0 54 10 249 0 64 8 118 0 67 10 249 0 69 10 185 0 72 8 118 0 73 10 249 0 77 10 249 0 86 10 249 0 87 10 249 0 91 10 249 0 92 8 118 0 93 8 118 0 94 8 118 0 96 8 118 0 97 8 118 0 98 8 118 0 99 10 249 0 105 10 249 0 106 8 118 0 109 10 249 0 110 10 249 0 115 10 249 0 116 8 118 0 118 8 118 0 120 8 118 0 123 10 249 0 125 8 118 0 128 10 249 0 129 8 118 0 135 8 118 0 144 12 157 1 34 10 249 1 37 8 118 1 141] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 122 0 31 8 122 0 35 4 225 0 37 8 122 0 59 4 225 0 60 8 122 0 61 4 225 0 66 4 225 0 74 8 122 0 78 4 225 0 84 8 122 0 101 8 122 0 102 4 225 0 113 4 225 0 114 8 122 0 117 8 122 0 132 8 122 0 133 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 8 122 0 142 4 225 1 134] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 126 0 31 8 126 0 35 4 225 0 37 8 126 0 59 4 225 0 60 8 126 0 61 4 225 0 66 4 225 0 74 8 126 0 78 4 225 0 84 8 126 0 101 8 126 0 102 4 225 0 113 4 225 0 114 8 126 0 117 8 126 0 132 8 126 0 133 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 8 126 0 142 4 225 1 134] 
#[0 8 130 0 5 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[1 15 165 0 5 8 134 0 31 8 134 0 35 8 134 0 59 8 134 0 61 8 134 0 78 8 134 0 101 8 134 0 102 8 134 0 117 8 134 0 132 8 134 0 133 8 134 0 142] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 138 0 31 8 138 0 35 4 225 0 37 8 138 0 59 4 225 0 60 8 138 0 61 4 225 0 66 4 225 0 74 8 138 0 78 4 225 0 84 8 138 0 101 8 138 0 102 4 225 0 113 4 225 0 114 8 138 0 117 8 138 0 132 8 138 0 133 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 8 138 0 142 4 225 1 134] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 8 142 0 31 8 142 0 35 4 69 0 37 8 142 0 59 4 69 0 60 8 142 0 61 4 69 0 66 4 69 0 74 8 142 0 78 4 69 0 84 8 142 0 101 8 142 0 102 4 69 0 113 4 69 0 114 8 142 0 117 8 142 0 132 8 142 0 133 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 8 142 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 15 169 0 218 15 169 1 124 1 213 1 129 1 217 1 140] 
#[0 8 146 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 8 150 0 31 8 150 0 35 4 69 0 37 8 150 0 59 4 69 0 60 8 150 0 61 4 69 0 66 4 69 0 74 8 150 0 78 4 69 0 84 8 150 0 101 8 150 0 102 4 69 0 113 4 69 0 114 8 150 0 117 8 150 0 132 8 150 0 133 4 69 0 134 4 41 0 135 4 69 0 137 4 69 0 138 4 69 0 140 4 69 0 141 8 150 0 142 4 61 0 143 4 65 1 127 4 69 1 133 4 69 1 134] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 1 189 0 217 15 173 0 218 15 173 1 124 1 213 1 129 1 217 1 140] 
#[0 15 177 0 142] 
#[0 8 154 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 8 158 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 15 181 0 32 3 74 0 142 15 181 1 36] 
#[0 8 162 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 8 166 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 15 185 0 32 3 74 0 142 15 185 1 36] 
#[0 8 170 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 8 174 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128 0 144] 
#[0 8 178 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 142 1 141] 
#[1 8 182 0 41 8 182 0 42 8 182 0 51 8 182 0 82 6 93 0 142] 
#[0 8 186 0 3 0 5] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 15 189 0 211 15 193 0 212 15 197 0 213 15 201 0 214 1 189 0 217 15 205 0 218 15 205 1 124 1 213 1 129 1 217 1 140] 
#[1 12 77 0 2 7 89 0 6 5 98 0 27 5 98 0 28 5 98 0 29 5 98 0 33 5 98 0 34 5 98 0 42 5 98 0 54 5 98 0 73 5 98 0 92 5 98 0 93 5 98 0 94 5 98 0 96 5 98 0 97 5 98 0 98 5 98 0 99 5 98 0 118 5 98 0 120 5 98 0 123 5 98 0 128 5 98 0 135 5 98 0 142 5 98 0 144 15 209 0 240] 
#[1 15 213 0 42 12 9 0 93 12 13 0 97 12 17 0 98 12 21 0 99 12 25 0 118 12 33 0 235 12 33 0 236 12 33 0 237 12 33 0 238 12 33 0 239] 
#[1 8 190 0 3 8 190 0 5 4 197 0 6 0 150 0 12 4 201 0 193 4 81 0 194] 
#[0 8 194 0 33 0 92 0 142] 
#[1 4 10 0 42 4 10 0 93 4 10 0 97 4 10 0 98 4 10 0 99 4 10 0 118 15 217 0 234] 
#[1 15 145 0 27 15 221 0 42 5 33 0 54 2 45 0 73 5 41 0 94 2 53 0 96 15 153 1 5 15 153 1 6 15 153 1 7 15 153 1 10 15 153 1 11 15 153 1 13 15 153 1 14 15 153 1 15 15 153 1 17 2 137 1 18 15 153 1 19 15 153 1 55 2 169 1 56 15 153 1 57 2 177 1 58 15 153 1 60 15 153 1 61 15 153 1 63 2 193 1 64 15 153 1 65 2 201 1 66 15 153 1 68 15 153 1 69 15 153 1 71 2 217 1 72] 
#[0 8 198 0 27 0 42 0 54 0 73 0 94 0 96] 
#[1 5 33 0 54 2 45 0 73 5 37 0 83 5 41 0 94 2 53 0 96 5 45 1 18 5 49 1 56 5 53 1 58 5 57 1 64 5 61 1 66] 
#[0 8 202 0 33 0 92 0 142] 
#[0 8 206 0 27 0 42 0 54 0 73 0 94 0 96] 
#[0 8 210 0 27 0 42 0 54 0 73 0 94 0 96] 
#[0 8 214 0 27 0 42 0 54 0 73 0 94 0 96] 
#[0 15 225 0 144] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 218 0 31 8 218 0 35 4 225 0 37 8 218 0 59 4 225 0 60 8 218 0 61 4 225 0 66 4 225 0 74 8 218 0 78 4 225 0 84 8 218 0 101 8 218 0 102 4 225 0 113 4 225 0 114 8 218 0 117 8 218 0 132 8 218 0 133 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 8 218 0 142 4 225 1 134] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 222 0 31 8 222 0 35 4 225 0 37 8 222 0 59 4 225 0 60 8 222 0 61 4 225 0 66 4 225 0 74 8 222 0 78 4 225 0 84 8 222 0 101 8 222 0 102 4 225 0 113 4 225 0 114 8 222 0 117 8 222 0 132 8 222 0 133 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 8 222 0 142 4 225 1 134] 
#[0 8 226 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 135 0 144 1 141] 
#[0 15 229 0 142] 
#[0 15 233 0 142] 
#[1 2 182 0 3 2 182 0 42 15 237 0 142 15 241 1 97] 
#[0 8 230 0 3 0 42 0 142] 
#[1 15 245 0 5 15 249 0 9] 
#[0 8 234 0 5 0 9] 
#[1 4 217 0 2 4 225 0 4 8 238 0 5 4 221 0 6 4 225 0 8 8 238 0 9 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 134 4 225 0 137 4 225 0 138 4 225 0 140 4 225 0 141 4 225 1 134] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 8 242 0 33 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 8 242 0 92 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 8 242 0 142 2 230 0 144 15 253 0 233 7 113 0 243] 
#[0 8 246 0 33 0 92 0 142] 
#[1 16 1 0 42 12 9 0 93 12 13 0 97 12 17 0 98 12 21 0 99 12 25 0 118 12 33 0 235 12 33 0 236 12 33 0 237 12 33 0 238 12 33 0 239] 
#[0 8 250 0 33 0 92 0 142] 
#[0 8 254 0 5 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 132 0 133 0 142] 
#[0 9 2 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[0 9 6 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 132 0 133 0 135 0 136 0 137 0 142 0 144 1 141] 
#[1 2 233 0 2 3 242 0 3 1 81 0 16 3 242 0 42 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 16 5 0 212 15 197 0 213 15 201 0 214 1 189 0 217 15 205 0 218 15 205 1 124 1 213 1 129 1 217 1 140] 
#[0 9 10 0 3 0 42] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 135 1 121 0 140 1 125 0 141 2 237 0 145 1 189 0 146 1 213 0 148 1 141 0 152 16 9 0 214 1 189 0 217 15 205 0 218 15 205 1 124 1 213 1 129 1 217 1 140] 
#[0 16 13 0 2] 
#[1 4 10 0 42 4 10 0 93 4 10 0 97 4 10 0 98 4 10 0 99 4 10 0 118 16 17 0 234] 
#[0 9 14 0 33 0 92 0 142] 
#[0 9 18 0 3 0 42 0 142] 
#[0 9 22 0 5 0 9] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 135 2 230 0 144 16 21 0 208 7 109 0 233 7 113 0 243] 
#[1 16 25 0 42 12 9 0 93 12 13 0 97 12 17 0 98 12 21 0 99 12 25 0 118 12 33 0 235 12 33 0 236 12 33 0 237 12 33 0 238 12 33 0 239] 
#[0 16 29 0 3] 
#[0 9 26 0 33 0 92 0 142] 
#[0 9 30 0 3 0 42 0 142]
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
				or: [ #('on' 'mem' 'ReadOnly' 'WriteOnly' 'Method')
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
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
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
DelphiParser >> reduceActionForExternalMethodModifier10: nodes [
	| result |
	result := DelphiMethodModifierNode new.
	result modifier: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier1: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result delayed: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier6: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result library: (nodes at: 2).
	result delayed: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier7: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result library: (nodes at: 2).
	result indexToken: (nodes at: 3).
	result index: (nodes at: 4).
	result delayed: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier8: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result library: (nodes at: 2).
	result nameToken: (nodes at: 3).
	result methodName: (nodes at: 4).
	result delayed: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForExternalMethodModifier9: nodes [
	| result |
	result := DelphiExternalMethodModifierNode new.
	result modifier: (nodes at: 1).
	result library: (nodes at: 2).
	result nameToken: (nodes at: 3).
	result methodName: (nodes at: 4).
	result indexToken: (nodes at: 5).
	result index: (nodes at: 6).
	result delayed: (nodes at: 7).
	result semicolon: (nodes at: 8).
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
DelphiParser >> reduceActionForForVariableExpression4: nodes [
	| result |
	result := DelphiForVariableNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 2).
	result type: (nodes at: 3).
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
	result accessToken: ((nodes at: 1) at: 1).
	result partial: ((nodes at: 1) at: 2).
	result interfaceToken: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result right: ((nodes at: 3) at: 4).
	result guid: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result components.
	result endToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForInterfaceType3: nodes [
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
	result accessToken: ((nodes at: 1) at: 1).
	result partial: ((nodes at: 1) at: 2).
	result classToken: (nodes at: 2).
	result addTokens: (nodes at: 3) to: result classAttributes.
	result left: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result superclasses.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result right: ((nodes at: 4) at: 4).
	result implicitClassSection: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result sections.
	result endToken: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNewClassType3: nodes [
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
DelphiParser >> reduceActionForNonExternalConstructorHeader3: nodes [
	| result |
	result := DelphiConstructorHeaderNode new.
	result constructorToken: (nodes at: 1).
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result right: ((nodes at: 2) at: 4).
	result addToken: (nodes at: 3) to: result semicolons.
	result addNodes: (nodes at: 4) to: result modifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
DelphiParser >> reduceActionForNonExternalConstructorHeader4: nodes [
	| result |
	result := DelphiConstructorHeaderNode new.
	result classToken: (nodes at: 1).
	result constructorToken: (nodes at: 2).
	result left: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result addTokens: ((nodes at: 3) at: 3) to: result semicolons.
	result right: ((nodes at: 3) at: 4).
	result addToken: (nodes at: 4) to: result semicolons.
	result addNodes: (nodes at: 5) to: result modifiers.
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
DelphiParser >> reduceActionForSimpleDefinedType12: nodes [
	| result |
	result := DelphiTypeTypeNode new.
	result typeToken: (nodes at: 1).
	result typeName: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result codePage: (nodes at: 4).
	result rightParen: (nodes at: 5).
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
DelphiParser >> reduceActionForTypeModifier5: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
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
