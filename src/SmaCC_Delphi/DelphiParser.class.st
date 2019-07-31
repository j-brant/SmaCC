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
#[ 0 18 1 81] 
#[ 0 142 0 146] 
#[ 0 146 0 166] 
#[ 0 198 0 202] 
#[ 0 250 3 17] 
#[ 1 70 2 213] 
#[ 1 70 2 217] 
#[ 1 70 2 221] 
#[ 1 70 2 225] 
#[ 1 70 2 241] 
#[ 1 70 3 17] 
#[ 1 70 3 21] 
#[ 1 94 2 213] 
#[ 1 94 2 217] 
#[ 1 94 2 221] 
#[ 1 94 2 225] 
#[ 1 94 2 241] 
#[ 1 94 3 17] 
#[ 1 94 3 21] 
#[ 1 126 2 213] 
#[ 1 126 2 217] 
#[ 1 126 2 221] 
#[ 1 126 2 225] 
#[ 1 126 2 241] 
#[ 1 126 3 17] 
#[ 1 126 3 21] 
#[ 1 130 2 213] 
#[ 1 130 2 217] 
#[ 1 130 2 221] 
#[ 1 130 2 225] 
#[ 1 130 2 241] 
#[ 1 130 3 17] 
#[ 1 130 3 21] 
#[ 2 10 5 117] 
#[ 2 18 2 213] 
#[ 2 18 2 217] 
#[ 2 18 2 221] 
#[ 2 18 2 241] 
#[ 2 18 3 17] 
#[ 2 18 3 21] 
#[ 2 22 2 213] 
#[ 2 22 2 217] 
#[ 2 22 2 221] 
#[ 2 22 2 241] 
#[ 2 22 3 17] 
#[ 2 22 3 21] 
#[ 2 34 2 213] 
#[ 2 34 2 217] 
#[ 2 34 2 221] 
#[ 2 34 2 241] 
#[ 2 34 3 17] 
#[ 2 34 3 21] 
#[ 2 38 2 213] 
#[ 2 38 2 217] 
#[ 2 38 2 221] 
#[ 2 38 2 241] 
#[ 2 38 3 17] 
#[ 2 38 3 21] 
#[ 2 213 2 218] 
#[ 2 217 2 218] 
#[ 2 218 2 221] 
#[ 2 218 2 225] 
#[ 2 218 2 241] 
#[ 2 218 3 17] 
#[ 2 218 3 21] 
#[ 2 213 2 226] 
#[ 2 217 2 226] 
#[ 2 221 2 226] 
#[ 2 225 2 226] 
#[ 2 226 2 241] 
#[ 2 226 3 17] 
#[ 2 226 3 21] 
#[ 2 250 3 17] 
#[ 2 213 3 26] 
#[ 2 217 3 26] 
#[ 2 221 3 26] 
#[ 2 241 3 26] 
#[ 3 17 3 26] 
#[ 3 21 3 26] 
#[ 0 198 9 165] 
#[ 0 222 4 206] 
#[ 0 226 4 210] 
#[ 1 46 4 1] 
#[ 5 130 11 53] 
#[ 5 130 11 57] 
#[ 5 130 11 105] 
#[ 7 146 11 53] 
#[ 7 146 11 57] 
#[ 7 146 11 105]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-31T09:41:19.02276-05:00'
]

{ #category : #generated }
DelphiParser class >> definitionComment [
"%start File Statement SimpleDefinedType NamedDefinedType ConstantValue Variable Argument;

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
	#(164 0 #reduceActionForUsesList1: 5786625 false ) 
	#(360 0 #reduceActionForBeforeAsm1: 32532481 false ) 
	#(330 0 #reduceActionForStatement14: 29051918 false ) 
	#(204 0 #nil 11517953 false ) 
	#(290 0 #nil 23825409 false ) 
	#(149 1 #reduceActionForFile2: 4242434 false ) 
	#(149 1 #reduceActionForFile3: 4242435 false ) 
	#(149 1 #reduceActionForFile4: 4242436 false ) 
	#(149 1 #reduceActionForFile1: 4242433 false ) 
	#(163 0 #nil 5671937 false ) 
	#(161 1 #reduceActionForUnitFile2: 5345282 false ) 
	#(322 0 #reduceActionForMethodVariables2: 28297218 false ) 
	#(196 0 #reduceActionForOptionalArguments1: 10409985 false ) 
	#(376 1 #reduceActionForInheritedFunctionCall4: 35540996 false ) 
	#(352 1 #reduceActionForRaiseStatement2: 31698946 false ) 
	#(369 1 #reduceActionForVariableExpression1: 34942977 false ) 
	#(212 1 #liftFirstValue: 12210177 false ) 
	#(375 1 #liftFirstValue: 35518465 false ) 
	#(361 1 #reduceActionForExpression9: 32650249 false ) 
	#(361 1 #reduceActionForExpression9: 32650247 false ) 
	#(330 1 #reduceActionForStatement13: 29051917 false ) 
	#(330 1 #reduceActionForStatement11: 29051915 false ) 
	#(330 1 #reduceActionForStatement2: 29051906 false ) 
	#(330 1 #reduceActionForStatement3: 29051907 false ) 
	#(330 1 #reduceActionForStatement4: 29051908 false ) 
	#(330 1 #reduceActionForStatement5: 29051909 false ) 
	#(330 1 #reduceActionForStatement6: 29051910 false ) 
	#(330 1 #reduceActionForStatement7: 29051911 false ) 
	#(330 1 #reduceActionForStatement8: 29051912 false ) 
	#(330 1 #reduceActionForStatement9: 29051913 false ) 
	#(330 1 #reduceActionForStatement10: 29051914 false ) 
	#(330 1 #liftFirstValue: 29051916 false ) 
	#(358 1 #liftFirstValue: 32353282 false ) 
	#(330 1 #liftFirstValue: 29051905 false ) 
	#(361 1 #liftFirstValue: 32650243 false ) 
	#(189 0 #reduceActionForInsideGeneric1: 9020417 true ) 
	#(361 1 #liftFirstValue: 32650242 false ) 
	#(361 1 #liftFirstValue: 32650263 false ) 
	#(361 1 #liftFirstValue: 32650262 false ) 
	#(361 1 #liftFirstValue: 32650261 false ) 
	#(361 1 #liftFirstValue: 32650241 false ) 
	#(361 1 #liftFirstValue: 32650258 false ) 
	#(361 1 #reduceActionForExpression9: 32650248 false ) 
	#(361 1 #liftFirstValue: 32650246 false ) 
	#(361 1 #reduceActionForExpression9: 32650260 false ) 
	#(214 0 #reduceActionForConstantArray2: 13292546 false ) 
	#(244 1 #reduceActionForFileType2: 17813506 false ) 
	#(204 1 #liftFirstValue: 11517954 false ) 
	#(213 1 #reduceActionForVariableExpression1: 12232707 false ) 
	#(192 1 #reduceActionForVariableExpression1: 9323521 false ) 
	#(213 1 #reduceActionForExpression9: 12232711 false ) 
	#(243 1 #liftFirstValue: 17719300 false ) 
	#(243 1 #liftFirstValue: 17719297 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8453121 false ) 
	#(243 1 #liftFirstValue: 17719298 false ) 
	#(243 1 #liftFirstValue: 17719299 false ) 
	#(187 1 #liftFirstValue: 8453129 false ) 
	#(187 1 #liftFirstValue: 8453124 false ) 
	#(187 1 #liftFirstValue: 8453125 false ) 
	#(187 1 #liftFirstValue: 8453130 false ) 
	#(213 1 #reduceActionForExpression9: 12232705 false ) 
	#(211 1 #liftFirstValue: 12146689 false ) 
	#(187 1 #liftFirstValue: 8453127 false ) 
	#(187 1 #liftFirstValue: 8453123 false ) 
	#(213 1 #liftFirstValue: 12232713 false ) 
	#(213 1 #reduceActionForExpression9: 12232710 false ) 
	#(213 1 #reduceActionForExpression9: 12232706 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7440385 false ) 
	#(264 0 #reduceActionForOptionalType1: 19766273 false ) 
	#(288 1 #reduceActionForVariableNames1: 23669761 false ) 
	#(290 1 #liftFirstValue: 23825411 false ) 
	#(290 1 #liftFirstValue: 23825412 false ) 
	#(290 1 #liftFirstValue: 23825410 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6053889 false ) 
	#(193 0 #nil 9665537 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5865473 false ) 
	#(166 1 #reduceActionForUsesModule1: 5940225 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4801537 false ) 
	#(291 0 #nil 23912449 false ) 
	#(155 1 #reduceActionForMainMethod1: 4855809 false ) 
	#(361 2 #reduceActionForExpression14: 32650254 false ) 
	#(329 1 #reduceActionForVariableNames1: 28948481 false ) 
	#(285 0 #reduceActionForArgumentList1: 23401473 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29663233 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29663234 false ) 
	#(376 2 #reduceActionForInheritedFunctionCall3: 35540995 false ) 
	#(361 2 #reduceActionForExpression15: 32650255 false ) 
	#(365 2 #reduceActionForAnonymousProcedureHeader1: 34352129 false ) 
	#(353 0 #reduceActionForOptionalType1: 31807489 false ) 
	#(338 0 #nil 30407681 false ) 
	#(336 1 #reduceActionForVariableNames1: 30201857 false ) 
	#(370 2 #reduceActionForSetConstructor2: 35012610 false ) 
	#(372 1 #reduceActionForSetValue1: 35243009 false ) 
	#(371 1 #reduceActionForVariableNames1: 35142657 false ) 
	#(361 2 #reduceActionForExpression16: 32650256 false ) 
	#(361 2 #reduceActionForExpression17: 32650257 false ) 
	#(380 1 #liftFirstValue: 36239367 false ) 
	#(380 1 #liftFirstValue: 36239368 false ) 
	#(380 1 #liftFirstValue: 36239375 false ) 
	#(380 1 #liftFirstValue: 36239376 false ) 
	#(380 1 #liftFirstValue: 36239364 false ) 
	#(379 1 #liftFirstValue: 36174849 false ) 
	#(380 1 #liftFirstValue: 36239361 false ) 
	#(380 1 #liftFirstValue: 36239373 false ) 
	#(380 1 #liftFirstValue: 36239365 false ) 
	#(380 1 #liftFirstValue: 36239378 false ) 
	#(380 1 #liftFirstValue: 36239379 false ) 
	#(380 1 #liftFirstValue: 36239366 false ) 
	#(380 1 #liftFirstValue: 36239362 false ) 
	#(380 1 #liftFirstValue: 36239371 false ) 
	#(380 1 #liftFirstValue: 36239372 false ) 
	#(380 1 #liftFirstValue: 36239363 false ) 
	#(380 1 #liftFirstValue: 36239374 false ) 
	#(380 1 #liftFirstValue: 36239377 false ) 
	#(380 1 #liftFirstValue: 36239370 false ) 
	#(380 1 #liftFirstValue: 36239369 false ) 
	#(361 2 #reduceActionForExpression19: 32650259 false ) 
	#(361 2 #reduceActionForExpression13: 32650253 false ) 
	#(379 1 #liftFirstValue: 36174850 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 34067457 false ) 
	#(364 2 #reduceActionForAnonymousProcedure1: 34240513 false ) 
	#(366 2 #reduceActionForAnonymousFunction1: 34452481 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 34067458 false ) 
	#(185 1 #reduceActionForEnumName1: 8231937 false ) 
	#(184 1 #reduceActionForVariableNames1: 8159233 false ) 
	#(216 1 #reduceActionForUsesModule1: 13519873 false ) 
	#(214 1 #reduceActionForConstantArray1: 13292545 false ) 
	#(215 1 #reduceActionForUsesModuleList1: 13339649 false ) 
	#(344 0 #nil 30999553 false ) 
	#(217 1 #reduceActionForConstantArray1: 13655041 false ) 
	#(218 1 #reduceActionForVariableNames1: 13698049 false ) 
	#(213 2 #reduceActionForExpression14: 12232719 false ) 
	#(213 2 #reduceActionForExpression15: 12232716 false ) 
	#(260 0 #reduceActionForOptionalType1: 19419137 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8453131 false ) 
	#(213 2 #reduceActionForExpression16: 12232717 false ) 
	#(213 2 #reduceActionForExpression17: 12232718 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8453122 false ) 
	#(192 2 #reduceActionForNamedType3: 9323523 false ) 
	#(246 0 #reduceActionForOptionalArguments1: 18136066 false ) 
	#(237 0 #reduceActionForMethodVariables2: 16261121 false ) 
	#(287 2 #reduceActionForArgument2: 23530498 false ) 
	#(193 1 #liftFirstValue: 9665539 false ) 
	#(193 1 #liftFirstValue: 9665538 false ) 
	#(157 3 #reduceActionForPackageLine1: 4973569 false ) 
	#(164 3 #reduceActionForUsesList2: 5786626 false ) 
	#(159 1 #reduceActionForVariableNames1: 5152769 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6178817 false ) 
	#(381 0 #nil 36425729 false ) 
	#(150 3 #reduceActionForProgramFile2: 4372482 false ) 
	#(323 1 #liftFirstValue: 28368899 false ) 
	#(323 1 #liftFirstValue: 28368903 false ) 
	#(323 1 #liftFirstValue: 28368898 false ) 
	#(323 1 #liftFirstValue: 28368900 false ) 
	#(302 1 #reduceActionForProcedureDefinition2: 25583618 false ) 
	#(303 1 #reduceActionForExternalProcedureHeader1: 25750529 false ) 
	#(305 1 #reduceActionForExternalProcedureHeader1: 25948161 false ) 
	#(323 1 #liftFirstValue: 28368901 false ) 
	#(310 1 #reduceActionForFunctionDefinition2: 26626050 false ) 
	#(311 1 #reduceActionForExternalFunctionHeader1: 26787841 false ) 
	#(313 1 #reduceActionForExternalFunctionHeader1: 26980353 false ) 
	#(322 2 #reduceActionForMethodVariables1: 28297217 false ) 
	#(323 1 #liftFirstValue: 28368902 false ) 
	#(323 1 #liftFirstValue: 28368897 false ) 
	#(325 1 #reduceActionForVars1: 28607489 false ) 
	#(361 3 #reduceActionForExpression11: 32650251 false ) 
	#(358 3 #reduceActionForStatementBlock1: 32353281 false ) 
	#(285 1 #reduceActionForConstantArray1: 23401474 false ) 
	#(286 1 #reduceActionForVariableNames1: 23435265 false ) 
	#(367 3 #reduceActionForAnonymousFunctionHeader1: 34561025 false ) 
	#(352 3 #reduceActionForRaiseStatement1: 31698945 false ) 
	#(342 0 #nil 30810113 false ) 
	#(370 3 #reduceActionForSetConstructor1: 35012609 false ) 
	#(331 3 #reduceActionForPackageLine1: 29528065 false ) 
	#(331 3 #reduceActionForPackageLine1: 29528066 false ) 
	#(359 3 #reduceActionForAsmBlock1: 32457729 false ) 
	#(361 3 #reduceActionForExpression5: 32650245 false ) 
	#(378 1 #liftFirstValue: 36040705 false ) 
	#(377 1 #reduceActionForVariableNames1: 35933185 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33912834 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33912833 false ) 
	#(361 3 #reduceActionForExpression12: 32650252 false ) 
	#(374 1 #reduceActionForVariableNames1: 35430401 false ) 
	#(361 3 #reduceActionForExpression10: 32650250 false ) 
	#(183 3 #reduceActionForEnumType1: 8105985 false ) 
	#(213 3 #reduceActionForConstantExpression11: 12232715 false ) 
	#(344 1 #liftFirstValue: 30999554 false ) 
	#(244 3 #reduceActionForFileType1: 17813505 false ) 
	#(197 3 #reduceActionForSetType2: 10474498 false ) 
	#(197 3 #reduceActionForSetType1: 10474497 false ) 
	#(236 2 #reduceActionForQualifiedName1: 16060417 false ) 
	#(192 3 #reduceActionForPropertyExpression2: 9323522 false ) 
	#(228 0 #reduceActionForMethodVariables2: 15127553 false ) 
	#(227 1 #reduceActionForImplicitClassSection1: 15054849 false ) 
	#(210 3 #reduceActionForRangeType1: 12056577 false ) 
	#(220 1 #reduceActionForVariableNames1: 13957121 false ) 
	#(213 3 #reduceActionForPropertyExpression2: 12232708 false ) 
	#(213 3 #reduceActionForExpression10: 12232709 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8453128 false ) 
	#(240 3 #reduceActionForAttribute1: 17256449 false ) 
	#(181 1 #reduceActionForGenericTypeArgument1: 7686145 false ) 
	#(180 1 #reduceActionForVariableNames1: 7528449 false ) 
	#(264 2 #reduceActionForGotoStatement1: 19766274 false ) 
	#(288 3 #reduceActionForVariableNames2: 23669762 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6053890 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4684801 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4488193 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5567489 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5865474 false ) 
	#(166 3 #reduceActionForPackageLine1: 5940226 false ) 
	#(150 4 #reduceActionForProgramFile1: 4372481 false ) 
	#(154 2 #reduceActionForMethodVariables1: 4801538 false ) 
	#(158 3 #reduceActionForRequires1: 5071873 false ) 
	#(156 4 #reduceActionForPackageFile1: 4916225 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5671938 false ) 
	#(293 0 #reduceActionForMethodVariables2: 24144897 false ) 
	#(382 0 #nil 36536321 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6408193 false ) 
	#(171 1 #reduceActionForConstantValues1: 6487041 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6772737 false ) 
	#(174 1 #reduceActionForConstantValues1: 6872065 false ) 
	#(326 2 #reduceActionForVarsVars2: 28637186 false ) 
	#(327 1 #reduceActionForConstantValues1: 28725249 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7102465 false ) 
	#(177 1 #reduceActionForConstantValues1: 7183361 false ) 
	#(326 2 #reduceActionForVarsVars2: 28637185 false ) 
	#(302 2 #reduceActionForProcedureDefinition1: 25583617 false ) 
	#(279 0 #reduceActionForMethodVariables2: 21787649 false ) 
	#(310 2 #reduceActionForFunctionDefinition1: 26626049 false ) 
	#(321 3 #reduceActionForMethodComponents1: 28209153 false ) 
	#(329 3 #reduceActionForVariableNames2: 28948482 false ) 
	#(350 1 #reduceActionForBaseCaseLabel1: 31486977 false ) 
	#(351 0 #reduceActionForElseCase1: 31648769 false ) 
	#(346 1 #reduceActionForVariableNames1: 31104001 false ) 
	#(349 1 #reduceActionForVariableNames1: 31397889 false ) 
	#(348 1 #liftFirstValue: 31292417 false ) 
	#(196 3 #reduceActionForRequires1: 10409986 false ) 
	#(334 4 #reduceActionForIfStatement1: 29868033 false ) 
	#(376 4 #reduceActionForInheritedFunctionCall2: 35540994 false ) 
	#(353 2 #reduceActionForGotoStatement1: 31807490 false ) 
	#(333 4 #reduceActionForRepeatStatement1: 29764609 false ) 
	#(341 0 #nil 30734337 false ) 
	#(339 1 #reduceActionForConstantValues1: 30567425 false ) 
	#(357 4 #reduceActionForLibraryLine1: 32247809 false ) 
	#(336 3 #reduceActionForVariableNames2: 30201858 false ) 
	#(335 4 #reduceActionForRepeatStatement1: 30107649 false ) 
	#(372 3 #reduceActionForSetValue2: 35243010 false ) 
	#(371 3 #reduceActionForVariableNames2: 35142658 false ) 
	#(361 4 #reduceActionForExpression4: 32650244 false ) 
	#(373 3 #reduceActionForRequires1: 35376129 false ) 
	#(191 1 #reduceActionForVariableNames1: 9160705 false ) 
	#(190 0 #reduceActionForOutsideGeneric1: 9090049 true ) 
	#(185 3 #reduceActionForEnumName2: 8231938 false ) 
	#(219 3 #reduceActionForConstantRecordField1: 13832193 false ) 
	#(184 3 #reduceActionForVariableNames2: 8159234 false ) 
	#(216 3 #reduceActionForPackageLine1: 13519874 false ) 
	#(215 3 #reduceActionForUsesModuleList2: 13339650 false ) 
	#(213 4 #reduceActionForConstantExpression10: 12232714 false ) 
	#(218 3 #reduceActionForVariableNames2: 13698050 false ) 
	#(260 2 #reduceActionForGotoStatement1: 19419138 false ) 
	#(248 1 #liftFirstValue: 18313218 false ) 
	#(248 1 #liftFirstValue: 18313217 false ) 
	#(247 1 #reduceActionForVariableNames1: 18201601 false ) 
	#(201 4 #reduceActionForRecordType1: 11108353 false ) 
	#(203 2 #reduceActionForRecordFieldList1: 11381761 false ) 
	#(238 1 #liftFirstValue: 16341004 false ) 
	#(238 1 #liftFirstValue: 16341005 false ) 
	#(237 2 #reduceActionForMethodVariables1: 16261122 false ) 
	#(238 1 #liftFirstValue: 16341000 false ) 
	#(238 1 #liftFirstValue: 16341002 false ) 
	#(238 1 #liftFirstValue: 16341003 false ) 
	#(238 1 #liftFirstValue: 16341001 false ) 
	#(239 1 #liftFirstValue: 16863238 false ) 
	#(238 1 #liftFirstValue: 16340996 false ) 
	#(238 1 #liftFirstValue: 16340998 false ) 
	#(255 1 #liftFirstValue: 18945025 false ) 
	#(255 1 #liftFirstValue: 18945026 false ) 
	#(255 1 #liftFirstValue: 18945027 false ) 
	#(255 1 #liftFirstValue: 18945028 false ) 
	#(255 1 #liftFirstValue: 18945029 false ) 
	#(254 1 #liftFirstValue: 18872321 false ) 
	#(265 1 #reduceActionForPropertyHeader1: 19814401 false ) 
	#(254 1 #liftFirstValue: 18872322 false ) 
	#(256 1 #liftFirstValue: 19083265 false ) 
	#(256 1 #liftFirstValue: 19083266 false ) 
	#(257 1 #liftFirstValue: 19167233 false ) 
	#(257 1 #liftFirstValue: 19167234 false ) 
	#(258 1 #liftFirstValue: 19248129 false ) 
	#(258 1 #liftFirstValue: 19248130 false ) 
	#(259 1 #liftFirstValue: 19325953 false ) 
	#(259 1 #liftFirstValue: 19325954 false ) 
	#(261 1 #liftFirstValue: 19511297 false ) 
	#(261 1 #liftFirstValue: 19511298 false ) 
	#(262 1 #liftFirstValue: 19586049 false ) 
	#(262 1 #liftFirstValue: 19586050 false ) 
	#(263 1 #liftFirstValue: 19676161 false ) 
	#(263 1 #liftFirstValue: 19676162 false ) 
	#(238 1 #liftFirstValue: 16340995 false ) 
	#(213 4 #reduceActionForExpression4: 12232712 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8453126 false ) 
	#(179 3 #reduceActionForRequires1: 7440386 false ) 
	#(223 0 #reduceActionForMethodVariables2: 14725121 false ) 
	#(250 1 #liftFirstValue: 18564098 false ) 
	#(250 1 #liftFirstValue: 18564097 false ) 
	#(234 0 #reduceActionForOptionalArguments1: 15899649 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7290881 false ) 
	#(182 1 #reduceActionForUsesModule1: 7834627 false ) 
	#(182 1 #reduceActionForUsesModule1: 7834628 false ) 
	#(186 1 #liftFirstValue: 8341508 false ) 
	#(186 1 #liftFirstValue: 8341505 false ) 
	#(186 1 #liftFirstValue: 8341509 false ) 
	#(186 1 #liftFirstValue: 8341506 false ) 
	#(186 1 #liftFirstValue: 8341507 false ) 
	#(249 1 #reduceActionForInterfaceType2: 18369538 false ) 
	#(289 0 #reduceActionForOptionalType1: 23760897 false ) 
	#(384 1 #reduceActionForVariableNames1: 36750337 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4604929 false ) 
	#(159 3 #reduceActionForVariableNames2: 5152770 false ) 
	#(160 3 #reduceActionForUsesList2: 5262337 false ) 
	#(385 2 #reduceActionForGotoStatement1: 36841473 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6178818 false ) 
	#(169 1 #liftFirstValue: 6273027 false ) 
	#(169 1 #liftFirstValue: 6273026 false ) 
	#(169 1 #liftFirstValue: 6273025 false ) 
	#(169 1 #liftFirstValue: 6273028 false ) 
	#(169 1 #liftFirstValue: 6273029 false ) 
	#(169 1 #liftFirstValue: 6273030 false ) 
	#(292 0 #nil 24058881 false ) 
	#(381 2 #reduceActionForInitializationSection2: 36425730 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6487042 false ) 
	#(324 3 #reduceActionForLabels1: 28515329 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6872066 false ) 
	#(327 2 #reduceActionForMethodVariables1: 28725250 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7183362 false ) 
	#(283 2 #reduceActionForExternalMethodModifier1: 22458369 false ) 
	#(283 2 #reduceActionForExternalMethodModifier6: 22458374 false ) 
	#(304 3 #reduceActionForExternalProcedureHeaderVars1: 25830401 false ) 
	#(312 3 #reduceActionForExternalFunctionHeaderVars1: 26864641 false ) 
	#(345 2 #reduceActionForCaseOptionList1: 31051777 false ) 
	#(356 1 #liftFirstValue: 32215042 false ) 
	#(356 1 #liftFirstValue: 32215041 false ) 
	#(286 3 #reduceActionForVariableNames2: 23435266 false ) 
	#(376 5 #reduceActionForInheritedFunctionCall1: 35540993 false ) 
	#(338 3 #reduceActionForExcept3: 30407683 false ) 
	#(339 2 #reduceActionForMethodVariables1: 30567426 false ) 
	#(338 3 #reduceActionForExcept2: 30407682 false ) 
	#(342 2 #reduceActionForFinally2: 30810114 false ) 
	#(337 5 #reduceActionForTryStatement1: 30307329 false ) 
	#(377 3 #reduceActionForVariableNames2: 35933186 false ) 
	#(378 3 #reduceActionForMethodArgument2: 36040706 false ) 
	#(374 3 #reduceActionForVariableNames2: 35430402 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType1: 9742337 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType2: 9742338 false ) 
	#(197 5 #reduceActionForSetType3: 10474499 false ) 
	#(236 4 #reduceActionForQualifiedName2: 16060418 false ) 
	#(246 3 #reduceActionForRequires1: 18136065 false ) 
	#(245 5 #reduceActionForArrayType2: 17925122 false ) 
	#(245 5 #reduceActionForArrayType1: 17925121 false ) 
	#(203 3 #reduceActionForRecordFieldList2: 11381762 false ) 
	#(228 2 #reduceActionForMethodVariables1: 15127554 false ) 
	#(229 1 #liftFirstValue: 15190017 false ) 
	#(229 1 #liftFirstValue: 15190018 false ) 
	#(229 1 #liftFirstValue: 15190019 false ) 
	#(229 1 #liftFirstValue: 15190020 false ) 
	#(267 2 #reduceActionForClassPropertyHeader1: 20072449 false ) 
	#(308 2 #reduceActionForExternalClassProcedureHeader1: 26396673 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26508289 false ) 
	#(316 2 #reduceActionForExternalClassFunctionHeader1: 27429889 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27538433 false ) 
	#(238 2 #reduceActionForNewClassComponent2: 16340994 false ) 
	#(301 0 #reduceActionForOptionalType1: 25535489 false ) 
	#(269 0 #nil 20495361 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16340997 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16340999 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16863233 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16863234 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16863235 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16863236 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16863237 false ) 
	#(220 3 #reduceActionForVariableNames2: 13957122 false ) 
	#(181 3 #reduceActionForGenericTypeArgument2: 7686146 false ) 
	#(180 3 #reduceActionForVariableNames2: 7528450 false ) 
	#(182 2 #reduceActionForDefinedType2: 7834626 false ) 
	#(251 0 #nil 18619393 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7290882 false ) 
	#(226 0 #nil 14994433 false ) 
	#(287 5 #reduceActionForArgument1: 23530497 false ) 
	#(383 3 #reduceActionForExportsDefinition1: 36639745 false ) 
	#(294 1 #liftFirstValue: 24204298 false ) 
	#(294 1 #liftFirstValue: 24204299 false ) 
	#(294 1 #liftFirstValue: 24204296 false ) 
	#(291 4 #reduceActionForImplementationSection2: 23912450 false ) 
	#(293 2 #reduceActionForMethodVariables1: 24144898 false ) 
	#(294 1 #liftFirstValue: 24204289 false ) 
	#(295 1 #reduceActionForConstructorDefinition2: 24492034 false ) 
	#(294 1 #liftFirstValue: 24204290 false ) 
	#(298 1 #reduceActionForDestructorDefinition2: 25021442 false ) 
	#(294 1 #liftFirstValue: 24204291 false ) 
	#(294 1 #liftFirstValue: 24204292 false ) 
	#(307 1 #reduceActionForClassProcedureDefinition2: 26204162 false ) 
	#(294 1 #liftFirstValue: 24204293 false ) 
	#(294 1 #liftFirstValue: 24204294 false ) 
	#(315 1 #reduceActionForClassFunctionDefinition2: 27242498 false ) 
	#(294 1 #liftFirstValue: 24204295 false ) 
	#(318 1 #reduceActionForClassOperatorDefinition2: 27653122 false ) 
	#(294 1 #liftFirstValue: 24204297 false ) 
	#(294 1 #liftFirstValue: 24204300 false ) 
	#(382 2 #reduceActionForFinalizationSection2: 36536322 false ) 
	#(161 6 #reduceActionForUnitFile1: 5345281 false ) 
	#(280 0 #reduceActionForMethodVariables2: 21858305 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22458372 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22458370 false ) 
	#(284 1 #liftFirstValue: 23112715 false ) 
	#(284 1 #liftFirstValue: 23112709 false ) 
	#(284 1 #liftFirstValue: 23112718 false ) 
	#(284 1 #liftFirstValue: 23112713 false ) 
	#(284 1 #liftFirstValue: 23112719 false ) 
	#(284 1 #liftFirstValue: 23112722 false ) 
	#(284 1 #liftFirstValue: 23112717 false ) 
	#(284 1 #liftFirstValue: 23112725 false ) 
	#(284 1 #liftFirstValue: 23112724 false ) 
	#(284 1 #liftFirstValue: 23112723 false ) 
	#(284 1 #liftFirstValue: 23112716 false ) 
	#(284 1 #liftFirstValue: 23112705 false ) 
	#(284 1 #liftFirstValue: 23112706 false ) 
	#(284 1 #liftFirstValue: 23112710 false ) 
	#(284 1 #liftFirstValue: 23112721 false ) 
	#(284 1 #liftFirstValue: 23112708 false ) 
	#(284 1 #liftFirstValue: 23112711 false ) 
	#(284 1 #liftFirstValue: 23112726 false ) 
	#(284 1 #liftFirstValue: 23112720 false ) 
	#(284 1 #liftFirstValue: 23112707 false ) 
	#(284 1 #liftFirstValue: 23112714 false ) 
	#(284 1 #liftFirstValue: 23112712 false ) 
	#(279 2 #reduceActionForMethodVariables1: 21787650 false ) 
	#(281 1 #liftFirstValue: 21961729 false ) 
	#(281 1 #liftFirstValue: 21961730 false ) 
	#(350 3 #reduceActionForBaseCaseLabel2: 31486978 false ) 
	#(351 2 #reduceActionForElseCase2: 31648770 false ) 
	#(343 6 #reduceActionForCaseStatement1: 30877697 false ) 
	#(346 3 #reduceActionForVariableNames2: 31104002 false ) 
	#(347 3 #reduceActionForCaseOption1: 31206401 false ) 
	#(349 3 #reduceActionForVariableNames2: 31397890 false ) 
	#(348 3 #reduceActionForCaseLabel2: 31292418 false ) 
	#(355 6 #reduceActionForForInStatement1: 32068609 false ) 
	#(334 6 #reduceActionForForInStatement1: 29868034 false ) 
	#(368 6 #reduceActionForMemExpression1: 34670593 false ) 
	#(368 6 #reduceActionForMemExpression1: 34670594 false ) 
	#(341 2 #reduceActionForPossibleExceptElse2: 30734338 false ) 
	#(191 3 #reduceActionForVariableNames2: 9160706 false ) 
	#(188 5 #reduceActionForInstantiatedGenericTypeArguments1: 8889345 false ) 
	#(202 6 #reduceActionForRecordHelperType1: 11213825 false ) 
	#(199 1 #reduceActionForVariableNames1: 10908673 false ) 
	#(198 3 #reduceActionForTwoItemSetNameList1: 10752001 false ) 
	#(247 3 #reduceActionForVariableNames2: 18201602 false ) 
	#(230 2 #reduceActionForPrivateClassSection2: 15303682 false ) 
	#(231 2 #reduceActionForProtectedClassSection2: 15496194 false ) 
	#(232 2 #reduceActionForPublicClassSection1: 15703041 false ) 
	#(233 2 #reduceActionForPublishedClassSection1: 15795201 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24669185 false ) 
	#(299 3 #reduceActionForExternalConstructorHeader1: 25193473 false ) 
	#(319 3 #reduceActionForExternalConstructorHeader1: 27840513 false ) 
	#(200 3 #reduceActionForMetaclassType1: 11012097 false ) 
	#(224 1 #liftFirstValue: 14799873 false ) 
	#(224 1 #liftFirstValue: 14799874 false ) 
	#(223 2 #reduceActionForMethodVariables1: 14725122 false ) 
	#(221 3 #reduceActionForNewClassType2: 14076930 false ) 
	#(235 1 #reduceActionForVariableNames1: 15961089 false ) 
	#(182 3 #reduceActionForPackageLine1: 7834629 false ) 
	#(182 3 #reduceActionForPackageLine1: 7834625 false ) 
	#(252 0 #reduceActionForMethodVariables2: 18695169 false ) 
	#(226 1 #liftFirstValue: 14994434 false ) 
	#(289 2 #reduceActionForGotoStatement1: 23760898 false ) 
	#(328 6 #reduceActionForVariable1: 28824577 false ) 
	#(384 3 #reduceActionForVariableNames2: 36750338 false ) 
	#(292 2 #reduceActionForImplementationCode2: 24058882 false ) 
	#(295 2 #reduceActionForConstructorDefinition1: 24492033 false ) 
	#(298 2 #reduceActionForDestructorDefinition1: 25021441 false ) 
	#(307 2 #reduceActionForClassProcedureDefinition1: 26204161 false ) 
	#(315 2 #reduceActionForClassFunctionDefinition1: 27242497 false ) 
	#(318 2 #reduceActionForClassOperatorDefinition1: 27653121 false ) 
	#(306 5 #reduceActionForNonExternalProcedureHeaderVars1: 26034177 false ) 
	#(282 2 #reduceActionForExternalMethodModifier6: 22036481 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType1: 10054657 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType2: 10054658 false ) 
	#(230 3 #reduceActionForPrivateClassSection1: 15303681 false ) 
	#(231 3 #reduceActionForProtectedClassSection1: 15496193 false ) 
	#(301 2 #reduceActionForGotoStatement1: 25535490 false ) 
	#(268 0 #reduceActionForPropertyValues1: 20164609 false ) 
	#(234 3 #reduceActionForRequires1: 15899650 false ) 
	#(172 7 #reduceActionForConstantValue1: 6582273 false ) 
	#(314 6 #reduceActionForNonExternalFunctionHeaderVars1: 27063297 false ) 
	#(280 2 #reduceActionForMethodVariables1: 21858306 false ) 
	#(175 5 #reduceActionForResource1: 6946817 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22458373 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22458371 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier2: 22036482 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22036484 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22036483 false ) 
	#(354 8 #reduceActionForForStatement1: 31875073 false ) 
	#(340 5 #reduceActionForOnDo1: 30631937 false ) 
	#(199 3 #reduceActionForVariableNames2: 10908674 false ) 
	#(297 5 #reduceActionForNonExternalConstructorHeader1: 24805377 false ) 
	#(300 5 #reduceActionForNonExternalDestructorHeader1: 25326593 false ) 
	#(241 5 #reduceActionForInterfaceFunctionAssignment1: 17343489 false ) 
	#(242 5 #reduceActionForInterfaceProcedureAssignment1: 17526785 false ) 
	#(269 3 #reduceActionForPropertyArrayAccessors2: 20495362 false ) 
	#(238 5 #reduceActionForNewClassComponent1: 16340993 false ) 
	#(235 3 #reduceActionForVariableNames2: 15961090 false ) 
	#(225 5 #reduceActionForOldClassType1: 14844929 false ) 
	#(251 3 #reduceActionForGuid2: 18619394 false ) 
	#(249 5 #reduceActionForInterfaceType1: 18369537 false ) 
	#(252 2 #reduceActionForMethodVariables1: 18695170 false ) 
	#(253 1 #liftFirstValue: 18787330 false ) 
	#(253 1 #liftFirstValue: 18787329 false ) 
	#(206 1 #reduceActionForVariableNames1: 11716609 false ) 
	#(208 1 #reduceActionForVariableNames1: 11931649 false ) 
	#(209 1 #liftFirstValue: 12018689 false ) 
	#(297 6 #reduceActionForNonExternalConstructorHeader2: 24805378 false ) 
	#(300 6 #reduceActionForNonExternalDestructorHeader2: 25326594 false ) 
	#(274 1 #reduceActionForPropertyDefault2: 21170178 false ) 
	#(274 1 #reduceActionForPropertyDefault3: 21170179 false ) 
	#(278 0 #nil 21687297 false ) 
	#(268 2 #reduceActionForPropertyValues2: 20164610 false ) 
	#(268 2 #reduceActionForCaseOptionList1: 20164611 false ) 
	#(268 2 #reduceActionForPropertyValues4: 20164612 false ) 
	#(268 2 #reduceActionForPropertyValues8: 20164616 false ) 
	#(268 2 #reduceActionForPropertyValues5: 20164613 false ) 
	#(268 2 #reduceActionForPropertyValues7: 20164615 false ) 
	#(268 2 #reduceActionForPropertyValues6: 20164614 false ) 
	#(222 6 #reduceActionForClassHelperType2: 14309378 false ) 
	#(221 6 #reduceActionForNewClassType1: 14076929 false ) 
	#(205 6 #reduceActionForVariantRecordPart1: 11567105 false ) 
	#(320 7 #reduceActionForNonExternalClassOperatorHeader1: 27982849 false ) 
	#(274 2 #reduceActionForPropertyDefault1: 21170177 false ) 
	#(273 2 #reduceActionForPropertyDispid1: 20857857 false ) 
	#(276 1 #reduceActionForVariableNames1: 21478401 false ) 
	#(275 2 #reduceActionForPropertyImplements1: 21373953 false ) 
	#(270 2 #reduceActionForPropertyIndex1: 20592641 false ) 
	#(271 2 #reduceActionForPropertyReader1: 20685825 false ) 
	#(277 2 #reduceActionForPropertyStored1: 21598209 false ) 
	#(272 2 #reduceActionForPropertyWriter1: 20770817 false ) 
	#(266 7 #reduceActionForPropertyHeaderVars1: 19874817 false ) 
	#(206 3 #reduceActionForVariableNames2: 11716610 false ) 
	#(208 3 #reduceActionForVariableNames2: 11931650 false ) 
	#(273 3 #reduceActionForPropertyDispid2: 20857858 false ) 
	#(273 3 #reduceActionForPropertyDispid3: 20857859 false ) 
	#(278 2 #reduceActionForPropertyModifiers2: 21687298 false ) 
	#(276 3 #reduceActionForVariableNames2: 21478402 false ) 
	#(222 9 #reduceActionForClassHelperType1: 14309377 false ) 
	#(207 5 #reduceActionForVariantType1: 11831297 false )
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
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 33 0 66 0 37 0 84 0 6 0 89 0 41 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 45 0 119 0 49 0 122 0 6 0 123 0 53 0 149 0 57 0 150 0 61 0 151 0 65 0 152 0 69 0 153 0 73 0 156 0 77 0 157 0 81 0 161 0 85 0 162 0 89 0 164] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 0 197 1 102 0 197 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 173 0 183 1 125 0 187 1 129 0 192 1 173 0 194 1 173 0 195 1 125 0 197 1 125 0 201 1 125 0 202 1 153 0 204 1 125 0 210 1 161 0 211 1 165 0 212 1 169 0 213 1 173 0 243 1 125 0 244 1 125 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 1 197 0 130 1 201 0 139 1 205 0 178 1 209 0 240] 
#[1 1 213 0 139 1 217 0 172] 
#[1 1 221 0 139 1 225 1 32 1 229 1 72] 
#[1 1 249 0 27 1 249 0 81 1 249 0 123 0 22 0 139 1 245 1 31 1 249 1 34] 
#[1 1 253 0 139 2 1 0 167] 
#[1 1 253 0 139 2 5 0 167] 
#[1 1 253 0 139 2 9 0 167] 
#[1 1 253 0 139 2 13 0 167] 
#[1 1 253 0 139 2 17 0 165 2 21 0 166 2 25 0 167] 
#[0 0 0 1 131] 
#[0 0 26 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 49 0 122 0 6 0 123 2 29 0 164] 
#[0 0 30 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 49 0 122 0 6 0 123 2 33 0 164] 
#[0 0 34 1 131] 
#[1 2 37 0 103 2 41 0 158] 
#[0 0 38 1 131] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 2 45 0 63 2 49 0 163 0 46 1 131] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 53 0 155 2 57 1 65 2 61 1 66] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 69 1 105 1 5 1 106 2 69 1 107 2 69 1 108 1 17 1 109 2 69 1 110 1 25 1 111 2 69 1 112 1 33 1 113 2 69 1 114 1 41 1 119 2 69 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 73 1 105 1 5 1 106 2 73 1 107 2 73 1 108 1 17 1 109 2 73 1 110 1 25 1 111 2 73 1 112 1 33 1 113 2 73 1 114 1 41 1 119 2 73 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 77 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 85 1 105 1 5 1 106 2 85 1 107 2 85 1 108 1 17 1 109 2 85 1 110 1 25 1 111 2 85 1 112 1 33 1 113 2 85 1 114 1 41 1 119 2 85 1 120 1 49 1 130] 
#[1 2 65 0 139 2 89 1 113] 
#[1 2 93 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 2 97 0 196] 
#[1 2 101 0 139 2 105 0 141] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 109 1 105 1 5 1 106 2 109 1 107 2 109 1 108 1 17 1 109 2 109 1 110 1 25 1 111 2 109 1 112 1 33 1 113 2 109 1 114 1 41 1 119 2 109 1 120 1 49 1 130] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 74 0 58 0 77 0 58 0 78 0 58 0 80 0 58 0 96 0 58 0 97 0 58 0 108 0 58 0 109 0 58 0 112 0 58 0 114 0 58 0 116 0 58 0 121 0 58 0 127 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 2 113 0 139 0 58 1 131] 
#[0 2 117 0 130] 
#[0 2 121 0 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 125 1 105 1 5 1 106 2 125 1 107 2 125 1 108 1 17 1 109 2 125 1 110 1 25 1 111 2 125 1 112 1 33 1 113 2 125 1 114 1 41 1 119 2 125 1 120 1 49 1 130] 
#[1 2 93 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 2 129 0 196] 
#[1 0 93 0 2 0 97 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 113 0 52 0 125 0 60 0 62 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 62 0 78 0 141 0 89 0 62 0 121 0 165 0 130 0 169 0 135 0 173 0 136 0 62 0 137 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 133 1 105 1 5 1 106 2 133 1 107 2 133 1 108 1 17 1 109 2 133 1 110 1 25 1 111 2 133 1 112 1 33 1 113 2 133 1 114 1 41 1 119 2 133 1 120 1 49 1 130 0 62 1 131] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 137 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 141 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 145 1 105 1 5 1 106 2 145 1 107 2 145 1 108 1 17 1 109 2 145 1 110 1 25 1 111 2 145 1 112 1 33 1 113 2 145 1 114 1 41 1 119 2 145 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 149 1 80 2 153 1 105 1 5 1 106 2 153 1 107 2 153 1 108 1 17 1 109 2 153 1 110 1 25 1 111 2 153 1 112 1 33 1 113 2 153 1 114 1 41 1 119 2 153 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 2 157 0 131 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 161 1 105 1 5 1 106 2 161 1 107 2 161 1 108 1 17 1 109 2 161 1 110 1 25 1 111 2 161 1 112 1 33 1 113 2 161 1 114 2 165 1 115 2 169 1 116 1 41 1 119 2 161 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 173 1 105 1 5 1 106 2 173 1 107 2 173 1 108 1 17 1 109 2 173 1 110 1 25 1 111 2 173 1 112 1 33 1 113 2 173 1 114 1 41 1 119 2 173 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 177 1 105 1 5 1 106 2 177 1 107 2 177 1 108 1 17 1 109 2 177 1 110 1 25 1 111 2 177 1 112 1 33 1 113 2 177 1 114 1 41 1 119 2 177 1 120 1 49 1 130] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 181 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 131] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 2 185 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 78 0 70 0 80 0 70 0 108 0 70 0 109 0 70 0 121 0 70 0 129 0 70 0 130 0 70 0 132 0 70 0 133 0 70 0 135 0 70 0 136 0 70 0 137 0 70 0 138 0 70 1 131] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 0 1 131] 
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
#[0 0 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 189 0 21] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 3 41 0 58 0 138 0 61 3 41 0 64 3 41 0 71 0 138 0 78 3 41 0 80 3 41 0 108 3 41 0 109 0 138 0 121 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 0 138 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 0 138 1 131] 
#[1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 11 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 18 0 142 0 20 0 142 0 30 0 142 0 33 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 48 0 142 0 49 0 142 0 57 0 142 0 58 0 142 0 59 0 142 0 61 0 142 0 64 0 142 0 71 0 142 0 74 0 142 0 77 0 142 0 78 0 142 0 80 0 142 0 96 0 142 0 97 0 142 0 108 0 142 0 109 0 142 0 112 0 142 0 114 0 142 0 116 0 142 0 121 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 132 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 137 0 142 0 138 3 49 0 188 3 53 0 189 0 142 1 131] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 3 57 1 65 2 61 1 66] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 3 61 1 65 2 61 1 66] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 15 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 18 0 166 0 20 0 166 0 30 0 166 0 33 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 48 0 166 0 49 0 166 0 57 0 166 0 58 0 166 0 59 0 166 0 61 0 166 0 64 0 166 0 71 0 166 0 74 0 166 0 77 0 166 0 78 0 166 0 80 0 166 0 96 0 166 0 97 0 166 0 108 0 166 0 109 0 166 0 112 0 166 0 114 0 166 0 116 0 166 0 121 0 166 0 127 0 166 0 128 0 166 0 129 0 166 0 130 0 166 0 131 0 166 0 132 0 166 0 133 0 166 0 134 0 166 0 135 0 166 0 136 0 166 0 137 0 166 0 138 3 65 0 188 3 53 0 189 0 166 1 131] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 69 0 2 0 186 0 3 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 73 0 139 3 77 0 140 1 165 0 141 1 189 0 143 1 117 0 147 3 81 0 184 3 85 0 185 1 165 0 212 3 89 0 213 3 93 0 214 3 97 0 215 3 101 0 216 3 105 0 217 3 109 0 218 3 113 0 219 3 89 1 114 1 189 1 119 1 193 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 3 121 0 213 3 121 1 114 1 189 1 119 1 193 1 130] 
#[1 0 190 0 3 0 190 0 5 0 190 0 14 0 190 0 16 0 190 0 21 0 190 0 23 0 190 0 27 0 190 0 30 0 190 0 31 0 190 0 33 0 190 0 36 0 190 0 52 0 190 0 57 0 190 0 59 0 190 0 65 0 190 0 74 3 125 0 77 0 190 0 87 0 190 0 89 0 190 0 96 0 190 0 97 0 190 0 104 0 190 0 112 0 190 0 115 0 190 0 118 0 190 0 123 0 190 0 127 0 190 0 128 0 190 0 130 0 190 0 131 0 190 0 132 0 190 0 137 0 190 1 131] 
#[1 2 93 0 2 0 54 0 9 3 129 0 196] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 3 133 0 213 3 133 1 114 1 189 1 119 1 193 1 130] 
#[0 0 194 0 19 0 98] 
#[1 2 93 0 2 0 54 0 77 0 54 0 137 3 137 0 196] 
#[0 3 141 0 54] 
#[0 3 145 0 116] 
#[0 3 149 0 77] 
#[1 3 153 0 139 3 157 0 236] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 3 161 0 213 3 161 1 114 1 189 1 119 1 193 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 3 165 0 213 3 165 1 114 1 189 1 119 1 193 1 130] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 3 173 0 183 3 173 0 187 1 129 0 192 3 173 0 194 3 173 0 195 3 173 0 197 3 173 0 201 3 173 0 202 1 153 0 204 3 173 0 210 1 161 0 211 1 165 0 212 1 169 0 213 3 173 0 243 3 173 0 244 3 173 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 0 198 0 2 0 202 0 3 0 198 0 4 0 202 0 5 0 19 0 6 0 198 0 7 0 198 0 8 0 19 0 11 0 198 0 12 0 198 0 13 0 202 0 14 0 202 0 16 0 198 0 18 0 198 0 20 0 202 0 21 0 202 0 23 0 202 0 27 0 202 0 30 0 202 0 31 0 202 0 33 0 198 0 35 0 202 0 36 0 202 0 52 0 202 0 57 0 198 0 58 0 202 0 59 0 198 0 64 0 202 0 65 0 198 0 71 0 202 0 74 0 202 0 77 0 198 0 80 0 202 0 87 0 202 0 89 0 202 0 96 0 202 0 97 0 202 0 104 0 198 0 108 0 198 0 109 0 202 0 112 0 202 0 115 0 202 0 118 0 202 0 123 0 202 0 127 0 202 0 128 0 198 0 129 0 202 0 130 0 202 0 131 0 19 0 132 0 198 0 133 0 198 0 135 0 198 0 136 0 202 0 137 0 202 1 131] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 0 214 0 16 0 214 0 130 0 0 1 131] 
#[1 0 218 0 3 0 218 0 5 3 177 0 6 0 146 0 11 0 218 0 14 0 218 0 16 0 218 0 21 0 218 0 23 0 218 0 27 0 218 0 30 0 218 0 31 0 218 0 33 0 218 0 36 0 218 0 52 0 218 0 57 0 218 0 59 0 218 0 65 0 218 0 74 0 218 0 77 0 218 0 87 0 218 0 89 0 218 0 96 0 218 0 97 0 218 0 104 0 218 0 112 0 218 0 115 0 218 0 118 0 218 0 123 0 218 0 127 0 218 0 128 0 218 0 130 0 218 0 131 0 218 0 132 0 218 0 137 3 181 0 188 3 53 0 189 0 218 1 131] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 238 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 185 0 19 3 189 0 98] 
#[0 0 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 3 193 0 7] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 197 0 2 0 250 0 3 3 205 0 4 0 250 0 5 3 201 0 6 0 250 0 7 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 0 250 0 14 0 250 0 16 3 205 0 18 3 205 0 20 0 250 0 21 0 250 0 23 0 250 0 27 0 250 0 30 0 250 0 31 0 250 0 33 3 205 0 35 0 250 0 36 0 250 0 52 0 250 0 57 3 205 0 58 0 250 0 59 3 205 0 64 0 250 0 65 3 205 0 71 0 250 0 74 0 250 0 77 3 205 0 80 0 250 0 87 0 250 0 89 0 250 0 96 0 250 0 97 0 250 0 104 3 205 0 108 3 205 0 109 0 250 0 112 0 250 0 115 0 250 0 118 0 250 0 123 0 250 0 127 0 250 0 128 3 205 0 129 0 250 0 130 0 250 0 131 0 23 0 132 3 205 0 133 3 205 0 135 3 205 0 136 0 250 0 137 3 205 1 124 0 250 1 131] 
#[1 3 209 0 16 3 213 0 130] 
#[0 0 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 1 2 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 3 217 0 213 3 217 1 114 1 189 1 119 1 193 1 130] 
#[1 3 221 0 11 1 18 0 14 3 225 0 179] 
#[0 0 0 1 131] 
#[0 3 229 0 139] 
#[1 3 233 0 9 1 22 0 14 3 237 1 8] 
#[0 0 0 1 131] 
#[0 1 26 0 3 0 5 0 9 0 131 0 137 1 131] 
#[1 3 241 0 5 3 245 0 9] 
#[0 0 0 1 131] 
#[0 1 30 0 139] 
#[0 1 34 0 139] 
#[0 1 38 0 139] 
#[0 0 0 1 131] 
#[1 1 221 0 139 3 249 1 32] 
#[0 1 42 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 3 253 0 6 4 9 0 31 4 9 0 87 1 46 0 137 4 9 0 193] 
#[1 3 253 0 6 4 13 0 137] 
#[1 3 253 0 6 4 17 0 31 4 17 0 87 1 46 0 137 4 17 0 193] 
#[1 3 253 0 6 4 21 0 31 4 21 0 87 1 46 0 137 4 21 0 193] 
#[1 4 25 0 5 4 29 0 137] 
#[0 1 50 0 5 0 137] 
#[1 1 54 0 5 3 253 0 6 4 33 0 58 1 54 0 137] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 4 37 0 155 2 57 1 65 2 61 1 66] 
#[1 1 58 0 21 1 58 0 23 1 58 0 27 1 58 0 43 1 58 0 52 1 58 0 65 1 58 0 89 1 58 0 104 1 58 0 115 1 58 0 118 1 58 0 123 4 41 0 154] 
#[1 1 253 0 139 4 45 0 159 4 49 0 167] 
#[1 4 53 0 29 4 57 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 49 0 122 0 6 0 123 4 61 0 164] 
#[1 1 62 0 40 1 62 0 48 4 65 0 56 1 62 0 61 4 69 1 35] 
#[0 4 73 0 6] 
#[0 1 66 0 6] 
#[1 0 10 0 21 0 101 0 23 4 77 0 27 4 81 0 52 4 85 0 65 4 89 0 89 4 93 0 104 4 97 0 115 4 101 0 118 4 105 0 123 4 161 0 170 4 161 0 173 4 161 0 176 4 161 1 46 4 125 1 47 4 129 1 48 4 133 1 49 4 137 1 50 4 161 1 54 4 145 1 55 4 149 1 56 4 153 1 57 4 157 1 58 4 161 1 67 4 161 1 68 4 161 1 69 4 173 1 70 4 177 1 102 4 177 1 103 0 253 1 104] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 193 0 2 4 181 0 3 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 2 193 0 2 1 70 0 3 1 70 0 4 1 70 0 5 2 201 0 6 1 70 0 7 1 70 0 8 1 70 0 9 1 70 0 10 0 27 0 11 0 31 0 12 0 35 0 13 0 39 0 14 1 70 0 18 1 70 0 20 1 70 0 30 1 70 0 33 1 70 0 35 1 70 0 36 1 70 0 37 1 70 0 39 1 70 0 40 1 70 0 41 1 70 0 48 1 70 0 49 1 70 0 57 0 43 0 58 1 70 0 59 1 70 0 61 1 70 0 64 1 70 0 71 1 70 0 74 1 70 0 77 1 70 0 78 1 70 0 80 1 70 0 96 1 70 0 97 1 70 0 108 1 70 0 109 1 70 0 112 1 70 0 114 1 70 0 116 1 70 0 121 1 70 0 127 1 70 0 128 1 70 0 129 3 13 0 130 1 70 0 131 0 47 0 132 0 51 0 133 1 70 0 134 1 70 0 135 1 70 0 136 1 70 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 1 70 1 131] 
#[1 4 185 0 40 4 189 0 137] 
#[0 1 74 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 4 193 0 77 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 4 197 0 10 4 201 0 58] 
#[1 1 78 0 3 1 249 0 27 1 249 0 81 1 249 0 123 0 22 0 139 4 205 1 29 4 209 1 30 4 213 1 31 1 249 1 34] 
#[1 3 233 0 9 1 22 0 21 1 22 0 23 1 22 0 27 1 22 0 52 1 22 0 65 1 22 0 89 1 22 0 104 1 22 0 115 1 22 0 118 1 22 0 123 4 217 1 8] 
#[0 1 82 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 1 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 4 221 0 114 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 4 225 0 2 1 90 0 3 1 90 0 4 1 90 0 5 1 90 0 6 1 90 0 7 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 11 1 90 0 12 1 90 0 13 1 90 0 14 1 90 0 18 1 90 0 20 1 90 0 30 1 90 0 33 1 90 0 35 1 90 0 36 1 90 0 37 1 90 0 39 1 90 0 40 1 90 0 41 1 90 0 48 1 90 0 49 1 90 0 57 1 90 0 58 1 90 0 59 1 90 0 61 1 90 0 64 1 90 0 71 1 90 0 74 1 90 0 77 1 90 0 78 1 90 0 80 1 90 0 96 1 90 0 97 1 90 0 108 1 90 0 109 1 90 0 112 1 90 0 114 1 90 0 116 1 90 0 121 1 90 0 127 1 90 0 128 1 90 0 129 1 90 0 130 1 90 0 131 1 90 0 132 1 90 0 133 1 90 0 134 1 90 0 135 1 90 0 136 1 90 0 137 1 90 0 138 1 90 1 131] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 4 229 1 105 1 5 1 106 4 229 1 107 4 229 1 108 1 17 1 109 4 229 1 110 1 25 1 111 4 229 1 112 1 33 1 113 4 229 1 114 1 41 1 119 4 229 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 4 233 1 105 1 5 1 106 4 233 1 107 4 233 1 108 1 17 1 109 4 233 1 110 1 25 1 111 4 233 1 112 1 33 1 113 4 233 1 114 1 41 1 119 4 233 1 120 1 49 1 130] 
#[1 2 193 0 2 1 94 0 3 3 41 0 4 1 94 0 5 2 201 0 6 1 94 0 7 3 41 0 8 1 94 0 9 2 209 0 10 0 55 0 11 0 59 0 12 0 63 0 13 0 67 0 14 3 41 0 18 3 41 0 20 1 94 0 30 1 94 0 33 3 41 0 35 1 94 0 36 1 94 0 37 1 94 0 39 1 94 0 40 1 94 0 41 1 94 0 48 1 94 0 49 1 94 0 57 0 71 0 58 1 94 0 59 1 94 0 61 3 41 0 64 3 41 0 71 1 94 0 74 1 94 0 77 1 94 0 78 3 41 0 80 1 94 0 96 1 94 0 97 3 41 0 108 3 41 0 109 1 94 0 112 1 94 0 114 1 94 0 116 1 94 0 121 1 94 0 127 1 94 0 128 3 41 0 129 3 13 0 130 1 94 0 131 0 75 0 132 0 79 0 133 1 94 0 134 3 41 0 135 3 41 0 136 1 94 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 1 94 1 131] 
#[0 1 98 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 48 1 102 0 49 3 41 0 58 1 102 0 61 3 41 0 64 3 41 0 71 1 102 0 78 3 41 0 80 3 41 0 108 3 41 0 109 1 102 0 121 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 4 237 0 134 3 41 0 135 3 41 0 136 1 102 0 137 3 33 0 138 4 241 1 97 3 37 1 117 3 41 1 123 3 41 1 124 1 102 1 131] 
#[1 4 245 0 121 4 189 0 137] 
#[1 1 106 0 40 4 249 0 41 1 106 0 49 4 189 0 137 4 253 1 82] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 5 1 0 36 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 5 5 0 5 5 9 0 36] 
#[1 2 193 0 2 3 41 0 4 1 110 0 5 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 1 110 0 36 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 193 0 2 3 41 0 4 1 118 0 5 2 201 0 6 5 13 0 7 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 1 118 0 131 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 5 17 0 5 5 21 0 131] 
#[0 1 122 0 5 0 131] 
#[1 2 193 0 2 1 126 0 3 3 41 0 4 1 126 0 5 2 201 0 6 1 126 0 7 3 41 0 8 1 126 0 9 1 126 0 10 0 83 0 11 0 87 0 12 0 91 0 13 0 95 0 14 1 126 0 18 1 126 0 20 1 126 0 30 1 126 0 33 3 41 0 35 1 126 0 36 1 126 0 37 1 126 0 39 1 126 0 40 1 126 0 41 1 126 0 48 1 126 0 49 1 126 0 57 0 99 0 58 1 126 0 59 1 126 0 61 1 126 0 64 3 41 0 71 1 126 0 74 1 126 0 77 1 126 0 78 1 126 0 80 1 126 0 96 1 126 0 97 3 41 0 108 3 41 0 109 1 126 0 112 1 126 0 114 1 126 0 116 1 126 0 121 1 126 0 127 1 126 0 128 1 126 0 129 3 13 0 130 1 126 0 131 0 103 0 132 0 107 0 133 1 126 0 134 1 126 0 135 1 126 0 136 1 126 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 1 126 1 131] 
#[1 2 193 0 2 1 130 0 3 3 41 0 4 1 130 0 5 2 201 0 6 1 130 0 7 3 41 0 8 1 130 0 9 1 130 0 10 0 111 0 11 0 115 0 12 0 119 0 13 0 123 0 14 1 130 0 18 1 130 0 20 1 130 0 30 1 130 0 33 3 41 0 35 1 130 0 36 1 130 0 37 1 130 0 39 1 130 0 40 1 130 0 41 1 130 0 48 1 130 0 49 1 130 0 57 0 127 0 58 1 130 0 59 1 130 0 61 1 130 0 64 3 41 0 71 1 130 0 74 1 130 0 77 1 130 0 78 1 130 0 80 1 130 0 96 1 130 0 97 3 41 0 108 3 41 0 109 1 130 0 112 1 130 0 114 1 130 0 116 1 130 0 121 1 130 0 127 1 130 0 128 1 130 0 129 3 13 0 130 1 130 0 131 0 131 0 132 0 135 0 133 1 130 0 134 1 130 0 135 1 130 0 136 1 130 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 1 130 1 131] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 25 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 5 25 1 102 5 25 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 29 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 5 29 1 102 5 29 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[0 5 33 0 40] 
#[1 0 93 0 2 5 37 0 3 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 41 1 105 1 5 1 106 5 41 1 107 5 41 1 108 1 17 1 109 5 41 1 110 1 25 1 111 5 41 1 112 1 33 1 113 5 41 1 114 1 41 1 119 5 41 1 120 5 45 1 121 5 49 1 122 1 49 1 130] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 5 53 0 1 5 57 0 139] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 61 1 105 1 5 1 106 5 61 1 107 5 61 1 108 1 17 1 109 5 61 1 110 1 25 1 111 5 61 1 112 1 33 1 113 5 61 1 114 1 41 1 119 5 61 1 120 1 49 1 130] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 194 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 65 1 105 1 5 1 106 5 65 1 107 5 65 1 108 1 17 1 109 5 65 1 110 1 25 1 111 5 65 1 112 1 33 1 113 5 65 1 114 5 69 1 118 1 41 1 119 5 65 1 120 1 49 1 130] 
#[0 1 198 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 202 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 206 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 210 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 73 1 105 1 5 1 106 5 73 1 107 5 73 1 108 1 17 1 109 5 73 1 110 1 25 1 111 5 73 1 112 1 33 1 113 5 73 1 114 1 41 1 119 5 73 1 120 1 49 1 130] 
#[0 1 222 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 1 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 5 77 0 11] 
#[0 1 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 69 0 2 0 186 0 3 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 77 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 3 89 0 213 3 93 0 214 3 97 0 215 3 101 0 216 3 105 0 217 3 109 0 218 3 113 0 219 3 89 1 114 1 189 1 119 1 193 1 130] 
#[1 1 242 0 3 1 242 0 5 5 81 0 14] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 8 5 85 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[1 5 89 0 3 5 93 0 5] 
#[0 1 246 0 3 0 5] 
#[1 3 197 0 2 1 250 0 3 3 205 0 4 1 250 0 5 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 5 97 0 14 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[0 5 101 0 3] 
#[1 1 254 0 3 5 105 0 5] 
#[0 2 2 0 3 0 5] 
#[1 2 6 0 3 5 113 0 137 5 113 1 88] 
#[1 2 10 0 3 0 139 0 137] 
#[0 2 14 0 3 0 137] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 197 0 2 2 18 0 3 2 18 0 4 2 18 0 5 3 201 0 6 2 18 0 7 2 18 0 8 2 18 0 9 0 143 0 11 0 147 0 12 0 151 0 13 2 18 0 14 2 18 0 16 2 18 0 18 2 18 0 20 2 18 0 21 2 18 0 23 2 18 0 27 2 18 0 30 2 18 0 31 2 18 0 33 2 18 0 35 2 18 0 36 2 18 0 52 2 18 0 57 0 155 0 58 2 18 0 59 2 18 0 64 2 18 0 65 2 18 0 71 2 18 0 74 2 18 0 77 2 18 0 80 2 18 0 87 2 18 0 89 2 18 0 96 2 18 0 97 2 18 0 104 2 18 0 108 2 18 0 109 2 18 0 112 2 18 0 115 2 18 0 118 2 18 0 123 2 18 0 127 2 18 0 128 2 18 0 129 2 18 0 130 2 18 0 131 0 159 0 132 0 163 0 133 2 18 0 135 2 18 0 136 2 18 0 137 3 205 1 124 2 18 1 131] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 5 121 0 183 5 121 0 187 1 129 0 192 5 121 0 194 5 121 0 195 5 121 0 197 5 121 0 201 5 121 0 202 1 153 0 204 5 121 0 210 1 161 0 211 1 165 0 212 1 169 0 213 5 121 0 243 5 121 0 244 5 121 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 5 125 0 9] 
#[1 3 197 0 2 2 22 0 3 3 205 0 4 2 22 0 5 3 201 0 6 2 22 0 7 3 205 0 8 2 22 0 9 0 167 0 11 0 171 0 12 0 175 0 13 2 22 0 14 2 22 0 16 3 205 0 18 3 205 0 20 2 22 0 21 2 22 0 23 2 22 0 27 2 22 0 30 2 22 0 31 2 22 0 33 3 205 0 35 2 22 0 36 2 22 0 52 2 22 0 57 0 179 0 58 2 22 0 59 3 205 0 64 2 22 0 65 3 205 0 71 2 22 0 74 2 22 0 77 3 205 0 80 2 22 0 87 2 22 0 89 2 22 0 96 2 22 0 97 2 22 0 104 3 205 0 108 3 205 0 109 2 22 0 112 2 22 0 115 2 22 0 118 2 22 0 123 2 22 0 127 2 22 0 128 3 205 0 129 2 22 0 130 2 22 0 131 0 183 0 132 0 187 0 133 3 205 0 135 3 205 0 136 2 22 0 137 3 205 1 124 2 22 1 131] 
#[1 5 129 0 77 2 26 0 137 5 133 1 4] 
#[0 5 137 0 50] 
#[1 5 141 0 52 5 145 0 89] 
#[1 5 149 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 5 153 0 210 1 161 0 211 1 165 0 212 5 157 0 213 5 157 1 114 1 189 1 119 1 193 1 130] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 3 221 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 5 161 0 179 1 18 1 131] 
#[1 2 30 0 3 2 30 0 5 5 165 0 6 2 30 0 14 2 30 0 16 2 30 0 21 2 30 0 23 2 30 0 27 2 30 0 30 2 30 0 31 2 30 0 33 2 30 0 36 2 30 0 52 2 30 0 57 2 30 0 59 2 30 0 65 2 30 0 74 2 30 0 77 2 30 0 87 2 30 0 89 2 30 0 96 2 30 0 97 2 30 0 104 2 30 0 112 2 30 0 115 2 30 0 118 2 30 0 123 2 30 0 127 2 30 0 128 2 30 0 130 2 30 0 131 2 30 0 132 2 30 0 137 2 30 1 131] 
#[1 3 197 0 2 2 34 0 3 3 205 0 4 2 34 0 5 3 201 0 6 2 34 0 7 3 205 0 8 2 34 0 9 0 191 0 11 0 195 0 12 0 199 0 13 2 34 0 14 2 34 0 16 2 34 0 18 2 34 0 20 2 34 0 21 2 34 0 23 2 34 0 27 2 34 0 30 2 34 0 31 2 34 0 33 3 205 0 35 2 34 0 36 2 34 0 52 2 34 0 57 0 203 0 58 2 34 0 59 2 34 0 64 2 34 0 65 3 205 0 71 2 34 0 74 2 34 0 77 2 34 0 80 2 34 0 87 2 34 0 89 2 34 0 96 2 34 0 97 2 34 0 104 3 205 0 108 3 205 0 109 2 34 0 112 2 34 0 115 2 34 0 118 2 34 0 123 2 34 0 127 2 34 0 128 2 34 0 129 2 34 0 130 2 34 0 131 0 207 0 132 0 211 0 133 2 34 0 135 2 34 0 136 2 34 0 137 3 205 1 124 2 34 1 131] 
#[1 3 197 0 2 2 38 0 3 3 205 0 4 2 38 0 5 3 201 0 6 2 38 0 7 3 205 0 8 2 38 0 9 0 215 0 11 0 219 0 12 0 223 0 13 2 38 0 14 2 38 0 16 2 38 0 18 2 38 0 20 2 38 0 21 2 38 0 23 2 38 0 27 2 38 0 30 2 38 0 31 2 38 0 33 3 205 0 35 2 38 0 36 2 38 0 52 2 38 0 57 0 227 0 58 2 38 0 59 2 38 0 64 2 38 0 65 3 205 0 71 2 38 0 74 2 38 0 77 2 38 0 80 2 38 0 87 2 38 0 89 2 38 0 96 2 38 0 97 2 38 0 104 3 205 0 108 3 205 0 109 2 38 0 112 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 127 2 38 0 128 2 38 0 129 2 38 0 130 2 38 0 131 0 231 0 132 0 235 0 133 2 38 0 135 2 38 0 136 2 38 0 137 3 205 1 124 2 38 1 131] 
#[0 0 214 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 42 0 3 2 42 0 5 2 42 0 14 2 42 0 16 2 42 0 21 2 42 0 23 2 42 0 27 2 42 0 30 2 42 0 31 2 42 0 33 2 42 0 36 2 42 0 52 2 42 0 57 2 42 0 59 2 42 0 65 2 42 0 74 2 42 0 77 2 42 0 87 2 42 0 89 2 42 0 96 2 42 0 97 2 42 0 104 2 42 0 112 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 127 2 42 0 128 3 213 0 130 2 42 0 131 2 42 0 132 2 42 0 137 2 42 1 131] 
#[0 5 169 0 140] 
#[0 2 46 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 50 0 77 5 173 0 130 5 177 0 246] 
#[1 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 5 181 0 203 5 185 0 227 5 189 0 237] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 5 193 0 211 1 165 0 212 1 169 0 213 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 5 197 0 213 5 201 0 220 5 197 1 114 1 189 1 119 1 193 1 130] 
#[0 5 205 0 140] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 5 209 0 213 5 209 1 114 1 189 1 119 1 193 1 130] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 5 213 0 183 5 213 0 187 1 129 0 192 5 213 0 194 5 213 0 195 5 213 0 197 5 213 0 201 5 213 0 202 1 153 0 204 5 213 0 210 1 161 0 211 1 165 0 212 1 169 0 213 5 213 0 243 5 213 0 244 5 213 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 5 217 0 213 5 217 1 114 1 189 1 119 1 193 1 130] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 5 221 0 131 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 5 225 0 139 5 229 0 180 5 233 0 181] 
#[0 5 237 0 14] 
#[1 3 221 0 11 1 18 0 14 5 241 0 179] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 5 245 0 183 5 245 0 187 1 129 0 192 5 245 0 194 5 245 0 195 5 245 0 197 5 245 0 201 5 245 0 202 1 153 0 204 5 245 0 210 1 161 0 211 1 165 0 212 1 169 0 213 5 245 0 243 5 245 0 244 5 245 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 5 249 0 14] 
#[0 5 253 0 139] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 6 1 0 183 6 1 0 187 1 129 0 192 6 1 0 194 6 1 0 195 6 1 0 197 6 1 0 201 6 1 0 202 1 153 0 204 6 1 0 210 1 161 0 211 1 165 0 212 1 169 0 213 6 1 0 243 6 1 0 244 6 1 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 2 58 0 3 3 241 0 5 6 5 0 9 2 58 0 131 2 58 0 137 2 58 1 131] 
#[0 6 9 0 139] 
#[0 2 62 0 14 0 31 0 137] 
#[0 2 66 0 14 0 31 0 137] 
#[0 6 13 0 137] 
#[0 2 70 0 103] 
#[0 6 17 0 137] 
#[0 6 21 0 137] 
#[1 1 253 0 139 6 25 0 166 2 25 0 167] 
#[0 2 74 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 6 29 0 143] 
#[0 6 33 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 37 0 43 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 6 41 0 155 2 57 1 65 2 61 1 66 6 45 1 127] 
#[1 6 49 0 5 6 53 0 137] 
#[1 2 78 0 5 3 253 0 6 2 78 0 137] 
#[1 1 253 0 139 6 57 0 165 2 21 0 166 2 25 0 167] 
#[1 6 61 0 40 6 65 1 129] 
#[1 2 82 0 27 2 82 0 40 2 82 0 48 2 82 0 52 2 82 0 56 2 82 0 61 2 82 0 89 2 82 0 104 2 82 0 115 2 82 0 118 2 82 0 123 6 69 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 49 0 122 0 6 0 123 6 73 0 164] 
#[1 2 86 0 40 2 86 0 48 6 77 0 61 6 81 1 125] 
#[0 2 90 1 131] 
#[1 1 213 0 139 6 85 0 171 6 89 0 172] 
#[1 3 153 0 139 6 93 0 236] 
#[1 1 221 0 139 6 97 1 32] 
#[1 3 153 0 139 6 101 0 236] 
#[1 6 105 0 139 6 109 0 174 6 113 0 175] 
#[1 1 221 0 139 1 225 1 32 6 117 1 71 6 121 1 72] 
#[1 1 197 0 130 1 201 0 139 6 125 0 177 6 129 0 178 1 209 0 240] 
#[1 1 221 0 139 1 225 1 32 6 133 1 71 6 121 1 72] 
#[0 2 94 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 98 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 102 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 106 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 110 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 114 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 6 137 1 65 2 61 1 66] 
#[1 2 118 0 3 2 118 0 21 2 118 0 23 2 118 0 24 2 118 0 26 2 118 0 27 2 118 0 28 2 118 0 32 2 118 0 40 6 141 0 44 2 118 0 48 6 145 0 51 2 118 0 52 2 118 0 56 2 118 0 61 2 118 0 65 2 118 0 88 2 118 0 89 2 118 0 91 2 118 0 92 2 118 0 93 2 118 0 94 2 118 0 104 2 118 0 113 2 118 0 115 2 118 0 118 2 118 0 123 2 118 0 130 2 118 0 139 6 149 1 27] 
#[0 2 122 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 126 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 6 153 1 65 2 61 1 66] 
#[1 2 134 0 3 2 134 0 21 2 134 0 23 2 134 0 24 2 134 0 26 2 134 0 27 2 134 0 28 2 134 0 32 2 134 0 40 6 141 0 44 2 134 0 48 6 145 0 51 2 134 0 52 2 134 0 56 2 134 0 61 2 134 0 65 2 134 0 88 2 134 0 89 2 134 0 91 2 134 0 92 2 134 0 93 2 134 0 94 2 134 0 104 2 134 0 113 2 134 0 115 2 134 0 118 2 134 0 123 2 134 0 130 2 134 0 139 6 157 1 27] 
#[0 2 138 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 142 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 146 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 150 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 6 161 0 137] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 158 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 6 165 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 6 165 1 102 6 165 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 6 169 0 213 6 173 1 89 6 177 1 90 6 181 1 91 6 185 1 92 6 189 1 93 6 193 1 94 6 169 1 114 1 189 1 119 1 193 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 6 197 1 105 1 5 1 106 6 197 1 107 6 197 1 108 1 17 1 109 6 197 1 110 1 25 1 111 6 197 1 112 1 33 1 113 6 197 1 114 1 41 1 119 6 197 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 6 201 1 105 1 5 1 106 6 201 1 107 6 201 1 108 1 17 1 109 6 201 1 110 1 25 1 111 6 201 1 112 1 33 1 113 6 201 1 114 1 41 1 119 6 201 1 120 1 49 1 130] 
#[0 6 205 0 3] 
#[1 2 162 0 3 2 162 0 131 6 209 0 137] 
#[0 2 166 0 3 0 131 0 137] 
#[0 2 170 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 6 213 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 6 213 1 102 6 213 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[1 0 93 0 2 6 217 0 3 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 41 1 105 1 5 1 106 5 41 1 107 5 41 1 108 1 17 1 109 5 41 1 110 1 25 1 111 5 41 1 112 1 33 1 113 5 41 1 114 1 41 1 119 5 41 1 120 6 221 1 121 5 49 1 122 1 49 1 130] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 6 225 0 9 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 6 229 0 9 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 3 153 0 139 6 233 0 236] 
#[0 2 174 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 6 237 1 105 1 5 1 106 6 237 1 107 6 237 1 108 1 17 1 109 6 237 1 110 1 25 1 111 6 237 1 112 1 33 1 113 6 237 1 114 1 41 1 119 6 237 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 6 241 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 6 245 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 6 249 1 83 6 253 1 84 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 2 178 0 40 7 1 0 49 7 5 1 86] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 7 9 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 7 9 1 102 7 9 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 7 13 1 105 1 5 1 106 7 13 1 107 7 13 1 108 1 17 1 109 7 13 1 110 1 25 1 111 7 13 1 112 1 33 1 113 7 13 1 114 1 41 1 119 7 13 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 7 17 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 7 17 1 102 7 17 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 7 21 1 105 1 5 1 106 7 21 1 107 7 21 1 108 1 17 1 109 7 21 1 110 1 25 1 111 7 21 1 112 1 33 1 113 7 21 1 114 1 41 1 119 7 21 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 2 161 1 105 1 5 1 106 2 161 1 107 2 161 1 108 1 17 1 109 2 161 1 110 1 25 1 111 2 161 1 112 1 33 1 113 2 161 1 114 7 25 1 116 1 41 1 119 2 161 1 120 1 49 1 130] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 186 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 190 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 194 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 193 0 2 2 202 0 3 3 41 0 4 2 202 0 5 2 201 0 6 3 41 0 8 2 202 0 9 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 7 29 0 3 7 33 0 5] 
#[1 2 206 0 3 2 206 0 5 7 37 0 9] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 193 0 2 2 218 0 3 3 41 0 4 2 218 0 5 2 201 0 6 2 218 0 7 3 41 0 8 2 218 0 9 2 209 0 10 0 239 0 11 0 243 0 12 0 247 0 13 0 251 0 14 3 41 0 18 3 41 0 20 2 218 0 30 2 218 0 33 3 41 0 35 2 218 0 36 2 218 0 37 2 218 0 39 2 218 0 40 2 218 0 41 2 218 0 48 2 218 0 49 2 218 0 57 0 255 0 58 2 218 0 59 2 218 0 61 3 41 0 64 3 41 0 71 2 218 0 74 2 218 0 77 2 218 0 78 3 41 0 80 2 218 0 96 2 218 0 97 3 41 0 108 3 41 0 109 2 218 0 112 2 218 0 114 2 218 0 116 2 218 0 121 2 218 0 127 2 218 0 128 3 41 0 129 3 13 0 130 2 218 0 131 1 3 0 132 1 7 0 133 2 218 0 134 3 41 0 135 3 41 0 136 2 218 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 2 218 1 131] 
#[1 2 193 0 2 3 41 0 4 2 222 0 5 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 2 222 0 131 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 7 41 0 5 7 45 0 131] 
#[1 2 193 0 2 2 226 0 3 3 41 0 4 2 226 0 5 2 201 0 6 2 226 0 7 3 41 0 8 2 226 0 9 2 209 0 10 1 11 0 11 1 15 0 12 1 19 0 13 1 23 0 14 3 41 0 18 3 41 0 20 2 226 0 30 2 226 0 33 3 41 0 35 2 226 0 36 2 226 0 37 2 226 0 39 2 226 0 40 2 226 0 41 2 226 0 48 2 226 0 49 2 226 0 57 1 27 0 58 2 226 0 59 2 226 0 61 3 41 0 64 3 41 0 71 2 226 0 74 2 226 0 77 2 226 0 78 3 41 0 80 2 226 0 96 2 226 0 97 3 41 0 108 3 41 0 109 2 226 0 112 2 226 0 114 2 226 0 116 2 226 0 121 2 226 0 127 2 226 0 128 3 41 0 129 3 13 0 130 2 226 0 131 1 31 0 132 1 35 0 133 2 226 0 134 3 41 0 135 3 41 0 136 2 226 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 2 226 1 131] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 173 0 183 7 49 0 187 7 53 0 191 1 129 0 192 1 173 0 194 1 173 0 195 7 49 0 197 7 49 0 201 7 49 0 202 1 153 0 204 7 49 0 210 1 161 0 211 1 165 0 212 1 169 0 213 1 173 0 243 7 49 0 244 7 49 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 7 57 0 213 7 57 1 114 1 189 1 119 1 193 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 7 61 0 213 7 61 1 114 1 189 1 119 1 193 1 130] 
#[0 2 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 73 0 139 7 65 0 185] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 7 69 0 213 7 69 1 114 1 189 1 119 1 193 1 130] 
#[0 2 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 3 89 0 213 7 73 0 216 3 89 1 114 1 189 1 119 1 193 1 130] 
#[0 2 238 0 3] 
#[0 7 77 0 3] 
#[1 7 81 0 140 7 85 0 219] 
#[1 2 242 0 3 2 242 0 5 2 242 0 14 3 209 0 16 2 242 0 21 2 242 0 23 2 242 0 27 2 242 0 30 2 242 0 31 2 242 0 33 2 242 0 36 2 242 0 52 2 242 0 57 2 242 0 59 2 242 0 65 2 242 0 74 2 242 0 77 2 242 0 87 2 242 0 89 2 242 0 96 2 242 0 97 2 242 0 104 2 242 0 112 2 242 0 115 2 242 0 118 2 242 0 123 2 242 0 127 2 242 0 128 3 213 0 130 2 242 0 131 2 242 0 132 2 242 0 137 2 242 1 131] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 7 89 0 183 7 89 0 187 1 129 0 192 7 89 0 194 7 89 0 195 7 89 0 197 7 89 0 201 7 89 0 202 1 153 0 204 7 89 0 210 1 161 0 211 1 165 0 212 1 169 0 213 7 89 0 243 7 89 0 244 7 89 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 7 93 0 76] 
#[0 7 97 0 137] 
#[1 3 153 0 139 7 101 0 236] 
#[1 2 93 0 2 0 54 0 9 7 105 0 196] 
#[1 2 93 0 2 0 54 0 137 7 109 0 196] 
#[1 3 69 0 2 0 186 0 3 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 7 113 0 140 1 165 0 141 1 189 0 143 1 117 0 147 7 117 0 198 1 165 0 212 3 89 0 213 3 93 0 214 3 97 0 215 3 101 0 216 3 105 0 217 3 109 0 218 3 113 0 219 3 89 1 114 1 189 1 119 1 193 1 130] 
#[0 2 246 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 197 0 2 2 250 0 3 3 205 0 4 2 250 0 5 3 201 0 6 0 250 0 7 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 2 250 0 14 2 250 0 16 3 205 0 18 3 205 0 20 2 250 0 21 2 250 0 23 2 250 0 27 2 250 0 30 2 250 0 31 2 250 0 33 3 205 0 35 2 250 0 36 2 250 0 52 2 250 0 57 3 205 0 58 2 250 0 59 3 205 0 64 2 250 0 65 3 205 0 71 2 250 0 74 2 250 0 77 3 205 0 80 2 250 0 87 2 250 0 89 2 250 0 96 2 250 0 97 2 250 0 104 3 205 0 108 3 205 0 109 2 250 0 112 2 250 0 115 2 250 0 118 2 250 0 123 2 250 0 127 2 250 0 128 3 205 0 129 2 250 0 130 2 250 0 131 1 39 0 132 3 205 0 133 3 205 0 135 3 205 0 136 2 250 0 137 3 205 1 124 2 250 1 131] 
#[0 2 254 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 121 0 139] 
#[0 3 2 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 7 137 0 210 1 161 0 211 1 165 0 212 7 129 0 213 7 133 0 247 7 137 0 248 7 129 1 114 1 189 1 119 1 193 1 130] 
#[0 7 141 0 77] 
#[0 7 145 0 40] 
#[1 3 6 0 3 3 6 0 24 3 6 0 40 3 6 0 88 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 113 7 149 0 228] 
#[1 3 10 0 3 3 10 0 24 7 153 0 26 4 77 0 27 7 157 0 28 7 161 0 32 3 10 0 40 7 165 0 52 3 10 0 88 7 169 0 89 7 173 0 91 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 113 4 97 0 115 4 101 0 118 4 105 0 123 1 197 0 130 1 221 0 139 7 185 0 170 7 185 0 176 7 185 0 238 7 185 0 239 7 193 0 240 7 185 0 241 7 185 0 242 7 185 0 254 7 185 0 255 7 185 1 0 7 185 1 1 7 185 1 2 7 185 1 3 7 185 1 5 7 185 1 6 7 185 1 7 7 185 1 9 7 245 1 10 7 185 1 11 7 253 1 32 7 185 1 40 8 5 1 41 7 185 1 43 8 13 1 44 7 185 1 47 4 129 1 48 7 185 1 49 4 137 1 50 7 185 1 52 7 185 1 53 7 185 1 55 4 149 1 56 7 185 1 57 4 157 1 58 7 185 1 60 7 185 1 61 7 185 1 63 8 53 1 64 7 185 1 69 4 173 1 70] 
#[0 3 14 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 197 0 2 3 18 0 3 3 205 0 4 3 18 0 5 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 8 61 0 3 8 65 0 5] 
#[0 3 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 197 0 2 3 26 0 3 3 205 0 4 3 26 0 5 3 201 0 6 3 26 0 7 3 205 0 8 3 26 0 9 1 43 0 11 1 47 0 12 1 51 0 13 3 26 0 14 3 26 0 16 3 205 0 18 3 205 0 20 3 26 0 21 3 26 0 23 3 26 0 27 3 26 0 30 3 26 0 31 3 26 0 33 3 205 0 35 3 26 0 36 3 26 0 52 3 26 0 57 1 55 0 58 3 26 0 59 3 205 0 64 3 26 0 65 3 205 0 71 3 26 0 74 3 26 0 77 3 205 0 80 3 26 0 87 3 26 0 89 3 26 0 96 3 26 0 97 3 26 0 104 3 205 0 108 3 205 0 109 3 26 0 112 3 26 0 115 3 26 0 118 3 26 0 123 3 26 0 127 3 26 0 128 3 205 0 129 3 26 0 130 3 26 0 131 1 59 0 132 1 63 0 133 3 205 0 135 3 205 0 136 3 26 0 137 3 205 1 124 3 26 1 131] 
#[1 3 30 0 3 3 30 0 5 3 30 0 14 3 30 0 21 3 30 0 23 3 30 0 27 3 30 0 30 3 30 0 31 3 30 0 33 3 30 0 36 3 30 0 52 3 30 0 57 3 30 0 59 3 30 0 65 3 30 0 74 3 30 0 77 3 30 0 87 3 30 0 89 3 30 0 96 3 30 0 97 3 30 0 104 3 30 0 112 3 30 0 115 3 30 0 118 3 30 0 123 3 30 0 127 3 30 0 128 3 213 0 130 3 30 0 131 3 30 0 132 3 30 0 137 3 30 1 131] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 8 69 0 131 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[0 3 34 0 26 0 28 0 32 0 52 0 89 0 139] 
#[1 3 38 0 5 8 73 0 9 3 38 0 132] 
#[1 8 77 0 5 8 81 0 132] 
#[0 3 42 0 5 0 132] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 8 85 0 26 8 145 0 34 1 61 0 46 1 65 0 52 8 145 0 63 1 69 0 75 8 97 0 76 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 8 101 0 182 8 105 0 183 8 109 0 186 8 113 0 187 1 129 0 192 8 117 0 194 8 121 0 195 8 113 0 197 8 109 0 200 8 113 0 201 8 113 0 202 1 153 0 204 8 113 0 210 1 161 0 211 1 165 0 212 1 169 0 213 8 109 0 221 8 109 0 222 8 109 0 225 1 173 0 243 8 113 0 244 8 113 0 245 8 109 0 249 8 145 0 250 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 8 149 0 14] 
#[1 3 46 0 14 3 209 0 16 3 46 0 21 3 46 0 23 3 46 0 27 3 46 0 30 3 46 0 33 3 46 0 36 3 46 0 52 3 46 0 57 3 46 0 59 3 46 0 65 3 46 0 74 3 46 0 77 3 46 0 89 3 46 0 96 3 46 0 97 3 46 0 104 3 46 0 112 3 46 0 115 3 46 0 118 3 46 0 123 3 46 0 127 3 46 0 128 3 213 0 130 3 46 0 137] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 8 153 0 213 8 153 1 114 1 189 1 119 1 193 1 130] 
#[0 3 50 0 3 0 5 0 9 0 131 0 137 1 131] 
#[1 1 46 0 14 3 209 0 16 8 157 0 31 8 157 0 87 3 213 0 130 1 46 0 137 8 157 0 193] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 8 161 0 183 8 161 0 187 1 129 0 192 8 161 0 194 8 161 0 195 8 161 0 197 8 161 0 201 8 161 0 202 1 153 0 204 8 161 0 210 1 161 0 211 1 165 0 212 1 169 0 213 8 161 0 243 8 161 0 244 8 161 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 3 54 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 3 58 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 62 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 66 0 40 0 48 0 56 0 61 0 63 1 131] 
#[0 3 70 0 5 0 137] 
#[0 3 74 0 5 0 137] 
#[0 3 78 1 131] 
#[1 8 165 0 139 8 169 1 128] 
#[0 8 173 0 6] 
#[0 3 82 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 1 253 0 139 8 177 0 167] 
#[0 3 86 0 29] 
#[1 4 25 0 5 8 181 0 137] 
#[0 8 185 0 6] 
#[0 3 90 1 131] 
#[1 4 77 0 27 3 94 0 40 3 94 0 48 4 81 0 52 3 94 0 56 3 94 0 61 4 89 0 89 4 93 0 104 4 97 0 115 4 101 0 118 4 105 0 123 8 189 0 169 8 189 0 170 8 189 0 173 8 189 0 176 8 189 1 2 8 189 1 5 8 189 1 47 4 129 1 48 8 189 1 49 4 137 1 50 8 189 1 55 4 149 1 56 8 189 1 57 4 157 1 58 8 189 1 69 4 173 1 70] 
#[1 3 98 0 23 3 98 0 26 3 98 0 27 3 98 0 28 3 98 0 32 3 98 0 40 3 98 0 43 3 98 0 48 3 98 0 52 3 98 0 61 3 98 0 89 3 98 0 104 3 98 0 115 3 98 0 118 3 98 0 123 8 217 1 37] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 14 0 48 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 8 221 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 3 102 0 40 8 225 0 48 8 229 1 126] 
#[1 3 106 0 3 3 106 0 21 3 106 0 23 3 106 0 24 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 32 3 106 0 40 3 106 0 43 3 106 0 48 3 106 0 52 3 106 0 56 3 106 0 61 3 106 0 65 3 106 0 88 3 106 0 89 3 106 0 91 3 106 0 92 3 106 0 93 3 106 0 94 3 106 0 104 3 106 0 113 3 106 0 115 3 106 0 118 3 106 0 123 3 106 0 130 1 213 0 139 8 233 0 172] 
#[0 3 110 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 93 0 2 5 165 0 6 0 54 0 9 0 54 0 137 8 237 0 196] 
#[1 3 241 0 5 8 241 0 137] 
#[1 2 93 0 2 5 165 0 6 0 54 0 137 8 245 0 196] 
#[0 8 249 0 14] 
#[1 3 114 0 21 3 114 0 23 3 114 0 26 3 114 0 27 3 114 0 28 3 114 0 32 3 114 0 40 3 114 0 43 3 114 0 48 3 114 0 52 3 114 0 56 3 114 0 61 3 114 0 65 3 114 0 89 3 114 0 104 3 114 0 115 3 114 0 118 3 114 0 123 6 105 0 139 8 253 0 175] 
#[0 3 118 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 3 122 0 3 3 122 0 21 3 122 0 23 3 122 0 24 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 32 3 122 0 40 3 122 0 43 3 122 0 48 3 122 0 52 3 122 0 56 3 122 0 61 3 122 0 65 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 104 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 123 3 122 0 130 1 221 0 139 1 225 1 32 9 1 1 72] 
#[0 3 126 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 130 0 3 3 130 0 21 3 130 0 23 3 130 0 24 3 130 0 26 3 130 0 27 3 130 0 28 3 130 0 32 3 130 0 40 3 130 0 43 3 130 0 48 3 130 0 52 3 130 0 56 3 130 0 61 3 130 0 65 3 130 0 88 3 130 0 89 3 130 0 91 3 130 0 92 3 130 0 93 3 130 0 94 3 130 0 104 3 130 0 113 3 130 0 115 3 130 0 118 3 130 0 123 1 197 0 130 1 201 0 139 9 5 0 178 1 209 0 240] 
#[0 3 134 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 138 0 3 3 138 0 21 3 138 0 23 3 138 0 24 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 32 3 138 0 40 3 138 0 43 3 138 0 48 3 138 0 52 3 138 0 56 3 138 0 61 3 138 0 65 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 104 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 123 3 138 0 130 1 221 0 139 1 225 1 32 9 1 1 72] 
#[0 3 142 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 9 9 0 137 9 13 0 139 9 17 0 143] 
#[0 9 21 0 137] 
#[1 3 146 0 3 3 146 0 17 3 146 0 21 3 146 0 22 3 146 0 23 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 31 3 146 0 32 3 146 0 33 3 146 0 38 3 146 0 40 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 47 3 146 0 48 3 146 0 51 3 146 0 52 3 146 0 56 3 146 0 61 3 146 0 62 3 146 0 65 3 146 0 67 3 146 0 70 3 146 0 73 3 146 0 82 3 146 0 83 3 146 0 86 3 146 0 87 3 146 0 88 3 146 0 89 3 146 0 91 3 146 0 92 3 146 0 93 3 146 0 94 3 146 0 100 3 146 0 101 3 146 0 104 3 146 0 105 3 146 0 110 3 146 0 111 3 146 0 113 3 146 0 115 3 146 0 118 3 146 0 120 3 146 0 123 3 146 0 124 3 146 0 130 3 146 0 139 9 25 1 23] 
#[0 3 150 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 146 0 3 3 146 0 17 3 146 0 21 3 146 0 22 3 146 0 23 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 31 3 146 0 32 3 146 0 33 3 146 0 38 3 146 0 40 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 47 3 146 0 48 3 146 0 51 3 146 0 52 3 146 0 56 3 146 0 61 3 146 0 62 3 146 0 65 3 146 0 67 3 146 0 70 3 146 0 73 3 146 0 82 3 146 0 83 3 146 0 86 3 146 0 87 3 146 0 88 3 146 0 89 3 146 0 91 3 146 0 92 3 146 0 93 3 146 0 94 3 146 0 100 3 146 0 101 3 146 0 104 3 146 0 105 3 146 0 110 3 146 0 111 3 146 0 113 3 146 0 115 3 146 0 118 3 146 0 120 3 146 0 123 3 146 0 124 3 146 0 130 3 146 0 139 9 29 1 23] 
#[0 3 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 3 158 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 197 0 2 3 205 0 4 3 162 0 5 3 201 0 6 9 33 0 7 3 205 0 8 3 162 0 9 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 9 37 0 39 3 166 0 40 9 41 1 95] 
#[1 2 6 0 39 2 6 0 40 9 45 0 137 9 49 1 88] 
#[0 3 170 0 39 0 40 0 137] 
#[0 9 53 0 9] 
#[0 9 57 0 5] 
#[1 3 174 0 5 3 178 0 9] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 9 69 0 37 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 9 69 0 116 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 9 69 1 100 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 9 73 0 36 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[0 3 182 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 1 249 0 27 1 249 0 81 1 249 0 123 0 22 0 139 9 77 1 31 1 249 1 34] 
#[1 9 81 0 39 3 186 0 40 3 186 0 41 3 186 0 48 3 186 0 49 3 186 0 61 3 186 0 78 3 186 0 121 3 186 0 137 3 186 1 131] 
#[0 3 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 9 85 0 3 7 33 0 5] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 9 89 1 105 1 5 1 106 9 89 1 107 9 89 1 108 1 17 1 109 9 89 1 110 1 25 1 111 9 89 1 112 1 33 1 113 9 89 1 114 1 41 1 119 9 89 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 9 93 1 105 1 5 1 106 9 93 1 107 9 93 1 108 1 17 1 109 9 93 1 110 1 25 1 111 9 93 1 112 1 33 1 113 9 93 1 114 1 41 1 119 9 93 1 120 1 49 1 130] 
#[1 5 165 0 6 3 194 0 39 3 194 0 40 3 194 0 41 3 194 0 48 3 194 0 49 3 194 0 61 3 194 0 78 3 194 0 121 3 194 0 137 3 194 1 131] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 198 0 39 3 198 0 40 3 198 0 41 3 198 0 48 3 198 0 49 3 41 0 58 3 198 0 61 3 41 0 64 3 41 0 71 3 198 0 78 3 41 0 80 3 41 0 108 3 41 0 109 3 198 0 121 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 198 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124 3 198 1 131] 
#[1 3 153 0 139 9 97 0 236] 
#[1 9 101 0 39 3 202 0 40 3 202 0 49 4 189 0 137 9 105 1 85] 
#[1 9 101 0 39 3 202 0 40 3 202 0 49 6 241 0 78 9 109 1 84 9 113 1 85] 
#[0 3 206 0 39 0 40 0 49 0 78] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 9 117 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[0 9 121 0 40] 
#[0 3 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 193 0 2 3 41 0 4 3 214 0 5 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 214 0 36 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[0 3 218 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 193 0 2 3 41 0 4 3 222 0 5 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 222 0 131 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[0 3 226 0 5 0 131] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 5 41 1 105 1 5 1 106 5 41 1 107 5 41 1 108 1 17 1 109 5 41 1 110 1 25 1 111 5 41 1 112 1 33 1 113 5 41 1 114 1 41 1 119 5 41 1 120 9 125 1 122 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 9 129 1 105 1 5 1 106 9 129 1 107 9 129 1 108 1 17 1 109 9 129 1 110 1 25 1 111 9 129 1 112 1 33 1 113 9 129 1 114 1 41 1 119 9 129 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 9 133 1 105 1 5 1 106 9 133 1 107 9 133 1 108 1 17 1 109 9 133 1 110 1 25 1 111 9 133 1 112 1 33 1 113 9 133 1 114 1 41 1 119 9 133 1 120 1 49 1 130] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 238 0 5 0 214 0 16 0 214 0 130 3 238 0 132] 
#[1 9 137 0 5 3 242 0 132 9 141 0 190] 
#[1 3 197 0 2 3 246 0 3 3 205 0 4 3 246 0 5 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 3 197 0 2 3 250 0 3 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 250 0 137 3 205 1 124] 
#[0 3 254 0 3 0 5] 
#[1 3 197 0 2 4 2 0 3 3 205 0 4 4 2 0 5 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[0 4 6 0 3 0 5] 
#[0 4 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 5 85 0 9] 
#[0 4 14 0 3 0 137] 
#[1 3 209 0 16 5 129 0 77 3 213 0 130 2 26 0 137 9 145 1 4] 
#[0 4 18 0 137] 
#[1 3 146 0 3 3 146 0 5 3 146 0 14 3 146 0 16 3 146 0 17 3 146 0 21 3 146 0 22 3 146 0 23 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 30 3 146 0 31 3 146 0 32 3 146 0 33 3 146 0 36 3 146 0 38 3 146 0 40 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 47 3 146 0 48 3 146 0 51 3 146 0 52 3 146 0 56 3 146 0 57 3 146 0 59 3 146 0 61 3 146 0 62 3 146 0 65 3 146 0 67 3 146 0 70 3 146 0 73 3 146 0 74 3 146 0 77 3 146 0 82 3 146 0 83 3 146 0 86 3 146 0 87 3 146 0 88 3 146 0 89 3 146 0 91 3 146 0 92 3 146 0 93 3 146 0 94 3 146 0 96 3 146 0 97 3 146 0 100 3 146 0 101 3 146 0 104 3 146 0 105 3 146 0 110 3 146 0 111 3 146 0 112 3 146 0 113 3 146 0 115 3 146 0 118 3 146 0 120 3 146 0 123 3 146 0 124 3 146 0 127 3 146 0 128 3 146 0 130 3 146 0 131 3 146 0 132 3 146 0 137 3 146 0 139 9 149 1 23 3 146 1 131] 
#[1 5 165 0 6 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 9 153 0 203 5 185 0 227 5 189 0 237] 
#[0 9 157 0 9] 
#[0 9 161 0 137] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 1 67 0 5 0 198 0 6 0 198 0 8 5 85 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[0 9 169 0 3] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 3 221 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 9 173 0 179 1 18 1 131] 
#[0 4 22 0 5 0 131] 
#[1 3 197 0 2 3 205 0 4 4 26 0 5 3 201 0 6 0 250 0 7 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 4 26 0 131 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 9 177 0 5 9 181 0 131] 
#[0 4 30 0 5 0 131] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 9 185 0 27 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 9 189 0 183 9 189 0 187 1 129 0 192 9 189 0 194 9 189 0 195 9 189 0 197 9 189 0 201 9 189 0 202 1 153 0 204 9 189 0 210 1 161 0 211 1 165 0 212 1 169 0 213 9 189 0 243 9 189 0 244 9 189 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 4 34 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 38 0 3 9 193 0 24 4 38 0 40 9 197 0 88 9 201 0 92 9 205 0 93 9 209 0 94 9 213 0 113 9 217 0 205 9 221 0 229 9 221 0 230 9 221 0 231 9 221 0 232 9 221 0 233] 
#[1 9 241 0 28 9 245 0 32 4 81 0 52 9 249 0 79 4 89 0 89 7 173 0 91 4 97 0 115 4 105 0 123 9 253 1 10 10 1 1 48 10 5 1 50 10 9 1 56 10 13 1 58 10 17 1 70] 
#[1 3 153 0 139 10 21 0 236] 
#[1 3 153 0 139 10 25 0 236] 
#[1 3 153 0 139 10 29 0 236] 
#[1 3 153 0 139 10 33 0 236] 
#[0 10 37 0 139] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 41 0 26 7 157 0 28 7 161 0 32 4 81 0 52 4 89 0 89 10 45 1 0 10 49 1 1 10 53 1 2 10 57 1 3 10 61 1 5 10 65 1 6 10 69 1 7 10 45 1 40 8 5 1 41 10 49 1 43 8 13 1 44 10 53 1 47 4 129 1 48 10 53 1 49 4 137 1 50 10 57 1 52 10 57 1 53 10 61 1 55 4 149 1 56 10 61 1 57 4 157 1 58 10 65 1 60 10 65 1 61 10 69 1 63 8 53 1 64] 
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
#[1 3 241 0 5 10 73 0 9] 
#[0 4 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 118 0 3 4 118 0 24 4 118 0 26 4 118 0 27 4 118 0 28 4 118 0 32 4 118 0 40 6 141 0 44 6 145 0 51 4 118 0 52 4 118 0 88 4 118 0 89 4 118 0 91 4 118 0 92 4 118 0 93 4 118 0 94 4 118 0 113 4 118 0 115 4 118 0 118 4 118 0 123 4 118 0 130 4 118 0 139 10 77 1 27] 
#[0 4 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 126 0 3 4 126 0 24 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 32 4 126 0 40 6 141 0 44 6 145 0 51 4 126 0 52 4 126 0 88 4 126 0 89 4 126 0 91 4 126 0 92 4 126 0 93 4 126 0 94 4 126 0 113 4 126 0 115 4 126 0 118 4 126 0 123 4 126 0 130 4 126 0 139 10 81 1 27] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 166 0 3 4 166 0 24 4 166 0 26 4 166 0 27 4 166 0 28 4 166 0 32 4 166 0 40 6 141 0 44 6 145 0 51 4 166 0 52 4 166 0 88 4 166 0 89 4 166 0 91 4 166 0 92 4 166 0 93 4 166 0 94 4 166 0 113 4 166 0 115 4 166 0 118 4 166 0 123 4 166 0 130 4 166 0 139 10 85 1 27] 
#[0 4 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 10 89 0 213 10 89 1 114 1 189 1 119 1 193 1 130] 
#[0 4 178 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 10 93 0 183 10 93 0 187 1 129 0 192 10 93 0 194 10 93 0 195 10 93 0 197 10 93 0 201 10 93 0 202 1 153 0 204 10 93 0 210 1 161 0 211 1 165 0 212 1 169 0 213 10 93 0 243 10 93 0 244 10 93 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 5 225 0 139 10 97 0 181] 
#[0 4 182 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 4 186 0 2 4 186 0 17 4 186 0 26 4 186 0 27 4 186 0 28 4 186 0 31 4 186 0 32 4 186 0 40 4 186 0 52 4 186 0 54 10 101 0 77 4 186 0 87 4 186 0 88 4 186 0 89 4 186 0 91 4 186 0 92 4 186 0 93 4 186 0 94 4 186 0 106 4 186 0 113 4 186 0 115 4 186 0 118 4 186 0 123 4 186 0 130 4 186 0 137 4 186 0 139 10 105 0 223] 
#[0 4 190 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 4 194 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 10 109 0 2 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 32 4 198 0 40 4 198 0 52 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 139 10 113 0 234] 
#[0 4 202 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 0 210 0 16 0 210 0 130 10 117 0 137] 
#[1 10 121 0 31 10 121 0 87 1 46 0 137 10 121 0 193] 
#[1 0 214 0 16 10 125 0 31 10 125 0 87 0 214 0 130 1 46 0 137 10 125 0 193] 
#[1 4 206 0 3 0 222 0 16 4 206 0 21 4 206 0 23 4 206 0 24 4 206 0 26 4 206 0 27 4 206 0 28 4 206 0 32 4 206 0 40 4 206 0 43 4 206 0 48 4 206 0 52 4 206 0 56 4 206 0 61 4 206 0 65 4 206 0 88 4 206 0 89 4 206 0 91 4 206 0 92 4 206 0 93 4 206 0 94 4 206 0 104 4 206 0 113 4 206 0 115 4 206 0 118 4 206 0 123 1 71 0 130 4 206 0 139 4 206 1 131] 
#[1 4 210 0 3 0 226 0 16 4 210 0 21 4 210 0 23 4 210 0 24 4 210 0 26 4 210 0 27 4 210 0 28 4 210 0 32 4 210 0 40 4 210 0 43 4 210 0 48 4 210 0 52 4 210 0 56 4 210 0 61 4 210 0 65 4 210 0 88 4 210 0 89 4 210 0 91 4 210 0 92 4 210 0 93 4 210 0 94 4 210 0 104 4 210 0 113 4 210 0 115 4 210 0 118 4 210 0 123 1 75 0 130 4 210 0 139 4 210 1 131] 
#[0 4 214 0 31 0 87 0 137] 
#[0 4 218 0 31 0 87 0 137] 
#[0 4 222 0 31 0 87 0 137] 
#[0 4 226 0 31 0 87 0 137] 
#[0 4 230 0 31 0 87 0 137] 
#[1 10 109 0 2 4 198 0 26 4 234 0 31 4 198 0 40 4 198 0 52 4 234 0 87 4 198 0 89 4 198 0 91 4 198 0 130 4 234 0 137 10 129 0 234] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 8 85 0 26 8 145 0 34 1 61 0 46 1 65 0 52 8 145 0 63 1 69 0 75 8 97 0 76 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 10 133 0 182 8 105 0 183 8 109 0 186 8 113 0 187 1 129 0 192 8 117 0 194 8 121 0 195 8 113 0 197 8 109 0 200 8 113 0 201 8 113 0 202 1 153 0 204 8 113 0 210 1 161 0 211 1 165 0 212 1 169 0 213 8 109 0 221 8 109 0 222 8 109 0 225 1 173 0 243 8 113 0 244 8 113 0 245 8 109 0 249 8 145 0 250 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 1 79 0 31 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 10 137 0 87 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 1 46 0 137 10 137 0 193 3 205 1 124] 
#[1 10 141 0 14 4 238 0 137 10 145 1 33] 
#[1 4 238 0 3 10 141 0 14 3 209 0 16 3 213 0 130 4 238 0 131 4 238 0 137 10 149 1 33 4 238 1 131] 
#[0 4 242 0 5 0 137] 
#[1 10 153 0 5 10 157 0 137] 
#[0 4 246 1 131] 
#[1 4 250 0 5 3 253 0 6 4 250 0 137] 
#[0 4 254 0 40] 
#[0 5 2 1 131] 
#[0 5 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 10 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 14 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 18 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 22 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 26 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 30 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 10 161 0 23 10 41 0 26 4 77 0 27 7 157 0 28 7 161 0 32 5 34 0 40 6 37 0 43 5 34 0 48 4 81 0 52 5 34 0 61 4 89 0 89 4 93 0 104 4 97 0 115 4 101 0 118 4 105 0 123 10 181 0 170 10 181 0 173 10 181 0 176 10 177 1 36 10 181 1 38 10 181 1 39 10 189 1 40 10 193 1 41 10 181 1 42 10 201 1 43 10 205 1 44 10 181 1 46 4 125 1 47 4 129 1 48 4 133 1 49 4 137 1 50 10 181 1 51 10 217 1 52 10 221 1 53 10 181 1 54 4 145 1 55 4 149 1 56 4 153 1 57 4 157 1 58 10 181 1 59 10 233 1 60 10 237 1 61 10 181 1 62 10 245 1 63 10 249 1 64 10 181 1 69 4 173 1 70 10 181 1 127] 
#[1 5 38 0 40 5 38 0 48 4 189 0 137] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 11 5 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 6 61 0 40 11 9 1 129] 
#[0 5 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 233 0 9 1 22 0 137 11 13 1 8] 
#[0 5 46 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 11 17 0 137] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 11 21 0 213 11 21 1 114 1 189 1 119 1 193 1 130] 
#[0 5 50 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 5 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 58 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 62 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 11 25 0 72 11 29 0 137] 
#[1 11 33 0 72 11 37 0 137] 
#[0 5 66 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 5 70 0 3 11 149 0 17 5 70 0 21 11 149 0 22 5 70 0 23 5 70 0 24 11 149 0 25 5 70 0 26 5 70 0 27 5 70 0 28 11 53 0 31 5 70 0 32 11 57 0 33 11 149 0 38 5 70 0 40 11 149 0 42 5 70 0 43 6 141 0 44 11 149 0 45 11 149 0 47 5 70 0 48 6 145 0 51 5 70 0 52 5 70 0 56 5 70 0 61 11 149 0 62 5 70 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 5 70 0 88 5 70 0 89 5 70 0 91 5 70 0 92 5 70 0 93 5 70 0 94 11 149 0 100 11 149 0 101 5 70 0 104 11 149 0 105 11 149 0 110 11 149 0 111 5 70 0 113 5 70 0 115 5 70 0 118 11 149 0 120 5 70 0 123 11 149 0 124 5 70 0 130 5 70 0 139 11 137 1 25 11 137 1 26 11 137 1 27 11 149 1 28] 
#[1 5 74 0 3 11 149 0 17 5 74 0 21 11 149 0 22 5 74 0 23 5 74 0 24 11 149 0 25 5 74 0 26 5 74 0 27 5 74 0 28 11 53 0 31 5 74 0 32 11 57 0 33 11 149 0 38 5 74 0 40 11 149 0 42 5 74 0 43 6 141 0 44 11 149 0 45 11 149 0 47 5 74 0 48 6 145 0 51 5 74 0 52 5 74 0 56 5 74 0 61 11 149 0 62 5 74 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 5 74 0 88 5 74 0 89 5 74 0 91 5 74 0 92 5 74 0 93 5 74 0 94 11 149 0 100 11 149 0 101 5 74 0 104 11 149 0 105 11 149 0 110 11 149 0 111 5 74 0 113 5 74 0 115 5 74 0 118 11 149 0 120 5 74 0 123 11 149 0 124 5 74 0 130 5 74 0 139 11 137 1 25 11 137 1 26 11 137 1 27 11 149 1 28] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 11 153 0 213 11 153 1 114 1 189 1 119 1 193 1 130] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 11 157 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[0 11 161 0 40] 
#[1 3 69 0 2 1 57 0 15 2 238 0 39 2 238 0 40 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 6 169 0 213 11 165 1 91 6 185 1 92 6 189 1 93 6 193 1 94 6 169 1 114 1 189 1 119 1 193 1 130] 
#[0 5 78 0 39 0 40] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 11 169 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 11 169 1 102 11 169 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 6 169 0 213 11 173 1 94 6 169 1 114 1 189 1 119 1 193 1 130] 
#[0 5 82 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 5 86 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 11 177 1 105 1 5 1 106 11 177 1 107 11 177 1 108 1 17 1 109 11 177 1 110 1 25 1 111 11 177 1 112 1 33 1 113 11 177 1 114 1 41 1 119 11 177 1 120 1 49 1 130] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 11 181 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 11 181 1 102 11 181 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[0 5 90 0 3 0 131 0 137] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 11 185 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 11 185 1 102 11 185 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 11 189 0 131 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 11 193 0 131 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 5 165 0 6 3 233 0 9 1 22 0 36 11 197 1 8] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 11 201 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[0 5 98 0 40 0 49] 
#[0 5 102 0 39 0 40 0 49 0 78] 
#[0 5 106 0 40 0 49] 
#[1 5 110 0 40 4 189 0 137] 
#[0 5 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 5 118 0 3 5 118 0 5 7 37 0 9] 
#[1 2 193 0 2 5 122 0 3 3 41 0 4 5 122 0 5 2 201 0 6 3 41 0 8 5 122 0 9 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 2 193 0 2 3 41 0 4 5 126 0 5 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 5 126 0 131 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 173 0 183 11 205 0 187 1 129 0 192 1 173 0 194 1 173 0 195 11 205 0 197 11 205 0 201 11 205 0 202 1 153 0 204 11 205 0 210 1 161 0 211 1 165 0 212 1 169 0 213 1 173 0 243 11 205 0 244 11 205 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 11 209 0 132] 
#[0 11 213 0 137] 
#[1 5 130 0 3 5 130 0 5 5 130 0 14 5 130 0 16 11 149 0 17 5 130 0 21 11 149 0 22 5 130 0 23 5 130 0 24 11 149 0 25 5 130 0 26 5 130 0 27 5 130 0 28 5 130 0 30 1 83 0 31 5 130 0 32 1 87 0 33 5 130 0 36 11 149 0 38 5 130 0 40 11 149 0 42 5 130 0 43 6 141 0 44 11 149 0 45 11 149 0 47 5 130 0 48 6 145 0 51 5 130 0 52 5 130 0 56 5 130 0 57 5 130 0 59 5 130 0 61 11 149 0 62 5 130 0 65 11 149 0 67 11 85 0 70 11 149 0 73 5 130 0 74 5 130 0 77 11 149 0 82 11 149 0 83 11 149 0 86 1 91 0 87 5 130 0 88 5 130 0 89 5 130 0 91 5 130 0 92 5 130 0 93 5 130 0 94 5 130 0 96 5 130 0 97 11 149 0 100 11 149 0 101 5 130 0 104 11 149 0 105 11 149 0 110 11 149 0 111 5 130 0 112 5 130 0 113 5 130 0 115 5 130 0 118 11 149 0 120 5 130 0 123 11 149 0 124 5 130 0 127 5 130 0 128 5 130 0 130 5 130 0 131 5 130 0 132 5 130 0 137 5 130 0 139 11 137 1 25 11 137 1 26 11 137 1 27 11 149 1 28 5 130 1 131] 
#[0 11 217 0 40] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 11 221 0 183 11 221 0 187 1 129 0 192 11 221 0 194 11 221 0 195 11 221 0 197 11 221 0 201 11 221 0 202 1 153 0 204 11 221 0 210 1 161 0 211 1 165 0 212 1 169 0 213 11 221 0 243 11 221 0 244 11 221 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[0 5 134 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 11 225 0 140 11 229 0 199] 
#[0 5 138 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 5 142 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 11 233 0 210 1 161 0 211 1 165 0 212 7 129 0 213 11 233 0 248 7 129 1 114 1 189 1 119 1 193 1 130] 
#[0 5 146 0 77] 
#[0 5 150 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 5 154 0 3 5 154 0 5 5 154 0 14 3 209 0 16 5 154 0 21 5 154 0 23 5 154 0 27 5 154 0 30 5 154 0 31 5 154 0 33 5 154 0 36 5 154 0 52 5 154 0 57 5 154 0 59 5 154 0 65 5 154 0 74 5 154 0 77 5 154 0 87 5 154 0 89 5 154 0 96 5 154 0 97 5 154 0 104 5 154 0 112 5 154 0 115 5 154 0 118 5 154 0 123 5 154 0 127 5 154 0 128 3 213 0 130 5 154 0 131 5 154 0 132 5 154 0 137 5 154 1 131] 
#[0 11 237 0 139] 
#[1 2 54 0 3 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 11 241 0 237] 
#[1 2 54 0 3 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 11 245 0 237] 
#[1 2 54 0 3 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 11 249 0 237] 
#[1 2 54 0 3 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 11 253 0 237] 
#[1 12 1 0 88 12 5 0 92] 
#[0 5 158 0 3 0 40] 
#[0 5 162 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 166 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 170 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 174 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 178 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 3 153 0 139 12 9 0 236] 
#[1 3 153 0 139 12 13 0 236] 
#[1 3 153 0 139 12 17 0 236] 
#[0 5 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 186 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 190 0 3 5 190 0 21 5 190 0 23 5 190 0 24 5 190 0 26 5 190 0 27 5 190 0 28 5 190 0 32 5 190 0 40 6 141 0 44 6 145 0 51 5 190 0 52 5 190 0 65 5 190 0 88 5 190 0 89 5 190 0 91 5 190 0 92 5 190 0 93 5 190 0 94 5 190 0 104 5 190 0 113 5 190 0 115 5 190 0 118 5 190 0 123 5 190 0 130 5 190 0 139 6 149 1 27] 
#[0 5 194 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 198 0 3 5 198 0 21 5 198 0 23 5 198 0 24 5 198 0 26 5 198 0 27 5 198 0 28 5 198 0 32 5 198 0 40 6 141 0 44 6 145 0 51 5 198 0 52 5 198 0 65 5 198 0 88 5 198 0 89 5 198 0 91 5 198 0 92 5 198 0 93 5 198 0 94 5 198 0 104 5 198 0 113 5 198 0 115 5 198 0 118 5 198 0 123 5 198 0 130 5 198 0 139 6 157 1 27] 
#[0 5 202 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 93 0 2 5 165 0 6 0 54 0 137 12 21 0 196] 
#[1 12 25 0 2 5 165 0 6 5 206 0 137 12 29 1 45] 
#[1 2 93 0 2 5 165 0 6 0 54 0 9 12 33 0 14 0 54 0 137 8 237 0 196] 
#[1 2 93 0 2 5 165 0 6 12 37 0 14 0 54 0 137 8 245 0 196] 
#[1 5 210 0 9 5 210 0 30 5 210 0 33 5 210 0 57 5 210 0 59 5 210 0 74 5 210 0 96 5 210 0 97 5 210 0 112 5 210 0 127 5 210 0 128 12 41 0 130 5 210 0 137 12 45 1 13] 
#[1 9 241 0 28 9 245 0 32 4 81 0 52 9 249 0 79 4 89 0 89 10 1 1 48 10 5 1 50 10 9 1 56 10 13 1 58] 
#[0 5 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 218 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 222 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 234 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 238 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 53 0 2 1 57 0 15 0 18 0 19 1 61 0 46 1 65 0 52 1 69 0 75 1 153 0 85 1 77 0 89 0 7 0 98 1 85 0 99 1 89 0 107 1 93 0 118 0 165 0 130 1 97 0 135 1 101 0 136 1 105 0 138 1 109 0 140 1 165 0 141 1 189 0 143 1 117 0 147 12 49 0 183 12 49 0 187 1 129 0 192 12 49 0 194 12 49 0 195 12 49 0 197 12 49 0 201 12 49 0 202 1 153 0 204 12 49 0 210 1 161 0 211 1 165 0 212 1 169 0 213 12 49 0 243 12 49 0 244 12 49 0 245 1 169 1 114 1 189 1 119 1 193 1 130] 
#[1 3 146 0 3 3 146 0 17 3 146 0 22 3 146 0 23 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 31 3 146 0 32 3 146 0 33 3 146 0 38 3 146 0 40 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 47 3 146 0 48 3 146 0 51 3 146 0 52 3 146 0 61 3 146 0 62 3 146 0 67 3 146 0 70 3 146 0 73 3 146 0 82 3 146 0 83 3 146 0 86 3 146 0 87 3 146 0 88 3 146 0 89 3 146 0 91 3 146 0 92 3 146 0 93 3 146 0 94 3 146 0 100 3 146 0 101 3 146 0 104 3 146 0 105 3 146 0 110 3 146 0 111 3 146 0 113 3 146 0 115 3 146 0 118 3 146 0 120 3 146 0 123 3 146 0 124 3 146 0 130 3 146 0 139 12 53 1 23] 
#[1 3 146 0 3 3 146 0 17 3 146 0 22 3 146 0 23 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 31 3 146 0 32 3 146 0 33 3 146 0 38 3 146 0 40 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 47 3 146 0 48 3 146 0 51 3 146 0 52 3 146 0 61 3 146 0 62 3 146 0 67 3 146 0 70 3 146 0 73 3 146 0 82 3 146 0 83 3 146 0 86 3 146 0 87 3 146 0 88 3 146 0 89 3 146 0 91 3 146 0 92 3 146 0 93 3 146 0 94 3 146 0 100 3 146 0 101 3 146 0 104 3 146 0 105 3 146 0 110 3 146 0 111 3 146 0 113 3 146 0 115 3 146 0 118 3 146 0 120 3 146 0 123 3 146 0 124 3 146 0 130 3 146 0 139 12 57 1 23] 
#[1 3 146 0 3 3 146 0 17 3 146 0 22 3 146 0 23 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 31 3 146 0 32 3 146 0 33 3 146 0 38 3 146 0 40 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 47 3 146 0 48 3 146 0 51 3 146 0 52 3 146 0 61 3 146 0 62 3 146 0 67 3 146 0 70 3 146 0 73 3 146 0 82 3 146 0 83 3 146 0 86 3 146 0 87 3 146 0 88 3 146 0 89 3 146 0 91 3 146 0 92 3 146 0 93 3 146 0 94 3 146 0 100 3 146 0 101 3 146 0 104 3 146 0 105 3 146 0 110 3 146 0 111 3 146 0 113 3 146 0 115 3 146 0 118 3 146 0 120 3 146 0 123 3 146 0 124 3 146 0 130 3 146 0 139 12 61 1 23] 
#[1 3 197 0 2 5 242 0 3 3 205 0 4 5 242 0 5 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 5 246 0 5 3 209 0 16 3 213 0 130 5 246 0 132] 
#[0 5 250 0 5 0 132] 
#[0 12 65 0 139] 
#[1 10 109 0 2 12 81 0 17 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 31 4 198 0 32 4 198 0 40 4 198 0 52 12 73 0 54 4 198 0 87 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 12 81 0 106 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 137 4 198 0 139 12 81 0 224 12 85 0 234] 
#[1 12 89 0 140 12 93 0 192 12 97 0 235] 
#[1 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 12 101 0 227 5 189 0 237] 
#[0 5 254 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 12 105 0 137] 
#[0 12 109 0 137] 
#[1 6 2 0 26 6 2 0 40 6 2 0 52 6 2 0 89 6 2 0 91 12 113 0 130 12 117 0 251] 
#[0 6 6 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 12 125 0 31 6 10 0 137 12 125 0 226] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 12 129 0 213 12 129 1 114 1 189 1 119 1 193 1 130] 
#[0 12 133 0 137] 
#[0 6 14 0 3 0 131 0 137 1 131] 
#[0 12 137 0 139] 
#[0 6 18 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 40 0 14 0 48 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 12 141 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[0 6 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 34 0 40 0 48 0 61] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 141 0 44 6 145 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 10 77 1 27 12 145 1 65 2 61 1 66] 
#[0 6 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 54 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 141 0 44 6 145 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 10 81 1 27 12 149 1 65 2 61 1 66] 
#[0 6 58 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 62 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 66 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 12 153 1 65 2 61 1 66] 
#[0 6 70 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 74 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 78 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 12 157 1 65 2 61 1 66] 
#[0 6 82 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 86 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 141 0 44 6 145 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 10 85 1 27 12 161 1 65 2 61 1 66] 
#[0 6 90 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 94 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 98 0 40 4 189 0 137] 
#[0 6 102 1 131] 
#[0 12 165 0 137] 
#[1 6 106 0 3 6 106 0 17 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 38 6 106 0 40 6 106 0 42 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 48 6 106 0 51 6 106 0 52 6 106 0 56 6 106 0 61 6 106 0 62 6 106 0 65 6 106 0 67 6 106 0 70 6 106 0 73 6 106 0 82 6 106 0 83 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 100 6 106 0 101 6 106 0 104 6 106 0 105 6 106 0 110 6 106 0 111 6 106 0 113 6 106 0 115 6 106 0 118 6 106 0 120 6 106 0 123 6 106 0 124 6 106 0 130 6 106 0 139 12 169 1 24] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 12 173 0 31 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 6 10 0 137 12 173 0 226 3 205 1 124] 
#[0 12 177 0 143] 
#[0 6 110 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 12 181 0 143] 
#[0 6 114 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 118 0 137] 
#[0 6 122 0 137] 
#[0 6 126 0 137] 
#[1 6 130 0 137 12 185 0 143] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 12 189 0 213 12 189 1 114 1 189 1 119 1 193 1 130] 
#[0 6 134 0 137] 
#[0 6 138 0 137] 
#[0 6 142 0 137] 
#[0 6 146 0 137] 
#[0 6 150 0 137] 
#[0 6 154 0 137] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 12 193 0 213 12 193 1 114 1 189 1 119 1 193 1 130] 
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
#[0 6 202 0 137] 
#[0 6 206 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 210 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 214 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 12 197 0 137] 
#[1 3 197 0 2 3 205 0 4 6 218 0 5 3 201 0 6 3 205 0 8 6 218 0 9 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 6 222 0 40 4 189 0 137] 
#[0 6 226 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 6 230 0 39 0 40 0 137] 
#[0 6 234 0 39 0 40 0 137] 
#[1 6 238 0 5 6 242 0 9] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 3 41 0 35 12 201 0 36 3 41 0 58 3 41 0 64 3 41 0 71 3 41 0 80 3 41 0 108 3 41 0 109 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[0 6 246 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 6 250 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 6 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 7 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 12 205 0 36] 
#[1 7 6 0 40 7 6 0 49 4 189 0 137] 
#[1 7 10 0 5 0 214 0 16 0 214 0 130 7 10 0 132] 
#[0 7 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 146 0 3 3 146 0 5 3 146 0 14 3 146 0 16 3 146 0 17 3 146 0 21 3 146 0 22 3 146 0 23 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 30 3 146 0 31 3 146 0 32 3 146 0 33 3 146 0 36 3 146 0 38 3 146 0 40 3 146 0 42 3 146 0 43 3 146 0 44 3 146 0 45 3 146 0 47 3 146 0 48 3 146 0 51 3 146 0 52 3 146 0 56 3 146 0 57 3 146 0 59 3 146 0 61 3 146 0 62 3 146 0 65 3 146 0 67 3 146 0 70 3 146 0 73 3 146 0 74 3 146 0 77 3 146 0 82 3 146 0 83 3 146 0 86 3 146 0 87 3 146 0 88 3 146 0 89 3 146 0 91 3 146 0 92 3 146 0 93 3 146 0 94 3 146 0 96 3 146 0 97 3 146 0 100 3 146 0 101 3 146 0 104 3 146 0 105 3 146 0 110 3 146 0 111 3 146 0 112 3 146 0 113 3 146 0 115 3 146 0 118 3 146 0 120 3 146 0 123 3 146 0 124 3 146 0 127 3 146 0 128 3 146 0 130 3 146 0 131 3 146 0 132 3 146 0 137 3 146 0 139 12 209 1 23 3 146 1 131] 
#[0 7 18 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 209 0 16 3 213 0 130 12 213 0 137] 
#[0 7 22 0 3 0 5] 
#[1 7 26 0 3 12 217 0 5] 
#[0 7 30 0 5 0 131] 
#[1 3 233 0 9 1 22 0 77 12 221 1 8] 
#[1 7 34 0 3 7 34 0 24 7 153 0 26 4 77 0 27 7 157 0 28 7 161 0 32 7 34 0 40 7 165 0 52 7 34 0 88 7 169 0 89 7 173 0 91 7 34 0 92 7 34 0 93 7 34 0 94 7 34 0 113 4 97 0 115 4 101 0 118 4 105 0 123 1 197 0 130 1 221 0 139 7 185 0 170 7 185 0 176 7 185 0 238 7 185 0 239 7 193 0 240 7 185 0 241 7 185 0 242 7 185 0 254 7 185 0 255 7 185 1 0 7 185 1 1 7 185 1 2 7 185 1 3 7 185 1 5 7 185 1 6 7 185 1 7 7 185 1 9 7 245 1 10 7 185 1 11 7 253 1 32 7 185 1 40 8 5 1 41 7 185 1 43 8 13 1 44 7 185 1 47 4 129 1 48 7 185 1 49 4 137 1 50 7 185 1 52 7 185 1 53 7 185 1 55 4 149 1 56 7 185 1 57 4 157 1 58 7 185 1 60 7 185 1 61 7 185 1 63 8 53 1 64 7 185 1 69 4 173 1 70] 
#[1 7 38 0 3 7 38 0 24 7 153 0 26 4 77 0 27 7 157 0 28 7 161 0 32 7 38 0 40 7 165 0 52 7 38 0 88 7 169 0 89 7 173 0 91 7 38 0 92 7 38 0 93 7 38 0 94 7 38 0 113 4 97 0 115 4 101 0 118 4 105 0 123 1 197 0 130 1 221 0 139 7 185 0 170 7 185 0 176 7 185 0 238 7 185 0 239 7 193 0 240 7 185 0 241 7 185 0 242 7 185 0 254 7 185 0 255 7 185 1 0 7 185 1 1 7 185 1 2 7 185 1 3 7 185 1 5 7 185 1 6 7 185 1 7 7 185 1 9 7 245 1 10 7 185 1 11 7 253 1 32 7 185 1 40 8 5 1 41 7 185 1 43 8 13 1 44 7 185 1 47 4 129 1 48 7 185 1 49 4 137 1 50 7 185 1 52 7 185 1 53 7 185 1 55 4 149 1 56 7 185 1 57 4 157 1 58 7 185 1 60 7 185 1 61 7 185 1 63 8 53 1 64 7 185 1 69 4 173 1 70] 
#[1 7 42 0 3 7 42 0 24 7 153 0 26 4 77 0 27 7 157 0 28 7 161 0 32 7 42 0 40 7 165 0 52 7 42 0 88 7 169 0 89 7 173 0 91 7 42 0 92 7 42 0 93 7 42 0 94 7 42 0 113 4 97 0 115 4 101 0 118 4 105 0 123 1 197 0 130 1 221 0 139 7 185 0 170 7 185 0 176 7 185 0 238 7 185 0 239 7 193 0 240 7 185 0 241 7 185 0 242 7 185 0 254 7 185 0 255 7 185 1 0 7 185 1 1 7 185 1 2 7 185 1 3 7 185 1 5 7 185 1 6 7 185 1 7 7 185 1 9 7 245 1 10 7 185 1 11 7 253 1 32 7 185 1 40 8 5 1 41 7 185 1 43 8 13 1 44 7 185 1 47 4 129 1 48 7 185 1 49 4 137 1 50 7 185 1 52 7 185 1 53 7 185 1 55 4 149 1 56 7 185 1 57 4 157 1 58 7 185 1 60 7 185 1 61 7 185 1 63 8 53 1 64 7 185 1 69 4 173 1 70] 
#[1 7 46 0 3 7 46 0 24 7 153 0 26 4 77 0 27 7 157 0 28 7 161 0 32 7 46 0 40 7 165 0 52 7 46 0 88 7 169 0 89 7 173 0 91 7 46 0 92 7 46 0 93 7 46 0 94 7 46 0 113 4 97 0 115 4 101 0 118 4 105 0 123 1 197 0 130 1 221 0 139 7 185 0 170 7 185 0 176 7 185 0 238 7 185 0 239 7 193 0 240 7 185 0 241 7 185 0 242 7 185 0 254 7 185 0 255 7 185 1 0 7 185 1 1 7 185 1 2 7 185 1 3 7 185 1 5 7 185 1 6 7 185 1 7 7 185 1 9 7 245 1 10 7 185 1 11 7 253 1 32 7 185 1 40 8 5 1 41 7 185 1 43 8 13 1 44 7 185 1 47 4 129 1 48 7 185 1 49 4 137 1 50 7 185 1 52 7 185 1 53 7 185 1 55 4 149 1 56 7 185 1 57 4 157 1 58 7 185 1 60 7 185 1 61 7 185 1 63 8 53 1 64 7 185 1 69 4 173 1 70] 
#[1 2 54 0 3 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 12 225 0 237] 
#[1 2 54 0 3 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 40 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 12 229 0 237] 
#[1 2 93 0 2 5 165 0 6 0 54 0 137 12 233 0 196] 
#[1 12 25 0 2 5 165 0 6 5 206 0 137 12 237 1 45] 
#[1 2 93 0 2 5 165 0 6 0 54 0 9 0 54 0 137 12 241 0 196] 
#[0 12 245 0 137] 
#[0 12 249 0 3] 
#[0 12 253 0 137] 
#[0 13 1 0 139] 
#[0 13 5 0 139] 
#[1 1 249 0 27 1 249 0 81 1 249 0 123 1 78 0 131 0 22 0 139 13 9 1 29 4 209 1 30 4 213 1 31 1 249 1 34] 
#[1 3 233 0 9 1 22 0 30 1 22 0 33 1 22 0 57 1 22 0 59 1 22 0 74 1 22 0 96 1 22 0 97 1 22 0 112 1 22 0 127 1 22 0 128 1 22 0 137 13 13 1 8] 
#[1 3 209 0 16 13 17 0 31 13 17 0 87 3 213 0 130 1 46 0 137 13 17 0 193] 
#[1 7 50 0 3 11 149 0 17 11 149 0 22 7 50 0 23 7 50 0 24 11 149 0 25 7 50 0 26 7 50 0 27 7 50 0 28 11 53 0 31 7 50 0 32 11 57 0 33 11 149 0 38 7 50 0 40 11 149 0 42 7 50 0 43 6 141 0 44 11 149 0 45 11 149 0 47 7 50 0 48 6 145 0 51 7 50 0 52 7 50 0 61 11 149 0 62 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 7 50 0 88 7 50 0 89 7 50 0 91 7 50 0 92 7 50 0 93 7 50 0 94 11 149 0 100 11 149 0 101 7 50 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 50 0 113 7 50 0 115 7 50 0 118 11 149 0 120 7 50 0 123 11 149 0 124 7 50 0 130 7 50 0 139 11 137 1 25 11 137 1 26 11 137 1 27 11 149 1 28] 
#[1 7 54 0 3 11 149 0 17 11 149 0 22 7 54 0 23 7 54 0 24 11 149 0 25 7 54 0 26 7 54 0 27 7 54 0 28 11 53 0 31 7 54 0 32 11 57 0 33 11 149 0 38 7 54 0 40 11 149 0 42 7 54 0 43 6 141 0 44 11 149 0 45 11 149 0 47 7 54 0 48 6 145 0 51 7 54 0 52 7 54 0 61 11 149 0 62 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 7 54 0 88 7 54 0 89 7 54 0 91 7 54 0 92 7 54 0 93 7 54 0 94 11 149 0 100 11 149 0 101 7 54 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 54 0 113 7 54 0 115 7 54 0 118 11 149 0 120 7 54 0 123 11 149 0 124 7 54 0 130 7 54 0 139 11 137 1 25 11 137 1 26 11 137 1 27 11 149 1 28] 
#[1 7 58 0 3 11 149 0 17 11 149 0 22 7 58 0 23 7 58 0 24 11 149 0 25 7 58 0 26 7 58 0 27 7 58 0 28 11 53 0 31 7 58 0 32 11 57 0 33 11 149 0 38 7 58 0 40 11 149 0 42 7 58 0 43 6 141 0 44 11 149 0 45 11 149 0 47 7 58 0 48 6 145 0 51 7 58 0 52 7 58 0 61 11 149 0 62 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 7 58 0 88 7 58 0 89 7 58 0 91 7 58 0 92 7 58 0 93 7 58 0 94 11 149 0 100 11 149 0 101 7 58 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 58 0 113 7 58 0 115 7 58 0 118 11 149 0 120 7 58 0 123 11 149 0 124 7 58 0 130 7 58 0 139 11 137 1 25 11 137 1 26 11 137 1 27 11 149 1 28] 
#[0 7 62 0 31 0 87 0 137] 
#[0 7 66 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 13 21 0 50] 
#[0 7 70 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 74 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 54 0 26 2 54 0 27 2 54 0 28 7 78 0 31 2 54 0 32 2 54 0 40 2 54 0 52 7 78 0 87 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 7 78 0 137 2 54 0 139 13 25 0 227 5 189 0 237] 
#[0 0 202 0 3 0 5 0 6 0 11] 
#[1 7 82 0 3 7 82 0 5 3 177 0 6 0 146 0 11 3 181 0 188 3 53 0 189] 
#[1 13 29 0 3 13 33 0 5] 
#[1 3 6 0 40 3 6 0 88 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 113 13 37 0 228] 
#[0 7 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 7 90 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 13 41 0 213 13 41 1 114 1 189 1 119 1 193 1 130] 
#[1 7 94 0 26 7 94 0 40 7 94 0 52 7 94 0 89 7 94 0 91 13 45 0 252] 
#[0 7 98 0 137] 
#[0 13 49 0 137] 
#[1 3 197 0 2 7 102 0 3 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 7 102 0 131 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 7 102 0 137 3 205 1 124 7 102 1 131] 
#[0 7 106 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 7 110 0 5 0 137] 
#[1 7 114 0 40 7 114 0 48 7 114 0 61 4 189 0 137] 
#[0 7 118 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 122 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 126 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 130 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 134 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 106 0 3 6 106 0 17 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 38 6 106 0 40 6 106 0 42 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 48 6 106 0 51 6 106 0 52 6 106 0 56 6 106 0 61 6 106 0 62 6 106 0 65 6 106 0 67 6 106 0 70 6 106 0 73 6 106 0 82 6 106 0 83 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 100 6 106 0 101 6 106 0 104 6 106 0 105 6 106 0 110 6 106 0 111 6 106 0 113 6 106 0 115 6 106 0 118 6 106 0 120 6 106 0 123 6 106 0 124 6 106 0 130 6 106 0 139 13 53 1 24] 
#[1 7 138 0 3 11 149 0 17 7 138 0 21 11 149 0 22 7 138 0 23 7 138 0 24 11 149 0 25 7 138 0 26 7 138 0 27 7 138 0 28 11 53 0 31 7 138 0 32 11 57 0 33 11 149 0 38 7 138 0 40 11 149 0 42 7 138 0 44 11 149 0 45 11 149 0 47 7 138 0 48 7 138 0 51 7 138 0 52 7 138 0 56 7 138 0 61 11 149 0 62 7 138 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 7 138 0 88 7 138 0 89 7 138 0 91 7 138 0 92 7 138 0 93 7 138 0 94 11 149 0 100 11 149 0 101 7 138 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 138 0 113 7 138 0 115 7 138 0 118 11 149 0 120 7 138 0 123 11 149 0 124 7 138 0 130 7 138 0 139 13 57 1 26 11 149 1 28] 
#[0 13 61 0 137] 
#[0 13 65 0 137] 
#[0 13 69 0 137] 
#[0 13 73 0 137] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 13 77 0 137 3 205 1 124] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 13 81 0 137 3 205 1 124] 
#[0 7 142 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 14 0 61 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 14 0 121 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 13 85 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 13 85 1 102 13 85 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130 0 14 1 131] 
#[1 0 93 0 2 0 97 0 15 0 10 0 21 0 101 0 23 0 105 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 109 0 50 0 113 0 52 0 117 0 53 0 121 0 55 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 14 0 78 0 141 0 89 0 145 0 95 0 149 0 102 0 153 0 117 0 157 0 125 0 161 0 126 0 165 0 130 0 169 0 135 0 173 0 136 0 14 0 137 0 177 0 139 0 181 0 141 1 41 0 143 0 189 0 147 0 193 0 212 13 89 1 73 2 81 1 74 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 81 0 225 1 87 0 229 1 96 0 233 1 98 0 237 1 99 0 241 1 101 2 81 1 102 2 81 1 103 0 253 1 104 1 1 1 105 1 5 1 106 1 1 1 107 1 1 1 108 1 17 1 109 1 1 1 110 1 25 1 111 1 1 1 112 1 33 1 113 1 1 1 114 1 41 1 119 1 1 1 120 1 49 1 130] 
#[1 7 146 0 3 7 146 0 5 7 146 0 14 7 146 0 16 11 149 0 17 7 146 0 21 11 149 0 22 7 146 0 23 7 146 0 24 11 149 0 25 7 146 0 26 7 146 0 27 7 146 0 28 7 146 0 30 1 95 0 31 7 146 0 32 1 99 0 33 7 146 0 36 11 149 0 38 7 146 0 40 11 149 0 42 7 146 0 43 6 141 0 44 11 149 0 45 11 149 0 47 7 146 0 48 6 145 0 51 7 146 0 52 7 146 0 56 7 146 0 57 7 146 0 59 7 146 0 61 11 149 0 62 7 146 0 65 11 149 0 67 11 85 0 70 11 149 0 73 7 146 0 74 7 146 0 77 11 149 0 82 11 149 0 83 11 149 0 86 1 103 0 87 7 146 0 88 7 146 0 89 7 146 0 91 7 146 0 92 7 146 0 93 7 146 0 94 7 146 0 96 7 146 0 97 11 149 0 100 11 149 0 101 7 146 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 146 0 112 7 146 0 113 7 146 0 115 7 146 0 118 11 149 0 120 7 146 0 123 11 149 0 124 7 146 0 127 7 146 0 128 7 146 0 130 7 146 0 131 7 146 0 132 7 146 0 137 7 146 0 139 11 137 1 25 11 137 1 26 11 137 1 27 11 149 1 28 7 146 1 131] 
#[0 7 150 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 13 93 0 140] 
#[0 13 97 0 77] 
#[1 7 154 0 3 7 154 0 24 7 153 0 26 4 77 0 27 7 157 0 28 7 161 0 32 7 154 0 40 7 165 0 52 7 154 0 88 7 169 0 89 7 173 0 91 7 154 0 92 7 154 0 93 7 154 0 94 7 154 0 113 4 97 0 115 4 101 0 118 4 105 0 123 1 197 0 130 1 221 0 139 7 185 0 170 7 185 0 176 7 185 0 238 7 185 0 239 7 193 0 240 7 185 0 241 7 185 0 242 7 185 0 254 7 185 0 255 7 185 1 0 7 185 1 1 7 185 1 2 7 185 1 3 7 185 1 5 7 185 1 6 7 185 1 7 7 185 1 9 7 245 1 10 7 185 1 11 7 253 1 32 7 185 1 40 8 5 1 41 7 185 1 43 8 13 1 44 7 185 1 47 4 129 1 48 7 185 1 49 4 137 1 50 7 185 1 52 7 185 1 53 7 185 1 55 4 149 1 56 7 185 1 57 4 157 1 58 7 185 1 60 7 185 1 61 7 185 1 63 8 53 1 64 7 185 1 69 4 173 1 70] 
#[1 7 158 0 3 7 158 0 24 7 153 0 26 4 77 0 27 7 157 0 28 7 161 0 32 7 158 0 40 7 165 0 52 7 158 0 88 7 169 0 89 7 173 0 91 7 158 0 92 7 158 0 93 7 158 0 94 7 158 0 113 4 97 0 115 4 101 0 118 4 105 0 123 1 197 0 130 1 221 0 139 7 185 0 170 7 185 0 176 7 185 0 238 7 185 0 239 7 193 0 240 7 185 0 241 7 185 0 242 7 185 0 254 7 185 0 255 7 185 1 0 7 185 1 1 7 185 1 2 7 185 1 3 7 185 1 5 7 185 1 6 7 185 1 7 7 185 1 9 7 245 1 10 7 185 1 11 7 253 1 32 7 185 1 40 8 5 1 41 7 185 1 43 8 13 1 44 7 185 1 47 4 129 1 48 7 185 1 49 4 137 1 50 7 185 1 52 7 185 1 53 7 185 1 55 4 149 1 56 7 185 1 57 4 157 1 58 7 185 1 60 7 185 1 61 7 185 1 63 8 53 1 64 7 185 1 69 4 173 1 70] 
#[0 13 101 0 137] 
#[0 13 105 0 137] 
#[1 3 233 0 9 1 22 0 137 13 109 1 8] 
#[1 6 106 0 3 6 106 0 17 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 38 6 106 0 40 6 106 0 42 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 51 6 106 0 52 6 106 0 62 6 106 0 65 6 106 0 67 6 106 0 70 6 106 0 73 6 106 0 82 6 106 0 83 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 100 6 106 0 101 6 106 0 104 6 106 0 105 6 106 0 110 6 106 0 111 6 106 0 113 6 106 0 115 6 106 0 118 6 106 0 120 6 106 0 123 6 106 0 124 6 106 0 130 6 106 0 139 13 113 1 24] 
#[0 7 162 0 137] 
#[1 6 106 0 3 6 106 0 17 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 38 6 106 0 40 6 106 0 42 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 51 6 106 0 52 6 106 0 62 6 106 0 65 6 106 0 67 6 106 0 70 6 106 0 73 6 106 0 82 6 106 0 83 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 100 6 106 0 101 6 106 0 104 6 106 0 105 6 106 0 110 6 106 0 111 6 106 0 113 6 106 0 115 6 106 0 118 6 106 0 120 6 106 0 123 6 106 0 124 6 106 0 130 6 106 0 139 13 117 1 24] 
#[0 13 121 0 137] 
#[0 13 125 0 137] 
#[0 13 129 0 131] 
#[1 7 166 0 30 7 166 0 33 7 166 0 57 7 166 0 59 7 166 0 74 7 166 0 96 7 166 0 97 7 166 0 112 7 166 0 127 7 166 0 128 7 166 0 137 13 133 1 12] 
#[0 13 137 0 137] 
#[1 3 153 0 139 13 141 0 236] 
#[1 3 6 0 40 3 6 0 88 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 113 13 145 0 228] 
#[0 7 170 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 89 0 140 13 149 0 192] 
#[1 13 153 0 40 9 197 0 88 9 201 0 92 9 205 0 93 9 209 0 94 9 213 0 113 9 221 0 229 9 221 0 230 9 221 0 231 9 221 0 232 9 221 0 233] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 13 157 0 131 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 13 161 0 26 13 165 0 40 4 81 0 52 4 89 0 89 7 173 0 91 13 169 0 253 13 169 0 254 13 169 0 255 13 169 1 2 13 169 1 3 13 169 1 5 13 169 1 6 13 169 1 7 13 169 1 9 7 245 1 10 13 169 1 11 13 169 1 47 4 129 1 48 13 169 1 49 4 137 1 50 13 169 1 52 13 169 1 53 13 169 1 55 4 149 1 56 13 169 1 57 4 157 1 58 13 169 1 60 13 169 1 61 13 169 1 63 8 53 1 64] 
#[0 7 174 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 7 178 0 3 11 149 0 17 7 178 0 21 11 149 0 22 7 178 0 23 7 178 0 24 11 149 0 25 7 178 0 26 7 178 0 27 7 178 0 28 11 53 0 31 7 178 0 32 11 57 0 33 11 149 0 38 7 178 0 40 11 149 0 42 7 178 0 44 11 149 0 45 11 149 0 47 7 178 0 48 7 178 0 51 7 178 0 52 7 178 0 56 7 178 0 61 11 149 0 62 7 178 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 7 178 0 88 7 178 0 89 7 178 0 91 7 178 0 92 7 178 0 93 7 178 0 94 11 149 0 100 11 149 0 101 7 178 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 178 0 113 7 178 0 115 7 178 0 118 11 149 0 120 7 178 0 123 11 149 0 124 7 178 0 130 7 178 0 139 13 57 1 26 11 149 1 28] 
#[0 7 182 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139] 
#[0 7 186 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 7 190 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 194 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 198 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 202 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 206 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 7 214 0 39 7 214 0 40 7 214 0 49 7 214 0 78 4 189 0 137] 
#[0 7 218 0 3 0 5] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 13 181 0 206 13 185 0 207 13 189 0 208 13 193 0 209 1 165 0 212 13 197 0 213 13 197 1 114 1 189 1 119 1 193 1 130] 
#[1 6 106 0 3 6 106 0 17 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 38 6 106 0 40 6 106 0 42 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 51 6 106 0 52 6 106 0 62 6 106 0 65 6 106 0 67 6 106 0 70 6 106 0 73 6 106 0 82 6 106 0 83 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 100 6 106 0 101 6 106 0 104 6 106 0 105 6 106 0 110 6 106 0 111 6 106 0 113 6 106 0 115 6 106 0 118 6 106 0 120 6 106 0 123 6 106 0 124 6 106 0 130 6 106 0 139 13 201 1 24] 
#[1 6 106 0 3 6 106 0 17 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 38 6 106 0 40 6 106 0 42 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 51 6 106 0 52 6 106 0 62 6 106 0 65 6 106 0 67 6 106 0 70 6 106 0 73 6 106 0 82 6 106 0 83 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 100 6 106 0 101 6 106 0 104 6 106 0 105 6 106 0 110 6 106 0 111 6 106 0 113 6 106 0 115 6 106 0 118 6 106 0 120 6 106 0 123 6 106 0 124 6 106 0 130 6 106 0 139 13 205 1 24] 
#[0 13 209 0 137] 
#[1 7 222 0 3 11 149 0 17 7 222 0 21 11 149 0 22 7 222 0 23 7 222 0 24 11 149 0 25 7 222 0 26 7 222 0 27 7 222 0 28 11 53 0 31 7 222 0 32 11 57 0 33 11 149 0 38 7 222 0 40 11 149 0 42 7 222 0 44 11 149 0 45 11 149 0 47 7 222 0 51 7 222 0 52 11 149 0 62 7 222 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 7 222 0 88 7 222 0 89 7 222 0 91 7 222 0 92 7 222 0 93 7 222 0 94 11 149 0 100 11 149 0 101 7 222 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 222 0 113 7 222 0 115 7 222 0 118 11 149 0 120 7 222 0 123 11 149 0 124 7 222 0 130 7 222 0 139 13 57 1 26 11 149 1 28] 
#[1 7 226 0 3 11 149 0 17 7 226 0 21 11 149 0 22 7 226 0 23 7 226 0 24 11 149 0 25 7 226 0 26 7 226 0 27 7 226 0 28 11 53 0 31 7 226 0 32 11 57 0 33 11 149 0 38 7 226 0 40 11 149 0 42 7 226 0 44 11 149 0 45 11 149 0 47 7 226 0 51 7 226 0 52 11 149 0 62 7 226 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 7 226 0 88 7 226 0 89 7 226 0 91 7 226 0 92 7 226 0 93 7 226 0 94 11 149 0 100 11 149 0 101 7 226 0 104 11 149 0 105 11 149 0 110 11 149 0 111 7 226 0 113 7 226 0 115 7 226 0 118 11 149 0 120 7 226 0 123 11 149 0 124 7 226 0 130 7 226 0 139 13 57 1 26 11 149 1 28] 
#[0 7 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 234 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 238 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 213 0 30 13 217 0 33 13 221 0 57 13 225 0 59 13 229 0 74 13 233 0 96 13 237 0 97 13 241 0 112 13 245 0 127 13 249 0 128 13 253 0 137 14 1 1 14 14 5 1 15 14 9 1 16 14 13 1 17 14 17 1 18 14 21 1 19 14 25 1 21] 
#[0 7 242 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 109 0 2 5 165 0 6 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 31 4 198 0 32 4 198 0 40 4 198 0 52 4 198 0 87 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 137 4 198 0 139 14 29 0 234] 
#[1 14 33 0 40 9 197 0 88 9 201 0 92 9 205 0 93 9 209 0 94 9 213 0 113 9 221 0 229 9 221 0 230 9 221 0 231 9 221 0 232 9 221 0 233] 
#[1 7 246 0 3 7 246 0 5 3 177 0 6 0 146 0 11 3 181 0 188 3 53 0 189] 
#[0 7 250 0 31 0 87 0 137] 
#[0 7 254 0 26 0 40 0 52 0 89 0 91] 
#[1 4 81 0 52 9 249 0 79 4 89 0 89 7 173 0 91 9 253 1 10 10 1 1 48 10 5 1 50 10 9 1 56 10 13 1 58] 
#[0 8 2 0 31 0 87 0 137] 
#[0 8 6 0 26 0 40 0 52 0 89 0 91] 
#[0 8 10 0 26 0 40 0 52 0 89 0 91] 
#[0 8 14 0 26 0 40 0 52 0 89 0 91] 
#[1 2 6 0 3 2 6 0 40 14 37 0 137 14 41 1 88] 
#[0 8 18 0 3 0 40 0 137] 
#[1 14 45 0 5 14 49 0 9] 
#[0 8 22 0 5 0 9] 
#[1 3 197 0 2 3 205 0 4 8 26 0 5 3 201 0 6 3 205 0 8 8 26 0 9 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 3 205 0 35 3 205 0 58 3 205 0 64 3 205 0 71 3 205 0 80 3 205 0 108 3 205 0 109 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 3 205 1 124] 
#[1 8 30 0 3 11 149 0 17 8 30 0 21 11 149 0 22 8 30 0 23 8 30 0 24 11 149 0 25 8 30 0 26 8 30 0 27 8 30 0 28 11 53 0 31 8 30 0 32 11 57 0 33 11 149 0 38 8 30 0 40 11 149 0 42 8 30 0 44 11 149 0 45 11 149 0 47 8 30 0 51 8 30 0 52 11 149 0 62 8 30 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 8 30 0 88 8 30 0 89 8 30 0 91 8 30 0 92 8 30 0 93 8 30 0 94 11 149 0 100 11 149 0 101 8 30 0 104 11 149 0 105 11 149 0 110 11 149 0 111 8 30 0 113 8 30 0 115 8 30 0 118 11 149 0 120 8 30 0 123 11 149 0 124 8 30 0 130 8 30 0 139 13 57 1 26 11 149 1 28] 
#[1 8 34 0 3 11 149 0 17 8 34 0 21 11 149 0 22 8 34 0 23 8 34 0 24 11 149 0 25 8 34 0 26 8 34 0 27 8 34 0 28 11 53 0 31 8 34 0 32 11 57 0 33 11 149 0 38 8 34 0 40 11 149 0 42 8 34 0 44 11 149 0 45 11 149 0 47 8 34 0 51 8 34 0 52 11 149 0 62 8 34 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 8 34 0 88 8 34 0 89 8 34 0 91 8 34 0 92 8 34 0 93 8 34 0 94 11 149 0 100 11 149 0 101 8 34 0 104 11 149 0 105 11 149 0 110 11 149 0 111 8 34 0 113 8 34 0 115 8 34 0 118 11 149 0 120 8 34 0 123 11 149 0 124 8 34 0 130 8 34 0 139 13 57 1 26 11 149 1 28] 
#[1 6 106 0 3 6 106 0 17 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 38 6 106 0 40 6 106 0 42 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 51 6 106 0 52 6 106 0 62 6 106 0 65 6 106 0 67 6 106 0 70 6 106 0 73 6 106 0 82 6 106 0 83 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 100 6 106 0 101 6 106 0 104 6 106 0 105 6 106 0 110 6 106 0 111 6 106 0 113 6 106 0 115 6 106 0 118 6 106 0 120 6 106 0 123 6 106 0 124 6 106 0 130 6 106 0 139 14 53 1 24] 
#[1 3 69 0 2 1 57 0 15 8 38 0 30 8 38 0 33 8 38 0 57 8 38 0 59 8 38 0 74 1 69 0 75 8 38 0 96 8 38 0 97 8 38 0 112 8 38 0 127 8 38 0 128 0 165 0 130 1 97 0 135 1 101 0 136 8 38 0 137 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 14 57 0 213 14 57 1 114 1 189 1 119 1 193 1 130] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 14 61 0 213 14 61 1 114 1 189 1 119 1 193 1 130] 
#[1 14 65 0 139 14 69 1 20] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 14 73 0 213 14 73 1 114 1 189 1 119 1 193 1 130] 
#[0 8 42 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 14 77 1 105 1 5 1 106 14 77 1 107 14 77 1 108 1 17 1 109 14 77 1 110 1 25 1 111 14 77 1 112 1 33 1 113 14 77 1 114 1 41 1 119 14 77 1 120 1 49 1 130] 
#[0 14 81 0 33] 
#[0 14 85 0 139] 
#[1 0 93 0 2 0 97 0 15 0 113 0 52 0 125 0 60 0 129 0 68 0 133 0 69 0 137 0 75 0 141 0 89 0 165 0 130 0 169 0 135 0 173 0 136 2 65 0 139 0 193 0 141 1 41 0 143 0 189 0 147 0 193 0 212 14 89 1 105 1 5 1 106 14 89 1 107 14 89 1 108 1 17 1 109 14 89 1 110 1 25 1 111 14 89 1 112 1 33 1 113 14 89 1 114 1 41 1 119 14 89 1 120 1 49 1 130] 
#[0 14 93 0 33] 
#[1 8 46 0 3 8 46 0 24 8 46 0 26 8 46 0 27 8 46 0 28 14 97 0 30 8 46 0 32 8 46 0 40 8 46 0 52 8 46 0 88 8 46 0 89 8 46 0 91 8 46 0 92 8 46 0 93 8 46 0 94 8 46 0 113 8 46 0 115 8 46 0 118 8 46 0 123 8 46 0 130 8 46 0 139 14 101 1 22] 
#[0 8 50 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 54 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 58 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 62 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 66 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 70 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 74 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 54 0 26 2 54 0 27 2 54 0 28 8 78 0 31 2 54 0 32 2 54 0 40 2 54 0 52 8 78 0 87 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 8 78 0 137 2 54 0 139 14 105 0 227 5 189 0 237] 
#[0 8 82 0 31 0 87 0 137] 
#[1 3 69 0 2 2 238 0 3 1 57 0 15 2 238 0 40 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 14 109 0 207 13 189 0 208 13 193 0 209 1 165 0 212 13 197 0 213 13 197 1 114 1 189 1 119 1 193 1 130] 
#[0 8 86 0 3 0 40] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 14 113 0 209 1 165 0 212 13 197 0 213 13 197 1 114 1 189 1 119 1 193 1 130] 
#[0 14 117 0 2] 
#[1 8 90 0 3 11 149 0 17 8 90 0 21 11 149 0 22 8 90 0 23 8 90 0 24 11 149 0 25 8 90 0 26 8 90 0 27 8 90 0 28 11 53 0 31 8 90 0 32 11 57 0 33 11 149 0 38 8 90 0 40 11 149 0 42 8 90 0 44 11 149 0 45 11 149 0 47 8 90 0 51 8 90 0 52 11 149 0 62 8 90 0 65 11 149 0 67 11 85 0 70 11 149 0 73 11 149 0 82 11 149 0 83 11 149 0 86 11 149 0 87 8 90 0 88 8 90 0 89 8 90 0 91 8 90 0 92 8 90 0 93 8 90 0 94 11 149 0 100 11 149 0 101 8 90 0 104 11 149 0 105 11 149 0 110 11 149 0 111 8 90 0 113 8 90 0 115 8 90 0 118 11 149 0 120 8 90 0 123 11 149 0 124 8 90 0 130 8 90 0 139 13 57 1 26 11 149 1 28] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 8 94 0 30 8 94 0 33 3 205 0 35 8 94 0 57 3 205 0 58 8 94 0 59 3 205 0 64 3 205 0 71 8 94 0 74 3 205 0 80 8 94 0 96 8 94 0 97 3 205 0 108 3 205 0 109 8 94 0 112 8 94 0 127 8 94 0 128 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 8 94 0 137 3 205 1 124] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 8 98 0 30 8 98 0 33 3 205 0 35 8 98 0 57 3 205 0 58 8 98 0 59 3 205 0 64 3 205 0 71 8 98 0 74 3 205 0 80 8 98 0 96 8 98 0 97 3 205 0 108 3 205 0 109 8 98 0 112 8 98 0 127 8 98 0 128 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 8 98 0 137 3 205 1 124] 
#[0 8 102 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 121 0 5 8 106 0 30 8 106 0 33 8 106 0 57 8 106 0 59 8 106 0 74 8 106 0 96 8 106 0 97 8 106 0 112 8 106 0 127 8 106 0 128 8 106 0 137] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 8 110 0 30 8 110 0 33 3 205 0 35 8 110 0 57 3 205 0 58 8 110 0 59 3 205 0 64 3 205 0 71 8 110 0 74 3 205 0 80 8 110 0 96 8 110 0 97 3 205 0 108 3 205 0 109 8 110 0 112 8 110 0 127 8 110 0 128 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 8 110 0 137 3 205 1 124] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 8 114 0 30 8 114 0 33 3 41 0 35 8 114 0 57 3 41 0 58 8 114 0 59 3 41 0 64 3 41 0 71 8 114 0 74 3 41 0 80 8 114 0 96 8 114 0 97 3 41 0 108 3 41 0 109 8 114 0 112 8 114 0 127 8 114 0 128 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 8 114 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 14 125 0 213 14 125 1 114 1 189 1 119 1 193 1 130] 
#[0 8 118 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 193 0 2 3 41 0 4 2 201 0 6 3 41 0 8 2 209 0 10 3 41 0 11 3 41 0 12 3 41 0 13 3 41 0 14 3 41 0 18 3 41 0 20 8 122 0 30 8 122 0 33 3 41 0 35 8 122 0 57 3 41 0 58 8 122 0 59 3 41 0 64 3 41 0 71 8 122 0 74 3 41 0 80 8 122 0 96 8 122 0 97 3 41 0 108 3 41 0 109 8 122 0 112 8 122 0 127 8 122 0 128 3 41 0 129 3 13 0 130 3 41 0 132 3 41 0 133 3 41 0 135 3 41 0 136 8 122 0 137 3 33 0 138 3 37 1 117 3 41 1 123 3 41 1 124] 
#[1 3 69 0 2 1 57 0 15 1 69 0 75 0 165 0 130 1 97 0 135 1 101 0 136 3 117 0 140 1 165 0 141 1 189 0 143 1 117 0 147 1 165 0 212 14 129 0 213 14 129 1 114 1 189 1 119 1 193 1 130] 
#[0 14 133 0 137] 
#[0 8 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 6 0 40 3 6 0 88 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 113 14 137 0 228] 
#[0 8 130 0 3 0 40 0 137] 
#[0 8 134 0 5 0 9] 
#[1 2 54 0 3 2 54 0 24 2 54 0 26 2 54 0 27 2 54 0 28 2 54 0 32 2 54 0 52 2 54 0 88 2 54 0 89 2 54 0 91 2 54 0 92 2 54 0 93 2 54 0 94 2 54 0 113 2 54 0 115 2 54 0 118 2 54 0 123 2 54 0 130 2 54 0 139 14 141 0 203 5 185 0 227 5 189 0 237] 
#[0 14 145 0 139] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 8 138 0 30 8 138 0 33 3 205 0 35 8 138 0 57 3 205 0 58 8 138 0 59 3 205 0 64 3 205 0 71 8 138 0 74 3 205 0 80 8 138 0 96 8 138 0 97 3 205 0 108 3 205 0 109 8 138 0 112 8 138 0 127 8 138 0 128 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 8 138 0 137 3 205 1 124] 
#[1 3 197 0 2 3 205 0 4 3 201 0 6 3 205 0 8 3 205 0 11 3 205 0 12 3 205 0 13 3 205 0 18 3 205 0 20 8 142 0 30 8 142 0 33 3 205 0 35 8 142 0 57 3 205 0 58 8 142 0 59 3 205 0 64 3 205 0 71 8 142 0 74 3 205 0 80 8 142 0 96 8 142 0 97 3 205 0 108 3 205 0 109 8 142 0 112 8 142 0 127 8 142 0 128 3 205 0 129 3 205 0 132 3 205 0 133 3 205 0 135 3 205 0 136 8 142 0 137 3 205 1 124] 
#[0 8 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 14 149 0 40 9 197 0 88 9 201 0 92 9 205 0 93 9 209 0 94 9 213 0 113 9 221 0 229 9 221 0 230 9 221 0 231 9 221 0 232 9 221 0 233] 
#[0 14 153 0 3] 
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
