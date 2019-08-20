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
#[ 0 18 1 85] 
#[ 0 142 0 146] 
#[ 0 146 0 166] 
#[ 0 198 0 202] 
#[ 0 250 3 201] 
#[ 0 250 3 233] 
#[ 1 222 3 173] 
#[ 1 222 3 177] 
#[ 1 222 3 181] 
#[ 1 222 3 185] 
#[ 1 222 3 201] 
#[ 1 222 3 233] 
#[ 1 222 3 237] 
#[ 1 250 3 173] 
#[ 1 250 3 177] 
#[ 1 250 3 181] 
#[ 1 250 3 185] 
#[ 1 250 3 201] 
#[ 1 250 3 233] 
#[ 1 250 3 237] 
#[ 2 26 3 173] 
#[ 2 26 3 177] 
#[ 2 26 3 181] 
#[ 2 26 3 185] 
#[ 2 26 3 201] 
#[ 2 26 3 233] 
#[ 2 26 3 237] 
#[ 2 30 3 173] 
#[ 2 30 3 177] 
#[ 2 30 3 181] 
#[ 2 30 3 185] 
#[ 2 30 3 201] 
#[ 2 30 3 233] 
#[ 2 30 3 237] 
#[ 2 166 6 197] 
#[ 2 174 3 173] 
#[ 2 174 3 177] 
#[ 2 174 3 181] 
#[ 2 174 3 201] 
#[ 2 174 3 233] 
#[ 2 174 3 237] 
#[ 2 178 3 173] 
#[ 2 178 3 177] 
#[ 2 178 3 181] 
#[ 2 178 3 201] 
#[ 2 178 3 233] 
#[ 2 178 3 237] 
#[ 2 190 3 173] 
#[ 2 190 3 177] 
#[ 2 190 3 181] 
#[ 2 190 3 201] 
#[ 2 190 3 233] 
#[ 2 190 3 237] 
#[ 2 194 3 173] 
#[ 2 194 3 177] 
#[ 2 194 3 181] 
#[ 2 194 3 201] 
#[ 2 194 3 233] 
#[ 2 194 3 237] 
#[ 3 173 3 198] 
#[ 3 177 3 198] 
#[ 3 181 3 198] 
#[ 3 185 3 198] 
#[ 3 198 3 201] 
#[ 3 198 3 233] 
#[ 3 198 3 237] 
#[ 3 173 3 206] 
#[ 3 177 3 206] 
#[ 3 181 3 206] 
#[ 3 185 3 206] 
#[ 3 201 3 206] 
#[ 3 206 3 233] 
#[ 3 206 3 237] 
#[ 3 201 3 230] 
#[ 3 230 3 233] 
#[ 3 173 4 6] 
#[ 3 177 4 6] 
#[ 3 181 4 6] 
#[ 3 201 4 6] 
#[ 3 233 4 6] 
#[ 3 237 4 6] 
#[ 0 198 11 29] 
#[ 0 222 5 66] 
#[ 0 226 5 70] 
#[ 1 198 5 121] 
#[ 6 86 9 225] 
#[ 6 86 9 229] 
#[ 6 86 10 21] 
#[ 8 18 9 225] 
#[ 8 18 9 229] 
#[ 8 18 10 21]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-08-20T13:02:26.409058-05:00'
]

{ #category : #generated }
DelphiParser class >> definitionComment [
"%start File Statement SimpleDefinedType NamedDefinedType ConstantValue Variable Argument NewClassComponent;

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
	#(164 0 #reduceActionForUsesList1: 5805057 false ) 
	#(362 0 #reduceActionForBeforeAsm1: 32688129 false ) 
	#(331 0 #reduceActionForStatement14: 29059086 false ) 
	#(204 0 #nil 11525121 false ) 
	#(291 0 #nil 23832577 false ) 
	#(149 1 #reduceActionForFile2: 4260866 false ) 
	#(149 1 #reduceActionForFile3: 4260867 false ) 
	#(149 1 #reduceActionForFile4: 4260868 false ) 
	#(149 1 #reduceActionForFile1: 4260865 false ) 
	#(163 0 #nil 5690369 false ) 
	#(161 1 #reduceActionForUnitFile2: 5363714 false ) 
	#(323 0 #reduceActionForMethodVariables2: 28304386 false ) 
	#(196 0 #reduceActionForOptionalArguments1: 10417153 false ) 
	#(378 1 #reduceActionForInheritedFunctionCall4: 35696644 false ) 
	#(353 1 #reduceActionForRaiseStatement2: 31706114 false ) 
	#(371 1 #reduceActionForVariableExpression1: 35098625 false ) 
	#(212 1 #liftFirstValue: 12217345 false ) 
	#(377 1 #liftFirstValue: 35674113 false ) 
	#(363 1 #reduceActionForExpression9: 32805897 false ) 
	#(363 1 #reduceActionForExpression9: 32805895 false ) 
	#(331 1 #reduceActionForStatement13: 29059085 false ) 
	#(331 1 #reduceActionForStatement11: 29059083 false ) 
	#(331 1 #reduceActionForStatement2: 29059074 false ) 
	#(331 1 #reduceActionForStatement3: 29059075 false ) 
	#(331 1 #reduceActionForStatement4: 29059076 false ) 
	#(331 1 #reduceActionForStatement5: 29059077 false ) 
	#(331 1 #reduceActionForStatement6: 29059078 false ) 
	#(331 1 #reduceActionForStatement7: 29059079 false ) 
	#(331 1 #reduceActionForStatement8: 29059080 false ) 
	#(331 1 #reduceActionForStatement9: 29059081 false ) 
	#(331 1 #reduceActionForStatement10: 29059082 false ) 
	#(331 1 #liftFirstValue: 29059084 false ) 
	#(360 1 #liftFirstValue: 32508930 false ) 
	#(331 1 #liftFirstValue: 29059073 false ) 
	#(363 1 #liftFirstValue: 32805891 false ) 
	#(189 0 #reduceActionForInsideGeneric1: 9027585 true ) 
	#(363 1 #liftFirstValue: 32805890 false ) 
	#(363 1 #liftFirstValue: 32805911 false ) 
	#(363 1 #liftFirstValue: 32805910 false ) 
	#(363 1 #liftFirstValue: 32805909 false ) 
	#(363 1 #liftFirstValue: 32805889 false ) 
	#(363 1 #liftFirstValue: 32805906 false ) 
	#(363 1 #reduceActionForExpression9: 32805896 false ) 
	#(363 1 #liftFirstValue: 32805894 false ) 
	#(363 1 #reduceActionForExpression9: 32805908 false ) 
	#(214 0 #reduceActionForConstantArray2: 13299714 false ) 
	#(245 1 #reduceActionForFileType2: 17820674 false ) 
	#(204 1 #liftFirstValue: 11525122 false ) 
	#(213 1 #reduceActionForVariableExpression1: 12239875 false ) 
	#(192 1 #reduceActionForVariableExpression1: 9330689 false ) 
	#(213 1 #reduceActionForExpression9: 12239879 false ) 
	#(244 1 #liftFirstValue: 17726468 false ) 
	#(244 1 #liftFirstValue: 17726465 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8460289 false ) 
	#(244 1 #liftFirstValue: 17726466 false ) 
	#(244 1 #liftFirstValue: 17726467 false ) 
	#(187 1 #liftFirstValue: 8460297 false ) 
	#(187 1 #liftFirstValue: 8460292 false ) 
	#(187 1 #liftFirstValue: 8460293 false ) 
	#(187 1 #liftFirstValue: 8460298 false ) 
	#(213 1 #reduceActionForExpression9: 12239873 false ) 
	#(211 1 #liftFirstValue: 12153857 false ) 
	#(187 1 #liftFirstValue: 8460295 false ) 
	#(187 1 #liftFirstValue: 8460291 false ) 
	#(213 1 #liftFirstValue: 12239881 false ) 
	#(213 1 #reduceActionForExpression9: 12239878 false ) 
	#(213 1 #reduceActionForExpression9: 12239874 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7447553 false ) 
	#(240 1 #reduceActionForAttributes1: 17184769 false ) 
	#(265 0 #reduceActionForOptionalType1: 19773441 false ) 
	#(289 1 #reduceActionForVariableNames1: 23676929 false ) 
	#(291 1 #liftFirstValue: 23832579 false ) 
	#(291 1 #liftFirstValue: 23832580 false ) 
	#(291 1 #liftFirstValue: 23832578 false ) 
	#(238 1 #liftFirstValue: 16348172 false ) 
	#(238 1 #liftFirstValue: 16348173 false ) 
	#(238 1 #liftFirstValue: 16348168 false ) 
	#(238 1 #liftFirstValue: 16348170 false ) 
	#(238 1 #liftFirstValue: 16348171 false ) 
	#(238 1 #liftFirstValue: 16348169 false ) 
	#(239 1 #liftFirstValue: 16847878 false ) 
	#(238 1 #liftFirstValue: 16348164 false ) 
	#(238 1 #liftFirstValue: 16348166 false ) 
	#(256 1 #liftFirstValue: 18952193 false ) 
	#(256 1 #liftFirstValue: 18952194 false ) 
	#(256 1 #liftFirstValue: 18952195 false ) 
	#(256 1 #liftFirstValue: 18952196 false ) 
	#(256 1 #liftFirstValue: 18952197 false ) 
	#(255 1 #liftFirstValue: 18879489 false ) 
	#(266 1 #reduceActionForPropertyHeader1: 19821569 false ) 
	#(255 1 #liftFirstValue: 18879490 false ) 
	#(257 1 #liftFirstValue: 19090433 false ) 
	#(257 1 #liftFirstValue: 19090434 false ) 
	#(258 1 #liftFirstValue: 19174401 false ) 
	#(258 1 #liftFirstValue: 19174402 false ) 
	#(259 1 #liftFirstValue: 19255297 false ) 
	#(304 1 #reduceActionForExternalProcedureHeader1: 25757697 false ) 
	#(259 1 #liftFirstValue: 19255298 false ) 
	#(306 1 #reduceActionForExternalProcedureHeader1: 25955329 false ) 
	#(260 1 #liftFirstValue: 19333121 false ) 
	#(260 1 #liftFirstValue: 19333122 false ) 
	#(262 1 #liftFirstValue: 19518465 false ) 
	#(312 1 #reduceActionForExternalFunctionHeader1: 26795009 false ) 
	#(262 1 #liftFirstValue: 19518466 false ) 
	#(314 1 #reduceActionForExternalFunctionHeader1: 26987521 false ) 
	#(263 1 #liftFirstValue: 19593217 false ) 
	#(263 1 #liftFirstValue: 19593218 false ) 
	#(264 1 #liftFirstValue: 19683329 false ) 
	#(264 1 #liftFirstValue: 19683330 false ) 
	#(238 1 #liftFirstValue: 16348163 false ) 
	#(326 1 #reduceActionForVars1: 28614657 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6072321 false ) 
	#(193 0 #nil 9672705 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5883905 false ) 
	#(166 1 #reduceActionForUsesModule1: 5958657 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4819969 false ) 
	#(292 0 #nil 23919617 false ) 
	#(155 1 #reduceActionForMainMethod1: 4874241 false ) 
	#(363 2 #reduceActionForExpression14: 32805902 false ) 
	#(330 1 #reduceActionForVariableNames1: 28955649 false ) 
	#(357 1 #liftFirstValue: 32228353 false ) 
	#(286 0 #reduceActionForArgumentList1: 23408641 false ) 
	#(333 2 #reduceActionForGotoStatement1: 29670401 false ) 
	#(333 2 #reduceActionForGotoStatement1: 29670402 false ) 
	#(378 2 #reduceActionForInheritedFunctionCall3: 35696643 false ) 
	#(363 2 #reduceActionForExpression15: 32805903 false ) 
	#(367 2 #reduceActionForAnonymousProcedureHeader1: 34507777 false ) 
	#(354 0 #reduceActionForOptionalType1: 31814657 false ) 
	#(339 0 #nil 30414849 false ) 
	#(337 1 #reduceActionForVariableNames1: 30209025 false ) 
	#(372 2 #reduceActionForSetConstructor2: 35168258 false ) 
	#(374 1 #reduceActionForSetValue1: 35398657 false ) 
	#(373 1 #reduceActionForVariableNames1: 35298305 false ) 
	#(363 2 #reduceActionForExpression16: 32805904 false ) 
	#(363 2 #reduceActionForExpression17: 32805905 false ) 
	#(382 1 #liftFirstValue: 36395015 false ) 
	#(382 1 #liftFirstValue: 36395016 false ) 
	#(382 1 #liftFirstValue: 36395023 false ) 
	#(382 1 #liftFirstValue: 36395024 false ) 
	#(382 1 #liftFirstValue: 36395012 false ) 
	#(381 1 #liftFirstValue: 36330497 false ) 
	#(382 1 #liftFirstValue: 36395009 false ) 
	#(382 1 #liftFirstValue: 36395021 false ) 
	#(382 1 #liftFirstValue: 36395013 false ) 
	#(382 1 #liftFirstValue: 36395026 false ) 
	#(382 1 #liftFirstValue: 36395027 false ) 
	#(382 1 #liftFirstValue: 36395014 false ) 
	#(382 1 #liftFirstValue: 36395010 false ) 
	#(382 1 #liftFirstValue: 36395019 false ) 
	#(382 1 #liftFirstValue: 36395020 false ) 
	#(382 1 #liftFirstValue: 36395011 false ) 
	#(382 1 #liftFirstValue: 36395022 false ) 
	#(382 1 #liftFirstValue: 36395025 false ) 
	#(382 1 #liftFirstValue: 36395018 false ) 
	#(382 1 #liftFirstValue: 36395017 false ) 
	#(363 2 #reduceActionForExpression19: 32805907 false ) 
	#(363 2 #reduceActionForExpression13: 32805901 false ) 
	#(381 1 #liftFirstValue: 36330498 false ) 
	#(365 2 #reduceActionForInstantiatedGenericExpression1: 34223105 false ) 
	#(366 2 #reduceActionForAnonymousProcedure1: 34396161 false ) 
	#(368 2 #reduceActionForAnonymousFunction1: 34608129 false ) 
	#(365 2 #reduceActionForInstantiatedGenericExpression1: 34223106 false ) 
	#(185 1 #reduceActionForEnumName1: 8239105 false ) 
	#(184 1 #reduceActionForVariableNames1: 8166401 false ) 
	#(216 1 #reduceActionForUsesModule1: 13527041 false ) 
	#(214 1 #reduceActionForConstantArray1: 13299713 false ) 
	#(215 1 #reduceActionForUsesModuleList1: 13346817 false ) 
	#(345 0 #nil 31006721 false ) 
	#(217 1 #reduceActionForConstantArray1: 13662209 false ) 
	#(218 1 #reduceActionForVariableNames1: 13705217 false ) 
	#(213 2 #reduceActionForExpression14: 12239887 false ) 
	#(213 2 #reduceActionForExpression15: 12239884 false ) 
	#(261 0 #reduceActionForOptionalType1: 19426305 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8460299 false ) 
	#(213 2 #reduceActionForExpression16: 12239885 false ) 
	#(213 2 #reduceActionForExpression17: 12239886 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8460290 false ) 
	#(192 2 #reduceActionForNamedType3: 9330691 false ) 
	#(247 0 #reduceActionForOptionalArguments1: 18143234 false ) 
	#(237 0 #reduceActionForMethodVariables2: 16268289 false ) 
	#(240 2 #reduceActionForAttributes2: 17184770 false ) 
	#(288 2 #reduceActionForArgument2: 23537666 false ) 
	#(268 2 #reduceActionForClassPropertyHeader1: 20079617 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26403841 false ) 
	#(310 2 #reduceActionForExternalClassProcedureHeader1: 26515457 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27437057 false ) 
	#(318 2 #reduceActionForExternalClassFunctionHeader1: 27545601 false ) 
	#(238 2 #reduceActionForNewClassComponent2: 16348162 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6426625 false ) 
	#(171 1 #reduceActionForAttributes1: 6505473 false ) 
	#(302 0 #reduceActionForOptionalType1: 25542657 false ) 
	#(270 0 #nil 20502529 false ) 
	#(327 2 #reduceActionForVarsVars2: 28644354 false ) 
	#(328 1 #reduceActionForAttributes1: 28732417 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7120897 false ) 
	#(177 1 #reduceActionForAttributes1: 7201793 false ) 
	#(327 2 #reduceActionForVarsVars2: 28644353 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16348165 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16348167 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16847873 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16847874 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16847875 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16847876 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16847877 false ) 
	#(280 0 #reduceActionForMethodVariables2: 21794817 false ) 
	#(193 1 #liftFirstValue: 9672707 false ) 
	#(193 1 #liftFirstValue: 9672706 false ) 
	#(157 3 #reduceActionForPackageLine1: 4992001 false ) 
	#(164 3 #reduceActionForUsesList2: 5805058 false ) 
	#(159 1 #reduceActionForVariableNames1: 5171201 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6197249 false ) 
	#(383 0 #nil 36581377 false ) 
	#(150 3 #reduceActionForProgramFile2: 4390914 false ) 
	#(324 1 #liftFirstValue: 28376067 false ) 
	#(324 1 #liftFirstValue: 28376071 false ) 
	#(324 1 #liftFirstValue: 28376066 false ) 
	#(324 1 #liftFirstValue: 28376068 false ) 
	#(303 1 #reduceActionForProcedureDefinition2: 25590786 false ) 
	#(324 1 #liftFirstValue: 28376069 false ) 
	#(311 1 #reduceActionForFunctionDefinition2: 26633218 false ) 
	#(323 2 #reduceActionForAttributes2: 28304385 false ) 
	#(324 1 #liftFirstValue: 28376070 false ) 
	#(324 1 #liftFirstValue: 28376065 false ) 
	#(363 3 #reduceActionForExpression11: 32805899 false ) 
	#(360 3 #reduceActionForStatementBlock1: 32508929 false ) 
	#(357 2 #reduceActionForForVariableExpression2: 32228354 false ) 
	#(286 1 #reduceActionForConstantArray1: 23408642 false ) 
	#(287 1 #reduceActionForVariableNames1: 23442433 false ) 
	#(369 3 #reduceActionForAnonymousFunctionHeader1: 34716673 false ) 
	#(353 3 #reduceActionForRaiseStatement1: 31706113 false ) 
	#(343 0 #nil 30817281 false ) 
	#(372 3 #reduceActionForSetConstructor1: 35168257 false ) 
	#(332 3 #reduceActionForPackageLine1: 29535233 false ) 
	#(332 3 #reduceActionForPackageLine1: 29535234 false ) 
	#(361 3 #reduceActionForAsmBlock1: 32613377 false ) 
	#(363 3 #reduceActionForExpression5: 32805893 false ) 
	#(380 1 #liftFirstValue: 36196353 false ) 
	#(379 1 #reduceActionForVariableNames1: 36088833 false ) 
	#(364 3 #reduceActionForPropertyExpression2: 34068482 false ) 
	#(364 3 #reduceActionForPropertyExpression2: 34068481 false ) 
	#(363 3 #reduceActionForExpression12: 32805900 false ) 
	#(376 1 #reduceActionForVariableNames1: 35586049 false ) 
	#(363 3 #reduceActionForExpression10: 32805898 false ) 
	#(183 3 #reduceActionForEnumType1: 8113153 false ) 
	#(213 3 #reduceActionForConstantExpression11: 12239883 false ) 
	#(345 1 #liftFirstValue: 31006722 false ) 
	#(245 3 #reduceActionForFileType1: 17820673 false ) 
	#(197 3 #reduceActionForSetType2: 10481666 false ) 
	#(197 3 #reduceActionForSetType1: 10481665 false ) 
	#(236 2 #reduceActionForQualifiedName1: 16067585 false ) 
	#(192 3 #reduceActionForPropertyExpression2: 9330690 false ) 
	#(228 0 #reduceActionForMethodVariables2: 15134721 false ) 
	#(227 1 #reduceActionForImplicitClassSection1: 15062017 false ) 
	#(210 3 #reduceActionForRangeType1: 12063745 false ) 
	#(220 1 #reduceActionForVariableNames1: 13964289 false ) 
	#(213 3 #reduceActionForPropertyExpression2: 12239876 false ) 
	#(213 3 #reduceActionForExpression10: 12239877 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8460296 false ) 
	#(241 3 #reduceActionForAttribute1: 17263617 false ) 
	#(181 1 #reduceActionForGenericTypeArgument1: 7693313 false ) 
	#(180 1 #reduceActionForVariableNames1: 7535617 false ) 
	#(265 2 #reduceActionForGotoStatement1: 19773442 false ) 
	#(289 3 #reduceActionForVariableNames2: 23676930 false ) 
	#(171 2 #reduceActionForAttributes2: 6505474 false ) 
	#(328 2 #reduceActionForAttributes2: 28732418 false ) 
	#(177 2 #reduceActionForAttributes2: 7201794 false ) 
	#(284 2 #reduceActionForExternalMethodModifier1: 22465537 false ) 
	#(284 2 #reduceActionForExternalMethodModifier6: 22465542 false ) 
	#(297 3 #reduceActionForExternalConstructorHeader1: 24676353 false ) 
	#(300 3 #reduceActionForExternalConstructorHeader1: 25200641 false ) 
	#(305 3 #reduceActionForExternalProcedureHeaderVars1: 25837569 false ) 
	#(313 3 #reduceActionForExternalFunctionHeaderVars1: 26871809 false ) 
	#(320 3 #reduceActionForExternalConstructorHeader1: 27847681 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6072322 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4703233 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4506625 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5585921 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5883906 false ) 
	#(166 3 #reduceActionForPackageLine1: 5958658 false ) 
	#(150 4 #reduceActionForProgramFile1: 4390913 false ) 
	#(154 2 #reduceActionForAttributes2: 4819970 false ) 
	#(158 3 #reduceActionForRequires1: 5090305 false ) 
	#(156 4 #reduceActionForPackageFile1: 4934657 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5690370 false ) 
	#(294 0 #reduceActionForMethodVariables2: 24152065 false ) 
	#(384 0 #nil 36691969 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6791169 false ) 
	#(174 1 #reduceActionForAttributes1: 6890497 false ) 
	#(303 2 #reduceActionForProcedureDefinition1: 25590785 false ) 
	#(311 2 #reduceActionForFunctionDefinition1: 26633217 false ) 
	#(322 3 #reduceActionForMethodComponents1: 28216321 false ) 
	#(330 3 #reduceActionForVariableNames2: 28955650 false ) 
	#(351 1 #reduceActionForBaseCaseLabel1: 31494145 false ) 
	#(352 0 #reduceActionForElseCase1: 31655937 false ) 
	#(347 1 #reduceActionForVariableNames1: 31111169 false ) 
	#(350 1 #reduceActionForVariableNames1: 31405057 false ) 
	#(349 1 #liftFirstValue: 31299585 false ) 
	#(196 3 #reduceActionForRequires1: 10417154 false ) 
	#(335 4 #reduceActionForIfStatement1: 29875201 false ) 
	#(378 4 #reduceActionForInheritedFunctionCall2: 35696642 false ) 
	#(354 2 #reduceActionForGotoStatement1: 31814658 false ) 
	#(334 4 #reduceActionForRepeatStatement1: 29771777 false ) 
	#(342 0 #nil 30741505 false ) 
	#(340 1 #reduceActionForAttributes1: 30574593 false ) 
	#(359 4 #reduceActionForLibraryLine1: 32403457 false ) 
	#(337 3 #reduceActionForVariableNames2: 30209026 false ) 
	#(336 4 #reduceActionForRepeatStatement1: 30114817 false ) 
	#(374 3 #reduceActionForSetValue2: 35398658 false ) 
	#(373 3 #reduceActionForVariableNames2: 35298306 false ) 
	#(363 4 #reduceActionForExpression4: 32805892 false ) 
	#(375 3 #reduceActionForRequires1: 35531777 false ) 
	#(191 1 #reduceActionForVariableNames1: 9167873 false ) 
	#(190 0 #reduceActionForOutsideGeneric1: 9097217 true ) 
	#(185 3 #reduceActionForEnumName2: 8239106 false ) 
	#(219 3 #reduceActionForConstantRecordField1: 13839361 false ) 
	#(184 3 #reduceActionForVariableNames2: 8166402 false ) 
	#(216 3 #reduceActionForPackageLine1: 13527042 false ) 
	#(215 3 #reduceActionForUsesModuleList2: 13346818 false ) 
	#(213 4 #reduceActionForConstantExpression10: 12239882 false ) 
	#(218 3 #reduceActionForVariableNames2: 13705218 false ) 
	#(261 2 #reduceActionForGotoStatement1: 19426306 false ) 
	#(249 1 #liftFirstValue: 18320386 false ) 
	#(249 1 #liftFirstValue: 18320385 false ) 
	#(248 1 #reduceActionForVariableNames1: 18208769 false ) 
	#(201 4 #reduceActionForRecordType1: 11115521 false ) 
	#(203 2 #reduceActionForRecordFieldList1: 11388929 false ) 
	#(237 2 #reduceActionForAttributes2: 16268290 false ) 
	#(213 4 #reduceActionForExpression4: 12239880 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8460294 false ) 
	#(179 3 #reduceActionForRequires1: 7447554 false ) 
	#(223 0 #reduceActionForMethodVariables2: 14732289 false ) 
	#(251 1 #liftFirstValue: 18571266 false ) 
	#(251 1 #liftFirstValue: 18571265 false ) 
	#(234 0 #reduceActionForOptionalArguments1: 15906817 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7309313 false ) 
	#(182 1 #reduceActionForUsesModule1: 7841795 false ) 
	#(182 1 #reduceActionForUsesModule1: 7841796 false ) 
	#(186 1 #liftFirstValue: 8348676 false ) 
	#(186 1 #liftFirstValue: 8348673 false ) 
	#(186 1 #liftFirstValue: 8348677 false ) 
	#(186 1 #liftFirstValue: 8348674 false ) 
	#(186 1 #liftFirstValue: 8348675 false ) 
	#(250 1 #reduceActionForInterfaceType2: 18376706 false ) 
	#(290 0 #reduceActionForOptionalType1: 23768065 false ) 
	#(281 0 #reduceActionForMethodVariables2: 21865473 false ) 
	#(302 2 #reduceActionForGotoStatement1: 25542658 false ) 
	#(269 0 #reduceActionForPropertyValues1: 20171777 false ) 
	#(284 3 #reduceActionForExternalMethodModifier4: 22465540 false ) 
	#(284 3 #reduceActionForExternalMethodModifier4: 22465538 false ) 
	#(285 1 #liftFirstValue: 23119883 false ) 
	#(285 1 #liftFirstValue: 23119877 false ) 
	#(285 1 #liftFirstValue: 23119886 false ) 
	#(285 1 #liftFirstValue: 23119881 false ) 
	#(285 1 #liftFirstValue: 23119887 false ) 
	#(285 1 #liftFirstValue: 23119890 false ) 
	#(285 1 #liftFirstValue: 23119885 false ) 
	#(285 1 #liftFirstValue: 23119893 false ) 
	#(285 1 #liftFirstValue: 23119892 false ) 
	#(285 1 #liftFirstValue: 23119891 false ) 
	#(285 1 #liftFirstValue: 23119884 false ) 
	#(285 1 #liftFirstValue: 23119873 false ) 
	#(285 1 #liftFirstValue: 23119874 false ) 
	#(285 1 #liftFirstValue: 23119878 false ) 
	#(285 1 #liftFirstValue: 23119889 false ) 
	#(285 1 #liftFirstValue: 23119876 false ) 
	#(285 1 #liftFirstValue: 23119879 false ) 
	#(285 1 #liftFirstValue: 23119894 false ) 
	#(285 1 #liftFirstValue: 23119888 false ) 
	#(285 1 #liftFirstValue: 23119875 false ) 
	#(285 1 #liftFirstValue: 23119882 false ) 
	#(285 1 #liftFirstValue: 23119880 false ) 
	#(280 2 #reduceActionForAttributes2: 21794818 false ) 
	#(282 1 #liftFirstValue: 21968897 false ) 
	#(282 1 #liftFirstValue: 21968898 false ) 
	#(386 1 #reduceActionForVariableNames1: 36905985 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4623361 false ) 
	#(159 3 #reduceActionForVariableNames2: 5171202 false ) 
	#(160 3 #reduceActionForUsesList2: 5280769 false ) 
	#(387 2 #reduceActionForGotoStatement1: 36997121 false ) 
	#(168 2 #reduceActionForAttributes2: 6197250 false ) 
	#(169 1 #liftFirstValue: 6291459 false ) 
	#(169 1 #liftFirstValue: 6291458 false ) 
	#(169 1 #liftFirstValue: 6291457 false ) 
	#(169 1 #liftFirstValue: 6291460 false ) 
	#(169 1 #liftFirstValue: 6291461 false ) 
	#(169 1 #liftFirstValue: 6291462 false ) 
	#(293 0 #nil 24066049 false ) 
	#(383 2 #reduceActionForInitializationSection2: 36581378 false ) 
	#(325 3 #reduceActionForLabels1: 28522497 false ) 
	#(174 2 #reduceActionForAttributes2: 6890498 false ) 
	#(346 2 #reduceActionForCaseOptionList1: 31058945 false ) 
	#(357 4 #reduceActionForForVariableExpression3: 32228355 false ) 
	#(358 1 #liftFirstValue: 32370690 false ) 
	#(358 1 #liftFirstValue: 32370689 false ) 
	#(287 3 #reduceActionForVariableNames2: 23442434 false ) 
	#(378 5 #reduceActionForInheritedFunctionCall1: 35696641 false ) 
	#(339 3 #reduceActionForExcept3: 30414851 false ) 
	#(340 2 #reduceActionForAttributes2: 30574594 false ) 
	#(339 3 #reduceActionForExcept2: 30414850 false ) 
	#(343 2 #reduceActionForFinally2: 30817282 false ) 
	#(338 5 #reduceActionForTryStatement1: 30314497 false ) 
	#(379 3 #reduceActionForVariableNames2: 36088834 false ) 
	#(380 3 #reduceActionForMethodArgument2: 36196354 false ) 
	#(376 3 #reduceActionForVariableNames2: 35586050 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType1: 9749505 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType2: 9749506 false ) 
	#(197 5 #reduceActionForSetType3: 10481667 false ) 
	#(236 4 #reduceActionForQualifiedName2: 16067586 false ) 
	#(247 3 #reduceActionForRequires1: 18143233 false ) 
	#(246 5 #reduceActionForArrayType2: 17932290 false ) 
	#(246 5 #reduceActionForArrayType1: 17932289 false ) 
	#(203 3 #reduceActionForRecordFieldList2: 11388930 false ) 
	#(228 2 #reduceActionForAttributes2: 15134722 false ) 
	#(229 1 #liftFirstValue: 15197185 false ) 
	#(229 1 #liftFirstValue: 15197186 false ) 
	#(229 1 #liftFirstValue: 15197187 false ) 
	#(229 1 #liftFirstValue: 15197188 false ) 
	#(220 3 #reduceActionForVariableNames2: 13964290 false ) 
	#(181 3 #reduceActionForGenericTypeArgument2: 7693314 false ) 
	#(180 3 #reduceActionForVariableNames2: 7535618 false ) 
	#(182 2 #reduceActionForDefinedType2: 7841794 false ) 
	#(252 0 #nil 18626561 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7309314 false ) 
	#(226 0 #nil 15001601 false ) 
	#(288 5 #reduceActionForArgument1: 23537665 false ) 
	#(298 5 #reduceActionForNonExternalConstructorHeader1: 24812545 false ) 
	#(301 5 #reduceActionForNonExternalDestructorHeader1: 25333761 false ) 
	#(242 5 #reduceActionForInterfaceFunctionAssignment1: 17350657 false ) 
	#(243 5 #reduceActionForInterfaceProcedureAssignment1: 17533953 false ) 
	#(307 5 #reduceActionForNonExternalProcedureHeaderVars1: 26041345 false ) 
	#(270 3 #reduceActionForPropertyArrayAccessors2: 20502530 false ) 
	#(238 5 #reduceActionForNewClassComponent1: 16348161 false ) 
	#(283 2 #reduceActionForExternalMethodModifier6: 22043649 false ) 
	#(385 3 #reduceActionForExportsDefinition1: 36795393 false ) 
	#(295 1 #liftFirstValue: 24211466 false ) 
	#(295 1 #liftFirstValue: 24211467 false ) 
	#(295 1 #liftFirstValue: 24211464 false ) 
	#(292 4 #reduceActionForImplementationSection2: 23919618 false ) 
	#(294 2 #reduceActionForAttributes2: 24152066 false ) 
	#(295 1 #liftFirstValue: 24211457 false ) 
	#(296 1 #reduceActionForConstructorDefinition2: 24499202 false ) 
	#(295 1 #liftFirstValue: 24211458 false ) 
	#(299 1 #reduceActionForDestructorDefinition2: 25028610 false ) 
	#(295 1 #liftFirstValue: 24211459 false ) 
	#(295 1 #liftFirstValue: 24211460 false ) 
	#(308 1 #reduceActionForClassProcedureDefinition2: 26211330 false ) 
	#(295 1 #liftFirstValue: 24211461 false ) 
	#(295 1 #liftFirstValue: 24211462 false ) 
	#(316 1 #reduceActionForClassFunctionDefinition2: 27249666 false ) 
	#(295 1 #liftFirstValue: 24211463 false ) 
	#(319 1 #reduceActionForClassOperatorDefinition2: 27660290 false ) 
	#(295 1 #liftFirstValue: 24211465 false ) 
	#(295 1 #liftFirstValue: 24211468 false ) 
	#(384 2 #reduceActionForFinalizationSection2: 36691970 false ) 
	#(161 6 #reduceActionForUnitFile1: 5363713 false ) 
	#(351 3 #reduceActionForBaseCaseLabel2: 31494146 false ) 
	#(352 2 #reduceActionForElseCase2: 31655938 false ) 
	#(344 6 #reduceActionForCaseStatement1: 30884865 false ) 
	#(347 3 #reduceActionForVariableNames2: 31111170 false ) 
	#(348 3 #reduceActionForCaseOption1: 31213569 false ) 
	#(350 3 #reduceActionForVariableNames2: 31405058 false ) 
	#(349 3 #reduceActionForCaseLabel2: 31299586 false ) 
	#(356 6 #reduceActionForForInStatement1: 32078849 false ) 
	#(335 6 #reduceActionForForInStatement1: 29875202 false ) 
	#(370 6 #reduceActionForMemExpression1: 34826241 false ) 
	#(370 6 #reduceActionForMemExpression1: 34826242 false ) 
	#(342 2 #reduceActionForPossibleExceptElse2: 30741506 false ) 
	#(191 3 #reduceActionForVariableNames2: 9167874 false ) 
	#(188 5 #reduceActionForInstantiatedGenericTypeArguments1: 8896513 false ) 
	#(202 6 #reduceActionForRecordHelperType1: 11220993 false ) 
	#(199 1 #reduceActionForVariableNames1: 10915841 false ) 
	#(198 3 #reduceActionForTwoItemSetNameList1: 10759169 false ) 
	#(248 3 #reduceActionForVariableNames2: 18208770 false ) 
	#(230 2 #reduceActionForPrivateClassSection2: 15310850 false ) 
	#(231 2 #reduceActionForProtectedClassSection2: 15503362 false ) 
	#(232 2 #reduceActionForPublicClassSection1: 15710209 false ) 
	#(233 2 #reduceActionForPublishedClassSection1: 15802369 false ) 
	#(200 3 #reduceActionForMetaclassType1: 11019265 false ) 
	#(224 1 #liftFirstValue: 14807041 false ) 
	#(224 1 #liftFirstValue: 14807042 false ) 
	#(223 2 #reduceActionForAttributes2: 14732290 false ) 
	#(221 3 #reduceActionForNewClassType2: 14084098 false ) 
	#(235 1 #reduceActionForVariableNames1: 15968257 false ) 
	#(182 3 #reduceActionForPackageLine1: 7841797 false ) 
	#(182 3 #reduceActionForPackageLine1: 7841793 false ) 
	#(253 0 #reduceActionForMethodVariables2: 18702337 false ) 
	#(226 1 #liftFirstValue: 15001602 false ) 
	#(290 2 #reduceActionForGotoStatement1: 23768066 false ) 
	#(329 6 #reduceActionForVariable1: 28831745 false ) 
	#(298 6 #reduceActionForNonExternalConstructorHeader2: 24812546 false ) 
	#(301 6 #reduceActionForNonExternalDestructorHeader2: 25333762 false ) 
	#(281 2 #reduceActionForAttributes2: 21865474 false ) 
	#(315 6 #reduceActionForNonExternalFunctionHeaderVars1: 27070465 false ) 
	#(275 1 #reduceActionForPropertyDefault2: 21177346 false ) 
	#(275 1 #reduceActionForPropertyDefault3: 21177347 false ) 
	#(279 0 #nil 21694465 false ) 
	#(269 2 #reduceActionForPropertyValues2: 20171778 false ) 
	#(269 2 #reduceActionForCaseOptionList1: 20171779 false ) 
	#(269 2 #reduceActionForPropertyValues4: 20171780 false ) 
	#(269 2 #reduceActionForPropertyValues8: 20171784 false ) 
	#(269 2 #reduceActionForPropertyValues5: 20171781 false ) 
	#(269 2 #reduceActionForPropertyValues7: 20171783 false ) 
	#(269 2 #reduceActionForPropertyValues6: 20171782 false ) 
	#(284 5 #reduceActionForExternalMethodModifier5: 22465541 false ) 
	#(284 5 #reduceActionForExternalMethodModifier5: 22465539 false ) 
	#(283 3 #reduceActionForNonExternalMethodModifier2: 22043650 false ) 
	#(283 3 #reduceActionForNonExternalMethodModifier4: 22043652 false ) 
	#(283 3 #reduceActionForNonExternalMethodModifier4: 22043651 false ) 
	#(386 3 #reduceActionForVariableNames2: 36905986 false ) 
	#(293 2 #reduceActionForImplementationCode2: 24066050 false ) 
	#(296 2 #reduceActionForConstructorDefinition1: 24499201 false ) 
	#(299 2 #reduceActionForDestructorDefinition1: 25028609 false ) 
	#(308 2 #reduceActionForClassProcedureDefinition1: 26211329 false ) 
	#(316 2 #reduceActionForClassFunctionDefinition1: 27249665 false ) 
	#(319 2 #reduceActionForClassOperatorDefinition1: 27660289 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType1: 10061825 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType2: 10061826 false ) 
	#(230 3 #reduceActionForPrivateClassSection1: 15310849 false ) 
	#(231 3 #reduceActionForProtectedClassSection1: 15503361 false ) 
	#(234 3 #reduceActionForRequires1: 15906818 false ) 
	#(172 7 #reduceActionForConstantValue1: 6600705 false ) 
	#(321 7 #reduceActionForNonExternalClassOperatorHeader1: 27990017 false ) 
	#(275 2 #reduceActionForPropertyDefault1: 21177345 false ) 
	#(274 2 #reduceActionForPropertyDispid1: 20865025 false ) 
	#(277 1 #reduceActionForVariableNames1: 21485569 false ) 
	#(276 2 #reduceActionForPropertyImplements1: 21381121 false ) 
	#(271 2 #reduceActionForPropertyIndex1: 20599809 false ) 
	#(272 2 #reduceActionForPropertyReader1: 20692993 false ) 
	#(278 2 #reduceActionForPropertyStored1: 21605377 false ) 
	#(273 2 #reduceActionForPropertyWriter1: 20777985 false ) 
	#(267 7 #reduceActionForPropertyHeaderVars1: 19881985 false ) 
	#(175 5 #reduceActionForResource1: 6965249 false ) 
	#(355 8 #reduceActionForForStatement1: 31882241 false ) 
	#(341 5 #reduceActionForOnDo1: 30639105 false ) 
	#(199 3 #reduceActionForVariableNames2: 10915842 false ) 
	#(235 3 #reduceActionForVariableNames2: 15968258 false ) 
	#(225 5 #reduceActionForOldClassType1: 14852097 false ) 
	#(252 3 #reduceActionForGuid2: 18626562 false ) 
	#(250 5 #reduceActionForInterfaceType1: 18376705 false ) 
	#(253 2 #reduceActionForAttributes2: 18702338 false ) 
	#(254 1 #liftFirstValue: 18794498 false ) 
	#(254 1 #liftFirstValue: 18794497 false ) 
	#(274 3 #reduceActionForPropertyDispid2: 20865026 false ) 
	#(274 3 #reduceActionForPropertyDispid3: 20865027 false ) 
	#(279 2 #reduceActionForPropertyModifiers2: 21694466 false ) 
	#(206 1 #reduceActionForVariableNames1: 11723777 false ) 
	#(208 1 #reduceActionForVariableNames1: 11938817 false ) 
	#(209 1 #liftFirstValue: 12025857 false ) 
	#(222 6 #reduceActionForClassHelperType2: 14316546 false ) 
	#(221 6 #reduceActionForNewClassType1: 14084097 false ) 
	#(277 3 #reduceActionForVariableNames2: 21485570 false ) 
	#(205 6 #reduceActionForVariantRecordPart1: 11574273 false ) 
	#(206 3 #reduceActionForVariableNames2: 11723778 false ) 
	#(208 3 #reduceActionForVariableNames2: 11938818 false ) 
	#(222 9 #reduceActionForClassHelperType1: 14316545 false ) 
	#(207 5 #reduceActionForVariantType1: 11838465 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attributes' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ForVariableExpression' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #OrderedCollection #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 37 0 66 0 41 0 84 0 6 0 89 0 45 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 49 0 119 0 53 0 122 0 6 0 123 0 57 0 149 0 61 0 150 0 65 0 151 0 69 0 152 0 73 0 153 0 77 0 156 0 81 0 157 0 85 0 161 0 89 0 162 0 93 0 164] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 0 201 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 0 201 1 104 0 201 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 177 0 183 1 129 0 187 1 133 0 192 1 177 0 194 1 177 0 195 1 129 0 197 1 129 0 201 1 129 0 202 1 157 0 204 1 129 0 210 1 165 0 211 1 169 0 212 1 173 0 213 1 177 0 244 1 129 0 245 1 129 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 1 201 0 130 1 205 0 139 1 209 0 178 1 213 0 240 1 217 0 241] 
#[1 1 221 0 139 1 225 0 172] 
#[1 1 229 0 139 1 233 1 33 1 237 1 73] 
#[1 2 1 0 27 2 1 0 81 2 1 0 123 0 22 0 139 1 253 1 32 2 1 1 35] 
#[1 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 2 21 0 52 2 25 0 89 2 29 0 91 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 2 53 0 170 2 53 0 176 2 53 0 238 2 53 0 239 2 61 0 240 1 217 0 241 2 53 0 242 2 53 0 243 2 53 0 255 2 53 1 0 2 53 1 1 2 53 1 2 2 53 1 3 2 53 1 4 2 53 1 6 2 53 1 7 2 53 1 8 2 53 1 10 2 113 1 11 2 53 1 12 2 121 1 33 2 53 1 41 2 129 1 42 2 53 1 44 2 137 1 45 2 53 1 48 2 145 1 49 2 53 1 50 2 153 1 51 2 53 1 53 2 53 1 54 2 53 1 56 2 169 1 57 2 53 1 58 2 177 1 59 2 53 1 61 2 53 1 62 2 53 1 64 2 193 1 65 2 53 1 70 2 201 1 71] 
#[1 2 205 0 139 2 209 0 167] 
#[1 2 205 0 139 2 213 0 167] 
#[1 2 205 0 139 2 217 0 167] 
#[1 2 205 0 139 2 221 0 167] 
#[1 2 205 0 139 2 225 0 165 2 229 0 166 2 233 0 167] 
#[0 0 0 1 133] 
#[0 0 26 1 133] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 2 237 0 164] 
#[0 0 30 1 133] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 2 241 0 164] 
#[0 0 34 1 133] 
#[1 2 245 0 103 2 249 0 158] 
#[0 0 38 1 133] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 2 253 0 63 3 1 0 163 0 46 1 133] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 3 5 0 155 3 9 1 66 3 13 1 67] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 21 1 107 1 9 1 108 3 21 1 109 3 21 1 110 1 21 1 111 3 21 1 112 1 29 1 113 3 21 1 114 1 37 1 115 3 21 1 116 1 45 1 121 3 21 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 25 1 107 1 9 1 108 3 25 1 109 3 25 1 110 1 21 1 111 3 25 1 112 1 29 1 113 3 25 1 114 1 37 1 115 3 25 1 116 1 45 1 121 3 25 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 29 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 37 1 107 1 9 1 108 3 37 1 109 3 37 1 110 1 21 1 111 3 37 1 112 1 29 1 113 3 37 1 114 1 37 1 115 3 37 1 116 1 45 1 121 3 37 1 122 1 53 1 132] 
#[1 3 41 0 123 3 17 0 139 3 45 1 101 3 45 1 115] 
#[1 3 53 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 3 57 0 196] 
#[1 3 61 0 139 3 65 0 141] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 69 1 107 1 9 1 108 3 69 1 109 3 69 1 110 1 21 1 111 3 69 1 112 1 29 1 113 3 69 1 114 1 37 1 115 3 69 1 116 1 45 1 121 3 69 1 122 1 53 1 132] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 74 0 58 0 77 0 58 0 78 0 58 0 80 0 58 0 96 0 58 0 97 0 58 0 108 0 58 0 109 0 58 0 112 0 58 0 114 0 58 0 116 0 58 0 121 0 58 0 127 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 3 73 0 139 0 58 1 133] 
#[0 3 77 0 130] 
#[0 3 81 0 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 85 1 107 1 9 1 108 3 85 1 109 3 85 1 110 1 21 1 111 3 85 1 112 1 29 1 113 3 85 1 114 1 37 1 115 3 85 1 116 1 45 1 121 3 85 1 122 1 53 1 132] 
#[1 3 53 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 3 89 0 196] 
#[1 0 97 0 2 0 101 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 117 0 52 0 129 0 60 0 62 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 62 0 78 0 145 0 89 0 62 0 121 0 169 0 130 0 173 0 135 0 177 0 136 0 62 0 137 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 93 1 107 1 9 1 108 3 93 1 109 3 93 1 110 1 21 1 111 3 93 1 112 1 29 1 113 3 93 1 114 1 37 1 115 3 93 1 116 1 45 1 121 3 93 1 122 1 53 1 132 0 62 1 133] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 97 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 101 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 105 1 107 1 9 1 108 3 105 1 109 3 105 1 110 1 21 1 111 3 105 1 112 1 29 1 113 3 105 1 114 1 37 1 115 3 105 1 116 1 45 1 121 3 105 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 109 1 81 3 113 1 107 1 9 1 108 3 113 1 109 3 113 1 110 1 21 1 111 3 113 1 112 1 29 1 113 3 113 1 114 1 37 1 115 3 113 1 116 1 45 1 121 3 113 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 3 117 0 131 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 121 1 107 1 9 1 108 3 121 1 109 3 121 1 110 1 21 1 111 3 121 1 112 1 29 1 113 3 121 1 114 1 37 1 115 3 121 1 116 3 125 1 117 3 129 1 118 1 45 1 121 3 121 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 133 1 107 1 9 1 108 3 133 1 109 3 133 1 110 1 21 1 111 3 133 1 112 1 29 1 113 3 133 1 114 1 37 1 115 3 133 1 116 1 45 1 121 3 133 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 137 1 107 1 9 1 108 3 137 1 109 3 137 1 110 1 21 1 111 3 137 1 112 1 29 1 113 3 137 1 114 1 37 1 115 3 137 1 116 1 45 1 121 3 137 1 122 1 53 1 132] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 3 141 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 133] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 3 145 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 78 0 70 0 80 0 70 0 108 0 70 0 109 0 70 0 121 0 70 0 129 0 70 0 130 0 70 0 132 0 70 0 133 0 70 0 135 0 70 0 136 0 70 0 137 0 70 0 138 0 70 1 133] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 0 1 133] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 0 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 3 149 0 21] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 4 1 0 58 0 138 0 61 4 1 0 64 4 1 0 71 0 138 0 78 4 1 0 80 4 1 0 108 4 1 0 109 0 138 0 121 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 0 138 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 0 138 1 133] 
#[1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 11 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 18 0 142 0 20 0 142 0 30 0 142 0 33 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 48 0 142 0 49 0 142 0 57 0 142 0 58 0 142 0 59 0 142 0 61 0 142 0 64 0 142 0 71 0 142 0 74 0 142 0 77 0 142 0 78 0 142 0 80 0 142 0 96 0 142 0 97 0 142 0 108 0 142 0 109 0 142 0 112 0 142 0 114 0 142 0 116 0 142 0 121 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 132 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 137 0 142 0 138 4 9 0 188 4 13 0 189 0 142 1 133] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 4 17 1 66 3 13 1 67] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 4 21 1 66 3 13 1 67] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 15 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 18 0 166 0 20 0 166 0 30 0 166 0 33 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 48 0 166 0 49 0 166 0 57 0 166 0 58 0 166 0 59 0 166 0 61 0 166 0 64 0 166 0 71 0 166 0 74 0 166 0 77 0 166 0 78 0 166 0 80 0 166 0 96 0 166 0 97 0 166 0 108 0 166 0 109 0 166 0 112 0 166 0 114 0 166 0 116 0 166 0 121 0 166 0 127 0 166 0 128 0 166 0 129 0 166 0 130 0 166 0 131 0 166 0 132 0 166 0 133 0 166 0 134 0 166 0 135 0 166 0 136 0 166 0 137 0 166 0 138 4 25 0 188 4 13 0 189 0 166 1 133] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 4 29 0 2 0 186 0 3 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 33 0 139 4 37 0 140 1 169 0 141 1 193 0 143 1 121 0 147 4 41 0 184 4 45 0 185 1 169 0 212 4 49 0 213 4 53 0 214 4 57 0 215 4 61 0 216 4 65 0 217 4 69 0 218 4 73 0 219 4 49 1 116 1 193 1 121 1 197 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 81 0 213 4 81 1 116 1 193 1 121 1 197 1 132] 
#[1 0 190 0 3 0 190 0 5 0 190 0 10 0 190 0 14 0 190 0 16 0 190 0 21 0 190 0 23 0 190 0 27 0 190 0 30 0 190 0 31 0 190 0 33 0 190 0 36 0 190 0 52 0 190 0 57 0 190 0 58 0 190 0 59 0 190 0 65 0 190 0 74 4 85 0 77 0 190 0 87 0 190 0 89 0 190 0 96 0 190 0 97 0 190 0 104 0 190 0 112 0 190 0 115 0 190 0 118 0 190 0 123 0 190 0 127 0 190 0 128 0 190 0 130 0 190 0 131 0 190 0 132 0 190 0 137 0 190 1 133] 
#[1 3 53 0 2 0 54 0 9 4 89 0 196] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 93 0 213 4 93 1 116 1 193 1 121 1 197 1 132] 
#[0 0 194 0 19 0 98] 
#[1 3 53 0 2 0 54 0 77 0 54 0 137 4 97 0 196] 
#[0 4 101 0 54] 
#[0 4 105 0 116] 
#[0 4 109 0 77] 
#[1 4 113 0 139 4 117 0 236] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 121 0 213 4 121 1 116 1 193 1 121 1 197 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 125 0 213 4 125 1 116 1 193 1 121 1 197 1 132] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 4 133 0 183 4 133 0 187 1 133 0 192 4 133 0 194 4 133 0 195 4 133 0 197 4 133 0 201 4 133 0 202 1 157 0 204 4 133 0 210 1 165 0 211 1 169 0 212 1 173 0 213 4 133 0 244 4 133 0 245 4 133 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 0 198 0 2 0 202 0 3 0 198 0 4 0 202 0 5 0 19 0 6 0 198 0 7 0 198 0 8 0 202 0 10 0 19 0 11 0 198 0 12 0 198 0 13 0 202 0 14 0 202 0 16 0 198 0 18 0 198 0 20 0 202 0 21 0 202 0 23 0 202 0 27 0 202 0 30 0 202 0 31 0 202 0 33 0 198 0 35 0 202 0 36 0 202 0 52 0 202 0 57 0 19 0 58 0 202 0 59 0 198 0 64 0 202 0 65 0 198 0 71 0 202 0 74 0 202 0 77 0 198 0 80 0 202 0 87 0 202 0 89 0 202 0 96 0 202 0 97 0 202 0 104 0 198 0 108 0 198 0 109 0 202 0 112 0 202 0 115 0 202 0 118 0 202 0 123 0 202 0 127 0 202 0 128 0 198 0 129 0 202 0 130 0 202 0 131 0 19 0 132 0 198 0 133 0 198 0 135 0 198 0 136 0 202 0 137 0 202 1 133] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[0 0 210 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 0 214 0 16 0 214 0 130 0 0 1 133] 
#[1 0 218 0 3 0 218 0 5 4 137 0 6 0 218 0 10 0 146 0 11 0 218 0 14 0 218 0 16 0 218 0 21 0 218 0 23 0 218 0 27 0 218 0 30 0 218 0 31 0 218 0 33 0 218 0 36 0 218 0 52 0 218 0 57 0 218 0 58 0 218 0 59 0 218 0 65 0 218 0 74 0 218 0 77 0 218 0 87 0 218 0 89 0 218 0 96 0 218 0 97 0 218 0 104 0 218 0 112 0 218 0 115 0 218 0 118 0 218 0 123 0 218 0 127 0 218 0 128 0 218 0 130 0 218 0 131 0 218 0 132 0 218 0 137 4 141 0 188 4 13 0 189 0 218 1 133] 
#[0 0 222 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 0 226 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 0 230 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 0 234 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 0 238 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 4 145 0 19 4 149 0 98] 
#[0 0 242 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 4 153 0 7] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[1 4 157 0 2 0 250 0 3 4 165 0 4 0 250 0 5 4 161 0 6 0 250 0 7 4 165 0 8 0 250 0 10 4 165 0 11 4 165 0 12 4 165 0 13 0 250 0 14 0 250 0 16 4 165 0 18 4 165 0 20 0 250 0 21 0 250 0 23 0 250 0 27 0 250 0 30 0 250 0 31 0 250 0 33 4 165 0 35 0 250 0 36 0 250 0 52 0 250 0 57 0 23 0 58 0 250 0 59 4 165 0 64 0 250 0 65 4 165 0 71 0 250 0 74 0 250 0 77 4 165 0 80 0 250 0 87 0 250 0 89 0 250 0 96 0 250 0 97 0 250 0 104 4 165 0 108 4 165 0 109 0 250 0 112 0 250 0 115 0 250 0 118 0 250 0 123 0 250 0 127 0 250 0 128 4 165 0 129 0 250 0 130 0 250 0 131 0 27 0 132 4 165 0 133 4 165 0 135 4 165 0 136 0 250 0 137 4 165 1 126 0 250 1 133] 
#[1 4 169 0 16 4 173 0 130] 
#[0 0 254 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 1 2 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 177 0 213 4 177 1 116 1 193 1 121 1 197 1 132] 
#[1 4 181 0 11 1 18 0 14 4 185 0 179] 
#[0 0 0 1 133] 
#[1 1 201 0 130 4 189 0 139 4 193 0 241] 
#[0 1 22 0 26 0 28 0 32 0 52 0 89 0 130 0 139] 
#[1 4 197 0 9 1 26 0 14 4 201 1 9] 
#[0 0 0 1 133] 
#[0 1 30 0 3 0 5 0 9 0 131 0 137 1 133] 
#[1 4 205 0 5 4 209 0 9] 
#[0 0 0 1 133] 
#[0 1 34 0 139] 
#[0 1 38 0 139] 
#[0 1 42 0 139] 
#[0 0 0 1 133] 
#[1 1 229 0 139 4 213 1 33] 
#[1 4 217 0 28 4 221 0 32 4 225 0 52 4 229 0 79 4 233 0 89 2 29 0 91 2 33 0 115 2 41 0 123 4 237 1 11 4 241 1 49 4 245 1 51 4 249 1 57 4 253 1 59 5 1 1 71] 
#[1 1 221 0 139 5 5 0 171 5 9 0 172] 
#[1 4 113 0 139 5 13 0 236] 
#[1 4 113 0 139 5 17 0 236] 
#[1 4 113 0 139 5 21 0 236] 
#[1 4 113 0 139 5 25 0 236] 
#[0 5 29 0 139] 
#[1 1 229 0 139 1 233 1 33 5 33 1 72 5 37 1 73] 
#[1 1 201 0 130 1 205 0 139 5 41 0 177 5 45 0 178 1 213 0 240 1 217 0 241] 
#[1 1 229 0 139 1 233 1 33 5 49 1 72 5 37 1 73] 
#[0 1 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 0 0 1 133] 
#[0 1 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 5 53 0 26 2 13 0 28 2 17 0 32 4 225 0 52 4 233 0 89 1 201 0 130 4 193 0 241 5 57 1 1 5 61 1 2 5 65 1 3 5 69 1 4 5 73 1 6 5 77 1 7 5 81 1 8 5 57 1 41 2 129 1 42 5 61 1 44 2 137 1 45 5 65 1 48 2 145 1 49 5 65 1 50 2 153 1 51 5 69 1 53 5 69 1 54 5 73 1 56 2 169 1 57 5 73 1 58 2 177 1 59 5 77 1 61 5 77 1 62 5 81 1 64 2 193 1 65] 
#[0 1 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 4 205 0 5 5 85 0 9] 
#[0 1 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 1 118 0 3 1 118 0 24 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 32 1 118 0 40 5 89 0 44 5 93 0 51 1 118 0 52 1 118 0 88 1 118 0 89 1 118 0 91 1 118 0 92 1 118 0 93 1 118 0 94 1 118 0 113 1 118 0 115 1 118 0 118 1 118 0 123 1 118 0 130 1 118 0 139 5 97 1 28 1 118 1 133] 
#[0 1 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 1 126 0 3 1 126 0 24 1 126 0 26 1 126 0 27 1 126 0 28 1 126 0 32 1 126 0 40 5 89 0 44 5 93 0 51 1 126 0 52 1 126 0 88 1 126 0 89 1 126 0 91 1 126 0 92 1 126 0 93 1 126 0 94 1 126 0 113 1 126 0 115 1 126 0 118 1 126 0 123 1 126 0 130 1 126 0 139 5 101 1 28 1 126 1 133] 
#[0 1 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 134 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 1 142 0 3 1 142 0 21 1 142 0 23 1 142 0 24 1 142 0 26 1 142 0 27 1 142 0 28 1 142 0 32 1 142 0 40 5 89 0 44 1 142 0 48 5 93 0 51 1 142 0 52 1 142 0 56 1 142 0 61 1 142 0 65 1 142 0 88 1 142 0 89 1 142 0 91 1 142 0 92 1 142 0 93 1 142 0 94 1 142 0 104 1 142 0 113 1 142 0 115 1 142 0 118 1 142 0 123 1 142 0 130 1 142 0 139 5 105 1 28 1 142 1 133] 
#[0 1 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 158 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 1 166 0 3 1 166 0 21 1 166 0 23 1 166 0 24 1 166 0 26 1 166 0 27 1 166 0 28 1 166 0 32 1 166 0 40 5 89 0 44 1 166 0 48 5 93 0 51 1 166 0 52 1 166 0 56 1 166 0 61 1 166 0 65 1 166 0 88 1 166 0 89 1 166 0 91 1 166 0 92 1 166 0 93 1 166 0 94 1 166 0 104 1 166 0 113 1 166 0 115 1 166 0 118 1 166 0 123 1 166 0 130 1 166 0 139 5 109 1 28 1 166 1 133] 
#[0 1 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 174 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 1 182 0 3 1 182 0 24 1 182 0 26 1 182 0 27 1 182 0 28 1 182 0 32 1 182 0 40 5 89 0 44 5 93 0 51 1 182 0 52 1 182 0 88 1 182 0 89 1 182 0 91 1 182 0 92 1 182 0 93 1 182 0 94 1 182 0 113 1 182 0 115 1 182 0 118 1 182 0 123 1 182 0 130 1 182 0 139 5 113 1 28 1 182 1 133] 
#[0 1 186 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 190 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 1 194 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 5 117 0 6 5 129 0 31 5 129 0 87 1 198 0 137 5 129 0 193] 
#[1 5 117 0 6 5 133 0 137] 
#[1 5 117 0 6 5 137 0 31 5 137 0 87 1 198 0 137 5 137 0 193] 
#[1 5 117 0 6 5 141 0 31 5 141 0 87 1 198 0 137 5 141 0 193] 
#[1 5 145 0 5 5 149 0 137] 
#[0 1 202 0 5 0 137] 
#[1 1 206 0 5 5 117 0 6 5 153 0 58 1 206 0 137] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 157 0 155 3 9 1 66 3 13 1 67] 
#[1 1 210 0 21 1 210 0 23 1 210 0 27 1 210 0 43 1 210 0 52 1 210 0 65 1 210 0 89 1 210 0 104 1 210 0 115 1 210 0 118 1 210 0 123 5 161 0 154] 
#[1 2 205 0 139 5 165 0 159 5 169 0 167] 
#[1 5 173 0 29 5 177 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 5 181 0 164] 
#[1 1 214 0 40 1 214 0 48 5 185 0 56 1 214 0 61 5 189 1 36] 
#[0 5 193 0 6] 
#[0 1 218 0 6] 
#[1 0 10 0 21 0 105 0 23 2 9 0 27 4 225 0 52 5 197 0 65 4 233 0 89 5 201 0 104 2 33 0 115 2 37 0 118 2 41 0 123 5 241 0 170 5 241 0 173 5 241 0 176 5 241 1 47 5 221 1 48 2 145 1 49 5 225 1 50 2 153 1 51 5 241 1 55 5 233 1 56 2 169 1 57 5 237 1 58 2 177 1 59 5 241 1 68 5 241 1 69 5 241 1 70 2 201 1 71 5 253 1 104 5 253 1 105 1 1 1 106] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 3 153 0 2 6 1 0 3 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 3 153 0 2 1 222 0 3 1 222 0 4 1 222 0 5 3 161 0 6 1 222 0 7 1 222 0 8 1 222 0 9 1 222 0 10 0 31 0 11 0 35 0 12 0 39 0 13 0 43 0 14 1 222 0 18 1 222 0 20 1 222 0 30 1 222 0 33 1 222 0 35 1 222 0 36 1 222 0 37 1 222 0 39 1 222 0 40 1 222 0 41 1 222 0 48 1 222 0 49 1 222 0 57 0 47 0 58 1 222 0 59 1 222 0 61 1 222 0 64 1 222 0 71 1 222 0 74 1 222 0 77 1 222 0 78 1 222 0 80 1 222 0 96 1 222 0 97 1 222 0 108 1 222 0 109 1 222 0 112 1 222 0 114 1 222 0 116 1 222 0 121 1 222 0 127 1 222 0 128 1 222 0 129 3 229 0 130 1 222 0 131 0 51 0 132 0 55 0 133 1 222 0 134 1 222 0 135 1 222 0 136 1 222 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 1 222 1 133] 
#[1 6 5 0 40 6 9 0 137] 
#[0 1 226 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 6 13 0 77 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[0 6 17 0 139] 
#[1 6 21 0 10 6 25 0 58] 
#[0 1 230 0 10 0 58] 
#[1 1 234 0 3 2 1 0 27 2 1 0 81 2 1 0 123 0 22 0 139 6 29 1 30 6 33 1 31 6 37 1 32 2 1 1 35] 
#[1 4 197 0 9 1 26 0 21 1 26 0 23 1 26 0 27 1 26 0 52 1 26 0 65 1 26 0 89 1 26 0 104 1 26 0 115 1 26 0 118 1 26 0 123 6 41 1 9] 
#[0 1 238 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 1 242 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 6 45 0 114 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 6 49 0 2 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 10 1 246 0 11 1 246 0 12 1 246 0 13 1 246 0 14 1 246 0 18 1 246 0 20 1 246 0 30 1 246 0 33 1 246 0 35 1 246 0 36 1 246 0 37 1 246 0 39 1 246 0 40 1 246 0 41 1 246 0 48 1 246 0 49 1 246 0 57 1 246 0 58 1 246 0 59 1 246 0 61 1 246 0 64 1 246 0 71 1 246 0 74 1 246 0 77 1 246 0 78 1 246 0 80 1 246 0 96 1 246 0 97 1 246 0 108 1 246 0 109 1 246 0 112 1 246 0 114 1 246 0 116 1 246 0 121 1 246 0 127 1 246 0 128 1 246 0 129 1 246 0 130 1 246 0 131 1 246 0 132 1 246 0 133 1 246 0 134 1 246 0 135 1 246 0 136 1 246 0 137 1 246 0 138 1 246 1 133] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 53 1 107 1 9 1 108 6 53 1 109 6 53 1 110 1 21 1 111 6 53 1 112 1 29 1 113 6 53 1 114 1 37 1 115 6 53 1 116 1 45 1 121 6 53 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 57 1 107 1 9 1 108 6 57 1 109 6 57 1 110 1 21 1 111 6 57 1 112 1 29 1 113 6 57 1 114 1 37 1 115 6 57 1 116 1 45 1 121 6 57 1 122 1 53 1 132] 
#[1 3 153 0 2 1 250 0 3 4 1 0 4 1 250 0 5 3 161 0 6 1 250 0 7 4 1 0 8 1 250 0 9 3 169 0 10 0 59 0 11 0 63 0 12 0 67 0 13 0 71 0 14 4 1 0 18 4 1 0 20 1 250 0 30 1 250 0 33 4 1 0 35 1 250 0 36 1 250 0 37 1 250 0 39 1 250 0 40 1 250 0 41 1 250 0 48 1 250 0 49 1 250 0 57 0 75 0 58 1 250 0 59 1 250 0 61 4 1 0 64 4 1 0 71 1 250 0 74 1 250 0 77 1 250 0 78 4 1 0 80 1 250 0 96 1 250 0 97 4 1 0 108 4 1 0 109 1 250 0 112 1 250 0 114 1 250 0 116 1 250 0 121 1 250 0 127 1 250 0 128 4 1 0 129 3 229 0 130 1 250 0 131 0 79 0 132 0 83 0 133 1 250 0 134 4 1 0 135 4 1 0 136 1 250 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 1 250 1 133] 
#[0 1 254 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 2 2 0 39 2 2 0 40 2 2 0 41 2 2 0 48 2 2 0 49 4 1 0 58 2 2 0 61 4 1 0 64 4 1 0 71 2 2 0 78 4 1 0 80 4 1 0 108 4 1 0 109 2 2 0 121 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 6 61 0 134 4 1 0 135 4 1 0 136 2 2 0 137 3 249 0 138 6 65 1 98 3 253 1 119 4 1 1 125 4 1 1 126 2 2 1 133] 
#[1 6 69 0 121 6 9 0 137] 
#[1 2 6 0 40 6 73 0 41 2 6 0 49 6 9 0 137 6 77 1 83] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 6 81 0 36 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 6 85 0 5 6 89 0 36] 
#[1 3 153 0 2 4 1 0 4 2 10 0 5 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 2 10 0 36 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 3 153 0 2 4 1 0 4 2 18 0 5 3 161 0 6 6 93 0 7 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 2 18 0 131 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 6 97 0 5 6 101 0 131] 
#[0 2 22 0 5 0 131] 
#[1 3 153 0 2 2 26 0 3 4 1 0 4 2 26 0 5 3 161 0 6 2 26 0 7 4 1 0 8 2 26 0 9 2 26 0 10 0 87 0 11 0 91 0 12 0 95 0 13 0 99 0 14 2 26 0 18 2 26 0 20 2 26 0 30 2 26 0 33 4 1 0 35 2 26 0 36 2 26 0 37 2 26 0 39 2 26 0 40 2 26 0 41 2 26 0 48 2 26 0 49 2 26 0 57 0 103 0 58 2 26 0 59 2 26 0 61 2 26 0 64 4 1 0 71 2 26 0 74 2 26 0 77 2 26 0 78 2 26 0 80 2 26 0 96 2 26 0 97 4 1 0 108 4 1 0 109 2 26 0 112 2 26 0 114 2 26 0 116 2 26 0 121 2 26 0 127 2 26 0 128 2 26 0 129 3 229 0 130 2 26 0 131 0 107 0 132 0 111 0 133 2 26 0 134 2 26 0 135 2 26 0 136 2 26 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 2 26 1 133] 
#[1 3 153 0 2 2 30 0 3 4 1 0 4 2 30 0 5 3 161 0 6 2 30 0 7 4 1 0 8 2 30 0 9 2 30 0 10 0 115 0 11 0 119 0 12 0 123 0 13 0 127 0 14 2 30 0 18 2 30 0 20 2 30 0 30 2 30 0 33 4 1 0 35 2 30 0 36 2 30 0 37 2 30 0 39 2 30 0 40 2 30 0 41 2 30 0 48 2 30 0 49 2 30 0 57 0 131 0 58 2 30 0 59 2 30 0 61 2 30 0 64 4 1 0 71 2 30 0 74 2 30 0 77 2 30 0 78 2 30 0 80 2 30 0 96 2 30 0 97 4 1 0 108 4 1 0 109 2 30 0 112 2 30 0 114 2 30 0 116 2 30 0 121 2 30 0 127 2 30 0 128 2 30 0 129 3 229 0 130 2 30 0 131 0 135 0 132 0 139 0 133 2 30 0 134 2 30 0 135 2 30 0 136 2 30 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 2 30 1 133] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 105 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 6 105 1 104 6 105 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 109 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 6 109 1 104 6 109 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[0 6 113 0 40] 
#[1 0 97 0 2 6 117 0 3 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 121 1 107 1 9 1 108 6 121 1 109 6 121 1 110 1 21 1 111 6 121 1 112 1 29 1 113 6 121 1 114 1 37 1 115 6 121 1 116 1 45 1 121 6 121 1 122 6 125 1 123 6 129 1 124 1 53 1 132] 
#[0 2 34 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[1 6 133 0 1 6 137 0 139] 
#[0 2 38 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 141 1 107 1 9 1 108 6 141 1 109 6 141 1 110 1 21 1 111 6 141 1 112 1 29 1 113 6 141 1 114 1 37 1 115 6 141 1 116 1 45 1 121 6 141 1 122 1 53 1 132] 
#[0 2 42 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 46 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 50 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 54 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 132] 
#[0 2 58 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 62 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 66 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 70 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 74 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 78 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 82 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 86 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 90 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 94 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 145 1 107 1 9 1 108 6 145 1 109 6 145 1 110 1 21 1 111 6 145 1 112 1 29 1 113 6 145 1 114 1 37 1 115 6 145 1 116 6 149 1 120 1 45 1 121 6 145 1 122 1 53 1 132] 
#[0 2 98 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 102 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 106 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 110 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 132] 
#[0 2 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 153 1 107 1 9 1 108 6 153 1 109 6 153 1 110 1 21 1 111 6 153 1 112 1 29 1 113 6 153 1 114 1 37 1 115 6 153 1 116 1 45 1 121 6 153 1 122 1 53 1 132] 
#[0 2 122 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 132] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 6 157 0 11] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 4 29 0 2 0 186 0 3 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 37 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 49 0 213 4 53 0 214 4 57 0 215 4 61 0 216 4 65 0 217 4 69 0 218 4 73 0 219 4 49 1 116 1 193 1 121 1 197 1 132] 
#[1 2 142 0 3 2 142 0 5 6 161 0 14] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 8 6 165 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[1 6 169 0 3 6 173 0 5] 
#[0 2 146 0 3 0 5] 
#[1 4 157 0 2 2 150 0 3 4 165 0 4 2 150 0 5 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 6 177 0 14 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[0 6 181 0 3] 
#[1 2 154 0 3 6 185 0 5] 
#[0 2 158 0 3 0 5] 
#[1 2 162 0 3 6 193 0 137 6 193 1 89] 
#[1 2 166 0 3 0 143 0 137] 
#[0 2 170 0 3 0 137] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[1 4 157 0 2 2 174 0 3 2 174 0 4 2 174 0 5 4 161 0 6 2 174 0 7 2 174 0 8 2 174 0 9 2 174 0 10 0 147 0 11 0 151 0 12 0 155 0 13 2 174 0 14 2 174 0 16 2 174 0 18 2 174 0 20 2 174 0 21 2 174 0 23 2 174 0 27 2 174 0 30 2 174 0 31 2 174 0 33 2 174 0 35 2 174 0 36 2 174 0 52 2 174 0 57 0 159 0 58 2 174 0 59 2 174 0 64 2 174 0 65 2 174 0 71 2 174 0 74 2 174 0 77 2 174 0 80 2 174 0 87 2 174 0 89 2 174 0 96 2 174 0 97 2 174 0 104 2 174 0 108 2 174 0 109 2 174 0 112 2 174 0 115 2 174 0 118 2 174 0 123 2 174 0 127 2 174 0 128 2 174 0 129 2 174 0 130 2 174 0 131 0 163 0 132 0 167 0 133 2 174 0 135 2 174 0 136 2 174 0 137 4 165 1 126 2 174 1 133] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 6 201 0 183 6 201 0 187 1 133 0 192 6 201 0 194 6 201 0 195 6 201 0 197 6 201 0 201 6 201 0 202 1 157 0 204 6 201 0 210 1 165 0 211 1 169 0 212 1 173 0 213 6 201 0 244 6 201 0 245 6 201 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[0 6 205 0 9] 
#[1 4 157 0 2 2 178 0 3 4 165 0 4 2 178 0 5 4 161 0 6 2 178 0 7 4 165 0 8 2 178 0 9 2 178 0 10 0 171 0 11 0 175 0 12 0 179 0 13 2 178 0 14 2 178 0 16 4 165 0 18 4 165 0 20 2 178 0 21 2 178 0 23 2 178 0 27 2 178 0 30 2 178 0 31 2 178 0 33 4 165 0 35 2 178 0 36 2 178 0 52 2 178 0 57 0 183 0 58 2 178 0 59 4 165 0 64 2 178 0 65 4 165 0 71 2 178 0 74 2 178 0 77 4 165 0 80 2 178 0 87 2 178 0 89 2 178 0 96 2 178 0 97 2 178 0 104 4 165 0 108 4 165 0 109 2 178 0 112 2 178 0 115 2 178 0 118 2 178 0 123 2 178 0 127 2 178 0 128 4 165 0 129 2 178 0 130 2 178 0 131 0 187 0 132 0 191 0 133 4 165 0 135 4 165 0 136 2 178 0 137 4 165 1 126 2 178 1 133] 
#[1 6 209 0 77 2 182 0 137 6 213 1 5] 
#[0 6 217 0 50] 
#[1 6 221 0 52 6 225 0 89] 
#[1 6 229 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 6 233 0 210 1 165 0 211 1 169 0 212 6 237 0 213 6 237 1 116 1 193 1 121 1 197 1 132] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 1 18 0 10 4 181 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 58 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 6 241 0 179 1 18 1 133] 
#[1 2 186 0 3 2 186 0 5 6 245 0 6 2 186 0 10 2 186 0 14 2 186 0 16 2 186 0 21 2 186 0 23 2 186 0 27 2 186 0 30 2 186 0 31 2 186 0 33 2 186 0 36 2 186 0 52 2 186 0 57 2 186 0 58 2 186 0 59 2 186 0 65 2 186 0 74 2 186 0 77 2 186 0 87 2 186 0 89 2 186 0 96 2 186 0 97 2 186 0 104 2 186 0 112 2 186 0 115 2 186 0 118 2 186 0 123 2 186 0 127 2 186 0 128 2 186 0 130 2 186 0 131 2 186 0 132 2 186 0 137 2 186 1 133] 
#[1 4 157 0 2 2 190 0 3 4 165 0 4 2 190 0 5 4 161 0 6 2 190 0 7 4 165 0 8 2 190 0 9 2 190 0 10 0 195 0 11 0 199 0 12 0 203 0 13 2 190 0 14 2 190 0 16 2 190 0 18 2 190 0 20 2 190 0 21 2 190 0 23 2 190 0 27 2 190 0 30 2 190 0 31 2 190 0 33 4 165 0 35 2 190 0 36 2 190 0 52 2 190 0 57 0 207 0 58 2 190 0 59 2 190 0 64 2 190 0 65 4 165 0 71 2 190 0 74 2 190 0 77 2 190 0 80 2 190 0 87 2 190 0 89 2 190 0 96 2 190 0 97 2 190 0 104 4 165 0 108 4 165 0 109 2 190 0 112 2 190 0 115 2 190 0 118 2 190 0 123 2 190 0 127 2 190 0 128 2 190 0 129 2 190 0 130 2 190 0 131 0 211 0 132 0 215 0 133 2 190 0 135 2 190 0 136 2 190 0 137 4 165 1 126 2 190 1 133] 
#[1 4 157 0 2 2 194 0 3 4 165 0 4 2 194 0 5 4 161 0 6 2 194 0 7 4 165 0 8 2 194 0 9 2 194 0 10 0 219 0 11 0 223 0 12 0 227 0 13 2 194 0 14 2 194 0 16 2 194 0 18 2 194 0 20 2 194 0 21 2 194 0 23 2 194 0 27 2 194 0 30 2 194 0 31 2 194 0 33 4 165 0 35 2 194 0 36 2 194 0 52 2 194 0 57 0 231 0 58 2 194 0 59 2 194 0 64 2 194 0 65 4 165 0 71 2 194 0 74 2 194 0 77 2 194 0 80 2 194 0 87 2 194 0 89 2 194 0 96 2 194 0 97 2 194 0 104 4 165 0 108 4 165 0 109 2 194 0 112 2 194 0 115 2 194 0 118 2 194 0 123 2 194 0 127 2 194 0 128 2 194 0 129 2 194 0 130 2 194 0 131 0 235 0 132 0 239 0 133 2 194 0 135 2 194 0 136 2 194 0 137 4 165 1 126 2 194 1 133] 
#[0 0 214 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 2 198 0 3 2 198 0 5 2 198 0 10 2 198 0 14 2 198 0 16 2 198 0 21 2 198 0 23 2 198 0 27 2 198 0 30 2 198 0 31 2 198 0 33 2 198 0 36 2 198 0 52 2 198 0 57 2 198 0 58 2 198 0 59 2 198 0 65 2 198 0 74 2 198 0 77 2 198 0 87 2 198 0 89 2 198 0 96 2 198 0 97 2 198 0 104 2 198 0 112 2 198 0 115 2 198 0 118 2 198 0 123 2 198 0 127 2 198 0 128 4 173 0 130 2 198 0 131 2 198 0 132 2 198 0 137 2 198 1 133] 
#[0 6 249 0 140] 
#[0 2 202 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 2 206 0 77 6 253 0 130 7 1 0 247] 
#[1 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 7 5 0 203 7 9 0 227 7 13 0 237] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 17 0 211 1 169 0 212 1 173 0 213 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 7 21 0 213 7 25 0 220 7 21 1 116 1 193 1 121 1 197 1 132] 
#[0 7 29 0 140] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 7 33 0 213 7 33 1 116 1 193 1 121 1 197 1 132] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 37 0 183 7 37 0 187 1 133 0 192 7 37 0 194 7 37 0 195 7 37 0 197 7 37 0 201 7 37 0 202 1 157 0 204 7 37 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 37 0 244 7 37 0 245 7 37 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 7 41 0 213 7 41 1 116 1 193 1 121 1 197 1 132] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 7 45 0 131 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 7 49 0 139 7 53 0 180 7 57 0 181] 
#[0 7 61 0 14] 
#[1 4 181 0 11 1 18 0 14 7 65 0 179] 
#[0 2 214 0 26 0 28 0 32 0 52 0 89 0 130 0 139] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 69 0 183 7 69 0 187 1 133 0 192 7 69 0 194 7 69 0 195 7 69 0 197 7 69 0 201 7 69 0 202 1 157 0 204 7 69 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 69 0 244 7 69 0 245 7 69 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[0 7 73 0 14] 
#[0 7 77 0 139] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 81 0 183 7 81 0 187 1 133 0 192 7 81 0 194 7 81 0 195 7 81 0 197 7 81 0 201 7 81 0 202 1 157 0 204 7 81 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 81 0 244 7 81 0 245 7 81 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 2 218 0 3 4 205 0 5 7 85 0 9 2 218 0 131 2 218 0 137 2 218 1 133] 
#[1 4 113 0 139 7 89 0 236] 
#[1 4 113 0 139 7 93 0 236] 
#[1 4 113 0 139 7 97 0 236] 
#[1 4 113 0 139 7 101 0 236] 
#[1 4 113 0 139 7 105 0 236] 
#[0 2 222 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 2 226 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 2 230 0 3 2 230 0 21 2 230 0 23 2 230 0 24 2 230 0 26 2 230 0 27 2 230 0 28 2 230 0 32 2 230 0 40 5 89 0 44 5 93 0 51 2 230 0 52 2 230 0 65 2 230 0 88 2 230 0 89 2 230 0 91 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 104 2 230 0 113 2 230 0 115 2 230 0 118 2 230 0 123 2 230 0 130 2 230 0 139 5 105 1 28 2 230 1 133] 
#[0 2 234 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 2 238 0 3 2 238 0 21 2 238 0 23 2 238 0 24 2 238 0 26 2 238 0 27 2 238 0 28 2 238 0 32 2 238 0 40 5 89 0 44 5 93 0 51 2 238 0 52 2 238 0 65 2 238 0 88 2 238 0 89 2 238 0 91 2 238 0 92 2 238 0 93 2 238 0 94 2 238 0 104 2 238 0 113 2 238 0 115 2 238 0 118 2 238 0 123 2 238 0 130 2 238 0 139 5 109 1 28 2 238 1 133] 
#[0 2 242 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 2 246 0 3 2 246 0 21 2 246 0 23 2 246 0 24 2 246 0 26 2 246 0 27 2 246 0 28 2 246 0 32 2 246 0 40 2 246 0 43 2 246 0 48 2 246 0 52 2 246 0 56 2 246 0 61 2 246 0 65 2 246 0 88 2 246 0 89 2 246 0 91 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 104 2 246 0 113 2 246 0 115 2 246 0 118 2 246 0 123 2 246 0 130 1 221 0 139 7 109 0 172 2 246 1 133] 
#[0 2 250 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 3 53 0 2 6 245 0 6 0 54 0 137 7 113 0 196] 
#[1 7 117 0 2 6 245 0 6 2 254 0 137 7 121 1 46] 
#[1 3 53 0 2 6 245 0 6 0 54 0 9 7 125 0 14 0 54 0 137 7 129 0 196] 
#[1 3 53 0 2 6 245 0 6 7 133 0 14 0 54 0 137 7 137 0 196] 
#[1 3 2 0 9 3 2 0 30 3 2 0 33 3 2 0 57 3 2 0 59 3 2 0 74 3 2 0 96 3 2 0 97 3 2 0 112 3 2 0 127 3 2 0 128 7 141 0 130 3 2 0 137 7 145 1 14] 
#[1 3 6 0 3 3 6 0 21 3 6 0 23 3 6 0 24 3 6 0 26 3 6 0 27 3 6 0 28 3 6 0 32 3 6 0 40 3 6 0 43 3 6 0 48 3 6 0 52 3 6 0 56 3 6 0 61 3 6 0 65 3 6 0 88 3 6 0 89 3 6 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 104 3 6 0 113 3 6 0 115 3 6 0 118 3 6 0 123 3 6 0 130 1 229 0 139 1 233 1 33 7 149 1 73 3 6 1 133] 
#[0 3 10 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 3 14 0 3 3 14 0 21 3 14 0 23 3 14 0 24 3 14 0 26 3 14 0 27 3 14 0 28 3 14 0 32 3 14 0 40 3 14 0 43 3 14 0 48 3 14 0 52 3 14 0 56 3 14 0 61 3 14 0 65 3 14 0 88 3 14 0 89 3 14 0 91 3 14 0 92 3 14 0 93 3 14 0 94 3 14 0 104 3 14 0 113 3 14 0 115 3 14 0 118 3 14 0 123 1 201 0 130 1 205 0 139 7 153 0 178 1 213 0 240 1 217 0 241 3 14 1 133] 
#[0 3 18 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 3 22 0 3 3 22 0 21 3 22 0 23 3 22 0 24 3 22 0 26 3 22 0 27 3 22 0 28 3 22 0 32 3 22 0 40 3 22 0 43 3 22 0 48 3 22 0 52 3 22 0 56 3 22 0 61 3 22 0 65 3 22 0 88 3 22 0 89 3 22 0 91 3 22 0 92 3 22 0 93 3 22 0 94 3 22 0 104 3 22 0 113 3 22 0 115 3 22 0 118 3 22 0 123 3 22 0 130 1 229 0 139 1 233 1 33 7 149 1 73 3 22 1 133] 
#[1 4 217 0 28 4 221 0 32 4 225 0 52 4 229 0 79 4 233 0 89 4 241 1 49 4 245 1 51 4 249 1 57 4 253 1 59] 
#[0 3 26 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 3 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 3 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 3 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 3 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 3 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 3 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 157 0 183 7 157 0 187 1 133 0 192 7 157 0 194 7 157 0 195 7 157 0 197 7 157 0 201 7 157 0 202 1 157 0 204 7 157 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 157 0 244 7 157 0 245 7 157 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 7 161 0 137 7 165 0 139 7 169 0 143] 
#[0 7 173 0 137] 
#[1 3 54 0 3 3 54 0 17 3 54 0 22 3 54 0 23 3 54 0 24 3 54 0 25 3 54 0 26 3 54 0 27 3 54 0 28 3 54 0 31 3 54 0 32 3 54 0 33 3 54 0 38 3 54 0 40 3 54 0 42 3 54 0 43 3 54 0 44 3 54 0 45 3 54 0 47 3 54 0 48 3 54 0 51 3 54 0 52 3 54 0 61 3 54 0 62 3 54 0 67 3 54 0 70 3 54 0 73 3 54 0 82 3 54 0 83 3 54 0 86 3 54 0 87 3 54 0 88 3 54 0 89 3 54 0 91 3 54 0 92 3 54 0 93 3 54 0 94 3 54 0 100 3 54 0 101 3 54 0 104 3 54 0 105 3 54 0 110 3 54 0 111 3 54 0 113 3 54 0 115 3 54 0 118 3 54 0 120 3 54 0 123 3 54 0 124 3 54 0 130 3 54 0 139 7 177 1 24 3 54 1 133] 
#[1 3 54 0 3 3 54 0 17 3 54 0 22 3 54 0 23 3 54 0 24 3 54 0 25 3 54 0 26 3 54 0 27 3 54 0 28 3 54 0 31 3 54 0 32 3 54 0 33 3 54 0 38 3 54 0 40 3 54 0 42 3 54 0 43 3 54 0 44 3 54 0 45 3 54 0 47 3 54 0 48 3 54 0 51 3 54 0 52 3 54 0 61 3 54 0 62 3 54 0 67 3 54 0 70 3 54 0 73 3 54 0 82 3 54 0 83 3 54 0 86 3 54 0 87 3 54 0 88 3 54 0 89 3 54 0 91 3 54 0 92 3 54 0 93 3 54 0 94 3 54 0 100 3 54 0 101 3 54 0 104 3 54 0 105 3 54 0 110 3 54 0 111 3 54 0 113 3 54 0 115 3 54 0 118 3 54 0 120 3 54 0 123 3 54 0 124 3 54 0 130 3 54 0 139 7 181 1 24 3 54 1 133] 
#[1 3 54 0 3 3 54 0 17 3 54 0 21 3 54 0 22 3 54 0 23 3 54 0 24 3 54 0 25 3 54 0 26 3 54 0 27 3 54 0 28 3 54 0 31 3 54 0 32 3 54 0 33 3 54 0 38 3 54 0 40 3 54 0 42 3 54 0 43 3 54 0 44 3 54 0 45 3 54 0 47 3 54 0 48 3 54 0 51 3 54 0 52 3 54 0 56 3 54 0 61 3 54 0 62 3 54 0 65 3 54 0 67 3 54 0 70 3 54 0 73 3 54 0 82 3 54 0 83 3 54 0 86 3 54 0 87 3 54 0 88 3 54 0 89 3 54 0 91 3 54 0 92 3 54 0 93 3 54 0 94 3 54 0 100 3 54 0 101 3 54 0 104 3 54 0 105 3 54 0 110 3 54 0 111 3 54 0 113 3 54 0 115 3 54 0 118 3 54 0 120 3 54 0 123 3 54 0 124 3 54 0 130 3 54 0 139 7 185 1 24 3 54 1 133] 
#[1 3 54 0 3 3 54 0 17 3 54 0 21 3 54 0 22 3 54 0 23 3 54 0 24 3 54 0 25 3 54 0 26 3 54 0 27 3 54 0 28 3 54 0 31 3 54 0 32 3 54 0 33 3 54 0 38 3 54 0 40 3 54 0 42 3 54 0 43 3 54 0 44 3 54 0 45 3 54 0 47 3 54 0 48 3 54 0 51 3 54 0 52 3 54 0 56 3 54 0 61 3 54 0 62 3 54 0 65 3 54 0 67 3 54 0 70 3 54 0 73 3 54 0 82 3 54 0 83 3 54 0 86 3 54 0 87 3 54 0 88 3 54 0 89 3 54 0 91 3 54 0 92 3 54 0 93 3 54 0 94 3 54 0 100 3 54 0 101 3 54 0 104 3 54 0 105 3 54 0 110 3 54 0 111 3 54 0 113 3 54 0 115 3 54 0 118 3 54 0 120 3 54 0 123 3 54 0 124 3 54 0 130 3 54 0 139 7 189 1 24 3 54 1 133] 
#[1 3 54 0 3 3 54 0 17 3 54 0 22 3 54 0 23 3 54 0 24 3 54 0 25 3 54 0 26 3 54 0 27 3 54 0 28 3 54 0 31 3 54 0 32 3 54 0 33 3 54 0 38 3 54 0 40 3 54 0 42 3 54 0 43 3 54 0 44 3 54 0 45 3 54 0 47 3 54 0 48 3 54 0 51 3 54 0 52 3 54 0 61 3 54 0 62 3 54 0 67 3 54 0 70 3 54 0 73 3 54 0 82 3 54 0 83 3 54 0 86 3 54 0 87 3 54 0 88 3 54 0 89 3 54 0 91 3 54 0 92 3 54 0 93 3 54 0 94 3 54 0 100 3 54 0 101 3 54 0 104 3 54 0 105 3 54 0 110 3 54 0 111 3 54 0 113 3 54 0 115 3 54 0 118 3 54 0 120 3 54 0 123 3 54 0 124 3 54 0 130 3 54 0 139 7 193 1 24 3 54 1 133] 
#[0 7 197 0 139] 
#[0 3 58 0 14 0 31 0 137] 
#[0 3 62 0 14 0 31 0 137] 
#[0 7 201 0 137] 
#[0 3 66 0 103] 
#[0 7 205 0 137] 
#[0 7 209 0 137] 
#[1 2 205 0 139 7 213 0 166 2 233 0 167] 
#[0 3 70 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 7 217 0 143] 
#[0 7 221 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 7 225 0 43 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 7 229 0 155 3 9 1 66 3 13 1 67 7 233 1 129] 
#[1 7 237 0 5 7 241 0 137] 
#[1 3 74 0 5 5 117 0 6 3 74 0 137] 
#[1 2 205 0 139 7 245 0 165 2 229 0 166 2 233 0 167] 
#[1 7 249 0 40 7 253 1 131] 
#[1 3 78 0 27 3 78 0 40 3 78 0 48 3 78 0 52 3 78 0 56 3 78 0 61 3 78 0 89 3 78 0 104 3 78 0 115 3 78 0 118 3 78 0 123 8 1 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 8 5 0 164] 
#[1 3 82 0 40 3 82 0 48 8 9 0 61 8 13 1 127] 
#[0 3 86 1 133] 
#[1 1 229 0 139 8 17 1 33] 
#[1 8 21 0 139 8 25 0 174 8 29 0 175] 
#[0 3 90 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 94 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 98 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 102 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 106 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 8 33 1 66 3 13 1 67] 
#[0 3 110 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 114 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 8 37 1 66 3 13 1 67] 
#[0 3 118 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 122 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 126 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 8 41 0 137] 
#[0 3 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 3 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 45 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 8 45 1 104 8 45 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 49 0 213 8 53 1 90 8 57 1 91 8 61 1 92 8 65 1 93 8 69 1 94 8 73 1 95 8 49 1 116 1 193 1 121 1 197 1 132] 
#[1 8 77 0 9 3 138 0 10 3 138 0 58] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 81 1 107 1 9 1 108 8 81 1 109 8 81 1 110 1 21 1 111 8 81 1 112 1 29 1 113 8 81 1 114 1 37 1 115 8 81 1 116 1 45 1 121 8 81 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 85 1 107 1 9 1 108 8 85 1 109 8 85 1 110 1 21 1 111 8 85 1 112 1 29 1 113 8 85 1 114 1 37 1 115 8 85 1 116 1 45 1 121 8 85 1 122 1 53 1 132] 
#[0 8 89 0 3] 
#[1 3 142 0 3 3 142 0 131 8 93 0 137] 
#[0 3 146 0 3 0 131 0 137] 
#[0 3 150 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 97 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 8 97 1 104 8 97 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[1 0 97 0 2 8 101 0 3 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 121 1 107 1 9 1 108 6 121 1 109 6 121 1 110 1 21 1 111 6 121 1 112 1 29 1 113 6 121 1 114 1 37 1 115 6 121 1 116 1 45 1 121 6 121 1 122 8 105 1 123 6 129 1 124 1 53 1 132] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 8 109 0 9 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 8 113 0 9 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 4 113 0 139 8 117 0 236] 
#[0 3 154 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 121 1 107 1 9 1 108 8 121 1 109 8 121 1 110 1 21 1 111 8 121 1 112 1 29 1 113 8 121 1 114 1 37 1 115 8 121 1 116 1 45 1 121 8 121 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 8 125 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 129 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 8 133 1 84 8 137 1 85 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 3 158 0 40 8 141 0 49 8 145 1 87] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 149 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 8 149 1 104 8 149 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 153 1 107 1 9 1 108 8 153 1 109 8 153 1 110 1 21 1 111 8 153 1 112 1 29 1 113 8 153 1 114 1 37 1 115 8 153 1 116 1 45 1 121 8 153 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 157 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 8 157 1 104 8 157 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 161 1 107 1 9 1 108 8 161 1 109 8 161 1 110 1 21 1 111 8 161 1 112 1 29 1 113 8 161 1 114 1 37 1 115 8 161 1 116 1 45 1 121 8 161 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 121 1 107 1 9 1 108 3 121 1 109 3 121 1 110 1 21 1 111 3 121 1 112 1 29 1 113 3 121 1 114 1 37 1 115 3 121 1 116 8 165 1 118 1 45 1 121 3 121 1 122 1 53 1 132] 
#[0 3 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 3 166 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 3 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 3 174 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 3 153 0 2 3 182 0 3 4 1 0 4 3 182 0 5 3 161 0 6 4 1 0 8 3 182 0 9 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 8 169 0 3 8 173 0 5] 
#[1 3 186 0 3 3 186 0 5 8 177 0 9] 
#[0 3 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 3 153 0 2 3 198 0 3 4 1 0 4 3 198 0 5 3 161 0 6 3 198 0 7 4 1 0 8 3 198 0 9 3 169 0 10 0 243 0 11 0 247 0 12 0 251 0 13 0 255 0 14 4 1 0 18 4 1 0 20 3 198 0 30 3 198 0 33 4 1 0 35 3 198 0 36 3 198 0 37 3 198 0 39 3 198 0 40 3 198 0 41 3 198 0 48 3 198 0 49 3 198 0 57 1 3 0 58 3 198 0 59 3 198 0 61 4 1 0 64 4 1 0 71 3 198 0 74 3 198 0 77 3 198 0 78 4 1 0 80 3 198 0 96 3 198 0 97 4 1 0 108 4 1 0 109 3 198 0 112 3 198 0 114 3 198 0 116 3 198 0 121 3 198 0 127 3 198 0 128 4 1 0 129 3 229 0 130 3 198 0 131 1 7 0 132 1 11 0 133 3 198 0 134 4 1 0 135 4 1 0 136 3 198 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 3 198 1 133] 
#[1 3 153 0 2 4 1 0 4 3 202 0 5 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 3 202 0 131 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 8 181 0 5 8 185 0 131] 
#[1 3 153 0 2 3 206 0 3 4 1 0 4 3 206 0 5 3 161 0 6 3 206 0 7 4 1 0 8 3 206 0 9 3 169 0 10 1 15 0 11 1 19 0 12 1 23 0 13 1 27 0 14 4 1 0 18 4 1 0 20 3 206 0 30 3 206 0 33 4 1 0 35 3 206 0 36 3 206 0 37 3 206 0 39 3 206 0 40 3 206 0 41 3 206 0 48 3 206 0 49 3 206 0 57 1 31 0 58 3 206 0 59 3 206 0 61 4 1 0 64 4 1 0 71 3 206 0 74 3 206 0 77 3 206 0 78 4 1 0 80 3 206 0 96 3 206 0 97 4 1 0 108 4 1 0 109 3 206 0 112 3 206 0 114 3 206 0 116 3 206 0 121 3 206 0 127 3 206 0 128 4 1 0 129 3 229 0 130 3 206 0 131 1 35 0 132 1 39 0 133 3 206 0 134 4 1 0 135 4 1 0 136 3 206 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 3 206 1 133] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 177 0 183 8 189 0 187 8 193 0 191 1 133 0 192 1 177 0 194 1 177 0 195 8 189 0 197 8 189 0 201 8 189 0 202 1 157 0 204 8 189 0 210 1 165 0 211 1 169 0 212 1 173 0 213 1 177 0 244 8 189 0 245 8 189 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 197 0 213 8 197 1 116 1 193 1 121 1 197 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 201 0 213 8 201 1 116 1 193 1 121 1 197 1 132] 
#[0 3 210 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 4 33 0 139 8 205 0 185] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 209 0 213 8 209 1 116 1 193 1 121 1 197 1 132] 
#[0 3 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 49 0 213 8 213 0 216 4 49 1 116 1 193 1 121 1 197 1 132] 
#[0 3 218 0 3] 
#[0 8 217 0 3] 
#[1 8 221 0 140 8 225 0 219] 
#[1 3 222 0 3 3 222 0 5 3 222 0 10 3 222 0 14 4 169 0 16 3 222 0 21 3 222 0 23 3 222 0 27 3 222 0 30 3 222 0 31 3 222 0 33 3 222 0 36 3 222 0 52 3 222 0 57 3 222 0 58 3 222 0 59 3 222 0 65 3 222 0 74 3 222 0 77 3 222 0 87 3 222 0 89 3 222 0 96 3 222 0 97 3 222 0 104 3 222 0 112 3 222 0 115 3 222 0 118 3 222 0 123 3 222 0 127 3 222 0 128 4 173 0 130 3 222 0 131 3 222 0 132 3 222 0 137 3 222 1 133] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 8 229 0 183 8 229 0 187 1 133 0 192 8 229 0 194 8 229 0 195 8 229 0 197 8 229 0 201 8 229 0 202 1 157 0 204 8 229 0 210 1 165 0 211 1 169 0 212 1 173 0 213 8 229 0 244 8 229 0 245 8 229 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[0 8 233 0 76] 
#[0 8 237 0 137] 
#[1 4 113 0 139 8 241 0 236] 
#[1 3 53 0 2 0 54 0 9 8 245 0 196] 
#[1 3 53 0 2 0 54 0 137 8 249 0 196] 
#[1 4 29 0 2 0 186 0 3 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 8 253 0 140 1 169 0 141 1 193 0 143 1 121 0 147 9 1 0 198 1 169 0 212 4 49 0 213 4 53 0 214 4 57 0 215 4 61 0 216 4 65 0 217 4 69 0 218 4 73 0 219 4 49 1 116 1 193 1 121 1 197 1 132] 
#[0 3 226 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 4 157 0 2 3 230 0 3 4 165 0 4 3 230 0 5 4 161 0 6 0 250 0 7 4 165 0 8 3 230 0 10 4 165 0 11 4 165 0 12 4 165 0 13 3 230 0 14 3 230 0 16 4 165 0 18 4 165 0 20 3 230 0 21 3 230 0 23 3 230 0 27 3 230 0 30 3 230 0 31 3 230 0 33 4 165 0 35 3 230 0 36 3 230 0 52 3 230 0 57 1 43 0 58 3 230 0 59 4 165 0 64 3 230 0 65 4 165 0 71 3 230 0 74 3 230 0 77 4 165 0 80 3 230 0 87 3 230 0 89 3 230 0 96 3 230 0 97 3 230 0 104 4 165 0 108 4 165 0 109 3 230 0 112 3 230 0 115 3 230 0 118 3 230 0 123 3 230 0 127 3 230 0 128 4 165 0 129 3 230 0 130 3 230 0 131 1 47 0 132 4 165 0 133 4 165 0 135 4 165 0 136 3 230 0 137 4 165 1 126 3 230 1 133] 
#[0 3 234 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 9 5 0 139] 
#[0 3 238 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 9 21 0 210 1 165 0 211 1 169 0 212 9 13 0 213 9 17 0 248 9 21 0 249 9 13 1 116 1 193 1 121 1 197 1 132] 
#[0 9 25 0 77] 
#[0 9 29 0 40] 
#[1 3 242 0 3 3 242 0 24 3 242 0 40 3 242 0 88 3 242 0 92 3 242 0 93 3 242 0 94 3 242 0 113 9 33 0 228] 
#[1 3 246 0 3 3 246 0 24 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 3 246 0 40 2 21 0 52 3 246 0 88 2 25 0 89 2 29 0 91 3 246 0 92 3 246 0 93 3 246 0 94 3 246 0 113 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 9 37 0 170 9 37 0 176 9 37 0 238 9 37 0 239 2 61 0 240 1 217 0 241 9 37 0 242 9 37 0 243 9 37 0 255 9 37 1 0 9 37 1 1 9 37 1 2 9 37 1 3 9 37 1 4 9 37 1 6 9 37 1 7 9 37 1 8 9 37 1 10 2 113 1 11 9 37 1 12 2 121 1 33 9 37 1 41 2 129 1 42 9 37 1 44 2 137 1 45 9 37 1 48 2 145 1 49 9 37 1 50 2 153 1 51 9 37 1 53 9 37 1 54 9 37 1 56 2 169 1 57 9 37 1 58 2 177 1 59 9 37 1 61 9 37 1 62 9 37 1 64 2 193 1 65 9 37 1 70 2 201 1 71] 
#[0 3 250 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 4 157 0 2 3 254 0 3 4 165 0 4 3 254 0 5 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 9 41 0 3 9 45 0 5] 
#[0 4 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[1 4 157 0 2 4 6 0 3 4 165 0 4 4 6 0 5 4 161 0 6 4 6 0 7 4 165 0 8 4 6 0 9 4 6 0 10 1 51 0 11 1 55 0 12 1 59 0 13 4 6 0 14 4 6 0 16 4 165 0 18 4 165 0 20 4 6 0 21 4 6 0 23 4 6 0 27 4 6 0 30 4 6 0 31 4 6 0 33 4 165 0 35 4 6 0 36 4 6 0 52 4 6 0 57 1 63 0 58 4 6 0 59 4 165 0 64 4 6 0 65 4 165 0 71 4 6 0 74 4 6 0 77 4 165 0 80 4 6 0 87 4 6 0 89 4 6 0 96 4 6 0 97 4 6 0 104 4 165 0 108 4 165 0 109 4 6 0 112 4 6 0 115 4 6 0 118 4 6 0 123 4 6 0 127 4 6 0 128 4 165 0 129 4 6 0 130 4 6 0 131 1 67 0 132 1 71 0 133 4 165 0 135 4 165 0 136 4 6 0 137 4 165 1 126 4 6 1 133] 
#[1 4 10 0 3 4 10 0 5 4 10 0 10 4 10 0 14 4 10 0 21 4 10 0 23 4 10 0 27 4 10 0 30 4 10 0 31 4 10 0 33 4 10 0 36 4 10 0 52 4 10 0 57 4 10 0 58 4 10 0 59 4 10 0 65 4 10 0 74 4 10 0 77 4 10 0 87 4 10 0 89 4 10 0 96 4 10 0 97 4 10 0 104 4 10 0 112 4 10 0 115 4 10 0 118 4 10 0 123 4 10 0 127 4 10 0 128 4 173 0 130 4 10 0 131 4 10 0 132 4 10 0 137 4 10 1 133] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 9 49 0 131 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[0 4 14 0 26 0 28 0 32 0 52 0 89 0 130 0 139] 
#[1 4 18 0 5 9 53 0 9 4 18 0 132] 
#[1 9 57 0 5 9 61 0 132] 
#[0 4 22 0 5 0 132] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 9 65 0 26 9 125 0 34 1 65 0 46 1 69 0 52 9 125 0 63 1 73 0 75 9 77 0 76 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 9 81 0 182 9 85 0 183 9 89 0 186 9 93 0 187 1 133 0 192 9 97 0 194 9 101 0 195 9 93 0 197 9 89 0 200 9 93 0 201 9 93 0 202 1 157 0 204 9 93 0 210 1 165 0 211 1 169 0 212 1 173 0 213 9 89 0 221 9 89 0 222 9 89 0 225 1 177 0 244 9 93 0 245 9 93 0 246 9 89 0 250 9 125 0 251 1 173 1 116 1 193 1 121 1 197 1 132] 
#[0 9 129 0 14] 
#[1 4 26 0 14 4 169 0 16 4 26 0 21 4 26 0 23 4 26 0 27 4 26 0 30 4 26 0 33 4 26 0 36 4 26 0 52 4 26 0 57 4 26 0 59 4 26 0 65 4 26 0 74 4 26 0 77 4 26 0 89 4 26 0 96 4 26 0 97 4 26 0 104 4 26 0 112 4 26 0 115 4 26 0 118 4 26 0 123 4 26 0 127 4 26 0 128 4 173 0 130 4 26 0 137] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 9 133 0 213 9 133 1 116 1 193 1 121 1 197 1 132] 
#[0 4 30 0 3 0 5 0 9 0 131 0 137 1 133] 
#[1 1 198 0 14 4 169 0 16 9 137 0 31 9 137 0 87 4 173 0 130 1 198 0 137 9 137 0 193] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 9 141 0 183 9 141 0 187 1 133 0 192 9 141 0 194 9 141 0 195 9 141 0 197 9 141 0 201 9 141 0 202 1 157 0 204 9 141 0 210 1 165 0 211 1 169 0 212 1 173 0 213 9 141 0 244 9 141 0 245 9 141 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 3 53 0 2 6 245 0 6 0 54 0 137 9 145 0 196] 
#[1 7 117 0 2 6 245 0 6 2 254 0 137 9 149 1 46] 
#[1 3 53 0 2 6 245 0 6 0 54 0 9 0 54 0 137 7 129 0 196] 
#[1 3 53 0 2 6 245 0 6 0 54 0 9 0 54 0 137 9 153 0 196] 
#[1 3 53 0 2 6 245 0 6 0 54 0 137 7 137 0 196] 
#[0 4 34 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 9 157 0 137] 
#[0 9 161 0 3] 
#[0 9 165 0 137] 
#[0 9 169 0 139] 
#[1 4 197 0 9 1 26 0 137 9 173 1 9] 
#[0 9 177 0 139] 
#[0 9 181 0 137] 
#[1 2 1 0 27 2 1 0 81 2 1 0 123 1 234 0 131 0 22 0 139 9 185 1 30 6 33 1 31 6 37 1 32 2 1 1 35] 
#[1 4 197 0 9 1 26 0 30 1 26 0 33 1 26 0 57 1 26 0 59 1 26 0 74 1 26 0 96 1 26 0 97 1 26 0 112 1 26 0 127 1 26 0 128 1 26 0 137 9 189 1 9] 
#[0 4 38 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 4 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 4 169 0 16 9 193 0 31 9 193 0 87 4 173 0 130 1 198 0 137 9 193 0 193] 
#[0 4 46 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[1 9 197 0 72 9 201 0 137] 
#[1 9 205 0 72 9 209 0 137] 
#[0 4 50 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[1 4 54 0 3 10 65 0 17 10 65 0 22 4 54 0 23 4 54 0 24 10 65 0 25 4 54 0 26 4 54 0 27 4 54 0 28 9 225 0 31 4 54 0 32 9 229 0 33 10 65 0 38 4 54 0 40 10 65 0 42 4 54 0 43 5 89 0 44 10 65 0 45 10 65 0 47 4 54 0 48 5 93 0 51 4 54 0 52 4 54 0 61 10 65 0 62 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 4 54 0 88 4 54 0 89 4 54 0 91 4 54 0 92 4 54 0 93 4 54 0 94 10 65 0 100 10 65 0 101 4 54 0 104 10 65 0 105 10 65 0 110 10 65 0 111 4 54 0 113 4 54 0 115 4 54 0 118 10 65 0 120 4 54 0 123 10 65 0 124 4 54 0 130 4 54 0 139 10 53 1 26 10 53 1 27 10 53 1 28 10 65 1 29 4 54 1 133] 
#[1 4 58 0 3 10 65 0 17 10 65 0 22 4 58 0 23 4 58 0 24 10 65 0 25 4 58 0 26 4 58 0 27 4 58 0 28 9 225 0 31 4 58 0 32 9 229 0 33 10 65 0 38 4 58 0 40 10 65 0 42 4 58 0 43 5 89 0 44 10 65 0 45 10 65 0 47 4 58 0 48 5 93 0 51 4 58 0 52 4 58 0 61 10 65 0 62 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 4 58 0 88 4 58 0 89 4 58 0 91 4 58 0 92 4 58 0 93 4 58 0 94 10 65 0 100 10 65 0 101 4 58 0 104 10 65 0 105 10 65 0 110 10 65 0 111 4 58 0 113 4 58 0 115 4 58 0 118 10 65 0 120 4 58 0 123 10 65 0 124 4 58 0 130 4 58 0 139 10 53 1 26 10 53 1 27 10 53 1 28 10 65 1 29 4 58 1 133] 
#[1 4 62 0 3 10 65 0 17 4 62 0 21 10 65 0 22 4 62 0 23 4 62 0 24 10 65 0 25 4 62 0 26 4 62 0 27 4 62 0 28 9 225 0 31 4 62 0 32 9 229 0 33 10 65 0 38 4 62 0 40 10 65 0 42 4 62 0 43 5 89 0 44 10 65 0 45 10 65 0 47 4 62 0 48 5 93 0 51 4 62 0 52 4 62 0 56 4 62 0 61 10 65 0 62 4 62 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 4 62 0 88 4 62 0 89 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 10 65 0 100 10 65 0 101 4 62 0 104 10 65 0 105 10 65 0 110 10 65 0 111 4 62 0 113 4 62 0 115 4 62 0 118 10 65 0 120 4 62 0 123 10 65 0 124 4 62 0 130 4 62 0 139 10 53 1 26 10 53 1 27 10 53 1 28 10 65 1 29 4 62 1 133] 
#[1 4 66 0 3 10 65 0 17 4 66 0 21 10 65 0 22 4 66 0 23 4 66 0 24 10 65 0 25 4 66 0 26 4 66 0 27 4 66 0 28 9 225 0 31 4 66 0 32 9 229 0 33 10 65 0 38 4 66 0 40 10 65 0 42 4 66 0 43 5 89 0 44 10 65 0 45 10 65 0 47 4 66 0 48 5 93 0 51 4 66 0 52 4 66 0 56 4 66 0 61 10 65 0 62 4 66 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 4 66 0 88 4 66 0 89 4 66 0 91 4 66 0 92 4 66 0 93 4 66 0 94 10 65 0 100 10 65 0 101 4 66 0 104 10 65 0 105 10 65 0 110 10 65 0 111 4 66 0 113 4 66 0 115 4 66 0 118 10 65 0 120 4 66 0 123 10 65 0 124 4 66 0 130 4 66 0 139 10 53 1 26 10 53 1 27 10 53 1 28 10 65 1 29 4 66 1 133] 
#[1 4 70 0 3 10 65 0 17 10 65 0 22 4 70 0 23 4 70 0 24 10 65 0 25 4 70 0 26 4 70 0 27 4 70 0 28 9 225 0 31 4 70 0 32 9 229 0 33 10 65 0 38 4 70 0 40 10 65 0 42 4 70 0 43 5 89 0 44 10 65 0 45 10 65 0 47 4 70 0 48 5 93 0 51 4 70 0 52 4 70 0 61 10 65 0 62 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 4 70 0 88 4 70 0 89 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 10 65 0 100 10 65 0 101 4 70 0 104 10 65 0 105 10 65 0 110 10 65 0 111 4 70 0 113 4 70 0 115 4 70 0 118 10 65 0 120 4 70 0 123 10 65 0 124 4 70 0 130 4 70 0 139 10 53 1 26 10 53 1 27 10 53 1 28 10 65 1 29 4 70 1 133] 
#[0 4 74 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 4 78 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 4 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 4 86 0 40 0 48 0 56 0 61 0 63 1 133] 
#[0 4 90 0 5 0 137] 
#[0 4 94 0 5 0 137] 
#[0 4 98 1 133] 
#[1 10 69 0 139 10 73 1 130] 
#[0 10 77 0 6] 
#[0 4 102 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 205 0 139 10 81 0 167] 
#[0 4 106 0 29] 
#[1 5 145 0 5 10 85 0 137] 
#[0 10 89 0 6] 
#[0 4 110 1 133] 
#[1 2 9 0 27 4 114 0 40 4 114 0 48 4 225 0 52 4 114 0 56 4 114 0 61 4 233 0 89 5 201 0 104 2 33 0 115 2 37 0 118 2 41 0 123 10 93 0 169 10 93 0 170 10 93 0 173 10 93 0 176 10 93 1 3 10 93 1 6 10 93 1 48 2 145 1 49 10 93 1 50 2 153 1 51 10 93 1 56 2 169 1 57 10 93 1 58 2 177 1 59 10 93 1 70 2 201 1 71] 
#[1 4 118 0 23 4 118 0 26 4 118 0 27 4 118 0 28 4 118 0 32 4 118 0 40 4 118 0 43 4 118 0 48 4 118 0 52 4 118 0 61 4 118 0 89 4 118 0 104 4 118 0 115 4 118 0 118 4 118 0 123 10 121 1 38] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 48 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 125 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 4 122 0 40 10 129 0 48 10 133 1 128] 
#[1 4 205 0 5 10 137 0 137] 
#[0 10 141 0 14] 
#[1 4 126 0 21 4 126 0 23 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 32 4 126 0 40 4 126 0 43 4 126 0 48 4 126 0 52 4 126 0 56 4 126 0 61 4 126 0 65 4 126 0 89 4 126 0 104 4 126 0 115 4 126 0 118 4 126 0 123 8 21 0 139 10 145 0 175] 
#[0 4 130 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 4 134 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 4 138 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 4 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 4 146 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 4 157 0 2 4 165 0 4 4 150 0 5 4 161 0 6 10 149 0 7 4 165 0 8 4 150 0 9 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 10 153 0 39 4 154 0 40 10 157 1 96] 
#[1 2 162 0 39 2 162 0 40 10 161 0 137 10 165 1 89] 
#[0 4 158 0 39 0 40 0 137] 
#[0 10 169 0 9] 
#[0 10 173 0 5] 
#[1 4 162 0 5 4 166 0 9] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 10 177 0 183 10 177 0 187 1 133 0 192 10 177 0 194 10 177 0 195 10 177 0 197 10 177 0 201 10 177 0 202 1 157 0 204 10 177 0 210 1 165 0 211 1 169 0 212 1 173 0 213 10 177 0 244 10 177 0 245 10 177 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 10 189 0 37 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 10 189 0 116 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 10 189 1 102 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 10 193 0 36 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[0 4 170 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 2 1 0 27 2 1 0 81 2 1 0 123 0 22 0 139 10 197 1 32 2 1 1 35] 
#[1 10 201 0 39 4 174 0 40 4 174 0 41 4 174 0 48 4 174 0 49 4 174 0 61 4 174 0 78 4 174 0 121 4 174 0 137 4 174 1 133] 
#[0 4 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 10 205 0 3 8 173 0 5] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 209 1 107 1 9 1 108 10 209 1 109 10 209 1 110 1 21 1 111 10 209 1 112 1 29 1 113 10 209 1 114 1 37 1 115 10 209 1 116 1 45 1 121 10 209 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 213 1 107 1 9 1 108 10 213 1 109 10 213 1 110 1 21 1 111 10 213 1 112 1 29 1 113 10 213 1 114 1 37 1 115 10 213 1 116 1 45 1 121 10 213 1 122 1 53 1 132] 
#[1 6 245 0 6 4 182 0 39 4 182 0 40 4 182 0 41 4 182 0 48 4 182 0 49 4 182 0 61 4 182 0 78 4 182 0 121 4 182 0 137 4 182 1 133] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 186 0 39 4 186 0 40 4 186 0 41 4 186 0 48 4 186 0 49 4 1 0 58 4 186 0 61 4 1 0 64 4 1 0 71 4 186 0 78 4 1 0 80 4 1 0 108 4 1 0 109 4 186 0 121 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 4 186 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126 4 186 1 133] 
#[1 4 113 0 139 10 217 0 236] 
#[1 10 221 0 39 4 190 0 40 4 190 0 49 6 9 0 137 10 225 1 86] 
#[1 10 221 0 39 4 190 0 40 4 190 0 49 8 125 0 78 10 229 1 85 10 233 1 86] 
#[0 4 194 0 39 0 40 0 49 0 78] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 237 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[0 10 241 0 40] 
#[0 4 198 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[1 3 153 0 2 4 1 0 4 4 202 0 5 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 202 0 36 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[0 4 206 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[1 3 153 0 2 4 1 0 4 4 210 0 5 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 210 0 131 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[0 4 214 0 5 0 131] 
#[0 4 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 121 1 107 1 9 1 108 6 121 1 109 6 121 1 110 1 21 1 111 6 121 1 112 1 29 1 113 6 121 1 114 1 37 1 115 6 121 1 116 1 45 1 121 6 121 1 122 10 245 1 124 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 249 1 107 1 9 1 108 10 249 1 109 10 249 1 110 1 21 1 111 10 249 1 112 1 29 1 113 10 249 1 114 1 37 1 115 10 249 1 116 1 45 1 121 10 249 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 253 1 107 1 9 1 108 10 253 1 109 10 253 1 110 1 21 1 111 10 253 1 112 1 29 1 113 10 253 1 114 1 37 1 115 10 253 1 116 1 45 1 121 10 253 1 122 1 53 1 132] 
#[0 4 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 4 226 0 5 0 214 0 16 0 214 0 130 4 226 0 132] 
#[1 11 1 0 5 4 230 0 132 11 5 0 190] 
#[1 4 157 0 2 4 234 0 3 4 165 0 4 4 234 0 5 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 4 157 0 2 4 238 0 3 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 238 0 137 4 165 1 126] 
#[0 4 242 0 3 0 5] 
#[1 4 157 0 2 4 246 0 3 4 165 0 4 4 246 0 5 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[0 4 250 0 3 0 5] 
#[0 4 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[0 6 165 0 9] 
#[0 5 2 0 3 0 137] 
#[1 4 169 0 16 6 209 0 77 4 173 0 130 2 182 0 137 11 9 1 5] 
#[0 5 6 0 137] 
#[1 3 54 0 3 3 54 0 5 3 54 0 10 3 54 0 14 3 54 0 16 3 54 0 17 3 54 0 21 3 54 0 22 3 54 0 23 3 54 0 24 3 54 0 25 3 54 0 26 3 54 0 27 3 54 0 28 3 54 0 30 3 54 0 31 3 54 0 32 3 54 0 33 3 54 0 36 3 54 0 38 3 54 0 40 3 54 0 42 3 54 0 43 3 54 0 44 3 54 0 45 3 54 0 47 3 54 0 48 3 54 0 51 3 54 0 52 3 54 0 56 3 54 0 57 3 54 0 58 3 54 0 59 3 54 0 61 3 54 0 62 3 54 0 65 3 54 0 67 3 54 0 70 3 54 0 73 3 54 0 74 3 54 0 77 3 54 0 82 3 54 0 83 3 54 0 86 3 54 0 87 3 54 0 88 3 54 0 89 3 54 0 91 3 54 0 92 3 54 0 93 3 54 0 94 3 54 0 96 3 54 0 97 3 54 0 100 3 54 0 101 3 54 0 104 3 54 0 105 3 54 0 110 3 54 0 111 3 54 0 112 3 54 0 113 3 54 0 115 3 54 0 118 3 54 0 120 3 54 0 123 3 54 0 124 3 54 0 127 3 54 0 128 3 54 0 130 3 54 0 131 3 54 0 132 3 54 0 137 3 54 0 139 11 13 1 24 3 54 1 133] 
#[1 6 245 0 6 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 11 17 0 203 7 9 0 227 7 13 0 237] 
#[0 11 21 0 9] 
#[0 11 25 0 137] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 1 75 0 5 0 198 0 6 0 198 0 8 6 165 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[0 11 33 0 3] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 1 18 0 10 4 181 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 58 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 11 37 0 179 1 18 1 133] 
#[0 5 10 0 5 0 131] 
#[1 4 157 0 2 4 165 0 4 5 14 0 5 4 161 0 6 0 250 0 7 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 5 14 0 131 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 11 41 0 5 11 45 0 131] 
#[0 5 18 0 5 0 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 11 49 0 27 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 11 53 0 183 11 53 0 187 1 133 0 192 11 53 0 194 11 53 0 195 11 53 0 197 11 53 0 201 11 53 0 202 1 157 0 204 11 53 0 210 1 165 0 211 1 169 0 212 1 173 0 213 11 53 0 244 11 53 0 245 11 53 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[0 5 22 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 5 26 0 3 11 57 0 24 5 26 0 40 11 61 0 88 11 65 0 92 11 69 0 93 11 73 0 94 11 77 0 113 11 81 0 205 11 85 0 229 11 85 0 230 11 85 0 231 11 85 0 232 11 85 0 233] 
#[0 5 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 133] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 11 105 0 213 11 105 1 116 1 193 1 121 1 197 1 132] 
#[0 5 38 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 11 109 0 183 11 109 0 187 1 133 0 192 11 109 0 194 11 109 0 195 11 109 0 197 11 109 0 201 11 109 0 202 1 157 0 204 11 109 0 210 1 165 0 211 1 169 0 212 1 173 0 213 11 109 0 244 11 109 0 245 11 109 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 7 49 0 139 11 113 0 181] 
#[0 5 42 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[1 5 46 0 2 5 46 0 17 5 46 0 26 5 46 0 27 5 46 0 28 5 46 0 31 5 46 0 32 5 46 0 40 5 46 0 52 5 46 0 54 11 117 0 77 5 46 0 87 5 46 0 88 5 46 0 89 5 46 0 91 5 46 0 92 5 46 0 93 5 46 0 94 5 46 0 106 5 46 0 113 5 46 0 115 5 46 0 118 5 46 0 123 5 46 0 130 5 46 0 137 5 46 0 139 11 121 0 223] 
#[0 5 50 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 5 54 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 11 125 0 2 5 58 0 26 5 58 0 27 5 58 0 28 5 58 0 32 5 58 0 40 5 58 0 52 5 58 0 88 5 58 0 89 5 58 0 91 5 58 0 92 5 58 0 93 5 58 0 94 5 58 0 113 5 58 0 115 5 58 0 118 5 58 0 123 5 58 0 130 5 58 0 139 11 129 0 234] 
#[0 5 62 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 0 210 0 16 0 210 0 130 11 133 0 137] 
#[1 11 137 0 31 11 137 0 87 1 198 0 137 11 137 0 193] 
#[1 0 214 0 16 11 141 0 31 11 141 0 87 0 214 0 130 1 198 0 137 11 141 0 193] 
#[1 5 66 0 3 0 222 0 16 5 66 0 21 5 66 0 23 5 66 0 24 5 66 0 26 5 66 0 27 5 66 0 28 5 66 0 32 5 66 0 40 5 66 0 43 5 66 0 48 5 66 0 52 5 66 0 56 5 66 0 61 5 66 0 65 5 66 0 88 5 66 0 89 5 66 0 91 5 66 0 92 5 66 0 93 5 66 0 94 5 66 0 104 5 66 0 113 5 66 0 115 5 66 0 118 5 66 0 123 1 79 0 130 5 66 0 139 5 66 1 133] 
#[1 5 70 0 3 0 226 0 16 5 70 0 21 5 70 0 23 5 70 0 24 5 70 0 26 5 70 0 27 5 70 0 28 5 70 0 32 5 70 0 40 5 70 0 43 5 70 0 48 5 70 0 52 5 70 0 56 5 70 0 61 5 70 0 65 5 70 0 88 5 70 0 89 5 70 0 91 5 70 0 92 5 70 0 93 5 70 0 94 5 70 0 104 5 70 0 113 5 70 0 115 5 70 0 118 5 70 0 123 1 83 0 130 5 70 0 139 5 70 1 133] 
#[0 5 74 0 31 0 87 0 137] 
#[0 5 78 0 31 0 87 0 137] 
#[0 5 82 0 31 0 87 0 137] 
#[0 5 86 0 31 0 87 0 137] 
#[0 5 90 0 31 0 87 0 137] 
#[1 11 125 0 2 5 58 0 26 5 94 0 31 5 58 0 40 5 58 0 52 5 94 0 87 5 58 0 89 5 58 0 91 5 58 0 130 5 94 0 137 11 145 0 234] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 9 65 0 26 9 125 0 34 1 65 0 46 1 69 0 52 9 125 0 63 1 73 0 75 9 77 0 76 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 11 149 0 182 9 85 0 183 9 89 0 186 9 93 0 187 1 133 0 192 9 97 0 194 9 101 0 195 9 93 0 197 9 89 0 200 9 93 0 201 9 93 0 202 1 157 0 204 9 93 0 210 1 165 0 211 1 169 0 212 1 173 0 213 9 89 0 221 9 89 0 222 9 89 0 225 1 177 0 244 9 93 0 245 9 93 0 246 9 89 0 250 9 125 0 251 1 173 1 116 1 193 1 121 1 197 1 132] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 1 87 0 31 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 11 153 0 87 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 1 198 0 137 11 153 0 193 4 165 1 126] 
#[1 11 157 0 14 5 98 0 137 11 161 1 34] 
#[1 5 98 0 3 11 157 0 14 4 169 0 16 4 173 0 130 5 98 0 131 5 98 0 137 11 165 1 34 5 98 1 133] 
#[0 11 169 0 137] 
#[0 11 173 0 137] 
#[1 4 197 0 9 1 26 0 137 11 177 1 9] 
#[1 5 102 0 3 5 102 0 17 5 102 0 21 5 102 0 22 5 102 0 23 5 102 0 24 5 102 0 25 5 102 0 26 5 102 0 27 5 102 0 28 5 102 0 31 5 102 0 32 5 102 0 33 5 102 0 38 5 102 0 40 5 102 0 42 5 102 0 44 5 102 0 45 5 102 0 47 5 102 0 51 5 102 0 52 5 102 0 62 5 102 0 65 5 102 0 67 5 102 0 70 5 102 0 73 5 102 0 82 5 102 0 83 5 102 0 86 5 102 0 87 5 102 0 88 5 102 0 89 5 102 0 91 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 100 5 102 0 101 5 102 0 104 5 102 0 105 5 102 0 110 5 102 0 111 5 102 0 113 5 102 0 115 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 124 5 102 0 130 5 102 0 139 11 181 1 25 5 102 1 133] 
#[0 5 106 0 137] 
#[1 5 102 0 3 5 102 0 17 5 102 0 21 5 102 0 22 5 102 0 23 5 102 0 24 5 102 0 25 5 102 0 26 5 102 0 27 5 102 0 28 5 102 0 31 5 102 0 32 5 102 0 33 5 102 0 38 5 102 0 40 5 102 0 42 5 102 0 44 5 102 0 45 5 102 0 47 5 102 0 51 5 102 0 52 5 102 0 62 5 102 0 65 5 102 0 67 5 102 0 70 5 102 0 73 5 102 0 82 5 102 0 83 5 102 0 86 5 102 0 87 5 102 0 88 5 102 0 89 5 102 0 91 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 100 5 102 0 101 5 102 0 104 5 102 0 105 5 102 0 110 5 102 0 111 5 102 0 113 5 102 0 115 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 124 5 102 0 130 5 102 0 139 11 185 1 25 5 102 1 133] 
#[0 11 189 0 137] 
#[0 11 193 0 137] 
#[0 11 197 0 137] 
#[1 5 102 0 3 5 102 0 17 5 102 0 21 5 102 0 22 5 102 0 23 5 102 0 24 5 102 0 25 5 102 0 26 5 102 0 27 5 102 0 28 5 102 0 31 5 102 0 32 5 102 0 33 5 102 0 38 5 102 0 40 5 102 0 42 5 102 0 44 5 102 0 45 5 102 0 47 5 102 0 48 5 102 0 51 5 102 0 52 5 102 0 56 5 102 0 61 5 102 0 62 5 102 0 65 5 102 0 67 5 102 0 70 5 102 0 73 5 102 0 82 5 102 0 83 5 102 0 86 5 102 0 87 5 102 0 88 5 102 0 89 5 102 0 91 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 100 5 102 0 101 5 102 0 104 5 102 0 105 5 102 0 110 5 102 0 111 5 102 0 113 5 102 0 115 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 124 5 102 0 130 5 102 0 139 11 201 1 25 5 102 1 133] 
#[0 11 205 0 131] 
#[1 5 110 0 30 5 110 0 33 5 110 0 57 5 110 0 59 5 110 0 74 5 110 0 96 5 110 0 97 5 110 0 112 5 110 0 127 5 110 0 128 5 110 0 137 11 209 1 13] 
#[0 11 213 0 137] 
#[0 11 217 0 143] 
#[0 5 114 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 11 221 0 143] 
#[0 5 118 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 5 122 0 137] 
#[0 5 126 0 137] 
#[0 5 130 0 137] 
#[1 5 134 0 137 11 225 0 143] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 11 229 0 213 11 229 1 116 1 193 1 121 1 197 1 132] 
#[0 5 138 0 137] 
#[0 5 142 0 137] 
#[0 5 146 0 137] 
#[0 5 150 0 137] 
#[0 5 154 0 137] 
#[0 5 158 0 137] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 11 233 0 213 11 233 1 116 1 193 1 121 1 197 1 132] 
#[0 5 162 0 137] 
#[0 5 166 0 137] 
#[0 5 170 0 137] 
#[0 5 174 0 137] 
#[0 5 178 0 137] 
#[0 5 182 0 137] 
#[0 5 186 0 137] 
#[0 5 190 0 137] 
#[0 5 194 0 137] 
#[0 5 198 0 137] 
#[0 5 202 0 137] 
#[0 5 206 0 137] 
#[0 5 210 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 5 214 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 5 218 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 11 237 0 137] 
#[0 5 222 0 5 0 137] 
#[1 11 241 0 5 11 245 0 137] 
#[0 5 226 1 133] 
#[1 5 230 0 5 5 117 0 6 5 230 0 137] 
#[0 5 234 0 40] 
#[0 5 238 1 133] 
#[0 5 242 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 246 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 250 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 254 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 2 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 10 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 11 249 0 23 5 53 0 26 2 9 0 27 2 13 0 28 2 17 0 32 6 14 0 40 7 225 0 43 6 14 0 48 4 225 0 52 6 14 0 61 4 233 0 89 5 201 0 104 2 33 0 115 2 37 0 118 2 41 0 123 12 13 0 170 12 13 0 173 12 13 0 176 12 9 1 37 12 13 1 39 12 13 1 40 12 21 1 41 12 25 1 42 12 13 1 43 12 33 1 44 12 37 1 45 12 13 1 47 5 221 1 48 2 145 1 49 5 225 1 50 2 153 1 51 12 13 1 52 12 49 1 53 12 53 1 54 12 13 1 55 5 233 1 56 2 169 1 57 5 237 1 58 2 177 1 59 12 13 1 60 12 65 1 61 12 69 1 62 12 13 1 63 12 77 1 64 12 81 1 65 12 13 1 70 2 201 1 71 12 13 1 129] 
#[1 6 18 0 40 6 18 0 48 6 9 0 137] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 93 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 7 249 0 40 12 97 1 131] 
#[0 6 22 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 12 101 0 213 12 101 1 116 1 193 1 121 1 197 1 132] 
#[0 6 26 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 12 105 0 213 12 105 1 116 1 193 1 121 1 197 1 132] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 109 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[0 12 113 0 40] 
#[1 4 29 0 2 1 61 0 15 3 218 0 39 3 218 0 40 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 49 0 213 12 117 1 92 8 65 1 93 8 69 1 94 8 73 1 95 8 49 1 116 1 193 1 121 1 197 1 132] 
#[0 6 30 0 39 0 40] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 121 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 12 121 1 104 12 121 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 49 0 213 12 125 1 95 8 49 1 116 1 193 1 121 1 197 1 132] 
#[1 6 34 0 10 4 169 0 16 6 34 0 58 4 173 0 130] 
#[0 6 38 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 132] 
#[0 6 42 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 132] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 129 1 107 1 9 1 108 12 129 1 109 12 129 1 110 1 21 1 111 12 129 1 112 1 29 1 113 12 129 1 114 1 37 1 115 12 129 1 116 1 45 1 121 12 129 1 122 1 53 1 132] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 133 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 12 133 1 104 12 133 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[0 6 46 0 3 0 131 0 137] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 137 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 12 137 1 104 12 137 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[0 6 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 12 141 0 131 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 12 145 0 131 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 6 245 0 6 4 197 0 9 1 26 0 36 12 149 1 9] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 153 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[0 6 54 0 40 0 49] 
#[0 6 58 0 39 0 40 0 49 0 78] 
#[0 6 62 0 40 0 49] 
#[1 6 66 0 40 6 9 0 137] 
#[0 6 70 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[1 6 74 0 3 6 74 0 5 8 177 0 9] 
#[1 3 153 0 2 6 78 0 3 4 1 0 4 6 78 0 5 3 161 0 6 4 1 0 8 6 78 0 9 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 3 153 0 2 4 1 0 4 6 82 0 5 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 6 82 0 131 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 177 0 183 12 157 0 187 1 133 0 192 1 177 0 194 1 177 0 195 12 157 0 197 12 157 0 201 12 157 0 202 1 157 0 204 12 157 0 210 1 165 0 211 1 169 0 212 1 173 0 213 1 177 0 244 12 157 0 245 12 157 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[0 12 161 0 132] 
#[0 12 165 0 137] 
#[1 6 86 0 3 6 86 0 5 6 86 0 10 6 86 0 14 6 86 0 16 10 65 0 17 6 86 0 21 10 65 0 22 6 86 0 23 6 86 0 24 10 65 0 25 6 86 0 26 6 86 0 27 6 86 0 28 6 86 0 30 1 91 0 31 6 86 0 32 1 95 0 33 6 86 0 36 10 65 0 38 6 86 0 40 10 65 0 42 6 86 0 43 5 89 0 44 10 65 0 45 10 65 0 47 6 86 0 48 5 93 0 51 6 86 0 52 6 86 0 56 6 86 0 57 6 86 0 58 6 86 0 59 6 86 0 61 10 65 0 62 6 86 0 65 10 65 0 67 10 1 0 70 10 65 0 73 6 86 0 74 6 86 0 77 10 65 0 82 10 65 0 83 10 65 0 86 1 99 0 87 6 86 0 88 6 86 0 89 6 86 0 91 6 86 0 92 6 86 0 93 6 86 0 94 6 86 0 96 6 86 0 97 10 65 0 100 10 65 0 101 6 86 0 104 10 65 0 105 10 65 0 110 10 65 0 111 6 86 0 112 6 86 0 113 6 86 0 115 6 86 0 118 10 65 0 120 6 86 0 123 10 65 0 124 6 86 0 127 6 86 0 128 6 86 0 130 6 86 0 131 6 86 0 132 6 86 0 137 6 86 0 139 10 53 1 26 10 53 1 27 10 53 1 28 10 65 1 29 6 86 1 133] 
#[0 12 169 0 40] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 12 173 0 183 12 173 0 187 1 133 0 192 12 173 0 194 12 173 0 195 12 173 0 197 12 173 0 201 12 173 0 202 1 157 0 204 12 173 0 210 1 165 0 211 1 169 0 212 1 173 0 213 12 173 0 244 12 173 0 245 12 173 0 246 1 173 1 116 1 193 1 121 1 197 1 132] 
#[0 6 90 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[1 12 177 0 140 12 181 0 199] 
#[0 6 94 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[0 6 98 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 12 185 0 210 1 165 0 211 1 169 0 212 9 13 0 213 12 185 0 249 9 13 1 116 1 193 1 121 1 197 1 132] 
#[0 6 102 0 77] 
#[0 6 106 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 6 110 0 3 6 110 0 5 6 110 0 10 6 110 0 14 4 169 0 16 6 110 0 21 6 110 0 23 6 110 0 27 6 110 0 30 6 110 0 31 6 110 0 33 6 110 0 36 6 110 0 52 6 110 0 57 6 110 0 58 6 110 0 59 6 110 0 65 6 110 0 74 6 110 0 77 6 110 0 87 6 110 0 89 6 110 0 96 6 110 0 97 6 110 0 104 6 110 0 112 6 110 0 115 6 110 0 118 6 110 0 123 6 110 0 127 6 110 0 128 4 173 0 130 6 110 0 131 6 110 0 132 6 110 0 137 6 110 1 133] 
#[0 12 189 0 139] 
#[1 2 210 0 3 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 12 193 0 237] 
#[1 2 210 0 3 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 12 197 0 237] 
#[1 2 210 0 3 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 12 201 0 237] 
#[1 2 210 0 3 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 12 205 0 237] 
#[1 12 209 0 88 12 213 0 92] 
#[0 6 114 0 3 0 40] 
#[0 6 118 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 122 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 126 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 130 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 134 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 4 157 0 2 6 138 0 3 4 165 0 4 6 138 0 5 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 6 142 0 5 4 169 0 16 4 173 0 130 6 142 0 132] 
#[0 6 146 0 5 0 132] 
#[0 12 217 0 139] 
#[1 11 125 0 2 12 233 0 17 5 58 0 26 5 58 0 27 5 58 0 28 5 58 0 31 5 58 0 32 5 58 0 40 5 58 0 52 12 225 0 54 5 58 0 87 5 58 0 88 5 58 0 89 5 58 0 91 5 58 0 92 5 58 0 93 5 58 0 94 12 233 0 106 5 58 0 113 5 58 0 115 5 58 0 118 5 58 0 123 5 58 0 130 5 58 0 137 5 58 0 139 12 233 0 224 12 237 0 234] 
#[1 12 241 0 140 12 245 0 192 12 249 0 235] 
#[1 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 12 253 0 227 7 13 0 237] 
#[0 6 150 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 13 1 0 137] 
#[0 13 5 0 137] 
#[1 6 154 0 26 6 154 0 40 6 154 0 52 6 154 0 89 6 154 0 91 13 9 0 130 13 13 0 252] 
#[0 6 158 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 13 21 0 31 6 162 0 137 13 21 0 226] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 25 0 213 13 25 1 116 1 193 1 121 1 197 1 132] 
#[0 13 29 0 137] 
#[0 6 166 0 3 0 131 0 137 1 133] 
#[1 5 102 0 3 5 102 0 17 5 102 0 21 5 102 0 22 5 102 0 23 5 102 0 24 5 102 0 25 5 102 0 26 5 102 0 27 5 102 0 28 5 102 0 31 5 102 0 32 5 102 0 33 5 102 0 38 5 102 0 40 5 102 0 42 5 102 0 44 5 102 0 45 5 102 0 47 5 102 0 51 5 102 0 52 5 102 0 62 5 102 0 65 5 102 0 67 5 102 0 70 5 102 0 73 5 102 0 82 5 102 0 83 5 102 0 86 5 102 0 87 5 102 0 88 5 102 0 89 5 102 0 91 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 100 5 102 0 101 5 102 0 104 5 102 0 105 5 102 0 110 5 102 0 111 5 102 0 113 5 102 0 115 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 124 5 102 0 130 5 102 0 139 13 33 1 25 5 102 1 133] 
#[1 5 102 0 3 5 102 0 17 5 102 0 21 5 102 0 22 5 102 0 23 5 102 0 24 5 102 0 25 5 102 0 26 5 102 0 27 5 102 0 28 5 102 0 31 5 102 0 32 5 102 0 33 5 102 0 38 5 102 0 40 5 102 0 42 5 102 0 44 5 102 0 45 5 102 0 47 5 102 0 51 5 102 0 52 5 102 0 62 5 102 0 65 5 102 0 67 5 102 0 70 5 102 0 73 5 102 0 82 5 102 0 83 5 102 0 86 5 102 0 87 5 102 0 88 5 102 0 89 5 102 0 91 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 100 5 102 0 101 5 102 0 104 5 102 0 105 5 102 0 110 5 102 0 111 5 102 0 113 5 102 0 115 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 124 5 102 0 130 5 102 0 139 13 37 1 25 5 102 1 133] 
#[0 13 41 0 137] 
#[1 6 170 0 3 10 65 0 17 6 170 0 21 10 65 0 22 6 170 0 23 6 170 0 24 10 65 0 25 6 170 0 26 6 170 0 27 6 170 0 28 9 225 0 31 6 170 0 32 9 229 0 33 10 65 0 38 6 170 0 40 10 65 0 42 6 170 0 44 10 65 0 45 10 65 0 47 6 170 0 51 6 170 0 52 10 65 0 62 6 170 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 6 170 0 88 6 170 0 89 6 170 0 91 6 170 0 92 6 170 0 93 6 170 0 94 10 65 0 100 10 65 0 101 6 170 0 104 10 65 0 105 10 65 0 110 10 65 0 111 6 170 0 113 6 170 0 115 6 170 0 118 10 65 0 120 6 170 0 123 10 65 0 124 6 170 0 130 6 170 0 139 13 45 1 27 10 65 1 29 6 170 1 133] 
#[1 6 174 0 3 10 65 0 17 6 174 0 21 10 65 0 22 6 174 0 23 6 174 0 24 10 65 0 25 6 174 0 26 6 174 0 27 6 174 0 28 9 225 0 31 6 174 0 32 9 229 0 33 10 65 0 38 6 174 0 40 10 65 0 42 6 174 0 44 10 65 0 45 10 65 0 47 6 174 0 51 6 174 0 52 10 65 0 62 6 174 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 6 174 0 88 6 174 0 89 6 174 0 91 6 174 0 92 6 174 0 93 6 174 0 94 10 65 0 100 10 65 0 101 6 174 0 104 10 65 0 105 10 65 0 110 10 65 0 111 6 174 0 113 6 174 0 115 6 174 0 118 10 65 0 120 6 174 0 123 10 65 0 124 6 174 0 130 6 174 0 139 13 45 1 27 10 65 1 29 6 174 1 133] 
#[0 6 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 5 102 0 3 5 102 0 17 5 102 0 21 5 102 0 22 5 102 0 23 5 102 0 24 5 102 0 25 5 102 0 26 5 102 0 27 5 102 0 28 5 102 0 31 5 102 0 32 5 102 0 33 5 102 0 38 5 102 0 40 5 102 0 42 5 102 0 44 5 102 0 45 5 102 0 47 5 102 0 48 5 102 0 51 5 102 0 52 5 102 0 56 5 102 0 61 5 102 0 62 5 102 0 65 5 102 0 67 5 102 0 70 5 102 0 73 5 102 0 82 5 102 0 83 5 102 0 86 5 102 0 87 5 102 0 88 5 102 0 89 5 102 0 91 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 100 5 102 0 101 5 102 0 104 5 102 0 105 5 102 0 110 5 102 0 111 5 102 0 113 5 102 0 115 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 124 5 102 0 130 5 102 0 139 13 49 1 25 5 102 1 133] 
#[0 6 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 6 186 0 3 10 65 0 17 6 186 0 21 10 65 0 22 6 186 0 23 6 186 0 24 10 65 0 25 6 186 0 26 6 186 0 27 6 186 0 28 9 225 0 31 6 186 0 32 9 229 0 33 10 65 0 38 6 186 0 40 10 65 0 42 6 186 0 44 10 65 0 45 10 65 0 47 6 186 0 48 6 186 0 51 6 186 0 52 6 186 0 56 6 186 0 61 10 65 0 62 6 186 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 6 186 0 88 6 186 0 89 6 186 0 91 6 186 0 92 6 186 0 93 6 186 0 94 10 65 0 100 10 65 0 101 6 186 0 104 10 65 0 105 10 65 0 110 10 65 0 111 6 186 0 113 6 186 0 115 6 186 0 118 10 65 0 120 6 186 0 123 10 65 0 124 6 186 0 130 6 186 0 139 13 45 1 27 10 65 1 29 6 186 1 133] 
#[0 6 190 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 53 0 30 13 57 0 33 13 61 0 57 13 65 0 59 13 69 0 74 13 73 0 96 13 77 0 97 13 81 0 112 13 85 0 127 13 89 0 128 13 93 0 137 13 97 1 15 13 101 1 16 13 105 1 17 13 109 1 18 13 113 1 19 13 117 1 20 13 121 1 22] 
#[0 6 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 13 125 0 137] 
#[0 13 129 0 137] 
#[0 13 133 0 137] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 13 137 0 137 4 165 1 126] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 13 141 0 137 4 165 1 126] 
#[0 6 198 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 13 145 0 139] 
#[0 6 202 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 48 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 13 149 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[0 6 206 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 210 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 214 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 218 0 40 0 48 0 61] 
#[0 6 222 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 226 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 230 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 89 0 44 5 93 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 97 1 28 13 153 1 66 3 13 1 67] 
#[0 6 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 238 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 89 0 44 5 93 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 101 1 28 13 157 1 66 3 13 1 67] 
#[0 6 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 13 161 1 66 3 13 1 67] 
#[0 6 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 13 165 1 66 3 13 1 67] 
#[0 7 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 89 0 44 5 93 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 113 1 28 13 169 1 66 3 13 1 67] 
#[0 7 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 7 26 0 40 6 9 0 137] 
#[0 7 30 1 133] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 13 173 0 31 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 6 162 0 137 13 173 0 226 4 165 1 126] 
#[1 4 157 0 2 4 165 0 4 7 34 0 5 4 161 0 6 4 165 0 8 7 34 0 9 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 7 38 0 40 6 9 0 137] 
#[0 7 42 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 7 46 0 39 0 40 0 137] 
#[0 7 50 0 39 0 40 0 137] 
#[1 7 54 0 5 7 58 0 9] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 4 1 0 35 13 177 0 36 4 1 0 58 4 1 0 64 4 1 0 71 4 1 0 80 4 1 0 108 4 1 0 109 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[0 7 62 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 7 66 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[0 7 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 7 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[0 13 181 0 36] 
#[1 7 78 0 40 7 78 0 49 6 9 0 137] 
#[1 7 82 0 5 0 214 0 16 0 214 0 130 7 82 0 132] 
#[0 7 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 133] 
#[1 3 54 0 3 3 54 0 5 3 54 0 10 3 54 0 14 3 54 0 16 3 54 0 17 3 54 0 21 3 54 0 22 3 54 0 23 3 54 0 24 3 54 0 25 3 54 0 26 3 54 0 27 3 54 0 28 3 54 0 30 3 54 0 31 3 54 0 32 3 54 0 33 3 54 0 36 3 54 0 38 3 54 0 40 3 54 0 42 3 54 0 43 3 54 0 44 3 54 0 45 3 54 0 47 3 54 0 48 3 54 0 51 3 54 0 52 3 54 0 56 3 54 0 57 3 54 0 58 3 54 0 59 3 54 0 61 3 54 0 62 3 54 0 65 3 54 0 67 3 54 0 70 3 54 0 73 3 54 0 74 3 54 0 77 3 54 0 82 3 54 0 83 3 54 0 86 3 54 0 87 3 54 0 88 3 54 0 89 3 54 0 91 3 54 0 92 3 54 0 93 3 54 0 94 3 54 0 96 3 54 0 97 3 54 0 100 3 54 0 101 3 54 0 104 3 54 0 105 3 54 0 110 3 54 0 111 3 54 0 112 3 54 0 113 3 54 0 115 3 54 0 118 3 54 0 120 3 54 0 123 3 54 0 124 3 54 0 127 3 54 0 128 3 54 0 130 3 54 0 131 3 54 0 132 3 54 0 137 3 54 0 139 13 185 1 24 3 54 1 133] 
#[0 7 90 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 58 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 133] 
#[1 4 169 0 16 4 173 0 130 13 189 0 137] 
#[0 7 94 0 3 0 5] 
#[1 7 98 0 3 13 193 0 5] 
#[0 7 102 0 5 0 131] 
#[1 4 197 0 9 1 26 0 77 13 197 1 9] 
#[1 7 106 0 3 7 106 0 24 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 7 106 0 40 2 21 0 52 7 106 0 88 2 25 0 89 2 29 0 91 7 106 0 92 7 106 0 93 7 106 0 94 7 106 0 113 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 9 37 0 170 9 37 0 176 9 37 0 238 9 37 0 239 2 61 0 240 1 217 0 241 9 37 0 242 9 37 0 243 9 37 0 255 9 37 1 0 9 37 1 1 9 37 1 2 9 37 1 3 9 37 1 4 9 37 1 6 9 37 1 7 9 37 1 8 9 37 1 10 2 113 1 11 9 37 1 12 2 121 1 33 9 37 1 41 2 129 1 42 9 37 1 44 2 137 1 45 9 37 1 48 2 145 1 49 9 37 1 50 2 153 1 51 9 37 1 53 9 37 1 54 9 37 1 56 2 169 1 57 9 37 1 58 2 177 1 59 9 37 1 61 9 37 1 62 9 37 1 64 2 193 1 65 9 37 1 70 2 201 1 71] 
#[1 7 110 0 3 7 110 0 24 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 7 110 0 40 2 21 0 52 7 110 0 88 2 25 0 89 2 29 0 91 7 110 0 92 7 110 0 93 7 110 0 94 7 110 0 113 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 9 37 0 170 9 37 0 176 9 37 0 238 9 37 0 239 2 61 0 240 1 217 0 241 9 37 0 242 9 37 0 243 9 37 0 255 9 37 1 0 9 37 1 1 9 37 1 2 9 37 1 3 9 37 1 4 9 37 1 6 9 37 1 7 9 37 1 8 9 37 1 10 2 113 1 11 9 37 1 12 2 121 1 33 9 37 1 41 2 129 1 42 9 37 1 44 2 137 1 45 9 37 1 48 2 145 1 49 9 37 1 50 2 153 1 51 9 37 1 53 9 37 1 54 9 37 1 56 2 169 1 57 9 37 1 58 2 177 1 59 9 37 1 61 9 37 1 62 9 37 1 64 2 193 1 65 9 37 1 70 2 201 1 71] 
#[1 7 114 0 3 7 114 0 24 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 7 114 0 40 2 21 0 52 7 114 0 88 2 25 0 89 2 29 0 91 7 114 0 92 7 114 0 93 7 114 0 94 7 114 0 113 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 9 37 0 170 9 37 0 176 9 37 0 238 9 37 0 239 2 61 0 240 1 217 0 241 9 37 0 242 9 37 0 243 9 37 0 255 9 37 1 0 9 37 1 1 9 37 1 2 9 37 1 3 9 37 1 4 9 37 1 6 9 37 1 7 9 37 1 8 9 37 1 10 2 113 1 11 9 37 1 12 2 121 1 33 9 37 1 41 2 129 1 42 9 37 1 44 2 137 1 45 9 37 1 48 2 145 1 49 9 37 1 50 2 153 1 51 9 37 1 53 9 37 1 54 9 37 1 56 2 169 1 57 9 37 1 58 2 177 1 59 9 37 1 61 9 37 1 62 9 37 1 64 2 193 1 65 9 37 1 70 2 201 1 71] 
#[1 7 118 0 3 7 118 0 24 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 7 118 0 40 2 21 0 52 7 118 0 88 2 25 0 89 2 29 0 91 7 118 0 92 7 118 0 93 7 118 0 94 7 118 0 113 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 9 37 0 170 9 37 0 176 9 37 0 238 9 37 0 239 2 61 0 240 1 217 0 241 9 37 0 242 9 37 0 243 9 37 0 255 9 37 1 0 9 37 1 1 9 37 1 2 9 37 1 3 9 37 1 4 9 37 1 6 9 37 1 7 9 37 1 8 9 37 1 10 2 113 1 11 9 37 1 12 2 121 1 33 9 37 1 41 2 129 1 42 9 37 1 44 2 137 1 45 9 37 1 48 2 145 1 49 9 37 1 50 2 153 1 51 9 37 1 53 9 37 1 54 9 37 1 56 2 169 1 57 9 37 1 58 2 177 1 59 9 37 1 61 9 37 1 62 9 37 1 64 2 193 1 65 9 37 1 70 2 201 1 71] 
#[1 2 210 0 3 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 13 201 0 237] 
#[1 2 210 0 3 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 40 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 13 205 0 237] 
#[0 7 122 0 31 0 87 0 137] 
#[0 7 126 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 13 209 0 50] 
#[0 7 130 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 134 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 210 0 26 2 210 0 27 2 210 0 28 7 138 0 31 2 210 0 32 2 210 0 40 2 210 0 52 7 138 0 87 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 7 138 0 137 2 210 0 139 13 213 0 227 7 13 0 237] 
#[0 0 202 0 3 0 5 0 6 0 11] 
#[1 7 142 0 3 7 142 0 5 4 137 0 6 0 146 0 11 4 141 0 188 4 13 0 189] 
#[1 13 217 0 3 13 221 0 5] 
#[1 3 242 0 40 3 242 0 88 3 242 0 92 3 242 0 93 3 242 0 94 3 242 0 113 13 225 0 228] 
#[0 7 146 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 7 150 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 229 0 213 13 229 1 116 1 193 1 121 1 197 1 132] 
#[1 7 154 0 26 7 154 0 40 7 154 0 52 7 154 0 89 7 154 0 91 13 233 0 253] 
#[0 7 158 0 137] 
#[0 13 237 0 137] 
#[1 4 157 0 2 7 162 0 3 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 7 162 0 131 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 7 162 0 137 4 165 1 126 7 162 1 133] 
#[0 7 166 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 7 170 0 3 10 65 0 17 7 170 0 21 10 65 0 22 7 170 0 23 7 170 0 24 10 65 0 25 7 170 0 26 7 170 0 27 7 170 0 28 9 225 0 31 7 170 0 32 9 229 0 33 10 65 0 38 7 170 0 40 10 65 0 42 7 170 0 44 10 65 0 45 10 65 0 47 7 170 0 51 7 170 0 52 10 65 0 62 7 170 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 7 170 0 88 7 170 0 89 7 170 0 91 7 170 0 92 7 170 0 93 7 170 0 94 10 65 0 100 10 65 0 101 7 170 0 104 10 65 0 105 10 65 0 110 10 65 0 111 7 170 0 113 7 170 0 115 7 170 0 118 10 65 0 120 7 170 0 123 10 65 0 124 7 170 0 130 7 170 0 139 13 45 1 27 10 65 1 29 7 170 1 133] 
#[1 7 174 0 3 10 65 0 17 7 174 0 21 10 65 0 22 7 174 0 23 7 174 0 24 10 65 0 25 7 174 0 26 7 174 0 27 7 174 0 28 9 225 0 31 7 174 0 32 9 229 0 33 10 65 0 38 7 174 0 40 10 65 0 42 7 174 0 44 10 65 0 45 10 65 0 47 7 174 0 51 7 174 0 52 10 65 0 62 7 174 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 7 174 0 88 7 174 0 89 7 174 0 91 7 174 0 92 7 174 0 93 7 174 0 94 10 65 0 100 10 65 0 101 7 174 0 104 10 65 0 105 10 65 0 110 10 65 0 111 7 174 0 113 7 174 0 115 7 174 0 118 10 65 0 120 7 174 0 123 10 65 0 124 7 174 0 130 7 174 0 139 13 45 1 27 10 65 1 29 7 174 1 133] 
#[1 5 102 0 3 5 102 0 17 5 102 0 21 5 102 0 22 5 102 0 23 5 102 0 24 5 102 0 25 5 102 0 26 5 102 0 27 5 102 0 28 5 102 0 31 5 102 0 32 5 102 0 33 5 102 0 38 5 102 0 40 5 102 0 42 5 102 0 44 5 102 0 45 5 102 0 47 5 102 0 51 5 102 0 52 5 102 0 62 5 102 0 65 5 102 0 67 5 102 0 70 5 102 0 73 5 102 0 82 5 102 0 83 5 102 0 86 5 102 0 87 5 102 0 88 5 102 0 89 5 102 0 91 5 102 0 92 5 102 0 93 5 102 0 94 5 102 0 100 5 102 0 101 5 102 0 104 5 102 0 105 5 102 0 110 5 102 0 111 5 102 0 113 5 102 0 115 5 102 0 118 5 102 0 120 5 102 0 123 5 102 0 124 5 102 0 130 5 102 0 139 13 241 1 25 5 102 1 133] 
#[0 7 178 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139 1 133] 
#[1 7 182 0 3 10 65 0 17 7 182 0 21 10 65 0 22 7 182 0 23 7 182 0 24 10 65 0 25 7 182 0 26 7 182 0 27 7 182 0 28 9 225 0 31 7 182 0 32 9 229 0 33 10 65 0 38 7 182 0 40 10 65 0 42 7 182 0 44 10 65 0 45 10 65 0 47 7 182 0 48 7 182 0 51 7 182 0 52 7 182 0 56 7 182 0 61 10 65 0 62 7 182 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 7 182 0 88 7 182 0 89 7 182 0 91 7 182 0 92 7 182 0 93 7 182 0 94 10 65 0 100 10 65 0 101 7 182 0 104 10 65 0 105 10 65 0 110 10 65 0 111 7 182 0 113 7 182 0 115 7 182 0 118 10 65 0 120 7 182 0 123 10 65 0 124 7 182 0 130 7 182 0 139 13 45 1 27 10 65 1 29 7 182 1 133] 
#[1 4 29 0 2 1 61 0 15 7 186 0 30 7 186 0 33 7 186 0 57 7 186 0 59 7 186 0 74 1 73 0 75 7 186 0 96 7 186 0 97 7 186 0 112 7 186 0 127 7 186 0 128 0 169 0 130 1 101 0 135 1 105 0 136 7 186 0 137 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 245 0 213 13 245 1 116 1 193 1 121 1 197 1 132] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 249 0 213 13 249 1 116 1 193 1 121 1 197 1 132] 
#[1 13 253 0 139 14 1 1 21] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 14 5 0 213 14 5 1 116 1 193 1 121 1 197 1 132] 
#[0 7 190 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 14 9 1 107 1 9 1 108 14 9 1 109 14 9 1 110 1 21 1 111 14 9 1 112 1 29 1 113 14 9 1 114 1 37 1 115 14 9 1 116 1 45 1 121 14 9 1 122 1 53 1 132] 
#[0 14 13 0 33] 
#[0 14 17 0 139] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 17 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 14 21 1 107 1 9 1 108 14 21 1 109 14 21 1 110 1 21 1 111 14 21 1 112 1 29 1 113 14 21 1 114 1 37 1 115 14 21 1 116 1 45 1 121 14 21 1 122 1 53 1 132] 
#[0 14 25 0 33] 
#[1 7 194 0 3 7 194 0 24 7 194 0 26 7 194 0 27 7 194 0 28 14 29 0 30 7 194 0 32 7 194 0 40 7 194 0 52 7 194 0 88 7 194 0 89 7 194 0 91 7 194 0 92 7 194 0 93 7 194 0 94 7 194 0 113 7 194 0 115 7 194 0 118 7 194 0 123 7 194 0 130 7 194 0 139 14 33 1 23 7 194 1 133] 
#[0 7 198 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 202 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 206 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 210 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 214 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 218 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 222 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 226 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 7 230 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 7 234 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 7 238 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 7 242 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 7 246 0 5 0 137] 
#[1 7 250 0 40 7 250 0 48 7 250 0 61 6 9 0 137] 
#[0 7 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 14 37 0 137] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 14 41 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 14 41 1 104 14 41 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132 0 14 1 133] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 14 45 1 74 3 33 1 75 0 205 1 76 0 209 1 77 0 213 1 78 0 217 1 79 0 221 1 80 0 225 1 82 0 229 1 88 0 233 1 97 0 237 1 99 0 241 1 100 0 245 1 103 3 33 1 104 3 33 1 105 1 1 1 106 1 5 1 107 1 9 1 108 1 5 1 109 1 5 1 110 1 21 1 111 1 5 1 112 1 29 1 113 1 5 1 114 1 37 1 115 1 5 1 116 1 45 1 121 1 5 1 122 1 53 1 132] 
#[1 8 18 0 3 8 18 0 5 8 18 0 10 8 18 0 14 8 18 0 16 10 65 0 17 8 18 0 21 10 65 0 22 8 18 0 23 8 18 0 24 10 65 0 25 8 18 0 26 8 18 0 27 8 18 0 28 8 18 0 30 1 103 0 31 8 18 0 32 1 107 0 33 8 18 0 36 10 65 0 38 8 18 0 40 10 65 0 42 8 18 0 43 5 89 0 44 10 65 0 45 10 65 0 47 8 18 0 48 5 93 0 51 8 18 0 52 8 18 0 56 8 18 0 57 8 18 0 58 8 18 0 59 8 18 0 61 10 65 0 62 8 18 0 65 10 65 0 67 10 1 0 70 10 65 0 73 8 18 0 74 8 18 0 77 10 65 0 82 10 65 0 83 10 65 0 86 1 111 0 87 8 18 0 88 8 18 0 89 8 18 0 91 8 18 0 92 8 18 0 93 8 18 0 94 8 18 0 96 8 18 0 97 10 65 0 100 10 65 0 101 8 18 0 104 10 65 0 105 10 65 0 110 10 65 0 111 8 18 0 112 8 18 0 113 8 18 0 115 8 18 0 118 10 65 0 120 8 18 0 123 10 65 0 124 8 18 0 127 8 18 0 128 8 18 0 130 8 18 0 131 8 18 0 132 8 18 0 137 8 18 0 139 10 53 1 26 10 53 1 27 10 53 1 28 10 65 1 29 8 18 1 133] 
#[0 8 22 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 133] 
#[0 14 49 0 140] 
#[0 14 53 0 77] 
#[1 8 26 0 3 8 26 0 24 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 8 26 0 40 2 21 0 52 8 26 0 88 2 25 0 89 2 29 0 91 8 26 0 92 8 26 0 93 8 26 0 94 8 26 0 113 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 9 37 0 170 9 37 0 176 9 37 0 238 9 37 0 239 2 61 0 240 1 217 0 241 9 37 0 242 9 37 0 243 9 37 0 255 9 37 1 0 9 37 1 1 9 37 1 2 9 37 1 3 9 37 1 4 9 37 1 6 9 37 1 7 9 37 1 8 9 37 1 10 2 113 1 11 9 37 1 12 2 121 1 33 9 37 1 41 2 129 1 42 9 37 1 44 2 137 1 45 9 37 1 48 2 145 1 49 9 37 1 50 2 153 1 51 9 37 1 53 9 37 1 54 9 37 1 56 2 169 1 57 9 37 1 58 2 177 1 59 9 37 1 61 9 37 1 62 9 37 1 64 2 193 1 65 9 37 1 70 2 201 1 71] 
#[1 8 30 0 3 8 30 0 24 2 5 0 26 2 9 0 27 2 13 0 28 2 17 0 32 8 30 0 40 2 21 0 52 8 30 0 88 2 25 0 89 2 29 0 91 8 30 0 92 8 30 0 93 8 30 0 94 8 30 0 113 2 33 0 115 2 37 0 118 2 41 0 123 1 201 0 130 1 229 0 139 9 37 0 170 9 37 0 176 9 37 0 238 9 37 0 239 2 61 0 240 1 217 0 241 9 37 0 242 9 37 0 243 9 37 0 255 9 37 1 0 9 37 1 1 9 37 1 2 9 37 1 3 9 37 1 4 9 37 1 6 9 37 1 7 9 37 1 8 9 37 1 10 2 113 1 11 9 37 1 12 2 121 1 33 9 37 1 41 2 129 1 42 9 37 1 44 2 137 1 45 9 37 1 48 2 145 1 49 9 37 1 50 2 153 1 51 9 37 1 53 9 37 1 54 9 37 1 56 2 169 1 57 9 37 1 58 2 177 1 59 9 37 1 61 9 37 1 62 9 37 1 64 2 193 1 65 9 37 1 70 2 201 1 71] 
#[1 4 113 0 139 14 57 0 236] 
#[1 3 242 0 40 3 242 0 88 3 242 0 92 3 242 0 93 3 242 0 94 3 242 0 113 14 61 0 228] 
#[0 8 34 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 241 0 140 14 65 0 192] 
#[1 14 69 0 40 11 61 0 88 11 65 0 92 11 69 0 93 11 73 0 94 11 77 0 113 11 85 0 229 11 85 0 230 11 85 0 231 11 85 0 232 11 85 0 233] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 14 73 0 131 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 14 77 0 26 14 81 0 40 4 225 0 52 4 233 0 89 2 29 0 91 14 85 0 254 14 85 0 255 14 85 1 0 14 85 1 3 14 85 1 4 14 85 1 6 14 85 1 7 14 85 1 8 14 85 1 10 2 113 1 11 14 85 1 12 14 85 1 48 2 145 1 49 14 85 1 50 2 153 1 51 14 85 1 53 14 85 1 54 14 85 1 56 2 169 1 57 14 85 1 58 2 177 1 59 14 85 1 61 14 85 1 62 14 85 1 64 2 193 1 65] 
#[0 8 38 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 8 42 0 3 10 65 0 17 8 42 0 21 10 65 0 22 8 42 0 23 8 42 0 24 10 65 0 25 8 42 0 26 8 42 0 27 8 42 0 28 9 225 0 31 8 42 0 32 9 229 0 33 10 65 0 38 8 42 0 40 10 65 0 42 8 42 0 44 10 65 0 45 10 65 0 47 8 42 0 51 8 42 0 52 10 65 0 62 8 42 0 65 10 65 0 67 10 1 0 70 10 65 0 73 10 65 0 82 10 65 0 83 10 65 0 86 10 65 0 87 8 42 0 88 8 42 0 89 8 42 0 91 8 42 0 92 8 42 0 93 8 42 0 94 10 65 0 100 10 65 0 101 8 42 0 104 10 65 0 105 10 65 0 110 10 65 0 111 8 42 0 113 8 42 0 115 8 42 0 118 10 65 0 120 8 42 0 123 10 65 0 124 8 42 0 130 8 42 0 139 13 45 1 27 10 65 1 29 8 42 1 133] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 8 46 0 30 8 46 0 33 4 165 0 35 8 46 0 57 4 165 0 58 8 46 0 59 4 165 0 64 4 165 0 71 8 46 0 74 4 165 0 80 8 46 0 96 8 46 0 97 4 165 0 108 4 165 0 109 8 46 0 112 8 46 0 127 8 46 0 128 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 8 46 0 137 4 165 1 126] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 8 50 0 30 8 50 0 33 4 165 0 35 8 50 0 57 4 165 0 58 8 50 0 59 4 165 0 64 4 165 0 71 8 50 0 74 4 165 0 80 8 50 0 96 8 50 0 97 4 165 0 108 4 165 0 109 8 50 0 112 8 50 0 127 8 50 0 128 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 8 50 0 137 4 165 1 126] 
#[0 8 54 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 97 0 5 8 58 0 30 8 58 0 33 8 58 0 57 8 58 0 59 8 58 0 74 8 58 0 96 8 58 0 97 8 58 0 112 8 58 0 127 8 58 0 128 8 58 0 137] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 8 62 0 30 8 62 0 33 4 165 0 35 8 62 0 57 4 165 0 58 8 62 0 59 4 165 0 64 4 165 0 71 8 62 0 74 4 165 0 80 8 62 0 96 8 62 0 97 4 165 0 108 4 165 0 109 8 62 0 112 8 62 0 127 8 62 0 128 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 8 62 0 137 4 165 1 126] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 8 66 0 30 8 66 0 33 4 1 0 35 8 66 0 57 4 1 0 58 8 66 0 59 4 1 0 64 4 1 0 71 8 66 0 74 4 1 0 80 8 66 0 96 8 66 0 97 4 1 0 108 4 1 0 109 8 66 0 112 8 66 0 127 8 66 0 128 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 8 66 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 14 101 0 213 14 101 1 116 1 193 1 121 1 197 1 132] 
#[0 8 70 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 3 153 0 2 4 1 0 4 3 161 0 6 4 1 0 8 3 169 0 10 4 1 0 11 4 1 0 12 4 1 0 13 4 1 0 14 4 1 0 18 4 1 0 20 8 74 0 30 8 74 0 33 4 1 0 35 8 74 0 57 4 1 0 58 8 74 0 59 4 1 0 64 4 1 0 71 8 74 0 74 4 1 0 80 8 74 0 96 8 74 0 97 4 1 0 108 4 1 0 109 8 74 0 112 8 74 0 127 8 74 0 128 4 1 0 129 3 229 0 130 4 1 0 132 4 1 0 133 4 1 0 135 4 1 0 136 8 74 0 137 3 249 0 138 3 253 1 119 4 1 1 125 4 1 1 126] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 14 105 0 213 14 105 1 116 1 193 1 121 1 197 1 132] 
#[0 14 109 0 137] 
#[0 8 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[0 8 82 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 8 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 133] 
#[1 8 90 0 39 8 90 0 40 8 90 0 49 8 90 0 78 6 9 0 137] 
#[0 8 94 0 3 0 5] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 14 113 0 206 14 117 0 207 14 121 0 208 14 125 0 209 1 169 0 212 14 129 0 213 14 129 1 116 1 193 1 121 1 197 1 132] 
#[1 11 125 0 2 6 245 0 6 5 58 0 26 5 58 0 27 5 58 0 28 5 58 0 31 5 58 0 32 5 58 0 40 5 58 0 52 5 58 0 87 5 58 0 88 5 58 0 89 5 58 0 91 5 58 0 92 5 58 0 93 5 58 0 94 5 58 0 113 5 58 0 115 5 58 0 118 5 58 0 123 5 58 0 130 5 58 0 137 5 58 0 139 14 133 0 234] 
#[1 14 137 0 40 11 61 0 88 11 65 0 92 11 69 0 93 11 73 0 94 11 77 0 113 11 85 0 229 11 85 0 230 11 85 0 231 11 85 0 232 11 85 0 233] 
#[1 8 98 0 3 8 98 0 5 4 137 0 6 0 146 0 11 4 141 0 188 4 13 0 189] 
#[0 8 102 0 31 0 87 0 137] 
#[0 8 106 0 26 0 40 0 52 0 89 0 91] 
#[1 4 225 0 52 4 229 0 79 4 233 0 89 2 29 0 91 4 237 1 11 4 241 1 49 4 245 1 51 4 249 1 57 4 253 1 59] 
#[0 8 110 0 31 0 87 0 137] 
#[0 8 114 0 26 0 40 0 52 0 89 0 91] 
#[0 8 118 0 26 0 40 0 52 0 89 0 91] 
#[0 8 122 0 26 0 40 0 52 0 89 0 91] 
#[0 14 141 0 139] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 8 126 0 30 8 126 0 33 4 165 0 35 8 126 0 57 4 165 0 58 8 126 0 59 4 165 0 64 4 165 0 71 8 126 0 74 4 165 0 80 8 126 0 96 8 126 0 97 4 165 0 108 4 165 0 109 8 126 0 112 8 126 0 127 8 126 0 128 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 8 126 0 137 4 165 1 126] 
#[1 4 157 0 2 4 165 0 4 4 161 0 6 4 165 0 8 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 8 130 0 30 8 130 0 33 4 165 0 35 8 130 0 57 4 165 0 58 8 130 0 59 4 165 0 64 4 165 0 71 8 130 0 74 4 165 0 80 8 130 0 96 8 130 0 97 4 165 0 108 4 165 0 109 8 130 0 112 8 130 0 127 8 130 0 128 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 8 130 0 137 4 165 1 126] 
#[0 8 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 133] 
#[1 2 162 0 3 2 162 0 40 14 145 0 137 14 149 1 89] 
#[0 8 138 0 3 0 40 0 137] 
#[1 14 153 0 5 14 157 0 9] 
#[0 8 142 0 5 0 9] 
#[1 4 157 0 2 4 165 0 4 8 146 0 5 4 161 0 6 4 165 0 8 8 146 0 9 4 165 0 11 4 165 0 12 4 165 0 13 4 165 0 18 4 165 0 20 4 165 0 35 4 165 0 58 4 165 0 64 4 165 0 71 4 165 0 80 4 165 0 108 4 165 0 109 4 165 0 129 4 165 0 132 4 165 0 133 4 165 0 135 4 165 0 136 4 165 1 126] 
#[1 2 210 0 26 2 210 0 27 2 210 0 28 8 150 0 31 2 210 0 32 2 210 0 40 2 210 0 52 8 150 0 87 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 8 150 0 137 2 210 0 139 14 161 0 227 7 13 0 237] 
#[0 8 154 0 31 0 87 0 137] 
#[0 8 158 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 4 29 0 2 3 218 0 3 1 61 0 15 3 218 0 40 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 14 165 0 207 14 121 0 208 14 125 0 209 1 169 0 212 14 129 0 213 14 129 1 116 1 193 1 121 1 197 1 132] 
#[0 8 162 0 3 0 40] 
#[1 4 29 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 77 0 140 1 169 0 141 1 193 0 143 1 121 0 147 14 169 0 209 1 169 0 212 14 129 0 213 14 129 1 116 1 193 1 121 1 197 1 132] 
#[0 14 173 0 2] 
#[1 3 242 0 40 3 242 0 88 3 242 0 92 3 242 0 93 3 242 0 94 3 242 0 113 14 177 0 228] 
#[0 8 166 0 3 0 40 0 137] 
#[0 8 170 0 5 0 9] 
#[1 2 210 0 3 2 210 0 24 2 210 0 26 2 210 0 27 2 210 0 28 2 210 0 32 2 210 0 52 2 210 0 88 2 210 0 89 2 210 0 91 2 210 0 92 2 210 0 93 2 210 0 94 2 210 0 113 2 210 0 115 2 210 0 118 2 210 0 123 2 210 0 130 2 210 0 139 14 181 0 203 7 9 0 227 7 13 0 237] 
#[1 14 185 0 40 11 61 0 88 11 65 0 92 11 69 0 93 11 73 0 94 11 77 0 113 11 85 0 229 11 85 0 230 11 85 0 231 11 85 0 232 11 85 0 233] 
#[0 14 189 0 3] 
#[0 8 174 0 31 0 87 0 137] 
#[0 8 178 0 3 0 40 0 137]
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
