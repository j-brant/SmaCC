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
#[ 0 18 1 77] 
#[ 0 138 0 142] 
#[ 0 142 0 162] 
#[ 0 194 0 198] 
#[ 0 246 2 249] 
#[ 1 54 2 189] 
#[ 1 54 2 193] 
#[ 1 54 2 197] 
#[ 1 54 2 201] 
#[ 1 54 2 217] 
#[ 1 54 2 249] 
#[ 1 54 2 253] 
#[ 1 82 2 189] 
#[ 1 82 2 193] 
#[ 1 82 2 197] 
#[ 1 82 2 201] 
#[ 1 82 2 217] 
#[ 1 82 2 249] 
#[ 1 82 2 253] 
#[ 1 114 2 189] 
#[ 1 114 2 193] 
#[ 1 114 2 197] 
#[ 1 114 2 201] 
#[ 1 114 2 217] 
#[ 1 114 2 249] 
#[ 1 114 2 253] 
#[ 1 118 2 189] 
#[ 1 118 2 193] 
#[ 1 118 2 197] 
#[ 1 118 2 201] 
#[ 1 118 2 217] 
#[ 1 118 2 249] 
#[ 1 118 2 253] 
#[ 1 254 5 105] 
#[ 2 6 2 189] 
#[ 2 6 2 193] 
#[ 2 6 2 197] 
#[ 2 6 2 217] 
#[ 2 6 2 249] 
#[ 2 6 2 253] 
#[ 2 10 2 189] 
#[ 2 10 2 193] 
#[ 2 10 2 197] 
#[ 2 10 2 217] 
#[ 2 10 2 249] 
#[ 2 10 2 253] 
#[ 2 22 2 189] 
#[ 2 22 2 193] 
#[ 2 22 2 197] 
#[ 2 22 2 217] 
#[ 2 22 2 249] 
#[ 2 22 2 253] 
#[ 2 26 2 189] 
#[ 2 26 2 193] 
#[ 2 26 2 197] 
#[ 2 26 2 217] 
#[ 2 26 2 249] 
#[ 2 26 2 253] 
#[ 2 189 2 214] 
#[ 2 193 2 214] 
#[ 2 197 2 214] 
#[ 2 201 2 214] 
#[ 2 214 2 217] 
#[ 2 214 2 249] 
#[ 2 214 2 253] 
#[ 2 189 2 222] 
#[ 2 193 2 222] 
#[ 2 197 2 222] 
#[ 2 201 2 222] 
#[ 2 217 2 222] 
#[ 2 222 2 249] 
#[ 2 222 2 253] 
#[ 2 246 2 249] 
#[ 2 189 3 22] 
#[ 2 193 3 22] 
#[ 2 197 3 22] 
#[ 2 217 3 22] 
#[ 2 249 3 22] 
#[ 2 253 3 22] 
#[ 0 194 9 153] 
#[ 0 218 4 206] 
#[ 0 222 4 210] 
#[ 1 30 3 229] 
#[ 5 130 11 37] 
#[ 5 130 11 41] 
#[ 5 130 11 89] 
#[ 7 146 11 37] 
#[ 7 146 11 41] 
#[ 7 146 11 89]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-22T06:59:02.279038-05:00'
]

{ #category : #generated }
DelphiParser class >> definitionComment [
"%start File Statement SimpleDefinedType NamedDefinedType ConstantValue Variable;

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
	: GenericTypeArgument 'genericTypeArgument'
	|  GenericTypeArgumentList "","" 'comma' GenericTypeArgument 'genericTypeArgument'
	;
GenericTypeArgument
	: <identifier> 'argument' {{TypeArgument}}
	| <identifier> 'argument' "":"" 'colon' Type 'typeConstraint' {{TypeArgument}}
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
	#(164 0 #reduceActionForUsesList1: 5777409 false ) 
	#(360 0 #reduceActionForBeforeAsm1: 32523265 false ) 
	#(330 0 #reduceActionForStatement14: 29042702 false ) 
	#(204 0 #nil 11508737 false ) 
	#(149 1 #reduceActionForFile2: 4233218 false ) 
	#(149 1 #reduceActionForFile3: 4233219 false ) 
	#(149 1 #reduceActionForFile4: 4233220 false ) 
	#(149 1 #reduceActionForFile1: 4233217 false ) 
	#(163 0 #nil 5662721 false ) 
	#(161 1 #reduceActionForUnitFile2: 5336066 false ) 
	#(322 0 #reduceActionForMethodVariables2: 28288002 false ) 
	#(196 0 #reduceActionForOptionalArguments1: 10400769 false ) 
	#(376 1 #reduceActionForInheritedFunctionCall4: 35531780 false ) 
	#(352 1 #reduceActionForRaiseStatement2: 31689730 false ) 
	#(369 1 #reduceActionForVariableExpression1: 34933761 false ) 
	#(212 1 #liftFirstValue: 12200961 false ) 
	#(375 1 #liftFirstValue: 35509249 false ) 
	#(361 1 #reduceActionForExpression9: 32641033 false ) 
	#(361 1 #reduceActionForExpression9: 32641031 false ) 
	#(330 1 #reduceActionForStatement13: 29042701 false ) 
	#(330 1 #reduceActionForStatement11: 29042699 false ) 
	#(330 1 #reduceActionForStatement2: 29042690 false ) 
	#(330 1 #reduceActionForStatement3: 29042691 false ) 
	#(330 1 #reduceActionForStatement4: 29042692 false ) 
	#(330 1 #reduceActionForStatement5: 29042693 false ) 
	#(330 1 #reduceActionForStatement6: 29042694 false ) 
	#(330 1 #reduceActionForStatement7: 29042695 false ) 
	#(330 1 #reduceActionForStatement8: 29042696 false ) 
	#(330 1 #reduceActionForStatement9: 29042697 false ) 
	#(330 1 #reduceActionForStatement10: 29042698 false ) 
	#(330 1 #liftFirstValue: 29042700 false ) 
	#(358 1 #liftFirstValue: 32344066 false ) 
	#(330 1 #liftFirstValue: 29042689 false ) 
	#(361 1 #liftFirstValue: 32641027 false ) 
	#(189 0 #reduceActionForInsideGeneric1: 9011201 true ) 
	#(361 1 #liftFirstValue: 32641026 false ) 
	#(361 1 #liftFirstValue: 32641047 false ) 
	#(361 1 #liftFirstValue: 32641046 false ) 
	#(361 1 #liftFirstValue: 32641045 false ) 
	#(361 1 #liftFirstValue: 32641025 false ) 
	#(361 1 #liftFirstValue: 32641042 false ) 
	#(361 1 #reduceActionForExpression9: 32641032 false ) 
	#(361 1 #liftFirstValue: 32641030 false ) 
	#(361 1 #reduceActionForExpression9: 32641044 false ) 
	#(214 0 #reduceActionForConstantArray2: 13283330 false ) 
	#(244 1 #reduceActionForFileType2: 17804290 false ) 
	#(204 1 #liftFirstValue: 11508738 false ) 
	#(213 1 #reduceActionForVariableExpression1: 12223491 false ) 
	#(192 1 #reduceActionForVariableExpression1: 9314305 false ) 
	#(213 1 #reduceActionForExpression9: 12223495 false ) 
	#(243 1 #liftFirstValue: 17710084 false ) 
	#(243 1 #liftFirstValue: 17710081 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8443905 false ) 
	#(243 1 #liftFirstValue: 17710082 false ) 
	#(243 1 #liftFirstValue: 17710083 false ) 
	#(187 1 #liftFirstValue: 8443913 false ) 
	#(187 1 #liftFirstValue: 8443908 false ) 
	#(187 1 #liftFirstValue: 8443909 false ) 
	#(187 1 #liftFirstValue: 8443914 false ) 
	#(213 1 #reduceActionForExpression9: 12223489 false ) 
	#(211 1 #liftFirstValue: 12137473 false ) 
	#(187 1 #liftFirstValue: 8443911 false ) 
	#(187 1 #liftFirstValue: 8443907 false ) 
	#(213 1 #liftFirstValue: 12223497 false ) 
	#(213 1 #reduceActionForExpression9: 12223494 false ) 
	#(213 1 #reduceActionForExpression9: 12223490 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7431169 false ) 
	#(264 0 #reduceActionForOptionalType1: 19757057 false ) 
	#(288 1 #reduceActionForVariableNames1: 23660545 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6044673 false ) 
	#(193 0 #nil 9656321 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5856257 false ) 
	#(166 1 #reduceActionForUsesModule1: 5931009 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4792321 false ) 
	#(291 0 #nil 23903233 false ) 
	#(155 1 #reduceActionForMainMethod1: 4846593 false ) 
	#(361 2 #reduceActionForExpression14: 32641038 false ) 
	#(329 1 #reduceActionForVariableNames1: 28939265 false ) 
	#(285 0 #reduceActionForArgumentList1: 23392257 false ) 
	#(290 0 #nil 23816193 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29654017 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29654018 false ) 
	#(376 2 #reduceActionForInheritedFunctionCall3: 35531779 false ) 
	#(361 2 #reduceActionForExpression15: 32641039 false ) 
	#(365 2 #reduceActionForAnonymousProcedureHeader1: 34342913 false ) 
	#(353 0 #reduceActionForOptionalType1: 31798273 false ) 
	#(338 0 #nil 30398465 false ) 
	#(336 1 #reduceActionForVariableNames1: 30192641 false ) 
	#(370 2 #reduceActionForSetConstructor2: 35003394 false ) 
	#(372 1 #reduceActionForSetValue1: 35233793 false ) 
	#(371 1 #reduceActionForVariableNames1: 35133441 false ) 
	#(361 2 #reduceActionForExpression16: 32641040 false ) 
	#(361 2 #reduceActionForExpression17: 32641041 false ) 
	#(380 1 #liftFirstValue: 36230151 false ) 
	#(380 1 #liftFirstValue: 36230152 false ) 
	#(380 1 #liftFirstValue: 36230159 false ) 
	#(380 1 #liftFirstValue: 36230160 false ) 
	#(380 1 #liftFirstValue: 36230148 false ) 
	#(379 1 #liftFirstValue: 36165633 false ) 
	#(380 1 #liftFirstValue: 36230145 false ) 
	#(380 1 #liftFirstValue: 36230157 false ) 
	#(380 1 #liftFirstValue: 36230149 false ) 
	#(380 1 #liftFirstValue: 36230162 false ) 
	#(380 1 #liftFirstValue: 36230163 false ) 
	#(380 1 #liftFirstValue: 36230150 false ) 
	#(380 1 #liftFirstValue: 36230146 false ) 
	#(380 1 #liftFirstValue: 36230155 false ) 
	#(380 1 #liftFirstValue: 36230156 false ) 
	#(380 1 #liftFirstValue: 36230147 false ) 
	#(380 1 #liftFirstValue: 36230158 false ) 
	#(380 1 #liftFirstValue: 36230161 false ) 
	#(380 1 #liftFirstValue: 36230154 false ) 
	#(380 1 #liftFirstValue: 36230153 false ) 
	#(361 2 #reduceActionForExpression19: 32641043 false ) 
	#(361 2 #reduceActionForExpression13: 32641037 false ) 
	#(379 1 #liftFirstValue: 36165634 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 34058241 false ) 
	#(364 2 #reduceActionForAnonymousProcedure1: 34231297 false ) 
	#(366 2 #reduceActionForAnonymousFunction1: 34443265 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 34058242 false ) 
	#(185 1 #reduceActionForEnumName1: 8222721 false ) 
	#(184 1 #reduceActionForVariableNames1: 8150017 false ) 
	#(216 1 #reduceActionForUsesModule1: 13510657 false ) 
	#(214 1 #reduceActionForConstantArray1: 13283329 false ) 
	#(215 1 #reduceActionForUsesModuleList1: 13330433 false ) 
	#(344 0 #nil 30990337 false ) 
	#(217 1 #reduceActionForConstantArray1: 13645825 false ) 
	#(218 1 #reduceActionForVariableNames1: 13688833 false ) 
	#(213 2 #reduceActionForExpression14: 12223503 false ) 
	#(213 2 #reduceActionForExpression15: 12223500 false ) 
	#(260 0 #reduceActionForOptionalType1: 19409921 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8443915 false ) 
	#(213 2 #reduceActionForExpression16: 12223501 false ) 
	#(213 2 #reduceActionForExpression17: 12223502 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8443906 false ) 
	#(192 2 #reduceActionForNamedType3: 9314307 false ) 
	#(246 0 #reduceActionForOptionalArguments1: 18126850 false ) 
	#(237 0 #reduceActionForMethodVariables2: 16251905 false ) 
	#(193 1 #liftFirstValue: 9656323 false ) 
	#(193 1 #liftFirstValue: 9656322 false ) 
	#(157 3 #reduceActionForPackageLine1: 4964353 false ) 
	#(164 3 #reduceActionForUsesList2: 5777410 false ) 
	#(159 1 #reduceActionForVariableNames1: 5143553 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6169601 false ) 
	#(381 0 #nil 36416513 false ) 
	#(150 3 #reduceActionForProgramFile2: 4363266 false ) 
	#(323 1 #liftFirstValue: 28359683 false ) 
	#(323 1 #liftFirstValue: 28359687 false ) 
	#(323 1 #liftFirstValue: 28359682 false ) 
	#(323 1 #liftFirstValue: 28359684 false ) 
	#(302 1 #reduceActionForProcedureDefinition2: 25574402 false ) 
	#(303 1 #reduceActionForExternalProcedureHeader1: 25741313 false ) 
	#(305 1 #reduceActionForExternalProcedureHeader1: 25938945 false ) 
	#(323 1 #liftFirstValue: 28359685 false ) 
	#(310 1 #reduceActionForFunctionDefinition2: 26616834 false ) 
	#(311 1 #reduceActionForExternalFunctionHeader1: 26778625 false ) 
	#(313 1 #reduceActionForExternalFunctionHeader1: 26971137 false ) 
	#(322 2 #reduceActionForMethodVariables1: 28288001 false ) 
	#(323 1 #liftFirstValue: 28359686 false ) 
	#(323 1 #liftFirstValue: 28359681 false ) 
	#(325 1 #reduceActionForVars1: 28598273 false ) 
	#(361 3 #reduceActionForExpression11: 32641035 false ) 
	#(358 3 #reduceActionForStatementBlock1: 32344065 false ) 
	#(290 1 #liftFirstValue: 23816195 false ) 
	#(290 1 #liftFirstValue: 23816196 false ) 
	#(290 1 #liftFirstValue: 23816194 false ) 
	#(285 1 #reduceActionForConstantArray1: 23392258 false ) 
	#(286 1 #reduceActionForVariableNames1: 23426049 false ) 
	#(367 3 #reduceActionForAnonymousFunctionHeader1: 34551809 false ) 
	#(352 3 #reduceActionForRaiseStatement1: 31689729 false ) 
	#(342 0 #nil 30800897 false ) 
	#(370 3 #reduceActionForSetConstructor1: 35003393 false ) 
	#(331 3 #reduceActionForPackageLine1: 29518849 false ) 
	#(331 3 #reduceActionForPackageLine1: 29518850 false ) 
	#(359 3 #reduceActionForAsmBlock1: 32448513 false ) 
	#(361 3 #reduceActionForExpression5: 32641029 false ) 
	#(378 1 #liftFirstValue: 36031489 false ) 
	#(377 1 #reduceActionForVariableNames1: 35923969 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33903618 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33903617 false ) 
	#(361 3 #reduceActionForExpression12: 32641036 false ) 
	#(374 1 #reduceActionForVariableNames1: 35421185 false ) 
	#(361 3 #reduceActionForExpression10: 32641034 false ) 
	#(183 3 #reduceActionForEnumType1: 8096769 false ) 
	#(213 3 #reduceActionForConstantExpression11: 12223499 false ) 
	#(344 1 #liftFirstValue: 30990338 false ) 
	#(244 3 #reduceActionForFileType1: 17804289 false ) 
	#(197 3 #reduceActionForSetType2: 10465282 false ) 
	#(197 3 #reduceActionForSetType1: 10465281 false ) 
	#(236 2 #reduceActionForQualifiedName1: 16051201 false ) 
	#(192 3 #reduceActionForPropertyExpression2: 9314306 false ) 
	#(228 0 #reduceActionForMethodVariables2: 15118337 false ) 
	#(227 1 #reduceActionForImplicitClassSection1: 15045633 false ) 
	#(210 3 #reduceActionForRangeType1: 12047361 false ) 
	#(220 1 #reduceActionForVariableNames1: 13947905 false ) 
	#(213 3 #reduceActionForPropertyExpression2: 12223492 false ) 
	#(213 3 #reduceActionForExpression10: 12223493 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8443912 false ) 
	#(240 3 #reduceActionForAttribute1: 17247233 false ) 
	#(181 1 #reduceActionForGenericTypeArgument1: 7676929 false ) 
	#(180 1 #reduceActionForVariableNames1: 7519233 false ) 
	#(264 2 #reduceActionForGotoStatement1: 19757058 false ) 
	#(288 3 #reduceActionForVariableNames2: 23660546 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6044674 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4675585 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4478977 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5558273 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5856258 false ) 
	#(166 3 #reduceActionForPackageLine1: 5931010 false ) 
	#(150 4 #reduceActionForProgramFile1: 4363265 false ) 
	#(154 2 #reduceActionForMethodVariables1: 4792322 false ) 
	#(158 3 #reduceActionForRequires1: 5062657 false ) 
	#(156 4 #reduceActionForPackageFile1: 4907009 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5662722 false ) 
	#(293 0 #reduceActionForMethodVariables2: 24135681 false ) 
	#(382 0 #nil 36527105 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6398977 false ) 
	#(171 1 #reduceActionForConstantValues1: 6477825 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6763521 false ) 
	#(174 1 #reduceActionForConstantValues1: 6862849 false ) 
	#(326 2 #reduceActionForVarsVars2: 28627970 false ) 
	#(327 1 #reduceActionForConstantValues1: 28716033 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7093249 false ) 
	#(177 1 #reduceActionForConstantValues1: 7174145 false ) 
	#(326 2 #reduceActionForVarsVars2: 28627969 false ) 
	#(302 2 #reduceActionForProcedureDefinition1: 25574401 false ) 
	#(279 0 #reduceActionForMethodVariables2: 21778433 false ) 
	#(310 2 #reduceActionForFunctionDefinition1: 26616833 false ) 
	#(321 3 #reduceActionForMethodComponents1: 28199937 false ) 
	#(329 3 #reduceActionForVariableNames2: 28939266 false ) 
	#(350 1 #reduceActionForBaseCaseLabel1: 31477761 false ) 
	#(351 0 #reduceActionForElseCase1: 31639553 false ) 
	#(346 1 #reduceActionForVariableNames1: 31094785 false ) 
	#(349 1 #reduceActionForVariableNames1: 31388673 false ) 
	#(348 1 #liftFirstValue: 31283201 false ) 
	#(196 3 #reduceActionForRequires1: 10400770 false ) 
	#(287 2 #reduceActionForArgument2: 23521282 false ) 
	#(334 4 #reduceActionForIfStatement1: 29858817 false ) 
	#(376 4 #reduceActionForInheritedFunctionCall2: 35531778 false ) 
	#(353 2 #reduceActionForGotoStatement1: 31798274 false ) 
	#(333 4 #reduceActionForRepeatStatement1: 29755393 false ) 
	#(341 0 #nil 30725121 false ) 
	#(339 1 #reduceActionForConstantValues1: 30558209 false ) 
	#(357 4 #reduceActionForLibraryLine1: 32238593 false ) 
	#(336 3 #reduceActionForVariableNames2: 30192642 false ) 
	#(335 4 #reduceActionForRepeatStatement1: 30098433 false ) 
	#(372 3 #reduceActionForSetValue2: 35233794 false ) 
	#(371 3 #reduceActionForVariableNames2: 35133442 false ) 
	#(361 4 #reduceActionForExpression4: 32641028 false ) 
	#(373 3 #reduceActionForRequires1: 35366913 false ) 
	#(191 1 #reduceActionForVariableNames1: 9151489 false ) 
	#(190 0 #reduceActionForOutsideGeneric1: 9080833 true ) 
	#(185 3 #reduceActionForEnumName2: 8222722 false ) 
	#(219 3 #reduceActionForConstantRecordField1: 13822977 false ) 
	#(184 3 #reduceActionForVariableNames2: 8150018 false ) 
	#(216 3 #reduceActionForPackageLine1: 13510658 false ) 
	#(215 3 #reduceActionForUsesModuleList2: 13330434 false ) 
	#(213 4 #reduceActionForConstantExpression10: 12223498 false ) 
	#(218 3 #reduceActionForVariableNames2: 13688834 false ) 
	#(260 2 #reduceActionForGotoStatement1: 19409922 false ) 
	#(248 1 #liftFirstValue: 18304002 false ) 
	#(248 1 #liftFirstValue: 18304001 false ) 
	#(247 1 #reduceActionForVariableNames1: 18192385 false ) 
	#(201 4 #reduceActionForRecordType1: 11099137 false ) 
	#(203 2 #reduceActionForRecordFieldList1: 11372545 false ) 
	#(238 1 #liftFirstValue: 16331788 false ) 
	#(238 1 #liftFirstValue: 16331789 false ) 
	#(237 2 #reduceActionForMethodVariables1: 16251906 false ) 
	#(238 1 #liftFirstValue: 16331784 false ) 
	#(238 1 #liftFirstValue: 16331786 false ) 
	#(238 1 #liftFirstValue: 16331787 false ) 
	#(238 1 #liftFirstValue: 16331785 false ) 
	#(239 1 #liftFirstValue: 16854022 false ) 
	#(238 1 #liftFirstValue: 16331780 false ) 
	#(238 1 #liftFirstValue: 16331782 false ) 
	#(255 1 #liftFirstValue: 18935809 false ) 
	#(255 1 #liftFirstValue: 18935810 false ) 
	#(255 1 #liftFirstValue: 18935811 false ) 
	#(255 1 #liftFirstValue: 18935812 false ) 
	#(255 1 #liftFirstValue: 18935813 false ) 
	#(254 1 #liftFirstValue: 18863105 false ) 
	#(265 1 #reduceActionForPropertyHeader1: 19805185 false ) 
	#(254 1 #liftFirstValue: 18863106 false ) 
	#(256 1 #liftFirstValue: 19074049 false ) 
	#(256 1 #liftFirstValue: 19074050 false ) 
	#(257 1 #liftFirstValue: 19158017 false ) 
	#(257 1 #liftFirstValue: 19158018 false ) 
	#(258 1 #liftFirstValue: 19238913 false ) 
	#(258 1 #liftFirstValue: 19238914 false ) 
	#(259 1 #liftFirstValue: 19316737 false ) 
	#(259 1 #liftFirstValue: 19316738 false ) 
	#(261 1 #liftFirstValue: 19502081 false ) 
	#(261 1 #liftFirstValue: 19502082 false ) 
	#(262 1 #liftFirstValue: 19576833 false ) 
	#(262 1 #liftFirstValue: 19576834 false ) 
	#(263 1 #liftFirstValue: 19666945 false ) 
	#(263 1 #liftFirstValue: 19666946 false ) 
	#(238 1 #liftFirstValue: 16331779 false ) 
	#(213 4 #reduceActionForExpression4: 12223496 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8443910 false ) 
	#(179 3 #reduceActionForRequires1: 7431170 false ) 
	#(223 0 #reduceActionForMethodVariables2: 14715905 false ) 
	#(250 1 #liftFirstValue: 18554882 false ) 
	#(250 1 #liftFirstValue: 18554881 false ) 
	#(234 0 #reduceActionForOptionalArguments1: 15890433 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7281665 false ) 
	#(182 1 #reduceActionForUsesModule1: 7825411 false ) 
	#(182 1 #reduceActionForUsesModule1: 7825412 false ) 
	#(186 1 #liftFirstValue: 8332292 false ) 
	#(186 1 #liftFirstValue: 8332289 false ) 
	#(186 1 #liftFirstValue: 8332293 false ) 
	#(186 1 #liftFirstValue: 8332290 false ) 
	#(186 1 #liftFirstValue: 8332291 false ) 
	#(249 1 #reduceActionForInterfaceType2: 18360322 false ) 
	#(289 0 #reduceActionForOptionalType1: 23751681 false ) 
	#(384 1 #reduceActionForVariableNames1: 36741121 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4595713 false ) 
	#(159 3 #reduceActionForVariableNames2: 5143554 false ) 
	#(160 3 #reduceActionForUsesList2: 5253121 false ) 
	#(385 2 #reduceActionForGotoStatement1: 36832257 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6169602 false ) 
	#(169 1 #liftFirstValue: 6263811 false ) 
	#(169 1 #liftFirstValue: 6263810 false ) 
	#(169 1 #liftFirstValue: 6263809 false ) 
	#(169 1 #liftFirstValue: 6263812 false ) 
	#(169 1 #liftFirstValue: 6263813 false ) 
	#(169 1 #liftFirstValue: 6263814 false ) 
	#(292 0 #nil 24049665 false ) 
	#(381 2 #reduceActionForInitializationSection2: 36416514 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6477826 false ) 
	#(324 3 #reduceActionForLabels1: 28506113 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6862850 false ) 
	#(327 2 #reduceActionForMethodVariables1: 28716034 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7174146 false ) 
	#(283 2 #reduceActionForExternalMethodModifier1: 22449153 false ) 
	#(283 2 #reduceActionForExternalMethodModifier6: 22449158 false ) 
	#(304 3 #reduceActionForExternalProcedureHeaderVars1: 25821185 false ) 
	#(312 3 #reduceActionForExternalFunctionHeaderVars1: 26855425 false ) 
	#(345 2 #reduceActionForCaseOptionList1: 31042561 false ) 
	#(356 1 #liftFirstValue: 32205826 false ) 
	#(356 1 #liftFirstValue: 32205825 false ) 
	#(286 3 #reduceActionForVariableNames2: 23426050 false ) 
	#(376 5 #reduceActionForInheritedFunctionCall1: 35531777 false ) 
	#(338 3 #reduceActionForExcept3: 30398467 false ) 
	#(339 2 #reduceActionForMethodVariables1: 30558210 false ) 
	#(338 3 #reduceActionForExcept2: 30398466 false ) 
	#(342 2 #reduceActionForFinally2: 30800898 false ) 
	#(337 5 #reduceActionForTryStatement1: 30298113 false ) 
	#(377 3 #reduceActionForVariableNames2: 35923970 false ) 
	#(378 3 #reduceActionForMethodArgument2: 36031490 false ) 
	#(374 3 #reduceActionForVariableNames2: 35421186 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType1: 9733121 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType2: 9733122 false ) 
	#(197 5 #reduceActionForSetType3: 10465283 false ) 
	#(236 4 #reduceActionForQualifiedName2: 16051202 false ) 
	#(246 3 #reduceActionForRequires1: 18126849 false ) 
	#(245 5 #reduceActionForArrayType2: 17915906 false ) 
	#(245 5 #reduceActionForArrayType1: 17915905 false ) 
	#(203 3 #reduceActionForRecordFieldList2: 11372546 false ) 
	#(228 2 #reduceActionForMethodVariables1: 15118338 false ) 
	#(229 1 #liftFirstValue: 15180801 false ) 
	#(229 1 #liftFirstValue: 15180802 false ) 
	#(229 1 #liftFirstValue: 15180803 false ) 
	#(229 1 #liftFirstValue: 15180804 false ) 
	#(267 2 #reduceActionForClassPropertyHeader1: 20063233 false ) 
	#(308 2 #reduceActionForExternalClassProcedureHeader1: 26387457 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26499073 false ) 
	#(316 2 #reduceActionForExternalClassFunctionHeader1: 27420673 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27529217 false ) 
	#(238 2 #reduceActionForNewClassComponent2: 16331778 false ) 
	#(301 0 #reduceActionForOptionalType1: 25526273 false ) 
	#(269 0 #nil 20486145 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16331781 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16331783 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16854017 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16854018 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16854019 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16854020 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16854021 false ) 
	#(220 3 #reduceActionForVariableNames2: 13947906 false ) 
	#(181 3 #reduceActionForGenericTypeArgument2: 7676930 false ) 
	#(180 3 #reduceActionForVariableNames2: 7519234 false ) 
	#(182 2 #reduceActionForDefinedType2: 7825410 false ) 
	#(251 0 #nil 18610177 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7281666 false ) 
	#(226 0 #nil 14985217 false ) 
	#(383 3 #reduceActionForExportsDefinition1: 36630529 false ) 
	#(294 1 #liftFirstValue: 24195082 false ) 
	#(294 1 #liftFirstValue: 24195083 false ) 
	#(294 1 #liftFirstValue: 24195080 false ) 
	#(291 4 #reduceActionForImplementationSection2: 23903234 false ) 
	#(293 2 #reduceActionForMethodVariables1: 24135682 false ) 
	#(294 1 #liftFirstValue: 24195073 false ) 
	#(295 1 #reduceActionForConstructorDefinition2: 24482818 false ) 
	#(294 1 #liftFirstValue: 24195074 false ) 
	#(298 1 #reduceActionForDestructorDefinition2: 25012226 false ) 
	#(294 1 #liftFirstValue: 24195075 false ) 
	#(294 1 #liftFirstValue: 24195076 false ) 
	#(307 1 #reduceActionForClassProcedureDefinition2: 26194946 false ) 
	#(294 1 #liftFirstValue: 24195077 false ) 
	#(294 1 #liftFirstValue: 24195078 false ) 
	#(315 1 #reduceActionForClassFunctionDefinition2: 27233282 false ) 
	#(294 1 #liftFirstValue: 24195079 false ) 
	#(318 1 #reduceActionForClassOperatorDefinition2: 27643906 false ) 
	#(294 1 #liftFirstValue: 24195081 false ) 
	#(294 1 #liftFirstValue: 24195084 false ) 
	#(382 2 #reduceActionForFinalizationSection2: 36527106 false ) 
	#(161 6 #reduceActionForUnitFile1: 5336065 false ) 
	#(280 0 #reduceActionForMethodVariables2: 21849089 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22449156 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22449154 false ) 
	#(284 1 #liftFirstValue: 23103499 false ) 
	#(284 1 #liftFirstValue: 23103493 false ) 
	#(284 1 #liftFirstValue: 23103502 false ) 
	#(284 1 #liftFirstValue: 23103497 false ) 
	#(284 1 #liftFirstValue: 23103503 false ) 
	#(284 1 #liftFirstValue: 23103506 false ) 
	#(284 1 #liftFirstValue: 23103501 false ) 
	#(284 1 #liftFirstValue: 23103509 false ) 
	#(284 1 #liftFirstValue: 23103508 false ) 
	#(284 1 #liftFirstValue: 23103507 false ) 
	#(284 1 #liftFirstValue: 23103500 false ) 
	#(284 1 #liftFirstValue: 23103489 false ) 
	#(284 1 #liftFirstValue: 23103490 false ) 
	#(284 1 #liftFirstValue: 23103494 false ) 
	#(284 1 #liftFirstValue: 23103505 false ) 
	#(284 1 #liftFirstValue: 23103492 false ) 
	#(284 1 #liftFirstValue: 23103495 false ) 
	#(284 1 #liftFirstValue: 23103510 false ) 
	#(284 1 #liftFirstValue: 23103504 false ) 
	#(284 1 #liftFirstValue: 23103491 false ) 
	#(284 1 #liftFirstValue: 23103498 false ) 
	#(284 1 #liftFirstValue: 23103496 false ) 
	#(279 2 #reduceActionForMethodVariables1: 21778434 false ) 
	#(281 1 #liftFirstValue: 21952513 false ) 
	#(281 1 #liftFirstValue: 21952514 false ) 
	#(350 3 #reduceActionForBaseCaseLabel2: 31477762 false ) 
	#(351 2 #reduceActionForElseCase2: 31639554 false ) 
	#(343 6 #reduceActionForCaseStatement1: 30868481 false ) 
	#(346 3 #reduceActionForVariableNames2: 31094786 false ) 
	#(347 3 #reduceActionForCaseOption1: 31197185 false ) 
	#(349 3 #reduceActionForVariableNames2: 31388674 false ) 
	#(348 3 #reduceActionForCaseLabel2: 31283202 false ) 
	#(355 6 #reduceActionForForInStatement1: 32059393 false ) 
	#(334 6 #reduceActionForForInStatement1: 29858818 false ) 
	#(368 6 #reduceActionForMemExpression1: 34661377 false ) 
	#(368 6 #reduceActionForMemExpression1: 34661378 false ) 
	#(341 2 #reduceActionForPossibleExceptElse2: 30725122 false ) 
	#(191 3 #reduceActionForVariableNames2: 9151490 false ) 
	#(188 5 #reduceActionForInstantiatedGenericTypeArguments1: 8880129 false ) 
	#(202 6 #reduceActionForRecordHelperType1: 11204609 false ) 
	#(199 1 #reduceActionForVariableNames1: 10899457 false ) 
	#(198 3 #reduceActionForTwoItemSetNameList1: 10742785 false ) 
	#(247 3 #reduceActionForVariableNames2: 18192386 false ) 
	#(230 2 #reduceActionForPrivateClassSection2: 15294466 false ) 
	#(231 2 #reduceActionForProtectedClassSection2: 15486978 false ) 
	#(232 2 #reduceActionForPublicClassSection1: 15693825 false ) 
	#(233 2 #reduceActionForPublishedClassSection1: 15785985 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24659969 false ) 
	#(299 3 #reduceActionForExternalConstructorHeader1: 25184257 false ) 
	#(319 3 #reduceActionForExternalConstructorHeader1: 27831297 false ) 
	#(200 3 #reduceActionForMetaclassType1: 11002881 false ) 
	#(224 1 #liftFirstValue: 14790657 false ) 
	#(224 1 #liftFirstValue: 14790658 false ) 
	#(223 2 #reduceActionForMethodVariables1: 14715906 false ) 
	#(221 3 #reduceActionForNewClassType2: 14067714 false ) 
	#(235 1 #reduceActionForVariableNames1: 15951873 false ) 
	#(182 3 #reduceActionForPackageLine1: 7825413 false ) 
	#(182 3 #reduceActionForPackageLine1: 7825409 false ) 
	#(252 0 #reduceActionForMethodVariables2: 18685953 false ) 
	#(226 1 #liftFirstValue: 14985218 false ) 
	#(289 2 #reduceActionForGotoStatement1: 23751682 false ) 
	#(328 6 #reduceActionForVariable1: 28815361 false ) 
	#(384 3 #reduceActionForVariableNames2: 36741122 false ) 
	#(292 2 #reduceActionForImplementationCode2: 24049666 false ) 
	#(295 2 #reduceActionForConstructorDefinition1: 24482817 false ) 
	#(298 2 #reduceActionForDestructorDefinition1: 25012225 false ) 
	#(307 2 #reduceActionForClassProcedureDefinition1: 26194945 false ) 
	#(315 2 #reduceActionForClassFunctionDefinition1: 27233281 false ) 
	#(318 2 #reduceActionForClassOperatorDefinition1: 27643905 false ) 
	#(306 5 #reduceActionForNonExternalProcedureHeaderVars1: 26024961 false ) 
	#(282 2 #reduceActionForExternalMethodModifier6: 22027265 false ) 
	#(287 5 #reduceActionForArgument1: 23521281 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType1: 10045441 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType2: 10045442 false ) 
	#(230 3 #reduceActionForPrivateClassSection1: 15294465 false ) 
	#(231 3 #reduceActionForProtectedClassSection1: 15486977 false ) 
	#(301 2 #reduceActionForGotoStatement1: 25526274 false ) 
	#(268 0 #reduceActionForPropertyValues1: 20155393 false ) 
	#(234 3 #reduceActionForRequires1: 15890434 false ) 
	#(172 7 #reduceActionForConstantValue1: 6573057 false ) 
	#(314 6 #reduceActionForNonExternalFunctionHeaderVars1: 27054081 false ) 
	#(280 2 #reduceActionForMethodVariables1: 21849090 false ) 
	#(175 5 #reduceActionForResource1: 6937601 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22449157 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22449155 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier2: 22027266 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22027268 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22027267 false ) 
	#(354 8 #reduceActionForForStatement1: 31865857 false ) 
	#(340 5 #reduceActionForOnDo1: 30622721 false ) 
	#(199 3 #reduceActionForVariableNames2: 10899458 false ) 
	#(297 5 #reduceActionForNonExternalConstructorHeader1: 24796161 false ) 
	#(300 5 #reduceActionForNonExternalDestructorHeader1: 25317377 false ) 
	#(241 5 #reduceActionForInterfaceFunctionAssignment1: 17334273 false ) 
	#(242 5 #reduceActionForInterfaceProcedureAssignment1: 17517569 false ) 
	#(269 3 #reduceActionForPropertyArrayAccessors2: 20486146 false ) 
	#(238 5 #reduceActionForNewClassComponent1: 16331777 false ) 
	#(235 3 #reduceActionForVariableNames2: 15951874 false ) 
	#(225 5 #reduceActionForOldClassType1: 14835713 false ) 
	#(251 3 #reduceActionForGuid2: 18610178 false ) 
	#(249 5 #reduceActionForInterfaceType1: 18360321 false ) 
	#(252 2 #reduceActionForMethodVariables1: 18685954 false ) 
	#(253 1 #liftFirstValue: 18778114 false ) 
	#(253 1 #liftFirstValue: 18778113 false ) 
	#(206 1 #reduceActionForVariableNames1: 11707393 false ) 
	#(208 1 #reduceActionForVariableNames1: 11922433 false ) 
	#(209 1 #liftFirstValue: 12009473 false ) 
	#(297 6 #reduceActionForNonExternalConstructorHeader2: 24796162 false ) 
	#(300 6 #reduceActionForNonExternalDestructorHeader2: 25317378 false ) 
	#(274 1 #reduceActionForPropertyDefault2: 21160962 false ) 
	#(274 1 #reduceActionForPropertyDefault3: 21160963 false ) 
	#(278 0 #nil 21678081 false ) 
	#(268 2 #reduceActionForPropertyValues2: 20155394 false ) 
	#(268 2 #reduceActionForCaseOptionList1: 20155395 false ) 
	#(268 2 #reduceActionForPropertyValues4: 20155396 false ) 
	#(268 2 #reduceActionForPropertyValues8: 20155400 false ) 
	#(268 2 #reduceActionForPropertyValues5: 20155397 false ) 
	#(268 2 #reduceActionForPropertyValues7: 20155399 false ) 
	#(268 2 #reduceActionForPropertyValues6: 20155398 false ) 
	#(222 6 #reduceActionForClassHelperType2: 14300162 false ) 
	#(221 6 #reduceActionForNewClassType1: 14067713 false ) 
	#(205 6 #reduceActionForVariantRecordPart1: 11557889 false ) 
	#(320 7 #reduceActionForNonExternalClassOperatorHeader1: 27973633 false ) 
	#(274 2 #reduceActionForPropertyDefault1: 21160961 false ) 
	#(273 2 #reduceActionForPropertyDispid1: 20848641 false ) 
	#(276 1 #reduceActionForVariableNames1: 21469185 false ) 
	#(275 2 #reduceActionForPropertyImplements1: 21364737 false ) 
	#(270 2 #reduceActionForPropertyIndex1: 20583425 false ) 
	#(271 2 #reduceActionForPropertyReader1: 20676609 false ) 
	#(277 2 #reduceActionForPropertyStored1: 21588993 false ) 
	#(272 2 #reduceActionForPropertyWriter1: 20761601 false ) 
	#(266 7 #reduceActionForPropertyHeaderVars1: 19865601 false ) 
	#(206 3 #reduceActionForVariableNames2: 11707394 false ) 
	#(208 3 #reduceActionForVariableNames2: 11922434 false ) 
	#(273 3 #reduceActionForPropertyDispid2: 20848642 false ) 
	#(273 3 #reduceActionForPropertyDispid3: 20848643 false ) 
	#(278 2 #reduceActionForPropertyModifiers2: 21678082 false ) 
	#(276 3 #reduceActionForVariableNames2: 21469186 false ) 
	#(222 9 #reduceActionForClassHelperType1: 14300161 false ) 
	#(207 5 #reduceActionForVariantType1: 11822081 false )
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> scannerClass [
	^DelphiScanner
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 29 0 66 0 33 0 84 0 6 0 89 0 37 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 41 0 119 0 45 0 122 0 6 0 123 0 49 0 149 0 53 0 150 0 57 0 151 0 61 0 152 0 65 0 153 0 69 0 156 0 73 0 157 0 77 0 161 0 81 0 162 0 85 0 164] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 0 193 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 0 193 1 102 0 193 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 169 0 183 1 121 0 187 1 125 0 192 1 169 0 194 1 169 0 195 1 121 0 197 1 121 0 201 1 121 0 202 1 149 0 204 1 121 0 210 1 157 0 211 1 161 0 212 1 165 0 213 1 169 0 243 1 121 0 244 1 121 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 1 193 0 130 1 197 0 139 1 201 0 178 1 205 0 240] 
#[1 1 209 0 139 1 213 0 172] 
#[1 1 217 0 139 1 221 1 32 1 225 1 72] 
#[1 1 229 0 139 1 233 0 167] 
#[1 1 229 0 139 1 237 0 167] 
#[1 1 229 0 139 1 241 0 167] 
#[1 1 229 0 139 1 245 0 167] 
#[1 1 229 0 139 1 249 0 165 1 253 0 166 2 1 0 167] 
#[0 0 0 1 131] 
#[0 0 22 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 45 0 122 0 6 0 123 2 5 0 164] 
#[0 0 26 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 45 0 122 0 6 0 123 2 9 0 164] 
#[0 0 30 1 131] 
#[1 2 13 0 103 2 17 0 158] 
#[0 0 34 1 131] 
#[1 0 38 0 40 0 38 0 48 0 38 0 56 0 38 0 61 2 21 0 63 2 25 0 163 0 42 1 131] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 2 29 0 155 2 33 1 65 2 37 1 66] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 45 1 105 1 1 1 106 2 45 1 107 2 45 1 108 1 13 1 109 2 45 1 110 1 21 1 111 2 45 1 112 1 29 1 113 2 45 1 114 1 37 1 119 2 45 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 49 1 105 1 1 1 106 2 49 1 107 2 49 1 108 1 13 1 109 2 49 1 110 1 21 1 111 2 49 1 112 1 29 1 113 2 49 1 114 1 37 1 119 2 49 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 53 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 61 1 105 1 1 1 106 2 61 1 107 2 61 1 108 1 13 1 109 2 61 1 110 1 21 1 111 2 61 1 112 1 29 1 113 2 61 1 114 1 37 1 119 2 61 1 120 1 45 1 130] 
#[1 2 41 0 139 2 65 1 113] 
#[1 2 69 0 2 0 50 0 9 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 73 0 196] 
#[1 2 77 0 139 2 81 0 141] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 85 1 105 1 1 1 106 2 85 1 107 2 85 1 108 1 13 1 109 2 85 1 110 1 21 1 111 2 85 1 112 1 29 1 113 2 85 1 114 1 37 1 119 2 85 1 120 1 45 1 130] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 18 0 54 0 20 0 54 0 30 0 54 0 33 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 48 0 54 0 49 0 54 0 57 0 54 0 58 0 54 0 59 0 54 0 61 0 54 0 64 0 54 0 71 0 54 0 74 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 96 0 54 0 97 0 54 0 108 0 54 0 109 0 54 0 112 0 54 0 114 0 54 0 116 0 54 0 121 0 54 0 127 0 54 0 128 0 54 0 129 0 54 0 130 0 54 0 131 0 54 0 132 0 54 0 133 0 54 0 134 0 54 0 135 0 54 0 136 0 54 0 137 0 54 0 138 2 89 0 139 0 54 1 131] 
#[0 2 93 0 130] 
#[0 2 97 0 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 101 1 105 1 1 1 106 2 101 1 107 2 101 1 108 1 13 1 109 2 101 1 110 1 21 1 111 2 101 1 112 1 29 1 113 2 101 1 114 1 37 1 119 2 101 1 120 1 45 1 130] 
#[1 2 69 0 2 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 105 0 196] 
#[1 0 89 0 2 0 93 0 15 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 109 0 52 0 121 0 60 0 58 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 58 0 78 0 137 0 89 0 58 0 121 0 161 0 130 0 165 0 135 0 169 0 136 0 58 0 137 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 109 1 105 1 1 1 106 2 109 1 107 2 109 1 108 1 13 1 109 2 109 1 110 1 21 1 111 2 109 1 112 1 29 1 113 2 109 1 114 1 37 1 119 2 109 1 120 1 45 1 130 0 58 1 131] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 113 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 117 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 121 1 105 1 1 1 106 2 121 1 107 2 121 1 108 1 13 1 109 2 121 1 110 1 21 1 111 2 121 1 112 1 29 1 113 2 121 1 114 1 37 1 119 2 121 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 125 1 80 2 129 1 105 1 1 1 106 2 129 1 107 2 129 1 108 1 13 1 109 2 129 1 110 1 21 1 111 2 129 1 112 1 29 1 113 2 129 1 114 1 37 1 119 2 129 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 2 133 0 131 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 137 1 105 1 1 1 106 2 137 1 107 2 137 1 108 1 13 1 109 2 137 1 110 1 21 1 111 2 137 1 112 1 29 1 113 2 137 1 114 2 141 1 115 2 145 1 116 1 37 1 119 2 137 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 149 1 105 1 1 1 106 2 149 1 107 2 149 1 108 1 13 1 109 2 149 1 110 1 21 1 111 2 149 1 112 1 29 1 113 2 149 1 114 1 37 1 119 2 149 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 153 1 105 1 1 1 106 2 153 1 107 2 153 1 108 1 13 1 109 2 153 1 110 1 21 1 111 2 153 1 112 1 29 1 113 2 153 1 114 1 37 1 119 2 153 1 120 1 45 1 130] 
#[1 0 62 0 2 0 62 0 4 0 62 0 6 0 62 0 8 2 157 0 9 0 62 0 10 0 62 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 35 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 58 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 78 0 62 0 80 0 62 0 108 0 62 0 109 0 62 0 121 0 62 0 129 0 62 0 130 0 62 0 132 0 62 0 133 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 0 62 1 131] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 161 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 131] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 0 1 131] 
#[0 0 82 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 165 0 21] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 48 0 134 0 49 3 17 0 58 0 134 0 61 3 17 0 64 3 17 0 71 0 134 0 78 3 17 0 80 3 17 0 108 3 17 0 109 0 134 0 121 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 0 134 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 0 134 1 131] 
#[1 0 138 0 2 0 138 0 3 0 138 0 4 0 138 0 5 0 138 0 6 0 138 0 7 0 138 0 8 0 138 0 9 0 138 0 10 0 11 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 18 0 138 0 20 0 138 0 30 0 138 0 33 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 0 138 0 57 0 138 0 58 0 138 0 59 0 138 0 61 0 138 0 64 0 138 0 71 0 138 0 74 0 138 0 77 0 138 0 78 0 138 0 80 0 138 0 96 0 138 0 97 0 138 0 108 0 138 0 109 0 138 0 112 0 138 0 114 0 138 0 116 0 138 0 121 0 138 0 127 0 138 0 128 0 138 0 129 0 138 0 130 0 138 0 131 0 138 0 132 0 138 0 133 0 138 0 134 0 138 0 135 0 138 0 136 0 138 0 137 0 138 0 138 3 25 0 188 3 29 0 189 0 138 1 131] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 33 1 65 2 37 1 66] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 37 1 65 2 37 1 66] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 15 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 18 0 162 0 20 0 162 0 30 0 162 0 33 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 0 162 0 48 0 162 0 49 0 162 0 57 0 162 0 58 0 162 0 59 0 162 0 61 0 162 0 64 0 162 0 71 0 162 0 74 0 162 0 77 0 162 0 78 0 162 0 80 0 162 0 96 0 162 0 97 0 162 0 108 0 162 0 109 0 162 0 112 0 162 0 114 0 162 0 116 0 162 0 121 0 162 0 127 0 162 0 128 0 162 0 129 0 162 0 130 0 162 0 131 0 162 0 132 0 162 0 133 0 162 0 134 0 162 0 135 0 162 0 136 0 162 0 137 0 162 0 138 3 41 0 188 3 29 0 189 0 162 1 131] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 45 0 2 0 182 0 3 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 49 0 139 3 53 0 140 1 161 0 141 1 185 0 143 1 113 0 147 3 57 0 184 3 61 0 185 1 161 0 212 3 65 0 213 3 69 0 214 3 73 0 215 3 77 0 216 3 81 0 217 3 85 0 218 3 89 0 219 3 65 1 114 1 185 1 119 1 189 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 3 97 0 213 3 97 1 114 1 185 1 119 1 189 1 130] 
#[1 0 186 0 3 0 186 0 5 0 186 0 14 0 186 0 16 0 186 0 21 0 186 0 23 0 186 0 27 0 186 0 30 0 186 0 31 0 186 0 33 0 186 0 36 0 186 0 52 0 186 0 57 0 186 0 59 0 186 0 65 0 186 0 74 3 101 0 77 0 186 0 87 0 186 0 89 0 186 0 96 0 186 0 97 0 186 0 104 0 186 0 112 0 186 0 115 0 186 0 118 0 186 0 123 0 186 0 127 0 186 0 128 0 186 0 130 0 186 0 131 0 186 0 132 0 186 0 137 0 186 1 131] 
#[1 2 69 0 2 0 50 0 9 3 105 0 196] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 3 109 0 213 3 109 1 114 1 185 1 119 1 189 1 130] 
#[0 0 190 0 19 0 98] 
#[1 2 69 0 2 0 50 0 77 0 50 0 137 3 113 0 196] 
#[0 3 117 0 54] 
#[0 3 121 0 116] 
#[0 3 125 0 77] 
#[1 3 129 0 139 3 133 0 236] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 3 137 0 213 3 137 1 114 1 185 1 119 1 189 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 3 141 0 213 3 141 1 114 1 185 1 119 1 189 1 130] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 3 149 0 183 3 149 0 187 1 125 0 192 3 149 0 194 3 149 0 195 3 149 0 197 3 149 0 201 3 149 0 202 1 149 0 204 3 149 0 210 1 157 0 211 1 161 0 212 1 165 0 213 3 149 0 243 3 149 0 244 3 149 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 0 194 0 2 0 198 0 3 0 194 0 4 0 198 0 5 0 19 0 6 0 194 0 7 0 194 0 8 0 19 0 11 0 194 0 12 0 194 0 13 0 198 0 14 0 198 0 16 0 194 0 18 0 194 0 20 0 198 0 21 0 198 0 23 0 198 0 27 0 198 0 30 0 198 0 31 0 198 0 33 0 194 0 35 0 198 0 36 0 198 0 52 0 198 0 57 0 194 0 58 0 198 0 59 0 194 0 64 0 198 0 65 0 194 0 71 0 198 0 74 0 198 0 77 0 194 0 80 0 198 0 87 0 198 0 89 0 198 0 96 0 198 0 97 0 198 0 104 0 194 0 108 0 194 0 109 0 198 0 112 0 198 0 115 0 198 0 118 0 198 0 123 0 198 0 127 0 198 0 128 0 194 0 129 0 198 0 130 0 198 0 131 0 19 0 132 0 194 0 133 0 194 0 135 0 194 0 136 0 198 0 137 0 198 1 131] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 0 206 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 0 210 0 16 0 210 0 130 0 0 1 131] 
#[1 0 214 0 3 0 214 0 5 3 153 0 6 0 142 0 11 0 214 0 14 0 214 0 16 0 214 0 21 0 214 0 23 0 214 0 27 0 214 0 30 0 214 0 31 0 214 0 33 0 214 0 36 0 214 0 52 0 214 0 57 0 214 0 59 0 214 0 65 0 214 0 74 0 214 0 77 0 214 0 87 0 214 0 89 0 214 0 96 0 214 0 97 0 214 0 104 0 214 0 112 0 214 0 115 0 214 0 118 0 214 0 123 0 214 0 127 0 214 0 128 0 214 0 130 0 214 0 131 0 214 0 132 0 214 0 137 3 157 0 188 3 29 0 189 0 214 1 131] 
#[0 0 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 161 0 19 3 165 0 98] 
#[0 0 238 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 3 169 0 7] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 173 0 2 0 246 0 3 3 181 0 4 0 246 0 5 3 177 0 6 0 246 0 7 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 0 246 0 14 0 246 0 16 3 181 0 18 3 181 0 20 0 246 0 21 0 246 0 23 0 246 0 27 0 246 0 30 0 246 0 31 0 246 0 33 3 181 0 35 0 246 0 36 0 246 0 52 0 246 0 57 3 181 0 58 0 246 0 59 3 181 0 64 0 246 0 65 3 181 0 71 0 246 0 74 0 246 0 77 3 181 0 80 0 246 0 87 0 246 0 89 0 246 0 96 0 246 0 97 0 246 0 104 3 181 0 108 3 181 0 109 0 246 0 112 0 246 0 115 0 246 0 118 0 246 0 123 0 246 0 127 0 246 0 128 3 181 0 129 0 246 0 130 0 246 0 131 0 23 0 132 3 181 0 133 3 181 0 135 3 181 0 136 0 246 0 137 3 181 1 124 0 246 1 131] 
#[1 3 185 0 16 3 189 0 130] 
#[0 0 250 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 3 193 0 213 3 193 1 114 1 185 1 119 1 189 1 130] 
#[1 3 197 0 11 1 14 0 14 3 201 0 179] 
#[0 0 0 1 131] 
#[0 3 205 0 139] 
#[1 3 209 0 9 1 18 0 14 3 213 1 8] 
#[0 0 0 1 131] 
#[0 1 22 0 3 0 5 0 9 0 131 0 137] 
#[1 3 217 0 5 3 221 0 9] 
#[0 0 0 1 131] 
#[0 1 26 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 3 225 0 6 3 237 0 31 3 237 0 87 1 30 0 137 3 237 0 193] 
#[1 3 225 0 6 3 241 0 137] 
#[1 3 225 0 6 3 245 0 31 3 245 0 87 1 30 0 137 3 245 0 193] 
#[1 3 225 0 6 3 249 0 31 3 249 0 87 1 30 0 137 3 249 0 193] 
#[1 3 253 0 5 4 1 0 137] 
#[0 1 34 0 5 0 137] 
#[1 1 38 0 5 3 225 0 6 4 5 0 58 1 38 0 137] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 4 9 0 155 2 33 1 65 2 37 1 66] 
#[1 1 42 0 21 1 42 0 23 1 42 0 27 1 42 0 43 1 42 0 52 1 42 0 65 1 42 0 89 1 42 0 104 1 42 0 115 1 42 0 118 1 42 0 123 4 13 0 154] 
#[1 1 229 0 139 4 17 0 159 4 21 0 167] 
#[1 4 25 0 29 4 29 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 45 0 122 0 6 0 123 4 33 0 164] 
#[1 1 46 0 40 1 46 0 48 4 37 0 56 1 46 0 61 4 41 1 35] 
#[0 4 45 0 6] 
#[0 1 50 0 6] 
#[1 0 10 0 21 0 97 0 23 4 49 0 27 4 53 0 52 4 57 0 65 4 61 0 89 4 65 0 104 4 69 0 115 4 73 0 118 4 77 0 123 4 133 0 170 4 133 0 173 4 133 0 176 4 133 1 46 4 97 1 47 4 101 1 48 4 105 1 49 4 109 1 50 4 133 1 54 4 117 1 55 4 121 1 56 4 125 1 57 4 129 1 58 4 133 1 67 4 133 1 68 4 133 1 69 4 145 1 70 4 149 1 102 4 149 1 103 0 249 1 104] 
#[0 0 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 169 0 2 4 153 0 3 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 2 169 0 2 1 54 0 3 1 54 0 4 1 54 0 5 2 177 0 6 1 54 0 7 1 54 0 8 1 54 0 9 1 54 0 10 0 27 0 11 0 31 0 12 0 35 0 13 0 39 0 14 1 54 0 18 1 54 0 20 1 54 0 30 1 54 0 33 1 54 0 35 1 54 0 36 1 54 0 37 1 54 0 39 1 54 0 40 1 54 0 41 1 54 0 48 1 54 0 49 1 54 0 57 0 43 0 58 1 54 0 59 1 54 0 61 1 54 0 64 1 54 0 71 1 54 0 74 1 54 0 77 1 54 0 78 1 54 0 80 1 54 0 96 1 54 0 97 1 54 0 108 1 54 0 109 1 54 0 112 1 54 0 114 1 54 0 116 1 54 0 121 1 54 0 127 1 54 0 128 1 54 0 129 2 245 0 130 1 54 0 131 0 47 0 132 0 51 0 133 1 54 0 134 1 54 0 135 1 54 0 136 1 54 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 1 54 1 131] 
#[1 4 157 0 40 4 161 0 137] 
#[0 1 58 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 4 165 0 77 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 4 169 0 10 4 173 0 58] 
#[1 1 62 0 3 4 201 0 27 4 201 0 81 4 201 0 123 1 66 0 139 4 189 1 29 4 193 1 30 4 197 1 31 4 201 1 34] 
#[1 3 209 0 9 1 18 0 21 1 18 0 23 1 18 0 27 1 18 0 52 1 18 0 65 1 18 0 89 1 18 0 104 1 18 0 115 1 18 0 118 1 18 0 123 4 205 1 8] 
#[0 1 70 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 1 74 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 4 209 0 114 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 4 213 0 2 1 78 0 3 1 78 0 4 1 78 0 5 1 78 0 6 1 78 0 7 1 78 0 8 1 78 0 9 1 78 0 10 1 78 0 11 1 78 0 12 1 78 0 13 1 78 0 14 1 78 0 18 1 78 0 20 1 78 0 30 1 78 0 33 1 78 0 35 1 78 0 36 1 78 0 37 1 78 0 39 1 78 0 40 1 78 0 41 1 78 0 48 1 78 0 49 1 78 0 57 1 78 0 58 1 78 0 59 1 78 0 61 1 78 0 64 1 78 0 71 1 78 0 74 1 78 0 77 1 78 0 78 1 78 0 80 1 78 0 96 1 78 0 97 1 78 0 108 1 78 0 109 1 78 0 112 1 78 0 114 1 78 0 116 1 78 0 121 1 78 0 127 1 78 0 128 1 78 0 129 1 78 0 130 1 78 0 131 1 78 0 132 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 1 78 0 137 1 78 0 138 1 78 1 131] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 4 217 1 105 1 1 1 106 4 217 1 107 4 217 1 108 1 13 1 109 4 217 1 110 1 21 1 111 4 217 1 112 1 29 1 113 4 217 1 114 1 37 1 119 4 217 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 4 221 1 105 1 1 1 106 4 221 1 107 4 221 1 108 1 13 1 109 4 221 1 110 1 21 1 111 4 221 1 112 1 29 1 113 4 221 1 114 1 37 1 119 4 221 1 120 1 45 1 130] 
#[1 2 169 0 2 1 82 0 3 3 17 0 4 1 82 0 5 2 177 0 6 1 82 0 7 3 17 0 8 1 82 0 9 2 185 0 10 0 55 0 11 0 59 0 12 0 63 0 13 0 67 0 14 3 17 0 18 3 17 0 20 1 82 0 30 1 82 0 33 3 17 0 35 1 82 0 36 1 82 0 37 1 82 0 39 1 82 0 40 1 82 0 41 1 82 0 48 1 82 0 49 1 82 0 57 0 71 0 58 1 82 0 59 1 82 0 61 3 17 0 64 3 17 0 71 1 82 0 74 1 82 0 77 1 82 0 78 3 17 0 80 1 82 0 96 1 82 0 97 3 17 0 108 3 17 0 109 1 82 0 112 1 82 0 114 1 82 0 116 1 82 0 121 1 82 0 127 1 82 0 128 3 17 0 129 2 245 0 130 1 82 0 131 0 75 0 132 0 79 0 133 1 82 0 134 3 17 0 135 3 17 0 136 1 82 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 1 82 1 131] 
#[0 1 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 1 90 0 39 1 90 0 40 1 90 0 41 1 90 0 48 1 90 0 49 3 17 0 58 1 90 0 61 3 17 0 64 3 17 0 71 1 90 0 78 3 17 0 80 3 17 0 108 3 17 0 109 1 90 0 121 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 4 225 0 134 3 17 0 135 3 17 0 136 1 90 0 137 3 9 0 138 4 229 1 97 3 13 1 117 3 17 1 123 3 17 1 124 1 90 1 131] 
#[1 4 233 0 121 4 161 0 137] 
#[1 1 94 0 40 4 237 0 41 1 94 0 49 4 161 0 137 4 241 1 82] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 4 245 0 36 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 4 249 0 5 4 253 0 36] 
#[1 2 169 0 2 3 17 0 4 1 98 0 5 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 1 98 0 36 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 169 0 2 3 17 0 4 1 106 0 5 2 177 0 6 5 1 0 7 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 1 106 0 131 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 5 5 0 5 5 9 0 131] 
#[0 1 110 0 5 0 131] 
#[1 2 169 0 2 1 114 0 3 3 17 0 4 1 114 0 5 2 177 0 6 1 114 0 7 3 17 0 8 1 114 0 9 1 114 0 10 0 83 0 11 0 87 0 12 0 91 0 13 0 95 0 14 1 114 0 18 1 114 0 20 1 114 0 30 1 114 0 33 3 17 0 35 1 114 0 36 1 114 0 37 1 114 0 39 1 114 0 40 1 114 0 41 1 114 0 48 1 114 0 49 1 114 0 57 0 99 0 58 1 114 0 59 1 114 0 61 1 114 0 64 3 17 0 71 1 114 0 74 1 114 0 77 1 114 0 78 1 114 0 80 1 114 0 96 1 114 0 97 3 17 0 108 3 17 0 109 1 114 0 112 1 114 0 114 1 114 0 116 1 114 0 121 1 114 0 127 1 114 0 128 1 114 0 129 2 245 0 130 1 114 0 131 0 103 0 132 0 107 0 133 1 114 0 134 1 114 0 135 1 114 0 136 1 114 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 1 114 1 131] 
#[1 2 169 0 2 1 118 0 3 3 17 0 4 1 118 0 5 2 177 0 6 1 118 0 7 3 17 0 8 1 118 0 9 1 118 0 10 0 111 0 11 0 115 0 12 0 119 0 13 0 123 0 14 1 118 0 18 1 118 0 20 1 118 0 30 1 118 0 33 3 17 0 35 1 118 0 36 1 118 0 37 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 48 1 118 0 49 1 118 0 57 0 127 0 58 1 118 0 59 1 118 0 61 1 118 0 64 3 17 0 71 1 118 0 74 1 118 0 77 1 118 0 78 1 118 0 80 1 118 0 96 1 118 0 97 3 17 0 108 3 17 0 109 1 118 0 112 1 118 0 114 1 118 0 116 1 118 0 121 1 118 0 127 1 118 0 128 1 118 0 129 2 245 0 130 1 118 0 131 0 131 0 132 0 135 0 133 1 118 0 134 1 118 0 135 1 118 0 136 1 118 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 1 118 1 131] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 13 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 5 13 1 102 5 13 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 17 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 5 17 1 102 5 17 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[0 5 21 0 40] 
#[1 0 89 0 2 5 25 0 3 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 29 1 105 1 1 1 106 5 29 1 107 5 29 1 108 1 13 1 109 5 29 1 110 1 21 1 111 5 29 1 112 1 29 1 113 5 29 1 114 1 37 1 119 5 29 1 120 5 33 1 121 5 37 1 122 1 45 1 130] 
#[0 1 122 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 5 41 0 1 5 45 0 139] 
#[0 1 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 49 1 105 1 1 1 106 5 49 1 107 5 49 1 108 1 13 1 109 5 49 1 110 1 21 1 111 5 49 1 112 1 29 1 113 5 49 1 114 1 37 1 119 5 49 1 120 1 45 1 130] 
#[0 1 130 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 53 1 105 1 1 1 106 5 53 1 107 5 53 1 108 1 13 1 109 5 53 1 110 1 21 1 111 5 53 1 112 1 29 1 113 5 53 1 114 5 57 1 118 1 37 1 119 5 53 1 120 1 45 1 130] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 194 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 198 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 61 1 105 1 1 1 106 5 61 1 107 5 61 1 108 1 13 1 109 5 61 1 110 1 21 1 111 5 61 1 112 1 29 1 113 5 61 1 114 1 37 1 119 5 61 1 120 1 45 1 130] 
#[0 1 210 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 5 65 0 11] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 45 0 2 0 182 0 3 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 53 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 3 65 0 213 3 69 0 214 3 73 0 215 3 77 0 216 3 81 0 217 3 85 0 218 3 89 0 219 3 65 1 114 1 185 1 119 1 189 1 130] 
#[1 1 230 0 3 1 230 0 5 5 69 0 14] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 8 5 73 0 9 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 18 0 194 0 20 0 194 0 35 0 194 0 58 0 194 0 64 0 194 0 71 0 194 0 80 0 194 0 108 0 194 0 109 0 194 0 129 0 194 0 132 0 194 0 133 0 194 0 135 0 194 0 136] 
#[1 5 77 0 3 5 81 0 5] 
#[0 1 234 0 3 0 5] 
#[1 3 173 0 2 1 238 0 3 3 181 0 4 1 238 0 5 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 5 85 0 14 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[0 5 89 0 3] 
#[1 1 242 0 3 5 93 0 5] 
#[0 1 246 0 3 0 5] 
#[1 1 250 0 3 5 101 0 137 5 101 1 88] 
#[1 1 254 0 3 0 139 0 137] 
#[0 2 2 0 3 0 137] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 173 0 2 2 6 0 3 2 6 0 4 2 6 0 5 3 177 0 6 2 6 0 7 2 6 0 8 2 6 0 9 0 143 0 11 0 147 0 12 0 151 0 13 2 6 0 14 2 6 0 16 2 6 0 18 2 6 0 20 2 6 0 21 2 6 0 23 2 6 0 27 2 6 0 30 2 6 0 31 2 6 0 33 2 6 0 35 2 6 0 36 2 6 0 52 2 6 0 57 0 155 0 58 2 6 0 59 2 6 0 64 2 6 0 65 2 6 0 71 2 6 0 74 2 6 0 77 2 6 0 80 2 6 0 87 2 6 0 89 2 6 0 96 2 6 0 97 2 6 0 104 2 6 0 108 2 6 0 109 2 6 0 112 2 6 0 115 2 6 0 118 2 6 0 123 2 6 0 127 2 6 0 128 2 6 0 129 2 6 0 130 2 6 0 131 0 159 0 132 0 163 0 133 2 6 0 135 2 6 0 136 2 6 0 137 3 181 1 124 2 6 1 131] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 5 109 0 183 5 109 0 187 1 125 0 192 5 109 0 194 5 109 0 195 5 109 0 197 5 109 0 201 5 109 0 202 1 149 0 204 5 109 0 210 1 157 0 211 1 161 0 212 1 165 0 213 5 109 0 243 5 109 0 244 5 109 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 5 113 0 9] 
#[1 3 173 0 2 2 10 0 3 3 181 0 4 2 10 0 5 3 177 0 6 2 10 0 7 3 181 0 8 2 10 0 9 0 167 0 11 0 171 0 12 0 175 0 13 2 10 0 14 2 10 0 16 3 181 0 18 3 181 0 20 2 10 0 21 2 10 0 23 2 10 0 27 2 10 0 30 2 10 0 31 2 10 0 33 3 181 0 35 2 10 0 36 2 10 0 52 2 10 0 57 0 179 0 58 2 10 0 59 3 181 0 64 2 10 0 65 3 181 0 71 2 10 0 74 2 10 0 77 3 181 0 80 2 10 0 87 2 10 0 89 2 10 0 96 2 10 0 97 2 10 0 104 3 181 0 108 3 181 0 109 2 10 0 112 2 10 0 115 2 10 0 118 2 10 0 123 2 10 0 127 2 10 0 128 3 181 0 129 2 10 0 130 2 10 0 131 0 183 0 132 0 187 0 133 3 181 0 135 3 181 0 136 2 10 0 137 3 181 1 124 2 10 1 131] 
#[1 5 117 0 77 2 14 0 137 5 121 1 4] 
#[0 5 125 0 50] 
#[1 5 129 0 52 5 133 0 89] 
#[1 5 137 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 5 141 0 210 1 157 0 211 1 161 0 212 5 145 0 213 5 145 1 114 1 185 1 119 1 189 1 130] 
#[1 1 14 0 2 1 14 0 3 1 14 0 5 1 14 0 6 1 14 0 9 3 197 0 11 1 14 0 14 1 14 0 16 1 14 0 21 1 14 0 23 1 14 0 24 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 36 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 48 1 14 0 49 1 14 0 52 1 14 0 57 1 14 0 59 1 14 0 61 1 14 0 65 1 14 0 74 1 14 0 77 1 14 0 78 1 14 0 87 1 14 0 88 1 14 0 89 1 14 0 91 1 14 0 92 1 14 0 93 1 14 0 94 1 14 0 96 1 14 0 97 1 14 0 104 1 14 0 112 1 14 0 113 1 14 0 115 1 14 0 118 1 14 0 121 1 14 0 123 1 14 0 127 1 14 0 128 1 14 0 130 1 14 0 131 1 14 0 132 1 14 0 137 1 14 0 139 5 149 0 179 1 14 1 131] 
#[1 2 18 0 3 2 18 0 5 5 153 0 6 2 18 0 14 2 18 0 16 2 18 0 21 2 18 0 23 2 18 0 27 2 18 0 30 2 18 0 31 2 18 0 33 2 18 0 36 2 18 0 52 2 18 0 57 2 18 0 59 2 18 0 65 2 18 0 74 2 18 0 77 2 18 0 87 2 18 0 89 2 18 0 96 2 18 0 97 2 18 0 104 2 18 0 112 2 18 0 115 2 18 0 118 2 18 0 123 2 18 0 127 2 18 0 128 2 18 0 130 2 18 0 131 2 18 0 132 2 18 0 137 2 18 1 131] 
#[1 3 173 0 2 2 22 0 3 3 181 0 4 2 22 0 5 3 177 0 6 2 22 0 7 3 181 0 8 2 22 0 9 0 191 0 11 0 195 0 12 0 199 0 13 2 22 0 14 2 22 0 16 2 22 0 18 2 22 0 20 2 22 0 21 2 22 0 23 2 22 0 27 2 22 0 30 2 22 0 31 2 22 0 33 3 181 0 35 2 22 0 36 2 22 0 52 2 22 0 57 0 203 0 58 2 22 0 59 2 22 0 64 2 22 0 65 3 181 0 71 2 22 0 74 2 22 0 77 2 22 0 80 2 22 0 87 2 22 0 89 2 22 0 96 2 22 0 97 2 22 0 104 3 181 0 108 3 181 0 109 2 22 0 112 2 22 0 115 2 22 0 118 2 22 0 123 2 22 0 127 2 22 0 128 2 22 0 129 2 22 0 130 2 22 0 131 0 207 0 132 0 211 0 133 2 22 0 135 2 22 0 136 2 22 0 137 3 181 1 124 2 22 1 131] 
#[1 3 173 0 2 2 26 0 3 3 181 0 4 2 26 0 5 3 177 0 6 2 26 0 7 3 181 0 8 2 26 0 9 0 215 0 11 0 219 0 12 0 223 0 13 2 26 0 14 2 26 0 16 2 26 0 18 2 26 0 20 2 26 0 21 2 26 0 23 2 26 0 27 2 26 0 30 2 26 0 31 2 26 0 33 3 181 0 35 2 26 0 36 2 26 0 52 2 26 0 57 0 227 0 58 2 26 0 59 2 26 0 64 2 26 0 65 3 181 0 71 2 26 0 74 2 26 0 77 2 26 0 80 2 26 0 87 2 26 0 89 2 26 0 96 2 26 0 97 2 26 0 104 3 181 0 108 3 181 0 109 2 26 0 112 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 127 2 26 0 128 2 26 0 129 2 26 0 130 2 26 0 131 0 231 0 132 0 235 0 133 2 26 0 135 2 26 0 136 2 26 0 137 3 181 1 124 2 26 1 131] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 30 0 3 2 30 0 5 2 30 0 14 2 30 0 16 2 30 0 21 2 30 0 23 2 30 0 27 2 30 0 30 2 30 0 31 2 30 0 33 2 30 0 36 2 30 0 52 2 30 0 57 2 30 0 59 2 30 0 65 2 30 0 74 2 30 0 77 2 30 0 87 2 30 0 89 2 30 0 96 2 30 0 97 2 30 0 104 2 30 0 112 2 30 0 115 2 30 0 118 2 30 0 123 2 30 0 127 2 30 0 128 3 189 0 130 2 30 0 131 2 30 0 132 2 30 0 137 2 30 1 131] 
#[0 5 157 0 140] 
#[0 2 34 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 38 0 77 5 161 0 130 5 165 0 246] 
#[1 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 5 169 0 203 5 173 0 227 5 177 0 237] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 5 181 0 211 1 161 0 212 1 165 0 213 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 5 185 0 213 5 189 0 220 5 185 1 114 1 185 1 119 1 189 1 130] 
#[0 5 193 0 140] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 5 197 0 213 5 197 1 114 1 185 1 119 1 189 1 130] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 5 201 0 183 5 201 0 187 1 125 0 192 5 201 0 194 5 201 0 195 5 201 0 197 5 201 0 201 5 201 0 202 1 149 0 204 5 201 0 210 1 157 0 211 1 161 0 212 1 165 0 213 5 201 0 243 5 201 0 244 5 201 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 5 205 0 213 5 205 1 114 1 185 1 119 1 189 1 130] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 5 209 0 131 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 5 213 0 139 5 217 0 180 5 221 0 181] 
#[0 5 225 0 14] 
#[1 3 197 0 11 1 14 0 14 5 229 0 179] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 5 233 0 183 5 233 0 187 1 125 0 192 5 233 0 194 5 233 0 195 5 233 0 197 5 233 0 201 5 233 0 202 1 149 0 204 5 233 0 210 1 157 0 211 1 161 0 212 1 165 0 213 5 233 0 243 5 233 0 244 5 233 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 5 237 0 14] 
#[0 5 241 0 139] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 5 245 0 183 5 245 0 187 1 125 0 192 5 245 0 194 5 245 0 195 5 245 0 197 5 245 0 201 5 245 0 202 1 149 0 204 5 245 0 210 1 157 0 211 1 161 0 212 1 165 0 213 5 245 0 243 5 245 0 244 5 245 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 5 249 0 139] 
#[0 2 46 0 14 0 31 0 137] 
#[0 2 50 0 14 0 31 0 137] 
#[0 5 253 0 137] 
#[0 2 54 0 103] 
#[0 6 1 0 137] 
#[0 6 5 0 137] 
#[1 1 229 0 139 6 9 0 166 2 1 0 167] 
#[0 2 58 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 6 13 0 143] 
#[0 6 17 0 6] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 21 0 43 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 25 0 155 2 33 1 65 2 37 1 66 6 29 1 127] 
#[1 6 33 0 5 6 37 0 137] 
#[1 2 62 0 5 3 225 0 6 2 62 0 137] 
#[1 1 229 0 139 6 41 0 165 1 253 0 166 2 1 0 167] 
#[1 6 45 0 40 6 49 1 129] 
#[1 2 66 0 27 2 66 0 40 2 66 0 48 2 66 0 52 2 66 0 56 2 66 0 61 2 66 0 89 2 66 0 104 2 66 0 115 2 66 0 118 2 66 0 123 6 53 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 45 0 122 0 6 0 123 6 57 0 164] 
#[1 2 70 0 40 2 70 0 48 6 61 0 61 6 65 1 125] 
#[0 2 74 1 131] 
#[1 1 209 0 139 6 69 0 171 6 73 0 172] 
#[1 3 129 0 139 6 77 0 236] 
#[1 1 217 0 139 6 81 1 32] 
#[1 3 129 0 139 6 85 0 236] 
#[1 6 89 0 139 6 93 0 174 6 97 0 175] 
#[1 1 217 0 139 1 221 1 32 6 101 1 71 6 105 1 72] 
#[1 1 193 0 130 1 197 0 139 6 109 0 177 6 113 0 178 1 205 0 240] 
#[1 1 217 0 139 1 221 1 32 6 117 1 71 6 105 1 72] 
#[0 2 78 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 90 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 94 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 98 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 121 1 65 2 37 1 66] 
#[1 2 102 0 3 2 102 0 21 2 102 0 23 2 102 0 24 2 102 0 26 2 102 0 27 2 102 0 28 2 102 0 32 2 102 0 40 6 125 0 44 2 102 0 48 6 129 0 51 2 102 0 52 2 102 0 56 2 102 0 61 2 102 0 65 2 102 0 88 2 102 0 89 2 102 0 91 2 102 0 92 2 102 0 93 2 102 0 94 2 102 0 104 2 102 0 113 2 102 0 115 2 102 0 118 2 102 0 123 2 102 0 130 2 102 0 139 6 133 1 27] 
#[0 2 106 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 110 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 114 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 137 1 65 2 37 1 66] 
#[1 2 118 0 3 2 118 0 21 2 118 0 23 2 118 0 24 2 118 0 26 2 118 0 27 2 118 0 28 2 118 0 32 2 118 0 40 6 125 0 44 2 118 0 48 6 129 0 51 2 118 0 52 2 118 0 56 2 118 0 61 2 118 0 65 2 118 0 88 2 118 0 89 2 118 0 91 2 118 0 92 2 118 0 93 2 118 0 94 2 118 0 104 2 118 0 113 2 118 0 115 2 118 0 118 2 118 0 123 2 118 0 130 2 118 0 139 6 141 1 27] 
#[0 2 122 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 126 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 130 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 134 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 6 145 0 137] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 142 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 6 149 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 6 149 1 102 6 149 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 6 153 0 213 6 157 1 89 6 161 1 90 6 165 1 91 6 169 1 92 6 173 1 93 6 177 1 94 6 153 1 114 1 185 1 119 1 189 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 6 181 1 105 1 1 1 106 6 181 1 107 6 181 1 108 1 13 1 109 6 181 1 110 1 21 1 111 6 181 1 112 1 29 1 113 6 181 1 114 1 37 1 119 6 181 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 6 185 1 105 1 1 1 106 6 185 1 107 6 185 1 108 1 13 1 109 6 185 1 110 1 21 1 111 6 185 1 112 1 29 1 113 6 185 1 114 1 37 1 119 6 185 1 120 1 45 1 130] 
#[0 2 146 0 139] 
#[0 2 150 0 139] 
#[0 2 154 0 139] 
#[0 6 189 0 3] 
#[1 2 158 0 3 2 158 0 131 6 193 0 137] 
#[0 2 162 0 3 0 131 0 137] 
#[1 1 217 0 139 6 197 1 32] 
#[0 2 166 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 6 201 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 6 201 1 102 6 201 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[1 0 89 0 2 6 205 0 3 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 29 1 105 1 1 1 106 5 29 1 107 5 29 1 108 1 13 1 109 5 29 1 110 1 21 1 111 5 29 1 112 1 29 1 113 5 29 1 114 1 37 1 119 5 29 1 120 6 209 1 121 5 37 1 122 1 45 1 130] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 6 213 0 9 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 6 217 0 9 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 3 129 0 139 6 221 0 236] 
#[0 2 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 6 225 1 105 1 1 1 106 6 225 1 107 6 225 1 108 1 13 1 109 6 225 1 110 1 21 1 111 6 225 1 112 1 29 1 113 6 225 1 114 1 37 1 119 6 225 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 6 229 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 6 233 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 6 237 1 83 6 241 1 84 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 2 174 0 40 6 245 0 49 6 249 1 86] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 6 253 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 6 253 1 102 6 253 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 7 1 1 105 1 1 1 106 7 1 1 107 7 1 1 108 1 13 1 109 7 1 1 110 1 21 1 111 7 1 1 112 1 29 1 113 7 1 1 114 1 37 1 119 7 1 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 7 5 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 7 5 1 102 7 5 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 7 9 1 105 1 1 1 106 7 9 1 107 7 9 1 108 1 13 1 109 7 9 1 110 1 21 1 111 7 9 1 112 1 29 1 113 7 9 1 114 1 37 1 119 7 9 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 2 137 1 105 1 1 1 106 2 137 1 107 2 137 1 108 1 13 1 109 2 137 1 110 1 21 1 111 2 137 1 112 1 29 1 113 2 137 1 114 7 13 1 116 1 37 1 119 2 137 1 120 1 45 1 130] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 186 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 190 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 169 0 2 2 198 0 3 3 17 0 4 2 198 0 5 2 177 0 6 3 17 0 8 2 198 0 9 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 7 17 0 3 7 21 0 5] 
#[1 2 202 0 3 2 202 0 5 7 25 0 9] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 169 0 2 2 214 0 3 3 17 0 4 2 214 0 5 2 177 0 6 2 214 0 7 3 17 0 8 2 214 0 9 2 185 0 10 0 239 0 11 0 243 0 12 0 247 0 13 0 251 0 14 3 17 0 18 3 17 0 20 2 214 0 30 2 214 0 33 3 17 0 35 2 214 0 36 2 214 0 37 2 214 0 39 2 214 0 40 2 214 0 41 2 214 0 48 2 214 0 49 2 214 0 57 0 255 0 58 2 214 0 59 2 214 0 61 3 17 0 64 3 17 0 71 2 214 0 74 2 214 0 77 2 214 0 78 3 17 0 80 2 214 0 96 2 214 0 97 3 17 0 108 3 17 0 109 2 214 0 112 2 214 0 114 2 214 0 116 2 214 0 121 2 214 0 127 2 214 0 128 3 17 0 129 2 245 0 130 2 214 0 131 1 3 0 132 1 7 0 133 2 214 0 134 3 17 0 135 3 17 0 136 2 214 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 2 214 1 131] 
#[1 2 169 0 2 3 17 0 4 2 218 0 5 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 2 218 0 131 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 7 29 0 5 7 33 0 131] 
#[1 2 169 0 2 2 222 0 3 3 17 0 4 2 222 0 5 2 177 0 6 2 222 0 7 3 17 0 8 2 222 0 9 2 185 0 10 1 11 0 11 1 15 0 12 1 19 0 13 1 23 0 14 3 17 0 18 3 17 0 20 2 222 0 30 2 222 0 33 3 17 0 35 2 222 0 36 2 222 0 37 2 222 0 39 2 222 0 40 2 222 0 41 2 222 0 48 2 222 0 49 2 222 0 57 1 27 0 58 2 222 0 59 2 222 0 61 3 17 0 64 3 17 0 71 2 222 0 74 2 222 0 77 2 222 0 78 3 17 0 80 2 222 0 96 2 222 0 97 3 17 0 108 3 17 0 109 2 222 0 112 2 222 0 114 2 222 0 116 2 222 0 121 2 222 0 127 2 222 0 128 3 17 0 129 2 245 0 130 2 222 0 131 1 31 0 132 1 35 0 133 2 222 0 134 3 17 0 135 3 17 0 136 2 222 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 2 222 1 131] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 169 0 183 7 37 0 187 7 41 0 191 1 125 0 192 1 169 0 194 1 169 0 195 7 37 0 197 7 37 0 201 7 37 0 202 1 149 0 204 7 37 0 210 1 157 0 211 1 161 0 212 1 165 0 213 1 169 0 243 7 37 0 244 7 37 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 7 45 0 213 7 45 1 114 1 185 1 119 1 189 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 7 49 0 213 7 49 1 114 1 185 1 119 1 189 1 130] 
#[0 2 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 49 0 139 7 53 0 185] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 7 57 0 213 7 57 1 114 1 185 1 119 1 189 1 130] 
#[0 2 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 3 65 0 213 7 61 0 216 3 65 1 114 1 185 1 119 1 189 1 130] 
#[0 2 234 0 3] 
#[0 7 65 0 3] 
#[1 7 69 0 140 7 73 0 219] 
#[1 2 238 0 3 2 238 0 5 2 238 0 14 3 185 0 16 2 238 0 21 2 238 0 23 2 238 0 27 2 238 0 30 2 238 0 31 2 238 0 33 2 238 0 36 2 238 0 52 2 238 0 57 2 238 0 59 2 238 0 65 2 238 0 74 2 238 0 77 2 238 0 87 2 238 0 89 2 238 0 96 2 238 0 97 2 238 0 104 2 238 0 112 2 238 0 115 2 238 0 118 2 238 0 123 2 238 0 127 2 238 0 128 3 189 0 130 2 238 0 131 2 238 0 132 2 238 0 137 2 238 1 131] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 7 77 0 183 7 77 0 187 1 125 0 192 7 77 0 194 7 77 0 195 7 77 0 197 7 77 0 201 7 77 0 202 1 149 0 204 7 77 0 210 1 157 0 211 1 161 0 212 1 165 0 213 7 77 0 243 7 77 0 244 7 77 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 7 81 0 76] 
#[0 7 85 0 137] 
#[1 3 129 0 139 7 89 0 236] 
#[1 2 69 0 2 0 50 0 9 7 93 0 196] 
#[1 2 69 0 2 0 50 0 137 7 97 0 196] 
#[1 3 45 0 2 0 182 0 3 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 7 101 0 140 1 161 0 141 1 185 0 143 1 113 0 147 7 105 0 198 1 161 0 212 3 65 0 213 3 69 0 214 3 73 0 215 3 77 0 216 3 81 0 217 3 85 0 218 3 89 0 219 3 65 1 114 1 185 1 119 1 189 1 130] 
#[0 2 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 173 0 2 2 246 0 3 3 181 0 4 2 246 0 5 3 177 0 6 0 246 0 7 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 2 246 0 14 2 246 0 16 3 181 0 18 3 181 0 20 2 246 0 21 2 246 0 23 2 246 0 27 2 246 0 30 2 246 0 31 2 246 0 33 3 181 0 35 2 246 0 36 2 246 0 52 2 246 0 57 3 181 0 58 2 246 0 59 3 181 0 64 2 246 0 65 3 181 0 71 2 246 0 74 2 246 0 77 3 181 0 80 2 246 0 87 2 246 0 89 2 246 0 96 2 246 0 97 2 246 0 104 3 181 0 108 3 181 0 109 2 246 0 112 2 246 0 115 2 246 0 118 2 246 0 123 2 246 0 127 2 246 0 128 3 181 0 129 2 246 0 130 2 246 0 131 1 39 0 132 3 181 0 133 3 181 0 135 3 181 0 136 2 246 0 137 3 181 1 124 2 246 1 131] 
#[0 2 250 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 109 0 139] 
#[0 2 254 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 7 125 0 210 1 157 0 211 1 161 0 212 7 117 0 213 7 121 0 247 7 125 0 248 7 117 1 114 1 185 1 119 1 189 1 130] 
#[0 7 129 0 77] 
#[0 7 133 0 40] 
#[1 3 2 0 3 3 2 0 24 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 7 137 0 228] 
#[1 3 6 0 3 3 6 0 24 7 141 0 26 4 49 0 27 7 145 0 28 7 149 0 32 3 6 0 40 7 153 0 52 3 6 0 88 7 157 0 89 7 161 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 113 4 69 0 115 4 73 0 118 4 77 0 123 1 193 0 130 1 217 0 139 7 173 0 170 7 173 0 176 7 173 0 238 7 173 0 239 7 181 0 240 7 173 0 241 7 173 0 242 7 173 0 254 7 173 0 255 7 173 1 0 7 173 1 1 7 173 1 2 7 173 1 3 7 173 1 5 7 173 1 6 7 173 1 7 7 173 1 9 7 233 1 10 7 173 1 11 7 241 1 32 7 173 1 40 7 249 1 41 7 173 1 43 8 1 1 44 7 173 1 47 4 101 1 48 7 173 1 49 4 109 1 50 7 173 1 52 7 173 1 53 7 173 1 55 4 121 1 56 7 173 1 57 4 129 1 58 7 173 1 60 7 173 1 61 7 173 1 63 8 41 1 64 7 173 1 69 4 145 1 70] 
#[0 3 10 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 173 0 2 3 14 0 3 3 181 0 4 3 14 0 5 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 8 49 0 3 8 53 0 5] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 173 0 2 3 22 0 3 3 181 0 4 3 22 0 5 3 177 0 6 3 22 0 7 3 181 0 8 3 22 0 9 1 43 0 11 1 47 0 12 1 51 0 13 3 22 0 14 3 22 0 16 3 181 0 18 3 181 0 20 3 22 0 21 3 22 0 23 3 22 0 27 3 22 0 30 3 22 0 31 3 22 0 33 3 181 0 35 3 22 0 36 3 22 0 52 3 22 0 57 1 55 0 58 3 22 0 59 3 181 0 64 3 22 0 65 3 181 0 71 3 22 0 74 3 22 0 77 3 181 0 80 3 22 0 87 3 22 0 89 3 22 0 96 3 22 0 97 3 22 0 104 3 181 0 108 3 181 0 109 3 22 0 112 3 22 0 115 3 22 0 118 3 22 0 123 3 22 0 127 3 22 0 128 3 181 0 129 3 22 0 130 3 22 0 131 1 59 0 132 1 63 0 133 3 181 0 135 3 181 0 136 3 22 0 137 3 181 1 124 3 22 1 131] 
#[1 3 26 0 3 3 26 0 5 3 26 0 14 3 26 0 21 3 26 0 23 3 26 0 27 3 26 0 30 3 26 0 31 3 26 0 33 3 26 0 36 3 26 0 52 3 26 0 57 3 26 0 59 3 26 0 65 3 26 0 74 3 26 0 77 3 26 0 87 3 26 0 89 3 26 0 96 3 26 0 97 3 26 0 104 3 26 0 112 3 26 0 115 3 26 0 118 3 26 0 123 3 26 0 127 3 26 0 128 3 189 0 130 3 26 0 131 3 26 0 132 3 26 0 137 3 26 1 131] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 8 57 0 131 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[0 3 30 0 26 0 28 0 32 0 52 0 89 0 139] 
#[1 3 34 0 5 8 61 0 9 3 34 0 132] 
#[1 8 65 0 5 8 69 0 132] 
#[0 3 38 0 5 0 132] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 8 73 0 26 8 133 0 34 1 57 0 46 1 61 0 52 8 133 0 63 1 65 0 75 8 85 0 76 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 8 89 0 182 8 93 0 183 8 97 0 186 8 101 0 187 1 125 0 192 8 105 0 194 8 109 0 195 8 101 0 197 8 97 0 200 8 101 0 201 8 101 0 202 1 149 0 204 8 101 0 210 1 157 0 211 1 161 0 212 1 165 0 213 8 97 0 221 8 97 0 222 8 97 0 225 1 169 0 243 8 101 0 244 8 101 0 245 8 97 0 249 8 133 0 250 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 8 137 0 14] 
#[1 3 42 0 14 3 185 0 16 3 42 0 21 3 42 0 23 3 42 0 27 3 42 0 30 3 42 0 33 3 42 0 36 3 42 0 52 3 42 0 57 3 42 0 59 3 42 0 65 3 42 0 74 3 42 0 77 3 42 0 89 3 42 0 96 3 42 0 97 3 42 0 104 3 42 0 112 3 42 0 115 3 42 0 118 3 42 0 123 3 42 0 127 3 42 0 128 3 189 0 130 3 42 0 137] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 8 141 0 213 8 141 1 114 1 185 1 119 1 189 1 130] 
#[0 3 46 0 3 0 5 0 9 0 131 0 137] 
#[1 1 30 0 14 3 185 0 16 8 145 0 31 8 145 0 87 3 189 0 130 1 30 0 137 8 145 0 193] 
#[0 3 50 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 3 54 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 58 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 62 0 40 0 48 0 56 0 61 0 63 1 131] 
#[0 3 66 0 5 0 137] 
#[0 3 70 0 5 0 137] 
#[0 3 74 1 131] 
#[1 8 149 0 139 8 153 1 128] 
#[0 8 157 0 6] 
#[0 3 78 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 1 229 0 139 8 161 0 167] 
#[0 3 82 0 29] 
#[1 3 253 0 5 8 165 0 137] 
#[0 8 169 0 6] 
#[0 3 86 1 131] 
#[1 4 49 0 27 3 90 0 40 3 90 0 48 4 53 0 52 3 90 0 56 3 90 0 61 4 61 0 89 4 65 0 104 4 69 0 115 4 73 0 118 4 77 0 123 8 173 0 169 8 173 0 170 8 173 0 173 8 173 0 176 8 173 1 2 8 173 1 5 8 173 1 47 4 101 1 48 8 173 1 49 4 109 1 50 8 173 1 55 4 121 1 56 8 173 1 57 4 129 1 58 8 173 1 69 4 145 1 70] 
#[1 3 94 0 23 3 94 0 26 3 94 0 27 3 94 0 28 3 94 0 32 3 94 0 40 3 94 0 43 3 94 0 48 3 94 0 52 3 94 0 61 3 94 0 89 3 94 0 104 3 94 0 115 3 94 0 118 3 94 0 123 8 201 1 37] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 14 0 48 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 8 205 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 3 98 0 40 8 209 0 48 8 213 1 126] 
#[1 3 102 0 3 3 102 0 21 3 102 0 23 3 102 0 24 3 102 0 26 3 102 0 27 3 102 0 28 3 102 0 32 3 102 0 40 3 102 0 43 3 102 0 48 3 102 0 52 3 102 0 56 3 102 0 61 3 102 0 65 3 102 0 88 3 102 0 89 3 102 0 91 3 102 0 92 3 102 0 93 3 102 0 94 3 102 0 104 3 102 0 113 3 102 0 115 3 102 0 118 3 102 0 123 3 102 0 130 1 209 0 139 8 217 0 172] 
#[0 3 106 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 69 0 2 5 153 0 6 0 50 0 9 0 50 0 137 8 221 0 196] 
#[1 3 217 0 5 8 225 0 137] 
#[1 2 69 0 2 5 153 0 6 0 50 0 137 8 229 0 196] 
#[0 8 233 0 14] 
#[1 3 110 0 21 3 110 0 23 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 32 3 110 0 40 3 110 0 43 3 110 0 48 3 110 0 52 3 110 0 56 3 110 0 61 3 110 0 65 3 110 0 89 3 110 0 104 3 110 0 115 3 110 0 118 3 110 0 123 6 89 0 139 8 237 0 175] 
#[0 3 114 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 3 118 0 3 3 118 0 21 3 118 0 23 3 118 0 24 3 118 0 26 3 118 0 27 3 118 0 28 3 118 0 32 3 118 0 40 3 118 0 43 3 118 0 48 3 118 0 52 3 118 0 56 3 118 0 61 3 118 0 65 3 118 0 88 3 118 0 89 3 118 0 91 3 118 0 92 3 118 0 93 3 118 0 94 3 118 0 104 3 118 0 113 3 118 0 115 3 118 0 118 3 118 0 123 3 118 0 130 1 217 0 139 1 221 1 32 8 241 1 72] 
#[0 3 122 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 126 0 3 3 126 0 21 3 126 0 23 3 126 0 24 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 32 3 126 0 40 3 126 0 43 3 126 0 48 3 126 0 52 3 126 0 56 3 126 0 61 3 126 0 65 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 104 3 126 0 113 3 126 0 115 3 126 0 118 3 126 0 123 1 193 0 130 1 197 0 139 8 245 0 178 1 205 0 240] 
#[0 3 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 134 0 3 3 134 0 21 3 134 0 23 3 134 0 24 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 32 3 134 0 40 3 134 0 43 3 134 0 48 3 134 0 52 3 134 0 56 3 134 0 61 3 134 0 65 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 104 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 123 3 134 0 130 1 217 0 139 1 221 1 32 8 241 1 72] 
#[0 3 138 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 8 249 0 137 8 253 0 139 9 1 0 143] 
#[0 9 5 0 137] 
#[1 3 142 0 3 3 142 0 17 3 142 0 21 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 38 3 142 0 40 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 56 3 142 0 61 3 142 0 62 3 142 0 65 3 142 0 67 3 142 0 70 3 142 0 73 3 142 0 82 3 142 0 83 3 142 0 86 3 142 0 87 3 142 0 88 3 142 0 89 3 142 0 91 3 142 0 92 3 142 0 93 3 142 0 94 3 142 0 100 3 142 0 101 3 142 0 104 3 142 0 105 3 142 0 110 3 142 0 111 3 142 0 113 3 142 0 115 3 142 0 118 3 142 0 120 3 142 0 123 3 142 0 124 3 142 0 130 3 142 0 139 9 9 1 23] 
#[0 3 146 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 142 0 3 3 142 0 17 3 142 0 21 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 38 3 142 0 40 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 56 3 142 0 61 3 142 0 62 3 142 0 65 3 142 0 67 3 142 0 70 3 142 0 73 3 142 0 82 3 142 0 83 3 142 0 86 3 142 0 87 3 142 0 88 3 142 0 89 3 142 0 91 3 142 0 92 3 142 0 93 3 142 0 94 3 142 0 100 3 142 0 101 3 142 0 104 3 142 0 105 3 142 0 110 3 142 0 111 3 142 0 113 3 142 0 115 3 142 0 118 3 142 0 120 3 142 0 123 3 142 0 124 3 142 0 130 3 142 0 139 9 13 1 23] 
#[0 3 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 3 154 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 173 0 2 3 181 0 4 3 158 0 5 3 177 0 6 9 17 0 7 3 181 0 8 3 158 0 9 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 9 21 0 39 3 162 0 40 9 25 1 95] 
#[1 1 250 0 39 1 250 0 40 9 29 0 137 9 33 1 88] 
#[0 3 166 0 39 0 40 0 137] 
#[0 9 37 0 9] 
#[0 9 41 0 5] 
#[1 3 170 0 5 3 174 0 9] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 9 53 0 37 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 9 53 0 116 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 9 53 1 100 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 9 57 0 36 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[0 3 178 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 4 201 0 27 4 201 0 81 4 201 0 123 1 66 0 139 9 61 1 31 4 201 1 34] 
#[1 3 182 0 3 3 217 0 5 9 65 0 9 3 182 0 131 3 182 0 137] 
#[1 9 69 0 39 3 186 0 40 3 186 0 41 3 186 0 48 3 186 0 49 3 186 0 61 3 186 0 78 3 186 0 121 3 186 0 137 3 186 1 131] 
#[0 3 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 9 73 0 3 7 21 0 5] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 9 77 1 105 1 1 1 106 9 77 1 107 9 77 1 108 1 13 1 109 9 77 1 110 1 21 1 111 9 77 1 112 1 29 1 113 9 77 1 114 1 37 1 119 9 77 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 9 81 1 105 1 1 1 106 9 81 1 107 9 81 1 108 1 13 1 109 9 81 1 110 1 21 1 111 9 81 1 112 1 29 1 113 9 81 1 114 1 37 1 119 9 81 1 120 1 45 1 130] 
#[1 5 153 0 6 3 194 0 39 3 194 0 40 3 194 0 41 3 194 0 48 3 194 0 49 3 194 0 61 3 194 0 78 3 194 0 121 3 194 0 137 3 194 1 131] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 198 0 39 3 198 0 40 3 198 0 41 3 198 0 48 3 198 0 49 3 17 0 58 3 198 0 61 3 17 0 64 3 17 0 71 3 198 0 78 3 17 0 80 3 17 0 108 3 17 0 109 3 198 0 121 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 198 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124 3 198 1 131] 
#[1 3 129 0 139 9 85 0 236] 
#[1 9 89 0 39 3 202 0 40 3 202 0 49 4 161 0 137 9 93 1 85] 
#[1 9 89 0 39 3 202 0 40 3 202 0 49 6 229 0 78 9 97 1 84 9 101 1 85] 
#[0 3 206 0 39 0 40 0 49 0 78] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 9 105 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[0 9 109 0 40] 
#[0 3 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 169 0 2 3 17 0 4 3 214 0 5 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 214 0 36 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[0 3 218 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 169 0 2 3 17 0 4 3 222 0 5 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 222 0 131 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[0 3 226 0 5 0 131] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 5 29 1 105 1 1 1 106 5 29 1 107 5 29 1 108 1 13 1 109 5 29 1 110 1 21 1 111 5 29 1 112 1 29 1 113 5 29 1 114 1 37 1 119 5 29 1 120 9 113 1 122 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 9 117 1 105 1 1 1 106 9 117 1 107 9 117 1 108 1 13 1 109 9 117 1 110 1 21 1 111 9 117 1 112 1 29 1 113 9 117 1 114 1 37 1 119 9 117 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 9 121 1 105 1 1 1 106 9 121 1 107 9 121 1 108 1 13 1 109 9 121 1 110 1 21 1 111 9 121 1 112 1 29 1 113 9 121 1 114 1 37 1 119 9 121 1 120 1 45 1 130] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 238 0 5 0 210 0 16 0 210 0 130 3 238 0 132] 
#[1 9 125 0 5 3 242 0 132 9 129 0 190] 
#[1 3 173 0 2 3 246 0 3 3 181 0 4 3 246 0 5 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 3 173 0 2 3 250 0 3 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 250 0 137 3 181 1 124] 
#[0 3 254 0 3 0 5] 
#[1 3 173 0 2 4 2 0 3 3 181 0 4 4 2 0 5 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[0 4 6 0 3 0 5] 
#[0 4 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 5 73 0 9] 
#[0 4 14 0 3 0 137] 
#[1 3 185 0 16 5 117 0 77 3 189 0 130 2 14 0 137 9 133 1 4] 
#[0 4 18 0 137] 
#[1 3 142 0 3 3 142 0 5 3 142 0 14 3 142 0 16 3 142 0 17 3 142 0 21 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 30 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 36 3 142 0 38 3 142 0 40 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 56 3 142 0 57 3 142 0 59 3 142 0 61 3 142 0 62 3 142 0 65 3 142 0 67 3 142 0 70 3 142 0 73 3 142 0 74 3 142 0 77 3 142 0 82 3 142 0 83 3 142 0 86 3 142 0 87 3 142 0 88 3 142 0 89 3 142 0 91 3 142 0 92 3 142 0 93 3 142 0 94 3 142 0 96 3 142 0 97 3 142 0 100 3 142 0 101 3 142 0 104 3 142 0 105 3 142 0 110 3 142 0 111 3 142 0 112 3 142 0 113 3 142 0 115 3 142 0 118 3 142 0 120 3 142 0 123 3 142 0 124 3 142 0 127 3 142 0 128 3 142 0 130 3 142 0 131 3 142 0 132 3 142 0 137 3 142 0 139 9 137 1 23 3 142 1 131] 
#[1 5 153 0 6 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 9 141 0 203 5 173 0 227 5 177 0 237] 
#[0 9 145 0 9] 
#[0 9 149 0 137] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 1 67 0 5 0 194 0 6 0 194 0 8 5 73 0 9 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 18 0 194 0 20 0 194 0 35 0 194 0 58 0 194 0 64 0 194 0 71 0 194 0 80 0 194 0 108 0 194 0 109 0 194 0 129 0 194 0 132 0 194 0 133 0 194 0 135 0 194 0 136] 
#[0 9 157 0 3] 
#[1 1 14 0 2 1 14 0 3 1 14 0 5 1 14 0 6 1 14 0 9 3 197 0 11 1 14 0 14 1 14 0 16 1 14 0 21 1 14 0 23 1 14 0 24 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 36 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 48 1 14 0 49 1 14 0 52 1 14 0 57 1 14 0 59 1 14 0 61 1 14 0 65 1 14 0 74 1 14 0 77 1 14 0 78 1 14 0 87 1 14 0 88 1 14 0 89 1 14 0 91 1 14 0 92 1 14 0 93 1 14 0 94 1 14 0 96 1 14 0 97 1 14 0 104 1 14 0 112 1 14 0 113 1 14 0 115 1 14 0 118 1 14 0 121 1 14 0 123 1 14 0 127 1 14 0 128 1 14 0 130 1 14 0 131 1 14 0 132 1 14 0 137 1 14 0 139 9 161 0 179 1 14 1 131] 
#[0 4 22 0 5 0 131] 
#[1 3 173 0 2 3 181 0 4 4 26 0 5 3 177 0 6 0 246 0 7 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 4 26 0 131 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 9 165 0 5 9 169 0 131] 
#[0 4 30 0 5 0 131] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 9 173 0 27 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 9 177 0 183 9 177 0 187 1 125 0 192 9 177 0 194 9 177 0 195 9 177 0 197 9 177 0 201 9 177 0 202 1 149 0 204 9 177 0 210 1 157 0 211 1 161 0 212 1 165 0 213 9 177 0 243 9 177 0 244 9 177 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 4 34 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 38 0 3 9 181 0 24 4 38 0 40 9 185 0 88 9 189 0 92 9 193 0 93 9 197 0 94 9 201 0 113 9 205 0 205 9 209 0 229 9 209 0 230 9 209 0 231 9 209 0 232 9 209 0 233] 
#[1 9 229 0 28 9 233 0 32 4 53 0 52 9 237 0 79 4 61 0 89 7 161 0 91 4 69 0 115 4 77 0 123 9 241 1 10 9 245 1 48 9 249 1 50 9 253 1 56 10 1 1 58 10 5 1 70] 
#[1 3 129 0 139 10 9 0 236] 
#[1 3 129 0 139 10 13 0 236] 
#[1 3 129 0 139 10 17 0 236] 
#[1 3 129 0 139 10 21 0 236] 
#[0 10 25 0 139] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 29 0 26 7 145 0 28 7 149 0 32 4 53 0 52 4 61 0 89 10 33 1 0 10 37 1 1 10 41 1 2 10 45 1 3 10 49 1 5 10 53 1 6 10 57 1 7 10 33 1 40 7 249 1 41 10 37 1 43 8 1 1 44 10 41 1 47 4 101 1 48 10 41 1 49 4 109 1 50 10 45 1 52 10 45 1 53 10 49 1 55 4 121 1 56 10 49 1 57 4 129 1 58 10 53 1 60 10 53 1 61 10 57 1 63 8 41 1 64] 
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
#[0 4 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 217 0 5 10 61 0 9] 
#[0 4 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 118 0 3 4 118 0 24 4 118 0 26 4 118 0 27 4 118 0 28 4 118 0 32 4 118 0 40 6 125 0 44 6 129 0 51 4 118 0 52 4 118 0 88 4 118 0 89 4 118 0 91 4 118 0 92 4 118 0 93 4 118 0 94 4 118 0 113 4 118 0 115 4 118 0 118 4 118 0 123 4 118 0 130 4 118 0 139 10 65 1 27] 
#[0 4 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 126 0 3 4 126 0 24 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 32 4 126 0 40 6 125 0 44 6 129 0 51 4 126 0 52 4 126 0 88 4 126 0 89 4 126 0 91 4 126 0 92 4 126 0 93 4 126 0 94 4 126 0 113 4 126 0 115 4 126 0 118 4 126 0 123 4 126 0 130 4 126 0 139 10 69 1 27] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 166 0 3 4 166 0 24 4 166 0 26 4 166 0 27 4 166 0 28 4 166 0 32 4 166 0 40 6 125 0 44 6 129 0 51 4 166 0 52 4 166 0 88 4 166 0 89 4 166 0 91 4 166 0 92 4 166 0 93 4 166 0 94 4 166 0 113 4 166 0 115 4 166 0 118 4 166 0 123 4 166 0 130 4 166 0 139 10 73 1 27] 
#[0 4 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 10 77 0 213 10 77 1 114 1 185 1 119 1 189 1 130] 
#[0 4 178 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 10 81 0 183 10 81 0 187 1 125 0 192 10 81 0 194 10 81 0 195 10 81 0 197 10 81 0 201 10 81 0 202 1 149 0 204 10 81 0 210 1 157 0 211 1 161 0 212 1 165 0 213 10 81 0 243 10 81 0 244 10 81 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 5 213 0 139 10 85 0 181] 
#[0 4 182 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 4 186 0 2 4 186 0 17 4 186 0 26 4 186 0 27 4 186 0 28 4 186 0 31 4 186 0 32 4 186 0 40 4 186 0 52 4 186 0 54 10 89 0 77 4 186 0 87 4 186 0 88 4 186 0 89 4 186 0 91 4 186 0 92 4 186 0 93 4 186 0 94 4 186 0 106 4 186 0 113 4 186 0 115 4 186 0 118 4 186 0 123 4 186 0 130 4 186 0 137 4 186 0 139 10 93 0 223] 
#[0 4 190 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 4 194 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 10 97 0 2 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 32 4 198 0 40 4 198 0 52 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 139 10 101 0 234] 
#[0 4 202 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 0 206 0 16 0 206 0 130 10 105 0 137] 
#[1 10 109 0 31 10 109 0 87 1 30 0 137 10 109 0 193] 
#[1 0 210 0 16 10 113 0 31 10 113 0 87 0 210 0 130 1 30 0 137 10 113 0 193] 
#[1 4 206 0 3 0 218 0 16 4 206 0 21 4 206 0 23 4 206 0 24 4 206 0 26 4 206 0 27 4 206 0 28 4 206 0 32 4 206 0 40 4 206 0 43 4 206 0 48 4 206 0 52 4 206 0 56 4 206 0 61 4 206 0 65 4 206 0 88 4 206 0 89 4 206 0 91 4 206 0 92 4 206 0 93 4 206 0 94 4 206 0 104 4 206 0 113 4 206 0 115 4 206 0 118 4 206 0 123 1 71 0 130 4 206 0 139 4 206 1 131] 
#[1 4 210 0 3 0 222 0 16 4 210 0 21 4 210 0 23 4 210 0 24 4 210 0 26 4 210 0 27 4 210 0 28 4 210 0 32 4 210 0 40 4 210 0 43 4 210 0 48 4 210 0 52 4 210 0 56 4 210 0 61 4 210 0 65 4 210 0 88 4 210 0 89 4 210 0 91 4 210 0 92 4 210 0 93 4 210 0 94 4 210 0 104 4 210 0 113 4 210 0 115 4 210 0 118 4 210 0 123 1 75 0 130 4 210 0 139 4 210 1 131] 
#[0 4 214 0 31 0 87 0 137] 
#[0 4 218 0 31 0 87 0 137] 
#[0 4 222 0 31 0 87 0 137] 
#[0 4 226 0 31 0 87 0 137] 
#[0 4 230 0 31 0 87 0 137] 
#[1 10 97 0 2 4 198 0 26 4 234 0 31 4 198 0 40 4 198 0 52 4 234 0 87 4 198 0 89 4 198 0 91 4 198 0 130 4 234 0 137 10 117 0 234] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 8 73 0 26 8 133 0 34 1 57 0 46 1 61 0 52 8 133 0 63 1 65 0 75 8 85 0 76 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 10 121 0 182 8 93 0 183 8 97 0 186 8 101 0 187 1 125 0 192 8 105 0 194 8 109 0 195 8 101 0 197 8 97 0 200 8 101 0 201 8 101 0 202 1 149 0 204 8 101 0 210 1 157 0 211 1 161 0 212 1 165 0 213 8 97 0 221 8 97 0 222 8 97 0 225 1 169 0 243 8 101 0 244 8 101 0 245 8 97 0 249 8 133 0 250 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 1 79 0 31 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 10 125 0 87 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 1 30 0 137 10 125 0 193 3 181 1 124] 
#[1 10 129 0 14 4 238 0 137 10 133 1 33] 
#[0 4 242 0 5 0 137] 
#[1 10 137 0 5 10 141 0 137] 
#[0 4 246 1 131] 
#[1 4 250 0 5 3 225 0 6 4 250 0 137] 
#[0 4 254 0 40] 
#[0 5 2 1 131] 
#[0 5 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 10 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 14 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 18 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 22 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 26 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 30 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 10 145 0 23 10 29 0 26 4 49 0 27 7 145 0 28 7 149 0 32 5 34 0 40 6 21 0 43 5 34 0 48 4 53 0 52 5 34 0 61 4 61 0 89 4 65 0 104 4 69 0 115 4 73 0 118 4 77 0 123 10 165 0 170 10 165 0 173 10 165 0 176 10 161 1 36 10 165 1 38 10 165 1 39 10 173 1 40 10 177 1 41 10 165 1 42 10 185 1 43 10 189 1 44 10 165 1 46 4 97 1 47 4 101 1 48 4 105 1 49 4 109 1 50 10 165 1 51 10 201 1 52 10 205 1 53 10 165 1 54 4 117 1 55 4 121 1 56 4 125 1 57 4 129 1 58 10 165 1 59 10 217 1 60 10 221 1 61 10 165 1 62 10 229 1 63 10 233 1 64 10 165 1 69 4 145 1 70 10 165 1 127] 
#[1 5 38 0 40 5 38 0 48 4 161 0 137] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 10 245 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 6 45 0 40 10 249 1 129] 
#[0 5 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 209 0 9 1 18 0 137 10 253 1 8] 
#[0 5 46 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 11 1 0 137] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 11 5 0 213 11 5 1 114 1 185 1 119 1 189 1 130] 
#[0 5 50 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 5 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 58 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 62 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 11 9 0 72 11 13 0 137] 
#[1 11 17 0 72 11 21 0 137] 
#[0 5 66 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 5 70 0 3 11 133 0 17 5 70 0 21 11 133 0 22 5 70 0 23 5 70 0 24 11 133 0 25 5 70 0 26 5 70 0 27 5 70 0 28 11 37 0 31 5 70 0 32 11 41 0 33 11 133 0 38 5 70 0 40 11 133 0 42 5 70 0 43 6 125 0 44 11 133 0 45 11 133 0 47 5 70 0 48 6 129 0 51 5 70 0 52 5 70 0 56 5 70 0 61 11 133 0 62 5 70 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 5 70 0 88 5 70 0 89 5 70 0 91 5 70 0 92 5 70 0 93 5 70 0 94 11 133 0 100 11 133 0 101 5 70 0 104 11 133 0 105 11 133 0 110 11 133 0 111 5 70 0 113 5 70 0 115 5 70 0 118 11 133 0 120 5 70 0 123 11 133 0 124 5 70 0 130 5 70 0 139 11 121 1 25 11 121 1 26 11 121 1 27 11 133 1 28] 
#[1 5 74 0 3 11 133 0 17 5 74 0 21 11 133 0 22 5 74 0 23 5 74 0 24 11 133 0 25 5 74 0 26 5 74 0 27 5 74 0 28 11 37 0 31 5 74 0 32 11 41 0 33 11 133 0 38 5 74 0 40 11 133 0 42 5 74 0 43 6 125 0 44 11 133 0 45 11 133 0 47 5 74 0 48 6 129 0 51 5 74 0 52 5 74 0 56 5 74 0 61 11 133 0 62 5 74 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 5 74 0 88 5 74 0 89 5 74 0 91 5 74 0 92 5 74 0 93 5 74 0 94 11 133 0 100 11 133 0 101 5 74 0 104 11 133 0 105 11 133 0 110 11 133 0 111 5 74 0 113 5 74 0 115 5 74 0 118 11 133 0 120 5 74 0 123 11 133 0 124 5 74 0 130 5 74 0 139 11 121 1 25 11 121 1 26 11 121 1 27 11 133 1 28] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 11 137 0 213 11 137 1 114 1 185 1 119 1 189 1 130] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 11 141 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[0 11 145 0 40] 
#[1 3 45 0 2 1 53 0 15 2 234 0 39 2 234 0 40 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 6 153 0 213 11 149 1 91 6 169 1 92 6 173 1 93 6 177 1 94 6 153 1 114 1 185 1 119 1 189 1 130] 
#[0 5 78 0 39 0 40] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 11 153 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 11 153 1 102 11 153 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 6 153 0 213 11 157 1 94 6 153 1 114 1 185 1 119 1 189 1 130] 
#[0 5 82 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 5 86 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 11 161 1 105 1 1 1 106 11 161 1 107 11 161 1 108 1 13 1 109 11 161 1 110 1 21 1 111 11 161 1 112 1 29 1 113 11 161 1 114 1 37 1 119 11 161 1 120 1 45 1 130] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 11 165 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 11 165 1 102 11 165 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[0 5 90 0 3 0 131 0 137] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 11 169 0 183 11 169 0 187 1 125 0 192 11 169 0 194 11 169 0 195 11 169 0 197 11 169 0 201 11 169 0 202 1 149 0 204 11 169 0 210 1 157 0 211 1 161 0 212 1 165 0 213 11 169 0 243 11 169 0 244 11 169 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 11 173 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 11 173 1 102 11 173 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 11 177 0 131 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 11 181 0 131 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 5 153 0 6 3 209 0 9 1 18 0 36 11 185 1 8] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 11 189 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[0 5 98 0 40 0 49] 
#[0 5 102 0 39 0 40 0 49 0 78] 
#[0 5 106 0 40 0 49] 
#[1 5 110 0 40 4 161 0 137] 
#[0 5 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 5 118 0 3 5 118 0 5 7 25 0 9] 
#[1 2 169 0 2 5 122 0 3 3 17 0 4 5 122 0 5 2 177 0 6 3 17 0 8 5 122 0 9 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 2 169 0 2 3 17 0 4 5 126 0 5 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 5 126 0 131 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 169 0 183 11 193 0 187 1 125 0 192 1 169 0 194 1 169 0 195 11 193 0 197 11 193 0 201 11 193 0 202 1 149 0 204 11 193 0 210 1 157 0 211 1 161 0 212 1 165 0 213 1 169 0 243 11 193 0 244 11 193 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 11 197 0 132] 
#[0 11 201 0 137] 
#[1 5 130 0 3 5 130 0 5 5 130 0 14 5 130 0 16 11 133 0 17 5 130 0 21 11 133 0 22 5 130 0 23 5 130 0 24 11 133 0 25 5 130 0 26 5 130 0 27 5 130 0 28 5 130 0 30 1 83 0 31 5 130 0 32 1 87 0 33 5 130 0 36 11 133 0 38 5 130 0 40 11 133 0 42 5 130 0 43 6 125 0 44 11 133 0 45 11 133 0 47 5 130 0 48 6 129 0 51 5 130 0 52 5 130 0 56 5 130 0 57 5 130 0 59 5 130 0 61 11 133 0 62 5 130 0 65 11 133 0 67 11 69 0 70 11 133 0 73 5 130 0 74 5 130 0 77 11 133 0 82 11 133 0 83 11 133 0 86 1 91 0 87 5 130 0 88 5 130 0 89 5 130 0 91 5 130 0 92 5 130 0 93 5 130 0 94 5 130 0 96 5 130 0 97 11 133 0 100 11 133 0 101 5 130 0 104 11 133 0 105 11 133 0 110 11 133 0 111 5 130 0 112 5 130 0 113 5 130 0 115 5 130 0 118 11 133 0 120 5 130 0 123 11 133 0 124 5 130 0 127 5 130 0 128 5 130 0 130 5 130 0 131 5 130 0 132 5 130 0 137 5 130 0 139 11 121 1 25 11 121 1 26 11 121 1 27 11 133 1 28 5 130 1 131] 
#[0 11 205 0 40] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 11 209 0 183 11 209 0 187 1 125 0 192 11 209 0 194 11 209 0 195 11 209 0 197 11 209 0 201 11 209 0 202 1 149 0 204 11 209 0 210 1 157 0 211 1 161 0 212 1 165 0 213 11 209 0 243 11 209 0 244 11 209 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[0 5 134 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 11 213 0 140 11 217 0 199] 
#[0 5 138 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 5 142 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 11 221 0 210 1 157 0 211 1 161 0 212 7 117 0 213 11 221 0 248 7 117 1 114 1 185 1 119 1 189 1 130] 
#[0 5 146 0 77] 
#[0 5 150 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 5 154 0 3 5 154 0 5 5 154 0 14 3 185 0 16 5 154 0 21 5 154 0 23 5 154 0 27 5 154 0 30 5 154 0 31 5 154 0 33 5 154 0 36 5 154 0 52 5 154 0 57 5 154 0 59 5 154 0 65 5 154 0 74 5 154 0 77 5 154 0 87 5 154 0 89 5 154 0 96 5 154 0 97 5 154 0 104 5 154 0 112 5 154 0 115 5 154 0 118 5 154 0 123 5 154 0 127 5 154 0 128 3 189 0 130 5 154 0 131 5 154 0 132 5 154 0 137 5 154 1 131] 
#[0 11 225 0 139] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 229 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 233 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 237 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 241 0 237] 
#[1 11 245 0 88 11 249 0 92] 
#[0 5 158 0 3 0 40] 
#[0 5 162 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 166 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 170 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 174 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 178 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 3 129 0 139 11 253 0 236] 
#[1 3 129 0 139 12 1 0 236] 
#[1 3 129 0 139 12 5 0 236] 
#[0 5 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 186 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 190 0 3 5 190 0 21 5 190 0 23 5 190 0 24 5 190 0 26 5 190 0 27 5 190 0 28 5 190 0 32 5 190 0 40 6 125 0 44 6 129 0 51 5 190 0 52 5 190 0 65 5 190 0 88 5 190 0 89 5 190 0 91 5 190 0 92 5 190 0 93 5 190 0 94 5 190 0 104 5 190 0 113 5 190 0 115 5 190 0 118 5 190 0 123 5 190 0 130 5 190 0 139 6 133 1 27] 
#[0 5 194 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 198 0 3 5 198 0 21 5 198 0 23 5 198 0 24 5 198 0 26 5 198 0 27 5 198 0 28 5 198 0 32 5 198 0 40 6 125 0 44 6 129 0 51 5 198 0 52 5 198 0 65 5 198 0 88 5 198 0 89 5 198 0 91 5 198 0 92 5 198 0 93 5 198 0 94 5 198 0 104 5 198 0 113 5 198 0 115 5 198 0 118 5 198 0 123 5 198 0 130 5 198 0 139 6 141 1 27] 
#[0 5 202 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 69 0 2 5 153 0 6 0 50 0 137 12 9 0 196] 
#[1 12 13 0 2 5 153 0 6 5 206 0 137 12 17 1 45] 
#[1 2 69 0 2 5 153 0 6 0 50 0 9 12 21 0 14 0 50 0 137 8 221 0 196] 
#[1 2 69 0 2 5 153 0 6 12 25 0 14 0 50 0 137 8 229 0 196] 
#[1 5 210 0 9 5 210 0 30 5 210 0 33 5 210 0 57 5 210 0 59 5 210 0 74 5 210 0 96 5 210 0 97 5 210 0 112 5 210 0 127 5 210 0 128 12 29 0 130 5 210 0 137 12 33 1 13] 
#[1 9 229 0 28 9 233 0 32 4 53 0 52 9 237 0 79 4 61 0 89 9 245 1 48 9 249 1 50 9 253 1 56 10 1 1 58] 
#[0 5 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 218 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 222 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 234 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 238 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 49 0 2 1 53 0 15 0 18 0 19 1 57 0 46 1 61 0 52 1 65 0 75 1 149 0 85 1 73 0 89 0 7 0 98 1 81 0 99 1 85 0 107 1 89 0 118 0 161 0 130 1 93 0 135 1 97 0 136 1 101 0 138 1 105 0 140 1 161 0 141 1 185 0 143 1 113 0 147 12 37 0 183 12 37 0 187 1 125 0 192 12 37 0 194 12 37 0 195 12 37 0 197 12 37 0 201 12 37 0 202 1 149 0 204 12 37 0 210 1 157 0 211 1 161 0 212 1 165 0 213 12 37 0 243 12 37 0 244 12 37 0 245 1 165 1 114 1 185 1 119 1 189 1 130] 
#[1 3 142 0 3 3 142 0 17 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 38 3 142 0 40 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 61 3 142 0 62 3 142 0 67 3 142 0 70 3 142 0 73 3 142 0 82 3 142 0 83 3 142 0 86 3 142 0 87 3 142 0 88 3 142 0 89 3 142 0 91 3 142 0 92 3 142 0 93 3 142 0 94 3 142 0 100 3 142 0 101 3 142 0 104 3 142 0 105 3 142 0 110 3 142 0 111 3 142 0 113 3 142 0 115 3 142 0 118 3 142 0 120 3 142 0 123 3 142 0 124 3 142 0 130 3 142 0 139 12 41 1 23] 
#[1 3 142 0 3 3 142 0 17 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 38 3 142 0 40 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 61 3 142 0 62 3 142 0 67 3 142 0 70 3 142 0 73 3 142 0 82 3 142 0 83 3 142 0 86 3 142 0 87 3 142 0 88 3 142 0 89 3 142 0 91 3 142 0 92 3 142 0 93 3 142 0 94 3 142 0 100 3 142 0 101 3 142 0 104 3 142 0 105 3 142 0 110 3 142 0 111 3 142 0 113 3 142 0 115 3 142 0 118 3 142 0 120 3 142 0 123 3 142 0 124 3 142 0 130 3 142 0 139 12 45 1 23] 
#[1 3 142 0 3 3 142 0 17 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 38 3 142 0 40 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 61 3 142 0 62 3 142 0 67 3 142 0 70 3 142 0 73 3 142 0 82 3 142 0 83 3 142 0 86 3 142 0 87 3 142 0 88 3 142 0 89 3 142 0 91 3 142 0 92 3 142 0 93 3 142 0 94 3 142 0 100 3 142 0 101 3 142 0 104 3 142 0 105 3 142 0 110 3 142 0 111 3 142 0 113 3 142 0 115 3 142 0 118 3 142 0 120 3 142 0 123 3 142 0 124 3 142 0 130 3 142 0 139 12 49 1 23] 
#[1 3 173 0 2 5 242 0 3 3 181 0 4 5 242 0 5 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 5 246 0 5 3 185 0 16 3 189 0 130 5 246 0 132] 
#[0 5 250 0 5 0 132] 
#[0 12 53 0 139] 
#[1 10 97 0 2 12 69 0 17 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 31 4 198 0 32 4 198 0 40 4 198 0 52 12 61 0 54 4 198 0 87 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 12 69 0 106 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 137 4 198 0 139 12 69 0 224 12 73 0 234] 
#[1 12 77 0 140 12 81 0 192 12 85 0 235] 
#[1 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 12 89 0 227 5 177 0 237] 
#[0 5 254 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 12 93 0 137] 
#[0 12 97 0 137] 
#[1 6 2 0 26 6 2 0 40 6 2 0 52 6 2 0 89 6 2 0 91 12 101 0 130 12 105 0 251] 
#[0 6 6 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 12 113 0 31 6 10 0 137 12 113 0 226] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 12 117 0 213 12 117 1 114 1 185 1 119 1 189 1 130] 
#[0 12 121 0 137] 
#[0 12 125 0 139] 
#[0 6 14 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 40 0 14 0 48 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 12 129 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[0 6 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 30 0 40 0 48 0 61] 
#[0 6 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 125 0 44 6 129 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 65 1 27 12 133 1 65 2 37 1 66] 
#[0 6 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 125 0 44 6 129 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 69 1 27 12 137 1 65 2 37 1 66] 
#[0 6 54 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 58 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 62 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 141 1 65 2 37 1 66] 
#[0 6 66 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 70 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 74 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 145 1 65 2 37 1 66] 
#[0 6 78 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 82 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 125 0 44 6 129 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 73 1 27 12 149 1 65 2 37 1 66] 
#[0 6 86 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 90 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 94 0 40 4 161 0 137] 
#[0 6 98 1 131] 
#[0 12 153 0 137] 
#[1 6 102 0 3 6 102 0 17 6 102 0 21 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 27 6 102 0 28 6 102 0 31 6 102 0 32 6 102 0 33 6 102 0 38 6 102 0 40 6 102 0 42 6 102 0 44 6 102 0 45 6 102 0 47 6 102 0 48 6 102 0 51 6 102 0 52 6 102 0 56 6 102 0 61 6 102 0 62 6 102 0 65 6 102 0 67 6 102 0 70 6 102 0 73 6 102 0 82 6 102 0 83 6 102 0 86 6 102 0 87 6 102 0 88 6 102 0 89 6 102 0 91 6 102 0 92 6 102 0 93 6 102 0 94 6 102 0 100 6 102 0 101 6 102 0 104 6 102 0 105 6 102 0 110 6 102 0 111 6 102 0 113 6 102 0 115 6 102 0 118 6 102 0 120 6 102 0 123 6 102 0 124 6 102 0 130 6 102 0 139 12 157 1 24] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 12 161 0 31 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 6 10 0 137 12 161 0 226 3 181 1 124] 
#[0 12 165 0 143] 
#[0 6 106 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 12 169 0 143] 
#[0 6 110 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 114 0 137] 
#[0 6 118 0 137] 
#[0 6 122 0 137] 
#[1 6 126 0 137 12 173 0 143] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 12 177 0 213 12 177 1 114 1 185 1 119 1 189 1 130] 
#[0 6 130 0 137] 
#[0 6 134 0 137] 
#[0 6 138 0 137] 
#[0 6 142 0 137] 
#[0 6 146 0 137] 
#[0 6 150 0 137] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 12 181 0 213 12 181 1 114 1 185 1 119 1 189 1 130] 
#[0 6 154 0 137] 
#[0 6 158 0 137] 
#[0 6 162 0 137] 
#[0 6 166 0 137] 
#[0 6 170 0 137] 
#[0 6 174 0 137] 
#[0 6 178 0 137] 
#[0 6 182 0 137] 
#[0 6 186 0 137] 
#[0 6 190 0 137] 
#[0 6 194 0 137] 
#[0 6 198 0 137] 
#[0 6 202 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 206 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 210 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 12 185 0 137] 
#[1 3 173 0 2 3 181 0 4 6 214 0 5 3 177 0 6 3 181 0 8 6 214 0 9 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 6 218 0 40 4 161 0 137] 
#[0 6 222 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 6 226 0 39 0 40 0 137] 
#[0 6 230 0 39 0 40 0 137] 
#[1 6 234 0 5 6 238 0 9] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 3 17 0 35 12 189 0 36 3 17 0 58 3 17 0 64 3 17 0 71 3 17 0 80 3 17 0 108 3 17 0 109 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[0 6 242 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 4 238 0 3 10 129 0 14 3 185 0 16 3 189 0 130 4 238 0 131 4 238 0 137 12 193 1 33] 
#[0 6 246 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 6 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 6 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 12 197 0 36] 
#[1 7 2 0 40 7 2 0 49 4 161 0 137] 
#[1 7 6 0 5 0 210 0 16 0 210 0 130 7 6 0 132] 
#[0 7 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 142 0 3 3 142 0 5 3 142 0 14 3 142 0 16 3 142 0 17 3 142 0 21 3 142 0 22 3 142 0 23 3 142 0 24 3 142 0 25 3 142 0 26 3 142 0 27 3 142 0 28 3 142 0 30 3 142 0 31 3 142 0 32 3 142 0 33 3 142 0 36 3 142 0 38 3 142 0 40 3 142 0 42 3 142 0 43 3 142 0 44 3 142 0 45 3 142 0 47 3 142 0 48 3 142 0 51 3 142 0 52 3 142 0 56 3 142 0 57 3 142 0 59 3 142 0 61 3 142 0 62 3 142 0 65 3 142 0 67 3 142 0 70 3 142 0 73 3 142 0 74 3 142 0 77 3 142 0 82 3 142 0 83 3 142 0 86 3 142 0 87 3 142 0 88 3 142 0 89 3 142 0 91 3 142 0 92 3 142 0 93 3 142 0 94 3 142 0 96 3 142 0 97 3 142 0 100 3 142 0 101 3 142 0 104 3 142 0 105 3 142 0 110 3 142 0 111 3 142 0 112 3 142 0 113 3 142 0 115 3 142 0 118 3 142 0 120 3 142 0 123 3 142 0 124 3 142 0 127 3 142 0 128 3 142 0 130 3 142 0 131 3 142 0 132 3 142 0 137 3 142 0 139 12 201 1 23 3 142 1 131] 
#[0 7 14 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 185 0 16 3 189 0 130 12 205 0 137] 
#[0 7 18 0 3 0 5] 
#[1 7 22 0 3 12 209 0 5] 
#[0 7 26 0 5 0 131] 
#[1 3 209 0 9 1 18 0 77 12 213 1 8] 
#[1 7 30 0 3 7 30 0 24 7 141 0 26 4 49 0 27 7 145 0 28 7 149 0 32 7 30 0 40 7 153 0 52 7 30 0 88 7 157 0 89 7 161 0 91 7 30 0 92 7 30 0 93 7 30 0 94 7 30 0 113 4 69 0 115 4 73 0 118 4 77 0 123 1 193 0 130 1 217 0 139 7 173 0 170 7 173 0 176 7 173 0 238 7 173 0 239 7 181 0 240 7 173 0 241 7 173 0 242 7 173 0 254 7 173 0 255 7 173 1 0 7 173 1 1 7 173 1 2 7 173 1 3 7 173 1 5 7 173 1 6 7 173 1 7 7 173 1 9 7 233 1 10 7 173 1 11 7 241 1 32 7 173 1 40 7 249 1 41 7 173 1 43 8 1 1 44 7 173 1 47 4 101 1 48 7 173 1 49 4 109 1 50 7 173 1 52 7 173 1 53 7 173 1 55 4 121 1 56 7 173 1 57 4 129 1 58 7 173 1 60 7 173 1 61 7 173 1 63 8 41 1 64 7 173 1 69 4 145 1 70] 
#[1 7 34 0 3 7 34 0 24 7 141 0 26 4 49 0 27 7 145 0 28 7 149 0 32 7 34 0 40 7 153 0 52 7 34 0 88 7 157 0 89 7 161 0 91 7 34 0 92 7 34 0 93 7 34 0 94 7 34 0 113 4 69 0 115 4 73 0 118 4 77 0 123 1 193 0 130 1 217 0 139 7 173 0 170 7 173 0 176 7 173 0 238 7 173 0 239 7 181 0 240 7 173 0 241 7 173 0 242 7 173 0 254 7 173 0 255 7 173 1 0 7 173 1 1 7 173 1 2 7 173 1 3 7 173 1 5 7 173 1 6 7 173 1 7 7 173 1 9 7 233 1 10 7 173 1 11 7 241 1 32 7 173 1 40 7 249 1 41 7 173 1 43 8 1 1 44 7 173 1 47 4 101 1 48 7 173 1 49 4 109 1 50 7 173 1 52 7 173 1 53 7 173 1 55 4 121 1 56 7 173 1 57 4 129 1 58 7 173 1 60 7 173 1 61 7 173 1 63 8 41 1 64 7 173 1 69 4 145 1 70] 
#[1 7 38 0 3 7 38 0 24 7 141 0 26 4 49 0 27 7 145 0 28 7 149 0 32 7 38 0 40 7 153 0 52 7 38 0 88 7 157 0 89 7 161 0 91 7 38 0 92 7 38 0 93 7 38 0 94 7 38 0 113 4 69 0 115 4 73 0 118 4 77 0 123 1 193 0 130 1 217 0 139 7 173 0 170 7 173 0 176 7 173 0 238 7 173 0 239 7 181 0 240 7 173 0 241 7 173 0 242 7 173 0 254 7 173 0 255 7 173 1 0 7 173 1 1 7 173 1 2 7 173 1 3 7 173 1 5 7 173 1 6 7 173 1 7 7 173 1 9 7 233 1 10 7 173 1 11 7 241 1 32 7 173 1 40 7 249 1 41 7 173 1 43 8 1 1 44 7 173 1 47 4 101 1 48 7 173 1 49 4 109 1 50 7 173 1 52 7 173 1 53 7 173 1 55 4 121 1 56 7 173 1 57 4 129 1 58 7 173 1 60 7 173 1 61 7 173 1 63 8 41 1 64 7 173 1 69 4 145 1 70] 
#[1 7 42 0 3 7 42 0 24 7 141 0 26 4 49 0 27 7 145 0 28 7 149 0 32 7 42 0 40 7 153 0 52 7 42 0 88 7 157 0 89 7 161 0 91 7 42 0 92 7 42 0 93 7 42 0 94 7 42 0 113 4 69 0 115 4 73 0 118 4 77 0 123 1 193 0 130 1 217 0 139 7 173 0 170 7 173 0 176 7 173 0 238 7 173 0 239 7 181 0 240 7 173 0 241 7 173 0 242 7 173 0 254 7 173 0 255 7 173 1 0 7 173 1 1 7 173 1 2 7 173 1 3 7 173 1 5 7 173 1 6 7 173 1 7 7 173 1 9 7 233 1 10 7 173 1 11 7 241 1 32 7 173 1 40 7 249 1 41 7 173 1 43 8 1 1 44 7 173 1 47 4 101 1 48 7 173 1 49 4 109 1 50 7 173 1 52 7 173 1 53 7 173 1 55 4 121 1 56 7 173 1 57 4 129 1 58 7 173 1 60 7 173 1 61 7 173 1 63 8 41 1 64 7 173 1 69 4 145 1 70] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 12 217 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 12 221 0 237] 
#[1 2 69 0 2 5 153 0 6 0 50 0 137 12 225 0 196] 
#[1 12 13 0 2 5 153 0 6 5 206 0 137 12 229 1 45] 
#[1 2 69 0 2 5 153 0 6 0 50 0 9 0 50 0 137 12 233 0 196] 
#[0 12 237 0 137] 
#[0 12 241 0 3] 
#[0 12 245 0 137] 
#[0 12 249 0 139] 
#[0 12 253 0 139] 
#[1 4 201 0 27 4 201 0 81 4 201 0 123 1 62 0 131 1 66 0 139 13 1 1 29 4 193 1 30 4 197 1 31 4 201 1 34] 
#[1 3 209 0 9 1 18 0 30 1 18 0 33 1 18 0 57 1 18 0 59 1 18 0 74 1 18 0 96 1 18 0 97 1 18 0 112 1 18 0 127 1 18 0 128 1 18 0 137 13 5 1 8] 
#[1 3 185 0 16 13 9 0 31 13 9 0 87 3 189 0 130 1 30 0 137 13 9 0 193] 
#[1 7 46 0 3 11 133 0 17 11 133 0 22 7 46 0 23 7 46 0 24 11 133 0 25 7 46 0 26 7 46 0 27 7 46 0 28 11 37 0 31 7 46 0 32 11 41 0 33 11 133 0 38 7 46 0 40 11 133 0 42 7 46 0 43 6 125 0 44 11 133 0 45 11 133 0 47 7 46 0 48 6 129 0 51 7 46 0 52 7 46 0 61 11 133 0 62 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 7 46 0 88 7 46 0 89 7 46 0 91 7 46 0 92 7 46 0 93 7 46 0 94 11 133 0 100 11 133 0 101 7 46 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 46 0 113 7 46 0 115 7 46 0 118 11 133 0 120 7 46 0 123 11 133 0 124 7 46 0 130 7 46 0 139 11 121 1 25 11 121 1 26 11 121 1 27 11 133 1 28] 
#[1 7 50 0 3 11 133 0 17 11 133 0 22 7 50 0 23 7 50 0 24 11 133 0 25 7 50 0 26 7 50 0 27 7 50 0 28 11 37 0 31 7 50 0 32 11 41 0 33 11 133 0 38 7 50 0 40 11 133 0 42 7 50 0 43 6 125 0 44 11 133 0 45 11 133 0 47 7 50 0 48 6 129 0 51 7 50 0 52 7 50 0 61 11 133 0 62 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 7 50 0 88 7 50 0 89 7 50 0 91 7 50 0 92 7 50 0 93 7 50 0 94 11 133 0 100 11 133 0 101 7 50 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 50 0 113 7 50 0 115 7 50 0 118 11 133 0 120 7 50 0 123 11 133 0 124 7 50 0 130 7 50 0 139 11 121 1 25 11 121 1 26 11 121 1 27 11 133 1 28] 
#[1 7 54 0 3 11 133 0 17 11 133 0 22 7 54 0 23 7 54 0 24 11 133 0 25 7 54 0 26 7 54 0 27 7 54 0 28 11 37 0 31 7 54 0 32 11 41 0 33 11 133 0 38 7 54 0 40 11 133 0 42 7 54 0 43 6 125 0 44 11 133 0 45 11 133 0 47 7 54 0 48 6 129 0 51 7 54 0 52 7 54 0 61 11 133 0 62 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 7 54 0 88 7 54 0 89 7 54 0 91 7 54 0 92 7 54 0 93 7 54 0 94 11 133 0 100 11 133 0 101 7 54 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 54 0 113 7 54 0 115 7 54 0 118 11 133 0 120 7 54 0 123 11 133 0 124 7 54 0 130 7 54 0 139 11 121 1 25 11 121 1 26 11 121 1 27 11 133 1 28] 
#[0 7 58 0 31 0 87 0 137] 
#[0 7 62 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 13 13 0 50] 
#[0 7 66 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 70 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 42 0 26 2 42 0 27 2 42 0 28 7 74 0 31 2 42 0 32 2 42 0 40 2 42 0 52 7 74 0 87 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 7 74 0 137 2 42 0 139 13 17 0 227 5 177 0 237] 
#[0 0 198 0 3 0 5 0 6 0 11] 
#[1 7 78 0 3 7 78 0 5 3 153 0 6 0 142 0 11 3 157 0 188 3 29 0 189] 
#[1 13 21 0 3 13 25 0 5] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 13 29 0 228] 
#[0 7 82 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 7 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 13 33 0 213 13 33 1 114 1 185 1 119 1 189 1 130] 
#[1 7 90 0 26 7 90 0 40 7 90 0 52 7 90 0 89 7 90 0 91 13 37 0 252] 
#[0 7 94 0 137] 
#[0 13 41 0 137] 
#[1 3 173 0 2 7 98 0 3 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 7 98 0 131 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 7 98 0 137 3 181 1 124] 
#[0 7 102 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 7 106 0 5 0 137] 
#[1 7 110 0 40 7 110 0 48 7 110 0 61 4 161 0 137] 
#[0 7 114 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 118 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 122 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 126 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 130 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 102 0 3 6 102 0 17 6 102 0 21 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 27 6 102 0 28 6 102 0 31 6 102 0 32 6 102 0 33 6 102 0 38 6 102 0 40 6 102 0 42 6 102 0 44 6 102 0 45 6 102 0 47 6 102 0 48 6 102 0 51 6 102 0 52 6 102 0 56 6 102 0 61 6 102 0 62 6 102 0 65 6 102 0 67 6 102 0 70 6 102 0 73 6 102 0 82 6 102 0 83 6 102 0 86 6 102 0 87 6 102 0 88 6 102 0 89 6 102 0 91 6 102 0 92 6 102 0 93 6 102 0 94 6 102 0 100 6 102 0 101 6 102 0 104 6 102 0 105 6 102 0 110 6 102 0 111 6 102 0 113 6 102 0 115 6 102 0 118 6 102 0 120 6 102 0 123 6 102 0 124 6 102 0 130 6 102 0 139 13 45 1 24] 
#[1 7 134 0 3 11 133 0 17 7 134 0 21 11 133 0 22 7 134 0 23 7 134 0 24 11 133 0 25 7 134 0 26 7 134 0 27 7 134 0 28 11 37 0 31 7 134 0 32 11 41 0 33 11 133 0 38 7 134 0 40 11 133 0 42 7 134 0 44 11 133 0 45 11 133 0 47 7 134 0 48 7 134 0 51 7 134 0 52 7 134 0 56 7 134 0 61 11 133 0 62 7 134 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 7 134 0 88 7 134 0 89 7 134 0 91 7 134 0 92 7 134 0 93 7 134 0 94 11 133 0 100 11 133 0 101 7 134 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 134 0 113 7 134 0 115 7 134 0 118 11 133 0 120 7 134 0 123 11 133 0 124 7 134 0 130 7 134 0 139 13 49 1 26 11 133 1 28] 
#[0 13 53 0 137] 
#[0 13 57 0 137] 
#[0 13 61 0 137] 
#[0 13 65 0 137] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 13 69 0 137 3 181 1 124] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 13 73 0 137 3 181 1 124] 
#[0 7 138 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 14 0 61 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 14 0 121 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 13 77 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 13 77 1 102 13 77 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130 0 14 1 131] 
#[0 7 142 0 3 0 131 0 137] 
#[1 0 89 0 2 0 93 0 15 0 10 0 21 0 97 0 23 0 101 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 105 0 50 0 109 0 52 0 113 0 53 0 117 0 55 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 14 0 78 0 137 0 89 0 141 0 95 0 145 0 102 0 149 0 117 0 153 0 125 0 157 0 126 0 161 0 130 0 165 0 135 0 169 0 136 0 14 0 137 0 173 0 139 0 177 0 141 1 37 0 143 0 185 0 147 0 189 0 212 13 81 1 73 2 57 1 74 0 197 1 75 0 201 1 76 0 205 1 77 0 209 1 78 0 213 1 79 0 217 1 81 0 221 1 87 0 225 1 96 0 229 1 98 0 233 1 99 0 237 1 101 2 57 1 102 2 57 1 103 0 249 1 104 0 253 1 105 1 1 1 106 0 253 1 107 0 253 1 108 1 13 1 109 0 253 1 110 1 21 1 111 0 253 1 112 1 29 1 113 0 253 1 114 1 37 1 119 0 253 1 120 1 45 1 130] 
#[1 7 146 0 3 7 146 0 5 7 146 0 14 7 146 0 16 11 133 0 17 7 146 0 21 11 133 0 22 7 146 0 23 7 146 0 24 11 133 0 25 7 146 0 26 7 146 0 27 7 146 0 28 7 146 0 30 1 95 0 31 7 146 0 32 1 99 0 33 7 146 0 36 11 133 0 38 7 146 0 40 11 133 0 42 7 146 0 43 6 125 0 44 11 133 0 45 11 133 0 47 7 146 0 48 6 129 0 51 7 146 0 52 7 146 0 56 7 146 0 57 7 146 0 59 7 146 0 61 11 133 0 62 7 146 0 65 11 133 0 67 11 69 0 70 11 133 0 73 7 146 0 74 7 146 0 77 11 133 0 82 11 133 0 83 11 133 0 86 1 103 0 87 7 146 0 88 7 146 0 89 7 146 0 91 7 146 0 92 7 146 0 93 7 146 0 94 7 146 0 96 7 146 0 97 11 133 0 100 11 133 0 101 7 146 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 146 0 112 7 146 0 113 7 146 0 115 7 146 0 118 11 133 0 120 7 146 0 123 11 133 0 124 7 146 0 127 7 146 0 128 7 146 0 130 7 146 0 131 7 146 0 132 7 146 0 137 7 146 0 139 11 121 1 25 11 121 1 26 11 121 1 27 11 133 1 28 7 146 1 131] 
#[0 7 150 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 13 85 0 140] 
#[0 13 89 0 77] 
#[1 7 154 0 3 7 154 0 24 7 141 0 26 4 49 0 27 7 145 0 28 7 149 0 32 7 154 0 40 7 153 0 52 7 154 0 88 7 157 0 89 7 161 0 91 7 154 0 92 7 154 0 93 7 154 0 94 7 154 0 113 4 69 0 115 4 73 0 118 4 77 0 123 1 193 0 130 1 217 0 139 7 173 0 170 7 173 0 176 7 173 0 238 7 173 0 239 7 181 0 240 7 173 0 241 7 173 0 242 7 173 0 254 7 173 0 255 7 173 1 0 7 173 1 1 7 173 1 2 7 173 1 3 7 173 1 5 7 173 1 6 7 173 1 7 7 173 1 9 7 233 1 10 7 173 1 11 7 241 1 32 7 173 1 40 7 249 1 41 7 173 1 43 8 1 1 44 7 173 1 47 4 101 1 48 7 173 1 49 4 109 1 50 7 173 1 52 7 173 1 53 7 173 1 55 4 121 1 56 7 173 1 57 4 129 1 58 7 173 1 60 7 173 1 61 7 173 1 63 8 41 1 64 7 173 1 69 4 145 1 70] 
#[1 7 158 0 3 7 158 0 24 7 141 0 26 4 49 0 27 7 145 0 28 7 149 0 32 7 158 0 40 7 153 0 52 7 158 0 88 7 157 0 89 7 161 0 91 7 158 0 92 7 158 0 93 7 158 0 94 7 158 0 113 4 69 0 115 4 73 0 118 4 77 0 123 1 193 0 130 1 217 0 139 7 173 0 170 7 173 0 176 7 173 0 238 7 173 0 239 7 181 0 240 7 173 0 241 7 173 0 242 7 173 0 254 7 173 0 255 7 173 1 0 7 173 1 1 7 173 1 2 7 173 1 3 7 173 1 5 7 173 1 6 7 173 1 7 7 173 1 9 7 233 1 10 7 173 1 11 7 241 1 32 7 173 1 40 7 249 1 41 7 173 1 43 8 1 1 44 7 173 1 47 4 101 1 48 7 173 1 49 4 109 1 50 7 173 1 52 7 173 1 53 7 173 1 55 4 121 1 56 7 173 1 57 4 129 1 58 7 173 1 60 7 173 1 61 7 173 1 63 8 41 1 64 7 173 1 69 4 145 1 70] 
#[0 13 93 0 137] 
#[0 13 97 0 137] 
#[1 3 209 0 9 1 18 0 137 13 101 1 8] 
#[1 6 102 0 3 6 102 0 17 6 102 0 21 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 27 6 102 0 28 6 102 0 31 6 102 0 32 6 102 0 33 6 102 0 38 6 102 0 40 6 102 0 42 6 102 0 44 6 102 0 45 6 102 0 47 6 102 0 51 6 102 0 52 6 102 0 62 6 102 0 65 6 102 0 67 6 102 0 70 6 102 0 73 6 102 0 82 6 102 0 83 6 102 0 86 6 102 0 87 6 102 0 88 6 102 0 89 6 102 0 91 6 102 0 92 6 102 0 93 6 102 0 94 6 102 0 100 6 102 0 101 6 102 0 104 6 102 0 105 6 102 0 110 6 102 0 111 6 102 0 113 6 102 0 115 6 102 0 118 6 102 0 120 6 102 0 123 6 102 0 124 6 102 0 130 6 102 0 139 13 105 1 24] 
#[0 7 162 0 137] 
#[1 6 102 0 3 6 102 0 17 6 102 0 21 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 27 6 102 0 28 6 102 0 31 6 102 0 32 6 102 0 33 6 102 0 38 6 102 0 40 6 102 0 42 6 102 0 44 6 102 0 45 6 102 0 47 6 102 0 51 6 102 0 52 6 102 0 62 6 102 0 65 6 102 0 67 6 102 0 70 6 102 0 73 6 102 0 82 6 102 0 83 6 102 0 86 6 102 0 87 6 102 0 88 6 102 0 89 6 102 0 91 6 102 0 92 6 102 0 93 6 102 0 94 6 102 0 100 6 102 0 101 6 102 0 104 6 102 0 105 6 102 0 110 6 102 0 111 6 102 0 113 6 102 0 115 6 102 0 118 6 102 0 120 6 102 0 123 6 102 0 124 6 102 0 130 6 102 0 139 13 109 1 24] 
#[0 13 113 0 137] 
#[0 13 117 0 137] 
#[0 13 121 0 131] 
#[1 7 166 0 30 7 166 0 33 7 166 0 57 7 166 0 59 7 166 0 74 7 166 0 96 7 166 0 97 7 166 0 112 7 166 0 127 7 166 0 128 7 166 0 137 13 125 1 12] 
#[0 13 129 0 137] 
#[1 3 129 0 139 13 133 0 236] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 13 137 0 228] 
#[0 7 170 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 77 0 140 13 141 0 192] 
#[1 13 145 0 40 9 185 0 88 9 189 0 92 9 193 0 93 9 197 0 94 9 201 0 113 9 209 0 229 9 209 0 230 9 209 0 231 9 209 0 232 9 209 0 233] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 13 149 0 131 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 13 153 0 26 13 157 0 40 4 53 0 52 4 61 0 89 7 161 0 91 13 161 0 253 13 161 0 254 13 161 0 255 13 161 1 2 13 161 1 3 13 161 1 5 13 161 1 6 13 161 1 7 13 161 1 9 7 233 1 10 13 161 1 11 13 161 1 47 4 101 1 48 13 161 1 49 4 109 1 50 13 161 1 52 13 161 1 53 13 161 1 55 4 121 1 56 13 161 1 57 4 129 1 58 13 161 1 60 13 161 1 61 13 161 1 63 8 41 1 64] 
#[0 7 174 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 7 178 0 3 11 133 0 17 7 178 0 21 11 133 0 22 7 178 0 23 7 178 0 24 11 133 0 25 7 178 0 26 7 178 0 27 7 178 0 28 11 37 0 31 7 178 0 32 11 41 0 33 11 133 0 38 7 178 0 40 11 133 0 42 7 178 0 44 11 133 0 45 11 133 0 47 7 178 0 48 7 178 0 51 7 178 0 52 7 178 0 56 7 178 0 61 11 133 0 62 7 178 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 7 178 0 88 7 178 0 89 7 178 0 91 7 178 0 92 7 178 0 93 7 178 0 94 11 133 0 100 11 133 0 101 7 178 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 178 0 113 7 178 0 115 7 178 0 118 11 133 0 120 7 178 0 123 11 133 0 124 7 178 0 130 7 178 0 139 13 49 1 26 11 133 1 28] 
#[0 7 182 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139] 
#[0 7 186 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 7 190 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 194 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 198 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 202 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 206 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 7 214 0 39 7 214 0 40 7 214 0 49 7 214 0 78 4 161 0 137] 
#[0 7 218 0 3 0 5] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 13 173 0 206 13 177 0 207 13 181 0 208 13 185 0 209 1 161 0 212 13 189 0 213 13 189 1 114 1 185 1 119 1 189 1 130] 
#[1 6 102 0 3 6 102 0 17 6 102 0 21 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 27 6 102 0 28 6 102 0 31 6 102 0 32 6 102 0 33 6 102 0 38 6 102 0 40 6 102 0 42 6 102 0 44 6 102 0 45 6 102 0 47 6 102 0 51 6 102 0 52 6 102 0 62 6 102 0 65 6 102 0 67 6 102 0 70 6 102 0 73 6 102 0 82 6 102 0 83 6 102 0 86 6 102 0 87 6 102 0 88 6 102 0 89 6 102 0 91 6 102 0 92 6 102 0 93 6 102 0 94 6 102 0 100 6 102 0 101 6 102 0 104 6 102 0 105 6 102 0 110 6 102 0 111 6 102 0 113 6 102 0 115 6 102 0 118 6 102 0 120 6 102 0 123 6 102 0 124 6 102 0 130 6 102 0 139 13 193 1 24] 
#[1 6 102 0 3 6 102 0 17 6 102 0 21 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 27 6 102 0 28 6 102 0 31 6 102 0 32 6 102 0 33 6 102 0 38 6 102 0 40 6 102 0 42 6 102 0 44 6 102 0 45 6 102 0 47 6 102 0 51 6 102 0 52 6 102 0 62 6 102 0 65 6 102 0 67 6 102 0 70 6 102 0 73 6 102 0 82 6 102 0 83 6 102 0 86 6 102 0 87 6 102 0 88 6 102 0 89 6 102 0 91 6 102 0 92 6 102 0 93 6 102 0 94 6 102 0 100 6 102 0 101 6 102 0 104 6 102 0 105 6 102 0 110 6 102 0 111 6 102 0 113 6 102 0 115 6 102 0 118 6 102 0 120 6 102 0 123 6 102 0 124 6 102 0 130 6 102 0 139 13 197 1 24] 
#[0 13 201 0 137] 
#[1 7 222 0 3 11 133 0 17 7 222 0 21 11 133 0 22 7 222 0 23 7 222 0 24 11 133 0 25 7 222 0 26 7 222 0 27 7 222 0 28 11 37 0 31 7 222 0 32 11 41 0 33 11 133 0 38 7 222 0 40 11 133 0 42 7 222 0 44 11 133 0 45 11 133 0 47 7 222 0 51 7 222 0 52 11 133 0 62 7 222 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 7 222 0 88 7 222 0 89 7 222 0 91 7 222 0 92 7 222 0 93 7 222 0 94 11 133 0 100 11 133 0 101 7 222 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 222 0 113 7 222 0 115 7 222 0 118 11 133 0 120 7 222 0 123 11 133 0 124 7 222 0 130 7 222 0 139 13 49 1 26 11 133 1 28] 
#[1 7 226 0 3 11 133 0 17 7 226 0 21 11 133 0 22 7 226 0 23 7 226 0 24 11 133 0 25 7 226 0 26 7 226 0 27 7 226 0 28 11 37 0 31 7 226 0 32 11 41 0 33 11 133 0 38 7 226 0 40 11 133 0 42 7 226 0 44 11 133 0 45 11 133 0 47 7 226 0 51 7 226 0 52 11 133 0 62 7 226 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 7 226 0 88 7 226 0 89 7 226 0 91 7 226 0 92 7 226 0 93 7 226 0 94 11 133 0 100 11 133 0 101 7 226 0 104 11 133 0 105 11 133 0 110 11 133 0 111 7 226 0 113 7 226 0 115 7 226 0 118 11 133 0 120 7 226 0 123 11 133 0 124 7 226 0 130 7 226 0 139 13 49 1 26 11 133 1 28] 
#[0 7 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 234 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 238 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 205 0 30 13 209 0 33 13 213 0 57 13 217 0 59 13 221 0 74 13 225 0 96 13 229 0 97 13 233 0 112 13 237 0 127 13 241 0 128 13 245 0 137 13 249 1 14 13 253 1 15 14 1 1 16 14 5 1 17 14 9 1 18 14 13 1 19 14 17 1 21] 
#[0 7 242 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 97 0 2 5 153 0 6 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 31 4 198 0 32 4 198 0 40 4 198 0 52 4 198 0 87 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 137 4 198 0 139 14 21 0 234] 
#[1 14 25 0 40 9 185 0 88 9 189 0 92 9 193 0 93 9 197 0 94 9 201 0 113 9 209 0 229 9 209 0 230 9 209 0 231 9 209 0 232 9 209 0 233] 
#[1 7 246 0 3 7 246 0 5 3 153 0 6 0 142 0 11 3 157 0 188 3 29 0 189] 
#[0 7 250 0 31 0 87 0 137] 
#[0 7 254 0 26 0 40 0 52 0 89 0 91] 
#[1 4 53 0 52 9 237 0 79 4 61 0 89 7 161 0 91 9 241 1 10 9 245 1 48 9 249 1 50 9 253 1 56 10 1 1 58] 
#[0 8 2 0 31 0 87 0 137] 
#[0 8 6 0 26 0 40 0 52 0 89 0 91] 
#[0 8 10 0 26 0 40 0 52 0 89 0 91] 
#[0 8 14 0 26 0 40 0 52 0 89 0 91] 
#[1 1 250 0 3 1 250 0 40 14 29 0 137 14 33 1 88] 
#[0 8 18 0 3 0 40 0 137] 
#[1 14 37 0 5 14 41 0 9] 
#[0 8 22 0 5 0 9] 
#[1 3 173 0 2 3 181 0 4 8 26 0 5 3 177 0 6 3 181 0 8 8 26 0 9 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 3 181 0 35 3 181 0 58 3 181 0 64 3 181 0 71 3 181 0 80 3 181 0 108 3 181 0 109 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 3 181 1 124] 
#[1 8 30 0 3 11 133 0 17 8 30 0 21 11 133 0 22 8 30 0 23 8 30 0 24 11 133 0 25 8 30 0 26 8 30 0 27 8 30 0 28 11 37 0 31 8 30 0 32 11 41 0 33 11 133 0 38 8 30 0 40 11 133 0 42 8 30 0 44 11 133 0 45 11 133 0 47 8 30 0 51 8 30 0 52 11 133 0 62 8 30 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 8 30 0 88 8 30 0 89 8 30 0 91 8 30 0 92 8 30 0 93 8 30 0 94 11 133 0 100 11 133 0 101 8 30 0 104 11 133 0 105 11 133 0 110 11 133 0 111 8 30 0 113 8 30 0 115 8 30 0 118 11 133 0 120 8 30 0 123 11 133 0 124 8 30 0 130 8 30 0 139 13 49 1 26 11 133 1 28] 
#[1 8 34 0 3 11 133 0 17 8 34 0 21 11 133 0 22 8 34 0 23 8 34 0 24 11 133 0 25 8 34 0 26 8 34 0 27 8 34 0 28 11 37 0 31 8 34 0 32 11 41 0 33 11 133 0 38 8 34 0 40 11 133 0 42 8 34 0 44 11 133 0 45 11 133 0 47 8 34 0 51 8 34 0 52 11 133 0 62 8 34 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 8 34 0 88 8 34 0 89 8 34 0 91 8 34 0 92 8 34 0 93 8 34 0 94 11 133 0 100 11 133 0 101 8 34 0 104 11 133 0 105 11 133 0 110 11 133 0 111 8 34 0 113 8 34 0 115 8 34 0 118 11 133 0 120 8 34 0 123 11 133 0 124 8 34 0 130 8 34 0 139 13 49 1 26 11 133 1 28] 
#[1 6 102 0 3 6 102 0 17 6 102 0 21 6 102 0 22 6 102 0 23 6 102 0 24 6 102 0 25 6 102 0 26 6 102 0 27 6 102 0 28 6 102 0 31 6 102 0 32 6 102 0 33 6 102 0 38 6 102 0 40 6 102 0 42 6 102 0 44 6 102 0 45 6 102 0 47 6 102 0 51 6 102 0 52 6 102 0 62 6 102 0 65 6 102 0 67 6 102 0 70 6 102 0 73 6 102 0 82 6 102 0 83 6 102 0 86 6 102 0 87 6 102 0 88 6 102 0 89 6 102 0 91 6 102 0 92 6 102 0 93 6 102 0 94 6 102 0 100 6 102 0 101 6 102 0 104 6 102 0 105 6 102 0 110 6 102 0 111 6 102 0 113 6 102 0 115 6 102 0 118 6 102 0 120 6 102 0 123 6 102 0 124 6 102 0 130 6 102 0 139 14 45 1 24] 
#[1 3 45 0 2 1 53 0 15 8 38 0 30 8 38 0 33 8 38 0 57 8 38 0 59 8 38 0 74 1 65 0 75 8 38 0 96 8 38 0 97 8 38 0 112 8 38 0 127 8 38 0 128 0 161 0 130 1 93 0 135 1 97 0 136 8 38 0 137 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 14 49 0 213 14 49 1 114 1 185 1 119 1 189 1 130] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 14 53 0 213 14 53 1 114 1 185 1 119 1 189 1 130] 
#[1 14 57 0 139 14 61 1 20] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 14 65 0 213 14 65 1 114 1 185 1 119 1 189 1 130] 
#[0 8 42 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 14 69 1 105 1 1 1 106 14 69 1 107 14 69 1 108 1 13 1 109 14 69 1 110 1 21 1 111 14 69 1 112 1 29 1 113 14 69 1 114 1 37 1 119 14 69 1 120 1 45 1 130] 
#[0 14 73 0 33] 
#[0 14 77 0 139] 
#[1 0 89 0 2 0 93 0 15 0 109 0 52 0 121 0 60 0 125 0 68 0 129 0 69 0 133 0 75 0 137 0 89 0 161 0 130 0 165 0 135 0 169 0 136 2 41 0 139 0 189 0 141 1 37 0 143 0 185 0 147 0 189 0 212 14 81 1 105 1 1 1 106 14 81 1 107 14 81 1 108 1 13 1 109 14 81 1 110 1 21 1 111 14 81 1 112 1 29 1 113 14 81 1 114 1 37 1 119 14 81 1 120 1 45 1 130] 
#[0 14 85 0 33] 
#[1 8 46 0 3 8 46 0 24 8 46 0 26 8 46 0 27 8 46 0 28 14 89 0 30 8 46 0 32 8 46 0 40 8 46 0 52 8 46 0 88 8 46 0 89 8 46 0 91 8 46 0 92 8 46 0 93 8 46 0 94 8 46 0 113 8 46 0 115 8 46 0 118 8 46 0 123 8 46 0 130 8 46 0 139 14 93 1 22] 
#[0 8 50 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 54 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 58 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 62 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 66 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 70 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 74 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 42 0 26 2 42 0 27 2 42 0 28 8 78 0 31 2 42 0 32 2 42 0 40 2 42 0 52 8 78 0 87 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 8 78 0 137 2 42 0 139 14 97 0 227 5 177 0 237] 
#[0 8 82 0 31 0 87 0 137] 
#[1 3 45 0 2 2 234 0 3 1 53 0 15 2 234 0 40 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 14 101 0 207 13 181 0 208 13 185 0 209 1 161 0 212 13 189 0 213 13 189 1 114 1 185 1 119 1 189 1 130] 
#[0 8 86 0 3 0 40] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 14 105 0 209 1 161 0 212 13 189 0 213 13 189 1 114 1 185 1 119 1 189 1 130] 
#[0 14 109 0 2] 
#[1 8 90 0 3 11 133 0 17 8 90 0 21 11 133 0 22 8 90 0 23 8 90 0 24 11 133 0 25 8 90 0 26 8 90 0 27 8 90 0 28 11 37 0 31 8 90 0 32 11 41 0 33 11 133 0 38 8 90 0 40 11 133 0 42 8 90 0 44 11 133 0 45 11 133 0 47 8 90 0 51 8 90 0 52 11 133 0 62 8 90 0 65 11 133 0 67 11 69 0 70 11 133 0 73 11 133 0 82 11 133 0 83 11 133 0 86 11 133 0 87 8 90 0 88 8 90 0 89 8 90 0 91 8 90 0 92 8 90 0 93 8 90 0 94 11 133 0 100 11 133 0 101 8 90 0 104 11 133 0 105 11 133 0 110 11 133 0 111 8 90 0 113 8 90 0 115 8 90 0 118 11 133 0 120 8 90 0 123 11 133 0 124 8 90 0 130 8 90 0 139 13 49 1 26 11 133 1 28] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 8 94 0 30 8 94 0 33 3 181 0 35 8 94 0 57 3 181 0 58 8 94 0 59 3 181 0 64 3 181 0 71 8 94 0 74 3 181 0 80 8 94 0 96 8 94 0 97 3 181 0 108 3 181 0 109 8 94 0 112 8 94 0 127 8 94 0 128 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 8 94 0 137 3 181 1 124] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 8 98 0 30 8 98 0 33 3 181 0 35 8 98 0 57 3 181 0 58 8 98 0 59 3 181 0 64 3 181 0 71 8 98 0 74 3 181 0 80 8 98 0 96 8 98 0 97 3 181 0 108 3 181 0 109 8 98 0 112 8 98 0 127 8 98 0 128 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 8 98 0 137 3 181 1 124] 
#[0 8 102 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 113 0 5 8 106 0 30 8 106 0 33 8 106 0 57 8 106 0 59 8 106 0 74 8 106 0 96 8 106 0 97 8 106 0 112 8 106 0 127 8 106 0 128 8 106 0 137] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 8 110 0 30 8 110 0 33 3 181 0 35 8 110 0 57 3 181 0 58 8 110 0 59 3 181 0 64 3 181 0 71 8 110 0 74 3 181 0 80 8 110 0 96 8 110 0 97 3 181 0 108 3 181 0 109 8 110 0 112 8 110 0 127 8 110 0 128 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 8 110 0 137 3 181 1 124] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 8 114 0 30 8 114 0 33 3 17 0 35 8 114 0 57 3 17 0 58 8 114 0 59 3 17 0 64 3 17 0 71 8 114 0 74 3 17 0 80 8 114 0 96 8 114 0 97 3 17 0 108 3 17 0 109 8 114 0 112 8 114 0 127 8 114 0 128 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 8 114 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 14 117 0 213 14 117 1 114 1 185 1 119 1 189 1 130] 
#[0 8 118 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 169 0 2 3 17 0 4 2 177 0 6 3 17 0 8 2 185 0 10 3 17 0 11 3 17 0 12 3 17 0 13 3 17 0 14 3 17 0 18 3 17 0 20 8 122 0 30 8 122 0 33 3 17 0 35 8 122 0 57 3 17 0 58 8 122 0 59 3 17 0 64 3 17 0 71 8 122 0 74 3 17 0 80 8 122 0 96 8 122 0 97 3 17 0 108 3 17 0 109 8 122 0 112 8 122 0 127 8 122 0 128 3 17 0 129 2 245 0 130 3 17 0 132 3 17 0 133 3 17 0 135 3 17 0 136 8 122 0 137 3 9 0 138 3 13 1 117 3 17 1 123 3 17 1 124] 
#[1 3 45 0 2 1 53 0 15 1 65 0 75 0 161 0 130 1 93 0 135 1 97 0 136 3 93 0 140 1 161 0 141 1 185 0 143 1 113 0 147 1 161 0 212 14 121 0 213 14 121 1 114 1 185 1 119 1 189 1 130] 
#[0 14 125 0 137] 
#[0 8 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 14 129 0 228] 
#[0 8 130 0 3 0 40 0 137] 
#[0 8 134 0 5 0 9] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 14 133 0 203 5 173 0 227 5 177 0 237] 
#[0 14 137 0 139] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 8 138 0 30 8 138 0 33 3 181 0 35 8 138 0 57 3 181 0 58 8 138 0 59 3 181 0 64 3 181 0 71 8 138 0 74 3 181 0 80 8 138 0 96 8 138 0 97 3 181 0 108 3 181 0 109 8 138 0 112 8 138 0 127 8 138 0 128 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 8 138 0 137 3 181 1 124] 
#[1 3 173 0 2 3 181 0 4 3 177 0 6 3 181 0 8 3 181 0 11 3 181 0 12 3 181 0 13 3 181 0 18 3 181 0 20 8 142 0 30 8 142 0 33 3 181 0 35 8 142 0 57 3 181 0 58 8 142 0 59 3 181 0 64 3 181 0 71 8 142 0 74 3 181 0 80 8 142 0 96 8 142 0 97 3 181 0 108 3 181 0 109 8 142 0 112 8 142 0 127 8 142 0 128 3 181 0 129 3 181 0 132 3 181 0 133 3 181 0 135 3 181 0 136 8 142 0 137 3 181 1 124] 
#[0 8 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 14 141 0 40 9 185 0 88 9 189 0 92 9 193 0 93 9 197 0 94 9 201 0 113 9 209 0 229 9 209 0 230 9 209 0 231 9 209 0 232 9 209 0 233] 
#[0 14 145 0 3] 
#[0 8 150 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 154 0 31 0 87 0 137] 
#[0 8 158 0 3 0 40 0 137]
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
		addNodes: ((nodes at: 2) at: 2)
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
		addNodes: ((nodes at: 3) at: 2)
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
