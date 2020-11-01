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
#[ 0 18 1 101] 
#[ 0 146 0 150] 
#[ 0 150 0 170] 
#[ 0 206 0 210] 
#[ 1 2 3 229] 
#[ 1 2 4 5] 
#[ 1 230 3 201] 
#[ 1 230 3 205] 
#[ 1 230 3 209] 
#[ 1 230 3 213] 
#[ 1 230 3 229] 
#[ 1 230 4 5] 
#[ 1 230 4 9] 
#[ 2 2 3 201] 
#[ 2 2 3 205] 
#[ 2 2 3 209] 
#[ 2 2 3 213] 
#[ 2 2 3 229] 
#[ 2 2 4 5] 
#[ 2 2 4 9] 
#[ 2 34 3 201] 
#[ 2 34 3 205] 
#[ 2 34 3 209] 
#[ 2 34 3 213] 
#[ 2 34 3 229] 
#[ 2 34 4 5] 
#[ 2 34 4 9] 
#[ 2 38 3 201] 
#[ 2 38 3 205] 
#[ 2 38 3 209] 
#[ 2 38 3 213] 
#[ 2 38 3 229] 
#[ 2 38 4 5] 
#[ 2 38 4 9] 
#[ 2 174 6 237] 
#[ 2 182 3 201] 
#[ 2 182 3 205] 
#[ 2 182 3 209] 
#[ 2 182 3 229] 
#[ 2 182 4 5] 
#[ 2 182 4 9] 
#[ 2 186 3 201] 
#[ 2 186 3 205] 
#[ 2 186 3 209] 
#[ 2 186 3 229] 
#[ 2 186 4 5] 
#[ 2 186 4 9] 
#[ 2 198 3 201] 
#[ 2 198 3 205] 
#[ 2 198 3 209] 
#[ 2 198 3 229] 
#[ 2 198 4 5] 
#[ 2 198 4 9] 
#[ 2 202 3 201] 
#[ 2 202 3 205] 
#[ 2 202 3 209] 
#[ 2 202 3 229] 
#[ 2 202 4 5] 
#[ 2 202 4 9] 
#[ 3 201 3 202] 
#[ 3 202 3 205] 
#[ 3 202 3 209] 
#[ 3 202 3 213] 
#[ 3 202 3 229] 
#[ 3 202 4 5] 
#[ 3 202 4 9] 
#[ 3 201 3 210] 
#[ 3 205 3 210] 
#[ 3 209 3 210] 
#[ 3 210 3 213] 
#[ 3 210 3 229] 
#[ 3 210 4 5] 
#[ 3 210 4 9] 
#[ 3 229 3 234] 
#[ 3 234 4 5] 
#[ 3 201 4 10] 
#[ 3 205 4 10] 
#[ 3 209 4 10] 
#[ 3 229 4 10] 
#[ 4 5 4 10] 
#[ 4 9 4 10] 
#[ 0 206 11 77] 
#[ 0 230 5 82] 
#[ 0 234 5 86] 
#[ 1 206 5 149] 
#[ 6 98 10 13] 
#[ 6 98 10 17] 
#[ 6 98 10 65] 
#[ 8 34 10 13] 
#[ 8 34 10 17] 
#[ 8 34 10 65]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2020-10-31T20:52:02.928146-05:00'
]

{ #category : #generated }
DelphiParser class >> definitionComment [
"%start File Statement SimpleDefinedType NamedDefinedType ConstantValue Variable Argument NewClassComponent Attribute;

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
	: (""UNIT"" 'unitToken' | ""NAMESPACE"" 'unitToken') FullModuleName 'unitName' OptionalPlatform <semicolon> 'semicolon' 
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
	| ""REFERENCE"" 'name' {{VariableExpression}}
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
	: ""CLASS"" 'classToken'? ""DESTRUCTOR"" 'destructorToken' QualifiedName 'qualifiedName' OptionalArguments <semicolon> 'semicolon' NonExternalMethodModifiers {{DestructorHeader}}
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
	#(165 0 #reduceActionForUsesList1: 5863425 false ) 
	#(364 0 #reduceActionForBeforeAsm1: 33026049 false ) 
	#(332 0 #reduceActionForStatement15: 29166607 false ) 
	#(205 0 #nil 11629569 false ) 
	#(292 0 #nil 23937025 false ) 
	#(150 1 #reduceActionForFile2: 4290562 false ) 
	#(150 1 #reduceActionForFile3: 4290563 false ) 
	#(150 1 #reduceActionForFile4: 4290564 false ) 
	#(150 1 #reduceActionForFile1: 4290561 false ) 
	#(164 0 #nil 5748737 false ) 
	#(162 1 #reduceActionForUnitFile2: 5393410 false ) 
	#(324 0 #reduceActionForMethodVariables2: 28411906 false ) 
	#(197 0 #reduceActionForOptionalArguments1: 10521601 false ) 
	#(380 1 #reduceActionForInheritedFunctionCall4: 36034564 false ) 
	#(355 1 #reduceActionForRaiseStatement2: 32044034 false ) 
	#(373 1 #reduceActionForVariableExpression1: 35436545 false ) 
	#(213 1 #liftFirstValue: 12321793 false ) 
	#(379 1 #liftFirstValue: 36012033 false ) 
	#(365 1 #reduceActionForExpression9: 33143817 false ) 
	#(365 1 #reduceActionForExpression9: 33143815 false ) 
	#(332 1 #reduceActionForStatement14: 29166606 false ) 
	#(332 1 #reduceActionForStatement13: 29166605 false ) 
	#(332 1 #reduceActionForStatement11: 29166603 false ) 
	#(332 1 #reduceActionForStatement2: 29166594 false ) 
	#(332 1 #reduceActionForStatement3: 29166595 false ) 
	#(332 1 #reduceActionForStatement4: 29166596 false ) 
	#(332 1 #reduceActionForStatement5: 29166597 false ) 
	#(332 1 #reduceActionForStatement6: 29166598 false ) 
	#(332 1 #reduceActionForStatement7: 29166599 false ) 
	#(332 1 #reduceActionForStatement8: 29166600 false ) 
	#(332 1 #reduceActionForStatement9: 29166601 false ) 
	#(332 1 #reduceActionForStatement10: 29166602 false ) 
	#(332 1 #liftFirstValue: 29166604 false ) 
	#(362 1 #liftFirstValue: 32846850 false ) 
	#(332 1 #liftFirstValue: 29166593 false ) 
	#(365 1 #liftFirstValue: 33143811 false ) 
	#(190 0 #reduceActionForInsideGeneric1: 9085953 true ) 
	#(365 1 #liftFirstValue: 33143810 false ) 
	#(365 1 #liftFirstValue: 33143831 false ) 
	#(365 1 #liftFirstValue: 33143830 false ) 
	#(365 1 #liftFirstValue: 33143829 false ) 
	#(365 1 #liftFirstValue: 33143809 false ) 
	#(365 1 #liftFirstValue: 33143826 false ) 
	#(365 1 #reduceActionForExpression9: 33143816 false ) 
	#(365 1 #liftFirstValue: 33143814 false ) 
	#(365 1 #reduceActionForExpression9: 33143828 false ) 
	#(215 0 #reduceActionForConstantArray2: 13404162 false ) 
	#(246 1 #reduceActionForFileType2: 17925122 false ) 
	#(205 1 #liftFirstValue: 11629570 false ) 
	#(193 1 #reduceActionForVariableExpression1: 9389058 false ) 
	#(214 1 #reduceActionForVariableExpression1: 12344323 false ) 
	#(193 1 #reduceActionForVariableExpression1: 9389057 false ) 
	#(214 1 #reduceActionForExpression9: 12344327 false ) 
	#(245 1 #liftFirstValue: 17830916 false ) 
	#(245 1 #liftFirstValue: 17830913 false ) 
	#(188 1 #reduceActionForSimpleDefinedType1: 8518657 false ) 
	#(245 1 #liftFirstValue: 17830914 false ) 
	#(245 1 #liftFirstValue: 17830915 false ) 
	#(188 1 #liftFirstValue: 8518665 false ) 
	#(188 1 #liftFirstValue: 8518660 false ) 
	#(188 1 #liftFirstValue: 8518661 false ) 
	#(188 1 #liftFirstValue: 8518666 false ) 
	#(214 1 #reduceActionForExpression9: 12344321 false ) 
	#(212 1 #liftFirstValue: 12258305 false ) 
	#(188 1 #liftFirstValue: 8518663 false ) 
	#(188 1 #liftFirstValue: 8518659 false ) 
	#(214 1 #liftFirstValue: 12344329 false ) 
	#(214 1 #reduceActionForExpression9: 12344326 false ) 
	#(214 1 #reduceActionForExpression9: 12344322 false ) 
	#(180 0 #reduceActionForOptionalArguments1: 7505921 false ) 
	#(241 1 #reduceActionForAttributes1: 17289217 false ) 
	#(266 0 #reduceActionForOptionalType1: 19877889 false ) 
	#(290 1 #reduceActionForVariableNames1: 23781377 false ) 
	#(292 1 #liftFirstValue: 23937027 false ) 
	#(292 1 #liftFirstValue: 23937028 false ) 
	#(292 1 #liftFirstValue: 23937026 false ) 
	#(239 1 #liftFirstValue: 16452620 false ) 
	#(239 1 #liftFirstValue: 16452621 false ) 
	#(239 1 #liftFirstValue: 16452616 false ) 
	#(239 1 #liftFirstValue: 16452618 false ) 
	#(239 1 #liftFirstValue: 16452619 false ) 
	#(239 1 #liftFirstValue: 16452617 false ) 
	#(240 1 #liftFirstValue: 16952326 false ) 
	#(239 1 #liftFirstValue: 16452612 false ) 
	#(239 1 #liftFirstValue: 16452614 false ) 
	#(257 1 #liftFirstValue: 19056641 false ) 
	#(257 1 #liftFirstValue: 19056642 false ) 
	#(257 1 #liftFirstValue: 19056643 false ) 
	#(257 1 #liftFirstValue: 19056644 false ) 
	#(257 1 #liftFirstValue: 19056645 false ) 
	#(256 1 #liftFirstValue: 18983937 false ) 
	#(267 1 #reduceActionForPropertyHeader1: 19926017 false ) 
	#(256 1 #liftFirstValue: 18983938 false ) 
	#(258 1 #liftFirstValue: 19194881 false ) 
	#(258 1 #liftFirstValue: 19194882 false ) 
	#(259 1 #liftFirstValue: 19278849 false ) 
	#(259 1 #liftFirstValue: 19278850 false ) 
	#(260 1 #liftFirstValue: 19359745 false ) 
	#(305 1 #reduceActionForExternalProcedureHeader1: 25865217 false ) 
	#(260 1 #liftFirstValue: 19359746 false ) 
	#(307 1 #reduceActionForExternalProcedureHeader1: 26062849 false ) 
	#(261 1 #liftFirstValue: 19437569 false ) 
	#(261 1 #liftFirstValue: 19437570 false ) 
	#(263 1 #liftFirstValue: 19622913 false ) 
	#(313 1 #reduceActionForExternalFunctionHeader1: 26902529 false ) 
	#(263 1 #liftFirstValue: 19622914 false ) 
	#(315 1 #reduceActionForExternalFunctionHeader1: 27095041 false ) 
	#(264 1 #liftFirstValue: 19697665 false ) 
	#(264 1 #liftFirstValue: 19697666 false ) 
	#(265 1 #liftFirstValue: 19787777 false ) 
	#(265 1 #liftFirstValue: 19787778 false ) 
	#(239 1 #liftFirstValue: 16452611 false ) 
	#(327 1 #reduceActionForVars1: 28722177 false ) 
	#(168 1 #reduceActionForFullModuleName1: 6130689 false ) 
	#(194 0 #nil 9777153 false ) 
	#(166 1 #reduceActionForUsesModuleList1: 5942273 false ) 
	#(167 1 #reduceActionForUsesModule1: 6017025 false ) 
	#(155 0 #reduceActionForMethodVariables2: 4849665 false ) 
	#(293 0 #nil 24024065 false ) 
	#(156 1 #reduceActionForMainMethod1: 4903937 false ) 
	#(365 2 #reduceActionForExpression14: 33143822 false ) 
	#(331 1 #reduceActionForVariableNames1: 29063169 false ) 
	#(359 1 #liftFirstValue: 32566273 false ) 
	#(287 0 #reduceActionForArgumentList1: 23513089 false ) 
	#(335 2 #reduceActionForGotoStatement1: 30008321 false ) 
	#(335 2 #reduceActionForGotoStatement1: 30008322 false ) 
	#(380 2 #reduceActionForInheritedFunctionCall3: 36034563 false ) 
	#(365 2 #reduceActionForExpression15: 33143823 false ) 
	#(369 2 #reduceActionForAnonymousProcedureHeader1: 34845697 false ) 
	#(356 0 #reduceActionForOptionalType1: 32152577 false ) 
	#(341 0 #nil 30752769 false ) 
	#(339 1 #reduceActionForVariableNames1: 30546945 false ) 
	#(374 2 #reduceActionForSetConstructor2: 35506178 false ) 
	#(376 1 #reduceActionForSetValue1: 35736577 false ) 
	#(375 1 #reduceActionForVariableNames1: 35636225 false ) 
	#(365 2 #reduceActionForExpression16: 33143824 false ) 
	#(365 2 #reduceActionForExpression17: 33143825 false ) 
	#(384 1 #liftFirstValue: 36732935 false ) 
	#(384 1 #liftFirstValue: 36732936 false ) 
	#(384 1 #liftFirstValue: 36732943 false ) 
	#(384 1 #liftFirstValue: 36732944 false ) 
	#(384 1 #liftFirstValue: 36732932 false ) 
	#(383 1 #liftFirstValue: 36668417 false ) 
	#(384 1 #liftFirstValue: 36732929 false ) 
	#(384 1 #liftFirstValue: 36732941 false ) 
	#(384 1 #liftFirstValue: 36732933 false ) 
	#(384 1 #liftFirstValue: 36732946 false ) 
	#(384 1 #liftFirstValue: 36732947 false ) 
	#(384 1 #liftFirstValue: 36732934 false ) 
	#(384 1 #liftFirstValue: 36732930 false ) 
	#(384 1 #liftFirstValue: 36732939 false ) 
	#(384 1 #liftFirstValue: 36732940 false ) 
	#(384 1 #liftFirstValue: 36732931 false ) 
	#(384 1 #liftFirstValue: 36732942 false ) 
	#(384 1 #liftFirstValue: 36732945 false ) 
	#(384 1 #liftFirstValue: 36732938 false ) 
	#(384 1 #liftFirstValue: 36732937 false ) 
	#(365 2 #reduceActionForExpression19: 33143827 false ) 
	#(365 2 #reduceActionForExpression13: 33143821 false ) 
	#(383 1 #liftFirstValue: 36668418 false ) 
	#(367 2 #reduceActionForInstantiatedGenericExpression1: 34561025 false ) 
	#(368 2 #reduceActionForAnonymousProcedure1: 34734081 false ) 
	#(370 2 #reduceActionForAnonymousFunction1: 34946049 false ) 
	#(367 2 #reduceActionForInstantiatedGenericExpression1: 34561026 false ) 
	#(186 1 #reduceActionForEnumName1: 8297473 false ) 
	#(185 1 #reduceActionForVariableNames1: 8224769 false ) 
	#(217 1 #reduceActionForUsesModule1: 13631489 false ) 
	#(215 1 #reduceActionForConstantArray1: 13404161 false ) 
	#(216 1 #reduceActionForUsesModuleList1: 13451265 false ) 
	#(347 0 #nil 31344641 false ) 
	#(218 1 #reduceActionForConstantArray1: 13766657 false ) 
	#(219 1 #reduceActionForVariableNames1: 13809665 false ) 
	#(214 2 #reduceActionForExpression14: 12344335 false ) 
	#(214 2 #reduceActionForExpression15: 12344332 false ) 
	#(262 0 #reduceActionForOptionalType1: 19530753 false ) 
	#(188 2 #reduceActionForSimpleDefinedType11: 8518667 false ) 
	#(214 2 #reduceActionForExpression16: 12344333 false ) 
	#(214 2 #reduceActionForExpression17: 12344334 false ) 
	#(188 2 #reduceActionForSimpleDefinedType2: 8518658 false ) 
	#(193 2 #reduceActionForNamedType4: 9389060 false ) 
	#(248 0 #reduceActionForOptionalArguments1: 18247682 false ) 
	#(238 0 #reduceActionForMethodVariables2: 16372737 false ) 
	#(241 2 #reduceActionForAttributes2: 17289218 false ) 
	#(289 2 #reduceActionForArgument2: 23642114 false ) 
	#(269 2 #reduceActionForClassPropertyHeader1: 20184065 false ) 
	#(310 2 #reduceActionForExternalClassProcedureHeader1: 26511361 false ) 
	#(311 2 #reduceActionForExternalClassProcedureHeader1: 26622977 false ) 
	#(318 2 #reduceActionForExternalClassFunctionHeader1: 27544577 false ) 
	#(319 2 #reduceActionForExternalClassFunctionHeader1: 27653121 false ) 
	#(239 2 #reduceActionForNewClassComponent2: 16452610 false ) 
	#(171 2 #reduceActionForConstantValueList1: 6484993 false ) 
	#(172 1 #reduceActionForAttributes1: 6563841 false ) 
	#(271 0 #nil 20606977 false ) 
	#(328 2 #reduceActionForVarsVars2: 28751874 false ) 
	#(329 1 #reduceActionForAttributes1: 28839937 false ) 
	#(177 2 #reduceActionForDefinedTypeList1: 7179265 false ) 
	#(178 1 #reduceActionForAttributes1: 7260161 false ) 
	#(328 2 #reduceActionForVarsVars2: 28751873 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16452613 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16452615 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 16952321 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 16952322 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 16952323 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 16952324 false ) 
	#(240 2 #reduceActionForNewClassComponent5: 16952325 false ) 
	#(281 0 #reduceActionForMethodVariables2: 21899265 false ) 
	#(194 1 #liftFirstValue: 9777155 false ) 
	#(194 1 #liftFirstValue: 9777154 false ) 
	#(158 3 #reduceActionForPackageLine1: 5021697 false ) 
	#(165 3 #reduceActionForUsesList2: 5863426 false ) 
	#(160 1 #reduceActionForVariableNames1: 5200897 false ) 
	#(169 0 #reduceActionForMethodVariables2: 6255617 false ) 
	#(385 0 #nil 36919297 false ) 
	#(151 3 #reduceActionForProgramFile2: 4420610 false ) 
	#(325 1 #liftFirstValue: 28483587 false ) 
	#(325 1 #liftFirstValue: 28483591 false ) 
	#(325 1 #liftFirstValue: 28483586 false ) 
	#(325 1 #liftFirstValue: 28483588 false ) 
	#(304 1 #reduceActionForProcedureDefinition2: 25698306 false ) 
	#(325 1 #liftFirstValue: 28483589 false ) 
	#(312 1 #reduceActionForFunctionDefinition2: 26740738 false ) 
	#(324 2 #reduceActionForAttributes2: 28411905 false ) 
	#(325 1 #liftFirstValue: 28483590 false ) 
	#(325 1 #liftFirstValue: 28483585 false ) 
	#(365 3 #reduceActionForExpression11: 33143819 false ) 
	#(362 3 #reduceActionForStatementBlock1: 32846849 false ) 
	#(359 2 #reduceActionForForVariableExpression2: 32566274 false ) 
	#(287 1 #reduceActionForConstantArray1: 23513090 false ) 
	#(288 1 #reduceActionForVariableNames1: 23546881 false ) 
	#(371 3 #reduceActionForAnonymousFunctionHeader1: 35054593 false ) 
	#(355 3 #reduceActionForRaiseStatement1: 32044033 false ) 
	#(345 0 #nil 31155201 false ) 
	#(374 3 #reduceActionForSetConstructor1: 35506177 false ) 
	#(334 3 #reduceActionForPackageLine1: 29873153 false ) 
	#(334 3 #reduceActionForPackageLine1: 29873154 false ) 
	#(363 3 #reduceActionForAsmBlock1: 32951297 false ) 
	#(365 3 #reduceActionForExpression5: 33143813 false ) 
	#(382 1 #liftFirstValue: 36534273 false ) 
	#(381 1 #reduceActionForVariableNames1: 36426753 false ) 
	#(366 3 #reduceActionForPropertyExpression2: 34406402 false ) 
	#(366 3 #reduceActionForPropertyExpression2: 34406401 false ) 
	#(365 3 #reduceActionForExpression12: 33143820 false ) 
	#(378 1 #reduceActionForVariableNames1: 35923969 false ) 
	#(365 3 #reduceActionForExpression10: 33143818 false ) 
	#(184 3 #reduceActionForEnumType1: 8171521 false ) 
	#(214 3 #reduceActionForConstantExpression11: 12344331 false ) 
	#(347 1 #liftFirstValue: 31344642 false ) 
	#(246 3 #reduceActionForFileType1: 17925121 false ) 
	#(198 3 #reduceActionForSetType2: 10586114 false ) 
	#(198 3 #reduceActionForSetType1: 10586113 false ) 
	#(237 2 #reduceActionForQualifiedName1: 16172033 false ) 
	#(193 3 #reduceActionForPropertyExpression2: 9389059 false ) 
	#(229 0 #reduceActionForMethodVariables2: 15239169 false ) 
	#(228 1 #reduceActionForImplicitClassSection1: 15166465 false ) 
	#(211 3 #reduceActionForRangeType1: 12168193 false ) 
	#(221 1 #reduceActionForVariableNames1: 14068737 false ) 
	#(214 3 #reduceActionForPropertyExpression2: 12344324 false ) 
	#(214 3 #reduceActionForExpression10: 12344325 false ) 
	#(188 3 #reduceActionForSimpleDefinedType8: 8518664 false ) 
	#(242 3 #reduceActionForAttribute1: 17368065 false ) 
	#(182 1 #reduceActionForGenericTypeArgument1: 7751681 false ) 
	#(181 1 #reduceActionForVariableNames1: 7593985 false ) 
	#(266 2 #reduceActionForGotoStatement1: 19877890 false ) 
	#(290 3 #reduceActionForVariableNames2: 23781378 false ) 
	#(172 2 #reduceActionForAttributes2: 6563842 false ) 
	#(329 2 #reduceActionForAttributes2: 28839938 false ) 
	#(178 2 #reduceActionForAttributes2: 7260162 false ) 
	#(285 2 #reduceActionForExternalMethodModifier1: 22569985 false ) 
	#(285 2 #reduceActionForExternalMethodModifier6: 22569990 false ) 
	#(298 3 #reduceActionForExternalConstructorHeader1: 24780801 false ) 
	#(301 3 #reduceActionForExternalConstructorHeader1: 25305089 false ) 
	#(306 3 #reduceActionForExternalProcedureHeaderVars1: 25945089 false ) 
	#(314 3 #reduceActionForExternalFunctionHeaderVars1: 26979329 false ) 
	#(321 3 #reduceActionForExternalConstructorHeader1: 27955201 false ) 
	#(168 3 #reduceActionForFullModuleName2: 6130690 false ) 
	#(154 4 #reduceActionForLibraryLine1: 4732929 false ) 
	#(163 4 #reduceActionForLibraryLine1: 5615618 false ) 
	#(152 4 #reduceActionForLibraryLine1: 4536321 false ) 
	#(163 4 #reduceActionForLibraryLine1: 5615617 false ) 
	#(166 3 #reduceActionForUsesModuleList2: 5942274 false ) 
	#(167 3 #reduceActionForPackageLine1: 6017026 false ) 
	#(151 4 #reduceActionForProgramFile1: 4420609 false ) 
	#(155 2 #reduceActionForAttributes2: 4849666 false ) 
	#(159 3 #reduceActionForRequires1: 5120001 false ) 
	#(157 4 #reduceActionForPackageFile1: 4964353 false ) 
	#(164 3 #reduceActionForInterfaceSection2: 5748738 false ) 
	#(295 0 #reduceActionForMethodVariables2: 24256513 false ) 
	#(386 0 #nil 37029889 false ) 
	#(174 2 #reduceActionForResourceStringList1: 6849537 false ) 
	#(175 1 #reduceActionForAttributes1: 6948865 false ) 
	#(304 2 #reduceActionForProcedureDefinition1: 25698305 false ) 
	#(312 2 #reduceActionForFunctionDefinition1: 26740737 false ) 
	#(323 3 #reduceActionForMethodComponents1: 28323841 false ) 
	#(331 3 #reduceActionForVariableNames2: 29063170 false ) 
	#(353 1 #reduceActionForBaseCaseLabel1: 31832065 false ) 
	#(354 0 #reduceActionForElseCase1: 31993857 false ) 
	#(349 1 #reduceActionForVariableNames1: 31449089 false ) 
	#(352 1 #reduceActionForVariableNames1: 31742977 false ) 
	#(351 1 #liftFirstValue: 31637505 false ) 
	#(197 3 #reduceActionForRequires1: 10521602 false ) 
	#(337 4 #reduceActionForIfStatement1: 30213121 false ) 
	#(380 4 #reduceActionForInheritedFunctionCall2: 36034562 false ) 
	#(356 2 #reduceActionForGotoStatement1: 32152578 false ) 
	#(336 4 #reduceActionForRepeatStatement1: 30109697 false ) 
	#(344 0 #nil 31079425 false ) 
	#(342 1 #reduceActionForAttributes1: 30912513 false ) 
	#(333 4 #reduceActionForVariableStatement3: 29686787 false ) 
	#(333 4 #reduceActionForVariableStatement1: 29686785 false ) 
	#(361 4 #reduceActionForLibraryLine1: 32741377 false ) 
	#(339 3 #reduceActionForVariableNames2: 30546946 false ) 
	#(338 4 #reduceActionForRepeatStatement1: 30452737 false ) 
	#(376 3 #reduceActionForSetValue2: 35736578 false ) 
	#(375 3 #reduceActionForVariableNames2: 35636226 false ) 
	#(365 4 #reduceActionForExpression4: 33143812 false ) 
	#(377 3 #reduceActionForRequires1: 35869697 false ) 
	#(192 1 #reduceActionForVariableNames1: 9226241 false ) 
	#(191 0 #reduceActionForOutsideGeneric1: 9155585 true ) 
	#(186 3 #reduceActionForEnumName2: 8297474 false ) 
	#(220 3 #reduceActionForConstantRecordField1: 13943809 false ) 
	#(185 3 #reduceActionForVariableNames2: 8224770 false ) 
	#(217 3 #reduceActionForPackageLine1: 13631490 false ) 
	#(216 3 #reduceActionForUsesModuleList2: 13451266 false ) 
	#(214 4 #reduceActionForConstantExpression10: 12344330 false ) 
	#(219 3 #reduceActionForVariableNames2: 13809666 false ) 
	#(262 2 #reduceActionForGotoStatement1: 19530754 false ) 
	#(250 1 #liftFirstValue: 18424834 false ) 
	#(250 1 #liftFirstValue: 18424833 false ) 
	#(249 1 #reduceActionForVariableNames1: 18313217 false ) 
	#(202 4 #reduceActionForRecordType1: 11219969 false ) 
	#(204 2 #reduceActionForRecordFieldList1: 11493377 false ) 
	#(238 2 #reduceActionForAttributes2: 16372738 false ) 
	#(214 4 #reduceActionForExpression4: 12344328 false ) 
	#(188 4 #reduceActionForSimpleDefinedType6: 8518662 false ) 
	#(180 3 #reduceActionForRequires1: 7505922 false ) 
	#(224 0 #reduceActionForMethodVariables2: 14836737 false ) 
	#(252 1 #liftFirstValue: 18675714 false ) 
	#(252 1 #liftFirstValue: 18675713 false ) 
	#(235 0 #reduceActionForOptionalArguments1: 16011265 false ) 
	#(179 4 #reduceActionForNamedDefinedType1: 7367681 false ) 
	#(183 1 #reduceActionForUsesModule1: 7900163 false ) 
	#(183 1 #reduceActionForUsesModule1: 7900164 false ) 
	#(187 1 #liftFirstValue: 8407044 false ) 
	#(187 1 #liftFirstValue: 8407041 false ) 
	#(187 1 #liftFirstValue: 8407045 false ) 
	#(187 1 #liftFirstValue: 8407042 false ) 
	#(187 1 #liftFirstValue: 8407043 false ) 
	#(251 1 #reduceActionForInterfaceType2: 18481154 false ) 
	#(291 0 #reduceActionForOptionalType1: 23872513 false ) 
	#(282 0 #reduceActionForMethodVariables2: 21969921 false ) 
	#(270 0 #reduceActionForPropertyValues1: 20276225 false ) 
	#(285 3 #reduceActionForExternalMethodModifier4: 22569988 false ) 
	#(285 3 #reduceActionForExternalMethodModifier4: 22569986 false ) 
	#(286 1 #liftFirstValue: 23224331 false ) 
	#(286 1 #liftFirstValue: 23224325 false ) 
	#(286 1 #liftFirstValue: 23224334 false ) 
	#(286 1 #liftFirstValue: 23224329 false ) 
	#(286 1 #liftFirstValue: 23224335 false ) 
	#(286 1 #liftFirstValue: 23224338 false ) 
	#(286 1 #liftFirstValue: 23224333 false ) 
	#(286 1 #liftFirstValue: 23224341 false ) 
	#(286 1 #liftFirstValue: 23224340 false ) 
	#(286 1 #liftFirstValue: 23224339 false ) 
	#(286 1 #liftFirstValue: 23224332 false ) 
	#(286 1 #liftFirstValue: 23224321 false ) 
	#(286 1 #liftFirstValue: 23224322 false ) 
	#(286 1 #liftFirstValue: 23224326 false ) 
	#(286 1 #liftFirstValue: 23224337 false ) 
	#(286 1 #liftFirstValue: 23224324 false ) 
	#(286 1 #liftFirstValue: 23224327 false ) 
	#(286 1 #liftFirstValue: 23224342 false ) 
	#(286 1 #liftFirstValue: 23224336 false ) 
	#(286 1 #liftFirstValue: 23224323 false ) 
	#(286 1 #liftFirstValue: 23224330 false ) 
	#(286 1 #liftFirstValue: 23224328 false ) 
	#(281 2 #reduceActionForAttributes2: 21899266 false ) 
	#(283 1 #liftFirstValue: 22073345 false ) 
	#(283 1 #liftFirstValue: 22073346 false ) 
	#(388 1 #reduceActionForVariableNames1: 37243905 false ) 
	#(153 5 #reduceActionForLibraryFile1: 4653057 false ) 
	#(160 3 #reduceActionForVariableNames2: 5200898 false ) 
	#(161 3 #reduceActionForUsesList2: 5310465 false ) 
	#(389 2 #reduceActionForGotoStatement1: 37335041 false ) 
	#(169 2 #reduceActionForAttributes2: 6255618 false ) 
	#(170 1 #liftFirstValue: 6349827 false ) 
	#(170 1 #liftFirstValue: 6349826 false ) 
	#(170 1 #liftFirstValue: 6349825 false ) 
	#(170 1 #liftFirstValue: 6349828 false ) 
	#(170 1 #liftFirstValue: 6349829 false ) 
	#(170 1 #liftFirstValue: 6349830 false ) 
	#(294 0 #nil 24170497 false ) 
	#(385 2 #reduceActionForInitializationSection2: 36919298 false ) 
	#(326 3 #reduceActionForLabels1: 28630017 false ) 
	#(175 2 #reduceActionForAttributes2: 6948866 false ) 
	#(348 2 #reduceActionForCaseOptionList1: 31396865 false ) 
	#(359 4 #reduceActionForForVariableExpression3: 32566275 false ) 
	#(360 1 #liftFirstValue: 32708610 false ) 
	#(360 1 #liftFirstValue: 32708609 false ) 
	#(288 3 #reduceActionForVariableNames2: 23546882 false ) 
	#(380 5 #reduceActionForInheritedFunctionCall1: 36034561 false ) 
	#(341 3 #reduceActionForExcept3: 30752771 false ) 
	#(342 2 #reduceActionForAttributes2: 30912514 false ) 
	#(341 3 #reduceActionForExcept2: 30752770 false ) 
	#(345 2 #reduceActionForFinally2: 31155202 false ) 
	#(340 5 #reduceActionForTryStatement1: 30652417 false ) 
	#(381 3 #reduceActionForVariableNames2: 36426754 false ) 
	#(382 3 #reduceActionForMethodArgument2: 36534274 false ) 
	#(378 3 #reduceActionForVariableNames2: 35923970 false ) 
	#(195 5 #reduceActionForAnonymousProcedureType1: 9853953 false ) 
	#(195 5 #reduceActionForAnonymousProcedureType2: 9853954 false ) 
	#(198 5 #reduceActionForSetType3: 10586115 false ) 
	#(237 4 #reduceActionForQualifiedName2: 16172034 false ) 
	#(248 3 #reduceActionForRequires1: 18247681 false ) 
	#(247 5 #reduceActionForArrayType2: 18036738 false ) 
	#(247 5 #reduceActionForArrayType1: 18036737 false ) 
	#(204 3 #reduceActionForRecordFieldList2: 11493378 false ) 
	#(229 2 #reduceActionForAttributes2: 15239170 false ) 
	#(230 1 #liftFirstValue: 15301633 false ) 
	#(230 1 #liftFirstValue: 15301634 false ) 
	#(230 1 #liftFirstValue: 15301635 false ) 
	#(230 1 #liftFirstValue: 15301636 false ) 
	#(221 3 #reduceActionForVariableNames2: 14068738 false ) 
	#(182 3 #reduceActionForGenericTypeArgument2: 7751682 false ) 
	#(181 3 #reduceActionForVariableNames2: 7593986 false ) 
	#(183 2 #reduceActionForDefinedType2: 7900162 false ) 
	#(253 0 #nil 18731009 false ) 
	#(179 5 #reduceActionForNamedDefinedType2: 7367682 false ) 
	#(227 0 #nil 15106049 false ) 
	#(289 5 #reduceActionForArgument1: 23642113 false ) 
	#(299 5 #reduceActionForNonExternalConstructorHeader1: 24916993 false ) 
	#(302 5 #reduceActionForNonExternalDestructorHeader1: 25438209 false ) 
	#(243 5 #reduceActionForInterfaceFunctionAssignment1: 17455105 false ) 
	#(244 5 #reduceActionForInterfaceProcedureAssignment1: 17638401 false ) 
	#(308 5 #reduceActionForNonExternalProcedureHeaderVars1: 26148865 false ) 
	#(271 3 #reduceActionForPropertyArrayAccessors2: 20606978 false ) 
	#(239 5 #reduceActionForNewClassComponent1: 16452609 false ) 
	#(284 2 #reduceActionForExternalMethodModifier6: 22148097 false ) 
	#(387 3 #reduceActionForExportsDefinition1: 37133313 false ) 
	#(296 1 #liftFirstValue: 24315914 false ) 
	#(296 1 #liftFirstValue: 24315915 false ) 
	#(296 1 #liftFirstValue: 24315912 false ) 
	#(293 4 #reduceActionForImplementationSection2: 24024066 false ) 
	#(295 2 #reduceActionForAttributes2: 24256514 false ) 
	#(296 1 #liftFirstValue: 24315905 false ) 
	#(297 1 #reduceActionForConstructorDefinition2: 24603650 false ) 
	#(296 1 #liftFirstValue: 24315906 false ) 
	#(300 1 #reduceActionForDestructorDefinition2: 25133058 false ) 
	#(296 1 #liftFirstValue: 24315907 false ) 
	#(296 1 #liftFirstValue: 24315908 false ) 
	#(309 1 #reduceActionForClassProcedureDefinition2: 26318850 false ) 
	#(296 1 #liftFirstValue: 24315909 false ) 
	#(296 1 #liftFirstValue: 24315910 false ) 
	#(317 1 #reduceActionForClassFunctionDefinition2: 27357186 false ) 
	#(296 1 #liftFirstValue: 24315911 false ) 
	#(320 1 #reduceActionForClassOperatorDefinition2: 27767810 false ) 
	#(296 1 #liftFirstValue: 24315913 false ) 
	#(296 1 #liftFirstValue: 24315916 false ) 
	#(386 2 #reduceActionForFinalizationSection2: 37029890 false ) 
	#(162 6 #reduceActionForUnitFile1: 5393409 false ) 
	#(353 3 #reduceActionForBaseCaseLabel2: 31832066 false ) 
	#(354 2 #reduceActionForElseCase2: 31993858 false ) 
	#(346 6 #reduceActionForCaseStatement1: 31222785 false ) 
	#(349 3 #reduceActionForVariableNames2: 31449090 false ) 
	#(350 3 #reduceActionForCaseOption1: 31551489 false ) 
	#(352 3 #reduceActionForVariableNames2: 31742978 false ) 
	#(351 3 #reduceActionForCaseLabel2: 31637506 false ) 
	#(358 6 #reduceActionForForInStatement1: 32416769 false ) 
	#(337 6 #reduceActionForForInStatement1: 30213122 false ) 
	#(372 6 #reduceActionForMemExpression1: 35164161 false ) 
	#(372 6 #reduceActionForMemExpression1: 35164162 false ) 
	#(344 2 #reduceActionForPossibleExceptElse2: 31079426 false ) 
	#(333 6 #reduceActionForVariableStatement2: 29686786 false ) 
	#(192 3 #reduceActionForVariableNames2: 9226242 false ) 
	#(189 5 #reduceActionForInstantiatedGenericTypeArguments1: 8954881 false ) 
	#(203 6 #reduceActionForRecordHelperType1: 11325441 false ) 
	#(200 1 #reduceActionForVariableNames1: 11020289 false ) 
	#(199 3 #reduceActionForTwoItemSetNameList1: 10863617 false ) 
	#(249 3 #reduceActionForVariableNames2: 18313218 false ) 
	#(231 2 #reduceActionForPrivateClassSection2: 15415298 false ) 
	#(232 2 #reduceActionForProtectedClassSection2: 15607810 false ) 
	#(233 2 #reduceActionForPublicClassSection1: 15814657 false ) 
	#(234 2 #reduceActionForPublishedClassSection1: 15906817 false ) 
	#(201 3 #reduceActionForMetaclassType1: 11123713 false ) 
	#(225 1 #liftFirstValue: 14911489 false ) 
	#(225 1 #liftFirstValue: 14911490 false ) 
	#(224 2 #reduceActionForAttributes2: 14836738 false ) 
	#(222 3 #reduceActionForNewClassType2: 14188546 false ) 
	#(236 1 #reduceActionForVariableNames1: 16072705 false ) 
	#(183 3 #reduceActionForPackageLine1: 7900165 false ) 
	#(183 3 #reduceActionForPackageLine1: 7900161 false ) 
	#(254 0 #reduceActionForMethodVariables2: 18806785 false ) 
	#(227 1 #liftFirstValue: 15106050 false ) 
	#(291 2 #reduceActionForGotoStatement1: 23872514 false ) 
	#(330 6 #reduceActionForVariable1: 28939265 false ) 
	#(299 6 #reduceActionForNonExternalConstructorHeader2: 24916994 false ) 
	#(302 6 #reduceActionForNonExternalDestructorHeader2: 25438210 false ) 
	#(282 2 #reduceActionForAttributes2: 21969922 false ) 
	#(316 6 #reduceActionForNonExternalFunctionHeaderVars1: 27177985 false ) 
	#(276 1 #reduceActionForPropertyDefault2: 21281794 false ) 
	#(276 1 #reduceActionForPropertyDefault3: 21281795 false ) 
	#(280 0 #nil 21798913 false ) 
	#(270 2 #reduceActionForPropertyValues2: 20276226 false ) 
	#(270 2 #reduceActionForCaseOptionList1: 20276227 false ) 
	#(270 2 #reduceActionForPropertyValues4: 20276228 false ) 
	#(270 2 #reduceActionForPropertyValues8: 20276232 false ) 
	#(270 2 #reduceActionForPropertyValues5: 20276229 false ) 
	#(270 2 #reduceActionForPropertyValues7: 20276231 false ) 
	#(270 2 #reduceActionForPropertyValues6: 20276230 false ) 
	#(285 5 #reduceActionForExternalMethodModifier5: 22569989 false ) 
	#(285 5 #reduceActionForExternalMethodModifier5: 22569987 false ) 
	#(284 3 #reduceActionForNonExternalMethodModifier2: 22148098 false ) 
	#(284 3 #reduceActionForNonExternalMethodModifier4: 22148100 false ) 
	#(284 3 #reduceActionForNonExternalMethodModifier4: 22148099 false ) 
	#(388 3 #reduceActionForVariableNames2: 37243906 false ) 
	#(294 2 #reduceActionForImplementationCode2: 24170498 false ) 
	#(297 2 #reduceActionForConstructorDefinition1: 24603649 false ) 
	#(300 2 #reduceActionForDestructorDefinition1: 25133057 false ) 
	#(309 2 #reduceActionForClassProcedureDefinition1: 26318849 false ) 
	#(317 2 #reduceActionForClassFunctionDefinition1: 27357185 false ) 
	#(320 2 #reduceActionForClassOperatorDefinition1: 27767809 false ) 
	#(196 7 #reduceActionForAnonymousFunctionType1: 10166273 false ) 
	#(196 7 #reduceActionForAnonymousFunctionType2: 10166274 false ) 
	#(231 3 #reduceActionForPrivateClassSection1: 15415297 false ) 
	#(232 3 #reduceActionForProtectedClassSection1: 15607809 false ) 
	#(235 3 #reduceActionForRequires1: 16011266 false ) 
	#(173 7 #reduceActionForConstantValue1: 6659073 false ) 
	#(322 7 #reduceActionForNonExternalClassOperatorHeader1: 28097537 false ) 
	#(276 2 #reduceActionForPropertyDefault1: 21281793 false ) 
	#(275 2 #reduceActionForPropertyDispid1: 20969473 false ) 
	#(278 1 #reduceActionForVariableNames1: 21590017 false ) 
	#(277 2 #reduceActionForPropertyImplements1: 21485569 false ) 
	#(272 2 #reduceActionForPropertyIndex1: 20704257 false ) 
	#(273 2 #reduceActionForPropertyReader1: 20797441 false ) 
	#(279 2 #reduceActionForPropertyStored1: 21709825 false ) 
	#(274 2 #reduceActionForPropertyWriter1: 20882433 false ) 
	#(268 7 #reduceActionForPropertyHeaderVars1: 19986433 false ) 
	#(176 5 #reduceActionForResource1: 7023617 false ) 
	#(357 8 #reduceActionForForStatement1: 32220161 false ) 
	#(343 5 #reduceActionForOnDo1: 30977025 false ) 
	#(200 3 #reduceActionForVariableNames2: 11020290 false ) 
	#(236 3 #reduceActionForVariableNames2: 16072706 false ) 
	#(226 5 #reduceActionForOldClassType1: 14956545 false ) 
	#(253 3 #reduceActionForGuid2: 18731010 false ) 
	#(251 5 #reduceActionForInterfaceType1: 18481153 false ) 
	#(254 2 #reduceActionForAttributes2: 18806786 false ) 
	#(255 1 #liftFirstValue: 18898946 false ) 
	#(255 1 #liftFirstValue: 18898945 false ) 
	#(275 3 #reduceActionForPropertyDispid2: 20969474 false ) 
	#(275 3 #reduceActionForPropertyDispid3: 20969475 false ) 
	#(280 2 #reduceActionForPropertyModifiers2: 21798914 false ) 
	#(207 1 #reduceActionForVariableNames1: 11828225 false ) 
	#(209 1 #reduceActionForVariableNames1: 12043265 false ) 
	#(210 1 #liftFirstValue: 12130305 false ) 
	#(223 6 #reduceActionForClassHelperType2: 14420994 false ) 
	#(222 6 #reduceActionForNewClassType1: 14188545 false ) 
	#(278 3 #reduceActionForVariableNames2: 21590018 false ) 
	#(206 6 #reduceActionForVariantRecordPart1: 11678721 false ) 
	#(207 3 #reduceActionForVariableNames2: 11828226 false ) 
	#(209 3 #reduceActionForVariableNames2: 12043266 false ) 
	#(223 9 #reduceActionForClassHelperType1: 14420993 false ) 
	#(208 5 #reduceActionForVariantType1: 11942913 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NAMESPACE"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attributes' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'VariableStatement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ForVariableExpression' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #OrderedCollection #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #SmaCCToken #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 41 0 66 0 45 0 73 0 49 0 85 0 6 0 90 0 53 0 91 0 6 0 105 0 6 0 116 0 6 0 119 0 57 0 120 0 61 0 123 0 6 0 124 0 65 0 150 0 69 0 151 0 73 0 152 0 77 0 153 0 81 0 154 0 85 0 157 0 89 0 158 0 93 0 162 0 97 0 163 0 101 0 165] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 0 213 1 106 0 213 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 193 0 184 1 145 0 188 1 149 0 193 1 193 0 195 1 193 0 196 1 145 0 198 1 145 0 202 1 145 0 203 1 173 0 205 1 145 0 211 1 181 0 212 1 185 0 213 1 189 0 214 1 193 0 245 1 145 0 246 1 145 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 1 217 0 131 1 221 0 140 1 225 0 179 1 229 0 241 1 233 0 242] 
#[1 1 237 0 140 1 241 0 173] 
#[1 1 245 0 140 1 249 1 34 1 253 1 74] 
#[1 2 17 0 27 2 17 0 82 2 17 0 124 0 22 0 140 2 13 1 33 2 17 1 36] 
#[1 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 2 37 0 52 2 41 0 90 2 45 0 92 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 2 69 0 171 2 69 0 177 2 69 0 239 2 69 0 240 2 77 0 241 1 233 0 242 2 69 0 243 2 69 0 244 2 69 1 0 2 69 1 1 2 69 1 2 2 69 1 3 2 69 1 4 2 69 1 5 2 69 1 7 2 69 1 8 2 69 1 9 2 69 1 11 2 129 1 12 2 69 1 13 2 137 1 34 2 69 1 42 2 145 1 43 2 69 1 45 2 153 1 46 2 69 1 49 2 161 1 50 2 69 1 51 2 169 1 52 2 69 1 54 2 69 1 55 2 69 1 57 2 185 1 58 2 69 1 59 2 193 1 60 2 69 1 62 2 69 1 63 2 69 1 65 2 209 1 66 2 69 1 71 2 217 1 72] 
#[1 1 217 0 131 2 221 0 242] 
#[1 2 225 0 140 2 229 0 168] 
#[1 2 225 0 140 2 233 0 168] 
#[1 2 225 0 140 2 237 0 168] 
#[1 2 225 0 140 2 241 0 168] 
#[1 2 225 0 140 2 245 0 168] 
#[1 2 225 0 140 2 249 0 166 2 253 0 167 3 1 0 168] 
#[0 0 0 1 135] 
#[0 0 26 1 135] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 61 0 123 0 6 0 124 3 5 0 165] 
#[0 0 30 1 135] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 61 0 123 0 6 0 124 3 9 0 165] 
#[0 0 34 1 135] 
#[1 3 13 0 104 3 17 0 159] 
#[0 0 38 1 135] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 3 21 0 63 3 25 0 164 0 46 1 135] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 3 29 0 156 3 33 1 67 3 37 1 68] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 45 1 109 1 25 1 110 3 45 1 111 3 45 1 112 1 37 1 113 3 45 1 114 1 45 1 115 3 45 1 116 1 53 1 117 3 45 1 118 1 61 1 123 3 45 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 49 1 109 1 25 1 110 3 49 1 111 3 49 1 112 1 37 1 113 3 49 1 114 1 45 1 115 3 49 1 116 1 53 1 117 3 49 1 118 1 61 1 123 3 49 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 53 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 61 1 109 1 25 1 110 3 61 1 111 3 61 1 112 1 37 1 113 3 61 1 114 1 45 1 115 3 61 1 116 1 53 1 117 3 61 1 118 1 61 1 123 3 61 1 124 1 69 1 134] 
#[1 3 65 0 124 3 41 0 140 3 69 1 103 3 69 1 117] 
#[1 3 77 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 90 0 54 0 105 0 54 0 116 0 54 0 119 0 54 0 124 3 81 0 197] 
#[1 3 85 0 140 3 89 0 142] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 93 1 109 1 25 1 110 3 93 1 111 3 93 1 112 1 37 1 113 3 93 1 114 1 45 1 115 3 93 1 116 1 53 1 117 3 93 1 118 1 61 1 123 3 93 1 124 1 69 1 134] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 75 0 58 0 78 0 58 0 79 0 58 0 81 0 58 0 97 0 58 0 98 0 58 0 109 0 58 0 110 0 58 0 113 0 58 0 115 0 58 0 117 0 58 0 122 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 0 58 0 139 3 97 0 140 0 58 1 135] 
#[0 3 101 0 131] 
#[0 3 105 0 131] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 109 1 109 1 25 1 110 3 109 1 111 3 109 1 112 1 37 1 113 3 109 1 114 1 45 1 115 3 109 1 116 1 53 1 117 3 109 1 118 1 61 1 123 3 109 1 124 1 69 1 134] 
#[1 3 77 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 90 0 54 0 105 0 54 0 116 0 54 0 119 0 54 0 124 3 113 0 197] 
#[1 0 105 0 2 0 109 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 125 0 52 0 137 0 60 0 62 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 62 0 79 0 153 0 90 0 62 0 122 0 181 0 131 0 185 0 136 0 189 0 137 0 62 0 138 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 117 1 109 1 25 1 110 3 117 1 111 3 117 1 112 1 37 1 113 3 117 1 114 1 45 1 115 3 117 1 116 1 53 1 117 3 117 1 118 1 61 1 123 3 117 1 124 1 69 1 134 0 62 1 135] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 121 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 125 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 1 245 0 140 3 129 1 34] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 133 1 109 1 25 1 110 3 133 1 111 3 133 1 112 1 37 1 113 3 133 1 114 1 45 1 115 3 133 1 116 1 53 1 117 3 133 1 118 1 61 1 123 3 133 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 137 1 83 3 141 1 109 1 25 1 110 3 141 1 111 3 141 1 112 1 37 1 113 3 141 1 114 1 45 1 115 3 141 1 116 1 53 1 117 3 141 1 118 1 61 1 123 3 141 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 3 145 0 132 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 149 1 109 1 25 1 110 3 149 1 111 3 149 1 112 1 37 1 113 3 149 1 114 1 45 1 115 3 149 1 116 1 53 1 117 3 149 1 118 3 153 1 119 3 157 1 120 1 61 1 123 3 149 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 161 1 109 1 25 1 110 3 161 1 111 3 161 1 112 1 37 1 113 3 161 1 114 1 45 1 115 3 161 1 116 1 53 1 117 3 161 1 118 1 61 1 123 3 161 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 165 1 109 1 25 1 110 3 165 1 111 3 165 1 112 1 37 1 113 3 165 1 114 1 45 1 115 3 165 1 116 1 53 1 117 3 165 1 118 1 61 1 123 3 165 1 124 1 69 1 134] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 3 169 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 79 0 66 0 81 0 66 0 109 0 66 0 110 0 66 0 122 0 66 0 130 0 66 0 131 0 66 0 133 0 66 0 134 0 66 0 136 0 66 0 137 0 66 0 138 0 66 0 139 0 66 1 135] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 3 173 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 79 0 70 0 81 0 70 0 109 0 70 0 110 0 70 0 122 0 70 0 130 0 70 0 131 0 70 0 133 0 70 0 134 0 70 0 136 0 70 0 137 0 70 0 138 0 70 0 139 0 70 1 135] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 0 1 135] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 134 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 0 138 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 3 177 0 21] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 48 0 142 0 49 4 29 0 58 0 142 0 61 4 29 0 64 4 29 0 71 0 142 0 79 4 29 0 81 4 29 0 109 4 29 0 110 0 142 0 122 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 0 142 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 0 142 1 135] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 5 0 146 0 6 0 146 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 11 0 11 0 146 0 12 0 146 0 13 0 146 0 14 0 146 0 18 0 146 0 20 0 146 0 30 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 48 0 146 0 49 0 146 0 57 0 146 0 58 0 146 0 59 0 146 0 61 0 146 0 64 0 146 0 71 0 146 0 75 0 146 0 78 0 146 0 79 0 146 0 81 0 146 0 97 0 146 0 98 0 146 0 109 0 146 0 110 0 146 0 113 0 146 0 115 0 146 0 117 0 146 0 122 0 146 0 128 0 146 0 129 0 146 0 130 0 146 0 131 0 146 0 132 0 146 0 133 0 146 0 134 0 146 0 135 0 146 0 136 0 146 0 137 0 146 0 138 0 146 0 139 4 37 0 189 4 41 0 190 0 146 1 135] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 4 45 1 67 3 37 1 68] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 4 49 1 67 3 37 1 68] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 15 0 11 0 170 0 12 0 170 0 13 0 170 0 14 0 170 0 18 0 170 0 20 0 170 0 30 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 48 0 170 0 49 0 170 0 57 0 170 0 58 0 170 0 59 0 170 0 61 0 170 0 64 0 170 0 71 0 170 0 75 0 170 0 78 0 170 0 79 0 170 0 81 0 170 0 97 0 170 0 98 0 170 0 109 0 170 0 110 0 170 0 113 0 170 0 115 0 170 0 117 0 170 0 122 0 170 0 128 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 132 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 137 0 170 0 138 0 170 0 139 4 53 0 189 4 41 0 190 0 170 1 135] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 4 57 0 2 0 190 0 3 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 61 0 140 4 65 0 141 1 185 0 142 1 209 0 144 1 137 0 148 4 69 0 185 4 73 0 186 1 185 0 213 4 77 0 214 4 81 0 215 4 85 0 216 4 89 0 217 4 93 0 218 4 97 0 219 4 101 0 220 4 77 1 118 1 209 1 123 1 213 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 4 109 0 214 4 109 1 118 1 209 1 123 1 213 1 134] 
#[1 0 194 0 3 0 194 0 5 0 194 0 10 0 194 0 14 0 194 0 16 0 194 0 21 0 194 0 23 0 194 0 27 0 194 0 30 0 194 0 31 0 194 0 33 0 194 0 36 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 48 0 194 0 49 0 194 0 52 0 194 0 57 0 194 0 58 0 194 0 59 0 194 0 61 0 194 0 65 0 194 0 75 4 113 0 78 0 194 0 79 0 194 0 88 0 194 0 90 0 194 0 97 0 194 0 98 0 194 0 105 0 194 0 113 0 194 0 116 0 194 0 119 0 194 0 122 0 194 0 124 0 194 0 128 0 194 0 129 0 194 0 131 0 194 0 132 0 194 0 133 0 194 0 138 0 194 1 135] 
#[1 3 77 0 2 0 54 0 9 4 117 0 197] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 4 121 0 214 4 121 1 118 1 209 1 123 1 213 1 134] 
#[0 0 198 0 19 0 99] 
#[1 3 77 0 2 0 54 0 78 0 54 0 138 4 125 0 197] 
#[0 4 129 0 54] 
#[1 0 202 0 3 0 202 0 5 0 202 0 6 0 202 0 10 0 202 0 11 0 202 0 14 0 202 0 16 0 202 0 21 0 202 0 23 0 202 0 27 0 202 0 30 0 202 0 31 0 202 0 33 0 202 0 36 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 48 0 202 0 49 0 202 0 52 0 202 0 57 0 202 0 58 0 202 0 59 0 202 0 61 0 202 0 65 0 202 0 75 0 202 0 78 0 202 0 79 0 202 0 88 0 202 0 90 0 202 0 97 0 202 0 98 0 202 0 105 0 202 0 113 0 202 0 116 4 133 0 117 0 202 0 119 0 202 0 122 0 202 0 124 0 202 0 128 0 202 0 129 0 202 0 131 0 202 0 132 0 202 0 133 0 202 0 138 0 202 1 135] 
#[0 4 137 0 78] 
#[1 4 141 0 140 4 145 0 237] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 4 149 0 214 4 149 1 118 1 209 1 123 1 213 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 4 153 0 214 4 153 1 118 1 209 1 123 1 213 1 134] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 4 161 0 184 4 161 0 188 1 149 0 193 4 161 0 195 4 161 0 196 4 161 0 198 4 161 0 202 4 161 0 203 1 173 0 205 4 161 0 211 1 181 0 212 1 185 0 213 1 189 0 214 4 161 0 245 4 161 0 246 4 161 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 0 206 0 2 0 210 0 3 0 206 0 4 0 210 0 5 0 19 0 6 0 206 0 7 0 206 0 8 0 210 0 10 0 19 0 11 0 206 0 12 0 206 0 13 0 210 0 14 0 210 0 16 0 206 0 18 0 206 0 20 0 210 0 21 0 210 0 23 0 210 0 27 0 210 0 30 0 210 0 31 0 210 0 33 0 206 0 35 0 210 0 36 0 210 0 39 0 210 0 40 0 210 0 41 0 210 0 48 0 210 0 49 0 210 0 52 0 210 0 57 0 19 0 58 0 210 0 59 0 210 0 61 0 206 0 64 0 210 0 65 0 206 0 71 0 210 0 75 0 210 0 78 0 210 0 79 0 206 0 81 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 98 0 210 0 105 0 206 0 109 0 206 0 110 0 210 0 113 0 210 0 116 0 210 0 119 0 210 0 122 0 210 0 124 0 210 0 128 0 210 0 129 0 206 0 130 0 210 0 131 0 210 0 132 0 19 0 133 0 206 0 134 0 206 0 136 0 206 0 137 0 210 0 138 0 210 1 135] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[0 0 218 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 0 222 0 16 0 222 0 131 0 0 1 135] 
#[1 0 226 0 3 0 226 0 5 4 165 0 6 0 226 0 10 0 150 0 11 0 226 0 14 0 226 0 16 0 226 0 21 0 226 0 23 0 226 0 27 0 226 0 30 0 226 0 31 0 226 0 33 0 226 0 36 0 226 0 39 0 226 0 40 0 226 0 41 0 226 0 48 0 226 0 49 0 226 0 52 0 226 0 57 0 226 0 58 0 226 0 59 0 226 0 61 0 226 0 65 0 226 0 75 0 226 0 78 0 226 0 79 0 226 0 88 0 226 0 90 0 226 0 97 0 226 0 98 0 226 0 105 0 226 0 113 0 226 0 116 0 226 0 119 0 226 0 122 0 226 0 124 0 226 0 128 0 226 0 129 0 226 0 131 0 226 0 132 0 226 0 133 0 226 0 138 4 169 0 189 4 41 0 190 0 226 1 135] 
#[0 0 230 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 0 234 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 0 238 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 0 242 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 0 246 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 4 173 0 19 4 177 0 99] 
#[0 0 250 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 4 181 0 7] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[1 4 185 0 2 1 2 0 3 4 193 0 4 1 2 0 5 4 189 0 6 1 2 0 7 4 193 0 8 1 2 0 10 4 193 0 11 4 193 0 12 4 193 0 13 1 2 0 14 1 2 0 16 4 193 0 18 4 193 0 20 1 2 0 21 1 2 0 23 1 2 0 27 1 2 0 30 1 2 0 31 1 2 0 33 4 193 0 35 1 2 0 36 1 2 0 39 1 2 0 40 1 2 0 41 1 2 0 48 1 2 0 49 1 2 0 52 1 2 0 57 0 23 0 58 1 2 0 59 1 2 0 61 4 193 0 64 1 2 0 65 4 193 0 71 1 2 0 75 1 2 0 78 1 2 0 79 4 193 0 81 1 2 0 88 1 2 0 90 1 2 0 97 1 2 0 98 1 2 0 105 4 193 0 109 4 193 0 110 1 2 0 113 1 2 0 116 1 2 0 119 1 2 0 122 1 2 0 124 1 2 0 128 1 2 0 129 4 193 0 130 1 2 0 131 1 2 0 132 0 27 0 133 4 193 0 134 4 193 0 136 4 193 0 137 1 2 0 138 4 193 1 128 1 2 1 135] 
#[1 4 197 0 16 4 201 0 131] 
#[0 1 6 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 1 10 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[0 1 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 4 205 0 214 4 205 1 118 1 209 1 123 1 213 1 134] 
#[1 4 209 0 11 1 26 0 14 4 213 0 180] 
#[0 0 0 1 135] 
#[1 1 217 0 131 4 217 0 140 4 221 0 242] 
#[0 1 30 0 26 0 28 0 32 0 52 0 90 0 131 0 140] 
#[1 4 225 0 9 1 34 0 14 4 229 1 10] 
#[0 0 0 1 135] 
#[0 1 38 0 3 0 5 0 9 0 10 0 132 0 138 1 135] 
#[1 4 233 0 5 4 237 0 9] 
#[0 0 0 1 135] 
#[0 1 42 0 140] 
#[0 1 46 0 140] 
#[0 1 50 0 140] 
#[0 0 0 1 135] 
#[1 1 245 0 140 4 241 1 34] 
#[1 4 245 0 28 4 249 0 32 4 253 0 52 5 1 0 80 5 5 0 90 2 45 0 92 2 49 0 116 2 57 0 124 5 9 1 12 5 13 1 50 5 17 1 52 5 21 1 58 5 25 1 60 5 29 1 72] 
#[1 1 237 0 140 5 33 0 172 5 37 0 173] 
#[1 4 141 0 140 5 41 0 237] 
#[1 4 141 0 140 5 45 0 237] 
#[1 4 141 0 140 5 49 0 237] 
#[1 4 141 0 140 5 53 0 237] 
#[0 5 57 0 140] 
#[1 1 245 0 140 1 249 1 34 5 61 1 73 5 65 1 74] 
#[1 1 217 0 131 1 221 0 140 5 69 0 178 5 73 0 179 1 229 0 241 1 233 0 242] 
#[1 1 245 0 140 1 249 1 34 5 77 1 73 5 65 1 74] 
#[0 1 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 0 0 1 135] 
#[0 1 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 5 81 0 26 2 29 0 28 2 33 0 32 4 253 0 52 5 5 0 90 1 217 0 131 4 221 0 242 5 85 1 2 5 89 1 3 5 93 1 4 5 97 1 5 5 101 1 7 5 105 1 8 5 109 1 9 5 85 1 42 2 145 1 43 5 89 1 45 2 153 1 46 5 93 1 49 2 161 1 50 5 93 1 51 2 169 1 52 5 97 1 54 5 97 1 55 5 101 1 57 2 185 1 58 5 101 1 59 2 193 1 60 5 105 1 62 5 105 1 63 5 109 1 65 2 209 1 66] 
#[0 1 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 4 233 0 5 5 113 0 9] 
#[0 1 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 1 126 0 3 1 126 0 24 1 126 0 26 1 126 0 27 1 126 0 28 1 126 0 32 1 126 0 40 5 117 0 44 5 121 0 51 1 126 0 52 1 126 0 89 1 126 0 90 1 126 0 92 1 126 0 93 1 126 0 94 1 126 0 95 1 126 0 114 1 126 0 116 1 126 0 119 1 126 0 124 1 126 0 131 1 126 0 140 5 125 1 29 1 126 1 135] 
#[0 1 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 1 134 0 3 1 134 0 24 1 134 0 26 1 134 0 27 1 134 0 28 1 134 0 32 1 134 0 40 5 117 0 44 5 121 0 51 1 134 0 52 1 134 0 89 1 134 0 90 1 134 0 92 1 134 0 93 1 134 0 94 1 134 0 95 1 134 0 114 1 134 0 116 1 134 0 119 1 134 0 124 1 134 0 131 1 134 0 140 5 129 1 29 1 134 1 135] 
#[0 1 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 142 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 1 150 0 3 1 150 0 21 1 150 0 23 1 150 0 24 1 150 0 26 1 150 0 27 1 150 0 28 1 150 0 32 1 150 0 40 5 117 0 44 1 150 0 48 5 121 0 51 1 150 0 52 1 150 0 56 1 150 0 61 1 150 0 65 1 150 0 89 1 150 0 90 1 150 0 92 1 150 0 93 1 150 0 94 1 150 0 95 1 150 0 105 1 150 0 114 1 150 0 116 1 150 0 119 1 150 0 124 1 150 0 131 1 150 0 140 5 133 1 29 1 150 1 135] 
#[0 1 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 166 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 1 174 0 3 1 174 0 21 1 174 0 23 1 174 0 24 1 174 0 26 1 174 0 27 1 174 0 28 1 174 0 32 1 174 0 40 5 117 0 44 1 174 0 48 5 121 0 51 1 174 0 52 1 174 0 56 1 174 0 61 1 174 0 65 1 174 0 89 1 174 0 90 1 174 0 92 1 174 0 93 1 174 0 94 1 174 0 95 1 174 0 105 1 174 0 114 1 174 0 116 1 174 0 119 1 174 0 124 1 174 0 131 1 174 0 140 5 137 1 29 1 174 1 135] 
#[0 1 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 186 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 1 190 0 3 1 190 0 24 1 190 0 26 1 190 0 27 1 190 0 28 1 190 0 32 1 190 0 40 5 117 0 44 5 121 0 51 1 190 0 52 1 190 0 89 1 190 0 90 1 190 0 92 1 190 0 93 1 190 0 94 1 190 0 95 1 190 0 114 1 190 0 116 1 190 0 119 1 190 0 124 1 190 0 131 1 190 0 140 5 141 1 29 1 190 1 135] 
#[0 1 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 1 198 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 0 0 1 135] 
#[0 1 202 0 5 0 6 0 31 0 58 0 88 0 138] 
#[1 5 145 0 6 5 157 0 31 5 157 0 88 1 206 0 138 5 157 0 194] 
#[1 5 145 0 6 5 161 0 31 5 161 0 88 1 206 0 138 5 161 0 194] 
#[1 5 145 0 6 5 165 0 138] 
#[1 5 145 0 6 5 169 0 31 5 169 0 88 1 206 0 138 5 169 0 194] 
#[1 5 145 0 6 5 173 0 31 5 173 0 88 1 206 0 138 5 173 0 194] 
#[1 5 177 0 5 5 181 0 138] 
#[0 1 210 0 5 0 138] 
#[1 1 214 0 5 5 145 0 6 5 185 0 58 1 214 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 189 0 156 3 33 1 67 3 37 1 68] 
#[1 1 218 0 21 1 218 0 23 1 218 0 27 1 218 0 43 1 218 0 52 1 218 0 65 1 218 0 90 1 218 0 105 1 218 0 116 1 218 0 119 1 218 0 124 5 193 0 155] 
#[1 2 225 0 140 5 197 0 160 5 201 0 168] 
#[1 5 205 0 29 5 209 0 161] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 61 0 123 0 6 0 124 5 213 0 165] 
#[1 1 222 0 40 1 222 0 48 5 217 0 56 1 222 0 61 5 221 1 37] 
#[0 5 225 0 6] 
#[0 1 226 0 6] 
#[1 0 10 0 21 0 113 0 23 2 25 0 27 4 253 0 52 5 229 0 65 5 5 0 90 5 233 0 105 2 49 0 116 2 53 0 119 2 57 0 124 6 17 0 171 6 17 0 174 6 17 0 177 6 17 1 48 5 253 1 49 2 161 1 50 6 1 1 51 2 169 1 52 6 17 1 56 6 9 1 57 2 185 1 58 6 13 1 59 2 193 1 60 6 17 1 69 6 17 1 70 6 17 1 71 2 217 1 72 6 29 1 106 6 29 1 107 1 17 1 108] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 3 181 0 2 6 33 0 3 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 3 181 0 2 1 230 0 3 1 230 0 4 1 230 0 5 3 189 0 6 1 230 0 7 1 230 0 8 1 230 0 9 1 230 0 10 0 31 0 11 0 35 0 12 0 39 0 13 0 43 0 14 1 230 0 18 1 230 0 20 1 230 0 30 1 230 0 33 1 230 0 35 1 230 0 36 1 230 0 37 1 230 0 39 1 230 0 40 1 230 0 41 1 230 0 48 1 230 0 49 1 230 0 57 0 47 0 58 1 230 0 59 1 230 0 61 1 230 0 64 1 230 0 71 1 230 0 75 1 230 0 78 1 230 0 79 1 230 0 81 1 230 0 97 1 230 0 98 1 230 0 109 1 230 0 110 1 230 0 113 1 230 0 115 1 230 0 117 1 230 0 122 1 230 0 128 1 230 0 129 1 230 0 130 4 1 0 131 1 230 0 132 0 51 0 133 0 55 0 134 1 230 0 135 1 230 0 136 1 230 0 137 1 230 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 1 230 1 135] 
#[1 6 37 0 40 6 41 0 138] 
#[0 1 234 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 6 45 0 78 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[0 6 49 0 140] 
#[1 6 53 0 10 6 57 0 58] 
#[0 1 238 0 10 0 58] 
#[1 1 242 0 3 2 17 0 27 2 17 0 82 2 17 0 124 0 22 0 140 6 61 1 31 6 65 1 32 6 69 1 33 2 17 1 36] 
#[1 4 225 0 9 1 34 0 21 1 34 0 23 1 34 0 27 1 34 0 52 1 34 0 65 1 34 0 90 1 34 0 105 1 34 0 116 1 34 0 119 1 34 0 124 6 73 1 10] 
#[0 1 246 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 1 250 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 6 77 0 115 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 6 81 0 2 1 254 0 3 1 254 0 4 1 254 0 5 1 254 0 6 1 254 0 7 1 254 0 8 1 254 0 9 1 254 0 10 1 254 0 11 1 254 0 12 1 254 0 13 1 254 0 14 1 254 0 18 1 254 0 20 1 254 0 30 1 254 0 33 1 254 0 35 1 254 0 36 1 254 0 37 1 254 0 39 1 254 0 40 1 254 0 41 1 254 0 48 1 254 0 49 1 254 0 57 1 254 0 58 1 254 0 59 1 254 0 61 1 254 0 64 1 254 0 71 1 254 0 75 1 254 0 78 1 254 0 79 1 254 0 81 1 254 0 97 1 254 0 98 1 254 0 109 1 254 0 110 1 254 0 113 1 254 0 115 1 254 0 117 1 254 0 122 1 254 0 128 1 254 0 129 1 254 0 130 1 254 0 131 1 254 0 132 1 254 0 133 1 254 0 134 1 254 0 135 1 254 0 136 1 254 0 137 1 254 0 138 1 254 0 139 1 254 1 135] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 85 1 109 1 25 1 110 6 85 1 111 6 85 1 112 1 37 1 113 6 85 1 114 1 45 1 115 6 85 1 116 1 53 1 117 6 85 1 118 1 61 1 123 6 85 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 89 1 109 1 25 1 110 6 89 1 111 6 89 1 112 1 37 1 113 6 89 1 114 1 45 1 115 6 89 1 116 1 53 1 117 6 89 1 118 1 61 1 123 6 89 1 124 1 69 1 134] 
#[1 3 181 0 2 2 2 0 3 4 29 0 4 2 2 0 5 3 189 0 6 2 2 0 7 4 29 0 8 2 2 0 9 3 197 0 10 0 59 0 11 0 63 0 12 0 67 0 13 0 71 0 14 4 29 0 18 4 29 0 20 2 2 0 30 2 2 0 33 4 29 0 35 2 2 0 36 2 2 0 37 2 2 0 39 2 2 0 40 2 2 0 41 2 2 0 48 2 2 0 49 2 2 0 57 0 75 0 58 2 2 0 59 2 2 0 61 4 29 0 64 4 29 0 71 2 2 0 75 2 2 0 78 2 2 0 79 4 29 0 81 2 2 0 97 2 2 0 98 4 29 0 109 4 29 0 110 2 2 0 113 2 2 0 115 2 2 0 117 2 2 0 122 2 2 0 128 2 2 0 129 4 29 0 130 4 1 0 131 2 2 0 132 0 79 0 133 0 83 0 134 2 2 0 135 4 29 0 136 4 29 0 137 2 2 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 2 2 1 135] 
#[0 2 6 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 2 10 0 39 2 10 0 40 2 10 0 41 2 10 0 48 2 10 0 49 4 29 0 58 2 10 0 61 4 29 0 64 4 29 0 71 2 10 0 79 4 29 0 81 4 29 0 109 4 29 0 110 2 10 0 122 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 6 93 0 135 4 29 0 136 4 29 0 137 2 10 0 138 4 21 0 139 6 97 1 100 4 25 1 121 4 29 1 127 4 29 1 128 2 10 1 135] 
#[1 6 101 0 122 6 41 0 138] 
#[1 2 14 0 40 6 105 0 41 2 14 0 49 6 41 0 138 6 109 1 85] 
#[1 4 233 0 5 6 113 0 9 6 117 0 10] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 6 121 0 36 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 6 125 0 5 6 129 0 36] 
#[1 3 181 0 2 4 29 0 4 2 18 0 5 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 2 18 0 36 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[0 2 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 3 181 0 2 4 29 0 4 2 26 0 5 3 189 0 6 6 133 0 7 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 2 26 0 132 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 6 137 0 5 6 141 0 132] 
#[0 2 30 0 5 0 132] 
#[1 3 181 0 2 2 34 0 3 4 29 0 4 2 34 0 5 3 189 0 6 2 34 0 7 4 29 0 8 2 34 0 9 2 34 0 10 0 87 0 11 0 91 0 12 0 95 0 13 0 99 0 14 2 34 0 18 2 34 0 20 2 34 0 30 2 34 0 33 4 29 0 35 2 34 0 36 2 34 0 37 2 34 0 39 2 34 0 40 2 34 0 41 2 34 0 48 2 34 0 49 2 34 0 57 0 103 0 58 2 34 0 59 2 34 0 61 2 34 0 64 4 29 0 71 2 34 0 75 2 34 0 78 2 34 0 79 2 34 0 81 2 34 0 97 2 34 0 98 4 29 0 109 4 29 0 110 2 34 0 113 2 34 0 115 2 34 0 117 2 34 0 122 2 34 0 128 2 34 0 129 2 34 0 130 4 1 0 131 2 34 0 132 0 107 0 133 0 111 0 134 2 34 0 135 2 34 0 136 2 34 0 137 2 34 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 2 34 1 135] 
#[1 3 181 0 2 2 38 0 3 4 29 0 4 2 38 0 5 3 189 0 6 2 38 0 7 4 29 0 8 2 38 0 9 2 38 0 10 0 115 0 11 0 119 0 12 0 123 0 13 0 127 0 14 2 38 0 18 2 38 0 20 2 38 0 30 2 38 0 33 4 29 0 35 2 38 0 36 2 38 0 37 2 38 0 39 2 38 0 40 2 38 0 41 2 38 0 48 2 38 0 49 2 38 0 57 0 131 0 58 2 38 0 59 2 38 0 61 2 38 0 64 4 29 0 71 2 38 0 75 2 38 0 78 2 38 0 79 2 38 0 81 2 38 0 97 2 38 0 98 4 29 0 109 4 29 0 110 2 38 0 113 2 38 0 115 2 38 0 117 2 38 0 122 2 38 0 128 2 38 0 129 2 38 0 130 4 1 0 131 2 38 0 132 0 135 0 133 0 139 0 134 2 38 0 135 2 38 0 136 2 38 0 137 2 38 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 2 38 1 135] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 145 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 6 145 1 106 6 145 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 149 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 6 149 1 106 6 149 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[0 6 153 0 40] 
#[1 0 105 0 2 6 157 0 3 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 161 1 109 1 25 1 110 6 161 1 111 6 161 1 112 1 37 1 113 6 161 1 114 1 45 1 115 6 161 1 116 1 53 1 117 6 161 1 118 1 61 1 123 6 161 1 124 6 165 1 125 6 169 1 126 1 69 1 134] 
#[0 2 42 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[1 6 173 0 1 6 177 0 140] 
#[0 2 46 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 181 1 109 1 25 1 110 6 181 1 111 6 181 1 112 1 37 1 113 6 181 1 114 1 45 1 115 6 181 1 116 1 53 1 117 6 181 1 118 1 61 1 123 6 181 1 124 1 69 1 134] 
#[0 2 50 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 54 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 58 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 62 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 134] 
#[0 2 66 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 70 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 74 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 78 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 82 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 86 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 90 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 94 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 98 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 102 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 185 1 109 1 25 1 110 6 185 1 111 6 185 1 112 1 37 1 113 6 185 1 114 1 45 1 115 6 185 1 116 1 53 1 117 6 185 1 118 6 189 1 122 1 61 1 123 6 185 1 124 1 69 1 134] 
#[0 2 106 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 110 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 114 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 118 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 141 0 142 0 144 0 148 1 134] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 193 1 109 1 25 1 110 6 193 1 111 6 193 1 112 1 37 1 113 6 193 1 114 1 45 1 115 6 193 1 116 1 53 1 117 6 193 1 118 1 61 1 123 6 193 1 124 1 69 1 134] 
#[0 2 130 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 134] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 6 197 0 11] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 4 57 0 2 0 190 0 3 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 65 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 4 77 0 214 4 81 0 215 4 85 0 216 4 89 0 217 4 93 0 218 4 97 0 219 4 101 0 220 4 77 1 118 1 209 1 123 1 213 1 134] 
#[1 2 150 0 3 2 150 0 5 6 201 0 14] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 8 6 205 0 9 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 18 0 206 0 20 0 206 0 35 0 206 0 58 0 206 0 64 0 206 0 71 0 206 0 81 0 206 0 109 0 206 0 110 0 206 0 130 0 206 0 133 0 206 0 134 0 206 0 136 0 206 0 137] 
#[1 6 209 0 3 6 213 0 5] 
#[0 2 154 0 3 0 5] 
#[1 4 185 0 2 2 158 0 3 4 193 0 4 2 158 0 5 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 6 217 0 14 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[0 6 221 0 3] 
#[1 2 162 0 3 6 225 0 5] 
#[0 2 166 0 3 0 5] 
#[1 2 170 0 3 6 233 0 138 6 233 1 91] 
#[1 2 174 0 3 0 143 0 138] 
#[0 2 178 0 3 0 138] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[1 4 185 0 2 2 182 0 3 2 182 0 4 2 182 0 5 4 189 0 6 2 182 0 7 2 182 0 8 2 182 0 9 2 182 0 10 0 147 0 11 0 151 0 12 0 155 0 13 2 182 0 14 2 182 0 16 2 182 0 18 2 182 0 20 2 182 0 21 2 182 0 23 2 182 0 27 2 182 0 30 2 182 0 31 2 182 0 33 2 182 0 35 2 182 0 36 2 182 0 39 2 182 0 40 2 182 0 41 2 182 0 48 2 182 0 49 2 182 0 52 2 182 0 57 0 159 0 58 2 182 0 59 2 182 0 61 2 182 0 64 2 182 0 65 2 182 0 71 2 182 0 75 2 182 0 78 2 182 0 79 2 182 0 81 2 182 0 88 2 182 0 90 2 182 0 97 2 182 0 98 2 182 0 105 2 182 0 109 2 182 0 110 2 182 0 113 2 182 0 116 2 182 0 119 2 182 0 122 2 182 0 124 2 182 0 128 2 182 0 129 2 182 0 130 2 182 0 131 2 182 0 132 0 163 0 133 0 167 0 134 2 182 0 136 2 182 0 137 2 182 0 138 4 193 1 128 2 182 1 135] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 6 241 0 184 6 241 0 188 1 149 0 193 6 241 0 195 6 241 0 196 6 241 0 198 6 241 0 202 6 241 0 203 1 173 0 205 6 241 0 211 1 181 0 212 1 185 0 213 1 189 0 214 6 241 0 245 6 241 0 246 6 241 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[0 6 245 0 9] 
#[1 4 185 0 2 2 186 0 3 4 193 0 4 2 186 0 5 4 189 0 6 2 186 0 7 4 193 0 8 2 186 0 9 2 186 0 10 0 171 0 11 0 175 0 12 0 179 0 13 2 186 0 14 2 186 0 16 4 193 0 18 4 193 0 20 2 186 0 21 2 186 0 23 2 186 0 27 2 186 0 30 2 186 0 31 2 186 0 33 4 193 0 35 2 186 0 36 2 186 0 39 2 186 0 40 2 186 0 41 2 186 0 48 2 186 0 49 2 186 0 52 2 186 0 57 0 183 0 58 2 186 0 59 2 186 0 61 4 193 0 64 2 186 0 65 4 193 0 71 2 186 0 75 2 186 0 78 2 186 0 79 4 193 0 81 2 186 0 88 2 186 0 90 2 186 0 97 2 186 0 98 2 186 0 105 4 193 0 109 4 193 0 110 2 186 0 113 2 186 0 116 2 186 0 119 2 186 0 122 2 186 0 124 2 186 0 128 2 186 0 129 4 193 0 130 2 186 0 131 2 186 0 132 0 187 0 133 0 191 0 134 4 193 0 136 4 193 0 137 2 186 0 138 4 193 1 128 2 186 1 135] 
#[1 6 249 0 78 2 190 0 138 6 253 1 6] 
#[0 7 1 0 50] 
#[1 7 5 0 52 7 9 0 90] 
#[1 7 13 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 7 17 0 211 1 181 0 212 1 185 0 213 7 21 0 214 7 21 1 118 1 209 1 123 1 213 1 134] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 4 209 0 11 1 26 0 14 1 26 0 16 1 26 0 21 1 26 0 23 1 26 0 24 1 26 0 26 1 26 0 27 1 26 0 28 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 36 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 48 1 26 0 49 1 26 0 52 1 26 0 57 1 26 0 58 1 26 0 59 1 26 0 61 1 26 0 65 1 26 0 75 1 26 0 78 1 26 0 79 1 26 0 88 1 26 0 89 1 26 0 90 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 95 1 26 0 97 1 26 0 98 1 26 0 105 1 26 0 113 1 26 0 114 1 26 0 116 1 26 0 119 1 26 0 122 1 26 0 124 1 26 0 128 1 26 0 129 1 26 0 131 1 26 0 132 1 26 0 133 1 26 0 138 1 26 0 140 7 25 0 180 1 26 1 135] 
#[1 2 194 0 3 2 194 0 5 7 29 0 6 2 194 0 10 2 194 0 14 2 194 0 16 2 194 0 21 2 194 0 23 2 194 0 27 2 194 0 30 2 194 0 31 2 194 0 33 2 194 0 36 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 48 2 194 0 49 2 194 0 52 2 194 0 57 2 194 0 58 2 194 0 59 2 194 0 61 2 194 0 65 2 194 0 75 2 194 0 78 2 194 0 79 2 194 0 88 2 194 0 90 2 194 0 97 2 194 0 98 2 194 0 105 2 194 0 113 2 194 0 116 2 194 0 119 2 194 0 122 2 194 0 124 2 194 0 128 2 194 0 129 2 194 0 131 2 194 0 132 2 194 0 133 2 194 0 138 2 194 1 135] 
#[1 4 185 0 2 2 198 0 3 4 193 0 4 2 198 0 5 4 189 0 6 2 198 0 7 4 193 0 8 2 198 0 9 2 198 0 10 0 195 0 11 0 199 0 12 0 203 0 13 2 198 0 14 2 198 0 16 2 198 0 18 2 198 0 20 2 198 0 21 2 198 0 23 2 198 0 27 2 198 0 30 2 198 0 31 2 198 0 33 4 193 0 35 2 198 0 36 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 48 2 198 0 49 2 198 0 52 2 198 0 57 0 207 0 58 2 198 0 59 2 198 0 61 2 198 0 64 2 198 0 65 4 193 0 71 2 198 0 75 2 198 0 78 2 198 0 79 2 198 0 81 2 198 0 88 2 198 0 90 2 198 0 97 2 198 0 98 2 198 0 105 4 193 0 109 4 193 0 110 2 198 0 113 2 198 0 116 2 198 0 119 2 198 0 122 2 198 0 124 2 198 0 128 2 198 0 129 2 198 0 130 2 198 0 131 2 198 0 132 0 211 0 133 0 215 0 134 2 198 0 136 2 198 0 137 2 198 0 138 4 193 1 128 2 198 1 135] 
#[1 4 185 0 2 2 202 0 3 4 193 0 4 2 202 0 5 4 189 0 6 2 202 0 7 4 193 0 8 2 202 0 9 2 202 0 10 0 219 0 11 0 223 0 12 0 227 0 13 2 202 0 14 2 202 0 16 2 202 0 18 2 202 0 20 2 202 0 21 2 202 0 23 2 202 0 27 2 202 0 30 2 202 0 31 2 202 0 33 4 193 0 35 2 202 0 36 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 48 2 202 0 49 2 202 0 52 2 202 0 57 0 231 0 58 2 202 0 59 2 202 0 61 2 202 0 64 2 202 0 65 4 193 0 71 2 202 0 75 2 202 0 78 2 202 0 79 2 202 0 81 2 202 0 88 2 202 0 90 2 202 0 97 2 202 0 98 2 202 0 105 4 193 0 109 4 193 0 110 2 202 0 113 2 202 0 116 2 202 0 119 2 202 0 122 2 202 0 124 2 202 0 128 2 202 0 129 2 202 0 130 2 202 0 131 2 202 0 132 0 235 0 133 0 239 0 134 2 202 0 136 2 202 0 137 2 202 0 138 4 193 1 128 2 202 1 135] 
#[0 0 222 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 2 206 0 3 2 206 0 5 2 206 0 10 2 206 0 14 2 206 0 16 2 206 0 21 2 206 0 23 2 206 0 27 2 206 0 30 2 206 0 31 2 206 0 33 2 206 0 36 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 48 2 206 0 49 2 206 0 52 2 206 0 57 2 206 0 58 2 206 0 59 2 206 0 61 2 206 0 65 2 206 0 75 2 206 0 78 2 206 0 79 2 206 0 88 2 206 0 90 2 206 0 97 2 206 0 98 2 206 0 105 2 206 0 113 2 206 0 116 2 206 0 119 2 206 0 122 2 206 0 124 2 206 0 128 2 206 0 129 4 201 0 131 2 206 0 132 2 206 0 133 2 206 0 138 2 206 1 135] 
#[0 7 33 0 141] 
#[0 2 210 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 2 214 0 78 7 37 0 131 7 41 0 248] 
#[1 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 7 45 0 204 7 49 0 228 7 53 0 238] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 7 57 0 212 1 185 0 213 1 189 0 214 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 7 61 0 214 7 65 0 221 7 61 1 118 1 209 1 123 1 213 1 134] 
#[0 7 69 0 141] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 7 73 0 214 7 73 1 118 1 209 1 123 1 213 1 134] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 7 77 0 184 7 77 0 188 1 149 0 193 7 77 0 195 7 77 0 196 7 77 0 198 7 77 0 202 7 77 0 203 1 173 0 205 7 77 0 211 1 181 0 212 1 185 0 213 1 189 0 214 7 77 0 245 7 77 0 246 7 77 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 7 81 0 214 7 81 1 118 1 209 1 123 1 213 1 134] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 7 85 0 132 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 7 89 0 140 7 93 0 181 7 97 0 182] 
#[0 7 101 0 14] 
#[1 4 209 0 11 1 26 0 14 7 105 0 180] 
#[0 2 222 0 26 0 28 0 32 0 52 0 90 0 131 0 140] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 7 109 0 184 7 109 0 188 1 149 0 193 7 109 0 195 7 109 0 196 7 109 0 198 7 109 0 202 7 109 0 203 1 173 0 205 7 109 0 211 1 181 0 212 1 185 0 213 1 189 0 214 7 109 0 245 7 109 0 246 7 109 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[0 7 113 0 14] 
#[0 7 117 0 140] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 7 121 0 184 7 121 0 188 1 149 0 193 7 121 0 195 7 121 0 196 7 121 0 198 7 121 0 202 7 121 0 203 1 173 0 205 7 121 0 211 1 181 0 212 1 185 0 213 1 189 0 214 7 121 0 245 7 121 0 246 7 121 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 2 226 0 3 4 233 0 5 7 125 0 9 2 226 0 132 2 226 0 138 2 226 1 135] 
#[1 4 141 0 140 7 129 0 237] 
#[1 4 141 0 140 7 133 0 237] 
#[1 4 141 0 140 7 137 0 237] 
#[1 4 141 0 140 7 141 0 237] 
#[1 4 141 0 140 7 145 0 237] 
#[0 2 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 2 234 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 2 238 0 3 2 238 0 21 2 238 0 23 2 238 0 24 2 238 0 26 2 238 0 27 2 238 0 28 2 238 0 32 2 238 0 40 5 117 0 44 5 121 0 51 2 238 0 52 2 238 0 65 2 238 0 89 2 238 0 90 2 238 0 92 2 238 0 93 2 238 0 94 2 238 0 95 2 238 0 105 2 238 0 114 2 238 0 116 2 238 0 119 2 238 0 124 2 238 0 131 2 238 0 140 5 133 1 29 2 238 1 135] 
#[0 2 242 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 2 246 0 3 2 246 0 21 2 246 0 23 2 246 0 24 2 246 0 26 2 246 0 27 2 246 0 28 2 246 0 32 2 246 0 40 5 117 0 44 5 121 0 51 2 246 0 52 2 246 0 65 2 246 0 89 2 246 0 90 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 95 2 246 0 105 2 246 0 114 2 246 0 116 2 246 0 119 2 246 0 124 2 246 0 131 2 246 0 140 5 137 1 29 2 246 1 135] 
#[0 2 250 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 2 254 0 3 2 254 0 21 2 254 0 23 2 254 0 24 2 254 0 26 2 254 0 27 2 254 0 28 2 254 0 32 2 254 0 40 2 254 0 43 2 254 0 48 2 254 0 52 2 254 0 56 2 254 0 61 2 254 0 65 2 254 0 89 2 254 0 90 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 95 2 254 0 105 2 254 0 114 2 254 0 116 2 254 0 119 2 254 0 124 2 254 0 131 1 237 0 140 7 149 0 173 2 254 1 135] 
#[0 3 2 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 3 77 0 2 7 29 0 6 0 54 0 138 7 153 0 197] 
#[1 3 77 0 2 7 29 0 6 0 54 0 138 7 157 0 197] 
#[1 3 77 0 2 7 29 0 6 0 54 0 9 7 161 0 14 0 54 0 138 7 165 0 197] 
#[1 3 77 0 2 7 29 0 6 7 169 0 14 0 54 0 138 7 173 0 197] 
#[1 3 6 0 9 3 6 0 30 3 6 0 33 3 6 0 57 3 6 0 59 3 6 0 75 3 6 0 97 3 6 0 98 3 6 0 113 3 6 0 128 3 6 0 129 7 177 0 131 3 6 0 138 7 181 1 15] 
#[1 3 10 0 3 3 10 0 21 3 10 0 23 3 10 0 24 3 10 0 26 3 10 0 27 3 10 0 28 3 10 0 32 3 10 0 40 3 10 0 43 3 10 0 48 3 10 0 52 3 10 0 56 3 10 0 61 3 10 0 65 3 10 0 89 3 10 0 90 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 95 3 10 0 105 3 10 0 114 3 10 0 116 3 10 0 119 3 10 0 124 3 10 0 131 1 245 0 140 1 249 1 34 7 185 1 74 3 10 1 135] 
#[0 3 14 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 3 18 0 3 3 18 0 21 3 18 0 23 3 18 0 24 3 18 0 26 3 18 0 27 3 18 0 28 3 18 0 32 3 18 0 40 3 18 0 43 3 18 0 48 3 18 0 52 3 18 0 56 3 18 0 61 3 18 0 65 3 18 0 89 3 18 0 90 3 18 0 92 3 18 0 93 3 18 0 94 3 18 0 95 3 18 0 105 3 18 0 114 3 18 0 116 3 18 0 119 3 18 0 124 1 217 0 131 1 221 0 140 7 189 0 179 1 229 0 241 1 233 0 242 3 18 1 135] 
#[0 3 22 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 3 26 0 3 3 26 0 21 3 26 0 23 3 26 0 24 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 32 3 26 0 40 3 26 0 43 3 26 0 48 3 26 0 52 3 26 0 56 3 26 0 61 3 26 0 65 3 26 0 89 3 26 0 90 3 26 0 92 3 26 0 93 3 26 0 94 3 26 0 95 3 26 0 105 3 26 0 114 3 26 0 116 3 26 0 119 3 26 0 124 3 26 0 131 1 245 0 140 1 249 1 34 7 185 1 74 3 26 1 135] 
#[1 4 245 0 28 4 249 0 32 4 253 0 52 5 1 0 80 5 5 0 90 5 13 1 50 5 17 1 52 5 21 1 58 5 25 1 60] 
#[0 3 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 3 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 3 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 3 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 3 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 3 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 3 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 7 193 0 184 7 193 0 188 1 149 0 193 7 193 0 195 7 193 0 196 7 193 0 198 7 193 0 202 7 193 0 203 1 173 0 205 7 193 0 211 1 181 0 212 1 185 0 213 1 189 0 214 7 193 0 245 7 193 0 246 7 193 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 7 197 0 138 7 201 0 140 7 205 0 144] 
#[0 7 209 0 138] 
#[1 3 58 0 3 3 58 0 17 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 61 3 58 0 62 3 58 0 67 3 58 0 70 3 58 0 74 3 58 0 83 3 58 0 84 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 95 3 58 0 101 3 58 0 102 3 58 0 105 3 58 0 106 3 58 0 111 3 58 0 112 3 58 0 114 3 58 0 116 3 58 0 119 3 58 0 121 3 58 0 124 3 58 0 125 3 58 0 131 3 58 0 140 7 213 1 25 3 58 1 135] 
#[1 3 58 0 3 3 58 0 17 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 61 3 58 0 62 3 58 0 67 3 58 0 70 3 58 0 74 3 58 0 83 3 58 0 84 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 95 3 58 0 101 3 58 0 102 3 58 0 105 3 58 0 106 3 58 0 111 3 58 0 112 3 58 0 114 3 58 0 116 3 58 0 119 3 58 0 121 3 58 0 124 3 58 0 125 3 58 0 131 3 58 0 140 7 217 1 25 3 58 1 135] 
#[1 3 58 0 3 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 74 3 58 0 83 3 58 0 84 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 95 3 58 0 101 3 58 0 102 3 58 0 105 3 58 0 106 3 58 0 111 3 58 0 112 3 58 0 114 3 58 0 116 3 58 0 119 3 58 0 121 3 58 0 124 3 58 0 125 3 58 0 131 3 58 0 140 7 221 1 25 3 58 1 135] 
#[1 3 58 0 3 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 74 3 58 0 83 3 58 0 84 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 95 3 58 0 101 3 58 0 102 3 58 0 105 3 58 0 106 3 58 0 111 3 58 0 112 3 58 0 114 3 58 0 116 3 58 0 119 3 58 0 121 3 58 0 124 3 58 0 125 3 58 0 131 3 58 0 140 7 225 1 25 3 58 1 135] 
#[1 3 58 0 3 3 58 0 17 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 61 3 58 0 62 3 58 0 67 3 58 0 70 3 58 0 74 3 58 0 83 3 58 0 84 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 95 3 58 0 101 3 58 0 102 3 58 0 105 3 58 0 106 3 58 0 111 3 58 0 112 3 58 0 114 3 58 0 116 3 58 0 119 3 58 0 121 3 58 0 124 3 58 0 125 3 58 0 131 3 58 0 140 7 229 1 25 3 58 1 135] 
#[0 7 233 0 140] 
#[0 3 62 0 14 0 31 0 138] 
#[0 3 66 0 14 0 31 0 138] 
#[0 7 237 0 138] 
#[0 7 241 0 138] 
#[0 3 70 0 104] 
#[0 7 245 0 138] 
#[0 7 249 0 138] 
#[1 2 225 0 140 7 253 0 167 3 1 0 168] 
#[0 3 74 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 8 1 0 144] 
#[0 8 5 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 8 9 0 43 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 8 13 0 156 3 33 1 67 3 37 1 68 8 17 1 131] 
#[1 8 21 0 5 8 25 0 138] 
#[1 3 78 0 5 5 145 0 6 3 78 0 138] 
#[1 2 225 0 140 8 29 0 166 2 253 0 167 3 1 0 168] 
#[1 8 33 0 40 8 37 1 133] 
#[1 3 82 0 27 3 82 0 40 3 82 0 48 3 82 0 52 3 82 0 56 3 82 0 61 3 82 0 90 3 82 0 105 3 82 0 116 3 82 0 119 3 82 0 124 8 41 0 169] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 90 0 6 0 105 0 6 0 116 0 6 0 119 0 61 0 123 0 6 0 124 8 45 0 165] 
#[1 3 86 0 40 3 86 0 48 8 49 0 61 8 53 1 129] 
#[0 3 90 1 135] 
#[1 1 245 0 140 8 57 1 34] 
#[1 8 61 0 140 8 65 0 175 8 69 0 176] 
#[0 3 94 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 98 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 102 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 106 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 110 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 8 73 1 67 3 37 1 68] 
#[0 3 114 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 118 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 8 77 1 67 3 37 1 68] 
#[0 3 122 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 126 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 3 130 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 8 81 0 138] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 3 138 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 85 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 8 85 1 106 8 85 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 8 89 0 214 8 93 1 92 8 97 1 93 8 101 1 94 8 105 1 95 8 109 1 96 8 113 1 97 8 89 1 118 1 209 1 123 1 213 1 134] 
#[1 8 117 0 9 3 142 0 10 3 142 0 58] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 121 1 109 1 25 1 110 8 121 1 111 8 121 1 112 1 37 1 113 8 121 1 114 1 45 1 115 8 121 1 116 1 53 1 117 8 121 1 118 1 61 1 123 8 121 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 125 1 109 1 25 1 110 8 125 1 111 8 125 1 112 1 37 1 113 8 125 1 114 1 45 1 115 8 125 1 116 1 53 1 117 8 125 1 118 1 61 1 123 8 125 1 124 1 69 1 134] 
#[0 8 129 0 3] 
#[1 3 146 0 3 3 146 0 132 8 133 0 138] 
#[0 3 150 0 3 0 132 0 138] 
#[0 3 154 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 137 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 8 137 1 106 8 137 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[1 0 105 0 2 8 141 0 3 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 161 1 109 1 25 1 110 6 161 1 111 6 161 1 112 1 37 1 113 6 161 1 114 1 45 1 115 6 161 1 116 1 53 1 117 6 161 1 118 1 61 1 123 6 161 1 124 8 145 1 125 6 169 1 126 1 69 1 134] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 8 149 0 9 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 8 153 0 9 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 4 141 0 140 8 157 0 237] 
#[0 3 158 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 161 1 109 1 25 1 110 8 161 1 111 8 161 1 112 1 37 1 113 8 161 1 114 1 45 1 115 8 161 1 116 1 53 1 117 8 161 1 118 1 61 1 123 8 161 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 8 165 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 169 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 8 173 1 86 8 177 1 87 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 3 162 0 40 8 181 0 49 8 185 1 89] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 8 189 0 184 8 189 0 188 1 149 0 193 8 189 0 195 8 189 0 196 8 189 0 198 8 189 0 202 8 189 0 203 1 173 0 205 8 189 0 211 1 181 0 212 1 185 0 213 1 189 0 214 8 189 0 245 8 189 0 246 8 189 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 193 1 109 1 25 1 110 8 193 1 111 8 193 1 112 1 37 1 113 8 193 1 114 1 45 1 115 8 193 1 116 1 53 1 117 8 193 1 118 1 61 1 123 8 193 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 197 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 8 197 1 106 8 197 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 201 1 109 1 25 1 110 8 201 1 111 8 201 1 112 1 37 1 113 8 201 1 114 1 45 1 115 8 201 1 116 1 53 1 117 8 201 1 118 1 61 1 123 8 201 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 205 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 8 205 1 106 8 205 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 8 209 1 109 1 25 1 110 8 209 1 111 8 209 1 112 1 37 1 113 8 209 1 114 1 45 1 115 8 209 1 116 1 53 1 117 8 209 1 118 1 61 1 123 8 209 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 3 149 1 109 1 25 1 110 3 149 1 111 3 149 1 112 1 37 1 113 3 149 1 114 1 45 1 115 3 149 1 116 1 53 1 117 3 149 1 118 8 213 1 120 1 61 1 123 3 149 1 124 1 69 1 134] 
#[0 3 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 3 170 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 3 174 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 3 178 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 3 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 3 181 0 2 3 186 0 3 4 29 0 4 3 186 0 5 3 189 0 6 4 29 0 8 3 186 0 9 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 8 217 0 3 8 221 0 5] 
#[1 3 190 0 3 3 190 0 5 8 225 0 9] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 3 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 3 181 0 2 3 202 0 3 4 29 0 4 3 202 0 5 3 189 0 6 3 202 0 7 4 29 0 8 3 202 0 9 3 197 0 10 0 243 0 11 0 247 0 12 0 251 0 13 0 255 0 14 4 29 0 18 4 29 0 20 3 202 0 30 3 202 0 33 4 29 0 35 3 202 0 36 3 202 0 37 3 202 0 39 3 202 0 40 3 202 0 41 3 202 0 48 3 202 0 49 3 202 0 57 1 3 0 58 3 202 0 59 3 202 0 61 4 29 0 64 4 29 0 71 3 202 0 75 3 202 0 78 3 202 0 79 4 29 0 81 3 202 0 97 3 202 0 98 4 29 0 109 4 29 0 110 3 202 0 113 3 202 0 115 3 202 0 117 3 202 0 122 3 202 0 128 3 202 0 129 4 29 0 130 4 1 0 131 3 202 0 132 1 7 0 133 1 11 0 134 3 202 0 135 4 29 0 136 4 29 0 137 3 202 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 3 202 1 135] 
#[1 3 181 0 2 4 29 0 4 3 206 0 5 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 3 206 0 132 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 8 229 0 5 8 233 0 132] 
#[1 3 181 0 2 3 210 0 3 4 29 0 4 3 210 0 5 3 189 0 6 3 210 0 7 4 29 0 8 3 210 0 9 3 197 0 10 1 15 0 11 1 19 0 12 1 23 0 13 1 27 0 14 4 29 0 18 4 29 0 20 3 210 0 30 3 210 0 33 4 29 0 35 3 210 0 36 3 210 0 37 3 210 0 39 3 210 0 40 3 210 0 41 3 210 0 48 3 210 0 49 3 210 0 57 1 31 0 58 3 210 0 59 3 210 0 61 4 29 0 64 4 29 0 71 3 210 0 75 3 210 0 78 3 210 0 79 4 29 0 81 3 210 0 97 3 210 0 98 4 29 0 109 4 29 0 110 3 210 0 113 3 210 0 115 3 210 0 117 3 210 0 122 3 210 0 128 3 210 0 129 4 29 0 130 4 1 0 131 3 210 0 132 1 35 0 133 1 39 0 134 3 210 0 135 4 29 0 136 4 29 0 137 3 210 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 3 210 1 135] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 193 0 184 8 237 0 188 8 241 0 192 1 149 0 193 1 193 0 195 1 193 0 196 8 237 0 198 8 237 0 202 8 237 0 203 1 173 0 205 8 237 0 211 1 181 0 212 1 185 0 213 1 189 0 214 1 193 0 245 8 237 0 246 8 237 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 8 245 0 214 8 245 1 118 1 209 1 123 1 213 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 8 249 0 214 8 249 1 118 1 209 1 123 1 213 1 134] 
#[0 3 214 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 4 61 0 140 8 253 0 186] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 9 1 0 214 9 1 1 118 1 209 1 123 1 213 1 134] 
#[0 3 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 4 77 0 214 9 5 0 217 4 77 1 118 1 209 1 123 1 213 1 134] 
#[0 3 222 0 3] 
#[0 9 9 0 3] 
#[1 9 13 0 141 9 17 0 220] 
#[1 3 226 0 3 3 226 0 5 3 226 0 10 3 226 0 14 4 197 0 16 3 226 0 21 3 226 0 23 3 226 0 27 3 226 0 30 3 226 0 31 3 226 0 33 3 226 0 36 3 226 0 39 3 226 0 40 3 226 0 41 3 226 0 48 3 226 0 49 3 226 0 52 3 226 0 57 3 226 0 58 3 226 0 59 3 226 0 61 3 226 0 65 3 226 0 75 3 226 0 78 3 226 0 79 3 226 0 88 3 226 0 90 3 226 0 97 3 226 0 98 3 226 0 105 3 226 0 113 3 226 0 116 3 226 0 119 3 226 0 122 3 226 0 124 3 226 0 128 3 226 0 129 4 201 0 131 3 226 0 132 3 226 0 133 3 226 0 138 3 226 1 135] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 9 21 0 184 9 21 0 188 1 149 0 193 9 21 0 195 9 21 0 196 9 21 0 198 9 21 0 202 9 21 0 203 1 173 0 205 9 21 0 211 1 181 0 212 1 185 0 213 1 189 0 214 9 21 0 245 9 21 0 246 9 21 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[0 9 25 0 77] 
#[0 9 29 0 138] 
#[1 4 141 0 140 9 33 0 237] 
#[1 3 77 0 2 0 54 0 9 9 37 0 197] 
#[1 3 77 0 2 0 54 0 138 9 41 0 197] 
#[1 4 57 0 2 0 190 0 3 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 9 45 0 141 1 185 0 142 1 209 0 144 1 137 0 148 9 49 0 199 1 185 0 213 4 77 0 214 4 81 0 215 4 85 0 216 4 89 0 217 4 93 0 218 4 97 0 219 4 101 0 220 4 77 1 118 1 209 1 123 1 213 1 134] 
#[0 3 230 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 4 185 0 2 3 234 0 3 4 193 0 4 3 234 0 5 4 189 0 6 1 2 0 7 4 193 0 8 3 234 0 10 4 193 0 11 4 193 0 12 4 193 0 13 3 234 0 14 3 234 0 16 4 193 0 18 4 193 0 20 3 234 0 21 3 234 0 23 3 234 0 27 3 234 0 30 3 234 0 31 3 234 0 33 4 193 0 35 3 234 0 36 3 234 0 39 3 234 0 40 3 234 0 41 3 234 0 48 3 234 0 49 3 234 0 52 3 234 0 57 1 43 0 58 3 234 0 59 3 234 0 61 4 193 0 64 3 234 0 65 4 193 0 71 3 234 0 75 3 234 0 78 3 234 0 79 4 193 0 81 3 234 0 88 3 234 0 90 3 234 0 97 3 234 0 98 3 234 0 105 4 193 0 109 4 193 0 110 3 234 0 113 3 234 0 116 3 234 0 119 3 234 0 122 3 234 0 124 3 234 0 128 3 234 0 129 4 193 0 130 3 234 0 131 3 234 0 132 1 47 0 133 4 193 0 134 4 193 0 136 4 193 0 137 3 234 0 138 4 193 1 128 3 234 1 135] 
#[0 3 238 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 9 53 0 140] 
#[0 3 242 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 9 69 0 211 1 181 0 212 1 185 0 213 9 61 0 214 9 65 0 249 9 69 0 250 9 61 1 118 1 209 1 123 1 213 1 134] 
#[0 9 73 0 78] 
#[0 9 77 0 40] 
#[1 3 246 0 3 3 246 0 24 3 246 0 40 3 246 0 89 3 246 0 93 3 246 0 94 3 246 0 95 3 246 0 114 9 81 0 229] 
#[1 3 250 0 3 3 250 0 24 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 3 250 0 40 2 37 0 52 3 250 0 89 2 41 0 90 2 45 0 92 3 250 0 93 3 250 0 94 3 250 0 95 3 250 0 114 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 9 85 0 171 9 85 0 177 9 85 0 239 9 85 0 240 2 77 0 241 1 233 0 242 9 85 0 243 9 85 0 244 9 85 1 0 9 85 1 1 9 85 1 2 9 85 1 3 9 85 1 4 9 85 1 5 9 85 1 7 9 85 1 8 9 85 1 9 9 85 1 11 2 129 1 12 9 85 1 13 2 137 1 34 9 85 1 42 2 145 1 43 9 85 1 45 2 153 1 46 9 85 1 49 2 161 1 50 9 85 1 51 2 169 1 52 9 85 1 54 9 85 1 55 9 85 1 57 2 185 1 58 9 85 1 59 2 193 1 60 9 85 1 62 9 85 1 63 9 85 1 65 2 209 1 66 9 85 1 71 2 217 1 72] 
#[0 3 254 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 4 185 0 2 4 2 0 3 4 193 0 4 4 2 0 5 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 9 89 0 3 9 93 0 5] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[1 4 185 0 2 4 10 0 3 4 193 0 4 4 10 0 5 4 189 0 6 4 10 0 7 4 193 0 8 4 10 0 9 4 10 0 10 1 51 0 11 1 55 0 12 1 59 0 13 4 10 0 14 4 10 0 16 4 193 0 18 4 193 0 20 4 10 0 21 4 10 0 23 4 10 0 27 4 10 0 30 4 10 0 31 4 10 0 33 4 193 0 35 4 10 0 36 4 10 0 39 4 10 0 40 4 10 0 41 4 10 0 48 4 10 0 49 4 10 0 52 4 10 0 57 1 63 0 58 4 10 0 59 4 10 0 61 4 193 0 64 4 10 0 65 4 193 0 71 4 10 0 75 4 10 0 78 4 10 0 79 4 193 0 81 4 10 0 88 4 10 0 90 4 10 0 97 4 10 0 98 4 10 0 105 4 193 0 109 4 193 0 110 4 10 0 113 4 10 0 116 4 10 0 119 4 10 0 122 4 10 0 124 4 10 0 128 4 10 0 129 4 193 0 130 4 10 0 131 4 10 0 132 1 67 0 133 1 71 0 134 4 193 0 136 4 193 0 137 4 10 0 138 4 193 1 128 4 10 1 135] 
#[1 4 14 0 3 4 14 0 5 4 14 0 10 4 14 0 14 4 14 0 21 4 14 0 23 4 14 0 27 4 14 0 30 4 14 0 31 4 14 0 33 4 14 0 36 4 14 0 39 4 14 0 40 4 14 0 41 4 14 0 48 4 14 0 49 4 14 0 52 4 14 0 57 4 14 0 58 4 14 0 59 4 14 0 61 4 14 0 65 4 14 0 75 4 14 0 78 4 14 0 79 4 14 0 88 4 14 0 90 4 14 0 97 4 14 0 98 4 14 0 105 4 14 0 113 4 14 0 116 4 14 0 119 4 14 0 122 4 14 0 124 4 14 0 128 4 14 0 129 4 201 0 131 4 14 0 132 4 14 0 133 4 14 0 138 4 14 1 135] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 9 97 0 132 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[0 4 18 0 26 0 28 0 32 0 52 0 90 0 131 0 140 1 135] 
#[1 4 22 0 5 9 101 0 9 4 22 0 133] 
#[1 9 105 0 5 9 109 0 133] 
#[0 4 26 0 5 0 133] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 9 113 0 26 9 173 0 34 1 81 0 46 1 85 0 52 9 173 0 63 1 89 0 76 9 125 0 77 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 9 129 0 183 9 133 0 184 9 137 0 187 9 141 0 188 1 149 0 193 9 145 0 195 9 149 0 196 9 141 0 198 9 137 0 201 9 141 0 202 9 141 0 203 1 173 0 205 9 141 0 211 1 181 0 212 1 185 0 213 1 189 0 214 9 137 0 222 9 137 0 223 9 137 0 226 1 193 0 245 9 141 0 246 9 141 0 247 9 137 0 251 9 173 0 252 1 189 1 118 1 209 1 123 1 213 1 134] 
#[0 9 177 0 14] 
#[1 4 30 0 14 4 197 0 16 4 30 0 21 4 30 0 23 4 30 0 27 4 30 0 30 4 30 0 33 4 30 0 36 4 30 0 52 4 30 0 57 4 30 0 59 4 30 0 65 4 30 0 75 4 30 0 78 4 30 0 90 4 30 0 97 4 30 0 98 4 30 0 105 4 30 0 113 4 30 0 116 4 30 0 119 4 30 0 124 4 30 0 128 4 30 0 129 4 201 0 131 4 30 0 138] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 9 181 0 214 9 181 1 118 1 209 1 123 1 213 1 134] 
#[0 4 34 0 3 0 5 0 9 0 10 0 132 0 138 1 135] 
#[1 1 206 0 14 4 197 0 16 9 185 0 31 9 185 0 88 4 201 0 131 1 206 0 138 9 185 0 194] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 9 189 0 184 9 189 0 188 1 149 0 193 9 189 0 195 9 189 0 196 9 189 0 198 9 189 0 202 9 189 0 203 1 173 0 205 9 189 0 211 1 181 0 212 1 185 0 213 1 189 0 214 9 189 0 245 9 189 0 246 9 189 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 3 77 0 2 7 29 0 6 0 54 0 138 9 193 0 197] 
#[1 3 77 0 2 7 29 0 6 0 54 0 138 9 197 0 197] 
#[1 3 77 0 2 7 29 0 6 0 54 0 9 0 54 0 138 7 165 0 197] 
#[1 3 77 0 2 7 29 0 6 0 54 0 9 0 54 0 138 9 201 0 197] 
#[1 3 77 0 2 7 29 0 6 0 54 0 138 7 173 0 197] 
#[0 4 38 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 9 205 0 138] 
#[0 9 209 0 138] 
#[0 9 213 0 140] 
#[1 4 225 0 9 1 34 0 138 9 217 1 10] 
#[0 9 221 0 140] 
#[0 9 225 0 138] 
#[1 2 17 0 27 2 17 0 82 2 17 0 124 1 242 0 132 0 22 0 140 9 229 1 31 6 65 1 32 6 69 1 33 2 17 1 36] 
#[1 4 225 0 9 1 34 0 30 1 34 0 33 1 34 0 57 1 34 0 59 1 34 0 75 1 34 0 97 1 34 0 98 1 34 0 113 1 34 0 128 1 34 0 129 1 34 0 138 9 233 1 10] 
#[0 4 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 4 46 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 4 197 0 16 9 237 0 31 9 237 0 88 4 201 0 131 1 206 0 138 9 237 0 194] 
#[0 4 50 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[1 9 241 0 72 9 245 0 138] 
#[1 9 249 0 72 9 253 0 138] 
#[0 4 54 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[1 4 58 0 3 10 109 0 17 10 109 0 22 4 58 0 23 4 58 0 24 10 109 0 25 4 58 0 26 4 58 0 27 4 58 0 28 10 13 0 31 4 58 0 32 10 17 0 33 10 109 0 38 4 58 0 40 10 109 0 42 4 58 0 43 5 117 0 44 10 109 0 45 10 109 0 47 4 58 0 48 5 121 0 51 4 58 0 52 4 58 0 61 10 109 0 62 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 4 58 0 89 4 58 0 90 4 58 0 92 4 58 0 93 4 58 0 94 4 58 0 95 10 109 0 101 10 109 0 102 4 58 0 105 10 109 0 106 10 109 0 111 10 109 0 112 4 58 0 114 4 58 0 116 4 58 0 119 10 109 0 121 4 58 0 124 10 109 0 125 4 58 0 131 4 58 0 140 10 97 1 27 10 97 1 28 10 97 1 29 10 109 1 30 4 58 1 135] 
#[1 4 62 0 3 10 109 0 17 10 109 0 22 4 62 0 23 4 62 0 24 10 109 0 25 4 62 0 26 4 62 0 27 4 62 0 28 10 13 0 31 4 62 0 32 10 17 0 33 10 109 0 38 4 62 0 40 10 109 0 42 4 62 0 43 5 117 0 44 10 109 0 45 10 109 0 47 4 62 0 48 5 121 0 51 4 62 0 52 4 62 0 61 10 109 0 62 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 4 62 0 89 4 62 0 90 4 62 0 92 4 62 0 93 4 62 0 94 4 62 0 95 10 109 0 101 10 109 0 102 4 62 0 105 10 109 0 106 10 109 0 111 10 109 0 112 4 62 0 114 4 62 0 116 4 62 0 119 10 109 0 121 4 62 0 124 10 109 0 125 4 62 0 131 4 62 0 140 10 97 1 27 10 97 1 28 10 97 1 29 10 109 1 30 4 62 1 135] 
#[1 4 66 0 3 10 109 0 17 4 66 0 21 10 109 0 22 4 66 0 23 4 66 0 24 10 109 0 25 4 66 0 26 4 66 0 27 4 66 0 28 10 13 0 31 4 66 0 32 10 17 0 33 10 109 0 38 4 66 0 40 10 109 0 42 4 66 0 43 5 117 0 44 10 109 0 45 10 109 0 47 4 66 0 48 5 121 0 51 4 66 0 52 4 66 0 56 4 66 0 61 10 109 0 62 4 66 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 4 66 0 89 4 66 0 90 4 66 0 92 4 66 0 93 4 66 0 94 4 66 0 95 10 109 0 101 10 109 0 102 4 66 0 105 10 109 0 106 10 109 0 111 10 109 0 112 4 66 0 114 4 66 0 116 4 66 0 119 10 109 0 121 4 66 0 124 10 109 0 125 4 66 0 131 4 66 0 140 10 97 1 27 10 97 1 28 10 97 1 29 10 109 1 30 4 66 1 135] 
#[1 4 70 0 3 10 109 0 17 4 70 0 21 10 109 0 22 4 70 0 23 4 70 0 24 10 109 0 25 4 70 0 26 4 70 0 27 4 70 0 28 10 13 0 31 4 70 0 32 10 17 0 33 10 109 0 38 4 70 0 40 10 109 0 42 4 70 0 43 5 117 0 44 10 109 0 45 10 109 0 47 4 70 0 48 5 121 0 51 4 70 0 52 4 70 0 56 4 70 0 61 10 109 0 62 4 70 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 4 70 0 89 4 70 0 90 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 95 10 109 0 101 10 109 0 102 4 70 0 105 10 109 0 106 10 109 0 111 10 109 0 112 4 70 0 114 4 70 0 116 4 70 0 119 10 109 0 121 4 70 0 124 10 109 0 125 4 70 0 131 4 70 0 140 10 97 1 27 10 97 1 28 10 97 1 29 10 109 1 30 4 70 1 135] 
#[1 4 74 0 3 10 109 0 17 10 109 0 22 4 74 0 23 4 74 0 24 10 109 0 25 4 74 0 26 4 74 0 27 4 74 0 28 10 13 0 31 4 74 0 32 10 17 0 33 10 109 0 38 4 74 0 40 10 109 0 42 4 74 0 43 5 117 0 44 10 109 0 45 10 109 0 47 4 74 0 48 5 121 0 51 4 74 0 52 4 74 0 61 10 109 0 62 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 4 74 0 89 4 74 0 90 4 74 0 92 4 74 0 93 4 74 0 94 4 74 0 95 10 109 0 101 10 109 0 102 4 74 0 105 10 109 0 106 10 109 0 111 10 109 0 112 4 74 0 114 4 74 0 116 4 74 0 119 10 109 0 121 4 74 0 124 10 109 0 125 4 74 0 131 4 74 0 140 10 97 1 27 10 97 1 28 10 97 1 29 10 109 1 30 4 74 1 135] 
#[0 4 78 0 5 0 6 0 31 0 58 0 88 0 138] 
#[0 4 82 0 21 0 23 0 27 0 43 0 52 0 65 0 90 0 105 0 116 0 119 0 123 0 124] 
#[0 4 86 0 40 0 48 0 56 0 61 0 63 1 135] 
#[0 4 90 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 123 0 124] 
#[0 4 94 0 40 0 48 0 56 0 61 0 63 1 135] 
#[0 4 98 0 5 0 138] 
#[0 4 102 0 5 0 138] 
#[0 4 106 1 135] 
#[1 10 113 0 140 10 117 1 132] 
#[0 10 121 0 6] 
#[0 4 110 0 21 0 23 0 27 0 43 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 2 225 0 140 10 125 0 168] 
#[0 4 114 0 29] 
#[1 5 177 0 5 10 129 0 138] 
#[0 10 133 0 6] 
#[0 4 118 1 135] 
#[1 2 25 0 27 4 122 0 40 4 122 0 48 4 253 0 52 4 122 0 56 4 122 0 61 5 5 0 90 5 233 0 105 2 49 0 116 2 53 0 119 2 57 0 124 10 137 0 170 10 137 0 171 10 137 0 174 10 137 0 177 10 137 1 4 10 137 1 7 10 137 1 49 2 161 1 50 10 137 1 51 2 169 1 52 10 137 1 57 2 185 1 58 10 137 1 59 2 193 1 60 10 137 1 71 2 217 1 72] 
#[1 4 126 0 23 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 32 4 126 0 40 4 126 0 43 4 126 0 48 4 126 0 52 4 126 0 61 4 126 0 90 4 126 0 105 4 126 0 116 4 126 0 119 4 126 0 124 10 165 1 39] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 14 0 48 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 10 169 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 4 130 0 40 10 173 0 48 10 177 1 130] 
#[1 4 233 0 5 10 181 0 138] 
#[0 10 185 0 14] 
#[1 4 134 0 21 4 134 0 23 4 134 0 26 4 134 0 27 4 134 0 28 4 134 0 32 4 134 0 40 4 134 0 43 4 134 0 48 4 134 0 52 4 134 0 56 4 134 0 61 4 134 0 65 4 134 0 90 4 134 0 105 4 134 0 116 4 134 0 119 4 134 0 124 8 61 0 140 10 189 0 176] 
#[0 4 138 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124 0 140] 
#[0 4 142 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 4 146 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[0 4 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 4 154 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138] 
#[1 4 185 0 2 4 193 0 4 4 158 0 5 4 189 0 6 10 193 0 7 4 193 0 8 4 158 0 9 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 10 197 0 39 4 162 0 40 10 201 1 98] 
#[1 2 170 0 39 2 170 0 40 10 205 0 138 10 209 1 91] 
#[0 4 166 0 39 0 40 0 138] 
#[0 10 213 0 9] 
#[0 10 217 0 5] 
#[1 4 170 0 5 4 174 0 9] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 10 221 0 184 10 221 0 188 1 149 0 193 10 221 0 195 10 221 0 196 10 221 0 198 10 221 0 202 10 221 0 203 1 173 0 205 10 221 0 211 1 181 0 212 1 185 0 213 1 189 0 214 10 221 0 245 10 221 0 246 10 221 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 10 233 0 37 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 10 233 0 117 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 10 233 1 104 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 10 237 0 36 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[0 4 178 0 9 0 21 0 23 0 27 0 52 0 65 0 78 0 90 0 105 0 116 0 119 0 124 0 138] 
#[1 2 17 0 27 2 17 0 82 2 17 0 124 0 22 0 140 10 241 1 33 2 17 1 36] 
#[1 10 245 0 39 4 182 0 40 4 182 0 41 4 182 0 48 4 182 0 49 4 182 0 61 4 182 0 79 4 182 0 122 4 182 0 138 4 182 1 135] 
#[0 4 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 10 249 0 3 8 221 0 5] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 10 253 1 109 1 25 1 110 10 253 1 111 10 253 1 112 1 37 1 113 10 253 1 114 1 45 1 115 10 253 1 116 1 53 1 117 10 253 1 118 1 61 1 123 10 253 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 11 1 1 109 1 25 1 110 11 1 1 111 11 1 1 112 1 37 1 113 11 1 1 114 1 45 1 115 11 1 1 116 1 53 1 117 11 1 1 118 1 61 1 123 11 1 1 124 1 69 1 134] 
#[1 7 29 0 6 4 190 0 39 4 190 0 40 4 190 0 41 4 190 0 48 4 190 0 49 4 190 0 61 4 190 0 79 4 190 0 122 4 190 0 138 4 190 1 135] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 194 0 39 4 194 0 40 4 194 0 41 4 194 0 48 4 194 0 49 4 29 0 58 4 194 0 61 4 29 0 64 4 29 0 71 4 194 0 79 4 29 0 81 4 29 0 109 4 29 0 110 4 194 0 122 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 194 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 4 194 1 135] 
#[1 4 141 0 140 11 5 0 237] 
#[1 11 9 0 39 4 198 0 40 4 198 0 49 6 41 0 138 11 13 1 88] 
#[1 11 9 0 39 4 198 0 40 4 198 0 49 8 165 0 79 11 17 1 87 11 21 1 88] 
#[0 4 202 0 39 0 40 0 49 0 79] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 11 25 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[0 11 29 0 40] 
#[1 11 33 0 10 4 197 0 16 4 206 0 39 4 206 0 40 4 206 0 41 4 206 0 48 4 206 0 49 4 206 0 61 4 206 0 79 4 206 0 122 4 201 0 131 4 206 0 138 4 206 1 135] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 210 0 39 4 210 0 40 4 210 0 41 4 210 0 48 4 210 0 49 4 29 0 58 4 210 0 61 4 29 0 64 4 29 0 71 4 210 0 79 4 29 0 81 4 29 0 109 4 29 0 110 4 210 0 122 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 210 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 4 210 1 135] 
#[0 4 214 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[1 3 181 0 2 4 29 0 4 4 218 0 5 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 218 0 36 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[0 4 222 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[1 3 181 0 2 4 29 0 4 4 226 0 5 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 226 0 132 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[0 4 230 0 5 0 132] 
#[0 4 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 6 161 1 109 1 25 1 110 6 161 1 111 6 161 1 112 1 37 1 113 6 161 1 114 1 45 1 115 6 161 1 116 1 53 1 117 6 161 1 118 1 61 1 123 6 161 1 124 11 37 1 126 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 11 41 1 109 1 25 1 110 11 41 1 111 11 41 1 112 1 37 1 113 11 41 1 114 1 45 1 115 11 41 1 116 1 53 1 117 11 41 1 118 1 61 1 123 11 41 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 11 45 1 109 1 25 1 110 11 45 1 111 11 45 1 112 1 37 1 113 11 45 1 114 1 45 1 115 11 45 1 116 1 53 1 117 11 45 1 118 1 61 1 123 11 45 1 124 1 69 1 134] 
#[0 4 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 4 242 0 5 0 222 0 16 0 222 0 131 4 242 0 133] 
#[1 11 49 0 5 4 246 0 133 11 53 0 191] 
#[1 4 185 0 2 4 250 0 3 4 193 0 4 4 250 0 5 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 4 185 0 2 4 254 0 3 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 254 0 138 4 193 1 128] 
#[0 5 2 0 3 0 5] 
#[1 4 185 0 2 5 6 0 3 4 193 0 4 5 6 0 5 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[0 5 10 0 3 0 5] 
#[0 5 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[0 6 205 0 9] 
#[0 5 18 0 3 0 138] 
#[1 4 197 0 16 6 249 0 78 4 201 0 131 2 190 0 138 11 57 1 6] 
#[0 5 22 0 138] 
#[1 3 58 0 3 3 58 0 5 3 58 0 10 3 58 0 14 3 58 0 16 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 30 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 36 3 58 0 38 3 58 0 39 3 58 0 40 3 58 0 41 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 49 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 57 3 58 0 58 3 58 0 59 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 74 3 58 0 75 3 58 0 78 3 58 0 79 3 58 0 83 3 58 0 84 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 95 3 58 0 97 3 58 0 98 3 58 0 101 3 58 0 102 3 58 0 105 3 58 0 106 3 58 0 111 3 58 0 112 3 58 0 113 3 58 0 114 3 58 0 116 3 58 0 119 3 58 0 121 3 58 0 122 3 58 0 124 3 58 0 125 3 58 0 128 3 58 0 129 3 58 0 131 3 58 0 132 3 58 0 133 3 58 0 138 3 58 0 140 11 61 1 25 3 58 1 135] 
#[1 7 29 0 6 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 11 65 0 204 7 49 0 228 7 53 0 238] 
#[0 11 69 0 9] 
#[0 11 73 0 138] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 1 75 0 5 0 206 0 6 0 206 0 8 6 205 0 9 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 18 0 206 0 20 0 206 0 35 0 206 0 58 0 206 0 64 0 206 0 71 0 206 0 81 0 206 0 109 0 206 0 110 0 206 0 130 0 206 0 133 0 206 0 134 0 206 0 136 0 206 0 137] 
#[0 11 81 0 3] 
#[1 1 26 0 2 1 26 0 3 1 26 0 5 1 26 0 6 1 26 0 9 1 26 0 10 4 209 0 11 1 26 0 14 1 26 0 16 1 26 0 21 1 26 0 23 1 26 0 24 1 26 0 26 1 26 0 27 1 26 0 28 1 26 0 30 1 26 0 31 1 26 0 32 1 26 0 33 1 26 0 36 1 26 0 39 1 26 0 40 1 26 0 41 1 26 0 48 1 26 0 49 1 26 0 52 1 26 0 57 1 26 0 58 1 26 0 59 1 26 0 61 1 26 0 65 1 26 0 75 1 26 0 78 1 26 0 79 1 26 0 88 1 26 0 89 1 26 0 90 1 26 0 92 1 26 0 93 1 26 0 94 1 26 0 95 1 26 0 97 1 26 0 98 1 26 0 105 1 26 0 113 1 26 0 114 1 26 0 116 1 26 0 119 1 26 0 122 1 26 0 124 1 26 0 128 1 26 0 129 1 26 0 131 1 26 0 132 1 26 0 133 1 26 0 138 1 26 0 140 11 85 0 180 1 26 1 135] 
#[0 5 26 0 5 0 132] 
#[1 4 185 0 2 4 193 0 4 5 30 0 5 4 189 0 6 1 2 0 7 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 5 30 0 132 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 11 89 0 5 11 93 0 132] 
#[0 5 34 0 5 0 132] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 11 97 0 27 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 11 101 0 184 11 101 0 188 1 149 0 193 11 101 0 195 11 101 0 196 11 101 0 198 11 101 0 202 11 101 0 203 1 173 0 205 11 101 0 211 1 181 0 212 1 185 0 213 1 189 0 214 11 101 0 245 11 101 0 246 11 101 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[0 5 38 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 5 42 0 3 11 105 0 24 5 42 0 40 11 109 0 89 11 113 0 93 11 117 0 94 11 121 0 95 11 125 0 114 11 129 0 206 11 133 0 230 11 133 0 231 11 133 0 232 11 133 0 233 11 133 0 234] 
#[0 5 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140] 
#[0 5 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 136 0 137 0 138 1 135] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 11 153 0 214 11 153 1 118 1 209 1 123 1 213 1 134] 
#[0 5 54 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 11 157 0 184 11 157 0 188 1 149 0 193 11 157 0 195 11 157 0 196 11 157 0 198 11 157 0 202 11 157 0 203 1 173 0 205 11 157 0 211 1 181 0 212 1 185 0 213 1 189 0 214 11 157 0 245 11 157 0 246 11 157 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 7 89 0 140 11 161 0 182] 
#[0 5 58 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[1 5 62 0 2 5 62 0 17 5 62 0 26 5 62 0 27 5 62 0 28 5 62 0 31 5 62 0 32 5 62 0 40 5 62 0 52 5 62 0 54 11 165 0 78 5 62 0 88 5 62 0 89 5 62 0 90 5 62 0 92 5 62 0 93 5 62 0 94 5 62 0 95 5 62 0 107 5 62 0 114 5 62 0 116 5 62 0 119 5 62 0 124 5 62 0 131 5 62 0 138 5 62 0 140 11 169 0 224] 
#[0 5 66 0 2 0 26 0 31 0 40 0 52 0 88 0 90 0 92 0 131 0 138] 
#[0 5 70 0 2 0 26 0 31 0 40 0 52 0 88 0 90 0 92 0 131 0 138] 
#[1 11 173 0 2 5 74 0 26 5 74 0 27 5 74 0 28 5 74 0 32 5 74 0 40 5 74 0 52 5 74 0 89 5 74 0 90 5 74 0 92 5 74 0 93 5 74 0 94 5 74 0 95 5 74 0 114 5 74 0 116 5 74 0 119 5 74 0 124 5 74 0 131 5 74 0 140 11 177 0 235] 
#[0 5 78 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 0 218 0 16 0 218 0 131 11 181 0 138] 
#[1 11 185 0 31 11 185 0 88 1 206 0 138 11 185 0 194] 
#[1 0 222 0 16 11 189 0 31 11 189 0 88 0 222 0 131 1 206 0 138 11 189 0 194] 
#[1 5 82 0 3 0 230 0 16 5 82 0 21 5 82 0 23 5 82 0 24 5 82 0 26 5 82 0 27 5 82 0 28 5 82 0 32 5 82 0 40 5 82 0 43 5 82 0 48 5 82 0 52 5 82 0 56 5 82 0 61 5 82 0 65 5 82 0 89 5 82 0 90 5 82 0 92 5 82 0 93 5 82 0 94 5 82 0 95 5 82 0 105 5 82 0 114 5 82 0 116 5 82 0 119 5 82 0 124 1 79 0 131 5 82 0 140 5 82 1 135] 
#[1 5 86 0 3 0 234 0 16 5 86 0 21 5 86 0 23 5 86 0 24 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 32 5 86 0 40 5 86 0 43 5 86 0 48 5 86 0 52 5 86 0 56 5 86 0 61 5 86 0 65 5 86 0 89 5 86 0 90 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 95 5 86 0 105 5 86 0 114 5 86 0 116 5 86 0 119 5 86 0 124 1 83 0 131 5 86 0 140 5 86 1 135] 
#[0 5 90 0 31 0 88 0 138] 
#[0 5 94 0 31 0 88 0 138] 
#[0 5 98 0 31 0 88 0 138] 
#[0 5 102 0 31 0 88 0 138] 
#[0 5 106 0 31 0 88 0 138] 
#[1 11 173 0 2 5 74 0 26 5 110 0 31 5 74 0 40 5 74 0 52 5 110 0 88 5 74 0 90 5 74 0 92 5 74 0 131 5 110 0 138 11 193 0 235] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 9 113 0 26 9 173 0 34 1 81 0 46 1 85 0 52 9 173 0 63 1 89 0 76 9 125 0 77 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 11 197 0 183 9 133 0 184 9 137 0 187 9 141 0 188 1 149 0 193 9 145 0 195 9 149 0 196 9 141 0 198 9 137 0 201 9 141 0 202 9 141 0 203 1 173 0 205 9 141 0 211 1 181 0 212 1 185 0 213 1 189 0 214 9 137 0 222 9 137 0 223 9 137 0 226 1 193 0 245 9 141 0 246 9 141 0 247 9 137 0 251 9 173 0 252 1 189 1 118 1 209 1 123 1 213 1 134] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 1 87 0 31 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 11 201 0 88 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 1 206 0 138 11 201 0 194 4 193 1 128] 
#[1 11 205 0 14 5 114 0 138 11 209 1 35] 
#[1 5 114 0 3 11 205 0 14 4 197 0 16 4 201 0 131 5 114 0 132 5 114 0 138 11 213 1 35 5 114 1 135] 
#[0 11 217 0 138] 
#[0 11 221 0 138] 
#[1 4 225 0 9 1 34 0 138 11 225 1 10] 
#[1 5 118 0 3 5 118 0 17 5 118 0 21 5 118 0 22 5 118 0 23 5 118 0 24 5 118 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 38 5 118 0 40 5 118 0 42 5 118 0 44 5 118 0 45 5 118 0 47 5 118 0 51 5 118 0 52 5 118 0 62 5 118 0 65 5 118 0 67 5 118 0 70 5 118 0 74 5 118 0 83 5 118 0 84 5 118 0 87 5 118 0 88 5 118 0 89 5 118 0 90 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 95 5 118 0 101 5 118 0 102 5 118 0 105 5 118 0 106 5 118 0 111 5 118 0 112 5 118 0 114 5 118 0 116 5 118 0 119 5 118 0 121 5 118 0 124 5 118 0 125 5 118 0 131 5 118 0 140 11 229 1 26 5 118 1 135] 
#[1 5 118 0 3 5 118 0 17 5 118 0 21 5 118 0 22 5 118 0 23 5 118 0 24 5 118 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 38 5 118 0 40 5 118 0 42 5 118 0 44 5 118 0 45 5 118 0 47 5 118 0 51 5 118 0 52 5 118 0 62 5 118 0 65 5 118 0 67 5 118 0 70 5 118 0 74 5 118 0 83 5 118 0 84 5 118 0 87 5 118 0 88 5 118 0 89 5 118 0 90 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 95 5 118 0 101 5 118 0 102 5 118 0 105 5 118 0 106 5 118 0 111 5 118 0 112 5 118 0 114 5 118 0 116 5 118 0 119 5 118 0 121 5 118 0 124 5 118 0 125 5 118 0 131 5 118 0 140 11 233 1 26 5 118 1 135] 
#[0 11 237 0 138] 
#[0 11 241 0 138] 
#[0 11 245 0 138] 
#[1 5 118 0 3 5 118 0 17 5 118 0 21 5 118 0 22 5 118 0 23 5 118 0 24 5 118 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 38 5 118 0 40 5 118 0 42 5 118 0 44 5 118 0 45 5 118 0 47 5 118 0 48 5 118 0 51 5 118 0 52 5 118 0 56 5 118 0 61 5 118 0 62 5 118 0 65 5 118 0 67 5 118 0 70 5 118 0 74 5 118 0 83 5 118 0 84 5 118 0 87 5 118 0 88 5 118 0 89 5 118 0 90 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 95 5 118 0 101 5 118 0 102 5 118 0 105 5 118 0 106 5 118 0 111 5 118 0 112 5 118 0 114 5 118 0 116 5 118 0 119 5 118 0 121 5 118 0 124 5 118 0 125 5 118 0 131 5 118 0 140 11 249 1 26 5 118 1 135] 
#[0 11 253 0 132] 
#[1 5 122 0 30 5 122 0 33 5 122 0 57 5 122 0 59 5 122 0 75 5 122 0 97 5 122 0 98 5 122 0 113 5 122 0 128 5 122 0 129 5 122 0 138 12 1 1 14] 
#[0 12 5 0 138] 
#[0 12 9 0 144] 
#[0 5 126 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 12 13 0 144] 
#[0 5 130 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 5 134 0 138] 
#[0 5 138 0 138] 
#[0 5 142 0 138] 
#[1 5 146 0 138 12 17 0 144] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 12 21 0 214 12 21 1 118 1 209 1 123 1 213 1 134] 
#[0 5 150 0 138] 
#[0 5 154 0 138] 
#[0 5 158 0 138] 
#[0 5 162 0 138] 
#[0 5 166 0 138] 
#[0 5 170 0 138] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 12 25 0 214 12 25 1 118 1 209 1 123 1 213 1 134] 
#[0 5 174 0 138] 
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
#[0 5 222 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 5 226 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 5 230 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 12 29 0 138] 
#[0 5 234 0 5 0 138] 
#[1 12 33 0 5 12 37 0 138] 
#[0 5 238 1 135] 
#[1 5 242 0 5 5 145 0 6 5 242 0 138] 
#[0 5 246 0 40] 
#[0 5 250 1 135] 
#[0 5 254 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 2 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 6 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 10 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 14 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 18 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 22 0 27 0 40 0 48 0 52 0 56 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 12 41 0 23 5 81 0 26 2 25 0 27 2 29 0 28 2 33 0 32 6 26 0 40 8 9 0 43 6 26 0 48 4 253 0 52 6 26 0 61 5 5 0 90 5 233 0 105 2 49 0 116 2 53 0 119 2 57 0 124 12 61 0 171 12 61 0 174 12 61 0 177 12 57 1 38 12 61 1 40 12 61 1 41 12 69 1 42 12 73 1 43 12 61 1 44 12 81 1 45 12 85 1 46 12 61 1 48 5 253 1 49 2 161 1 50 6 1 1 51 2 169 1 52 12 61 1 53 12 97 1 54 12 101 1 55 12 61 1 56 6 9 1 57 2 185 1 58 6 13 1 59 2 193 1 60 12 61 1 61 12 113 1 62 12 117 1 63 12 61 1 64 12 125 1 65 12 129 1 66 12 61 1 71 2 217 1 72 12 61 1 131] 
#[1 6 30 0 40 6 30 0 48 6 41 0 138] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 141 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 8 33 0 40 12 145 1 133] 
#[0 6 34 0 21 0 23 0 27 0 52 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 12 149 0 214 12 149 1 118 1 209 1 123 1 213 1 134] 
#[0 6 38 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124 0 140] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 12 153 0 214 12 153 1 118 1 209 1 123 1 213 1 134] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 157 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[0 12 161 0 40] 
#[1 4 57 0 2 1 77 0 15 3 222 0 39 3 222 0 40 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 8 89 0 214 12 165 1 94 8 105 1 95 8 109 1 96 8 113 1 97 8 89 1 118 1 209 1 123 1 213 1 134] 
#[0 6 42 0 39 0 40] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 169 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 12 169 1 106 12 169 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 8 89 0 214 12 173 1 97 8 89 1 118 1 209 1 123 1 213 1 134] 
#[1 6 46 0 10 4 197 0 16 6 46 0 58 4 201 0 131] 
#[0 6 50 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 134] 
#[0 6 54 0 2 0 15 0 52 0 60 0 68 0 69 0 76 0 90 0 131 0 136 0 137 0 140 0 142 0 144 0 148 1 134] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 177 1 109 1 25 1 110 12 177 1 111 12 177 1 112 1 37 1 113 12 177 1 114 1 45 1 115 12 177 1 116 1 53 1 117 12 177 1 118 1 61 1 123 12 177 1 124 1 69 1 134] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 181 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 12 181 1 106 12 181 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[0 6 58 0 3 0 132 0 138] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 185 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 12 185 1 106 12 185 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[0 6 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 12 189 0 132 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 12 193 0 132 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 7 29 0 6 4 225 0 9 1 34 0 36 12 197 1 10] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 201 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[0 6 66 0 40 0 49] 
#[0 6 70 0 39 0 40 0 49 0 79] 
#[0 6 74 0 40 0 49] 
#[1 6 78 0 40 6 41 0 138] 
#[0 6 82 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 12 205 1 109 1 25 1 110 12 205 1 111 12 205 1 112 1 37 1 113 12 205 1 114 1 45 1 115 12 205 1 116 1 53 1 117 12 205 1 118 1 61 1 123 12 205 1 124 1 69 1 134] 
#[1 6 86 0 3 6 86 0 5 8 225 0 9] 
#[1 3 181 0 2 6 90 0 3 4 29 0 4 6 90 0 5 3 189 0 6 4 29 0 8 6 90 0 9 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 3 181 0 2 4 29 0 4 6 94 0 5 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 6 94 0 132 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 193 0 184 12 209 0 188 1 149 0 193 1 193 0 195 1 193 0 196 12 209 0 198 12 209 0 202 12 209 0 203 1 173 0 205 12 209 0 211 1 181 0 212 1 185 0 213 1 189 0 214 1 193 0 245 12 209 0 246 12 209 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[0 12 213 0 133] 
#[0 12 217 0 138] 
#[1 6 98 0 3 6 98 0 5 6 98 0 10 6 98 0 14 6 98 0 16 10 109 0 17 6 98 0 21 10 109 0 22 6 98 0 23 6 98 0 24 10 109 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 30 1 91 0 31 6 98 0 32 1 95 0 33 6 98 0 36 10 109 0 38 6 98 0 39 6 98 0 40 6 98 0 41 10 109 0 42 6 98 0 43 5 117 0 44 10 109 0 45 10 109 0 47 6 98 0 48 6 98 0 49 5 121 0 51 6 98 0 52 6 98 0 56 6 98 0 57 6 98 0 58 6 98 0 59 6 98 0 61 10 109 0 62 6 98 0 65 10 109 0 67 10 45 0 70 10 109 0 74 6 98 0 75 6 98 0 78 6 98 0 79 10 109 0 83 10 109 0 84 10 109 0 87 1 99 0 88 6 98 0 89 6 98 0 90 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 95 6 98 0 97 6 98 0 98 10 109 0 101 10 109 0 102 6 98 0 105 10 109 0 106 10 109 0 111 10 109 0 112 6 98 0 113 6 98 0 114 6 98 0 116 6 98 0 119 10 109 0 121 6 98 0 122 6 98 0 124 10 109 0 125 6 98 0 128 6 98 0 129 6 98 0 131 6 98 0 132 6 98 0 133 6 98 0 138 6 98 0 140 10 97 1 27 10 97 1 28 10 97 1 29 10 109 1 30 6 98 1 135] 
#[0 12 221 0 40] 
#[1 1 73 0 2 1 77 0 15 0 18 0 19 1 81 0 46 1 85 0 52 1 89 0 76 1 173 0 86 1 97 0 90 0 7 0 99 1 105 0 100 1 109 0 108 1 113 0 119 0 181 0 131 1 117 0 136 1 121 0 137 1 125 0 139 1 129 0 141 1 185 0 142 1 209 0 144 1 137 0 148 12 225 0 184 12 225 0 188 1 149 0 193 12 225 0 195 12 225 0 196 12 225 0 198 12 225 0 202 12 225 0 203 1 173 0 205 12 225 0 211 1 181 0 212 1 185 0 213 1 189 0 214 12 225 0 245 12 225 0 246 12 225 0 247 1 189 1 118 1 209 1 123 1 213 1 134] 
#[0 6 102 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[1 12 229 0 141 12 233 0 200] 
#[0 6 106 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[0 6 110 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 12 237 0 211 1 181 0 212 1 185 0 213 9 61 0 214 12 237 0 250 9 61 1 118 1 209 1 123 1 213 1 134] 
#[0 6 114 0 78] 
#[0 6 118 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 6 122 0 3 6 122 0 5 6 122 0 10 6 122 0 14 4 197 0 16 6 122 0 21 6 122 0 23 6 122 0 27 6 122 0 30 6 122 0 31 6 122 0 33 6 122 0 36 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 48 6 122 0 49 6 122 0 52 6 122 0 57 6 122 0 58 6 122 0 59 6 122 0 61 6 122 0 65 6 122 0 75 6 122 0 78 6 122 0 79 6 122 0 88 6 122 0 90 6 122 0 97 6 122 0 98 6 122 0 105 6 122 0 113 6 122 0 116 6 122 0 119 6 122 0 122 6 122 0 124 6 122 0 128 6 122 0 129 4 201 0 131 6 122 0 132 6 122 0 133 6 122 0 138 6 122 1 135] 
#[0 12 241 0 140] 
#[1 2 218 0 3 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 12 245 0 238] 
#[1 2 218 0 3 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 12 249 0 238] 
#[1 2 218 0 3 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 12 253 0 238] 
#[1 2 218 0 3 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 13 1 0 238] 
#[1 13 5 0 89 13 9 0 93] 
#[0 6 126 0 3 0 40] 
#[0 6 130 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 134 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 138 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 142 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[0 6 146 0 3 0 24 0 40 0 89 0 93 0 94 0 95 0 114] 
#[1 4 185 0 2 6 150 0 3 4 193 0 4 6 150 0 5 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 6 154 0 5 4 197 0 16 4 201 0 131 6 154 0 133] 
#[0 6 158 0 5 0 133] 
#[0 13 13 0 140] 
#[1 11 173 0 2 13 29 0 17 5 74 0 26 5 74 0 27 5 74 0 28 5 74 0 31 5 74 0 32 5 74 0 40 5 74 0 52 13 21 0 54 5 74 0 88 5 74 0 89 5 74 0 90 5 74 0 92 5 74 0 93 5 74 0 94 5 74 0 95 13 29 0 107 5 74 0 114 5 74 0 116 5 74 0 119 5 74 0 124 5 74 0 131 5 74 0 138 5 74 0 140 13 29 0 225 13 33 0 235] 
#[1 13 37 0 100 13 41 0 141 13 45 0 193 13 49 0 236] 
#[1 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 13 53 0 228 7 53 0 238] 
#[0 6 162 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 13 57 0 138] 
#[0 13 61 0 138] 
#[1 6 166 0 26 6 166 0 40 6 166 0 52 6 166 0 90 6 166 0 92 13 65 0 131 13 69 0 253] 
#[0 6 170 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 13 77 0 31 6 174 0 138 13 77 0 227] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 13 81 0 214 13 81 1 118 1 209 1 123 1 213 1 134] 
#[0 13 85 0 138] 
#[0 6 178 0 3 0 132 0 138 1 135] 
#[1 5 118 0 3 5 118 0 17 5 118 0 21 5 118 0 22 5 118 0 23 5 118 0 24 5 118 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 38 5 118 0 40 5 118 0 42 5 118 0 44 5 118 0 45 5 118 0 47 5 118 0 51 5 118 0 52 5 118 0 62 5 118 0 65 5 118 0 67 5 118 0 70 5 118 0 74 5 118 0 83 5 118 0 84 5 118 0 87 5 118 0 88 5 118 0 89 5 118 0 90 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 95 5 118 0 101 5 118 0 102 5 118 0 105 5 118 0 106 5 118 0 111 5 118 0 112 5 118 0 114 5 118 0 116 5 118 0 119 5 118 0 121 5 118 0 124 5 118 0 125 5 118 0 131 5 118 0 140 13 89 1 26 5 118 1 135] 
#[1 5 118 0 3 5 118 0 17 5 118 0 21 5 118 0 22 5 118 0 23 5 118 0 24 5 118 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 38 5 118 0 40 5 118 0 42 5 118 0 44 5 118 0 45 5 118 0 47 5 118 0 51 5 118 0 52 5 118 0 62 5 118 0 65 5 118 0 67 5 118 0 70 5 118 0 74 5 118 0 83 5 118 0 84 5 118 0 87 5 118 0 88 5 118 0 89 5 118 0 90 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 95 5 118 0 101 5 118 0 102 5 118 0 105 5 118 0 106 5 118 0 111 5 118 0 112 5 118 0 114 5 118 0 116 5 118 0 119 5 118 0 121 5 118 0 124 5 118 0 125 5 118 0 131 5 118 0 140 13 93 1 26 5 118 1 135] 
#[0 13 97 0 138] 
#[1 6 182 0 3 10 109 0 17 6 182 0 21 10 109 0 22 6 182 0 23 6 182 0 24 10 109 0 25 6 182 0 26 6 182 0 27 6 182 0 28 10 13 0 31 6 182 0 32 10 17 0 33 10 109 0 38 6 182 0 40 10 109 0 42 6 182 0 44 10 109 0 45 10 109 0 47 6 182 0 51 6 182 0 52 10 109 0 62 6 182 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 6 182 0 89 6 182 0 90 6 182 0 92 6 182 0 93 6 182 0 94 6 182 0 95 10 109 0 101 10 109 0 102 6 182 0 105 10 109 0 106 10 109 0 111 10 109 0 112 6 182 0 114 6 182 0 116 6 182 0 119 10 109 0 121 6 182 0 124 10 109 0 125 6 182 0 131 6 182 0 140 13 101 1 28 10 109 1 30 6 182 1 135] 
#[1 6 186 0 3 10 109 0 17 6 186 0 21 10 109 0 22 6 186 0 23 6 186 0 24 10 109 0 25 6 186 0 26 6 186 0 27 6 186 0 28 10 13 0 31 6 186 0 32 10 17 0 33 10 109 0 38 6 186 0 40 10 109 0 42 6 186 0 44 10 109 0 45 10 109 0 47 6 186 0 51 6 186 0 52 10 109 0 62 6 186 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 6 186 0 89 6 186 0 90 6 186 0 92 6 186 0 93 6 186 0 94 6 186 0 95 10 109 0 101 10 109 0 102 6 186 0 105 10 109 0 106 10 109 0 111 10 109 0 112 6 186 0 114 6 186 0 116 6 186 0 119 10 109 0 121 6 186 0 124 10 109 0 125 6 186 0 131 6 186 0 140 13 101 1 28 10 109 1 30 6 186 1 135] 
#[0 6 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 5 118 0 3 5 118 0 17 5 118 0 21 5 118 0 22 5 118 0 23 5 118 0 24 5 118 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 38 5 118 0 40 5 118 0 42 5 118 0 44 5 118 0 45 5 118 0 47 5 118 0 48 5 118 0 51 5 118 0 52 5 118 0 56 5 118 0 61 5 118 0 62 5 118 0 65 5 118 0 67 5 118 0 70 5 118 0 74 5 118 0 83 5 118 0 84 5 118 0 87 5 118 0 88 5 118 0 89 5 118 0 90 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 95 5 118 0 101 5 118 0 102 5 118 0 105 5 118 0 106 5 118 0 111 5 118 0 112 5 118 0 114 5 118 0 116 5 118 0 119 5 118 0 121 5 118 0 124 5 118 0 125 5 118 0 131 5 118 0 140 13 105 1 26 5 118 1 135] 
#[0 6 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 6 198 0 3 10 109 0 17 6 198 0 21 10 109 0 22 6 198 0 23 6 198 0 24 10 109 0 25 6 198 0 26 6 198 0 27 6 198 0 28 10 13 0 31 6 198 0 32 10 17 0 33 10 109 0 38 6 198 0 40 10 109 0 42 6 198 0 44 10 109 0 45 10 109 0 47 6 198 0 48 6 198 0 51 6 198 0 52 6 198 0 56 6 198 0 61 10 109 0 62 6 198 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 6 198 0 89 6 198 0 90 6 198 0 92 6 198 0 93 6 198 0 94 6 198 0 95 10 109 0 101 10 109 0 102 6 198 0 105 10 109 0 106 10 109 0 111 10 109 0 112 6 198 0 114 6 198 0 116 6 198 0 119 10 109 0 121 6 198 0 124 10 109 0 125 6 198 0 131 6 198 0 140 13 101 1 28 10 109 1 30 6 198 1 135] 
#[0 6 202 0 9 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 13 109 0 30 13 113 0 33 13 117 0 57 13 121 0 59 13 125 0 75 13 129 0 97 13 133 0 98 13 137 0 113 13 141 0 128 13 145 0 129 13 149 0 138 13 153 1 16 13 157 1 17 13 161 1 18 13 165 1 19 13 169 1 20 13 173 1 21 13 177 1 23] 
#[0 6 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 13 181 0 138] 
#[0 13 185 0 138] 
#[0 13 189 0 138] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 13 193 0 138 4 193 1 128] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 13 197 0 138 4 193 1 128] 
#[0 6 210 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 13 201 0 140] 
#[0 6 214 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 90 0 105 0 116 0 119 0 124] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 40 0 14 0 48 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 13 205 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[0 6 218 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 222 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 226 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 230 0 40 0 48 0 61] 
#[0 6 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 238 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 117 0 44 5 121 0 51 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 125 1 29 13 209 1 67 3 37 1 68] 
#[0 6 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 6 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 117 0 44 5 121 0 51 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 129 1 29 13 213 1 67 3 37 1 68] 
#[0 6 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 13 217 1 67 3 37 1 68] 
#[0 7 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 13 221 1 67 3 37 1 68] 
#[0 7 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 117 0 44 5 121 0 51 0 50 0 52 0 50 0 65 0 50 0 90 0 50 0 105 0 50 0 116 0 50 0 119 0 50 0 124 5 141 1 29 13 225 1 67 3 37 1 68] 
#[0 7 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 7 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[1 7 38 0 40 6 41 0 138] 
#[0 7 42 1 135] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 13 229 0 31 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 6 174 0 138 13 229 0 227 4 193 1 128] 
#[1 4 185 0 2 4 193 0 4 7 46 0 5 4 189 0 6 4 193 0 8 7 46 0 9 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 7 50 0 40 6 41 0 138] 
#[0 7 54 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 7 58 0 39 0 40 0 138] 
#[0 7 62 0 39 0 40 0 138] 
#[1 7 66 0 5 7 70 0 9] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 13 233 0 36 4 29 0 58 4 29 0 64 4 29 0 71 4 29 0 81 4 29 0 109 4 29 0 110 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[0 7 74 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 7 78 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[0 7 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 7 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 75 0 78 0 79 0 81 0 97 0 98 0 109 0 110 0 113 0 115 0 117 0 122 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[0 13 237 0 36] 
#[1 7 90 0 40 7 90 0 49 6 41 0 138] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 4 29 0 35 7 94 0 39 7 94 0 40 7 94 0 41 7 94 0 48 7 94 0 49 4 29 0 58 7 94 0 61 4 29 0 64 4 29 0 71 7 94 0 79 4 29 0 81 4 29 0 109 4 29 0 110 7 94 0 122 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 7 94 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128 7 94 1 135] 
#[1 7 98 0 5 0 222 0 16 0 222 0 131 7 98 0 133] 
#[0 7 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 75 0 78 0 79 0 81 0 88 0 90 0 97 0 98 0 105 0 109 0 110 0 113 0 115 0 116 0 117 0 119 0 122 0 124 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 0 139 1 135] 
#[1 3 58 0 3 3 58 0 5 3 58 0 10 3 58 0 14 3 58 0 16 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 30 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 36 3 58 0 38 3 58 0 39 3 58 0 40 3 58 0 41 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 49 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 57 3 58 0 58 3 58 0 59 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 74 3 58 0 75 3 58 0 78 3 58 0 79 3 58 0 83 3 58 0 84 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 95 3 58 0 97 3 58 0 98 3 58 0 101 3 58 0 102 3 58 0 105 3 58 0 106 3 58 0 111 3 58 0 112 3 58 0 113 3 58 0 114 3 58 0 116 3 58 0 119 3 58 0 121 3 58 0 122 3 58 0 124 3 58 0 125 3 58 0 128 3 58 0 129 3 58 0 131 3 58 0 132 3 58 0 133 3 58 0 138 3 58 0 140 13 241 1 25 3 58 1 135] 
#[0 7 106 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 90 0 97 0 98 0 105 0 113 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 1 135] 
#[1 4 197 0 16 4 201 0 131 13 245 0 138] 
#[0 7 110 0 3 0 5] 
#[1 7 114 0 3 13 249 0 5] 
#[0 7 118 0 5 0 132] 
#[1 4 225 0 9 1 34 0 78 13 253 1 10] 
#[1 7 122 0 3 7 122 0 24 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 7 122 0 40 2 37 0 52 7 122 0 89 2 41 0 90 2 45 0 92 7 122 0 93 7 122 0 94 7 122 0 95 7 122 0 114 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 9 85 0 171 9 85 0 177 9 85 0 239 9 85 0 240 2 77 0 241 1 233 0 242 9 85 0 243 9 85 0 244 9 85 1 0 9 85 1 1 9 85 1 2 9 85 1 3 9 85 1 4 9 85 1 5 9 85 1 7 9 85 1 8 9 85 1 9 9 85 1 11 2 129 1 12 9 85 1 13 2 137 1 34 9 85 1 42 2 145 1 43 9 85 1 45 2 153 1 46 9 85 1 49 2 161 1 50 9 85 1 51 2 169 1 52 9 85 1 54 9 85 1 55 9 85 1 57 2 185 1 58 9 85 1 59 2 193 1 60 9 85 1 62 9 85 1 63 9 85 1 65 2 209 1 66 9 85 1 71 2 217 1 72] 
#[1 7 126 0 3 7 126 0 24 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 7 126 0 40 2 37 0 52 7 126 0 89 2 41 0 90 2 45 0 92 7 126 0 93 7 126 0 94 7 126 0 95 7 126 0 114 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 9 85 0 171 9 85 0 177 9 85 0 239 9 85 0 240 2 77 0 241 1 233 0 242 9 85 0 243 9 85 0 244 9 85 1 0 9 85 1 1 9 85 1 2 9 85 1 3 9 85 1 4 9 85 1 5 9 85 1 7 9 85 1 8 9 85 1 9 9 85 1 11 2 129 1 12 9 85 1 13 2 137 1 34 9 85 1 42 2 145 1 43 9 85 1 45 2 153 1 46 9 85 1 49 2 161 1 50 9 85 1 51 2 169 1 52 9 85 1 54 9 85 1 55 9 85 1 57 2 185 1 58 9 85 1 59 2 193 1 60 9 85 1 62 9 85 1 63 9 85 1 65 2 209 1 66 9 85 1 71 2 217 1 72] 
#[1 7 130 0 3 7 130 0 24 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 7 130 0 40 2 37 0 52 7 130 0 89 2 41 0 90 2 45 0 92 7 130 0 93 7 130 0 94 7 130 0 95 7 130 0 114 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 9 85 0 171 9 85 0 177 9 85 0 239 9 85 0 240 2 77 0 241 1 233 0 242 9 85 0 243 9 85 0 244 9 85 1 0 9 85 1 1 9 85 1 2 9 85 1 3 9 85 1 4 9 85 1 5 9 85 1 7 9 85 1 8 9 85 1 9 9 85 1 11 2 129 1 12 9 85 1 13 2 137 1 34 9 85 1 42 2 145 1 43 9 85 1 45 2 153 1 46 9 85 1 49 2 161 1 50 9 85 1 51 2 169 1 52 9 85 1 54 9 85 1 55 9 85 1 57 2 185 1 58 9 85 1 59 2 193 1 60 9 85 1 62 9 85 1 63 9 85 1 65 2 209 1 66 9 85 1 71 2 217 1 72] 
#[1 7 134 0 3 7 134 0 24 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 7 134 0 40 2 37 0 52 7 134 0 89 2 41 0 90 2 45 0 92 7 134 0 93 7 134 0 94 7 134 0 95 7 134 0 114 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 9 85 0 171 9 85 0 177 9 85 0 239 9 85 0 240 2 77 0 241 1 233 0 242 9 85 0 243 9 85 0 244 9 85 1 0 9 85 1 1 9 85 1 2 9 85 1 3 9 85 1 4 9 85 1 5 9 85 1 7 9 85 1 8 9 85 1 9 9 85 1 11 2 129 1 12 9 85 1 13 2 137 1 34 9 85 1 42 2 145 1 43 9 85 1 45 2 153 1 46 9 85 1 49 2 161 1 50 9 85 1 51 2 169 1 52 9 85 1 54 9 85 1 55 9 85 1 57 2 185 1 58 9 85 1 59 2 193 1 60 9 85 1 62 9 85 1 63 9 85 1 65 2 209 1 66 9 85 1 71 2 217 1 72] 
#[1 2 218 0 3 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 14 1 0 238] 
#[1 2 218 0 3 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 14 5 0 238] 
#[0 7 138 0 31 0 88 0 138] 
#[0 7 142 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 107 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[0 14 9 0 50] 
#[0 7 146 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 107 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[0 7 150 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 107 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[1 2 218 0 26 2 218 0 27 2 218 0 28 7 154 0 31 2 218 0 32 2 218 0 40 2 218 0 52 7 154 0 88 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 7 154 0 138 2 218 0 140 14 13 0 228 7 53 0 238] 
#[0 0 202 0 3 0 5 0 6 0 11] 
#[0 0 210 0 3 0 5 0 6 0 11] 
#[1 7 158 0 3 7 158 0 5 4 165 0 6 0 150 0 11 4 169 0 189 4 41 0 190] 
#[1 14 17 0 3 14 21 0 5] 
#[1 3 246 0 40 3 246 0 89 3 246 0 93 3 246 0 94 3 246 0 95 3 246 0 114 14 25 0 229] 
#[0 7 162 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 7 166 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 14 29 0 214 14 29 1 118 1 209 1 123 1 213 1 134] 
#[1 7 170 0 26 7 170 0 40 7 170 0 52 7 170 0 90 7 170 0 92 14 33 0 254] 
#[0 7 174 0 138] 
#[0 14 37 0 138] 
#[1 4 185 0 2 7 178 0 3 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 7 178 0 132 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 7 178 0 138 4 193 1 128 7 178 1 135] 
#[0 7 182 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 7 186 0 3 10 109 0 17 7 186 0 21 10 109 0 22 7 186 0 23 7 186 0 24 10 109 0 25 7 186 0 26 7 186 0 27 7 186 0 28 10 13 0 31 7 186 0 32 10 17 0 33 10 109 0 38 7 186 0 40 10 109 0 42 7 186 0 44 10 109 0 45 10 109 0 47 7 186 0 51 7 186 0 52 10 109 0 62 7 186 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 7 186 0 89 7 186 0 90 7 186 0 92 7 186 0 93 7 186 0 94 7 186 0 95 10 109 0 101 10 109 0 102 7 186 0 105 10 109 0 106 10 109 0 111 10 109 0 112 7 186 0 114 7 186 0 116 7 186 0 119 10 109 0 121 7 186 0 124 10 109 0 125 7 186 0 131 7 186 0 140 13 101 1 28 10 109 1 30 7 186 1 135] 
#[1 7 190 0 3 10 109 0 17 7 190 0 21 10 109 0 22 7 190 0 23 7 190 0 24 10 109 0 25 7 190 0 26 7 190 0 27 7 190 0 28 10 13 0 31 7 190 0 32 10 17 0 33 10 109 0 38 7 190 0 40 10 109 0 42 7 190 0 44 10 109 0 45 10 109 0 47 7 190 0 51 7 190 0 52 10 109 0 62 7 190 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 7 190 0 89 7 190 0 90 7 190 0 92 7 190 0 93 7 190 0 94 7 190 0 95 10 109 0 101 10 109 0 102 7 190 0 105 10 109 0 106 10 109 0 111 10 109 0 112 7 190 0 114 7 190 0 116 7 190 0 119 10 109 0 121 7 190 0 124 10 109 0 125 7 190 0 131 7 190 0 140 13 101 1 28 10 109 1 30 7 190 1 135] 
#[1 5 118 0 3 5 118 0 17 5 118 0 21 5 118 0 22 5 118 0 23 5 118 0 24 5 118 0 25 5 118 0 26 5 118 0 27 5 118 0 28 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 38 5 118 0 40 5 118 0 42 5 118 0 44 5 118 0 45 5 118 0 47 5 118 0 51 5 118 0 52 5 118 0 62 5 118 0 65 5 118 0 67 5 118 0 70 5 118 0 74 5 118 0 83 5 118 0 84 5 118 0 87 5 118 0 88 5 118 0 89 5 118 0 90 5 118 0 92 5 118 0 93 5 118 0 94 5 118 0 95 5 118 0 101 5 118 0 102 5 118 0 105 5 118 0 106 5 118 0 111 5 118 0 112 5 118 0 114 5 118 0 116 5 118 0 119 5 118 0 121 5 118 0 124 5 118 0 125 5 118 0 131 5 118 0 140 14 41 1 26 5 118 1 135] 
#[0 7 194 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 74 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 101 0 102 0 105 0 106 0 111 0 112 0 114 0 116 0 119 0 121 0 124 0 125 0 131 0 140 1 135] 
#[1 7 198 0 3 10 109 0 17 7 198 0 21 10 109 0 22 7 198 0 23 7 198 0 24 10 109 0 25 7 198 0 26 7 198 0 27 7 198 0 28 10 13 0 31 7 198 0 32 10 17 0 33 10 109 0 38 7 198 0 40 10 109 0 42 7 198 0 44 10 109 0 45 10 109 0 47 7 198 0 48 7 198 0 51 7 198 0 52 7 198 0 56 7 198 0 61 10 109 0 62 7 198 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 7 198 0 89 7 198 0 90 7 198 0 92 7 198 0 93 7 198 0 94 7 198 0 95 10 109 0 101 10 109 0 102 7 198 0 105 10 109 0 106 10 109 0 111 10 109 0 112 7 198 0 114 7 198 0 116 7 198 0 119 10 109 0 121 7 198 0 124 10 109 0 125 7 198 0 131 7 198 0 140 13 101 1 28 10 109 1 30 7 198 1 135] 
#[1 4 57 0 2 1 77 0 15 7 202 0 30 7 202 0 33 7 202 0 57 7 202 0 59 7 202 0 75 1 89 0 76 7 202 0 97 7 202 0 98 7 202 0 113 7 202 0 128 7 202 0 129 0 181 0 131 1 117 0 136 1 121 0 137 7 202 0 138 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 14 45 0 214 14 45 1 118 1 209 1 123 1 213 1 134] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 14 49 0 214 14 49 1 118 1 209 1 123 1 213 1 134] 
#[1 14 53 0 140 14 57 1 22] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 14 61 0 214 14 61 1 118 1 209 1 123 1 213 1 134] 
#[0 7 206 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 14 65 1 109 1 25 1 110 14 65 1 111 14 65 1 112 1 37 1 113 14 65 1 114 1 45 1 115 14 65 1 116 1 53 1 117 14 65 1 118 1 61 1 123 14 65 1 124 1 69 1 134] 
#[0 14 69 0 33] 
#[0 14 73 0 140] 
#[1 0 105 0 2 0 109 0 15 0 125 0 52 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 153 0 90 0 181 0 131 0 185 0 136 0 189 0 137 3 41 0 140 0 209 0 142 1 61 0 144 0 205 0 148 0 209 0 213 14 77 1 109 1 25 1 110 14 77 1 111 14 77 1 112 1 37 1 113 14 77 1 114 1 45 1 115 14 77 1 116 1 53 1 117 14 77 1 118 1 61 1 123 14 77 1 124 1 69 1 134] 
#[0 14 81 0 33] 
#[1 7 210 0 3 7 210 0 24 7 210 0 26 7 210 0 27 7 210 0 28 14 85 0 30 7 210 0 32 7 210 0 40 7 210 0 52 7 210 0 89 7 210 0 90 7 210 0 92 7 210 0 93 7 210 0 94 7 210 0 95 7 210 0 114 7 210 0 116 7 210 0 119 7 210 0 124 7 210 0 131 7 210 0 140 14 89 1 24 7 210 1 135] 
#[0 7 214 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 218 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 222 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 226 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 230 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 234 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 238 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[0 7 242 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 7 246 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 7 250 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 7 254 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 8 2 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 74 0 75 0 78 0 79 0 83 0 84 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 101 0 102 0 105 0 106 0 111 0 112 0 113 0 114 0 116 0 119 0 121 0 122 0 124 0 125 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 8 6 0 5 0 138] 
#[1 8 10 0 40 8 10 0 48 8 10 0 61 6 41 0 138] 
#[0 8 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 8 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 90 0 105 0 116 0 119 0 124] 
#[0 14 93 0 138] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 14 0 61 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 14 0 122 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 14 97 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 14 97 1 106 14 97 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134 0 14 1 135] 
#[1 0 105 0 2 0 109 0 15 0 10 0 21 0 113 0 23 0 117 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 121 0 50 0 125 0 52 0 129 0 53 0 133 0 55 0 137 0 60 0 141 0 68 0 145 0 69 0 149 0 76 0 14 0 79 0 153 0 90 0 157 0 96 0 161 0 103 0 165 0 118 0 169 0 124 0 173 0 126 0 177 0 127 0 181 0 131 0 185 0 136 0 189 0 137 0 14 0 138 0 193 0 140 0 197 0 142 1 61 0 144 0 205 0 148 0 209 0 213 14 101 1 75 3 57 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 82 0 241 1 84 0 245 1 90 0 249 1 99 0 253 1 101 1 1 1 102 1 5 1 105 3 57 1 106 3 57 1 107 1 17 1 108 1 21 1 109 1 25 1 110 1 21 1 111 1 21 1 112 1 37 1 113 1 21 1 114 1 45 1 115 1 21 1 116 1 53 1 117 1 21 1 118 1 61 1 123 1 21 1 124 1 69 1 134] 
#[1 8 34 0 3 8 34 0 5 8 34 0 10 8 34 0 14 8 34 0 16 10 109 0 17 8 34 0 21 10 109 0 22 8 34 0 23 8 34 0 24 10 109 0 25 8 34 0 26 8 34 0 27 8 34 0 28 8 34 0 30 1 103 0 31 8 34 0 32 1 107 0 33 8 34 0 36 10 109 0 38 8 34 0 39 8 34 0 40 8 34 0 41 10 109 0 42 8 34 0 43 5 117 0 44 10 109 0 45 10 109 0 47 8 34 0 48 8 34 0 49 5 121 0 51 8 34 0 52 8 34 0 56 8 34 0 57 8 34 0 58 8 34 0 59 8 34 0 61 10 109 0 62 8 34 0 65 10 109 0 67 10 45 0 70 10 109 0 74 8 34 0 75 8 34 0 78 8 34 0 79 10 109 0 83 10 109 0 84 10 109 0 87 1 111 0 88 8 34 0 89 8 34 0 90 8 34 0 92 8 34 0 93 8 34 0 94 8 34 0 95 8 34 0 97 8 34 0 98 10 109 0 101 10 109 0 102 8 34 0 105 10 109 0 106 10 109 0 111 10 109 0 112 8 34 0 113 8 34 0 114 8 34 0 116 8 34 0 119 10 109 0 121 8 34 0 122 8 34 0 124 10 109 0 125 8 34 0 128 8 34 0 129 8 34 0 131 8 34 0 132 8 34 0 133 8 34 0 138 8 34 0 140 10 97 1 27 10 97 1 28 10 97 1 29 10 109 1 30 8 34 1 135] 
#[0 8 38 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 75 0 78 0 79 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 97 0 98 0 105 0 113 0 114 0 116 0 119 0 122 0 124 0 128 0 129 0 131 0 132 0 133 0 138 0 140 1 135] 
#[0 14 105 0 141] 
#[0 14 109 0 78] 
#[1 8 42 0 3 8 42 0 24 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 8 42 0 40 2 37 0 52 8 42 0 89 2 41 0 90 2 45 0 92 8 42 0 93 8 42 0 94 8 42 0 95 8 42 0 114 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 9 85 0 171 9 85 0 177 9 85 0 239 9 85 0 240 2 77 0 241 1 233 0 242 9 85 0 243 9 85 0 244 9 85 1 0 9 85 1 1 9 85 1 2 9 85 1 3 9 85 1 4 9 85 1 5 9 85 1 7 9 85 1 8 9 85 1 9 9 85 1 11 2 129 1 12 9 85 1 13 2 137 1 34 9 85 1 42 2 145 1 43 9 85 1 45 2 153 1 46 9 85 1 49 2 161 1 50 9 85 1 51 2 169 1 52 9 85 1 54 9 85 1 55 9 85 1 57 2 185 1 58 9 85 1 59 2 193 1 60 9 85 1 62 9 85 1 63 9 85 1 65 2 209 1 66 9 85 1 71 2 217 1 72] 
#[1 8 46 0 3 8 46 0 24 2 21 0 26 2 25 0 27 2 29 0 28 2 33 0 32 8 46 0 40 2 37 0 52 8 46 0 89 2 41 0 90 2 45 0 92 8 46 0 93 8 46 0 94 8 46 0 95 8 46 0 114 2 49 0 116 2 53 0 119 2 57 0 124 1 217 0 131 1 245 0 140 9 85 0 171 9 85 0 177 9 85 0 239 9 85 0 240 2 77 0 241 1 233 0 242 9 85 0 243 9 85 0 244 9 85 1 0 9 85 1 1 9 85 1 2 9 85 1 3 9 85 1 4 9 85 1 5 9 85 1 7 9 85 1 8 9 85 1 9 9 85 1 11 2 129 1 12 9 85 1 13 2 137 1 34 9 85 1 42 2 145 1 43 9 85 1 45 2 153 1 46 9 85 1 49 2 161 1 50 9 85 1 51 2 169 1 52 9 85 1 54 9 85 1 55 9 85 1 57 2 185 1 58 9 85 1 59 2 193 1 60 9 85 1 62 9 85 1 63 9 85 1 65 2 209 1 66 9 85 1 71 2 217 1 72] 
#[1 4 141 0 140 14 113 0 237] 
#[1 3 246 0 40 3 246 0 89 3 246 0 93 3 246 0 94 3 246 0 95 3 246 0 114 14 117 0 229] 
#[0 8 50 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 138 0 140] 
#[1 13 37 0 100 13 41 0 141 14 121 0 193] 
#[1 14 125 0 40 11 109 0 89 11 113 0 93 11 117 0 94 11 121 0 95 11 125 0 114 11 133 0 230 11 133 0 231 11 133 0 232 11 133 0 233 11 133 0 234] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 14 129 0 132 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 14 133 0 26 14 137 0 40 4 253 0 52 5 5 0 90 2 45 0 92 14 141 0 255 14 141 1 0 14 141 1 1 14 141 1 4 14 141 1 5 14 141 1 7 14 141 1 8 14 141 1 9 14 141 1 11 2 129 1 12 14 141 1 13 14 141 1 49 2 161 1 50 14 141 1 51 2 169 1 52 14 141 1 54 14 141 1 55 14 141 1 57 2 185 1 58 14 141 1 59 2 193 1 60 14 141 1 62 14 141 1 63 14 141 1 65 2 209 1 66] 
#[0 8 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 90 0 92 0 93 0 94 0 95 0 105 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 8 58 0 3 10 109 0 17 8 58 0 21 10 109 0 22 8 58 0 23 8 58 0 24 10 109 0 25 8 58 0 26 8 58 0 27 8 58 0 28 10 13 0 31 8 58 0 32 10 17 0 33 10 109 0 38 8 58 0 40 10 109 0 42 8 58 0 44 10 109 0 45 10 109 0 47 8 58 0 51 8 58 0 52 10 109 0 62 8 58 0 65 10 109 0 67 10 45 0 70 10 109 0 74 10 109 0 83 10 109 0 84 10 109 0 87 10 109 0 88 8 58 0 89 8 58 0 90 8 58 0 92 8 58 0 93 8 58 0 94 8 58 0 95 10 109 0 101 10 109 0 102 8 58 0 105 10 109 0 106 10 109 0 111 10 109 0 112 8 58 0 114 8 58 0 116 8 58 0 119 10 109 0 121 8 58 0 124 10 109 0 125 8 58 0 131 8 58 0 140 13 101 1 28 10 109 1 30 8 58 1 135] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 8 62 0 30 8 62 0 33 4 193 0 35 8 62 0 57 4 193 0 58 8 62 0 59 4 193 0 64 4 193 0 71 8 62 0 75 4 193 0 81 8 62 0 97 8 62 0 98 4 193 0 109 4 193 0 110 8 62 0 113 8 62 0 128 8 62 0 129 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 8 62 0 138 4 193 1 128] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 8 66 0 30 8 66 0 33 4 193 0 35 8 66 0 57 4 193 0 58 8 66 0 59 4 193 0 64 4 193 0 71 8 66 0 75 4 193 0 81 8 66 0 97 8 66 0 98 4 193 0 109 4 193 0 110 8 66 0 113 8 66 0 128 8 66 0 129 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 8 66 0 138 4 193 1 128] 
#[0 8 70 0 5 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 14 153 0 5 8 74 0 30 8 74 0 33 8 74 0 57 8 74 0 59 8 74 0 75 8 74 0 97 8 74 0 98 8 74 0 113 8 74 0 128 8 74 0 129 8 74 0 138] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 8 78 0 30 8 78 0 33 4 193 0 35 8 78 0 57 4 193 0 58 8 78 0 59 4 193 0 64 4 193 0 71 8 78 0 75 4 193 0 81 8 78 0 97 8 78 0 98 4 193 0 109 4 193 0 110 8 78 0 113 8 78 0 128 8 78 0 129 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 8 78 0 138 4 193 1 128] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 8 82 0 30 8 82 0 33 4 29 0 35 8 82 0 57 4 29 0 58 8 82 0 59 4 29 0 64 4 29 0 71 8 82 0 75 4 29 0 81 8 82 0 97 8 82 0 98 4 29 0 109 4 29 0 110 8 82 0 113 8 82 0 128 8 82 0 129 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 8 82 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 14 157 0 214 14 157 1 118 1 209 1 123 1 213 1 134] 
#[0 8 86 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 3 181 0 2 4 29 0 4 3 189 0 6 4 29 0 8 3 197 0 10 4 29 0 11 4 29 0 12 4 29 0 13 4 29 0 14 4 29 0 18 4 29 0 20 8 90 0 30 8 90 0 33 4 29 0 35 8 90 0 57 4 29 0 58 8 90 0 59 4 29 0 64 4 29 0 71 8 90 0 75 4 29 0 81 8 90 0 97 8 90 0 98 4 29 0 109 4 29 0 110 8 90 0 113 8 90 0 128 8 90 0 129 4 29 0 130 4 1 0 131 4 29 0 133 4 29 0 134 4 29 0 136 4 29 0 137 8 90 0 138 4 21 0 139 4 25 1 121 4 29 1 127 4 29 1 128] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 1 185 0 213 14 161 0 214 14 161 1 118 1 209 1 123 1 213 1 134] 
#[0 14 165 0 138] 
#[0 8 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[0 8 98 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 90 0 105 0 116 0 119 0 124 0 140] 
#[0 8 102 0 39 0 40 0 41 0 48 0 49 0 61 0 79 0 122 0 138 1 135] 
#[1 8 106 0 39 8 106 0 40 8 106 0 49 8 106 0 79 6 41 0 138] 
#[0 8 110 0 3 0 5] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 14 169 0 207 14 173 0 208 14 177 0 209 14 181 0 210 1 185 0 213 14 185 0 214 14 185 1 118 1 209 1 123 1 213 1 134] 
#[1 11 173 0 2 7 29 0 6 5 74 0 26 5 74 0 27 5 74 0 28 5 74 0 31 5 74 0 32 5 74 0 40 5 74 0 52 5 74 0 88 5 74 0 89 5 74 0 90 5 74 0 92 5 74 0 93 5 74 0 94 5 74 0 95 5 74 0 114 5 74 0 116 5 74 0 119 5 74 0 124 5 74 0 131 5 74 0 138 5 74 0 140 14 189 0 235] 
#[1 14 193 0 40 11 109 0 89 11 113 0 93 11 117 0 94 11 121 0 95 11 125 0 114 11 133 0 230 11 133 0 231 11 133 0 232 11 133 0 233 11 133 0 234] 
#[1 8 114 0 3 8 114 0 5 4 165 0 6 0 150 0 11 4 169 0 189 4 41 0 190] 
#[0 8 118 0 31 0 88 0 138] 
#[0 8 122 0 26 0 40 0 52 0 90 0 92] 
#[1 4 253 0 52 5 1 0 80 5 5 0 90 2 45 0 92 5 9 1 12 5 13 1 50 5 17 1 52 5 21 1 58 5 25 1 60] 
#[0 8 126 0 31 0 88 0 138] 
#[0 8 130 0 26 0 40 0 52 0 90 0 92] 
#[0 8 134 0 26 0 40 0 52 0 90 0 92] 
#[0 8 138 0 26 0 40 0 52 0 90 0 92] 
#[0 14 197 0 140] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 8 142 0 30 8 142 0 33 4 193 0 35 8 142 0 57 4 193 0 58 8 142 0 59 4 193 0 64 4 193 0 71 8 142 0 75 4 193 0 81 8 142 0 97 8 142 0 98 4 193 0 109 4 193 0 110 8 142 0 113 8 142 0 128 8 142 0 129 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 8 142 0 138 4 193 1 128] 
#[1 4 185 0 2 4 193 0 4 4 189 0 6 4 193 0 8 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 8 146 0 30 8 146 0 33 4 193 0 35 8 146 0 57 4 193 0 58 8 146 0 59 4 193 0 64 4 193 0 71 8 146 0 75 4 193 0 81 8 146 0 97 8 146 0 98 4 193 0 109 4 193 0 110 8 146 0 113 8 146 0 128 8 146 0 129 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 8 146 0 138 4 193 1 128] 
#[0 8 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 89 0 90 0 92 0 93 0 94 0 95 0 114 0 116 0 119 0 124 0 131 0 140 1 135] 
#[1 2 170 0 3 2 170 0 40 14 201 0 138 14 205 1 91] 
#[0 8 154 0 3 0 40 0 138] 
#[1 14 209 0 5 14 213 0 9] 
#[0 8 158 0 5 0 9] 
#[1 4 185 0 2 4 193 0 4 8 162 0 5 4 189 0 6 4 193 0 8 8 162 0 9 4 193 0 11 4 193 0 12 4 193 0 13 4 193 0 18 4 193 0 20 4 193 0 35 4 193 0 58 4 193 0 64 4 193 0 71 4 193 0 81 4 193 0 109 4 193 0 110 4 193 0 130 4 193 0 133 4 193 0 134 4 193 0 136 4 193 0 137 4 193 1 128] 
#[1 2 218 0 26 2 218 0 27 2 218 0 28 8 166 0 31 2 218 0 32 2 218 0 40 2 218 0 52 8 166 0 88 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 8 166 0 138 2 218 0 140 14 217 0 228 7 53 0 238] 
#[0 8 170 0 31 0 88 0 138] 
#[0 8 174 0 5 0 30 0 33 0 57 0 59 0 75 0 97 0 98 0 113 0 128 0 129 0 138] 
#[1 4 57 0 2 3 222 0 3 1 77 0 15 3 222 0 40 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 14 221 0 208 14 177 0 209 14 181 0 210 1 185 0 213 14 185 0 214 14 185 1 118 1 209 1 123 1 213 1 134] 
#[0 8 178 0 3 0 40] 
#[1 4 57 0 2 1 77 0 15 1 89 0 76 0 181 0 131 1 117 0 136 1 121 0 137 4 105 0 141 1 185 0 142 1 209 0 144 1 137 0 148 14 225 0 210 1 185 0 213 14 185 0 214 14 185 1 118 1 209 1 123 1 213 1 134] 
#[0 14 229 0 2] 
#[1 3 246 0 40 3 246 0 89 3 246 0 93 3 246 0 94 3 246 0 95 3 246 0 114 14 233 0 229] 
#[0 8 182 0 3 0 40 0 138] 
#[0 8 186 0 5 0 9] 
#[1 2 218 0 3 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 52 2 218 0 89 2 218 0 90 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 95 2 218 0 114 2 218 0 116 2 218 0 119 2 218 0 124 2 218 0 131 2 218 0 140 14 237 0 204 7 49 0 228 7 53 0 238] 
#[1 14 241 0 40 11 109 0 89 11 113 0 93 11 117 0 94 11 121 0 95 11 125 0 114 11 133 0 230 11 133 0 231 11 133 0 232 11 133 0 233 11 133 0 234] 
#[0 14 245 0 3] 
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
