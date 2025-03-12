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
#[ 2 186 7 45] 
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
#[ 3 230 3 241] 
#[ 3 230 3 245] 
#[ 3 230 3 249] 
#[ 3 230 3 253] 
#[ 3 230 4 13] 
#[ 3 230 4 45] 
#[ 3 230 4 49] 
#[ 3 238 3 241] 
#[ 3 238 3 245] 
#[ 3 238 3 249] 
#[ 3 238 3 253] 
#[ 3 238 4 13] 
#[ 3 238 4 45] 
#[ 3 238 4 49] 
#[ 4 6 4 13] 
#[ 4 6 4 45] 
#[ 3 241 4 38] 
#[ 3 245 4 38] 
#[ 3 249 4 38] 
#[ 4 13 4 38] 
#[ 4 38 4 45] 
#[ 4 38 4 49] 
#[ 0 206 11 245] 
#[ 0 230 5 134] 
#[ 0 234 5 138] 
#[ 6 170 10 169] 
#[ 6 170 10 173] 
#[ 6 170 10 221] 
#[ 8 106 10 169] 
#[ 8 106 10 173] 
#[ 8 106 10 221]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2025-03-11T16:18:02.186244-05:00'
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
	| UsesModuleList "","" 'comma'+ UsesModule
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
	: Attributes? PropertyHeaderVars {{PropertyHeader}}
	;
PropertyHeaderVars
	: ""PROPERTY"" 'propertyToken' <identifier> 'name' PropertyArrayAccessors 'arrayAccessors' OptionalType PropertyValues <semicolon> 'semicolon' PropertyModifiers 'modifier'
	;
ClassPropertyHeader
	: Attributes? ""CLASS"" 'classToken' PropertyHeaderVars {{ClassPropertyHeader}}
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
	| ""VARARGS""
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
	#(170 0 #reduceActionForUsesList1: 5972993 false) 
	#(372 0 #reduceActionForBeforeAsm1: 33575937 false) 
	#(340 0 #reduceActionForStatement15: 29648911 false) 
	#(211 0 #nil 11906049 false) 
	#(301 0 #nil 24285185 false) 
	#(155 1 #reduceActionForFile2: 4301826 false) 
	#(155 1 #reduceActionForFile3: 4301827 false) 
	#(155 1 #reduceActionForFile4: 4301828 false) 
	#(155 1 #reduceActionForFile1: 4301825 false) 
	#(169 0 #nil 5858305 false) 
	#(167 1 #reduceActionForUnitFile2: 5470210 false) 
	#(332 0 #reduceActionForMethodVariables2: 28894210 false) 
	#(203 0 #reduceActionForOptionalArguments1: 10798081 false) 
	#(388 1 #reduceActionForInheritedFunctionCall4: 36584452 false) 
	#(363 1 #reduceActionForRaiseStatement2: 32526338 false) 
	#(381 1 #reduceActionForVariableExpression1: 35986433 false) 
	#(219 1 #liftFirstValue: 12598273 false) 
	#(387 1 #liftFirstValue: 36561921 false) 
	#(373 1 #reduceActionForExpression9: 33693705 false) 
	#(373 1 #reduceActionForExpression9: 33693703 false) 
	#(340 1 #reduceActionForStatement14: 29648910 false) 
	#(340 1 #reduceActionForStatement13: 29648909 false) 
	#(340 1 #reduceActionForStatement11: 29648907 false) 
	#(340 1 #reduceActionForStatement2: 29648898 false) 
	#(340 1 #reduceActionForStatement3: 29648899 false) 
	#(340 1 #reduceActionForStatement4: 29648900 false) 
	#(340 1 #reduceActionForStatement5: 29648901 false) 
	#(340 1 #reduceActionForStatement6: 29648902 false) 
	#(340 1 #reduceActionForStatement7: 29648903 false) 
	#(340 1 #reduceActionForStatement8: 29648904 false) 
	#(340 1 #reduceActionForStatement9: 29648905 false) 
	#(340 1 #reduceActionForStatement10: 29648906 false) 
	#(340 1 #liftFirstValue: 29648908 false) 
	#(370 1 #liftFirstValue: 33396738 false) 
	#(340 1 #liftFirstValue: 29648897 false) 
	#(373 1 #liftFirstValue: 33693699 false) 
	#(196 0 #reduceActionForInsideGeneric1: 9390081 true) 
	#(373 1 #liftFirstValue: 33693698 false) 
	#(373 1 #liftFirstValue: 33693719 false) 
	#(373 1 #liftFirstValue: 33693718 false) 
	#(373 1 #liftFirstValue: 33693717 false) 
	#(373 1 #liftFirstValue: 33693697 false) 
	#(373 1 #liftFirstValue: 33693714 false) 
	#(373 1 #reduceActionForExpression9: 33693704 false) 
	#(373 1 #liftFirstValue: 33693702 false) 
	#(373 1 #reduceActionForExpression9: 33693716 false) 
	#(221 0 #reduceActionForConstantArray2: 13680642 false) 
	#(254 1 #reduceActionForFileType2: 18542594 false) 
	#(211 1 #liftFirstValue: 11906050 false) 
	#(199 1 #reduceActionForVariableExpression1: 9693186 false) 
	#(220 1 #reduceActionForVariableExpression1: 12620803 false) 
	#(199 1 #reduceActionForVariableExpression1: 9693185 false) 
	#(220 1 #reduceActionForExpression9: 12620807 false) 
	#(253 1 #liftFirstValue: 18448388 false) 
	#(253 1 #liftFirstValue: 18448385 false) 
	#(194 1 #reduceActionForSimpleDefinedType1: 8736769 false) 
	#(253 1 #liftFirstValue: 18448386 false) 
	#(253 1 #liftFirstValue: 18448387 false) 
	#(194 1 #liftFirstValue: 8736777 false) 
	#(194 1 #liftFirstValue: 8736772 false) 
	#(194 1 #liftFirstValue: 8736773 false) 
	#(194 1 #liftFirstValue: 8736778 false) 
	#(220 1 #reduceActionForExpression9: 12620801 false) 
	#(218 1 #liftFirstValue: 12534785 false) 
	#(194 1 #liftFirstValue: 8736775 false) 
	#(194 1 #liftFirstValue: 8736771 false) 
	#(220 1 #liftFirstValue: 12620809 false) 
	#(220 1 #reduceActionForExpression9: 12620806 false) 
	#(220 1 #reduceActionForExpression9: 12620802 false) 
	#(186 0 #reduceActionForOptionalArguments1: 7643137 false) 
	#(248 1 #reduceActionForAttributes1: 17778689 false) 
	#(274 0 #reduceActionForOptionalType1: 20509697 false) 
	#(299 1 #reduceActionForVariableNames1: 24129537 false) 
	#(301 1 #liftFirstValue: 24285187 false) 
	#(301 1 #liftFirstValue: 24285188 false) 
	#(301 1 #liftFirstValue: 24285186 false) 
	#(246 1 #liftFirstValue: 16909324 false) 
	#(246 1 #liftFirstValue: 16909325 false) 
	#(246 1 #liftFirstValue: 16909320 false) 
	#(246 1 #liftFirstValue: 16909322 false) 
	#(246 1 #liftFirstValue: 16909323 false) 
	#(246 1 #liftFirstValue: 16909321 false) 
	#(247 1 #liftFirstValue: 17441798 false) 
	#(246 1 #liftFirstValue: 16909316 false) 
	#(246 1 #liftFirstValue: 16909318 false) 
	#(265 1 #liftFirstValue: 19688449 false) 
	#(265 1 #liftFirstValue: 19688450 false) 
	#(265 1 #liftFirstValue: 19688451 false) 
	#(265 1 #liftFirstValue: 19688452 false) 
	#(265 1 #liftFirstValue: 19688453 false) 
	#(264 1 #liftFirstValue: 19615745 false) 
	#(275 1 #reduceActionForPropertyHeader1: 20557825 false) 
	#(264 1 #liftFirstValue: 19615746 false) 
	#(266 1 #liftFirstValue: 19826689 false) 
	#(266 1 #liftFirstValue: 19826690 false) 
	#(267 1 #liftFirstValue: 19910657 false) 
	#(267 1 #liftFirstValue: 19910658 false) 
	#(268 1 #liftFirstValue: 19991553 false) 
	#(313 1 #reduceActionForExternalProcedureHeader1: 26317825 false) 
	#(268 1 #liftFirstValue: 19991554 false) 
	#(315 1 #reduceActionForExternalProcedureHeader1: 26515457 false) 
	#(269 1 #liftFirstValue: 20069377 false) 
	#(269 1 #liftFirstValue: 20069378 false) 
	#(271 1 #liftFirstValue: 20254721 false) 
	#(321 1 #reduceActionForExternalFunctionHeader1: 27355137 false) 
	#(271 1 #liftFirstValue: 20254722 false) 
	#(323 1 #reduceActionForExternalFunctionHeader1: 27547649 false) 
	#(272 1 #liftFirstValue: 20329473 false) 
	#(272 1 #liftFirstValue: 20329474 false) 
	#(273 1 #liftFirstValue: 20419585 false) 
	#(273 1 #liftFirstValue: 20419586 false) 
	#(246 1 #liftFirstValue: 16909315 false) 
	#(335 1 #reduceActionForVars1: 29204481 false) 
	#(361 1 #reduceActionForBaseCaseLabel1: 32314369 false) 
	#(360 1 #reduceActionForVariableNames1: 32225281 false) 
	#(359 1 #liftFirstValue: 32119809 false) 
	#(174 1 #reduceActionForFullModuleName1: 6241281 false) 
	#(200 0 #nil 10081281 false) 
	#(171 1 #reduceActionForUsesModuleList1: 6051841 false) 
	#(173 1 #reduceActionForUsesModule1: 6127617 false) 
	#(160 0 #reduceActionForMethodVariables2: 4926465 false) 
	#(302 0 #nil 24372225 false) 
	#(161 1 #reduceActionForMainMethod1: 4980737 false) 
	#(373 2 #reduceActionForExpression14: 33693710 false) 
	#(339 1 #reduceActionForVariableNames1: 29545473 false) 
	#(367 1 #liftFirstValue: 33048577 false) 
	#(296 0 #reduceActionForArgumentList1: 23861249 false) 
	#(343 2 #reduceActionForGotoStatement1: 30490625 false) 
	#(343 2 #reduceActionForGotoStatement1: 30490626 false) 
	#(388 2 #reduceActionForInheritedFunctionCall3: 36584451 false) 
	#(373 2 #reduceActionForExpression15: 33693711 false) 
	#(377 2 #reduceActionForAnonymousProcedureHeader1: 35395585 false) 
	#(364 0 #reduceActionForOptionalType1: 32634881 false) 
	#(349 0 #nil 31235073 false) 
	#(347 1 #reduceActionForVariableNames1: 31029249 false) 
	#(382 2 #reduceActionForSetConstructor2: 36056066 false) 
	#(384 1 #reduceActionForSetValue1: 36286465 false) 
	#(383 1 #reduceActionForVariableNames1: 36186113 false) 
	#(373 2 #reduceActionForExpression16: 33693712 false) 
	#(373 2 #reduceActionForExpression17: 33693713 false) 
	#(392 1 #liftFirstValue: 37282823 false) 
	#(392 1 #liftFirstValue: 37282824 false) 
	#(392 1 #liftFirstValue: 37282831 false) 
	#(392 1 #liftFirstValue: 37282832 false) 
	#(392 1 #liftFirstValue: 37282820 false) 
	#(391 1 #liftFirstValue: 37218305 false) 
	#(392 1 #liftFirstValue: 37282817 false) 
	#(392 1 #liftFirstValue: 37282829 false) 
	#(392 1 #liftFirstValue: 37282821 false) 
	#(392 1 #liftFirstValue: 37282834 false) 
	#(392 1 #liftFirstValue: 37282835 false) 
	#(392 1 #liftFirstValue: 37282822 false) 
	#(392 1 #liftFirstValue: 37282818 false) 
	#(392 1 #liftFirstValue: 37282827 false) 
	#(392 1 #liftFirstValue: 37282828 false) 
	#(392 1 #liftFirstValue: 37282819 false) 
	#(392 1 #liftFirstValue: 37282830 false) 
	#(392 1 #liftFirstValue: 37282833 false) 
	#(392 1 #liftFirstValue: 37282826 false) 
	#(392 1 #liftFirstValue: 37282825 false) 
	#(373 2 #reduceActionForExpression19: 33693715 false) 
	#(373 2 #reduceActionForExpression13: 33693709 false) 
	#(391 1 #liftFirstValue: 37218306 false) 
	#(375 2 #reduceActionForInstantiatedGenericExpression1: 35110913 false) 
	#(376 2 #reduceActionForAnonymousProcedure1: 35283969 false) 
	#(378 2 #reduceActionForAnonymousFunction1: 35495937 false) 
	#(375 2 #reduceActionForInstantiatedGenericExpression1: 35110914 false) 
	#(192 1 #reduceActionForEnumName1: 8515585 false) 
	#(191 1 #reduceActionForVariableNames1: 8442881 false) 
	#(223 1 #reduceActionForUsesModule1: 13907969 false) 
	#(221 1 #reduceActionForConstantArray1: 13680641 false) 
	#(222 1 #reduceActionForUsesModuleList1: 13727745 false) 
	#(355 0 #nil 31826945 false) 
	#(224 1 #reduceActionForConstantArray1: 14043137 false) 
	#(225 1 #reduceActionForVariableNames1: 14086145 false) 
	#(220 2 #reduceActionForExpression14: 12620815 false) 
	#(220 2 #reduceActionForExpression15: 12620812 false) 
	#(270 0 #reduceActionForOptionalType1: 20162561 false) 
	#(194 2 #reduceActionForSimpleDefinedType11: 8736779 false) 
	#(220 2 #reduceActionForExpression16: 12620813 false) 
	#(220 2 #reduceActionForExpression17: 12620814 false) 
	#(194 2 #reduceActionForSimpleDefinedType2: 8736770 false) 
	#(199 2 #reduceActionForNamedType4: 9693188 false) 
	#(256 0 #reduceActionForOptionalArguments1: 18865154 false) 
	#(245 0 #reduceActionForMethodVariables2: 16829441 false) 
	#(250 1 #reduceActionForVariableNames1: 17936385 false) 
	#(248 2 #reduceActionForAttributes2: 17778690 false) 
	#(298 2 #reduceActionForArgument2: 23990274 false) 
	#(277 2 #reduceActionForClassPropertyHeader1: 20828161 false) 
	#(318 2 #reduceActionForExternalClassProcedureHeader1: 26963969 false) 
	#(319 2 #reduceActionForExternalClassProcedureHeader1: 27075585 false) 
	#(326 2 #reduceActionForExternalClassFunctionHeader1: 28026881 false) 
	#(327 2 #reduceActionForExternalClassFunctionHeader1: 28135425 false) 
	#(246 2 #reduceActionForNewClassComponent2: 16909314 false) 
	#(177 2 #reduceActionForConstantValueList1: 6595585 false) 
	#(178 1 #reduceActionForAttributes1: 6674433 false) 
	#(279 0 #nil 21263361 false) 
	#(336 2 #reduceActionForVarsVars2: 29234178 false) 
	#(337 1 #reduceActionForAttributes1: 29322241 false) 
	#(183 2 #reduceActionForDefinedTypeList1: 7316481 false) 
	#(184 1 #reduceActionForAttributes1: 7397377 false) 
	#(336 2 #reduceActionForVarsVars2: 29234177 false) 
	#(246 2 #reduceActionForNewClassComponent5: 16909317 false) 
	#(246 2 #reduceActionForNewClassComponent5: 16909319 false) 
	#(247 2 #reduceActionForNewClassComponent5: 17441793 false) 
	#(247 2 #reduceActionForNewClassComponent5: 17441794 false) 
	#(247 2 #reduceActionForNewClassComponent5: 17441795 false) 
	#(247 2 #reduceActionForNewClassComponent5: 17441796 false) 
	#(247 2 #reduceActionForNewClassComponent5: 17441797 false) 
	#(275 2 #reduceActionForPropertyHeader2: 20557826 false) 
	#(294 0 #nil 23413761 false) 
	#(289 0 #reduceActionForMethodVariables2: 22555649 false) 
	#(200 1 #liftFirstValue: 10081282 false) 
	#(234 0 #nil 15518721 false) 
	#(163 3 #reduceActionForPackageLine1: 5098497 false) 
	#(172 1 #reduceActionForAttributes1: 6099969 false) 
	#(170 3 #reduceActionForUsesList2: 5972994 false) 
	#(165 1 #reduceActionForVariableNames1: 5277697 false) 
	#(175 0 #reduceActionForMethodVariables2: 6366209 false) 
	#(393 0 #nil 37469185 false) 
	#(156 3 #reduceActionForProgramFile2: 4431874 false) 
	#(333 1 #liftFirstValue: 28965891 false) 
	#(333 1 #liftFirstValue: 28965895 false) 
	#(333 1 #liftFirstValue: 28965890 false) 
	#(333 1 #liftFirstValue: 28965892 false) 
	#(312 1 #reduceActionForProcedureDefinition2: 26150914 false) 
	#(333 1 #liftFirstValue: 28965893 false) 
	#(320 1 #reduceActionForFunctionDefinition2: 27193346 false) 
	#(332 2 #reduceActionForAttributes2: 28894209 false) 
	#(333 1 #liftFirstValue: 28965894 false) 
	#(333 1 #liftFirstValue: 28965889 false) 
	#(373 3 #reduceActionForExpression11: 33693707 false) 
	#(370 3 #reduceActionForStatementBlock1: 33396737 false) 
	#(367 2 #reduceActionForForVariableExpression2: 33048578 false) 
	#(296 1 #reduceActionForConstantArray1: 23861250 false) 
	#(297 1 #reduceActionForVariableNames1: 23895041 false) 
	#(379 3 #reduceActionForAnonymousFunctionHeader1: 35604481 false) 
	#(363 3 #reduceActionForRaiseStatement1: 32526337 false) 
	#(353 0 #nil 31637505 false) 
	#(382 3 #reduceActionForSetConstructor1: 36056065 false) 
	#(342 3 #reduceActionForPackageLine1: 30355457 false) 
	#(342 3 #reduceActionForPackageLine1: 30355458 false) 
	#(371 3 #reduceActionForAsmBlock1: 33501185 false) 
	#(373 3 #reduceActionForExpression5: 33693701 false) 
	#(390 1 #liftFirstValue: 37084161 false) 
	#(389 1 #reduceActionForVariableNames1: 36976641 false) 
	#(374 3 #reduceActionForPropertyExpression2: 34956290 false) 
	#(374 3 #reduceActionForPropertyExpression2: 34956289 false) 
	#(373 3 #reduceActionForExpression12: 33693708 false) 
	#(386 1 #reduceActionForVariableNames1: 36473857 false) 
	#(373 3 #reduceActionForExpression10: 33693706 false) 
	#(190 3 #reduceActionForEnumType1: 8389633 false) 
	#(220 3 #reduceActionForConstantExpression11: 12620811 false) 
	#(355 1 #liftFirstValue: 31826946 false) 
	#(254 3 #reduceActionForFileType1: 18542593 false) 
	#(204 3 #reduceActionForSetType2: 10862594 false) 
	#(204 3 #reduceActionForSetType1: 10862593 false) 
	#(244 2 #reduceActionForQualifiedName1: 16628737 false) 
	#(199 3 #reduceActionForPropertyExpression2: 9693187 false) 
	#(236 0 #reduceActionForMethodVariables2: 15695873 false) 
	#(235 1 #reduceActionForImplicitClassSection1: 15623169 false) 
	#(217 3 #reduceActionForRangeType1: 12444673 false) 
	#(227 1 #reduceActionForVariableNames1: 14345217 false) 
	#(220 3 #reduceActionForPropertyExpression2: 12620804 false) 
	#(220 3 #reduceActionForExpression10: 12620805 false) 
	#(194 3 #reduceActionForSimpleDefinedType8: 8736776 false) 
	#(249 3 #reduceActionForAttribute1: 17857537 false) 
	#(188 1 #reduceActionForGenericTypeArgument1: 7904257 false) 
	#(187 1 #reduceActionForVariableNames1: 7731201 false) 
	#(274 2 #reduceActionForGotoStatement1: 20509698 false) 
	#(299 3 #reduceActionForVariableNames2: 24129538 false) 
	#(178 2 #reduceActionForAttributes2: 6674434 false) 
	#(290 0 #reduceActionForMethodVariables2: 22626305 false) 
	#(337 2 #reduceActionForAttributes2: 29322242 false) 
	#(184 2 #reduceActionForAttributes2: 7397378 false) 
	#(277 3 #reduceActionForClassPropertyHeader2: 20828162 false) 
	#(294 1 #liftFirstValue: 23413762 false) 
	#(293 2 #reduceActionForExternalMethodModifier10: 23226378 false) 
	#(307 3 #reduceActionForExternalConstructorHeader1: 25128961 false) 
	#(310 3 #reduceActionForExternalConstructorHeader1: 25805825 false) 
	#(314 3 #reduceActionForExternalProcedureHeaderVars1: 26397697 false) 
	#(322 3 #reduceActionForExternalFunctionHeaderVars1: 27431937 false) 
	#(329 3 #reduceActionForExternalConstructorHeader1: 28437505 false) 
	#(361 3 #reduceActionForBaseCaseLabel2: 32314370 false) 
	#(358 3 #reduceActionForCaseOption1: 32033793 false) 
	#(360 3 #reduceActionForVariableNames2: 32225282 false) 
	#(359 3 #reduceActionForCaseLabel2: 32119810 false) 
	#(174 3 #reduceActionForFullModuleName2: 6241282 false) 
	#(234 1 #reduceActionForOptionalDeprecated2: 15518722 false) 
	#(172 2 #reduceActionForAttributes2: 6099970 false) 
	#(171 3 #reduceActionForUsesModuleList2: 6051842 false) 
	#(173 3 #reduceActionForPackageLine1: 6127618 false) 
	#(156 4 #reduceActionForProgramFile1: 4431873 false) 
	#(160 2 #reduceActionForAttributes2: 4926466 false) 
	#(164 3 #reduceActionForRequires1: 5196801 false) 
	#(162 4 #reduceActionForPackageFile1: 5041153 false) 
	#(169 3 #reduceActionForInterfaceSection2: 5858306 false) 
	#(304 0 #reduceActionForMethodVariables2: 24604673 false) 
	#(394 0 #nil 37579777 false) 
	#(180 2 #reduceActionForResourceStringList1: 6973441 false) 
	#(181 1 #reduceActionForAttributes1: 7072769 false) 
	#(312 2 #reduceActionForProcedureDefinition1: 26150913 false) 
	#(320 2 #reduceActionForFunctionDefinition1: 27193345 false) 
	#(331 3 #reduceActionForMethodComponents1: 28806145 false) 
	#(339 3 #reduceActionForVariableNames2: 29545474 false) 
	#(362 0 #reduceActionForElseCase1: 32476161 false) 
	#(357 1 #reduceActionForVariableNames1: 31931393 false) 
	#(367 3 #reduceActionForForVariableExpression4: 33048580 false) 
	#(203 3 #reduceActionForRequires1: 10798082 false) 
	#(345 4 #reduceActionForIfStatement1: 30695425 false) 
	#(388 4 #reduceActionForInheritedFunctionCall2: 36584450 false) 
	#(364 2 #reduceActionForGotoStatement1: 32634882 false) 
	#(344 4 #reduceActionForRepeatStatement1: 30592001 false) 
	#(352 0 #nil 31561729 false) 
	#(350 1 #reduceActionForAttributes1: 31394817 false) 
	#(341 4 #reduceActionForVariableStatement3: 30169091 false) 
	#(341 4 #reduceActionForVariableStatement1: 30169089 false) 
	#(369 4 #reduceActionForWhileStatement1: 33291265 false) 
	#(347 3 #reduceActionForVariableNames2: 31029250 false) 
	#(346 4 #reduceActionForRepeatStatement1: 30935041 false) 
	#(384 3 #reduceActionForSetValue2: 36286466 false) 
	#(383 3 #reduceActionForVariableNames2: 36186114 false) 
	#(373 4 #reduceActionForExpression4: 33693700 false) 
	#(385 3 #reduceActionForRequires1: 36419585 false) 
	#(198 1 #reduceActionForVariableNames1: 9530369 false) 
	#(197 0 #reduceActionForOutsideGeneric1: 9459713 true) 
	#(192 3 #reduceActionForEnumName2: 8515586 false) 
	#(226 3 #reduceActionForConstantRecordField1: 14220289 false) 
	#(191 3 #reduceActionForVariableNames2: 8442882 false) 
	#(223 3 #reduceActionForPackageLine1: 13907970 false) 
	#(222 3 #reduceActionForConstantExpressionList2: 13727746 false) 
	#(220 4 #reduceActionForConstantExpression10: 12620810 false) 
	#(225 3 #reduceActionForVariableNames2: 14086146 false) 
	#(270 2 #reduceActionForGotoStatement1: 20162562 false) 
	#(258 1 #liftFirstValue: 19042306 false) 
	#(258 1 #liftFirstValue: 19042305 false) 
	#(257 1 #reduceActionForVariableNames1: 18930689 false) 
	#(208 4 #reduceActionForRecordType1: 11496449 false) 
	#(210 2 #reduceActionForRecordFieldList1: 11769857 false) 
	#(245 2 #reduceActionForAttributes2: 16829442 false) 
	#(220 4 #reduceActionForExpression4: 12620808 false) 
	#(194 4 #reduceActionForSimpleDefinedType6: 8736774 false) 
	#(250 3 #reduceActionForVariableNames2: 17936386 false) 
	#(186 3 #reduceActionForRequires1: 7643138 false) 
	#(231 0 #reduceActionForMethodVariables2: 15249409 false) 
	#(260 1 #liftFirstValue: 19307522 false) 
	#(260 1 #liftFirstValue: 19307521 false) 
	#(242 0 #reduceActionForOptionalArguments1: 16467969 false) 
	#(229 1 #reduceActionForTypeModifier5: 14711813 false) 
	#(229 1 #reduceActionForTypeModifier5: 14711811 false) 
	#(229 1 #reduceActionForTypeModifier5: 14711809 false) 
	#(185 4 #reduceActionForNamedDefinedType1: 7504897 false) 
	#(189 1 #reduceActionForRaiseStatement2: 8052739 false) 
	#(189 1 #reduceActionForRaiseStatement2: 8052740 false) 
	#(193 1 #liftFirstValue: 8625156 false) 
	#(193 1 #liftFirstValue: 8625153 false) 
	#(193 1 #liftFirstValue: 8625157 false) 
	#(193 1 #liftFirstValue: 8625154 false) 
	#(193 1 #liftFirstValue: 8625155 false) 
	#(259 1 #reduceActionForInterfaceType3: 19098627 false) 
	#(300 0 #reduceActionForOptionalType1: 24220673 false) 
	#(308 4 #reduceActionForNonExternalConstructorHeader3: 25265155 false) 
	#(278 0 #reduceActionForPropertyValues1: 20932609 false) 
	#(293 3 #reduceActionForExternalMethodModifier1: 23226369 false) 
	#(295 1 #liftFirstValue: 23559179 false) 
	#(295 1 #liftFirstValue: 23559173 false) 
	#(295 1 #liftFirstValue: 23559182 false) 
	#(295 1 #liftFirstValue: 23559177 false) 
	#(295 1 #liftFirstValue: 23559183 false) 
	#(295 1 #liftFirstValue: 23559186 false) 
	#(295 1 #liftFirstValue: 23559181 false) 
	#(295 1 #liftFirstValue: 23559189 false) 
	#(295 1 #liftFirstValue: 23559188 false) 
	#(295 1 #liftFirstValue: 23559187 false) 
	#(295 1 #liftFirstValue: 23559180 false) 
	#(295 1 #liftFirstValue: 23559169 false) 
	#(295 1 #liftFirstValue: 23559170 false) 
	#(295 1 #liftFirstValue: 23559174 false) 
	#(295 1 #liftFirstValue: 23559185 false) 
	#(295 1 #liftFirstValue: 23559172 false) 
	#(295 1 #liftFirstValue: 23559175 false) 
	#(295 1 #liftFirstValue: 23559190 false) 
	#(295 1 #liftFirstValue: 23559184 false) 
	#(295 1 #liftFirstValue: 23559171 false) 
	#(295 1 #liftFirstValue: 23559178 false) 
	#(295 1 #liftFirstValue: 23559191 false) 
	#(295 1 #liftFirstValue: 23559176 false) 
	#(289 2 #reduceActionForAttributes2: 22555650 false) 
	#(291 1 #liftFirstValue: 22729729 false) 
	#(291 1 #liftFirstValue: 22729730 false) 
	#(234 2 #reduceActionForOptionalDeprecated3: 15518723 false) 
	#(159 5 #reduceActionForLibraryLine1: 4776961 false) 
	#(168 5 #reduceActionForLibraryLine1: 5692418 false) 
	#(157 5 #reduceActionForLibraryLine1: 4547585 false) 
	#(168 5 #reduceActionForLibraryLine1: 5692417 false) 
	#(396 1 #reduceActionForVariableNames1: 37793793 false) 
	#(158 5 #reduceActionForLibraryFile1: 4697089 false) 
	#(165 3 #reduceActionForVariableNames2: 5277698 false) 
	#(166 3 #reduceActionForUsesList2: 5387265 false) 
	#(397 2 #reduceActionForGotoStatement1: 37884929 false) 
	#(175 2 #reduceActionForAttributes2: 6366210 false) 
	#(176 1 #liftFirstValue: 6460419 false) 
	#(176 1 #liftFirstValue: 6460418 false) 
	#(176 1 #liftFirstValue: 6460417 false) 
	#(176 1 #liftFirstValue: 6460420 false) 
	#(176 1 #liftFirstValue: 6460421 false) 
	#(176 1 #liftFirstValue: 6460422 false) 
	#(303 0 #nil 24518657 false) 
	#(393 2 #reduceActionForInitializationSection2: 37469186 false) 
	#(334 3 #reduceActionForLabels1: 29112321 false) 
	#(181 2 #reduceActionForAttributes2: 7072770 false) 
	#(356 2 #reduceActionForCaseOptionList1: 31879169 false) 
	#(367 4 #reduceActionForForVariableExpression3: 33048579 false) 
	#(368 1 #liftFirstValue: 33258498 false) 
	#(368 1 #liftFirstValue: 33258497 false) 
	#(297 3 #reduceActionForVariableNames2: 23895042 false) 
	#(388 5 #reduceActionForInheritedFunctionCall1: 36584449 false) 
	#(349 3 #reduceActionForExcept3: 31235075 false) 
	#(350 2 #reduceActionForAttributes2: 31394818 false) 
	#(349 3 #reduceActionForExcept2: 31235074 false) 
	#(353 2 #reduceActionForFinally2: 31637506 false) 
	#(348 5 #reduceActionForTryStatement1: 31134721 false) 
	#(389 3 #reduceActionForVariableNames2: 36976642 false) 
	#(390 3 #reduceActionForMethodArgument2: 37084162 false) 
	#(386 3 #reduceActionForVariableNames2: 36473858 false) 
	#(201 5 #reduceActionForAnonymousProcedureType1: 10130433 false) 
	#(201 5 #reduceActionForAnonymousProcedureType2: 10130434 false) 
	#(204 5 #reduceActionForSetType3: 10862595 false) 
	#(194 5 #reduceActionForSimpleDefinedType12: 8736780 false) 
	#(194 5 #reduceActionForSimpleDefinedType12: 8736781 false) 
	#(244 4 #reduceActionForQualifiedName2: 16628738 false) 
	#(256 3 #reduceActionForRequires1: 18865153 false) 
	#(255 5 #reduceActionForArrayType2: 18654210 false) 
	#(255 5 #reduceActionForArrayType1: 18654209 false) 
	#(210 3 #reduceActionForRecordFieldList2: 11769858 false) 
	#(236 2 #reduceActionForAttributes2: 15695874 false) 
	#(237 1 #liftFirstValue: 15758337 false) 
	#(237 1 #liftFirstValue: 15758338 false) 
	#(237 1 #liftFirstValue: 15758339 false) 
	#(237 1 #liftFirstValue: 15758340 false) 
	#(227 3 #reduceActionForVariableNames2: 14345218 false) 
	#(188 3 #reduceActionForGenericTypeArgument2: 7904258 false) 
	#(187 3 #reduceActionForVariableNames2: 7731202 false) 
	#(187 3 #reduceActionForVariableNames2: 7731203 false) 
	#(229 2 #reduceActionForGotoStatement1: 14711814 false) 
	#(229 2 #reduceActionForGotoStatement1: 14711812 false) 
	#(229 2 #reduceActionForGotoStatement1: 14711810 false) 
	#(189 2 #reduceActionForDefinedType2: 8052738 false) 
	#(261 0 #nil 19362817 false) 
	#(185 5 #reduceActionForNamedDefinedType2: 7504898 false) 
	#(298 5 #reduceActionForArgument1: 23990273 false) 
	#(308 5 #reduceActionForNonExternalConstructorHeader4: 25265156 false) 
	#(290 2 #reduceActionForAttributes2: 22626306 false) 
	#(308 5 #reduceActionForNonExternalConstructorHeader1: 25265153 false) 
	#(311 5 #reduceActionForNonExternalDestructorHeader1: 25938945 false) 
	#(251 5 #reduceActionForInterfaceFunctionAssignment1: 18072577 false) 
	#(252 5 #reduceActionForInterfaceProcedureAssignment1: 18255873 false) 
	#(316 5 #reduceActionForNonExternalProcedureHeaderVars1: 26601473 false) 
	#(279 3 #reduceActionForPropertyArrayAccessors2: 21263362 false) 
	#(293 4 #reduceActionForExternalMethodModifier6: 23226374 false) 
	#(293 4 #reduceActionForExternalMethodModifier6: 23226370 false) 
	#(292 2 #reduceActionForExternalMethodModifier10: 22804481 false) 
	#(395 3 #reduceActionForExportsDefinition1: 37683201 false) 
	#(305 1 #liftFirstValue: 24664074 false) 
	#(305 1 #liftFirstValue: 24664075 false) 
	#(305 1 #liftFirstValue: 24664072 false) 
	#(302 4 #reduceActionForImplementationSection2: 24372226 false) 
	#(304 2 #reduceActionForAttributes2: 24604674 false) 
	#(305 1 #liftFirstValue: 24664065 false) 
	#(306 1 #reduceActionForConstructorDefinition2: 24951810 false) 
	#(305 1 #liftFirstValue: 24664066 false) 
	#(309 1 #reduceActionForDestructorDefinition2: 25633794 false) 
	#(305 1 #liftFirstValue: 24664067 false) 
	#(305 1 #liftFirstValue: 24664068 false) 
	#(317 1 #reduceActionForClassProcedureDefinition2: 26771458 false) 
	#(305 1 #liftFirstValue: 24664069 false) 
	#(305 1 #liftFirstValue: 24664070 false) 
	#(325 1 #reduceActionForClassFunctionDefinition2: 27839490 false) 
	#(305 1 #liftFirstValue: 24664071 false) 
	#(328 1 #reduceActionForClassOperatorDefinition2: 28250114 false) 
	#(305 1 #liftFirstValue: 24664073 false) 
	#(305 1 #liftFirstValue: 24664076 false) 
	#(394 2 #reduceActionForFinalizationSection2: 37579778 false) 
	#(167 6 #reduceActionForUnitFile1: 5470209 false) 
	#(362 2 #reduceActionForElseCase2: 32476162 false) 
	#(354 6 #reduceActionForCaseStatement1: 31705089 false) 
	#(357 3 #reduceActionForVariableNames2: 31931394 false) 
	#(366 6 #reduceActionForForInStatement1: 32899073 false) 
	#(345 6 #reduceActionForForInStatement1: 30695426 false) 
	#(380 6 #reduceActionForMemExpression1: 35714049 false) 
	#(380 6 #reduceActionForMemExpression1: 35714050 false) 
	#(352 2 #reduceActionForPossibleExceptElse2: 31561730 false) 
	#(341 6 #reduceActionForVariableStatement2: 30169090 false) 
	#(198 3 #reduceActionForVariableNames2: 9530370 false) 
	#(195 5 #reduceActionForInstantiatedGenericTypeArguments1: 9259009 false) 
	#(209 6 #reduceActionForRecordHelperType1: 11601921 false) 
	#(206 1 #reduceActionForVariableNames1: 11296769 false) 
	#(205 3 #reduceActionForTwoItemSetNameList1: 11140097 false) 
	#(257 3 #reduceActionForVariableNames2: 18930690 false) 
	#(238 2 #reduceActionForPrivateClassSection2: 15872002 false) 
	#(239 2 #reduceActionForProtectedClassSection2: 16064514 false) 
	#(240 2 #reduceActionForPublicClassSection1: 16271361 false) 
	#(241 2 #reduceActionForPublishedClassSection1: 16363521 false) 
	#(207 3 #reduceActionForMetaclassType1: 11400193 false) 
	#(232 1 #liftFirstValue: 15324161 false) 
	#(232 1 #liftFirstValue: 15324162 false) 
	#(231 2 #reduceActionForAttributes2: 15249410 false) 
	#(228 3 #reduceActionForNewClassType3: 14465027 false) 
	#(243 1 #reduceActionForVariableNames1: 16529409 false) 
	#(262 0 #reduceActionForMethodVariables2: 19438593 false) 
	#(300 2 #reduceActionForGotoStatement1: 24220674 false) 
	#(338 6 #reduceActionForVariable1: 29421569 false) 
	#(308 6 #reduceActionForNonExternalConstructorHeader2: 25265154 false) 
	#(311 6 #reduceActionForNonExternalDestructorHeader2: 25938946 false) 
	#(324 6 #reduceActionForNonExternalFunctionHeaderVars1: 27630593 false) 
	#(324 6 #reduceActionForNonExternalFunctionHeaderVars1: 27630594 false) 
	#(284 1 #reduceActionForPropertyDefault2: 21938178 false) 
	#(284 1 #reduceActionForPropertyDefault3: 21938179 false) 
	#(288 0 #nil 22455297 false) 
	#(278 2 #reduceActionForPropertyValues2: 20932610 false) 
	#(278 2 #reduceActionForCaseOptionList1: 20932611 false) 
	#(278 2 #reduceActionForPropertyValues4: 20932612 false) 
	#(278 2 #reduceActionForPropertyValues8: 20932616 false) 
	#(278 2 #reduceActionForPropertyValues5: 20932613 false) 
	#(278 2 #reduceActionForPropertyValues7: 20932615 false) 
	#(278 2 #reduceActionForPropertyValues6: 20932614 false) 
	#(246 6 #reduceActionForNewClassComponent1: 16909313 false) 
	#(292 3 #reduceActionForNonExternalMethodModifier2: 22804482 false) 
	#(292 3 #reduceActionForNonExternalMethodModifier4: 22804484 false) 
	#(292 3 #reduceActionForNonExternalMethodModifier4: 22804483 false) 
	#(396 3 #reduceActionForVariableNames2: 37793794 false) 
	#(303 2 #reduceActionForImplementationCode2: 24518658 false) 
	#(306 2 #reduceActionForConstructorDefinition1: 24951809 false) 
	#(309 2 #reduceActionForDestructorDefinition1: 25633793 false) 
	#(317 2 #reduceActionForClassProcedureDefinition1: 26771457 false) 
	#(325 2 #reduceActionForClassFunctionDefinition1: 27839489 false) 
	#(328 2 #reduceActionForClassOperatorDefinition1: 28250113 false) 
	#(202 7 #reduceActionForAnonymousFunctionType1: 10442753 false) 
	#(202 7 #reduceActionForAnonymousFunctionType2: 10442754 false) 
	#(238 3 #reduceActionForPrivateClassSection1: 15872001 false) 
	#(239 3 #reduceActionForProtectedClassSection1: 16064513 false) 
	#(242 3 #reduceActionForRequires1: 16467970 false) 
	#(189 4 #reduceActionForWhileStatement1: 8052741 false) 
	#(189 4 #reduceActionForWhileStatement1: 8052737 false) 
	#(179 7 #reduceActionForConstantValue1: 6769665 false) 
	#(330 7 #reduceActionForNonExternalClassOperatorHeader1: 28579841 false) 
	#(284 2 #reduceActionForPropertyDefault1: 21938177 false) 
	#(283 2 #reduceActionForPropertyDispid1: 21625857 false) 
	#(286 1 #reduceActionForVariableNames1: 22246401 false) 
	#(285 2 #reduceActionForPropertyImplements1: 22141953 false) 
	#(280 2 #reduceActionForPropertyIndex1: 21360641 false) 
	#(281 2 #reduceActionForPropertyReader1: 21453825 false) 
	#(287 2 #reduceActionForPropertyStored1: 22366209 false) 
	#(282 2 #reduceActionForPropertyWriter1: 21538817 false) 
	#(276 7 #reduceActionForPropertyHeaderVars1: 20630529 false) 
	#(293 6 #reduceActionForExternalMethodModifier7: 23226375 false) 
	#(293 6 #reduceActionForExternalMethodModifier8: 23226376 false) 
	#(293 6 #reduceActionForExternalMethodModifier7: 23226371 false) 
	#(293 6 #reduceActionForExternalMethodModifier8: 23226372 false) 
	#(182 5 #reduceActionForResource1: 7147521 false) 
	#(365 8 #reduceActionForForStatement1: 32702465 false) 
	#(351 5 #reduceActionForOnDo1: 31459329 false) 
	#(206 3 #reduceActionForVariableNames2: 11296770 false) 
	#(243 3 #reduceActionForVariableNames2: 16529410 false) 
	#(233 5 #reduceActionForOldClassType1: 15369217 false) 
	#(261 3 #reduceActionForGuid2: 19362818 false) 
	#(259 5 #reduceActionForInterfaceType1: 19098625 false) 
	#(262 2 #reduceActionForAttributes2: 19438594 false) 
	#(263 1 #liftFirstValue: 19530754 false) 
	#(263 1 #liftFirstValue: 19530753 false) 
	#(283 3 #reduceActionForPropertyDispid2: 21625858 false) 
	#(283 3 #reduceActionForPropertyDispid3: 21625859 false) 
	#(288 2 #reduceActionForPropertyModifiers2: 22455298 false) 
	#(213 1 #reduceActionForVariableNames1: 12104705 false) 
	#(215 1 #reduceActionForVariableNames1: 12319745 false) 
	#(216 1 #liftFirstValue: 12406785 false) 
	#(230 6 #reduceActionForClassHelperType2: 14833666 false) 
	#(228 6 #reduceActionForNewClassType1: 14465025 false) 
	#(259 6 #reduceActionForInterfaceType2: 19098626 false) 
	#(286 3 #reduceActionForVariableNames2: 22246402 false) 
	#(293 8 #reduceActionForExternalMethodModifier9: 23226377 false) 
	#(293 8 #reduceActionForExternalMethodModifier9: 23226373 false) 
	#(212 6 #reduceActionForVariantRecordPart1: 11955201 false) 
	#(228 7 #reduceActionForNewClassType2: 14465026 false) 
	#(213 3 #reduceActionForVariableNames2: 12104706 false) 
	#(215 3 #reduceActionForVariableNames2: 12319746 false) 
	#(230 9 #reduceActionForClassHelperType1: 14833665 false) 
	#(214 5 #reduceActionForVariantType1: 12219393 false)
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '";"' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DELAYED"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"METHOD"' '"MOD"' '"NAME"' '"NAMESPACE"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PARTIAL"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VARARGS"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' '"," ''comma''+' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'TypeModifier' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attributes' 'Attribute' 'AttributeExpressionList' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' '"DELAYED" ''delayed''?' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'VariableStatement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ForVariableExpression' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #OrderedCollection #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #DelphiDeprecatedModifierNode #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #OrderedCollection #DelphiAttributeNode #OrderedCollection #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 22 0 6 0 24 0 6 0 28 0 6 0 54 0 6 0 67 0 45 0 68 0 6 0 73 0 49 0 76 0 53 0 88 0 6 0 94 0 57 0 95 0 6 0 109 0 6 0 120 0 6 0 123 0 61 0 124 0 65 0 127 0 6 0 128 0 69 0 155 0 73 0 156 0 77 0 157 0 81 0 158 0 85 0 159 0 89 0 162 0 93 0 163 0 97 0 167 0 101 0 168 0 105 0 170] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 0 217 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 0 217 1 114 0 217 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 197 0 190 1 149 0 194 1 153 0 199 1 197 0 201 1 197 0 202 1 149 0 204 1 149 0 208 1 149 0 209 1 177 0 211 1 149 0 217 1 185 0 218 1 189 0 219 1 193 0 220 1 197 0 253 1 149 0 254 1 149 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 1 221 0 136 1 225 0 145 1 229 0 185 1 233 0 248 1 237 0 249] 
#[1 1 241 0 145 1 245 0 179] 
#[1 1 249 0 145 1 253 1 43 2 1 1 82] 
#[1 2 21 0 28 2 21 0 85 2 21 0 128 0 22 0 145 2 17 1 42 2 21 1 45] 
#[1 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 2 41 0 54 2 45 0 73 2 49 0 94 2 53 0 96 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 2 77 0 177 2 77 0 183 2 77 0 246 2 77 0 247 2 85 0 248 1 237 0 249 2 77 0 251 2 77 0 252 2 77 1 8 2 77 1 9 2 77 1 10 2 77 1 11 2 77 1 12 2 77 1 13 2 77 1 15 2 77 1 16 2 77 1 17 2 77 1 19 2 137 1 20 2 77 1 21 2 145 1 43 2 77 1 51 2 153 1 52 2 77 1 54 2 161 1 55 2 77 1 57 2 169 1 58 2 77 1 59 2 177 1 60 2 77 1 62 2 77 1 63 2 77 1 65 2 193 1 66 2 77 1 67 2 201 1 68 2 77 1 70 2 77 1 71 2 77 1 73 2 217 1 74 2 77 1 79 2 225 1 80] 
#[1 1 221 0 136 2 229 0 249] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 2 241 0 220 2 245 1 102 2 249 1 103 2 253 1 104 3 1 1 105 2 241 1 126 1 213 1 131 1 217 1 142] 
#[1 3 5 0 145 3 9 0 174] 
#[1 3 5 0 145 3 13 0 174] 
#[1 3 5 0 145 3 17 0 174] 
#[1 3 5 0 145 3 21 0 174] 
#[1 3 5 0 145 3 25 0 174] 
#[1 3 5 0 145 3 29 0 171 3 33 0 173 3 37 0 174] 
#[0 0 0 1 143] 
#[0 0 26 1 143] 
#[1 0 6 0 22 0 6 0 24 0 6 0 28 0 6 0 54 0 6 0 67 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 3 41 0 170] 
#[0 0 30 1 143] 
#[1 0 6 0 22 0 6 0 24 0 6 0 28 0 6 0 45 0 6 0 54 0 6 0 67 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 3 45 0 170] 
#[0 0 34 1 143] 
#[1 3 49 0 108 3 53 0 164] 
#[0 0 38 1 143] 
#[1 0 42 0 42 0 42 0 50 0 42 0 58 0 42 0 63 3 57 0 65 3 61 0 169 0 46 1 143] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 3 65 0 161 3 69 1 75 3 73 1 76] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 81 1 117 1 29 1 118 3 81 1 119 3 81 1 120 1 41 1 121 3 81 1 122 1 49 1 123 3 81 1 124 1 57 1 125 3 81 1 126 1 65 1 131 3 81 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 85 1 117 1 29 1 118 3 85 1 119 3 85 1 120 1 41 1 121 3 85 1 122 1 49 1 123 3 85 1 124 1 57 1 125 3 85 1 126 1 65 1 131 3 85 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 89 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 97 1 117 1 29 1 118 3 97 1 119 3 97 1 120 1 41 1 121 3 97 1 122 1 49 1 123 3 97 1 124 1 57 1 125 3 97 1 126 1 65 1 131 3 97 1 132 1 73 1 142] 
#[1 3 101 0 128 3 105 0 145 3 109 1 111 3 109 1 125] 
#[1 3 117 0 2 0 54 0 9 0 54 0 22 0 54 0 24 0 54 0 28 0 54 0 54 0 54 0 67 0 54 0 73 0 54 0 94 0 54 0 109 0 54 0 120 0 54 0 123 0 54 0 128 3 121 0 203] 
#[1 3 125 0 145 3 129 0 147] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 133 1 117 1 29 1 118 3 133 1 119 3 133 1 120 1 41 1 121 3 133 1 122 1 49 1 123 3 133 1 124 1 57 1 125 3 133 1 126 1 65 1 131 3 133 1 132 1 73 1 142] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 15 0 58 0 19 0 58 0 21 0 58 0 31 0 58 0 35 0 58 0 37 0 58 0 38 0 58 0 39 0 58 0 41 0 58 0 42 0 58 0 43 0 58 0 50 0 58 0 51 0 58 0 59 0 58 0 60 0 58 0 61 0 58 0 63 0 58 0 66 0 58 0 74 0 58 0 78 0 58 0 81 0 58 0 82 0 58 0 84 0 58 0 101 0 58 0 102 0 58 0 113 0 58 0 114 0 58 0 117 0 58 0 119 0 58 0 121 0 58 0 126 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 0 58 0 139 0 58 0 140 0 58 0 141 0 58 0 142 0 58 0 143 0 58 0 144 3 137 0 145 0 58 1 143] 
#[0 3 141 0 136] 
#[0 3 145 0 136] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 149 1 117 1 29 1 118 3 149 1 119 3 149 1 120 1 41 1 121 3 149 1 122 1 49 1 123 3 149 1 124 1 57 1 125 3 149 1 126 1 65 1 131 3 149 1 132 1 73 1 142] 
#[1 3 117 0 2 0 54 0 22 0 54 0 24 0 54 0 28 0 54 0 54 0 54 0 67 0 54 0 73 0 54 0 94 0 54 0 109 0 54 0 120 0 54 0 123 0 54 0 128 3 153 0 203] 
#[1 0 109 0 2 0 113 0 16 0 62 0 41 0 62 0 42 0 62 0 43 0 62 0 50 0 62 0 51 0 129 0 54 0 141 0 62 0 62 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 62 0 82 0 157 0 94 0 62 0 126 0 185 0 136 0 189 0 141 0 193 0 142 0 62 0 143 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 157 1 117 1 29 1 118 3 157 1 119 3 157 1 120 1 41 1 121 3 157 1 122 1 49 1 123 3 157 1 124 1 57 1 125 3 157 1 126 1 65 1 131 3 157 1 132 1 73 1 142 0 62 1 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 161 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 43 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 165 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 1 249 0 145 3 169 1 43] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 173 1 117 1 29 1 118 3 173 1 119 3 173 1 120 1 41 1 121 3 173 1 122 1 49 1 123 3 173 1 124 1 57 1 125 3 173 1 126 1 65 1 131 3 173 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 177 1 91 3 181 1 117 1 29 1 118 3 181 1 119 3 181 1 120 1 41 1 121 3 181 1 122 1 49 1 123 3 181 1 124 1 57 1 125 3 181 1 126 1 65 1 131 3 181 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 3 185 0 137 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 189 1 117 1 29 1 118 3 189 1 119 3 189 1 120 1 41 1 121 3 189 1 122 1 49 1 123 3 189 1 124 1 57 1 125 3 189 1 126 3 193 1 127 3 197 1 128 1 65 1 131 3 189 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 201 1 117 1 29 1 118 3 201 1 119 3 201 1 120 1 41 1 121 3 201 1 122 1 49 1 123 3 201 1 124 1 57 1 125 3 201 1 126 1 65 1 131 3 201 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 205 1 117 1 29 1 118 3 205 1 119 3 205 1 120 1 41 1 121 3 205 1 122 1 49 1 123 3 205 1 124 1 57 1 125 3 205 1 126 1 65 1 131 3 205 1 132 1 73 1 142] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 3 209 0 9 0 66 0 10 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 15 0 66 0 19 0 66 0 21 0 66 0 37 0 66 0 41 0 66 0 42 0 66 0 43 0 66 0 50 0 66 0 51 0 66 0 60 0 66 0 63 0 66 0 66 0 66 0 74 0 66 0 82 0 66 0 84 0 66 0 113 0 66 0 114 0 66 0 126 0 66 0 135 0 66 0 136 0 66 0 138 0 66 0 139 0 66 0 141 0 66 0 142 0 66 0 143 0 66 0 144 0 66 1 143] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 3 213 0 9 0 70 0 10 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 15 0 70 0 19 0 70 0 21 0 70 0 37 0 70 0 41 0 70 0 42 0 70 0 43 0 70 0 50 0 70 0 51 0 70 0 60 0 70 0 63 0 70 0 66 0 70 0 74 0 70 0 82 0 70 0 84 0 70 0 113 0 70 0 114 0 70 0 126 0 70 0 135 0 70 0 136 0 70 0 138 0 70 0 139 0 70 0 141 0 70 0 142 0 70 0 143 0 70 0 144 0 70 1 143] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 0 1 143] 
#[0 0 86 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 90 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 94 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 98 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 102 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 106 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 110 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 114 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 118 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 122 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 126 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 130 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 134 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 0 138 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 3 217 0 22] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 0 142 0 41 0 142 0 42 0 142 0 43 0 142 0 50 0 142 0 51 4 69 0 60 0 142 0 63 4 69 0 66 4 69 0 74 0 142 0 82 4 69 0 84 4 69 0 113 4 69 0 114 0 142 0 126 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 0 142 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 0 142 1 143] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 5 0 146 0 6 0 146 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 11 0 12 0 146 0 13 0 146 0 14 0 146 0 15 0 146 0 19 0 146 0 21 0 146 0 31 0 146 0 35 0 146 0 37 0 146 0 38 0 146 0 39 0 146 0 41 0 146 0 42 0 146 0 43 0 146 0 50 0 146 0 51 0 146 0 59 0 146 0 60 0 146 0 61 0 146 0 63 0 146 0 66 0 146 0 74 0 146 0 78 0 146 0 81 0 146 0 82 0 146 0 84 0 146 0 101 0 146 0 102 0 146 0 113 0 146 0 114 0 146 0 117 0 146 0 119 0 146 0 121 0 146 0 126 0 146 0 133 0 146 0 134 0 146 0 135 0 146 0 136 0 146 0 137 0 146 0 138 0 146 0 139 0 146 0 140 0 146 0 141 0 146 0 142 0 146 0 143 0 146 0 144 4 77 0 195 4 81 0 196 0 146 1 143] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 4 85 1 75 3 73 1 76] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 4 89 1 75 3 73 1 76] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 15 0 12 0 170 0 13 0 170 0 14 0 170 0 15 0 170 0 19 0 170 0 21 0 170 0 31 0 170 0 35 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 50 0 170 0 51 0 170 0 59 0 170 0 60 0 170 0 61 0 170 0 63 0 170 0 66 0 170 0 74 0 170 0 78 0 170 0 81 0 170 0 82 0 170 0 84 0 170 0 101 0 170 0 102 0 170 0 113 0 170 0 114 0 170 0 117 0 170 0 119 0 170 0 121 0 170 0 126 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 137 0 170 0 138 0 170 0 139 0 170 0 140 0 170 0 141 0 170 0 142 0 170 0 143 0 170 0 144 4 93 0 195 4 81 0 196 0 170 1 143] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 2 233 0 2 0 190 0 3 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 4 97 0 145 4 101 0 146 1 189 0 147 1 213 0 149 1 141 0 153 4 105 0 191 4 109 0 192 1 189 0 219 4 113 0 220 4 117 0 221 4 121 0 222 4 125 0 223 4 129 0 224 4 133 0 225 4 137 0 226 4 113 1 126 1 213 1 131 1 217 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 4 141 0 220 4 141 1 126 1 213 1 131 1 217 1 142] 
#[1 0 194 0 3 0 194 0 5 0 194 0 10 0 194 0 11 0 194 0 15 0 194 0 17 0 194 0 22 0 194 0 24 0 194 0 28 0 194 0 31 0 194 0 33 0 194 0 35 0 194 0 38 0 194 0 41 0 194 0 42 0 194 0 43 0 194 0 50 0 194 0 51 0 194 0 54 0 194 0 59 0 194 0 60 0 194 0 61 0 194 0 63 0 194 0 67 0 194 0 73 0 194 0 78 4 145 0 81 0 194 0 82 0 194 0 92 0 194 0 94 0 194 0 101 0 194 0 102 0 194 0 109 0 194 0 117 0 194 0 120 0 194 0 123 0 194 0 126 0 194 0 128 0 194 0 133 0 194 0 134 0 194 0 136 0 194 0 137 0 194 0 138 0 194 0 143 0 194 1 143] 
#[1 3 117 0 2 0 54 0 9 4 149 0 203] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 4 153 0 220 4 153 1 126 1 213 1 131 1 217 1 142] 
#[0 0 198 0 20 0 103] 
#[1 3 117 0 2 0 54 0 81 0 54 0 143 4 157 0 203] 
#[0 4 161 0 56] 
#[1 0 202 0 3 0 202 0 5 0 202 0 6 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 15 0 202 0 17 0 202 0 22 0 202 0 24 0 202 0 28 0 202 0 31 0 202 0 33 0 202 0 35 0 202 0 38 0 202 0 41 0 202 0 42 0 202 0 43 0 202 0 50 0 202 0 51 0 202 0 54 0 202 0 59 0 202 0 60 0 202 0 61 0 202 0 63 0 202 0 67 0 202 0 73 0 202 0 78 0 202 0 81 0 202 0 82 0 202 0 92 0 202 0 94 0 202 0 101 0 202 0 102 0 202 0 109 0 202 0 117 0 202 0 120 4 165 0 121 0 202 0 123 0 202 0 126 0 202 0 128 0 202 0 133 0 202 0 134 0 202 0 136 0 202 0 137 0 202 0 138 0 202 0 143 0 202 1 143] 
#[0 4 169 0 81] 
#[1 4 173 0 145 4 177 0 244] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 4 181 0 220 4 181 1 126 1 213 1 131 1 217 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 4 185 0 220 4 185 1 126 1 213 1 131 1 217 1 142] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 4 193 0 190 4 193 0 194 1 153 0 199 4 193 0 201 4 193 0 202 4 193 0 204 4 193 0 208 4 193 0 209 1 177 0 211 4 193 0 217 1 185 0 218 1 189 0 219 1 193 0 220 4 193 0 253 4 193 0 254 4 193 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 0 206 0 2 0 210 0 3 0 206 0 4 0 210 0 5 0 19 0 6 0 206 0 7 0 206 0 8 0 210 0 10 0 210 0 11 0 19 0 12 0 206 0 13 0 206 0 14 0 210 0 15 0 210 0 17 0 206 0 19 0 206 0 21 0 210 0 22 0 210 0 24 0 210 0 28 0 210 0 31 0 210 0 33 0 210 0 35 0 206 0 37 0 210 0 38 0 210 0 41 0 210 0 42 0 210 0 43 0 210 0 50 0 210 0 51 0 210 0 54 0 210 0 59 0 19 0 60 0 210 0 61 0 210 0 63 0 206 0 66 0 210 0 67 0 210 0 73 0 206 0 74 0 210 0 78 0 210 0 81 0 210 0 82 0 206 0 84 0 210 0 92 0 210 0 94 0 210 0 101 0 210 0 102 0 210 0 109 0 206 0 113 0 206 0 114 0 210 0 117 0 210 0 120 0 210 0 123 0 210 0 126 0 210 0 128 0 210 0 133 0 210 0 134 0 206 0 135 0 210 0 136 0 210 0 137 0 19 0 138 0 206 0 139 0 206 0 141 0 206 0 142 0 210 0 143 0 210 1 143] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[0 0 218 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 0 222 0 17 0 222 0 136 0 0 1 143] 
#[1 0 226 0 3 0 226 0 5 4 197 0 6 0 226 0 10 0 226 0 11 0 150 0 12 0 226 0 15 0 226 0 17 0 226 0 22 0 226 0 24 0 226 0 28 0 226 0 31 0 226 0 33 0 226 0 35 0 226 0 38 0 226 0 41 0 226 0 42 0 226 0 43 0 226 0 50 0 226 0 51 0 226 0 54 0 226 0 59 0 226 0 60 0 226 0 61 0 226 0 63 0 226 0 67 0 226 0 73 0 226 0 78 0 226 0 81 0 226 0 82 0 226 0 92 0 226 0 94 0 226 0 101 0 226 0 102 0 226 0 109 0 226 0 117 0 226 0 120 0 226 0 123 0 226 0 126 0 226 0 128 0 226 0 133 0 226 0 134 0 226 0 136 0 226 0 137 0 226 0 138 0 226 0 143 4 201 0 195 4 81 0 196 0 226 1 143] 
#[0 0 230 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 0 234 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 0 238 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 0 242 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 0 246 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 4 205 0 20 4 209 0 103] 
#[0 0 250 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 4 213 0 7] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[1 4 217 0 2 1 2 0 3 4 225 0 4 1 2 0 5 4 221 0 6 1 2 0 7 4 225 0 8 1 2 0 10 1 2 0 11 4 225 0 12 4 225 0 13 4 225 0 14 1 2 0 15 1 2 0 17 4 225 0 19 4 225 0 21 1 2 0 22 1 2 0 24 1 2 0 28 1 2 0 31 1 2 0 33 1 2 0 35 4 225 0 37 1 2 0 38 1 2 0 41 1 2 0 42 1 2 0 43 1 2 0 50 1 2 0 51 1 2 0 54 1 2 0 59 0 23 0 60 1 2 0 61 1 2 0 63 4 225 0 66 1 2 0 67 1 2 0 73 4 225 0 74 1 2 0 78 1 2 0 81 1 2 0 82 4 225 0 84 1 2 0 92 1 2 0 94 1 2 0 101 1 2 0 102 1 2 0 109 4 225 0 113 4 225 0 114 1 2 0 117 1 2 0 120 1 2 0 123 1 2 0 126 1 2 0 128 1 2 0 133 1 2 0 134 4 225 0 135 1 2 0 136 1 2 0 137 0 27 0 138 4 225 0 139 4 225 0 141 4 225 0 142 1 2 0 143 4 225 1 136 1 2 1 143] 
#[1 4 229 0 17 4 233 0 136] 
#[0 1 6 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 1 10 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[0 1 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 4 237 0 220 4 241 0 250 4 237 1 126 1 213 1 131 1 217 1 142] 
#[1 4 245 0 12 1 26 0 15 4 249 0 186] 
#[0 0 0 1 143] 
#[1 1 221 0 136 4 253 0 145 5 1 0 249] 
#[0 1 30 0 27 0 29 0 34 0 54 0 73 0 94 0 96 0 136 0 145] 
#[1 5 5 0 9 1 34 0 15 5 9 1 18] 
#[0 0 0 1 143] 
#[0 1 38 0 3 0 5 0 9 0 10 0 137 0 143 1 143] 
#[1 5 13 0 5 5 17 0 9] 
#[0 0 0 1 143] 
#[0 1 42 0 145] 
#[0 1 46 0 145] 
#[0 1 50 0 145] 
#[0 0 0 1 143] 
#[1 1 249 0 145 5 21 1 43] 
#[1 5 25 0 29 5 29 0 34 5 33 0 54 2 45 0 73 5 37 0 83 5 41 0 94 2 53 0 96 2 57 0 120 2 65 0 128 5 45 1 20 5 49 1 58 5 53 1 60 5 57 1 66 5 61 1 68 5 65 1 80] 
#[1 1 241 0 145 5 69 0 178 5 73 0 179] 
#[1 3 117 0 2 0 54 0 143 4 173 0 145 5 77 0 203 5 81 0 244] 
#[1 4 173 0 145 5 85 0 244] 
#[1 4 173 0 145 5 89 0 244] 
#[1 4 173 0 145 5 93 0 244] 
#[1 4 173 0 145 5 97 0 244] 
#[0 5 101 0 145] 
#[1 1 249 0 145 1 253 1 43 5 105 1 81 5 109 1 82] 
#[1 1 221 0 136 1 225 0 145 5 113 0 184 5 117 0 185 1 233 0 248 1 237 0 249] 
#[1 1 249 0 145 1 253 1 43 5 121 1 81 5 109 1 82] 
#[0 1 54 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 58 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 0 0 1 143] 
#[0 1 62 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 5 125 0 27 2 33 0 29 2 37 0 34 5 33 0 54 2 45 0 73 5 41 0 94 2 53 0 96 1 221 0 136 5 1 0 249 5 129 1 10 5 133 1 11 5 137 1 12 5 141 1 13 5 145 1 15 5 149 1 16 5 153 1 17 5 157 1 20 5 129 1 51 2 153 1 52 5 133 1 54 2 161 1 55 5 137 1 57 2 169 1 58 5 137 1 59 2 177 1 60 5 141 1 62 5 141 1 63 5 145 1 65 2 193 1 66 5 145 1 67 2 201 1 68 5 149 1 70 5 149 1 71 5 153 1 73 2 217 1 74] 
#[0 1 66 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 70 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 74 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 78 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 82 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 86 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 90 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 94 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 98 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 102 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 106 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 110 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 114 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 118 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 5 13 0 5 5 161 0 9] 
#[0 1 122 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 1 126 0 3 1 126 0 25 1 126 0 27 1 126 0 28 1 126 0 29 1 126 0 34 1 126 0 42 5 165 0 46 5 169 0 53 1 126 0 54 1 126 0 73 1 126 0 93 1 126 0 94 1 126 0 96 1 126 0 97 1 126 0 98 1 126 0 99 1 126 0 118 1 126 0 120 1 126 0 123 1 126 0 128 1 126 0 136 1 126 0 145 5 173 1 37 1 126 1 143] 
#[0 1 130 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 1 134 0 3 1 134 0 25 1 134 0 27 1 134 0 28 1 134 0 29 1 134 0 34 1 134 0 42 5 165 0 46 5 169 0 53 1 134 0 54 1 134 0 73 1 134 0 93 1 134 0 94 1 134 0 96 1 134 0 97 1 134 0 98 1 134 0 99 1 134 0 118 1 134 0 120 1 134 0 123 1 134 0 128 1 134 0 136 1 134 0 145 5 177 1 37 1 134 1 143] 
#[0 1 138 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 142 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 146 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 1 150 0 3 1 150 0 22 1 150 0 24 1 150 0 25 1 150 0 27 1 150 0 28 1 150 0 29 1 150 0 34 1 150 0 42 5 165 0 46 1 150 0 50 5 169 0 53 1 150 0 54 1 150 0 58 1 150 0 63 1 150 0 67 1 150 0 73 1 150 0 93 1 150 0 94 1 150 0 96 1 150 0 97 1 150 0 98 1 150 0 99 1 150 0 109 1 150 0 118 1 150 0 120 1 150 0 123 1 150 0 128 1 150 0 136 1 150 0 145 5 181 1 37 1 150 1 143] 
#[0 1 154 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 158 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 162 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 166 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 170 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 50 0 54 0 58 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 1 174 0 3 1 174 0 22 1 174 0 24 1 174 0 25 1 174 0 27 1 174 0 28 1 174 0 29 1 174 0 34 1 174 0 42 5 165 0 46 1 174 0 50 5 169 0 53 1 174 0 54 1 174 0 58 1 174 0 63 1 174 0 67 1 174 0 73 1 174 0 93 1 174 0 94 1 174 0 96 1 174 0 97 1 174 0 98 1 174 0 99 1 174 0 109 1 174 0 118 1 174 0 120 1 174 0 123 1 174 0 128 1 174 0 136 1 174 0 145 5 185 1 37 1 174 1 143] 
#[0 1 178 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 182 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 186 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 1 190 0 3 1 190 0 25 1 190 0 27 1 190 0 28 1 190 0 29 1 190 0 34 1 190 0 42 5 165 0 46 5 169 0 53 1 190 0 54 1 190 0 73 1 190 0 93 1 190 0 94 1 190 0 96 1 190 0 97 1 190 0 98 1 190 0 99 1 190 0 118 1 190 0 120 1 190 0 123 1 190 0 128 1 190 0 136 1 190 0 145 5 189 1 37 1 190 1 143] 
#[0 1 194 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 1 198 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 0 0 1 143] 
#[1 2 233 0 2 0 190 0 3 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 4 101 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 4 113 0 220 4 117 0 221 4 121 0 222 4 125 0 223 4 129 0 224 4 133 0 225 4 137 0 226 4 113 1 126 1 213 1 131 1 217 1 142] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[1 4 217 0 2 4 225 0 4 1 202 0 5 4 221 0 6 5 193 0 7 4 225 0 8 1 202 0 9 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[0 0 0 1 143] 
#[0 5 197 0 9] 
#[0 5 201 0 5] 
#[1 1 206 0 5 1 210 0 9] 
#[0 1 214 0 5 0 6 0 33 0 60 0 92 0 143] 
#[1 5 205 0 6 1 218 0 33 5 213 0 92 1 218 0 143 5 213 0 200] 
#[1 5 205 0 6 1 218 0 33 5 217 0 92 1 218 0 143 5 217 0 200] 
#[1 5 205 0 6 5 221 0 143] 
#[1 5 205 0 6 1 218 0 33 5 225 0 92 1 218 0 143 5 225 0 200] 
#[1 5 205 0 6 1 218 0 33 5 229 0 92 1 218 0 143 5 229 0 200] 
#[1 5 233 0 5 5 237 0 143 5 241 0 172] 
#[0 1 222 0 5 0 143] 
#[1 1 226 0 5 5 205 0 6 5 245 0 60 1 226 0 143] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 249 0 161 3 69 1 75 3 73 1 76] 
#[1 1 230 0 22 1 230 0 24 1 230 0 28 1 230 0 45 1 230 0 54 1 230 0 67 1 230 0 73 1 230 0 94 1 230 0 109 1 230 0 120 1 230 0 123 1 230 0 128 5 253 0 160] 
#[1 3 5 0 145 6 1 0 165 6 5 0 174] 
#[1 6 9 0 30 6 13 0 166] 
#[1 0 6 0 28 0 6 0 42 0 6 0 50 0 6 0 54 0 6 0 58 0 6 0 63 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 6 17 0 170] 
#[1 1 234 0 42 1 234 0 50 6 21 0 58 1 234 0 63 6 25 1 46] 
#[0 6 29 0 6] 
#[0 1 238 0 6] 
#[1 0 10 0 22 0 117 0 24 2 29 0 28 5 33 0 54 6 33 0 67 2 45 0 73 5 41 0 94 6 37 0 109 2 57 0 120 2 61 0 123 2 65 0 128 6 77 0 177 6 77 0 180 6 77 0 183 6 77 1 56 6 57 1 57 2 169 1 58 6 61 1 59 2 177 1 60 6 77 1 64 6 69 1 65 2 193 1 66 6 73 1 67 2 201 1 68 6 77 1 77 6 77 1 78 6 77 1 79 2 225 1 80 6 89 1 114 6 89 1 115 1 21 1 116] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 3 221 0 2 6 93 0 3 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 3 221 0 2 1 242 0 3 1 242 0 4 1 242 0 5 3 229 0 6 1 242 0 7 1 242 0 8 1 242 0 9 1 242 0 10 0 31 0 12 0 35 0 13 0 39 0 14 0 43 0 15 1 242 0 19 1 242 0 21 1 242 0 31 1 242 0 35 1 242 0 37 1 242 0 38 1 242 0 39 1 242 0 41 1 242 0 42 1 242 0 43 1 242 0 50 1 242 0 51 1 242 0 59 0 47 0 60 1 242 0 61 1 242 0 63 1 242 0 66 1 242 0 74 1 242 0 78 1 242 0 81 1 242 0 82 1 242 0 84 1 242 0 101 1 242 0 102 1 242 0 113 1 242 0 114 1 242 0 117 1 242 0 119 1 242 0 121 1 242 0 126 1 242 0 133 1 242 0 134 1 242 0 135 4 41 0 136 1 242 0 137 0 51 0 138 0 55 0 139 1 242 0 140 1 242 0 141 1 242 0 142 1 242 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 1 242 1 143] 
#[1 6 97 0 42 6 101 0 143] 
#[0 1 246 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 6 105 0 81 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[0 6 109 0 145] 
#[1 6 113 0 9 0 66 0 10 0 66 0 60] 
#[1 6 117 0 10 6 121 0 60] 
#[0 1 250 0 10 0 60] 
#[1 1 254 0 3 2 21 0 28 2 21 0 85 2 21 0 128 0 22 0 145 6 125 1 40 6 129 1 41 6 133 1 42 2 21 1 45] 
#[1 5 5 0 9 1 34 0 22 1 34 0 24 1 34 0 28 1 34 0 54 1 34 0 67 1 34 0 73 1 34 0 94 1 34 0 109 1 34 0 120 1 34 0 123 1 34 0 128 6 137 1 18] 
#[0 2 2 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 2 6 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 6 141 0 119 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 6 145 0 2 2 10 0 3 2 10 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 8 2 10 0 9 2 10 0 10 2 10 0 12 2 10 0 13 2 10 0 14 2 10 0 15 2 10 0 19 2 10 0 21 2 10 0 31 2 10 0 35 2 10 0 37 2 10 0 38 2 10 0 39 2 10 0 41 2 10 0 42 2 10 0 43 2 10 0 50 2 10 0 51 2 10 0 59 2 10 0 60 2 10 0 61 2 10 0 63 2 10 0 66 2 10 0 74 2 10 0 78 2 10 0 81 2 10 0 82 2 10 0 84 2 10 0 101 2 10 0 102 2 10 0 113 2 10 0 114 2 10 0 117 2 10 0 119 2 10 0 121 2 10 0 126 2 10 0 133 2 10 0 134 2 10 0 135 2 10 0 136 2 10 0 137 2 10 0 138 2 10 0 139 2 10 0 140 2 10 0 141 2 10 0 142 2 10 0 143 2 10 0 144 2 10 1 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 149 1 117 1 29 1 118 6 149 1 119 6 149 1 120 1 41 1 121 6 149 1 122 1 49 1 123 6 149 1 124 1 57 1 125 6 149 1 126 1 65 1 131 6 149 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 153 1 117 1 29 1 118 6 153 1 119 6 153 1 120 1 41 1 121 6 153 1 122 1 49 1 123 6 153 1 124 1 57 1 125 6 153 1 126 1 65 1 131 6 153 1 132 1 73 1 142] 
#[1 3 221 0 2 2 14 0 3 4 69 0 4 2 14 0 5 3 229 0 6 2 14 0 7 4 69 0 8 2 14 0 9 3 237 0 10 0 59 0 12 0 63 0 13 0 67 0 14 0 71 0 15 4 69 0 19 4 69 0 21 2 14 0 31 2 14 0 35 4 69 0 37 2 14 0 38 2 14 0 39 2 14 0 41 2 14 0 42 2 14 0 43 2 14 0 50 2 14 0 51 2 14 0 59 0 75 0 60 2 14 0 61 2 14 0 63 4 69 0 66 4 69 0 74 2 14 0 78 2 14 0 81 2 14 0 82 4 69 0 84 2 14 0 101 2 14 0 102 4 69 0 113 4 69 0 114 2 14 0 117 2 14 0 119 2 14 0 121 2 14 0 126 2 14 0 133 2 14 0 134 4 69 0 135 4 41 0 136 2 14 0 137 0 79 0 138 0 83 0 139 2 14 0 140 4 69 0 141 4 69 0 142 2 14 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 2 14 1 143] 
#[0 2 18 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 2 22 0 41 2 22 0 42 2 22 0 43 2 22 0 50 2 22 0 51 4 69 0 60 2 22 0 63 4 69 0 66 4 69 0 74 2 22 0 82 4 69 0 84 4 69 0 113 4 69 0 114 2 22 0 126 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 6 157 0 140 4 69 0 141 4 69 0 142 2 22 0 143 4 61 0 144 6 161 1 108 4 65 1 129 4 69 1 135 4 69 1 136 2 22 1 143] 
#[1 6 165 0 126 6 101 0 143] 
#[1 2 26 0 42 6 169 0 43 2 26 0 51 6 101 0 143 6 173 1 93] 
#[1 5 13 0 5 6 177 0 9 6 181 0 10] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 6 185 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 6 189 0 5 6 193 0 38] 
#[1 3 221 0 2 4 69 0 4 2 30 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 2 30 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[0 2 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 3 221 0 2 4 69 0 4 2 38 0 5 3 229 0 6 6 197 0 7 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 2 38 0 137 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 6 201 0 5 6 205 0 137] 
#[0 2 42 0 5 0 137] 
#[1 3 221 0 2 2 46 0 3 4 69 0 4 2 46 0 5 3 229 0 6 2 46 0 7 4 69 0 8 2 46 0 9 2 46 0 10 0 87 0 12 0 91 0 13 0 95 0 14 0 99 0 15 2 46 0 19 2 46 0 21 2 46 0 31 2 46 0 35 4 69 0 37 2 46 0 38 2 46 0 39 2 46 0 41 2 46 0 42 2 46 0 43 2 46 0 50 2 46 0 51 2 46 0 59 0 103 0 60 2 46 0 61 2 46 0 63 2 46 0 66 4 69 0 74 2 46 0 78 2 46 0 81 2 46 0 82 2 46 0 84 2 46 0 101 2 46 0 102 4 69 0 113 4 69 0 114 2 46 0 117 2 46 0 119 2 46 0 121 2 46 0 126 2 46 0 133 2 46 0 134 2 46 0 135 4 41 0 136 2 46 0 137 0 107 0 138 0 111 0 139 2 46 0 140 2 46 0 141 2 46 0 142 2 46 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 2 46 1 143] 
#[1 3 221 0 2 2 50 0 3 4 69 0 4 2 50 0 5 3 229 0 6 2 50 0 7 4 69 0 8 2 50 0 9 2 50 0 10 0 115 0 12 0 119 0 13 0 123 0 14 0 127 0 15 2 50 0 19 2 50 0 21 2 50 0 31 2 50 0 35 4 69 0 37 2 50 0 38 2 50 0 39 2 50 0 41 2 50 0 42 2 50 0 43 2 50 0 50 2 50 0 51 2 50 0 59 0 131 0 60 2 50 0 61 2 50 0 63 2 50 0 66 4 69 0 74 2 50 0 78 2 50 0 81 2 50 0 82 2 50 0 84 2 50 0 101 2 50 0 102 4 69 0 113 4 69 0 114 2 50 0 117 2 50 0 119 2 50 0 121 2 50 0 126 2 50 0 133 2 50 0 134 2 50 0 135 4 41 0 136 2 50 0 137 0 135 0 138 0 139 0 139 2 50 0 140 2 50 0 141 2 50 0 142 2 50 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 2 50 1 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 209 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 6 209 1 114 6 209 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 213 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 6 213 1 114 6 213 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[0 6 217 0 42] 
#[1 0 109 0 2 6 221 0 3 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 225 1 117 1 29 1 118 6 225 1 119 6 225 1 120 1 41 1 121 6 225 1 122 1 49 1 123 6 225 1 124 1 57 1 125 6 225 1 126 1 65 1 131 6 225 1 132 6 229 1 133 6 233 1 134 1 73 1 142] 
#[0 2 54 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[1 6 237 0 1 6 241 0 145] 
#[0 2 58 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 245 1 117 1 29 1 118 6 245 1 119 6 245 1 120 1 41 1 121 6 245 1 122 1 49 1 123 6 245 1 124 1 57 1 125 6 245 1 126 1 65 1 131 6 245 1 132 1 73 1 142] 
#[0 2 62 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 66 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 70 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 74 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 147 0 149 0 153 1 142] 
#[0 2 78 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 82 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 86 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 90 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 94 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 98 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 102 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 106 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 110 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 114 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 249 1 117 1 29 1 118 6 249 1 119 6 249 1 120 1 41 1 121 6 249 1 122 1 49 1 123 6 249 1 124 1 57 1 125 6 249 1 126 6 253 1 130 1 65 1 131 6 249 1 132 1 73 1 142] 
#[0 2 118 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 122 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 126 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 130 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 146 0 147 0 149 0 153 1 142] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 7 1 1 117 1 29 1 118 7 1 1 119 7 1 1 120 1 41 1 121 7 1 1 122 1 49 1 123 7 1 1 124 1 57 1 125 7 1 1 126 1 65 1 131 7 1 1 132 1 73 1 142] 
#[0 2 142 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 147 0 149 0 153 1 142] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 7 5 0 12] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 2 162 0 3 2 162 0 5 7 9 0 15] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 8 7 13 0 9 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 19 0 206 0 21 0 206 0 37 0 206 0 60 0 206 0 66 0 206 0 74 0 206 0 84 0 206 0 113 0 206 0 114 0 206 0 135 0 206 0 138 0 206 0 139 0 206 0 141 0 206 0 142] 
#[1 7 17 0 3 7 21 0 5] 
#[0 2 166 0 3 0 5] 
#[1 4 217 0 2 2 170 0 3 4 225 0 4 2 170 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 7 25 0 15 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[0 7 29 0 3] 
#[1 2 174 0 3 7 33 0 5] 
#[0 2 178 0 3 0 5] 
#[1 2 182 0 3 7 41 0 143 7 41 1 99] 
#[1 2 186 0 3 0 143 0 143] 
#[0 2 190 0 3 0 143] 
#[1 4 217 0 2 2 194 0 3 2 194 0 4 2 194 0 5 4 221 0 6 2 194 0 7 2 194 0 8 2 194 0 9 2 194 0 10 2 194 0 11 0 147 0 12 0 151 0 13 0 155 0 14 2 194 0 15 2 194 0 17 2 194 0 19 2 194 0 21 2 194 0 22 2 194 0 24 2 194 0 28 2 194 0 31 2 194 0 33 2 194 0 35 2 194 0 37 2 194 0 38 2 194 0 41 2 194 0 42 2 194 0 43 2 194 0 50 2 194 0 51 2 194 0 54 2 194 0 59 0 159 0 60 2 194 0 61 2 194 0 63 2 194 0 66 2 194 0 67 2 194 0 73 2 194 0 74 2 194 0 78 2 194 0 81 2 194 0 82 2 194 0 84 2 194 0 92 2 194 0 94 2 194 0 101 2 194 0 102 2 194 0 109 2 194 0 113 2 194 0 114 2 194 0 117 2 194 0 120 2 194 0 123 2 194 0 126 2 194 0 128 2 194 0 133 2 194 0 134 2 194 0 135 2 194 0 136 2 194 0 137 0 163 0 138 0 167 0 139 2 194 0 141 2 194 0 142 2 194 0 143 4 225 1 136 2 194 1 143] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 7 49 0 190 7 49 0 194 1 153 0 199 7 49 0 201 7 49 0 202 7 49 0 204 7 49 0 208 7 49 0 209 1 177 0 211 7 49 0 217 1 185 0 218 1 189 0 219 1 193 0 220 7 49 0 253 7 49 0 254 7 49 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 7 53 0 9] 
#[1 4 217 0 2 2 198 0 3 4 225 0 4 2 198 0 5 4 221 0 6 2 198 0 7 4 225 0 8 2 198 0 9 2 198 0 10 2 198 0 11 0 171 0 12 0 175 0 13 0 179 0 14 2 198 0 15 2 198 0 17 4 225 0 19 4 225 0 21 2 198 0 22 2 198 0 24 2 198 0 28 2 198 0 31 2 198 0 33 2 198 0 35 4 225 0 37 2 198 0 38 2 198 0 41 2 198 0 42 2 198 0 43 2 198 0 50 2 198 0 51 2 198 0 54 2 198 0 59 0 183 0 60 2 198 0 61 2 198 0 63 4 225 0 66 2 198 0 67 2 198 0 73 4 225 0 74 2 198 0 78 2 198 0 81 2 198 0 82 4 225 0 84 2 198 0 92 2 198 0 94 2 198 0 101 2 198 0 102 2 198 0 109 4 225 0 113 4 225 0 114 2 198 0 117 2 198 0 120 2 198 0 123 2 198 0 126 2 198 0 128 2 198 0 133 2 198 0 134 4 225 0 135 2 198 0 136 2 198 0 137 0 187 0 138 0 191 0 139 4 225 0 141 4 225 0 142 2 198 0 143 4 225 1 136 2 198 1 143] 
#[1 7 57 0 81 2 202 0 143 7 61 1 14] 
#[0 7 65 0 52] 
#[1 7 69 0 54 7 73 0 94] 
#[1 7 77 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 7 81 0 217 1 185 0 218 1 189 0 219 7 85 0 220 7 85 1 126 1 213 1 131 1 217 1 142] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 1 26 0 11 4 245 0 12 1 26 0 15 1 26 0 17 1 26 0 22 1 26 0 24 1 26 0 25 1 26 0 27 1 26 0 28 1 26 0 29 1 26 0 31 1 26 0 33 1 26 0 34 1 26 0 35 1 26 0 38 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 50 1 26 0 51 1 26 0 54 1 26 0 59 1 26 0 60 1 26 0 61 1 26 0 63 1 26 0 67 1 26 0 73 1 26 0 78 1 26 0 81 1 26 0 82 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 96 1 26 0 97 1 26 0 98 1 26 0 99 1 26 0 101 1 26 0 102 1 26 0 109 1 26 0 117 1 26 0 118 1 26 0 120 1 26 0 123 1 26 0 126 1 26 0 128 1 26 0 133 1 26 0 134 1 26 0 136 1 26 0 137 1 26 0 138 1 26 0 143 1 26 0 145 7 89 0 186 1 26 1 143] 
#[1 7 93 0 2 2 206 0 3 2 206 0 5 7 97 0 6 2 206 0 10 2 206 0 11 2 206 0 15 2 206 0 17 2 206 0 22 2 206 0 24 2 206 0 28 2 206 0 31 2 206 0 33 2 206 0 35 2 206 0 38 2 206 0 41 2 206 0 42 2 206 0 43 2 206 0 50 2 206 0 51 2 206 0 54 2 206 0 59 2 206 0 60 2 206 0 61 2 206 0 63 2 206 0 67 2 206 0 73 2 206 0 78 2 206 0 81 2 206 0 82 2 206 0 92 2 206 0 94 2 206 0 101 2 206 0 102 2 206 0 109 2 206 0 117 2 206 0 120 2 206 0 123 2 206 0 126 2 206 0 128 2 206 0 133 2 206 0 134 2 206 0 136 2 206 0 137 2 206 0 138 2 206 0 143 2 206 1 143] 
#[1 4 217 0 2 2 210 0 3 4 225 0 4 2 210 0 5 4 221 0 6 2 210 0 7 4 225 0 8 2 210 0 9 2 210 0 10 2 210 0 11 0 195 0 12 0 199 0 13 0 203 0 14 2 210 0 15 2 210 0 17 2 210 0 19 2 210 0 21 2 210 0 22 2 210 0 24 2 210 0 28 2 210 0 31 2 210 0 33 2 210 0 35 4 225 0 37 2 210 0 38 2 210 0 41 2 210 0 42 2 210 0 43 2 210 0 50 2 210 0 51 2 210 0 54 2 210 0 59 0 207 0 60 2 210 0 61 2 210 0 63 2 210 0 66 2 210 0 67 2 210 0 73 4 225 0 74 2 210 0 78 2 210 0 81 2 210 0 82 2 210 0 84 2 210 0 92 2 210 0 94 2 210 0 101 2 210 0 102 2 210 0 109 4 225 0 113 4 225 0 114 2 210 0 117 2 210 0 120 2 210 0 123 2 210 0 126 2 210 0 128 2 210 0 133 2 210 0 134 2 210 0 135 2 210 0 136 2 210 0 137 0 211 0 138 0 215 0 139 2 210 0 141 2 210 0 142 2 210 0 143 4 225 1 136 2 210 1 143] 
#[1 4 217 0 2 2 214 0 3 4 225 0 4 2 214 0 5 4 221 0 6 2 214 0 7 4 225 0 8 2 214 0 9 2 214 0 10 2 214 0 11 0 219 0 12 0 223 0 13 0 227 0 14 2 214 0 15 2 214 0 17 2 214 0 19 2 214 0 21 2 214 0 22 2 214 0 24 2 214 0 28 2 214 0 31 2 214 0 33 2 214 0 35 4 225 0 37 2 214 0 38 2 214 0 41 2 214 0 42 2 214 0 43 2 214 0 50 2 214 0 51 2 214 0 54 2 214 0 59 0 231 0 60 2 214 0 61 2 214 0 63 2 214 0 66 2 214 0 67 2 214 0 73 4 225 0 74 2 214 0 78 2 214 0 81 2 214 0 82 2 214 0 84 2 214 0 92 2 214 0 94 2 214 0 101 2 214 0 102 2 214 0 109 4 225 0 113 4 225 0 114 2 214 0 117 2 214 0 120 2 214 0 123 2 214 0 126 2 214 0 128 2 214 0 133 2 214 0 134 2 214 0 135 2 214 0 136 2 214 0 137 0 235 0 138 0 239 0 139 2 214 0 141 2 214 0 142 2 214 0 143 4 225 1 136 2 214 1 143] 
#[0 0 222 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 2 218 0 3 2 218 0 5 2 218 0 10 2 218 0 11 2 218 0 15 2 218 0 17 2 218 0 22 2 218 0 24 2 218 0 28 2 218 0 31 2 218 0 33 2 218 0 35 2 218 0 38 2 218 0 41 2 218 0 42 2 218 0 43 2 218 0 50 2 218 0 51 2 218 0 54 2 218 0 59 2 218 0 60 2 218 0 61 2 218 0 63 2 218 0 67 2 218 0 73 2 218 0 78 2 218 0 81 2 218 0 82 2 218 0 92 2 218 0 94 2 218 0 101 2 218 0 102 2 218 0 109 2 218 0 117 2 218 0 120 2 218 0 123 2 218 0 126 2 218 0 128 2 218 0 133 2 218 0 134 4 233 0 136 2 218 0 137 2 218 0 138 2 218 0 143 2 218 1 143] 
#[0 7 101 0 146] 
#[0 2 222 0 3 0 5 0 6 0 10 0 11 0 12 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 2 226 0 81 7 105 0 136 7 109 1 0] 
#[1 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 7 113 0 210 7 117 0 235 7 121 0 245] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 7 125 0 218 1 189 0 219 1 193 0 220 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 7 129 0 220 7 133 0 227 7 129 1 126 1 213 1 131 1 217 1 142] 
#[0 7 137 0 146] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 7 141 0 220 7 141 1 126 1 213 1 131 1 217 1 142] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 7 145 0 190 7 145 0 194 1 153 0 199 7 145 0 201 7 145 0 202 7 145 0 204 7 145 0 208 7 145 0 209 1 177 0 211 7 145 0 217 1 185 0 218 1 189 0 219 1 193 0 220 7 145 0 253 7 145 0 254 7 145 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 7 149 0 220 7 149 1 126 1 213 1 131 1 217 1 142] 
#[1 4 217 0 2 4 225 0 4 2 234 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 2 234 0 137 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 7 153 0 5 7 157 0 137] 
#[1 7 161 0 145 7 165 0 187 7 169 0 188] 
#[0 7 173 0 15] 
#[1 4 245 0 12 1 26 0 15 7 177 0 186] 
#[0 2 238 0 27 0 29 0 34 0 54 0 73 0 94 0 96 0 136 0 145] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 7 181 0 190 7 181 0 194 1 153 0 199 7 181 0 201 7 181 0 202 7 181 0 204 7 181 0 208 7 181 0 209 1 177 0 211 7 181 0 217 1 185 0 218 1 189 0 219 1 193 0 220 7 181 0 253 7 181 0 254 7 181 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 7 185 0 15] 
#[0 7 189 0 145] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 7 193 0 190 7 193 0 194 1 153 0 199 7 193 0 201 7 193 0 202 7 193 0 204 7 193 0 208 7 193 0 209 1 177 0 211 7 193 0 217 1 185 0 218 1 189 0 219 1 193 0 220 7 193 0 253 7 193 0 254 7 193 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 2 242 0 3 5 13 0 5 7 197 0 9 2 242 0 137 2 242 0 143 2 242 1 143] 
#[1 3 117 0 2 0 54 0 143 4 173 0 145 7 201 0 203 7 205 0 244] 
#[1 4 173 0 145 7 209 0 244] 
#[1 4 173 0 145 7 213 0 244] 
#[1 4 173 0 145 7 217 0 244] 
#[1 4 173 0 145 7 221 0 244] 
#[0 2 246 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 2 250 0 3 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 2 254 0 3 2 254 0 22 2 254 0 24 2 254 0 25 2 254 0 27 2 254 0 28 2 254 0 29 2 254 0 34 2 254 0 42 5 165 0 46 5 169 0 53 2 254 0 54 2 254 0 67 2 254 0 73 2 254 0 93 2 254 0 94 2 254 0 96 2 254 0 97 2 254 0 98 2 254 0 99 2 254 0 109 2 254 0 118 2 254 0 120 2 254 0 123 2 254 0 128 2 254 0 136 2 254 0 145 5 181 1 37 2 254 1 143] 
#[0 3 2 0 3 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 3 6 0 3 3 6 0 22 3 6 0 24 3 6 0 25 3 6 0 27 3 6 0 28 3 6 0 29 3 6 0 34 3 6 0 42 5 165 0 46 5 169 0 53 3 6 0 54 3 6 0 67 3 6 0 73 3 6 0 93 3 6 0 94 3 6 0 96 3 6 0 97 3 6 0 98 3 6 0 99 3 6 0 109 3 6 0 118 3 6 0 120 3 6 0 123 3 6 0 128 3 6 0 136 3 6 0 145 5 185 1 37 3 6 1 143] 
#[0 3 10 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 3 14 0 3 3 14 0 22 3 14 0 24 3 14 0 25 3 14 0 27 3 14 0 28 3 14 0 29 3 14 0 34 3 14 0 42 3 14 0 45 3 14 0 50 3 14 0 54 3 14 0 58 3 14 0 63 3 14 0 67 3 14 0 73 3 14 0 93 3 14 0 94 3 14 0 96 3 14 0 97 3 14 0 98 3 14 0 99 3 14 0 109 3 14 0 118 3 14 0 120 3 14 0 123 3 14 0 128 3 14 0 136 1 241 0 145 7 225 0 179 3 14 1 143] 
#[0 3 18 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 7 229 0 143] 
#[1 3 117 0 2 7 97 0 6 0 54 0 143 7 233 0 203] 
#[1 3 117 0 2 7 97 0 6 0 54 0 143 7 237 0 203] 
#[1 3 117 0 2 7 97 0 6 0 54 0 9 7 241 0 15 0 54 0 143 7 245 0 203] 
#[1 3 117 0 2 7 97 0 6 0 54 0 9 0 54 0 143 7 249 0 203] 
#[1 3 117 0 2 7 97 0 6 7 253 0 15 0 54 0 143 8 1 0 203] 
#[1 3 22 0 9 3 22 0 31 3 22 0 35 3 22 0 59 3 22 0 61 3 22 0 78 3 22 0 101 3 22 0 102 3 22 0 117 3 22 0 133 3 22 0 134 8 5 0 136 3 22 0 143 8 9 1 23] 
#[1 3 26 0 3 3 26 0 22 3 26 0 24 3 26 0 25 3 26 0 27 3 26 0 28 3 26 0 29 3 26 0 34 3 26 0 42 3 26 0 45 3 26 0 50 3 26 0 54 3 26 0 58 3 26 0 63 3 26 0 67 3 26 0 73 3 26 0 93 3 26 0 94 3 26 0 96 3 26 0 97 3 26 0 98 3 26 0 99 3 26 0 109 3 26 0 118 3 26 0 120 3 26 0 123 3 26 0 128 3 26 0 136 1 249 0 145 1 253 1 43 8 13 1 82 3 26 1 143] 
#[0 3 30 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 3 34 0 3 3 34 0 22 3 34 0 24 3 34 0 25 3 34 0 27 3 34 0 28 3 34 0 29 3 34 0 34 3 34 0 42 3 34 0 45 3 34 0 50 3 34 0 54 3 34 0 58 3 34 0 63 3 34 0 67 3 34 0 73 3 34 0 93 3 34 0 94 3 34 0 96 3 34 0 97 3 34 0 98 3 34 0 99 3 34 0 109 3 34 0 118 3 34 0 120 3 34 0 123 3 34 0 128 1 221 0 136 1 225 0 145 8 17 0 185 1 233 0 248 1 237 0 249 3 34 1 143] 
#[0 3 38 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 3 42 0 3 3 42 0 22 3 42 0 24 3 42 0 25 3 42 0 27 3 42 0 28 3 42 0 29 3 42 0 34 3 42 0 42 3 42 0 45 3 42 0 50 3 42 0 54 3 42 0 58 3 42 0 63 3 42 0 67 3 42 0 73 3 42 0 93 3 42 0 94 3 42 0 96 3 42 0 97 3 42 0 98 3 42 0 99 3 42 0 109 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 128 3 42 0 136 1 249 0 145 1 253 1 43 8 13 1 82 3 42 1 143] 
#[1 5 25 0 29 5 29 0 34 5 33 0 54 2 45 0 73 5 37 0 83 5 41 0 94 2 53 0 96 8 21 1 20 5 49 1 58 5 53 1 60 5 57 1 66 5 61 1 68] 
#[0 3 46 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 3 50 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 3 54 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 3 58 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 3 62 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 3 66 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 3 70 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 3 74 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 8 25 0 190 8 25 0 194 1 153 0 199 8 25 0 201 8 25 0 202 8 25 0 204 8 25 0 208 8 25 0 209 1 177 0 211 8 25 0 217 1 185 0 218 1 189 0 219 1 193 0 220 8 25 0 253 8 25 0 254 8 25 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 8 41 0 32 3 78 0 143 8 33 0 145 8 37 0 149 8 41 1 38] 
#[0 8 45 0 143] 
#[1 3 82 0 3 3 82 0 18 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 29 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 40 3 82 0 42 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 47 3 82 0 49 3 82 0 50 3 82 0 53 3 82 0 54 3 82 0 63 3 82 0 64 3 82 0 69 3 82 0 72 3 82 0 73 3 82 0 77 3 82 0 86 3 82 0 87 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 98 3 82 0 99 3 82 0 105 3 82 0 106 3 82 0 109 3 82 0 110 3 82 0 115 3 82 0 116 3 82 0 118 3 82 0 120 3 82 0 123 3 82 0 125 3 82 0 128 3 82 0 129 3 82 0 130 3 82 0 136 3 82 0 145 8 49 1 33 3 82 1 143] 
#[1 3 82 0 3 3 82 0 18 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 29 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 40 3 82 0 42 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 47 3 82 0 49 3 82 0 50 3 82 0 53 3 82 0 54 3 82 0 63 3 82 0 64 3 82 0 69 3 82 0 72 3 82 0 73 3 82 0 77 3 82 0 86 3 82 0 87 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 98 3 82 0 99 3 82 0 105 3 82 0 106 3 82 0 109 3 82 0 110 3 82 0 115 3 82 0 116 3 82 0 118 3 82 0 120 3 82 0 123 3 82 0 125 3 82 0 128 3 82 0 129 3 82 0 130 3 82 0 136 3 82 0 145 8 53 1 33 3 82 1 143] 
#[1 3 82 0 3 3 82 0 18 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 29 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 40 3 82 0 42 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 47 3 82 0 49 3 82 0 50 3 82 0 53 3 82 0 54 3 82 0 58 3 82 0 63 3 82 0 64 3 82 0 67 3 82 0 69 3 82 0 72 3 82 0 73 3 82 0 77 3 82 0 86 3 82 0 87 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 98 3 82 0 99 3 82 0 105 3 82 0 106 3 82 0 109 3 82 0 110 3 82 0 115 3 82 0 116 3 82 0 118 3 82 0 120 3 82 0 123 3 82 0 125 3 82 0 128 3 82 0 129 3 82 0 130 3 82 0 136 3 82 0 145 8 57 1 33 3 82 1 143] 
#[1 3 82 0 3 3 82 0 18 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 29 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 40 3 82 0 42 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 47 3 82 0 49 3 82 0 50 3 82 0 53 3 82 0 54 3 82 0 58 3 82 0 63 3 82 0 64 3 82 0 67 3 82 0 69 3 82 0 72 3 82 0 73 3 82 0 77 3 82 0 86 3 82 0 87 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 98 3 82 0 99 3 82 0 105 3 82 0 106 3 82 0 109 3 82 0 110 3 82 0 115 3 82 0 116 3 82 0 118 3 82 0 120 3 82 0 123 3 82 0 125 3 82 0 128 3 82 0 129 3 82 0 130 3 82 0 136 3 82 0 145 8 61 1 33 3 82 1 143] 
#[1 3 82 0 3 3 82 0 18 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 29 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 40 3 82 0 42 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 47 3 82 0 49 3 82 0 50 3 82 0 53 3 82 0 54 3 82 0 63 3 82 0 64 3 82 0 69 3 82 0 72 3 82 0 73 3 82 0 77 3 82 0 86 3 82 0 87 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 98 3 82 0 99 3 82 0 105 3 82 0 106 3 82 0 109 3 82 0 110 3 82 0 115 3 82 0 116 3 82 0 118 3 82 0 120 3 82 0 123 3 82 0 125 3 82 0 128 3 82 0 129 3 82 0 130 3 82 0 136 3 82 0 145 8 65 1 33 3 82 1 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 8 69 0 220 8 69 1 126 1 213 1 131 1 217 1 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 8 73 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 8 73 1 114 8 73 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 2 241 0 220 8 77 1 105 2 241 1 126 1 213 1 131 1 217 1 142] 
#[0 8 81 0 145] 
#[0 3 86 0 15 0 33 0 143] 
#[1 8 85 0 33 3 90 0 143 8 89 0 234] 
#[1 8 85 0 33 3 90 0 143 8 93 0 234] 
#[0 3 94 0 108] 
#[1 8 85 0 33 3 90 0 143 8 97 0 234] 
#[1 8 85 0 33 3 90 0 143 8 101 0 234] 
#[0 3 98 0 5 0 145] 
#[0 3 102 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 8 105 0 5 3 5 0 145 8 109 0 173 3 37 0 174] 
#[0 8 113 0 149] 
#[0 8 117 0 6] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 8 121 0 45 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 8 125 0 161 3 69 1 75 3 73 1 76 8 129 1 139] 
#[1 8 133 0 5 8 137 0 143] 
#[1 3 106 0 5 5 205 0 6 3 106 0 143] 
#[1 3 5 0 145 8 141 0 171 3 33 0 173 3 37 0 174] 
#[1 8 145 0 42 8 149 1 141] 
#[1 3 110 0 28 3 110 0 42 3 110 0 50 3 110 0 54 3 110 0 58 3 110 0 63 3 110 0 73 3 110 0 94 3 110 0 109 3 110 0 120 3 110 0 123 3 110 0 128 8 153 0 175] 
#[1 0 6 0 24 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 34 0 6 0 42 0 6 0 45 0 6 0 50 0 6 0 54 0 6 0 63 0 6 0 73 0 6 0 94 0 6 0 109 0 6 0 120 0 6 0 123 0 65 0 127 0 6 0 128 8 157 0 170] 
#[1 3 114 0 42 3 114 0 50 8 161 0 63 8 165 1 137] 
#[0 3 118 1 143] 
#[1 1 249 0 145 8 169 1 43] 
#[1 8 173 0 145 8 177 0 181 8 181 0 182] 
#[0 3 122 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 126 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 130 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 134 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 138 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 8 185 1 75 3 73 1 76] 
#[0 3 142 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 146 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 8 189 1 75 3 73 1 76] 
#[0 3 150 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 154 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 3 158 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 193 0 143] 
#[0 3 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 3 166 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 8 197 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 8 197 1 114 8 197 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 2 241 0 220 8 201 1 100 8 205 1 101 8 209 1 102 2 249 1 103 2 253 1 104 3 1 1 105 2 241 1 126 1 213 1 131 1 217 1 142] 
#[1 8 213 0 9 3 170 0 10 3 170 0 60] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 8 217 0 190 8 217 0 194 1 153 0 199 8 217 0 201 8 217 0 202 8 217 0 204 8 217 0 208 8 217 0 209 1 177 0 211 8 217 0 217 1 185 0 218 1 189 0 219 1 193 0 220 8 217 0 253 8 217 0 254 8 217 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 8 221 1 117 1 29 1 118 8 221 1 119 8 221 1 120 1 41 1 121 8 221 1 122 1 49 1 123 8 221 1 124 1 57 1 125 8 221 1 126 1 65 1 131 8 221 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 8 225 1 117 1 29 1 118 8 225 1 119 8 225 1 120 1 41 1 121 8 225 1 122 1 49 1 123 8 225 1 124 1 57 1 125 8 225 1 126 1 65 1 131 8 225 1 132 1 73 1 142] 
#[0 8 229 0 3] 
#[1 3 174 0 3 3 174 0 137 8 233 0 143] 
#[0 3 178 0 3 0 137 0 143] 
#[0 3 182 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 8 237 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 8 237 1 114 8 237 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[1 0 109 0 2 8 241 0 3 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 225 1 117 1 29 1 118 6 225 1 119 6 225 1 120 1 41 1 121 6 225 1 122 1 49 1 123 6 225 1 124 1 57 1 125 6 225 1 126 1 65 1 131 6 225 1 132 8 245 1 133 6 233 1 134 1 73 1 142] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 8 249 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 8 253 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 4 173 0 145 9 1 0 244] 
#[0 3 186 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 9 5 1 117 1 29 1 118 9 5 1 119 9 5 1 120 1 41 1 121 9 5 1 122 1 49 1 123 9 5 1 124 1 57 1 125 9 5 1 126 1 65 1 131 9 5 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 9 9 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 9 13 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 9 17 1 94 9 21 1 95 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 3 190 0 42 9 25 0 51 9 29 1 97] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 9 33 0 190 9 33 0 194 1 153 0 199 9 33 0 201 9 33 0 202 9 33 0 204 9 33 0 208 9 33 0 209 1 177 0 211 9 33 0 217 1 185 0 218 1 189 0 219 1 193 0 220 9 33 0 253 9 33 0 254 9 33 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 9 37 1 117 1 29 1 118 9 37 1 119 9 37 1 120 1 41 1 121 9 37 1 122 1 49 1 123 9 37 1 124 1 57 1 125 9 37 1 126 1 65 1 131 9 37 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 9 41 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 9 41 1 114 9 41 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 9 45 1 117 1 29 1 118 9 45 1 119 9 45 1 120 1 41 1 121 9 45 1 122 1 49 1 123 9 45 1 124 1 57 1 125 9 45 1 126 1 65 1 131 9 45 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 9 49 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 9 49 1 114 9 49 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 9 53 1 117 1 29 1 118 9 53 1 119 9 53 1 120 1 41 1 121 9 53 1 122 1 49 1 123 9 53 1 124 1 57 1 125 9 53 1 126 1 65 1 131 9 53 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 3 189 1 117 1 29 1 118 3 189 1 119 3 189 1 120 1 41 1 121 3 189 1 122 1 49 1 123 3 189 1 124 1 57 1 125 3 189 1 126 9 57 1 128 1 65 1 131 3 189 1 132 1 73 1 142] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 3 198 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 3 202 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 3 206 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 3 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 3 221 0 2 3 214 0 3 4 69 0 4 3 214 0 5 3 229 0 6 4 69 0 8 3 214 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 9 61 0 3 9 65 0 5] 
#[1 3 218 0 3 3 218 0 5 9 69 0 9] 
#[0 3 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 3 221 0 2 3 230 0 3 4 69 0 4 3 230 0 5 3 229 0 6 3 230 0 7 4 69 0 8 3 230 0 9 3 237 0 10 0 243 0 12 0 247 0 13 0 251 0 14 0 255 0 15 4 69 0 19 4 69 0 21 3 230 0 31 3 230 0 35 4 69 0 37 3 230 0 38 3 230 0 39 3 230 0 41 3 230 0 42 3 230 0 43 3 230 0 50 3 230 0 51 3 230 0 59 1 3 0 60 3 230 0 61 3 230 0 63 4 69 0 66 4 69 0 74 3 230 0 78 3 230 0 81 3 230 0 82 4 69 0 84 3 230 0 101 3 230 0 102 4 69 0 113 4 69 0 114 3 230 0 117 3 230 0 119 3 230 0 121 3 230 0 126 3 230 0 133 3 230 0 134 4 69 0 135 4 41 0 136 3 230 0 137 1 7 0 138 1 11 0 139 3 230 0 140 4 69 0 141 4 69 0 142 3 230 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 3 230 1 143] 
#[1 3 221 0 2 4 69 0 4 3 234 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 3 234 0 137 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 9 73 0 5 9 77 0 137] 
#[1 3 221 0 2 3 238 0 3 4 69 0 4 3 238 0 5 3 229 0 6 3 238 0 7 4 69 0 8 3 238 0 9 3 237 0 10 1 15 0 12 1 19 0 13 1 23 0 14 1 27 0 15 4 69 0 19 4 69 0 21 3 238 0 31 3 238 0 35 4 69 0 37 3 238 0 38 3 238 0 39 3 238 0 41 3 238 0 42 3 238 0 43 3 238 0 50 3 238 0 51 3 238 0 59 1 31 0 60 3 238 0 61 3 238 0 63 4 69 0 66 4 69 0 74 3 238 0 78 3 238 0 81 3 238 0 82 4 69 0 84 3 238 0 101 3 238 0 102 4 69 0 113 4 69 0 114 3 238 0 117 3 238 0 119 3 238 0 121 3 238 0 126 3 238 0 133 3 238 0 134 4 69 0 135 4 41 0 136 3 238 0 137 1 35 0 138 1 39 0 139 3 238 0 140 4 69 0 141 4 69 0 142 3 238 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 3 238 1 143] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 197 0 190 9 81 0 194 9 85 0 198 1 153 0 199 1 197 0 201 1 197 0 202 9 81 0 204 9 81 0 208 9 81 0 209 1 177 0 211 9 81 0 217 1 185 0 218 1 189 0 219 1 193 0 220 1 197 0 253 9 81 0 254 9 81 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 9 89 0 220 9 89 1 126 1 213 1 131 1 217 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 9 93 0 220 9 93 1 126 1 213 1 131 1 217 1 142] 
#[0 3 242 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 4 97 0 145 9 97 0 192] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 9 101 0 220 9 101 1 126 1 213 1 131 1 217 1 142] 
#[0 3 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 4 113 0 220 9 105 0 223 4 113 1 126 1 213 1 131 1 217 1 142] 
#[0 3 250 0 3] 
#[0 9 109 0 3] 
#[1 9 113 0 146 9 117 0 226] 
#[1 3 254 0 3 3 254 0 5 3 254 0 10 3 254 0 11 3 254 0 15 4 229 0 17 3 254 0 22 3 254 0 24 3 254 0 28 3 254 0 31 3 254 0 33 3 254 0 35 3 254 0 38 3 254 0 41 3 254 0 42 3 254 0 43 3 254 0 50 3 254 0 51 3 254 0 54 3 254 0 59 3 254 0 60 3 254 0 61 3 254 0 63 3 254 0 67 3 254 0 73 3 254 0 78 3 254 0 81 3 254 0 82 3 254 0 92 3 254 0 94 3 254 0 101 3 254 0 102 3 254 0 109 3 254 0 117 3 254 0 120 3 254 0 123 3 254 0 126 3 254 0 128 3 254 0 133 3 254 0 134 4 233 0 136 3 254 0 137 3 254 0 138 3 254 0 143 3 254 1 143] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 9 121 0 190 9 121 0 194 1 153 0 199 9 121 0 201 9 121 0 202 9 121 0 204 9 121 0 208 9 121 0 209 1 177 0 211 9 121 0 217 1 185 0 218 1 189 0 219 1 193 0 220 9 121 0 253 9 121 0 254 9 121 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 9 125 0 80] 
#[0 9 129 0 143] 
#[1 4 173 0 145 9 133 0 244] 
#[1 3 117 0 2 0 54 0 9 9 137 0 203] 
#[1 3 117 0 2 0 54 0 143 9 141 0 203] 
#[1 2 233 0 2 0 190 0 3 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 9 145 0 146 1 189 0 147 1 213 0 149 1 141 0 153 9 149 0 205 1 189 0 219 4 113 0 220 4 117 0 221 4 121 0 222 4 125 0 223 4 129 0 224 4 133 0 225 4 137 0 226 4 113 1 126 1 213 1 131 1 217 1 142] 
#[0 4 2 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 4 217 0 2 4 6 0 3 4 225 0 4 4 6 0 5 4 221 0 6 1 2 0 7 4 225 0 8 4 6 0 10 4 6 0 11 4 225 0 12 4 225 0 13 4 225 0 14 4 6 0 15 4 6 0 17 4 225 0 19 4 225 0 21 4 6 0 22 4 6 0 24 4 6 0 28 4 6 0 31 4 6 0 33 4 6 0 35 4 225 0 37 4 6 0 38 4 6 0 41 4 6 0 42 4 6 0 43 4 6 0 50 4 6 0 51 4 6 0 54 4 6 0 59 1 43 0 60 4 6 0 61 4 6 0 63 4 225 0 66 4 6 0 67 4 6 0 73 4 225 0 74 4 6 0 78 4 6 0 81 4 6 0 82 4 225 0 84 4 6 0 92 4 6 0 94 4 6 0 101 4 6 0 102 4 6 0 109 4 225 0 113 4 225 0 114 4 6 0 117 4 6 0 120 4 6 0 123 4 6 0 126 4 6 0 128 4 6 0 133 4 6 0 134 4 225 0 135 4 6 0 136 4 6 0 137 1 47 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 6 0 143 4 225 1 136 4 6 1 143] 
#[0 4 10 0 2 0 3 0 5 0 6 0 9 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 9 153 0 145 9 157 0 147] 
#[0 9 161 0 145] 
#[0 4 14 0 3 0 5 0 6 0 10 0 11 0 12 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 9 177 0 217 1 185 0 218 1 189 0 219 9 169 0 220 9 173 1 1 9 177 1 2 9 169 1 126 1 213 1 131 1 217 1 142] 
#[0 9 181 0 81] 
#[0 9 185 0 42] 
#[1 4 18 0 3 4 18 0 25 4 18 0 42 4 18 0 93 4 18 0 97 4 18 0 98 4 18 0 99 4 18 0 118 9 189 0 236] 
#[1 4 22 0 3 4 22 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 4 22 0 42 2 41 0 54 2 45 0 73 4 22 0 93 2 49 0 94 2 53 0 96 4 22 0 97 4 22 0 98 4 22 0 99 4 22 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 9 193 0 177 9 193 0 183 9 193 0 246 9 193 0 247 2 85 0 248 1 237 0 249 9 193 0 251 9 193 0 252 9 193 1 8 9 193 1 9 9 193 1 10 9 193 1 11 9 193 1 12 9 193 1 13 9 193 1 15 9 193 1 16 9 193 1 17 9 193 1 19 2 137 1 20 9 193 1 21 2 145 1 43 9 193 1 51 2 153 1 52 9 193 1 54 2 161 1 55 9 193 1 57 2 169 1 58 9 193 1 59 2 177 1 60 9 193 1 62 9 193 1 63 9 193 1 65 2 193 1 66 9 193 1 67 2 201 1 68 9 193 1 70 9 193 1 71 9 193 1 73 2 217 1 74 9 193 1 79 2 225 1 80] 
#[0 4 26 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 4 217 0 2 4 30 0 3 4 225 0 4 4 30 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 9 197 0 3 9 201 0 5] 
#[0 4 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[1 4 217 0 2 4 38 0 3 4 225 0 4 4 38 0 5 4 221 0 6 4 38 0 7 4 225 0 8 4 38 0 9 4 38 0 10 4 38 0 11 1 51 0 12 1 55 0 13 1 59 0 14 4 38 0 15 4 38 0 17 4 225 0 19 4 225 0 21 4 38 0 22 4 38 0 24 4 38 0 28 4 38 0 31 4 38 0 33 4 38 0 35 4 225 0 37 4 38 0 38 4 38 0 41 4 38 0 42 4 38 0 43 4 38 0 50 4 38 0 51 4 38 0 54 4 38 0 59 1 63 0 60 4 38 0 61 4 38 0 63 4 225 0 66 4 38 0 67 4 38 0 73 4 225 0 74 4 38 0 78 4 38 0 81 4 38 0 82 4 225 0 84 4 38 0 92 4 38 0 94 4 38 0 101 4 38 0 102 4 38 0 109 4 225 0 113 4 225 0 114 4 38 0 117 4 38 0 120 4 38 0 123 4 38 0 126 4 38 0 128 4 38 0 133 4 38 0 134 4 225 0 135 4 38 0 136 4 38 0 137 1 67 0 138 1 71 0 139 4 225 0 141 4 225 0 142 4 38 0 143 4 225 1 136 4 38 1 143] 
#[1 4 42 0 3 4 42 0 5 4 42 0 10 4 42 0 11 4 42 0 15 4 42 0 22 4 42 0 24 4 42 0 28 4 42 0 31 4 42 0 33 4 42 0 35 4 42 0 38 4 42 0 41 4 42 0 42 4 42 0 43 4 42 0 50 4 42 0 51 4 42 0 54 4 42 0 59 4 42 0 60 4 42 0 61 4 42 0 63 4 42 0 67 4 42 0 73 4 42 0 78 4 42 0 81 4 42 0 82 4 42 0 92 4 42 0 94 4 42 0 101 4 42 0 102 4 42 0 109 4 42 0 117 4 42 0 120 4 42 0 123 4 42 0 126 4 42 0 128 4 42 0 133 4 42 0 134 4 233 0 136 4 42 0 137 4 42 0 138 4 42 0 143 4 42 1 143] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 9 205 0 137 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 9 209 0 220 9 209 1 126 1 213 1 131 1 217 1 142] 
#[0 4 46 0 27 0 29 0 34 0 54 0 73 0 94 0 96 0 136 0 145 1 143] 
#[1 4 50 0 5 9 213 0 9 4 50 0 11 4 50 0 138] 
#[1 9 217 0 5 9 221 0 11 9 225 0 138] 
#[0 4 54 0 5 0 11 0 138] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 9 229 0 27 10 49 0 36 1 85 0 48 1 89 0 54 10 49 0 65 1 93 0 79 9 241 0 80 1 177 0 89 9 245 0 93 1 101 0 94 9 249 0 97 9 253 0 98 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 10 1 0 189 10 5 0 190 10 9 0 193 10 13 0 194 1 153 0 199 10 17 0 201 10 21 0 202 10 13 0 204 10 9 0 207 10 13 0 208 10 13 0 209 1 177 0 211 10 13 0 217 1 185 0 218 1 189 0 219 1 193 0 220 10 9 0 228 10 33 0 229 10 9 0 230 10 9 0 233 1 197 0 253 10 13 0 254 10 13 0 255 10 9 1 3 10 49 1 4 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 10 53 0 15] 
#[1 4 58 0 15 4 229 0 17 4 58 0 22 4 58 0 24 4 58 0 28 4 58 0 31 4 58 0 35 4 58 0 38 4 58 0 54 4 58 0 59 4 58 0 61 4 58 0 67 4 58 0 73 4 58 0 78 4 58 0 81 4 58 0 94 4 58 0 101 4 58 0 102 4 58 0 109 4 58 0 117 4 58 0 120 4 58 0 123 4 58 0 128 4 58 0 133 4 58 0 134 4 233 0 136 4 58 0 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 10 57 0 220 10 57 1 126 1 213 1 131 1 217 1 142] 
#[0 4 62 0 3 0 5 0 9 0 10 0 137 0 143 1 143] 
#[1 1 218 0 15 4 229 0 17 10 61 0 92 4 233 0 136 1 218 0 143 10 61 0 200] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 10 65 0 190 10 65 0 194 1 153 0 199 10 65 0 201 10 65 0 202 10 65 0 204 10 65 0 208 10 65 0 209 1 177 0 211 10 65 0 217 1 185 0 218 1 189 0 219 1 193 0 220 10 65 0 253 10 65 0 254 10 65 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 10 69 0 143] 
#[1 3 117 0 2 7 97 0 6 0 54 0 143 10 73 0 203] 
#[1 3 117 0 2 7 97 0 6 0 54 0 143 10 77 0 203] 
#[1 3 117 0 2 7 97 0 6 0 54 0 9 0 54 0 143 7 245 0 203] 
#[1 3 117 0 2 7 97 0 6 0 54 0 9 0 54 0 143 10 81 0 203] 
#[1 3 117 0 2 7 97 0 6 0 54 0 143 8 1 0 203] 
#[0 4 66 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 10 85 1 34 4 70 1 143] 
#[0 10 89 0 143] 
#[0 10 93 0 143] 
#[0 10 97 0 145] 
#[1 5 5 0 9 1 34 0 143 10 101 1 18] 
#[1 5 5 0 9 1 34 0 143 10 105 1 18] 
#[0 10 109 0 145] 
#[0 10 113 0 143] 
#[1 2 21 0 28 2 21 0 85 2 21 0 128 1 254 0 137 0 22 0 145 10 117 1 40 6 129 1 41 6 133 1 42 2 21 1 45] 
#[1 5 5 0 9 1 34 0 31 1 34 0 35 1 34 0 59 1 34 0 61 1 34 0 78 1 34 0 101 1 34 0 102 1 34 0 117 1 34 0 133 1 34 0 134 1 34 0 143 10 121 1 18] 
#[0 4 74 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 4 78 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 4 82 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 4 229 0 17 1 218 0 33 10 125 0 92 4 233 0 136 1 218 0 143 10 125 0 200] 
#[0 4 86 0 143] 
#[1 10 137 0 32 10 129 0 61 10 133 0 75 3 78 0 143 10 137 1 38] 
#[1 10 149 0 32 10 141 0 61 10 145 0 75 3 78 0 143 10 149 1 38] 
#[0 10 153 0 143] 
#[0 4 90 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 4 94 0 3 11 13 0 18 11 13 0 23 4 94 0 24 4 94 0 25 11 13 0 26 4 94 0 27 4 94 0 28 4 94 0 29 10 169 0 33 4 94 0 34 10 173 0 35 11 13 0 40 4 94 0 42 11 13 0 44 4 94 0 45 5 165 0 46 11 13 0 47 11 13 0 49 4 94 0 50 5 169 0 53 4 94 0 54 4 94 0 63 11 13 0 64 11 13 0 69 10 201 0 72 4 94 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 4 94 0 93 4 94 0 94 4 94 0 96 4 94 0 97 4 94 0 98 4 94 0 99 11 13 0 105 11 13 0 106 4 94 0 109 11 13 0 110 11 13 0 115 11 13 0 116 4 94 0 118 4 94 0 120 4 94 0 123 11 13 0 125 4 94 0 128 11 13 0 129 11 13 0 130 4 94 0 136 4 94 0 145 11 1 1 35 11 1 1 36 11 1 1 37 11 13 1 39 4 94 1 143] 
#[1 4 98 0 3 11 13 0 18 11 13 0 23 4 98 0 24 4 98 0 25 11 13 0 26 4 98 0 27 4 98 0 28 4 98 0 29 10 169 0 33 4 98 0 34 10 173 0 35 11 13 0 40 4 98 0 42 11 13 0 44 4 98 0 45 5 165 0 46 11 13 0 47 11 13 0 49 4 98 0 50 5 169 0 53 4 98 0 54 4 98 0 63 11 13 0 64 11 13 0 69 10 201 0 72 4 98 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 4 98 0 93 4 98 0 94 4 98 0 96 4 98 0 97 4 98 0 98 4 98 0 99 11 13 0 105 11 13 0 106 4 98 0 109 11 13 0 110 11 13 0 115 11 13 0 116 4 98 0 118 4 98 0 120 4 98 0 123 11 13 0 125 4 98 0 128 11 13 0 129 11 13 0 130 4 98 0 136 4 98 0 145 11 1 1 35 11 1 1 36 11 1 1 37 11 13 1 39 4 98 1 143] 
#[1 4 102 0 3 11 13 0 18 4 102 0 22 11 13 0 23 4 102 0 24 4 102 0 25 11 13 0 26 4 102 0 27 4 102 0 28 4 102 0 29 10 169 0 33 4 102 0 34 10 173 0 35 11 13 0 40 4 102 0 42 11 13 0 44 4 102 0 45 5 165 0 46 11 13 0 47 11 13 0 49 4 102 0 50 5 169 0 53 4 102 0 54 4 102 0 58 4 102 0 63 11 13 0 64 4 102 0 67 11 13 0 69 10 201 0 72 4 102 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 4 102 0 93 4 102 0 94 4 102 0 96 4 102 0 97 4 102 0 98 4 102 0 99 11 13 0 105 11 13 0 106 4 102 0 109 11 13 0 110 11 13 0 115 11 13 0 116 4 102 0 118 4 102 0 120 4 102 0 123 11 13 0 125 4 102 0 128 11 13 0 129 11 13 0 130 4 102 0 136 4 102 0 145 11 1 1 35 11 1 1 36 11 1 1 37 11 13 1 39 4 102 1 143] 
#[1 4 106 0 3 11 13 0 18 4 106 0 22 11 13 0 23 4 106 0 24 4 106 0 25 11 13 0 26 4 106 0 27 4 106 0 28 4 106 0 29 10 169 0 33 4 106 0 34 10 173 0 35 11 13 0 40 4 106 0 42 11 13 0 44 4 106 0 45 5 165 0 46 11 13 0 47 11 13 0 49 4 106 0 50 5 169 0 53 4 106 0 54 4 106 0 58 4 106 0 63 11 13 0 64 4 106 0 67 11 13 0 69 10 201 0 72 4 106 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 4 106 0 93 4 106 0 94 4 106 0 96 4 106 0 97 4 106 0 98 4 106 0 99 11 13 0 105 11 13 0 106 4 106 0 109 11 13 0 110 11 13 0 115 11 13 0 116 4 106 0 118 4 106 0 120 4 106 0 123 11 13 0 125 4 106 0 128 11 13 0 129 11 13 0 130 4 106 0 136 4 106 0 145 11 1 1 35 11 1 1 36 11 1 1 37 11 13 1 39 4 106 1 143] 
#[1 4 110 0 3 11 13 0 18 11 13 0 23 4 110 0 24 4 110 0 25 11 13 0 26 4 110 0 27 4 110 0 28 4 110 0 29 10 169 0 33 4 110 0 34 10 173 0 35 11 13 0 40 4 110 0 42 11 13 0 44 4 110 0 45 5 165 0 46 11 13 0 47 11 13 0 49 4 110 0 50 5 169 0 53 4 110 0 54 4 110 0 63 11 13 0 64 11 13 0 69 10 201 0 72 4 110 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 4 110 0 93 4 110 0 94 4 110 0 96 4 110 0 97 4 110 0 98 4 110 0 99 11 13 0 105 11 13 0 106 4 110 0 109 11 13 0 110 11 13 0 115 11 13 0 116 4 110 0 118 4 110 0 120 4 110 0 123 11 13 0 125 4 110 0 128 11 13 0 129 11 13 0 130 4 110 0 136 4 110 0 145 11 1 1 35 11 1 1 36 11 1 1 37 11 13 1 39 4 110 1 143] 
#[1 4 217 0 2 4 225 0 4 4 114 0 5 4 221 0 6 4 225 0 8 4 114 0 9 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[0 4 118 0 41 0 42 0 143 1 143] 
#[1 4 122 0 5 4 126 0 9] 
#[0 4 130 0 5 0 6 0 33 0 60 0 92 0 143] 
#[1 4 134 0 143 11 17 0 149] 
#[0 11 21 0 143] 
#[0 11 25 0 143] 
#[0 11 29 0 143] 
#[0 11 33 0 143] 
#[0 4 138 0 5 0 145] 
#[0 4 142 0 5 0 143] 
#[0 4 146 0 5 0 143] 
#[0 4 150 1 143] 
#[1 11 37 0 145 11 41 1 140] 
#[0 11 45 0 6] 
#[0 4 154 0 22 0 24 0 28 0 45 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 3 5 0 145 11 49 0 174] 
#[0 4 158 0 30] 
#[1 5 233 0 5 11 53 0 143 5 241 0 172] 
#[0 11 57 0 6] 
#[0 4 162 1 143] 
#[1 2 29 0 28 4 166 0 42 4 166 0 50 5 33 0 54 4 166 0 58 4 166 0 63 2 45 0 73 5 41 0 94 6 37 0 109 2 57 0 120 2 61 0 123 2 65 0 128 11 61 0 176 11 61 0 177 11 61 0 180 11 61 0 183 11 61 1 12 11 61 1 15 11 61 1 57 2 169 1 58 11 61 1 59 2 177 1 60 11 61 1 65 2 193 1 66 11 61 1 67 2 201 1 68 11 61 1 79 2 225 1 80] 
#[1 4 170 0 24 4 170 0 27 4 170 0 28 4 170 0 29 4 170 0 34 4 170 0 42 4 170 0 45 4 170 0 50 4 170 0 54 4 170 0 63 4 170 0 73 4 170 0 94 4 170 0 109 4 170 0 120 4 170 0 123 4 170 0 128 11 89 1 48] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 50 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 11 93 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 4 174 0 42 11 97 0 50 11 101 1 138] 
#[1 5 13 0 5 11 105 0 143] 
#[0 11 109 0 15] 
#[1 4 178 0 22 4 178 0 24 4 178 0 27 4 178 0 28 4 178 0 29 4 178 0 34 4 178 0 42 4 178 0 45 4 178 0 50 4 178 0 54 4 178 0 58 4 178 0 63 4 178 0 67 4 178 0 73 4 178 0 94 4 178 0 109 4 178 0 120 4 178 0 123 4 178 0 128 8 173 0 145 11 113 0 182] 
#[0 4 182 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128 0 145] 
#[0 4 186 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 4 190 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 4 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 22 0 24 0 27 0 28 0 29 0 31 0 34 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 45 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 4 198 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143] 
#[1 11 117 0 41 4 202 0 42 11 121 1 106] 
#[1 2 182 0 41 2 182 0 42 11 125 0 143 11 129 1 99] 
#[0 4 206 0 41 0 42 0 143] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 11 133 0 190 11 133 0 194 1 153 0 199 11 133 0 201 11 133 0 202 11 133 0 204 11 133 0 208 11 133 0 209 1 177 0 211 11 133 0 217 1 185 0 218 1 189 0 219 1 193 0 220 11 133 0 253 11 133 0 254 11 133 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 4 210 0 10 4 229 0 17 4 210 0 60 4 233 0 136] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 11 145 0 39 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 11 145 0 121 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 11 145 1 112 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 11 149 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[0 4 214 0 9 0 22 0 24 0 28 0 54 0 67 0 73 0 81 0 94 0 109 0 120 0 123 0 128 0 143] 
#[1 2 21 0 28 2 21 0 85 2 21 0 128 0 22 0 145 11 153 1 42 2 21 1 45] 
#[1 11 157 0 41 4 218 0 42 4 218 0 43 4 218 0 50 4 218 0 51 4 218 0 63 4 218 0 82 4 218 0 126 4 218 0 143 4 218 1 143] 
#[0 4 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 11 161 0 3 9 65 0 5] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 11 165 1 117 1 29 1 118 11 165 1 119 11 165 1 120 1 41 1 121 11 165 1 122 1 49 1 123 11 165 1 124 1 57 1 125 11 165 1 126 1 65 1 131 11 165 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 11 169 1 117 1 29 1 118 11 169 1 119 11 169 1 120 1 41 1 121 11 169 1 122 1 49 1 123 11 169 1 124 1 57 1 125 11 169 1 126 1 65 1 131 11 169 1 132 1 73 1 142] 
#[1 7 97 0 6 4 226 0 41 4 226 0 42 4 226 0 43 4 226 0 50 4 226 0 51 4 226 0 63 4 226 0 82 4 226 0 126 4 226 0 143 4 226 1 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 230 0 41 4 230 0 42 4 230 0 43 4 230 0 50 4 230 0 51 4 69 0 60 4 230 0 63 4 69 0 66 4 69 0 74 4 230 0 82 4 69 0 84 4 69 0 113 4 69 0 114 4 230 0 126 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 230 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 4 230 1 143] 
#[1 4 173 0 145 11 173 0 244] 
#[1 11 177 0 41 4 234 0 42 4 234 0 51 6 101 0 143 11 181 1 96] 
#[1 11 177 0 41 4 234 0 42 4 234 0 51 9 9 0 82 11 185 1 95 11 189 1 96] 
#[0 4 238 0 41 0 42 0 51 0 82] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 11 193 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[0 11 197 0 42] 
#[1 11 201 0 10 4 229 0 17 4 242 0 41 4 242 0 42 4 242 0 43 4 242 0 50 4 242 0 51 4 242 0 63 4 242 0 82 4 242 0 126 4 233 0 136 4 242 0 143 4 242 1 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 246 0 41 4 246 0 42 4 246 0 43 4 246 0 50 4 246 0 51 4 69 0 60 4 246 0 63 4 69 0 66 4 69 0 74 4 246 0 82 4 69 0 84 4 69 0 113 4 69 0 114 4 246 0 126 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 246 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 4 246 1 143] 
#[0 4 250 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[1 3 221 0 2 4 69 0 4 4 254 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 254 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[0 5 2 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[1 3 221 0 2 4 69 0 4 5 6 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 5 6 0 137 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[0 5 10 0 5 0 137] 
#[0 5 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 6 225 1 117 1 29 1 118 6 225 1 119 6 225 1 120 1 41 1 121 6 225 1 122 1 49 1 123 6 225 1 124 1 57 1 125 6 225 1 126 1 65 1 131 6 225 1 132 11 205 1 134 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 11 209 1 117 1 29 1 118 11 209 1 119 11 209 1 120 1 41 1 121 11 209 1 122 1 49 1 123 11 209 1 124 1 57 1 125 11 209 1 126 1 65 1 131 11 209 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 11 213 1 117 1 29 1 118 11 213 1 119 11 213 1 120 1 41 1 121 11 213 1 122 1 49 1 123 11 213 1 124 1 57 1 125 11 213 1 126 1 65 1 131 11 213 1 132 1 73 1 142] 
#[0 5 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 5 22 0 5 0 222 0 17 0 222 0 136 5 22 0 138] 
#[1 11 217 0 5 5 26 0 138 11 221 0 197] 
#[1 4 217 0 2 5 30 0 3 4 225 0 4 5 30 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 4 217 0 2 5 34 0 3 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 5 34 0 143 4 225 1 136] 
#[0 5 38 0 3 0 5] 
#[1 4 217 0 2 5 42 0 3 4 225 0 4 5 42 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[0 5 46 0 3 0 5] 
#[0 5 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[0 7 13 0 9] 
#[0 5 54 0 3 0 143] 
#[1 4 229 0 17 7 57 0 81 4 233 0 136 2 202 0 143 11 225 1 14] 
#[0 5 58 0 143] 
#[1 3 82 0 3 3 82 0 5 3 82 0 10 3 82 0 11 3 82 0 15 3 82 0 17 3 82 0 18 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 29 3 82 0 31 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 38 3 82 0 40 3 82 0 41 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 47 3 82 0 49 3 82 0 50 3 82 0 51 3 82 0 53 3 82 0 54 3 82 0 58 3 82 0 59 3 82 0 60 3 82 0 61 3 82 0 63 3 82 0 64 3 82 0 67 3 82 0 69 3 82 0 72 3 82 0 73 3 82 0 77 3 82 0 78 3 82 0 81 3 82 0 82 3 82 0 86 3 82 0 87 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 98 3 82 0 99 3 82 0 101 3 82 0 102 3 82 0 105 3 82 0 106 3 82 0 109 3 82 0 110 3 82 0 115 3 82 0 116 3 82 0 117 3 82 0 118 3 82 0 120 3 82 0 123 3 82 0 125 3 82 0 126 3 82 0 128 3 82 0 129 3 82 0 130 3 82 0 133 3 82 0 134 3 82 0 136 3 82 0 137 3 82 0 138 3 82 0 143 3 82 0 145 11 229 1 33 3 82 1 143] 
#[1 7 97 0 6 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 11 233 0 210 7 117 0 235 7 121 0 245] 
#[0 11 237 0 9] 
#[0 11 241 0 143] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 1 75 0 5 0 206 0 6 0 206 0 8 7 13 0 9 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 19 0 206 0 21 0 206 0 37 0 206 0 60 0 206 0 66 0 206 0 74 0 206 0 84 0 206 0 113 0 206 0 114 0 206 0 135 0 206 0 138 0 206 0 139 0 206 0 141 0 206 0 142] 
#[0 11 249 0 3] 
#[0 11 253 0 3] 
#[0 12 1 0 3] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 1 26 0 11 4 245 0 12 1 26 0 15 1 26 0 17 1 26 0 22 1 26 0 24 1 26 0 25 1 26 0 27 1 26 0 28 1 26 0 29 1 26 0 31 1 26 0 33 1 26 0 34 1 26 0 35 1 26 0 38 1 26 0 41 1 26 0 42 1 26 0 43 1 26 0 50 1 26 0 51 1 26 0 54 1 26 0 59 1 26 0 60 1 26 0 61 1 26 0 63 1 26 0 67 1 26 0 73 1 26 0 78 1 26 0 81 1 26 0 82 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 96 1 26 0 97 1 26 0 98 1 26 0 99 1 26 0 101 1 26 0 102 1 26 0 109 1 26 0 117 1 26 0 118 1 26 0 120 1 26 0 123 1 26 0 126 1 26 0 128 1 26 0 133 1 26 0 134 1 26 0 136 1 26 0 137 1 26 0 138 1 26 0 143 1 26 0 145 12 5 0 186 1 26 1 143] 
#[0 5 62 0 5 0 137] 
#[1 4 217 0 2 4 225 0 4 5 66 0 5 4 221 0 6 1 2 0 7 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 5 66 0 137 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 12 9 0 5 12 13 0 137] 
#[0 5 70 0 5 0 137] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 12 17 0 28 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 12 21 0 190 12 21 0 194 1 153 0 199 12 21 0 201 12 21 0 202 12 21 0 204 12 21 0 208 12 21 0 209 1 177 0 211 12 21 0 217 1 185 0 218 1 189 0 219 1 193 0 220 12 21 0 253 12 21 0 254 12 21 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 5 74 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 5 78 0 3 12 25 0 25 5 78 0 42 12 29 0 93 12 33 0 97 12 37 0 98 12 41 0 99 12 45 0 118 12 49 0 212 12 53 0 237 12 53 0 238 12 53 0 239 12 53 0 240 12 53 0 241] 
#[0 5 82 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145] 
#[0 5 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 141 0 142 0 143 1 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 12 73 0 220 12 73 1 126 1 213 1 131 1 217 1 142] 
#[0 5 90 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 4 217 0 2 4 225 0 4 5 94 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 5 94 0 137 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 12 77 0 190 12 77 0 194 1 153 0 199 12 77 0 201 12 77 0 202 12 77 0 204 12 77 0 208 12 77 0 209 1 177 0 211 12 77 0 217 1 185 0 218 1 189 0 219 1 193 0 220 12 77 0 253 12 77 0 254 12 77 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 7 161 0 145 12 81 0 188] 
#[1 7 161 0 145 12 85 0 188] 
#[0 5 98 0 2 0 3 0 5 0 6 0 9 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 5 102 0 2 5 102 0 18 5 102 0 27 5 102 0 28 5 102 0 29 5 102 0 33 5 102 0 34 5 102 0 42 5 102 0 54 5 102 0 56 5 102 0 73 12 89 0 81 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 96 5 102 0 97 5 102 0 98 5 102 0 99 5 102 0 111 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 128 5 102 0 136 5 102 0 143 5 102 0 145 12 93 0 231] 
#[0 5 106 0 2 0 27 0 33 0 42 0 54 0 73 0 92 0 94 0 96 0 136 0 143] 
#[0 5 110 0 2 0 27 0 33 0 42 0 54 0 73 0 92 0 94 0 96 0 136 0 143] 
#[1 12 97 0 2 5 114 0 27 5 114 0 28 5 114 0 29 5 114 0 34 5 114 0 42 5 114 0 54 5 114 0 73 5 114 0 93 5 114 0 94 5 114 0 96 5 114 0 97 5 114 0 98 5 114 0 99 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 128 5 114 0 136 5 114 0 145 12 101 0 242] 
#[1 5 118 0 27 5 118 0 36 5 118 0 65 12 105 0 90] 
#[1 5 122 0 27 5 122 0 36 5 122 0 65 12 109 0 90] 
#[1 5 126 0 27 5 126 0 36 5 126 0 65 12 113 0 90] 
#[0 5 130 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 0 218 0 17 0 218 0 136 12 117 0 143] 
#[1 1 218 0 33 12 121 0 92 1 218 0 143 12 121 0 200] 
#[1 0 222 0 17 1 218 0 33 12 125 0 92 0 222 0 136 1 218 0 143 12 125 0 200] 
#[1 5 134 0 3 0 230 0 17 5 134 0 22 5 134 0 24 5 134 0 25 5 134 0 27 5 134 0 28 5 134 0 29 5 134 0 34 5 134 0 42 5 134 0 45 5 134 0 50 5 134 0 54 5 134 0 58 5 134 0 63 5 134 0 67 5 134 0 73 5 134 0 93 5 134 0 94 5 134 0 96 5 134 0 97 5 134 0 98 5 134 0 99 5 134 0 109 5 134 0 118 5 134 0 120 5 134 0 123 5 134 0 128 1 79 0 136 5 134 0 145 5 134 1 143] 
#[1 5 138 0 3 0 234 0 17 5 138 0 22 5 138 0 24 5 138 0 25 5 138 0 27 5 138 0 28 5 138 0 29 5 138 0 34 5 138 0 42 5 138 0 45 5 138 0 50 5 138 0 54 5 138 0 58 5 138 0 63 5 138 0 67 5 138 0 73 5 138 0 93 5 138 0 94 5 138 0 96 5 138 0 97 5 138 0 98 5 138 0 99 5 138 0 109 5 138 0 118 5 138 0 120 5 138 0 123 5 138 0 128 1 83 0 136 5 138 0 145 5 138 1 143] 
#[0 5 142 0 33 0 92 0 143] 
#[0 5 146 0 33 0 92 0 143] 
#[1 12 129 0 27 12 133 0 36 12 133 0 65 12 133 1 4] 
#[0 5 150 0 33 0 92 0 143] 
#[0 5 154 0 33 0 92 0 143] 
#[0 5 158 0 33 0 92 0 143] 
#[1 12 97 0 2 5 114 0 27 5 162 0 33 5 114 0 42 5 114 0 54 5 114 0 73 5 162 0 92 5 114 0 94 5 114 0 96 5 114 0 136 5 162 0 143 12 137 0 242] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 9 229 0 27 10 49 0 36 1 85 0 48 1 89 0 54 10 49 0 65 1 93 0 79 9 241 0 80 1 177 0 89 9 245 0 93 1 101 0 94 9 249 0 97 9 253 0 98 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 12 141 0 189 10 5 0 190 10 9 0 193 10 13 0 194 1 153 0 199 10 17 0 201 10 21 0 202 10 13 0 204 10 9 0 207 10 13 0 208 10 13 0 209 1 177 0 211 10 13 0 217 1 185 0 218 1 189 0 219 1 193 0 220 10 9 0 228 10 33 0 229 10 9 0 230 10 9 0 233 1 197 0 253 10 13 0 254 10 13 0 255 10 9 1 3 10 49 1 4 1 193 1 126 1 213 1 131 1 217 1 142] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 1 218 0 33 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 12 145 0 92 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 1 218 0 143 12 145 0 200 4 225 1 136] 
#[1 12 149 0 15 5 166 0 143 12 153 1 44] 
#[1 5 166 0 3 12 149 0 15 4 229 0 17 4 233 0 136 5 166 0 137 5 166 0 143 12 157 1 44 5 166 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 12 161 1 34 4 70 1 143] 
#[0 12 165 0 143] 
#[0 12 169 0 143] 
#[1 5 5 0 9 1 34 0 143 12 173 1 18] 
#[1 5 170 0 3 11 13 0 18 5 170 0 22 11 13 0 23 5 170 0 24 5 170 0 25 11 13 0 26 5 170 0 27 5 170 0 28 5 170 0 29 10 169 0 33 5 170 0 34 10 173 0 35 11 13 0 40 5 170 0 42 11 13 0 44 5 170 0 46 11 13 0 47 11 13 0 49 5 170 0 53 5 170 0 54 11 13 0 64 5 170 0 67 11 13 0 69 10 201 0 72 5 170 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 5 170 0 93 5 170 0 94 5 170 0 96 5 170 0 97 5 170 0 98 5 170 0 99 11 13 0 105 11 13 0 106 5 170 0 109 11 13 0 110 11 13 0 115 11 13 0 116 5 170 0 118 5 170 0 120 5 170 0 123 11 13 0 125 5 170 0 128 11 13 0 129 11 13 0 130 5 170 0 136 5 170 0 145 12 177 1 36 11 13 1 39 5 170 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 12 181 1 34 4 70 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 12 185 1 34 4 70 1 143] 
#[0 12 189 0 143] 
#[0 12 193 0 143] 
#[0 12 197 0 143] 
#[0 12 201 0 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 50 4 70 0 53 4 70 0 54 4 70 0 58 4 70 0 63 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 12 205 1 34 4 70 1 143] 
#[0 12 209 0 137] 
#[1 5 174 0 31 5 174 0 35 5 174 0 59 5 174 0 61 5 174 0 78 5 174 0 101 5 174 0 102 5 174 0 117 5 174 0 133 5 174 0 134 5 174 0 143 12 213 1 22] 
#[1 8 85 0 33 3 90 0 143 12 217 0 234] 
#[0 12 221 0 147] 
#[0 12 225 0 149] 
#[0 12 229 0 143] 
#[0 12 233 0 147] 
#[0 12 237 0 149] 
#[0 12 241 0 143] 
#[0 5 178 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 5 182 0 143] 
#[0 5 186 0 143] 
#[0 5 190 0 143] 
#[1 5 194 0 143 12 245 0 149] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 12 249 0 220 12 249 1 126 1 213 1 131 1 217 1 142] 
#[0 5 198 0 143] 
#[0 5 202 0 143] 
#[0 5 206 0 143] 
#[0 5 210 0 143] 
#[0 5 214 0 143] 
#[0 5 218 0 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 12 253 0 220 12 253 1 126 1 213 1 131 1 217 1 142] 
#[0 5 222 0 143] 
#[0 5 226 0 143] 
#[0 5 230 0 143] 
#[0 5 234 0 143] 
#[0 5 238 0 143] 
#[0 5 242 0 143] 
#[0 5 246 0 143] 
#[0 5 250 0 143] 
#[0 5 254 0 143] 
#[0 6 2 0 143] 
#[0 6 6 0 143] 
#[0 6 10 0 143] 
#[0 6 14 0 143] 
#[0 6 18 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 6 22 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 6 26 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 13 1 0 143] 
#[0 6 30 0 143] 
#[0 6 34 0 22 0 24 0 28 0 45 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 127 0 128] 
#[0 6 38 0 42 0 50 0 58 0 63 0 65 1 143] 
#[0 6 42 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 127 0 128] 
#[0 6 46 0 42 0 50 0 58 0 63 0 65 1 143] 
#[0 6 50 0 5 0 143] 
#[1 13 5 0 5 13 9 0 143] 
#[0 6 54 1 143] 
#[1 6 58 0 5 5 205 0 6 6 58 0 143] 
#[0 6 62 0 42] 
#[0 6 66 1 143] 
#[0 6 70 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 74 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 78 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 82 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 86 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 90 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 6 94 0 28 0 42 0 50 0 54 0 58 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 13 13 0 24 13 17 0 27 2 29 0 28 2 33 0 29 2 37 0 34 6 98 0 42 8 121 0 45 6 98 0 50 5 33 0 54 6 98 0 63 2 45 0 73 5 41 0 94 6 37 0 109 2 57 0 120 2 61 0 123 2 65 0 128 13 37 0 177 13 37 0 180 13 37 0 183 13 33 1 47 13 37 1 49 13 37 1 50 13 45 1 51 13 49 1 52 13 37 1 53 13 57 1 54 13 61 1 55 13 37 1 56 6 57 1 57 2 169 1 58 6 61 1 59 2 177 1 60 13 37 1 61 13 73 1 62 13 77 1 63 13 37 1 64 6 69 1 65 2 193 1 66 6 73 1 67 2 201 1 68 13 37 1 69 13 89 1 70 13 93 1 71 13 37 1 72 13 101 1 73 13 105 1 74 13 37 1 79 2 225 1 80 13 37 1 139] 
#[1 6 102 0 42 6 102 0 50 6 101 0 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 13 117 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 8 145 0 42 13 121 1 141] 
#[0 6 106 0 22 0 24 0 28 0 54 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 13 125 0 220 13 125 1 126 1 213 1 131 1 217 1 142] 
#[0 6 110 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128 0 145] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 13 129 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[0 13 133 0 42] 
#[1 2 233 0 2 1 81 0 16 3 250 0 41 3 250 0 42 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 2 241 0 220 13 137 1 102 2 249 1 103 2 253 1 104 3 1 1 105 2 241 1 126 1 213 1 131 1 217 1 142] 
#[0 6 114 0 41 0 42] 
#[1 6 118 0 10 4 229 0 17 6 118 0 60 4 233 0 136] 
#[0 6 122 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 147 0 149 0 153 1 142] 
#[0 6 126 0 2 0 16 0 54 0 62 0 70 0 71 0 79 0 94 0 136 0 141 0 142 0 145 0 147 0 149 0 153 1 142] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 13 141 1 117 1 29 1 118 13 141 1 119 13 141 1 120 1 41 1 121 13 141 1 122 1 49 1 123 13 141 1 124 1 57 1 125 13 141 1 126 1 65 1 131 13 141 1 132 1 73 1 142] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 13 145 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 13 145 1 114 13 145 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[0 6 130 0 3 0 137 0 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 13 149 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 13 149 1 114 13 149 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[0 6 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 13 153 0 137 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 13 157 0 137 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 7 97 0 6 5 5 0 9 1 34 0 38 13 161 1 18] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 13 165 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[0 6 138 0 42 0 51] 
#[0 6 142 0 41 0 42 0 51 0 82] 
#[0 6 146 0 42 0 51] 
#[1 6 150 0 42 6 101 0 143] 
#[0 6 154 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 13 169 1 117 1 29 1 118 13 169 1 119 13 169 1 120 1 41 1 121 13 169 1 122 1 49 1 123 13 169 1 124 1 57 1 125 13 169 1 126 1 65 1 131 13 169 1 132 1 73 1 142] 
#[1 6 158 0 3 6 158 0 5 9 69 0 9] 
#[1 3 221 0 2 6 162 0 3 4 69 0 4 6 162 0 5 3 229 0 6 4 69 0 8 6 162 0 9 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 3 221 0 2 4 69 0 4 6 166 0 5 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 6 166 0 137 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 197 0 190 13 173 0 194 1 153 0 199 1 197 0 201 1 197 0 202 13 173 0 204 13 173 0 208 13 173 0 209 1 177 0 211 13 173 0 217 1 185 0 218 1 189 0 219 1 193 0 220 1 197 0 253 13 173 0 254 13 173 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 13 177 0 138] 
#[0 13 181 0 143] 
#[1 6 170 0 3 6 170 0 5 6 170 0 10 6 170 0 11 6 170 0 15 6 170 0 17 11 13 0 18 6 170 0 22 11 13 0 23 6 170 0 24 6 170 0 25 11 13 0 26 6 170 0 27 6 170 0 28 6 170 0 29 6 170 0 31 1 87 0 33 6 170 0 34 1 91 0 35 6 170 0 38 11 13 0 40 6 170 0 41 6 170 0 42 6 170 0 43 11 13 0 44 6 170 0 45 5 165 0 46 11 13 0 47 11 13 0 49 6 170 0 50 6 170 0 51 5 169 0 53 6 170 0 54 6 170 0 58 6 170 0 59 6 170 0 60 6 170 0 61 6 170 0 63 11 13 0 64 6 170 0 67 11 13 0 69 10 201 0 72 6 170 0 73 11 13 0 77 6 170 0 78 6 170 0 81 6 170 0 82 11 13 0 86 11 13 0 87 11 13 0 91 1 95 0 92 6 170 0 93 6 170 0 94 6 170 0 96 6 170 0 97 6 170 0 98 6 170 0 99 6 170 0 101 6 170 0 102 11 13 0 105 11 13 0 106 6 170 0 109 11 13 0 110 11 13 0 115 11 13 0 116 6 170 0 117 6 170 0 118 6 170 0 120 6 170 0 123 11 13 0 125 6 170 0 126 6 170 0 128 11 13 0 129 11 13 0 130 6 170 0 133 6 170 0 134 6 170 0 136 6 170 0 137 6 170 0 138 6 170 0 143 6 170 0 145 11 1 1 35 11 1 1 36 11 1 1 37 11 13 1 39 6 170 1 143] 
#[0 13 185 0 42] 
#[1 1 77 0 2 1 81 0 16 0 18 0 20 1 85 0 48 1 89 0 54 1 93 0 79 1 177 0 89 1 101 0 94 0 7 0 103 1 109 0 104 1 113 0 112 1 117 0 123 0 185 0 136 1 121 0 141 1 125 0 142 1 129 0 144 1 133 0 146 1 189 0 147 1 213 0 149 1 141 0 153 13 189 0 190 13 189 0 194 1 153 0 199 13 189 0 201 13 189 0 202 13 189 0 204 13 189 0 208 13 189 0 209 1 177 0 211 13 189 0 217 1 185 0 218 1 189 0 219 1 193 0 220 13 189 0 253 13 189 0 254 13 189 0 255 1 193 1 126 1 213 1 131 1 217 1 142] 
#[0 6 174 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 45 0 50 0 51 0 54 0 58 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 13 193 0 146 13 197 0 206] 
#[0 6 178 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 6 182 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 6 186 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[0 6 190 0 2 0 3 0 5 0 6 0 9 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 13 201 0 217 1 185 0 218 1 189 0 219 9 169 0 220 13 201 1 2 9 169 1 126 1 213 1 131 1 217 1 142] 
#[0 6 194 0 81] 
#[0 6 198 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 6 202 0 3 6 202 0 5 6 202 0 10 6 202 0 11 6 202 0 15 4 229 0 17 6 202 0 22 6 202 0 24 6 202 0 28 6 202 0 31 6 202 0 33 6 202 0 35 6 202 0 38 6 202 0 41 6 202 0 42 6 202 0 43 6 202 0 50 6 202 0 51 6 202 0 54 6 202 0 59 6 202 0 60 6 202 0 61 6 202 0 63 6 202 0 67 6 202 0 73 6 202 0 78 6 202 0 81 6 202 0 82 6 202 0 92 6 202 0 94 6 202 0 101 6 202 0 102 6 202 0 109 6 202 0 117 6 202 0 120 6 202 0 123 6 202 0 126 6 202 0 128 6 202 0 133 6 202 0 134 4 233 0 136 6 202 0 137 6 202 0 138 6 202 0 143 6 202 1 143] 
#[0 13 205 0 145] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 13 209 0 245] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 13 213 0 245] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 13 217 0 245] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 13 221 0 245] 
#[1 13 225 0 93 13 229 0 97] 
#[0 6 206 0 3 0 42] 
#[0 6 210 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 214 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 218 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 222 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[0 6 226 0 3 0 25 0 42 0 93 0 97 0 98 0 99 0 118] 
#[1 4 217 0 2 6 230 0 3 4 225 0 4 6 230 0 5 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 6 234 0 5 6 234 0 11 4 229 0 17 4 233 0 136 6 234 0 138] 
#[0 6 238 0 5 0 11 0 138] 
#[0 6 242 0 5 0 11 0 138] 
#[0 13 233 0 145] 
#[1 12 97 0 2 13 249 0 18 5 114 0 27 5 114 0 28 5 114 0 29 5 114 0 33 5 114 0 34 5 114 0 42 5 114 0 54 13 241 0 56 5 114 0 73 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 96 5 114 0 97 5 114 0 98 5 114 0 99 13 249 0 111 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 128 5 114 0 136 5 114 0 143 5 114 0 145 13 249 0 232 13 253 0 242] 
#[1 14 1 0 104 14 5 0 146 14 9 0 199 14 13 0 243] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 14 17 0 235 7 121 0 245] 
#[0 6 246 0 27 0 36 0 65] 
#[0 6 250 0 27 0 36 0 65] 
#[0 6 254 0 27 0 36 0 65] 
#[0 7 2 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 8 85 0 33 3 90 0 143 14 21 0 234] 
#[1 8 85 0 33 3 90 0 143 14 25 0 234] 
#[1 5 102 0 2 5 102 0 18 5 102 0 27 5 102 0 28 5 102 0 29 5 102 0 34 5 102 0 42 5 102 0 54 5 102 0 73 5 102 0 93 5 102 0 94 5 102 0 96 5 102 0 97 5 102 0 98 5 102 0 99 5 102 0 111 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 128 5 102 0 136 5 102 0 145 14 29 0 231] 
#[1 12 97 0 2 5 114 0 27 5 114 0 42 5 114 0 54 5 114 0 73 5 114 0 94 5 114 0 96 5 114 0 136 14 33 0 242] 
#[1 7 6 0 27 7 6 0 42 7 6 0 54 7 6 0 73 7 6 0 94 7 6 0 96 14 37 0 136 14 41 1 5] 
#[0 7 10 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 8 85 0 33 3 90 0 143 14 45 0 234] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 14 49 0 220 14 49 1 126 1 213 1 131 1 217 1 142] 
#[0 14 53 0 143] 
#[0 7 14 0 3 0 137 0 143 1 143] 
#[1 7 18 0 3 11 13 0 18 7 18 0 22 11 13 0 23 7 18 0 24 7 18 0 25 11 13 0 26 7 18 0 27 7 18 0 28 7 18 0 29 10 169 0 33 7 18 0 34 10 173 0 35 11 13 0 40 7 18 0 42 11 13 0 44 7 18 0 46 11 13 0 47 11 13 0 49 7 18 0 53 7 18 0 54 11 13 0 64 7 18 0 67 11 13 0 69 10 201 0 72 7 18 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 7 18 0 93 7 18 0 94 7 18 0 96 7 18 0 97 7 18 0 98 7 18 0 99 11 13 0 105 11 13 0 106 7 18 0 109 11 13 0 110 11 13 0 115 11 13 0 116 7 18 0 118 7 18 0 120 7 18 0 123 11 13 0 125 7 18 0 128 11 13 0 129 11 13 0 130 7 18 0 136 7 18 0 145 12 177 1 36 11 13 1 39 7 18 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 14 57 1 34 4 70 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 14 61 1 34 4 70 1 143] 
#[0 14 65 0 143] 
#[0 7 22 0 3 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 33 0 34 0 35 0 40 0 42 0 44 0 46 0 47 0 49 0 50 0 53 0 54 0 58 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 105 0 106 0 109 0 110 0 115 0 116 0 118 0 120 0 123 0 125 0 128 0 129 0 130 0 136 0 145 1 143] 
#[1 7 26 0 3 11 13 0 18 7 26 0 22 11 13 0 23 7 26 0 24 7 26 0 25 11 13 0 26 7 26 0 27 7 26 0 28 7 26 0 29 10 169 0 33 7 26 0 34 10 173 0 35 11 13 0 40 7 26 0 42 11 13 0 44 7 26 0 46 11 13 0 47 11 13 0 49 7 26 0 53 7 26 0 54 11 13 0 64 7 26 0 67 11 13 0 69 10 201 0 72 7 26 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 7 26 0 93 7 26 0 94 7 26 0 96 7 26 0 97 7 26 0 98 7 26 0 99 11 13 0 105 11 13 0 106 7 26 0 109 11 13 0 110 11 13 0 115 11 13 0 116 7 26 0 118 7 26 0 120 7 26 0 123 11 13 0 125 7 26 0 128 11 13 0 129 11 13 0 130 7 26 0 136 7 26 0 145 12 177 1 36 11 13 1 39 7 26 1 143] 
#[1 7 30 0 3 11 13 0 18 7 30 0 22 11 13 0 23 7 30 0 24 7 30 0 25 11 13 0 26 7 30 0 27 7 30 0 28 7 30 0 29 10 169 0 33 7 30 0 34 10 173 0 35 11 13 0 40 7 30 0 42 11 13 0 44 7 30 0 46 11 13 0 47 11 13 0 49 7 30 0 53 7 30 0 54 11 13 0 64 7 30 0 67 11 13 0 69 10 201 0 72 7 30 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 7 30 0 93 7 30 0 94 7 30 0 96 7 30 0 97 7 30 0 98 7 30 0 99 11 13 0 105 11 13 0 106 7 30 0 109 11 13 0 110 11 13 0 115 11 13 0 116 7 30 0 118 7 30 0 120 7 30 0 123 11 13 0 125 7 30 0 128 11 13 0 129 11 13 0 130 7 30 0 136 7 30 0 145 12 177 1 36 11 13 1 39 7 30 1 143] 
#[0 7 34 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 50 4 70 0 53 4 70 0 54 4 70 0 58 4 70 0 63 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 14 69 1 34 4 70 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 50 4 70 0 53 4 70 0 54 4 70 0 58 4 70 0 63 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 14 73 1 34 4 70 1 143] 
#[0 7 38 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 7 42 0 3 11 13 0 18 7 42 0 22 11 13 0 23 7 42 0 24 7 42 0 25 11 13 0 26 7 42 0 27 7 42 0 28 7 42 0 29 10 169 0 33 7 42 0 34 10 173 0 35 11 13 0 40 7 42 0 42 11 13 0 44 7 42 0 46 11 13 0 47 11 13 0 49 7 42 0 50 7 42 0 53 7 42 0 54 7 42 0 58 7 42 0 63 11 13 0 64 7 42 0 67 11 13 0 69 10 201 0 72 7 42 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 7 42 0 93 7 42 0 94 7 42 0 96 7 42 0 97 7 42 0 98 7 42 0 99 11 13 0 105 11 13 0 106 7 42 0 109 11 13 0 110 11 13 0 115 11 13 0 116 7 42 0 118 7 42 0 120 7 42 0 123 11 13 0 125 7 42 0 128 11 13 0 129 11 13 0 130 7 42 0 136 7 42 0 145 12 177 1 36 11 13 1 39 7 42 1 143] 
#[0 7 46 0 9 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[1 14 77 0 31 14 81 0 35 14 85 0 59 14 89 0 61 14 93 0 78 14 97 0 101 14 101 0 102 14 105 0 117 14 109 0 133 14 113 0 134 14 117 0 143 14 121 1 24 14 125 1 25 14 129 1 26 14 133 1 27 14 137 1 28 14 141 1 29 14 145 1 31] 
#[0 14 149 0 143] 
#[1 14 153 0 32 3 78 0 143 14 153 1 38] 
#[1 14 161 0 32 14 157 0 61 3 78 0 143 14 161 1 38] 
#[0 7 50 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 14 165 0 32 3 78 0 143 14 165 1 38] 
#[1 14 173 0 32 14 169 0 61 3 78 0 143 14 173 1 38] 
#[0 7 54 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 14 177 0 143] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 14 181 0 143 4 225 1 136] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 14 185 0 143 4 225 1 136] 
#[0 7 58 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 14 189 0 145] 
#[0 7 62 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 42 0 14 0 50 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 14 193 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 5 25 0 29 5 29 0 34 5 33 0 54 2 45 0 73 5 37 0 83 5 41 0 94 5 49 1 58 5 53 1 60 5 57 1 66 5 61 1 68] 
#[0 7 66 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 70 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 74 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 78 0 42 0 50 0 63] 
#[0 7 82 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 86 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 90 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 5 165 0 46 5 169 0 53 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 173 1 37 14 197 1 75 3 73 1 76] 
#[0 7 94 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 98 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 5 165 0 46 5 169 0 53 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 177 1 37 14 201 1 75 3 73 1 76] 
#[0 7 102 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 106 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 110 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 14 205 1 75 3 73 1 76] 
#[0 7 114 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 118 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 122 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 14 209 1 75 3 73 1 76] 
#[0 7 126 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 130 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 0 50 0 22 0 50 0 24 0 50 0 28 5 165 0 46 5 169 0 53 0 50 0 54 0 50 0 67 0 50 0 73 0 50 0 94 0 50 0 109 0 50 0 120 0 50 0 123 0 50 0 128 5 189 1 37 14 213 1 75 3 73 1 76] 
#[0 7 134 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 7 138 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[1 7 142 0 42 6 101 0 143] 
#[0 7 146 1 143] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 85 0 33 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 3 90 0 143 14 217 0 234 4 225 1 136] 
#[1 7 150 0 42 6 101 0 143] 
#[0 7 154 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 7 158 0 41 0 42 0 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 14 221 0 38 4 69 0 60 4 69 0 66 4 69 0 74 4 69 0 84 4 69 0 113 4 69 0 114 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[0 7 162 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 7 166 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[0 7 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 7 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 12 0 13 0 14 0 15 0 19 0 21 0 31 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 59 0 60 0 61 0 63 0 66 0 74 0 78 0 81 0 82 0 84 0 101 0 102 0 113 0 114 0 117 0 119 0 121 0 126 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[0 14 225 0 38] 
#[1 7 178 0 42 7 178 0 51 6 101 0 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 4 69 0 37 7 182 0 41 7 182 0 42 7 182 0 43 7 182 0 50 7 182 0 51 4 69 0 60 7 182 0 63 4 69 0 66 4 69 0 74 7 182 0 82 4 69 0 84 4 69 0 113 4 69 0 114 7 182 0 126 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 7 182 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136 7 182 1 143] 
#[1 7 186 0 5 0 222 0 17 0 222 0 136 7 186 0 138] 
#[0 7 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 17 0 19 0 21 0 22 0 24 0 28 0 31 0 33 0 35 0 37 0 38 0 39 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 66 0 67 0 73 0 74 0 78 0 81 0 82 0 84 0 92 0 94 0 101 0 102 0 109 0 113 0 114 0 117 0 119 0 120 0 121 0 123 0 126 0 128 0 133 0 134 0 135 0 136 0 137 0 138 0 139 0 140 0 141 0 142 0 143 0 144 1 143] 
#[1 3 82 0 3 3 82 0 5 3 82 0 10 3 82 0 11 3 82 0 15 3 82 0 17 3 82 0 18 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 29 3 82 0 31 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 38 3 82 0 40 3 82 0 41 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 47 3 82 0 49 3 82 0 50 3 82 0 51 3 82 0 53 3 82 0 54 3 82 0 58 3 82 0 59 3 82 0 60 3 82 0 61 3 82 0 63 3 82 0 64 3 82 0 67 3 82 0 69 3 82 0 72 3 82 0 73 3 82 0 77 3 82 0 78 3 82 0 81 3 82 0 82 3 82 0 86 3 82 0 87 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 96 3 82 0 97 3 82 0 98 3 82 0 99 3 82 0 101 3 82 0 102 3 82 0 105 3 82 0 106 3 82 0 109 3 82 0 110 3 82 0 115 3 82 0 116 3 82 0 117 3 82 0 118 3 82 0 120 3 82 0 123 3 82 0 125 3 82 0 126 3 82 0 128 3 82 0 129 3 82 0 130 3 82 0 133 3 82 0 134 3 82 0 136 3 82 0 137 3 82 0 138 3 82 0 143 3 82 0 145 14 229 1 33 3 82 1 143] 
#[0 7 194 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 28 0 31 0 33 0 35 0 38 0 41 0 42 0 43 0 50 0 51 0 54 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 94 0 101 0 102 0 109 0 117 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 1 143] 
#[1 4 229 0 17 4 233 0 136 14 233 0 143] 
#[0 7 198 0 3 0 5] 
#[1 7 202 0 3 14 237 0 5] 
#[0 7 206 0 5 0 137] 
#[1 5 5 0 9 1 34 0 81 14 241 1 18] 
#[1 7 210 0 3 7 210 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 210 0 42 2 41 0 54 2 45 0 73 7 210 0 93 2 49 0 94 2 53 0 96 7 210 0 97 7 210 0 98 7 210 0 99 7 210 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 9 193 0 177 9 193 0 183 9 193 0 246 9 193 0 247 2 85 0 248 1 237 0 249 9 193 0 251 9 193 0 252 9 193 1 8 9 193 1 9 9 193 1 10 9 193 1 11 9 193 1 12 9 193 1 13 9 193 1 15 9 193 1 16 9 193 1 17 9 193 1 19 2 137 1 20 9 193 1 21 2 145 1 43 9 193 1 51 2 153 1 52 9 193 1 54 2 161 1 55 9 193 1 57 2 169 1 58 9 193 1 59 2 177 1 60 9 193 1 62 9 193 1 63 9 193 1 65 2 193 1 66 9 193 1 67 2 201 1 68 9 193 1 70 9 193 1 71 9 193 1 73 2 217 1 74 9 193 1 79 2 225 1 80] 
#[1 7 214 0 3 7 214 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 214 0 42 2 41 0 54 2 45 0 73 7 214 0 93 2 49 0 94 2 53 0 96 7 214 0 97 7 214 0 98 7 214 0 99 7 214 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 9 193 0 177 9 193 0 183 9 193 0 246 9 193 0 247 2 85 0 248 1 237 0 249 9 193 0 251 9 193 0 252 9 193 1 8 9 193 1 9 9 193 1 10 9 193 1 11 9 193 1 12 9 193 1 13 9 193 1 15 9 193 1 16 9 193 1 17 9 193 1 19 2 137 1 20 9 193 1 21 2 145 1 43 9 193 1 51 2 153 1 52 9 193 1 54 2 161 1 55 9 193 1 57 2 169 1 58 9 193 1 59 2 177 1 60 9 193 1 62 9 193 1 63 9 193 1 65 2 193 1 66 9 193 1 67 2 201 1 68 9 193 1 70 9 193 1 71 9 193 1 73 2 217 1 74 9 193 1 79 2 225 1 80] 
#[1 7 218 0 3 7 218 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 218 0 42 2 41 0 54 2 45 0 73 7 218 0 93 2 49 0 94 2 53 0 96 7 218 0 97 7 218 0 98 7 218 0 99 7 218 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 9 193 0 177 9 193 0 183 9 193 0 246 9 193 0 247 2 85 0 248 1 237 0 249 9 193 0 251 9 193 0 252 9 193 1 8 9 193 1 9 9 193 1 10 9 193 1 11 9 193 1 12 9 193 1 13 9 193 1 15 9 193 1 16 9 193 1 17 9 193 1 19 2 137 1 20 9 193 1 21 2 145 1 43 9 193 1 51 2 153 1 52 9 193 1 54 2 161 1 55 9 193 1 57 2 169 1 58 9 193 1 59 2 177 1 60 9 193 1 62 9 193 1 63 9 193 1 65 2 193 1 66 9 193 1 67 2 201 1 68 9 193 1 70 9 193 1 71 9 193 1 73 2 217 1 74 9 193 1 79 2 225 1 80] 
#[1 7 222 0 3 7 222 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 7 222 0 42 2 41 0 54 2 45 0 73 7 222 0 93 2 49 0 94 2 53 0 96 7 222 0 97 7 222 0 98 7 222 0 99 7 222 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 9 193 0 177 9 193 0 183 9 193 0 246 9 193 0 247 2 85 0 248 1 237 0 249 9 193 0 251 9 193 0 252 9 193 1 8 9 193 1 9 9 193 1 10 9 193 1 11 9 193 1 12 9 193 1 13 9 193 1 15 9 193 1 16 9 193 1 17 9 193 1 19 2 137 1 20 9 193 1 21 2 145 1 43 9 193 1 51 2 153 1 52 9 193 1 54 2 161 1 55 9 193 1 57 2 169 1 58 9 193 1 59 2 177 1 60 9 193 1 62 9 193 1 63 9 193 1 65 2 193 1 66 9 193 1 67 2 201 1 68 9 193 1 70 9 193 1 71 9 193 1 73 2 217 1 74 9 193 1 79 2 225 1 80] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 14 245 0 245] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 14 249 0 245] 
#[0 7 226 0 33 0 92 0 143] 
#[0 7 230 0 2 0 18 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 56 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 111 0 118 0 120 0 123 0 128 0 136 0 143 0 145] 
#[0 14 253 0 52] 
#[0 7 234 0 2 0 18 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 56 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 111 0 118 0 120 0 123 0 128 0 136 0 143 0 145] 
#[0 7 238 0 2 0 18 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 56 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 111 0 118 0 120 0 123 0 128 0 136 0 143 0 145] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 7 242 0 33 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 7 242 0 92 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 7 242 0 143 2 230 0 145 15 1 0 235 7 121 0 245] 
#[0 0 202 0 3 0 5 0 6 0 12] 
#[0 0 210 0 3 0 5 0 6 0 12] 
#[1 7 246 0 3 7 246 0 5 4 197 0 6 0 150 0 12 4 201 0 195 4 81 0 196] 
#[1 15 5 0 3 15 9 0 5] 
#[1 4 18 0 42 4 18 0 93 4 18 0 97 4 18 0 98 4 18 0 99 4 18 0 118 15 13 0 236] 
#[0 15 17 0 143] 
#[0 15 21 0 143] 
#[1 12 97 0 2 13 249 0 18 5 114 0 27 5 114 0 28 5 114 0 29 5 114 0 34 5 114 0 42 5 114 0 54 5 114 0 73 5 114 0 93 5 114 0 94 5 114 0 96 5 114 0 97 5 114 0 98 5 114 0 99 13 249 0 111 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 128 5 114 0 136 5 114 0 145 13 249 0 232 15 25 0 242] 
#[1 7 6 0 27 7 6 0 42 7 6 0 54 7 6 0 73 7 6 0 94 7 6 0 96 14 37 0 136 15 29 1 5] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 15 33 0 220 15 33 1 126 1 213 1 131 1 217 1 142] 
#[1 7 250 0 27 7 250 0 42 7 250 0 54 7 250 0 73 7 250 0 94 7 250 0 96 7 250 0 136 15 37 1 6] 
#[0 15 41 0 143] 
#[1 4 217 0 2 7 254 0 3 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 7 254 0 137 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 7 254 0 143 4 225 1 136 7 254 1 143] 
#[0 8 2 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 8 6 0 3 11 13 0 18 8 6 0 22 11 13 0 23 8 6 0 24 8 6 0 25 11 13 0 26 8 6 0 27 8 6 0 28 8 6 0 29 10 169 0 33 8 6 0 34 10 173 0 35 11 13 0 40 8 6 0 42 11 13 0 44 8 6 0 46 11 13 0 47 11 13 0 49 8 6 0 53 8 6 0 54 11 13 0 64 8 6 0 67 11 13 0 69 10 201 0 72 8 6 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 8 6 0 93 8 6 0 94 8 6 0 96 8 6 0 97 8 6 0 98 8 6 0 99 11 13 0 105 11 13 0 106 8 6 0 109 11 13 0 110 11 13 0 115 11 13 0 116 8 6 0 118 8 6 0 120 8 6 0 123 11 13 0 125 8 6 0 128 11 13 0 129 11 13 0 130 8 6 0 136 8 6 0 145 12 177 1 36 11 13 1 39 8 6 1 143] 
#[1 8 10 0 3 11 13 0 18 8 10 0 22 11 13 0 23 8 10 0 24 8 10 0 25 11 13 0 26 8 10 0 27 8 10 0 28 8 10 0 29 10 169 0 33 8 10 0 34 10 173 0 35 11 13 0 40 8 10 0 42 11 13 0 44 8 10 0 46 11 13 0 47 11 13 0 49 8 10 0 53 8 10 0 54 11 13 0 64 8 10 0 67 11 13 0 69 10 201 0 72 8 10 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 8 10 0 93 8 10 0 94 8 10 0 96 8 10 0 97 8 10 0 98 8 10 0 99 11 13 0 105 11 13 0 106 8 10 0 109 11 13 0 110 11 13 0 115 11 13 0 116 8 10 0 118 8 10 0 120 8 10 0 123 11 13 0 125 8 10 0 128 11 13 0 129 11 13 0 130 8 10 0 136 8 10 0 145 12 177 1 36 11 13 1 39 8 10 1 143] 
#[1 4 70 0 3 4 70 0 18 4 70 0 22 4 70 0 23 4 70 0 24 4 70 0 25 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 29 4 70 0 33 4 70 0 34 4 70 0 35 4 70 0 40 4 70 0 42 4 70 0 44 4 70 0 46 4 70 0 47 4 70 0 49 4 70 0 53 4 70 0 54 4 70 0 64 4 70 0 67 4 70 0 69 4 70 0 72 4 70 0 73 4 70 0 77 4 70 0 86 4 70 0 87 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 96 4 70 0 97 4 70 0 98 4 70 0 99 4 70 0 105 4 70 0 106 4 70 0 109 4 70 0 110 4 70 0 115 4 70 0 116 4 70 0 118 4 70 0 120 4 70 0 123 4 70 0 125 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 136 4 70 0 145 15 45 1 34 4 70 1 143] 
#[1 8 14 0 3 11 13 0 18 8 14 0 22 11 13 0 23 8 14 0 24 8 14 0 25 11 13 0 26 8 14 0 27 8 14 0 28 8 14 0 29 10 169 0 33 8 14 0 34 10 173 0 35 11 13 0 40 8 14 0 42 11 13 0 44 8 14 0 46 11 13 0 47 11 13 0 49 8 14 0 50 8 14 0 53 8 14 0 54 8 14 0 58 8 14 0 63 11 13 0 64 8 14 0 67 11 13 0 69 10 201 0 72 8 14 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 8 14 0 93 8 14 0 94 8 14 0 96 8 14 0 97 8 14 0 98 8 14 0 99 11 13 0 105 11 13 0 106 8 14 0 109 11 13 0 110 11 13 0 115 11 13 0 116 8 14 0 118 8 14 0 120 8 14 0 123 11 13 0 125 8 14 0 128 11 13 0 129 11 13 0 130 8 14 0 136 8 14 0 145 12 177 1 36 11 13 1 39 8 14 1 143] 
#[1 8 18 0 3 11 13 0 18 8 18 0 22 11 13 0 23 8 18 0 24 8 18 0 25 11 13 0 26 8 18 0 27 8 18 0 28 8 18 0 29 10 169 0 33 8 18 0 34 10 173 0 35 11 13 0 40 8 18 0 42 11 13 0 44 8 18 0 46 11 13 0 47 11 13 0 49 8 18 0 50 8 18 0 53 8 18 0 54 8 18 0 58 8 18 0 63 11 13 0 64 8 18 0 67 11 13 0 69 10 201 0 72 8 18 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 8 18 0 93 8 18 0 94 8 18 0 96 8 18 0 97 8 18 0 98 8 18 0 99 11 13 0 105 11 13 0 106 8 18 0 109 11 13 0 110 11 13 0 115 11 13 0 116 8 18 0 118 8 18 0 120 8 18 0 123 11 13 0 125 8 18 0 128 11 13 0 129 11 13 0 130 8 18 0 136 8 18 0 145 12 177 1 36 11 13 1 39 8 18 1 143] 
#[1 2 233 0 2 1 81 0 16 8 22 0 31 8 22 0 35 8 22 0 59 8 22 0 61 8 22 0 78 1 93 0 79 8 22 0 101 8 22 0 102 8 22 0 117 8 22 0 133 8 22 0 134 0 185 0 136 1 121 0 141 1 125 0 142 8 22 0 143 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 15 49 0 220 15 49 1 126 1 213 1 131 1 217 1 142] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 15 53 0 220 15 53 1 126 1 213 1 131 1 217 1 142] 
#[1 15 57 0 145 15 61 1 30] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 15 65 0 220 15 65 1 126 1 213 1 131 1 217 1 142] 
#[0 8 26 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 15 69 1 117 1 29 1 118 15 69 1 119 15 69 1 120 1 41 1 121 15 69 1 122 1 49 1 123 15 69 1 124 1 57 1 125 15 69 1 126 1 65 1 131 15 69 1 132 1 73 1 142] 
#[0 15 73 0 35] 
#[0 15 77 0 145] 
#[1 0 109 0 2 0 113 0 16 0 129 0 54 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 157 0 94 0 185 0 136 0 189 0 141 0 193 0 142 3 77 0 145 0 213 0 147 1 65 0 149 0 209 0 153 0 213 0 219 15 81 1 117 1 29 1 118 15 81 1 119 15 81 1 120 1 41 1 121 15 81 1 122 1 49 1 123 15 81 1 124 1 57 1 125 15 81 1 126 1 65 1 131 15 81 1 132 1 73 1 142] 
#[0 15 85 0 35] 
#[1 8 30 0 3 8 30 0 25 8 30 0 27 8 30 0 28 8 30 0 29 15 89 0 31 8 30 0 34 8 30 0 42 8 30 0 54 8 30 0 73 8 30 0 93 8 30 0 94 8 30 0 96 8 30 0 97 8 30 0 98 8 30 0 99 8 30 0 118 8 30 0 120 8 30 0 123 8 30 0 128 8 30 0 136 8 30 0 145 15 93 1 32 8 30 1 143] 
#[0 8 34 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 8 38 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 8 42 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 8 46 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 8 50 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 8 54 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 8 58 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 8 62 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 15 97 0 143] 
#[0 15 101 0 147] 
#[0 15 105 0 143] 
#[0 15 109 0 143] 
#[0 15 113 0 147] 
#[0 15 117 0 143] 
#[0 8 66 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 8 70 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 8 74 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 8 78 0 5 0 143] 
#[1 8 82 0 42 8 82 0 50 8 82 0 63 6 101 0 143] 
#[0 8 86 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 90 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 94 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 98 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 8 102 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 63 0 73 0 94 0 109 0 120 0 123 0 128] 
#[0 15 121 0 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 50 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 14 0 63 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 14 0 126 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 15 125 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 15 125 1 114 15 125 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142 0 14 1 143] 
#[1 0 109 0 2 0 113 0 16 0 10 0 22 0 117 0 24 0 121 0 25 0 14 0 41 0 14 0 42 0 14 0 51 0 125 0 52 0 129 0 54 0 133 0 55 0 137 0 57 0 141 0 62 0 145 0 70 0 149 0 71 0 153 0 79 0 14 0 82 0 157 0 94 0 161 0 100 0 165 0 107 0 169 0 122 0 173 0 128 0 177 0 131 0 181 0 132 0 185 0 136 0 189 0 141 0 193 0 142 0 14 0 143 0 197 0 145 0 201 0 147 1 65 0 149 0 209 0 153 0 213 0 219 15 129 1 83 3 93 1 84 0 221 1 85 0 225 1 86 0 229 1 87 0 233 1 88 0 237 1 89 0 241 1 90 0 245 1 92 0 249 1 98 0 253 1 107 1 1 1 109 1 5 1 110 1 9 1 113 3 93 1 114 3 93 1 115 1 21 1 116 1 25 1 117 1 29 1 118 1 25 1 119 1 25 1 120 1 41 1 121 1 25 1 122 1 49 1 123 1 25 1 124 1 57 1 125 1 25 1 126 1 65 1 131 1 25 1 132 1 73 1 142] 
#[1 8 106 0 3 8 106 0 5 8 106 0 10 8 106 0 11 8 106 0 15 8 106 0 17 11 13 0 18 8 106 0 22 11 13 0 23 8 106 0 24 8 106 0 25 11 13 0 26 8 106 0 27 8 106 0 28 8 106 0 29 8 106 0 31 1 99 0 33 8 106 0 34 1 103 0 35 8 106 0 38 11 13 0 40 8 106 0 41 8 106 0 42 8 106 0 43 11 13 0 44 8 106 0 45 5 165 0 46 11 13 0 47 11 13 0 49 8 106 0 50 8 106 0 51 5 169 0 53 8 106 0 54 8 106 0 58 8 106 0 59 8 106 0 60 8 106 0 61 8 106 0 63 11 13 0 64 8 106 0 67 11 13 0 69 10 201 0 72 8 106 0 73 11 13 0 77 8 106 0 78 8 106 0 81 8 106 0 82 11 13 0 86 11 13 0 87 11 13 0 91 1 107 0 92 8 106 0 93 8 106 0 94 8 106 0 96 8 106 0 97 8 106 0 98 8 106 0 99 8 106 0 101 8 106 0 102 11 13 0 105 11 13 0 106 8 106 0 109 11 13 0 110 11 13 0 115 11 13 0 116 8 106 0 117 8 106 0 118 8 106 0 120 8 106 0 123 11 13 0 125 8 106 0 126 8 106 0 128 11 13 0 129 11 13 0 130 8 106 0 133 8 106 0 134 8 106 0 136 8 106 0 137 8 106 0 138 8 106 0 143 8 106 0 145 11 1 1 35 11 1 1 36 11 1 1 37 11 13 1 39 8 106 1 143] 
#[0 8 110 0 3 0 5 0 10 0 11 0 15 0 17 0 22 0 24 0 25 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 41 0 42 0 43 0 45 0 50 0 51 0 54 0 58 0 59 0 60 0 61 0 63 0 67 0 73 0 78 0 81 0 82 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 109 0 117 0 118 0 120 0 123 0 126 0 128 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 15 133 0 146] 
#[0 15 137 0 81] 
#[1 8 114 0 3 8 114 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 8 114 0 42 2 41 0 54 2 45 0 73 8 114 0 93 2 49 0 94 2 53 0 96 8 114 0 97 8 114 0 98 8 114 0 99 8 114 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 9 193 0 177 9 193 0 183 9 193 0 246 9 193 0 247 2 85 0 248 1 237 0 249 9 193 0 251 9 193 0 252 9 193 1 8 9 193 1 9 9 193 1 10 9 193 1 11 9 193 1 12 9 193 1 13 9 193 1 15 9 193 1 16 9 193 1 17 9 193 1 19 2 137 1 20 9 193 1 21 2 145 1 43 9 193 1 51 2 153 1 52 9 193 1 54 2 161 1 55 9 193 1 57 2 169 1 58 9 193 1 59 2 177 1 60 9 193 1 62 9 193 1 63 9 193 1 65 2 193 1 66 9 193 1 67 2 201 1 68 9 193 1 70 9 193 1 71 9 193 1 73 2 217 1 74 9 193 1 79 2 225 1 80] 
#[1 8 118 0 3 8 118 0 25 2 25 0 27 2 29 0 28 2 33 0 29 2 37 0 34 8 118 0 42 2 41 0 54 2 45 0 73 8 118 0 93 2 49 0 94 2 53 0 96 8 118 0 97 8 118 0 98 8 118 0 99 8 118 0 118 2 57 0 120 2 61 0 123 2 65 0 128 1 221 0 136 1 249 0 145 9 193 0 177 9 193 0 183 9 193 0 246 9 193 0 247 2 85 0 248 1 237 0 249 9 193 0 251 9 193 0 252 9 193 1 8 9 193 1 9 9 193 1 10 9 193 1 11 9 193 1 12 9 193 1 13 9 193 1 15 9 193 1 16 9 193 1 17 9 193 1 19 2 137 1 20 9 193 1 21 2 145 1 43 9 193 1 51 2 153 1 52 9 193 1 54 2 161 1 55 9 193 1 57 2 169 1 58 9 193 1 59 2 177 1 60 9 193 1 62 9 193 1 63 9 193 1 65 2 193 1 66 9 193 1 67 2 201 1 68 9 193 1 70 9 193 1 71 9 193 1 73 2 217 1 74 9 193 1 79 2 225 1 80] 
#[1 4 173 0 145 15 141 0 244] 
#[1 4 18 0 42 4 18 0 93 4 18 0 97 4 18 0 98 4 18 0 99 4 18 0 118 15 145 0 236] 
#[0 8 122 0 27 0 28 0 29 0 33 0 34 0 42 0 54 0 73 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 143 0 145] 
#[1 14 1 0 104 14 5 0 146 15 149 0 199] 
#[1 15 153 0 42 12 29 0 93 12 33 0 97 12 37 0 98 12 41 0 99 12 45 0 118 12 53 0 237 12 53 0 238 12 53 0 239 12 53 0 240 12 53 0 241] 
#[0 8 126 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 8 130 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 15 157 0 235 7 121 0 245] 
#[1 7 250 0 27 7 250 0 42 7 250 0 54 7 250 0 73 7 250 0 94 7 250 0 96 7 250 0 136 15 161 1 6] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 15 165 0 137 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 15 169 0 27 15 173 0 42 5 33 0 54 2 45 0 73 5 41 0 94 2 53 0 96 1 221 0 136 15 177 0 248 1 237 0 249 15 181 1 7 15 181 1 8 15 181 1 9 15 181 1 12 15 181 1 13 15 181 1 15 15 181 1 16 15 181 1 17 15 181 1 19 2 137 1 20 15 181 1 21 15 181 1 57 2 169 1 58 15 181 1 59 2 177 1 60 15 181 1 62 15 181 1 63 15 181 1 65 2 193 1 66 15 181 1 67 2 201 1 68 15 181 1 70 15 181 1 71 15 181 1 73 2 217 1 74] 
#[0 8 134 0 3 0 22 0 24 0 25 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 109 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[1 8 138 0 3 11 13 0 18 8 138 0 22 11 13 0 23 8 138 0 24 8 138 0 25 11 13 0 26 8 138 0 27 8 138 0 28 8 138 0 29 10 169 0 33 8 138 0 34 10 173 0 35 11 13 0 40 8 138 0 42 11 13 0 44 8 138 0 46 11 13 0 47 11 13 0 49 8 138 0 53 8 138 0 54 11 13 0 64 8 138 0 67 11 13 0 69 10 201 0 72 8 138 0 73 11 13 0 77 11 13 0 86 11 13 0 87 11 13 0 91 11 13 0 92 8 138 0 93 8 138 0 94 8 138 0 96 8 138 0 97 8 138 0 98 8 138 0 99 11 13 0 105 11 13 0 106 8 138 0 109 11 13 0 110 11 13 0 115 11 13 0 116 8 138 0 118 8 138 0 120 8 138 0 123 11 13 0 125 8 138 0 128 11 13 0 129 11 13 0 130 8 138 0 136 8 138 0 145 12 177 1 36 11 13 1 39 8 138 1 143] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 142 0 31 8 142 0 35 4 225 0 37 8 142 0 59 4 225 0 60 8 142 0 61 4 225 0 66 4 225 0 74 8 142 0 78 4 225 0 84 8 142 0 101 8 142 0 102 4 225 0 113 4 225 0 114 8 142 0 117 8 142 0 133 8 142 0 134 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 8 142 0 143 4 225 1 136] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 146 0 31 8 146 0 35 4 225 0 37 8 146 0 59 4 225 0 60 8 146 0 61 4 225 0 66 4 225 0 74 8 146 0 78 4 225 0 84 8 146 0 101 8 146 0 102 4 225 0 113 4 225 0 114 8 146 0 117 8 146 0 133 8 146 0 134 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 8 146 0 143 4 225 1 136] 
#[0 8 150 0 5 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[1 15 193 0 5 8 154 0 31 8 154 0 35 8 154 0 59 8 154 0 61 8 154 0 78 8 154 0 101 8 154 0 102 8 154 0 117 8 154 0 133 8 154 0 134 8 154 0 143] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 158 0 31 8 158 0 35 4 225 0 37 8 158 0 59 4 225 0 60 8 158 0 61 4 225 0 66 4 225 0 74 8 158 0 78 4 225 0 84 8 158 0 101 8 158 0 102 4 225 0 113 4 225 0 114 8 158 0 117 8 158 0 133 8 158 0 134 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 8 158 0 143 4 225 1 136] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 8 162 0 31 8 162 0 35 4 69 0 37 8 162 0 59 4 69 0 60 8 162 0 61 4 69 0 66 4 69 0 74 8 162 0 78 4 69 0 84 8 162 0 101 8 162 0 102 4 69 0 113 4 69 0 114 8 162 0 117 8 162 0 133 8 162 0 134 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 8 162 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 15 197 0 220 15 197 1 126 1 213 1 131 1 217 1 142] 
#[0 8 166 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[1 3 221 0 2 4 69 0 4 3 229 0 6 4 69 0 8 3 237 0 10 4 69 0 12 4 69 0 13 4 69 0 14 4 69 0 15 4 69 0 19 4 69 0 21 8 170 0 31 8 170 0 35 4 69 0 37 8 170 0 59 4 69 0 60 8 170 0 61 4 69 0 66 4 69 0 74 8 170 0 78 4 69 0 84 8 170 0 101 8 170 0 102 4 69 0 113 4 69 0 114 8 170 0 117 8 170 0 133 8 170 0 134 4 69 0 135 4 41 0 136 4 69 0 138 4 69 0 139 4 69 0 141 4 69 0 142 8 170 0 143 4 61 0 144 4 65 1 129 4 69 1 135 4 69 1 136] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 1 189 0 219 15 201 0 220 15 201 1 126 1 213 1 131 1 217 1 142] 
#[0 15 205 0 143] 
#[0 8 174 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 8 178 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 15 209 0 32 3 78 0 143 15 209 1 38] 
#[0 8 182 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 8 186 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 15 213 0 32 3 78 0 143 15 213 1 38] 
#[0 8 190 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 8 194 0 22 0 24 0 27 0 28 0 29 0 34 0 42 0 45 0 50 0 54 0 58 0 63 0 67 0 73 0 94 0 109 0 120 0 123 0 128 0 145] 
#[0 8 198 0 41 0 42 0 43 0 50 0 51 0 63 0 82 0 126 0 143 1 143] 
#[1 8 202 0 41 8 202 0 42 8 202 0 51 8 202 0 82 6 101 0 143] 
#[0 8 206 0 3 0 5] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 15 217 0 213 15 221 0 214 15 225 0 215 15 229 0 216 1 189 0 219 15 233 0 220 15 233 1 126 1 213 1 131 1 217 1 142] 
#[1 12 97 0 2 7 97 0 6 5 114 0 27 5 114 0 28 5 114 0 29 5 114 0 33 5 114 0 34 5 114 0 42 5 114 0 54 5 114 0 73 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 96 5 114 0 97 5 114 0 98 5 114 0 99 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 128 5 114 0 136 5 114 0 143 5 114 0 145 15 237 0 242] 
#[1 15 241 0 42 12 29 0 93 12 33 0 97 12 37 0 98 12 41 0 99 12 45 0 118 12 53 0 237 12 53 0 238 12 53 0 239 12 53 0 240 12 53 0 241] 
#[1 8 210 0 3 8 210 0 5 4 197 0 6 0 150 0 12 4 201 0 195 4 81 0 196] 
#[0 8 214 0 33 0 92 0 143] 
#[1 4 18 0 42 4 18 0 93 4 18 0 97 4 18 0 98 4 18 0 99 4 18 0 118 15 245 0 236] 
#[1 15 169 0 27 15 249 0 42 5 33 0 54 2 45 0 73 5 41 0 94 2 53 0 96 1 221 0 136 15 177 0 248 1 237 0 249 15 181 1 7 15 181 1 8 15 181 1 9 15 181 1 12 15 181 1 13 15 181 1 15 15 181 1 16 15 181 1 17 15 181 1 19 2 137 1 20 15 181 1 21 15 181 1 57 2 169 1 58 15 181 1 59 2 177 1 60 15 181 1 62 15 181 1 63 15 181 1 65 2 193 1 66 15 181 1 67 2 201 1 68 15 181 1 70 15 181 1 71 15 181 1 73 2 217 1 74] 
#[0 8 218 0 27 0 42 0 54 0 73 0 94 0 96 0 136] 
#[1 5 33 0 54 2 45 0 73 5 37 0 83 5 41 0 94 2 53 0 96 5 45 1 20 5 49 1 58 5 53 1 60 5 57 1 66 5 61 1 68] 
#[0 8 222 0 33 0 92 0 143] 
#[1 15 253 0 27 2 53 0 96 1 221 0 136 5 1 0 249 5 157 1 20] 
#[0 8 226 0 27 0 42 0 54 0 73 0 94 0 96 0 136] 
#[0 8 230 0 27 0 42 0 54 0 73 0 94 0 96 0 136] 
#[0 8 234 0 27 0 42 0 54 0 73 0 94 0 96 0 136] 
#[0 16 1 0 145] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 238 0 31 8 238 0 35 4 225 0 37 8 238 0 59 4 225 0 60 8 238 0 61 4 225 0 66 4 225 0 74 8 238 0 78 4 225 0 84 8 238 0 101 8 238 0 102 4 225 0 113 4 225 0 114 8 238 0 117 8 238 0 133 8 238 0 134 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 8 238 0 143 4 225 1 136] 
#[1 4 217 0 2 4 225 0 4 4 221 0 6 4 225 0 8 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 8 242 0 31 8 242 0 35 4 225 0 37 8 242 0 59 4 225 0 60 8 242 0 61 4 225 0 66 4 225 0 74 8 242 0 78 4 225 0 84 8 242 0 101 8 242 0 102 4 225 0 113 4 225 0 114 8 242 0 117 8 242 0 133 8 242 0 134 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 8 242 0 143 4 225 1 136] 
#[0 8 246 0 3 0 25 0 27 0 28 0 29 0 34 0 42 0 54 0 73 0 93 0 94 0 96 0 97 0 98 0 99 0 118 0 120 0 123 0 128 0 136 0 145 1 143] 
#[0 16 5 0 143] 
#[0 16 9 0 143] 
#[1 2 182 0 3 2 182 0 42 16 13 0 143 16 17 1 99] 
#[0 8 250 0 3 0 42 0 143] 
#[1 16 21 0 5 16 25 0 9] 
#[0 8 254 0 5 0 9] 
#[1 4 217 0 2 4 225 0 4 9 2 0 5 4 221 0 6 4 225 0 8 9 2 0 9 4 225 0 12 4 225 0 13 4 225 0 14 4 225 0 19 4 225 0 21 4 225 0 37 4 225 0 60 4 225 0 66 4 225 0 74 4 225 0 84 4 225 0 113 4 225 0 114 4 225 0 135 4 225 0 138 4 225 0 139 4 225 0 141 4 225 0 142 4 225 1 136] 
#[1 2 230 0 27 2 230 0 28 2 230 0 29 9 6 0 33 2 230 0 34 2 230 0 42 2 230 0 54 2 230 0 73 9 6 0 92 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 9 6 0 143 2 230 0 145 16 29 0 235 7 121 0 245] 
#[0 9 10 0 33 0 92 0 143] 
#[1 16 33 0 42 12 29 0 93 12 33 0 97 12 37 0 98 12 41 0 99 12 45 0 118 12 53 0 237 12 53 0 238 12 53 0 239 12 53 0 240 12 53 0 241] 
#[0 9 14 0 33 0 92 0 143] 
#[1 2 53 0 96 8 21 1 20] 
#[0 9 18 0 5 0 31 0 35 0 59 0 61 0 78 0 101 0 102 0 117 0 133 0 134 0 143] 
#[0 9 22 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[0 9 26 0 3 0 5 0 10 0 11 0 15 0 17 0 18 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 31 0 33 0 34 0 35 0 38 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 63 0 64 0 67 0 69 0 72 0 73 0 77 0 78 0 81 0 82 0 86 0 87 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 99 0 101 0 102 0 105 0 106 0 109 0 110 0 115 0 116 0 117 0 118 0 120 0 123 0 125 0 126 0 128 0 129 0 130 0 133 0 134 0 136 0 137 0 138 0 143 0 145 1 143] 
#[1 2 233 0 2 3 250 0 3 1 81 0 16 3 250 0 42 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 16 37 0 214 15 225 0 215 15 229 0 216 1 189 0 219 15 233 0 220 15 233 1 126 1 213 1 131 1 217 1 142] 
#[0 9 30 0 3 0 42] 
#[1 2 233 0 2 1 81 0 16 1 93 0 79 0 185 0 136 1 121 0 141 1 125 0 142 2 237 0 146 1 189 0 147 1 213 0 149 1 141 0 153 16 41 0 216 1 189 0 219 15 233 0 220 15 233 1 126 1 213 1 131 1 217 1 142] 
#[0 16 45 0 2] 
#[1 4 18 0 42 4 18 0 93 4 18 0 97 4 18 0 98 4 18 0 99 4 18 0 118 16 49 0 236] 
#[0 9 34 0 33 0 92 0 143] 
#[0 9 38 0 3 0 42 0 143] 
#[0 9 42 0 5 0 9] 
#[1 2 230 0 3 2 230 0 25 2 230 0 27 2 230 0 28 2 230 0 29 2 230 0 34 2 230 0 54 2 230 0 73 2 230 0 93 2 230 0 94 2 230 0 96 2 230 0 97 2 230 0 98 2 230 0 99 2 230 0 118 2 230 0 120 2 230 0 123 2 230 0 128 2 230 0 136 2 230 0 145 16 53 0 210 7 117 0 235 7 121 0 245] 
#[1 16 57 0 42 12 29 0 93 12 33 0 97 12 37 0 98 12 41 0 99 12 45 0 118 12 53 0 237 12 53 0 238 12 53 0 239 12 53 0 240 12 53 0 241] 
#[0 16 61 0 3] 
#[0 9 46 0 33 0 92 0 143] 
#[0 9 50 0 3 0 42 0 143]
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
DelphiParser >> reduceActionForClassPropertyHeader2: nodes [
	| result |
	result := DelphiClassPropertyHeaderNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result classToken: (nodes at: 2).
	result propertyToken: ((nodes at: 3) at: 1).
	result name: ((nodes at: 3) at: 2).
	result arrayAccessors: ((nodes at: 3) at: 3).
	result colon: ((nodes at: 3) at: 4).
	result type: ((nodes at: 3) at: 5).
	result addNodes: ((nodes at: 3) at: 6) to: result indexes.
	result addNodes: ((nodes at: 3) at: 7) to: result readers.
	result addNodes: ((nodes at: 3) at: 8) to: result writers.
	result addNodes: ((nodes at: 3) at: 9) to: result defaults.
	result addNodes: ((nodes at: 3) at: 10) to: result storeds.
	result addNodes: ((nodes at: 3) at: 11) to: result implementses.
	result addNodes: ((nodes at: 3) at: 12) to: result dispids.
	result semicolon: ((nodes at: 3) at: 13).
	result modifier: ((nodes at: 3) at: 14).
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
DelphiParser >> reduceActionForConstantExpressionList2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	self add: ((nodes at: 3) at: 3) to: (result at: 3).
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
DelphiParser >> reduceActionForPropertyHeader2: nodes [
	| result |
	result := DelphiPropertyHeaderNode new.
	result addNodes: (nodes at: 1) to: result annotations.
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
	self addAll: (nodes at: 2) to: (result at: 4).
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
