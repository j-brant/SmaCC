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
#[ 0 18 1 97] 
#[ 0 146 0 150] 
#[ 0 150 0 170] 
#[ 0 202 0 206] 
#[ 0 254 3 221] 
#[ 0 254 3 253] 
#[ 1 226 3 193] 
#[ 1 226 3 197] 
#[ 1 226 3 201] 
#[ 1 226 3 205] 
#[ 1 226 3 221] 
#[ 1 226 3 253] 
#[ 1 226 4 1] 
#[ 1 254 3 193] 
#[ 1 254 3 197] 
#[ 1 254 3 201] 
#[ 1 254 3 205] 
#[ 1 254 3 221] 
#[ 1 254 3 253] 
#[ 1 254 4 1] 
#[ 2 30 3 193] 
#[ 2 30 3 197] 
#[ 2 30 3 201] 
#[ 2 30 3 205] 
#[ 2 30 3 221] 
#[ 2 30 3 253] 
#[ 2 30 4 1] 
#[ 2 34 3 193] 
#[ 2 34 3 197] 
#[ 2 34 3 201] 
#[ 2 34 3 205] 
#[ 2 34 3 221] 
#[ 2 34 3 253] 
#[ 2 34 4 1] 
#[ 2 170 6 225] 
#[ 2 178 3 193] 
#[ 2 178 3 197] 
#[ 2 178 3 201] 
#[ 2 178 3 221] 
#[ 2 178 3 253] 
#[ 2 178 4 1] 
#[ 2 182 3 193] 
#[ 2 182 3 197] 
#[ 2 182 3 201] 
#[ 2 182 3 221] 
#[ 2 182 3 253] 
#[ 2 182 4 1] 
#[ 2 194 3 193] 
#[ 2 194 3 197] 
#[ 2 194 3 201] 
#[ 2 194 3 221] 
#[ 2 194 3 253] 
#[ 2 194 4 1] 
#[ 2 198 3 193] 
#[ 2 198 3 197] 
#[ 2 198 3 201] 
#[ 2 198 3 221] 
#[ 2 198 3 253] 
#[ 2 198 4 1] 
#[ 3 193 3 202] 
#[ 3 197 3 202] 
#[ 3 201 3 202] 
#[ 3 202 3 205] 
#[ 3 202 3 221] 
#[ 3 202 3 253] 
#[ 3 202 4 1] 
#[ 3 193 3 210] 
#[ 3 197 3 210] 
#[ 3 201 3 210] 
#[ 3 205 3 210] 
#[ 3 210 3 221] 
#[ 3 210 3 253] 
#[ 3 210 4 1] 
#[ 3 221 3 234] 
#[ 3 234 3 253] 
#[ 3 193 4 10] 
#[ 3 197 4 10] 
#[ 3 201 4 10] 
#[ 3 221 4 10] 
#[ 3 253 4 10] 
#[ 4 1 4 10] 
#[ 0 202 11 69] 
#[ 0 226 5 78] 
#[ 0 230 5 82] 
#[ 1 202 5 141] 
#[ 6 98 10 5] 
#[ 6 98 10 9] 
#[ 6 98 10 57] 
#[ 8 34 10 5] 
#[ 8 34 10 9] 
#[ 8 34 10 57]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2020-09-14T14:24:34.443937-05:00'
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
	#(164 0 #reduceActionForUsesList1: 5834753 false ) 
	#(363 0 #reduceActionForBeforeAsm1: 32948225 false ) 
	#(331 0 #reduceActionForStatement15: 29088783 false ) 
	#(204 0 #nil 11554817 false ) 
	#(291 0 #nil 23862273 false ) 
	#(149 1 #reduceActionForFile2: 4290562 false ) 
	#(149 1 #reduceActionForFile3: 4290563 false ) 
	#(149 1 #reduceActionForFile4: 4290564 false ) 
	#(149 1 #reduceActionForFile1: 4290561 false ) 
	#(163 0 #nil 5720065 false ) 
	#(161 1 #reduceActionForUnitFile2: 5393410 false ) 
	#(323 0 #reduceActionForMethodVariables2: 28334082 false ) 
	#(196 0 #reduceActionForOptionalArguments1: 10446849 false ) 
	#(379 1 #reduceActionForInheritedFunctionCall4: 35956740 false ) 
	#(354 1 #reduceActionForRaiseStatement2: 31966210 false ) 
	#(372 1 #reduceActionForVariableExpression1: 35358721 false ) 
	#(212 1 #liftFirstValue: 12247041 false ) 
	#(378 1 #liftFirstValue: 35934209 false ) 
	#(364 1 #reduceActionForExpression9: 33065993 false ) 
	#(364 1 #reduceActionForExpression9: 33065991 false ) 
	#(331 1 #reduceActionForStatement14: 29088782 false ) 
	#(331 1 #reduceActionForStatement13: 29088781 false ) 
	#(331 1 #reduceActionForStatement11: 29088779 false ) 
	#(331 1 #reduceActionForStatement2: 29088770 false ) 
	#(331 1 #reduceActionForStatement3: 29088771 false ) 
	#(331 1 #reduceActionForStatement4: 29088772 false ) 
	#(331 1 #reduceActionForStatement5: 29088773 false ) 
	#(331 1 #reduceActionForStatement6: 29088774 false ) 
	#(331 1 #reduceActionForStatement7: 29088775 false ) 
	#(331 1 #reduceActionForStatement8: 29088776 false ) 
	#(331 1 #reduceActionForStatement9: 29088777 false ) 
	#(331 1 #reduceActionForStatement10: 29088778 false ) 
	#(331 1 #liftFirstValue: 29088780 false ) 
	#(361 1 #liftFirstValue: 32769026 false ) 
	#(331 1 #liftFirstValue: 29088769 false ) 
	#(364 1 #liftFirstValue: 33065987 false ) 
	#(189 0 #reduceActionForInsideGeneric1: 9057281 true ) 
	#(364 1 #liftFirstValue: 33065986 false ) 
	#(364 1 #liftFirstValue: 33066007 false ) 
	#(364 1 #liftFirstValue: 33066006 false ) 
	#(364 1 #liftFirstValue: 33066005 false ) 
	#(364 1 #liftFirstValue: 33065985 false ) 
	#(364 1 #liftFirstValue: 33066002 false ) 
	#(364 1 #reduceActionForExpression9: 33065992 false ) 
	#(364 1 #liftFirstValue: 33065990 false ) 
	#(364 1 #reduceActionForExpression9: 33066004 false ) 
	#(214 0 #reduceActionForConstantArray2: 13329410 false ) 
	#(245 1 #reduceActionForFileType2: 17850370 false ) 
	#(204 1 #liftFirstValue: 11554818 false ) 
	#(213 1 #reduceActionForVariableExpression1: 12269571 false ) 
	#(192 1 #reduceActionForVariableExpression1: 9360385 false ) 
	#(213 1 #reduceActionForExpression9: 12269575 false ) 
	#(244 1 #liftFirstValue: 17756164 false ) 
	#(244 1 #liftFirstValue: 17756161 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8489985 false ) 
	#(244 1 #liftFirstValue: 17756162 false ) 
	#(244 1 #liftFirstValue: 17756163 false ) 
	#(187 1 #liftFirstValue: 8489993 false ) 
	#(187 1 #liftFirstValue: 8489988 false ) 
	#(187 1 #liftFirstValue: 8489989 false ) 
	#(187 1 #liftFirstValue: 8489994 false ) 
	#(213 1 #reduceActionForExpression9: 12269569 false ) 
	#(211 1 #liftFirstValue: 12183553 false ) 
	#(187 1 #liftFirstValue: 8489991 false ) 
	#(187 1 #liftFirstValue: 8489987 false ) 
	#(213 1 #liftFirstValue: 12269577 false ) 
	#(213 1 #reduceActionForExpression9: 12269574 false ) 
	#(213 1 #reduceActionForExpression9: 12269570 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7477249 false ) 
	#(240 1 #reduceActionForAttributes1: 17214465 false ) 
	#(265 0 #reduceActionForOptionalType1: 19803137 false ) 
	#(289 1 #reduceActionForVariableNames1: 23706625 false ) 
	#(291 1 #liftFirstValue: 23862275 false ) 
	#(291 1 #liftFirstValue: 23862276 false ) 
	#(291 1 #liftFirstValue: 23862274 false ) 
	#(238 1 #liftFirstValue: 16377868 false ) 
	#(238 1 #liftFirstValue: 16377869 false ) 
	#(238 1 #liftFirstValue: 16377864 false ) 
	#(238 1 #liftFirstValue: 16377866 false ) 
	#(238 1 #liftFirstValue: 16377867 false ) 
	#(238 1 #liftFirstValue: 16377865 false ) 
	#(239 1 #liftFirstValue: 16877574 false ) 
	#(238 1 #liftFirstValue: 16377860 false ) 
	#(238 1 #liftFirstValue: 16377862 false ) 
	#(256 1 #liftFirstValue: 18981889 false ) 
	#(256 1 #liftFirstValue: 18981890 false ) 
	#(256 1 #liftFirstValue: 18981891 false ) 
	#(256 1 #liftFirstValue: 18981892 false ) 
	#(256 1 #liftFirstValue: 18981893 false ) 
	#(255 1 #liftFirstValue: 18909185 false ) 
	#(266 1 #reduceActionForPropertyHeader1: 19851265 false ) 
	#(255 1 #liftFirstValue: 18909186 false ) 
	#(257 1 #liftFirstValue: 19120129 false ) 
	#(257 1 #liftFirstValue: 19120130 false ) 
	#(258 1 #liftFirstValue: 19204097 false ) 
	#(258 1 #liftFirstValue: 19204098 false ) 
	#(259 1 #liftFirstValue: 19284993 false ) 
	#(304 1 #reduceActionForExternalProcedureHeader1: 25787393 false ) 
	#(259 1 #liftFirstValue: 19284994 false ) 
	#(306 1 #reduceActionForExternalProcedureHeader1: 25985025 false ) 
	#(260 1 #liftFirstValue: 19362817 false ) 
	#(260 1 #liftFirstValue: 19362818 false ) 
	#(262 1 #liftFirstValue: 19548161 false ) 
	#(312 1 #reduceActionForExternalFunctionHeader1: 26824705 false ) 
	#(262 1 #liftFirstValue: 19548162 false ) 
	#(314 1 #reduceActionForExternalFunctionHeader1: 27017217 false ) 
	#(263 1 #liftFirstValue: 19622913 false ) 
	#(263 1 #liftFirstValue: 19622914 false ) 
	#(264 1 #liftFirstValue: 19713025 false ) 
	#(264 1 #liftFirstValue: 19713026 false ) 
	#(238 1 #liftFirstValue: 16377859 false ) 
	#(326 1 #reduceActionForVars1: 28644353 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6102017 false ) 
	#(193 0 #nil 9702401 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5913601 false ) 
	#(166 1 #reduceActionForUsesModule1: 5988353 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4849665 false ) 
	#(292 0 #nil 23949313 false ) 
	#(155 1 #reduceActionForMainMethod1: 4903937 false ) 
	#(364 2 #reduceActionForExpression14: 33065998 false ) 
	#(330 1 #reduceActionForVariableNames1: 28985345 false ) 
	#(358 1 #liftFirstValue: 32488449 false ) 
	#(286 0 #reduceActionForArgumentList1: 23438337 false ) 
	#(334 2 #reduceActionForGotoStatement1: 29930497 false ) 
	#(334 2 #reduceActionForGotoStatement1: 29930498 false ) 
	#(379 2 #reduceActionForInheritedFunctionCall3: 35956739 false ) 
	#(364 2 #reduceActionForExpression15: 33065999 false ) 
	#(368 2 #reduceActionForAnonymousProcedureHeader1: 34767873 false ) 
	#(355 0 #reduceActionForOptionalType1: 32074753 false ) 
	#(340 0 #nil 30674945 false ) 
	#(338 1 #reduceActionForVariableNames1: 30469121 false ) 
	#(373 2 #reduceActionForSetConstructor2: 35428354 false ) 
	#(375 1 #reduceActionForSetValue1: 35658753 false ) 
	#(374 1 #reduceActionForVariableNames1: 35558401 false ) 
	#(364 2 #reduceActionForExpression16: 33066000 false ) 
	#(364 2 #reduceActionForExpression17: 33066001 false ) 
	#(383 1 #liftFirstValue: 36655111 false ) 
	#(383 1 #liftFirstValue: 36655112 false ) 
	#(383 1 #liftFirstValue: 36655119 false ) 
	#(383 1 #liftFirstValue: 36655120 false ) 
	#(383 1 #liftFirstValue: 36655108 false ) 
	#(382 1 #liftFirstValue: 36590593 false ) 
	#(383 1 #liftFirstValue: 36655105 false ) 
	#(383 1 #liftFirstValue: 36655117 false ) 
	#(383 1 #liftFirstValue: 36655109 false ) 
	#(383 1 #liftFirstValue: 36655122 false ) 
	#(383 1 #liftFirstValue: 36655123 false ) 
	#(383 1 #liftFirstValue: 36655110 false ) 
	#(383 1 #liftFirstValue: 36655106 false ) 
	#(383 1 #liftFirstValue: 36655115 false ) 
	#(383 1 #liftFirstValue: 36655116 false ) 
	#(383 1 #liftFirstValue: 36655107 false ) 
	#(383 1 #liftFirstValue: 36655118 false ) 
	#(383 1 #liftFirstValue: 36655121 false ) 
	#(383 1 #liftFirstValue: 36655114 false ) 
	#(383 1 #liftFirstValue: 36655113 false ) 
	#(364 2 #reduceActionForExpression19: 33066003 false ) 
	#(364 2 #reduceActionForExpression13: 33065997 false ) 
	#(382 1 #liftFirstValue: 36590594 false ) 
	#(366 2 #reduceActionForInstantiatedGenericExpression1: 34483201 false ) 
	#(367 2 #reduceActionForAnonymousProcedure1: 34656257 false ) 
	#(369 2 #reduceActionForAnonymousFunction1: 34868225 false ) 
	#(366 2 #reduceActionForInstantiatedGenericExpression1: 34483202 false ) 
	#(185 1 #reduceActionForEnumName1: 8268801 false ) 
	#(184 1 #reduceActionForVariableNames1: 8196097 false ) 
	#(216 1 #reduceActionForUsesModule1: 13556737 false ) 
	#(214 1 #reduceActionForConstantArray1: 13329409 false ) 
	#(215 1 #reduceActionForUsesModuleList1: 13376513 false ) 
	#(346 0 #nil 31266817 false ) 
	#(217 1 #reduceActionForConstantArray1: 13691905 false ) 
	#(218 1 #reduceActionForVariableNames1: 13734913 false ) 
	#(213 2 #reduceActionForExpression14: 12269583 false ) 
	#(213 2 #reduceActionForExpression15: 12269580 false ) 
	#(261 0 #reduceActionForOptionalType1: 19456001 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8489995 false ) 
	#(213 2 #reduceActionForExpression16: 12269581 false ) 
	#(213 2 #reduceActionForExpression17: 12269582 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8489986 false ) 
	#(192 2 #reduceActionForNamedType3: 9360387 false ) 
	#(247 0 #reduceActionForOptionalArguments1: 18172930 false ) 
	#(237 0 #reduceActionForMethodVariables2: 16297985 false ) 
	#(240 2 #reduceActionForAttributes2: 17214466 false ) 
	#(288 2 #reduceActionForArgument2: 23567362 false ) 
	#(268 2 #reduceActionForClassPropertyHeader1: 20109313 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26433537 false ) 
	#(310 2 #reduceActionForExternalClassProcedureHeader1: 26545153 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27466753 false ) 
	#(318 2 #reduceActionForExternalClassFunctionHeader1: 27575297 false ) 
	#(238 2 #reduceActionForNewClassComponent2: 16377858 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6456321 false ) 
	#(171 1 #reduceActionForAttributes1: 6535169 false ) 
	#(302 0 #reduceActionForOptionalType1: 25572353 false ) 
	#(270 0 #nil 20532225 false ) 
	#(327 2 #reduceActionForVarsVars2: 28674050 false ) 
	#(328 1 #reduceActionForAttributes1: 28762113 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7150593 false ) 
	#(177 1 #reduceActionForAttributes1: 7231489 false ) 
	#(327 2 #reduceActionForVarsVars2: 28674049 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16377861 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16377863 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16877569 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16877570 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16877571 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16877572 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16877573 false ) 
	#(280 0 #reduceActionForMethodVariables2: 21824513 false ) 
	#(193 1 #liftFirstValue: 9702403 false ) 
	#(193 1 #liftFirstValue: 9702402 false ) 
	#(157 3 #reduceActionForPackageLine1: 5021697 false ) 
	#(164 3 #reduceActionForUsesList2: 5834754 false ) 
	#(159 1 #reduceActionForVariableNames1: 5200897 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6226945 false ) 
	#(384 0 #nil 36841473 false ) 
	#(150 3 #reduceActionForProgramFile2: 4420610 false ) 
	#(324 1 #liftFirstValue: 28405763 false ) 
	#(324 1 #liftFirstValue: 28405767 false ) 
	#(324 1 #liftFirstValue: 28405762 false ) 
	#(324 1 #liftFirstValue: 28405764 false ) 
	#(303 1 #reduceActionForProcedureDefinition2: 25620482 false ) 
	#(324 1 #liftFirstValue: 28405765 false ) 
	#(311 1 #reduceActionForFunctionDefinition2: 26662914 false ) 
	#(323 2 #reduceActionForAttributes2: 28334081 false ) 
	#(324 1 #liftFirstValue: 28405766 false ) 
	#(324 1 #liftFirstValue: 28405761 false ) 
	#(364 3 #reduceActionForExpression11: 33065995 false ) 
	#(361 3 #reduceActionForStatementBlock1: 32769025 false ) 
	#(358 2 #reduceActionForForVariableExpression2: 32488450 false ) 
	#(286 1 #reduceActionForConstantArray1: 23438338 false ) 
	#(287 1 #reduceActionForVariableNames1: 23472129 false ) 
	#(370 3 #reduceActionForAnonymousFunctionHeader1: 34976769 false ) 
	#(354 3 #reduceActionForRaiseStatement1: 31966209 false ) 
	#(344 0 #nil 31077377 false ) 
	#(373 3 #reduceActionForSetConstructor1: 35428353 false ) 
	#(333 3 #reduceActionForPackageLine1: 29795329 false ) 
	#(333 3 #reduceActionForPackageLine1: 29795330 false ) 
	#(362 3 #reduceActionForAsmBlock1: 32873473 false ) 
	#(364 3 #reduceActionForExpression5: 33065989 false ) 
	#(381 1 #liftFirstValue: 36456449 false ) 
	#(380 1 #reduceActionForVariableNames1: 36348929 false ) 
	#(365 3 #reduceActionForPropertyExpression2: 34328578 false ) 
	#(365 3 #reduceActionForPropertyExpression2: 34328577 false ) 
	#(364 3 #reduceActionForExpression12: 33065996 false ) 
	#(377 1 #reduceActionForVariableNames1: 35846145 false ) 
	#(364 3 #reduceActionForExpression10: 33065994 false ) 
	#(183 3 #reduceActionForEnumType1: 8142849 false ) 
	#(213 3 #reduceActionForConstantExpression11: 12269579 false ) 
	#(346 1 #liftFirstValue: 31266818 false ) 
	#(245 3 #reduceActionForFileType1: 17850369 false ) 
	#(197 3 #reduceActionForSetType2: 10511362 false ) 
	#(197 3 #reduceActionForSetType1: 10511361 false ) 
	#(236 2 #reduceActionForQualifiedName1: 16097281 false ) 
	#(192 3 #reduceActionForPropertyExpression2: 9360386 false ) 
	#(228 0 #reduceActionForMethodVariables2: 15164417 false ) 
	#(227 1 #reduceActionForImplicitClassSection1: 15091713 false ) 
	#(210 3 #reduceActionForRangeType1: 12093441 false ) 
	#(220 1 #reduceActionForVariableNames1: 13993985 false ) 
	#(213 3 #reduceActionForPropertyExpression2: 12269572 false ) 
	#(213 3 #reduceActionForExpression10: 12269573 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8489992 false ) 
	#(241 3 #reduceActionForAttribute1: 17293313 false ) 
	#(181 1 #reduceActionForGenericTypeArgument1: 7723009 false ) 
	#(180 1 #reduceActionForVariableNames1: 7565313 false ) 
	#(265 2 #reduceActionForGotoStatement1: 19803138 false ) 
	#(289 3 #reduceActionForVariableNames2: 23706626 false ) 
	#(171 2 #reduceActionForAttributes2: 6535170 false ) 
	#(328 2 #reduceActionForAttributes2: 28762114 false ) 
	#(177 2 #reduceActionForAttributes2: 7231490 false ) 
	#(284 2 #reduceActionForExternalMethodModifier1: 22495233 false ) 
	#(284 2 #reduceActionForExternalMethodModifier6: 22495238 false ) 
	#(297 3 #reduceActionForExternalConstructorHeader1: 24706049 false ) 
	#(300 3 #reduceActionForExternalConstructorHeader1: 25230337 false ) 
	#(305 3 #reduceActionForExternalProcedureHeaderVars1: 25867265 false ) 
	#(313 3 #reduceActionForExternalFunctionHeaderVars1: 26901505 false ) 
	#(320 3 #reduceActionForExternalConstructorHeader1: 27877377 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6102018 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4732929 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4536321 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5615617 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5913602 false ) 
	#(166 3 #reduceActionForPackageLine1: 5988354 false ) 
	#(150 4 #reduceActionForProgramFile1: 4420609 false ) 
	#(154 2 #reduceActionForAttributes2: 4849666 false ) 
	#(158 3 #reduceActionForRequires1: 5120001 false ) 
	#(156 4 #reduceActionForPackageFile1: 4964353 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5720066 false ) 
	#(294 0 #reduceActionForMethodVariables2: 24181761 false ) 
	#(385 0 #nil 36952065 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6820865 false ) 
	#(174 1 #reduceActionForAttributes1: 6920193 false ) 
	#(303 2 #reduceActionForProcedureDefinition1: 25620481 false ) 
	#(311 2 #reduceActionForFunctionDefinition1: 26662913 false ) 
	#(322 3 #reduceActionForMethodComponents1: 28246017 false ) 
	#(330 3 #reduceActionForVariableNames2: 28985346 false ) 
	#(352 1 #reduceActionForBaseCaseLabel1: 31754241 false ) 
	#(353 0 #reduceActionForElseCase1: 31916033 false ) 
	#(348 1 #reduceActionForVariableNames1: 31371265 false ) 
	#(351 1 #reduceActionForVariableNames1: 31665153 false ) 
	#(350 1 #liftFirstValue: 31559681 false ) 
	#(196 3 #reduceActionForRequires1: 10446850 false ) 
	#(336 4 #reduceActionForIfStatement1: 30135297 false ) 
	#(379 4 #reduceActionForInheritedFunctionCall2: 35956738 false ) 
	#(355 2 #reduceActionForGotoStatement1: 32074754 false ) 
	#(335 4 #reduceActionForRepeatStatement1: 30031873 false ) 
	#(343 0 #nil 31001601 false ) 
	#(341 1 #reduceActionForAttributes1: 30834689 false ) 
	#(332 4 #reduceActionForVariableStatement3: 29608963 false ) 
	#(332 4 #reduceActionForVariableStatement1: 29608961 false ) 
	#(360 4 #reduceActionForLibraryLine1: 32663553 false ) 
	#(338 3 #reduceActionForVariableNames2: 30469122 false ) 
	#(337 4 #reduceActionForRepeatStatement1: 30374913 false ) 
	#(375 3 #reduceActionForSetValue2: 35658754 false ) 
	#(374 3 #reduceActionForVariableNames2: 35558402 false ) 
	#(364 4 #reduceActionForExpression4: 33065988 false ) 
	#(376 3 #reduceActionForRequires1: 35791873 false ) 
	#(191 1 #reduceActionForVariableNames1: 9197569 false ) 
	#(190 0 #reduceActionForOutsideGeneric1: 9126913 true ) 
	#(185 3 #reduceActionForEnumName2: 8268802 false ) 
	#(219 3 #reduceActionForConstantRecordField1: 13869057 false ) 
	#(184 3 #reduceActionForVariableNames2: 8196098 false ) 
	#(216 3 #reduceActionForPackageLine1: 13556738 false ) 
	#(215 3 #reduceActionForUsesModuleList2: 13376514 false ) 
	#(213 4 #reduceActionForConstantExpression10: 12269578 false ) 
	#(218 3 #reduceActionForVariableNames2: 13734914 false ) 
	#(261 2 #reduceActionForGotoStatement1: 19456002 false ) 
	#(249 1 #liftFirstValue: 18350082 false ) 
	#(249 1 #liftFirstValue: 18350081 false ) 
	#(248 1 #reduceActionForVariableNames1: 18238465 false ) 
	#(201 4 #reduceActionForRecordType1: 11145217 false ) 
	#(203 2 #reduceActionForRecordFieldList1: 11418625 false ) 
	#(237 2 #reduceActionForAttributes2: 16297986 false ) 
	#(213 4 #reduceActionForExpression4: 12269576 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8489990 false ) 
	#(179 3 #reduceActionForRequires1: 7477250 false ) 
	#(223 0 #reduceActionForMethodVariables2: 14761985 false ) 
	#(251 1 #liftFirstValue: 18600962 false ) 
	#(251 1 #liftFirstValue: 18600961 false ) 
	#(234 0 #reduceActionForOptionalArguments1: 15936513 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7339009 false ) 
	#(182 1 #reduceActionForUsesModule1: 7871491 false ) 
	#(182 1 #reduceActionForUsesModule1: 7871492 false ) 
	#(186 1 #liftFirstValue: 8378372 false ) 
	#(186 1 #liftFirstValue: 8378369 false ) 
	#(186 1 #liftFirstValue: 8378373 false ) 
	#(186 1 #liftFirstValue: 8378370 false ) 
	#(186 1 #liftFirstValue: 8378371 false ) 
	#(250 1 #reduceActionForInterfaceType2: 18406402 false ) 
	#(290 0 #reduceActionForOptionalType1: 23797761 false ) 
	#(281 0 #reduceActionForMethodVariables2: 21895169 false ) 
	#(302 2 #reduceActionForGotoStatement1: 25572354 false ) 
	#(269 0 #reduceActionForPropertyValues1: 20201473 false ) 
	#(284 3 #reduceActionForExternalMethodModifier4: 22495236 false ) 
	#(284 3 #reduceActionForExternalMethodModifier4: 22495234 false ) 
	#(285 1 #liftFirstValue: 23149579 false ) 
	#(285 1 #liftFirstValue: 23149573 false ) 
	#(285 1 #liftFirstValue: 23149582 false ) 
	#(285 1 #liftFirstValue: 23149577 false ) 
	#(285 1 #liftFirstValue: 23149583 false ) 
	#(285 1 #liftFirstValue: 23149586 false ) 
	#(285 1 #liftFirstValue: 23149581 false ) 
	#(285 1 #liftFirstValue: 23149589 false ) 
	#(285 1 #liftFirstValue: 23149588 false ) 
	#(285 1 #liftFirstValue: 23149587 false ) 
	#(285 1 #liftFirstValue: 23149580 false ) 
	#(285 1 #liftFirstValue: 23149569 false ) 
	#(285 1 #liftFirstValue: 23149570 false ) 
	#(285 1 #liftFirstValue: 23149574 false ) 
	#(285 1 #liftFirstValue: 23149585 false ) 
	#(285 1 #liftFirstValue: 23149572 false ) 
	#(285 1 #liftFirstValue: 23149575 false ) 
	#(285 1 #liftFirstValue: 23149590 false ) 
	#(285 1 #liftFirstValue: 23149584 false ) 
	#(285 1 #liftFirstValue: 23149571 false ) 
	#(285 1 #liftFirstValue: 23149578 false ) 
	#(285 1 #liftFirstValue: 23149576 false ) 
	#(280 2 #reduceActionForAttributes2: 21824514 false ) 
	#(282 1 #liftFirstValue: 21998593 false ) 
	#(282 1 #liftFirstValue: 21998594 false ) 
	#(387 1 #reduceActionForVariableNames1: 37166081 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4653057 false ) 
	#(159 3 #reduceActionForVariableNames2: 5200898 false ) 
	#(160 3 #reduceActionForUsesList2: 5310465 false ) 
	#(388 2 #reduceActionForGotoStatement1: 37257217 false ) 
	#(168 2 #reduceActionForAttributes2: 6226946 false ) 
	#(169 1 #liftFirstValue: 6321155 false ) 
	#(169 1 #liftFirstValue: 6321154 false ) 
	#(169 1 #liftFirstValue: 6321153 false ) 
	#(169 1 #liftFirstValue: 6321156 false ) 
	#(169 1 #liftFirstValue: 6321157 false ) 
	#(169 1 #liftFirstValue: 6321158 false ) 
	#(293 0 #nil 24095745 false ) 
	#(384 2 #reduceActionForInitializationSection2: 36841474 false ) 
	#(325 3 #reduceActionForLabels1: 28552193 false ) 
	#(174 2 #reduceActionForAttributes2: 6920194 false ) 
	#(347 2 #reduceActionForCaseOptionList1: 31319041 false ) 
	#(358 4 #reduceActionForForVariableExpression3: 32488451 false ) 
	#(359 1 #liftFirstValue: 32630786 false ) 
	#(359 1 #liftFirstValue: 32630785 false ) 
	#(287 3 #reduceActionForVariableNames2: 23472130 false ) 
	#(379 5 #reduceActionForInheritedFunctionCall1: 35956737 false ) 
	#(340 3 #reduceActionForExcept3: 30674947 false ) 
	#(341 2 #reduceActionForAttributes2: 30834690 false ) 
	#(340 3 #reduceActionForExcept2: 30674946 false ) 
	#(344 2 #reduceActionForFinally2: 31077378 false ) 
	#(339 5 #reduceActionForTryStatement1: 30574593 false ) 
	#(380 3 #reduceActionForVariableNames2: 36348930 false ) 
	#(381 3 #reduceActionForMethodArgument2: 36456450 false ) 
	#(377 3 #reduceActionForVariableNames2: 35846146 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType1: 9779201 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType2: 9779202 false ) 
	#(197 5 #reduceActionForSetType3: 10511363 false ) 
	#(236 4 #reduceActionForQualifiedName2: 16097282 false ) 
	#(247 3 #reduceActionForRequires1: 18172929 false ) 
	#(246 5 #reduceActionForArrayType2: 17961986 false ) 
	#(246 5 #reduceActionForArrayType1: 17961985 false ) 
	#(203 3 #reduceActionForRecordFieldList2: 11418626 false ) 
	#(228 2 #reduceActionForAttributes2: 15164418 false ) 
	#(229 1 #liftFirstValue: 15226881 false ) 
	#(229 1 #liftFirstValue: 15226882 false ) 
	#(229 1 #liftFirstValue: 15226883 false ) 
	#(229 1 #liftFirstValue: 15226884 false ) 
	#(220 3 #reduceActionForVariableNames2: 13993986 false ) 
	#(181 3 #reduceActionForGenericTypeArgument2: 7723010 false ) 
	#(180 3 #reduceActionForVariableNames2: 7565314 false ) 
	#(182 2 #reduceActionForDefinedType2: 7871490 false ) 
	#(252 0 #nil 18656257 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7339010 false ) 
	#(226 0 #nil 15031297 false ) 
	#(288 5 #reduceActionForArgument1: 23567361 false ) 
	#(298 5 #reduceActionForNonExternalConstructorHeader1: 24842241 false ) 
	#(301 5 #reduceActionForNonExternalDestructorHeader1: 25363457 false ) 
	#(242 5 #reduceActionForInterfaceFunctionAssignment1: 17380353 false ) 
	#(243 5 #reduceActionForInterfaceProcedureAssignment1: 17563649 false ) 
	#(307 5 #reduceActionForNonExternalProcedureHeaderVars1: 26071041 false ) 
	#(270 3 #reduceActionForPropertyArrayAccessors2: 20532226 false ) 
	#(238 5 #reduceActionForNewClassComponent1: 16377857 false ) 
	#(283 2 #reduceActionForExternalMethodModifier6: 22073345 false ) 
	#(386 3 #reduceActionForExportsDefinition1: 37055489 false ) 
	#(295 1 #liftFirstValue: 24241162 false ) 
	#(295 1 #liftFirstValue: 24241163 false ) 
	#(295 1 #liftFirstValue: 24241160 false ) 
	#(292 4 #reduceActionForImplementationSection2: 23949314 false ) 
	#(294 2 #reduceActionForAttributes2: 24181762 false ) 
	#(295 1 #liftFirstValue: 24241153 false ) 
	#(296 1 #reduceActionForConstructorDefinition2: 24528898 false ) 
	#(295 1 #liftFirstValue: 24241154 false ) 
	#(299 1 #reduceActionForDestructorDefinition2: 25058306 false ) 
	#(295 1 #liftFirstValue: 24241155 false ) 
	#(295 1 #liftFirstValue: 24241156 false ) 
	#(308 1 #reduceActionForClassProcedureDefinition2: 26241026 false ) 
	#(295 1 #liftFirstValue: 24241157 false ) 
	#(295 1 #liftFirstValue: 24241158 false ) 
	#(316 1 #reduceActionForClassFunctionDefinition2: 27279362 false ) 
	#(295 1 #liftFirstValue: 24241159 false ) 
	#(319 1 #reduceActionForClassOperatorDefinition2: 27689986 false ) 
	#(295 1 #liftFirstValue: 24241161 false ) 
	#(295 1 #liftFirstValue: 24241164 false ) 
	#(385 2 #reduceActionForFinalizationSection2: 36952066 false ) 
	#(161 6 #reduceActionForUnitFile1: 5393409 false ) 
	#(352 3 #reduceActionForBaseCaseLabel2: 31754242 false ) 
	#(353 2 #reduceActionForElseCase2: 31916034 false ) 
	#(345 6 #reduceActionForCaseStatement1: 31144961 false ) 
	#(348 3 #reduceActionForVariableNames2: 31371266 false ) 
	#(349 3 #reduceActionForCaseOption1: 31473665 false ) 
	#(351 3 #reduceActionForVariableNames2: 31665154 false ) 
	#(350 3 #reduceActionForCaseLabel2: 31559682 false ) 
	#(357 6 #reduceActionForForInStatement1: 32338945 false ) 
	#(336 6 #reduceActionForForInStatement1: 30135298 false ) 
	#(371 6 #reduceActionForMemExpression1: 35086337 false ) 
	#(371 6 #reduceActionForMemExpression1: 35086338 false ) 
	#(343 2 #reduceActionForPossibleExceptElse2: 31001602 false ) 
	#(332 6 #reduceActionForVariableStatement2: 29608962 false ) 
	#(191 3 #reduceActionForVariableNames2: 9197570 false ) 
	#(188 5 #reduceActionForInstantiatedGenericTypeArguments1: 8926209 false ) 
	#(202 6 #reduceActionForRecordHelperType1: 11250689 false ) 
	#(199 1 #reduceActionForVariableNames1: 10945537 false ) 
	#(198 3 #reduceActionForTwoItemSetNameList1: 10788865 false ) 
	#(248 3 #reduceActionForVariableNames2: 18238466 false ) 
	#(230 2 #reduceActionForPrivateClassSection2: 15340546 false ) 
	#(231 2 #reduceActionForProtectedClassSection2: 15533058 false ) 
	#(232 2 #reduceActionForPublicClassSection1: 15739905 false ) 
	#(233 2 #reduceActionForPublishedClassSection1: 15832065 false ) 
	#(200 3 #reduceActionForMetaclassType1: 11048961 false ) 
	#(224 1 #liftFirstValue: 14836737 false ) 
	#(224 1 #liftFirstValue: 14836738 false ) 
	#(223 2 #reduceActionForAttributes2: 14761986 false ) 
	#(221 3 #reduceActionForNewClassType2: 14113794 false ) 
	#(235 1 #reduceActionForVariableNames1: 15997953 false ) 
	#(182 3 #reduceActionForPackageLine1: 7871493 false ) 
	#(182 3 #reduceActionForPackageLine1: 7871489 false ) 
	#(253 0 #reduceActionForMethodVariables2: 18732033 false ) 
	#(226 1 #liftFirstValue: 15031298 false ) 
	#(290 2 #reduceActionForGotoStatement1: 23797762 false ) 
	#(329 6 #reduceActionForVariable1: 28861441 false ) 
	#(298 6 #reduceActionForNonExternalConstructorHeader2: 24842242 false ) 
	#(301 6 #reduceActionForNonExternalDestructorHeader2: 25363458 false ) 
	#(281 2 #reduceActionForAttributes2: 21895170 false ) 
	#(315 6 #reduceActionForNonExternalFunctionHeaderVars1: 27100161 false ) 
	#(275 1 #reduceActionForPropertyDefault2: 21207042 false ) 
	#(275 1 #reduceActionForPropertyDefault3: 21207043 false ) 
	#(279 0 #nil 21724161 false ) 
	#(269 2 #reduceActionForPropertyValues2: 20201474 false ) 
	#(269 2 #reduceActionForCaseOptionList1: 20201475 false ) 
	#(269 2 #reduceActionForPropertyValues4: 20201476 false ) 
	#(269 2 #reduceActionForPropertyValues8: 20201480 false ) 
	#(269 2 #reduceActionForPropertyValues5: 20201477 false ) 
	#(269 2 #reduceActionForPropertyValues7: 20201479 false ) 
	#(269 2 #reduceActionForPropertyValues6: 20201478 false ) 
	#(284 5 #reduceActionForExternalMethodModifier5: 22495237 false ) 
	#(284 5 #reduceActionForExternalMethodModifier5: 22495235 false ) 
	#(283 3 #reduceActionForNonExternalMethodModifier2: 22073346 false ) 
	#(283 3 #reduceActionForNonExternalMethodModifier4: 22073348 false ) 
	#(283 3 #reduceActionForNonExternalMethodModifier4: 22073347 false ) 
	#(387 3 #reduceActionForVariableNames2: 37166082 false ) 
	#(293 2 #reduceActionForImplementationCode2: 24095746 false ) 
	#(296 2 #reduceActionForConstructorDefinition1: 24528897 false ) 
	#(299 2 #reduceActionForDestructorDefinition1: 25058305 false ) 
	#(308 2 #reduceActionForClassProcedureDefinition1: 26241025 false ) 
	#(316 2 #reduceActionForClassFunctionDefinition1: 27279361 false ) 
	#(319 2 #reduceActionForClassOperatorDefinition1: 27689985 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType1: 10091521 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType2: 10091522 false ) 
	#(230 3 #reduceActionForPrivateClassSection1: 15340545 false ) 
	#(231 3 #reduceActionForProtectedClassSection1: 15533057 false ) 
	#(234 3 #reduceActionForRequires1: 15936514 false ) 
	#(172 7 #reduceActionForConstantValue1: 6630401 false ) 
	#(321 7 #reduceActionForNonExternalClassOperatorHeader1: 28019713 false ) 
	#(275 2 #reduceActionForPropertyDefault1: 21207041 false ) 
	#(274 2 #reduceActionForPropertyDispid1: 20894721 false ) 
	#(277 1 #reduceActionForVariableNames1: 21515265 false ) 
	#(276 2 #reduceActionForPropertyImplements1: 21410817 false ) 
	#(271 2 #reduceActionForPropertyIndex1: 20629505 false ) 
	#(272 2 #reduceActionForPropertyReader1: 20722689 false ) 
	#(278 2 #reduceActionForPropertyStored1: 21635073 false ) 
	#(273 2 #reduceActionForPropertyWriter1: 20807681 false ) 
	#(267 7 #reduceActionForPropertyHeaderVars1: 19911681 false ) 
	#(175 5 #reduceActionForResource1: 6994945 false ) 
	#(356 8 #reduceActionForForStatement1: 32142337 false ) 
	#(342 5 #reduceActionForOnDo1: 30899201 false ) 
	#(199 3 #reduceActionForVariableNames2: 10945538 false ) 
	#(235 3 #reduceActionForVariableNames2: 15997954 false ) 
	#(225 5 #reduceActionForOldClassType1: 14881793 false ) 
	#(252 3 #reduceActionForGuid2: 18656258 false ) 
	#(250 5 #reduceActionForInterfaceType1: 18406401 false ) 
	#(253 2 #reduceActionForAttributes2: 18732034 false ) 
	#(254 1 #liftFirstValue: 18824194 false ) 
	#(254 1 #liftFirstValue: 18824193 false ) 
	#(274 3 #reduceActionForPropertyDispid2: 20894722 false ) 
	#(274 3 #reduceActionForPropertyDispid3: 20894723 false ) 
	#(279 2 #reduceActionForPropertyModifiers2: 21724162 false ) 
	#(206 1 #reduceActionForVariableNames1: 11753473 false ) 
	#(208 1 #reduceActionForVariableNames1: 11968513 false ) 
	#(209 1 #liftFirstValue: 12055553 false ) 
	#(222 6 #reduceActionForClassHelperType2: 14346242 false ) 
	#(221 6 #reduceActionForNewClassType1: 14113793 false ) 
	#(277 3 #reduceActionForVariableNames2: 21515266 false ) 
	#(205 6 #reduceActionForVariantRecordPart1: 11603969 false ) 
	#(206 3 #reduceActionForVariableNames2: 11753474 false ) 
	#(208 3 #reduceActionForVariableNames2: 11968514 false ) 
	#(222 9 #reduceActionForClassHelperType1: 14346241 false ) 
	#(207 5 #reduceActionForVariantType1: 11868161 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attributes' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'VariableStatement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ForVariableExpression' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #OrderedCollection #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 41 0 66 0 45 0 84 0 6 0 89 0 49 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 119 0 57 0 122 0 6 0 123 0 61 0 149 0 65 0 150 0 69 0 151 0 73 0 152 0 77 0 153 0 81 0 156 0 85 0 157 0 89 0 161 0 93 0 162 0 97 0 164] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 0 209 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 0 209 1 105 0 209 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 189 0 183 1 141 0 187 1 145 0 192 1 189 0 194 1 189 0 195 1 141 0 197 1 141 0 201 1 141 0 202 1 169 0 204 1 141 0 210 1 177 0 211 1 181 0 212 1 185 0 213 1 189 0 244 1 141 0 245 1 141 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 1 213 0 130 1 217 0 139 1 221 0 178 1 225 0 240 1 229 0 241] 
#[1 1 233 0 139 1 237 0 172] 
#[1 1 241 0 139 1 245 1 33 1 249 1 73] 
#[1 2 13 0 27 2 13 0 81 2 13 0 123 0 22 0 139 2 9 1 32 2 13 1 35] 
#[1 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 2 33 0 52 2 37 0 89 2 41 0 91 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 2 65 0 170 2 65 0 176 2 65 0 238 2 65 0 239 2 73 0 240 1 229 0 241 2 65 0 242 2 65 0 243 2 65 0 255 2 65 1 0 2 65 1 1 2 65 1 2 2 65 1 3 2 65 1 4 2 65 1 6 2 65 1 7 2 65 1 8 2 65 1 10 2 125 1 11 2 65 1 12 2 133 1 33 2 65 1 41 2 141 1 42 2 65 1 44 2 149 1 45 2 65 1 48 2 157 1 49 2 65 1 50 2 165 1 51 2 65 1 53 2 65 1 54 2 65 1 56 2 181 1 57 2 65 1 58 2 189 1 59 2 65 1 61 2 65 1 62 2 65 1 64 2 205 1 65 2 65 1 70 2 213 1 71] 
#[1 1 213 0 130 2 217 0 241] 
#[1 2 221 0 139 2 225 0 167] 
#[1 2 221 0 139 2 229 0 167] 
#[1 2 221 0 139 2 233 0 167] 
#[1 2 221 0 139 2 237 0 167] 
#[1 2 221 0 139 2 241 0 165 2 245 0 166 2 249 0 167] 
#[0 0 0 1 134] 
#[0 0 26 1 134] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 57 0 122 0 6 0 123 2 253 0 164] 
#[0 0 30 1 134] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 57 0 122 0 6 0 123 3 1 0 164] 
#[0 0 34 1 134] 
#[1 3 5 0 103 3 9 0 158] 
#[0 0 38 1 134] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 3 13 0 63 3 17 0 163 0 46 1 134] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 3 21 0 155 3 25 1 66 3 29 1 67] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 37 1 108 1 21 1 109 3 37 1 110 3 37 1 111 1 33 1 112 3 37 1 113 1 41 1 114 3 37 1 115 1 49 1 116 3 37 1 117 1 57 1 122 3 37 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 41 1 108 1 21 1 109 3 41 1 110 3 41 1 111 1 33 1 112 3 41 1 113 1 41 1 114 3 41 1 115 1 49 1 116 3 41 1 117 1 57 1 122 3 41 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 45 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 53 1 108 1 21 1 109 3 53 1 110 3 53 1 111 1 33 1 112 3 53 1 113 1 41 1 114 3 53 1 115 1 49 1 116 3 53 1 117 1 57 1 122 3 53 1 123 1 65 1 133] 
#[1 3 57 0 123 3 33 0 139 3 61 1 102 3 61 1 116] 
#[1 3 69 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 3 73 0 196] 
#[1 3 77 0 139 3 81 0 141] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 85 1 108 1 21 1 109 3 85 1 110 3 85 1 111 1 33 1 112 3 85 1 113 1 41 1 114 3 85 1 115 1 49 1 116 3 85 1 117 1 57 1 122 3 85 1 123 1 65 1 133] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 74 0 58 0 77 0 58 0 78 0 58 0 80 0 58 0 96 0 58 0 97 0 58 0 108 0 58 0 109 0 58 0 112 0 58 0 114 0 58 0 116 0 58 0 121 0 58 0 127 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 3 89 0 139 0 58 1 134] 
#[0 3 93 0 130] 
#[0 3 97 0 130] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 101 1 108 1 21 1 109 3 101 1 110 3 101 1 111 1 33 1 112 3 101 1 113 1 41 1 114 3 101 1 115 1 49 1 116 3 101 1 117 1 57 1 122 3 101 1 123 1 65 1 133] 
#[1 3 69 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 3 105 0 196] 
#[1 0 101 0 2 0 105 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 121 0 52 0 133 0 60 0 62 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 62 0 78 0 149 0 89 0 62 0 121 0 177 0 130 0 181 0 135 0 185 0 136 0 62 0 137 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 109 1 108 1 21 1 109 3 109 1 110 3 109 1 111 1 33 1 112 3 109 1 113 1 41 1 114 3 109 1 115 1 49 1 116 3 109 1 117 1 57 1 122 3 109 1 123 1 65 1 133 0 62 1 134] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 113 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 117 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 1 241 0 139 3 121 1 33] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 125 1 108 1 21 1 109 3 125 1 110 3 125 1 111 1 33 1 112 3 125 1 113 1 41 1 114 3 125 1 115 1 49 1 116 3 125 1 117 1 57 1 122 3 125 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 129 1 82 3 133 1 108 1 21 1 109 3 133 1 110 3 133 1 111 1 33 1 112 3 133 1 113 1 41 1 114 3 133 1 115 1 49 1 116 3 133 1 117 1 57 1 122 3 133 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 3 137 0 131 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 141 1 108 1 21 1 109 3 141 1 110 3 141 1 111 1 33 1 112 3 141 1 113 1 41 1 114 3 141 1 115 1 49 1 116 3 141 1 117 3 145 1 118 3 149 1 119 1 57 1 122 3 141 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 153 1 108 1 21 1 109 3 153 1 110 3 153 1 111 1 33 1 112 3 153 1 113 1 41 1 114 3 153 1 115 1 49 1 116 3 153 1 117 1 57 1 122 3 153 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 157 1 108 1 21 1 109 3 157 1 110 3 157 1 111 1 33 1 112 3 157 1 113 1 41 1 114 3 157 1 115 1 49 1 116 3 157 1 117 1 57 1 122 3 157 1 123 1 65 1 133] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 3 161 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 134] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 3 165 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 78 0 70 0 80 0 70 0 108 0 70 0 109 0 70 0 121 0 70 0 129 0 70 0 130 0 70 0 132 0 70 0 133 0 70 0 135 0 70 0 136 0 70 0 137 0 70 0 138 0 70 1 134] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 0 1 134] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 0 138 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 3 169 0 21] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 48 0 142 0 49 4 21 0 58 0 142 0 61 4 21 0 64 4 21 0 71 0 142 0 78 4 21 0 80 4 21 0 108 4 21 0 109 0 142 0 121 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 0 142 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 0 142 1 134] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 5 0 146 0 6 0 146 0 7 0 146 0 8 0 146 0 9 0 146 0 10 0 11 0 11 0 146 0 12 0 146 0 13 0 146 0 14 0 146 0 18 0 146 0 20 0 146 0 30 0 146 0 33 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 39 0 146 0 40 0 146 0 41 0 146 0 48 0 146 0 49 0 146 0 57 0 146 0 58 0 146 0 59 0 146 0 61 0 146 0 64 0 146 0 71 0 146 0 74 0 146 0 77 0 146 0 78 0 146 0 80 0 146 0 96 0 146 0 97 0 146 0 108 0 146 0 109 0 146 0 112 0 146 0 114 0 146 0 116 0 146 0 121 0 146 0 127 0 146 0 128 0 146 0 129 0 146 0 130 0 146 0 131 0 146 0 132 0 146 0 133 0 146 0 134 0 146 0 135 0 146 0 136 0 146 0 137 0 146 0 138 4 29 0 188 4 33 0 189 0 146 1 134] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 4 37 1 66 3 29 1 67] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 4 41 1 66 3 29 1 67] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 15 0 11 0 170 0 12 0 170 0 13 0 170 0 14 0 170 0 18 0 170 0 20 0 170 0 30 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 39 0 170 0 40 0 170 0 41 0 170 0 48 0 170 0 49 0 170 0 57 0 170 0 58 0 170 0 59 0 170 0 61 0 170 0 64 0 170 0 71 0 170 0 74 0 170 0 77 0 170 0 78 0 170 0 80 0 170 0 96 0 170 0 97 0 170 0 108 0 170 0 109 0 170 0 112 0 170 0 114 0 170 0 116 0 170 0 121 0 170 0 127 0 170 0 128 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 132 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 137 0 170 0 138 4 45 0 188 4 33 0 189 0 170 1 134] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 4 49 0 2 0 190 0 3 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 53 0 139 4 57 0 140 1 181 0 141 1 205 0 143 1 133 0 147 4 61 0 184 4 65 0 185 1 181 0 212 4 69 0 213 4 73 0 214 4 77 0 215 4 81 0 216 4 85 0 217 4 89 0 218 4 93 0 219 4 69 1 117 1 205 1 122 1 209 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 4 101 0 213 4 101 1 117 1 205 1 122 1 209 1 133] 
#[1 0 194 0 3 0 194 0 5 0 194 0 10 0 194 0 14 0 194 0 16 0 194 0 21 0 194 0 23 0 194 0 27 0 194 0 30 0 194 0 31 0 194 0 33 0 194 0 36 0 194 0 39 0 194 0 40 0 194 0 41 0 194 0 48 0 194 0 49 0 194 0 52 0 194 0 57 0 194 0 58 0 194 0 59 0 194 0 61 0 194 0 65 0 194 0 74 4 105 0 77 0 194 0 78 0 194 0 87 0 194 0 89 0 194 0 96 0 194 0 97 0 194 0 104 0 194 0 112 0 194 0 115 0 194 0 118 0 194 0 121 0 194 0 123 0 194 0 127 0 194 0 128 0 194 0 130 0 194 0 131 0 194 0 132 0 194 0 137 0 194 1 134] 
#[1 3 69 0 2 0 54 0 9 4 109 0 196] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 4 113 0 213 4 113 1 117 1 205 1 122 1 209 1 133] 
#[0 0 198 0 19 0 98] 
#[1 3 69 0 2 0 54 0 77 0 54 0 137 4 117 0 196] 
#[0 4 121 0 54] 
#[0 4 125 0 116] 
#[0 4 129 0 77] 
#[1 4 133 0 139 4 137 0 236] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 4 141 0 213 4 141 1 117 1 205 1 122 1 209 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 4 145 0 213 4 145 1 117 1 205 1 122 1 209 1 133] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 4 153 0 183 4 153 0 187 1 145 0 192 4 153 0 194 4 153 0 195 4 153 0 197 4 153 0 201 4 153 0 202 1 169 0 204 4 153 0 210 1 177 0 211 1 181 0 212 1 185 0 213 4 153 0 244 4 153 0 245 4 153 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 0 202 0 2 0 206 0 3 0 202 0 4 0 206 0 5 0 19 0 6 0 202 0 7 0 202 0 8 0 206 0 10 0 19 0 11 0 202 0 12 0 202 0 13 0 206 0 14 0 206 0 16 0 202 0 18 0 202 0 20 0 206 0 21 0 206 0 23 0 206 0 27 0 206 0 30 0 206 0 31 0 206 0 33 0 202 0 35 0 206 0 36 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 48 0 206 0 49 0 206 0 52 0 206 0 57 0 19 0 58 0 206 0 59 0 206 0 61 0 202 0 64 0 206 0 65 0 202 0 71 0 206 0 74 0 206 0 77 0 206 0 78 0 202 0 80 0 206 0 87 0 206 0 89 0 206 0 96 0 206 0 97 0 206 0 104 0 202 0 108 0 202 0 109 0 206 0 112 0 206 0 115 0 206 0 118 0 206 0 121 0 206 0 123 0 206 0 127 0 206 0 128 0 202 0 129 0 206 0 130 0 206 0 131 0 19 0 132 0 202 0 133 0 202 0 135 0 202 0 136 0 206 0 137 0 206 1 134] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 0 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[0 0 214 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 0 218 0 16 0 218 0 130 0 0 1 134] 
#[1 0 222 0 3 0 222 0 5 4 157 0 6 0 222 0 10 0 150 0 11 0 222 0 14 0 222 0 16 0 222 0 21 0 222 0 23 0 222 0 27 0 222 0 30 0 222 0 31 0 222 0 33 0 222 0 36 0 222 0 39 0 222 0 40 0 222 0 41 0 222 0 48 0 222 0 49 0 222 0 52 0 222 0 57 0 222 0 58 0 222 0 59 0 222 0 61 0 222 0 65 0 222 0 74 0 222 0 77 0 222 0 78 0 222 0 87 0 222 0 89 0 222 0 96 0 222 0 97 0 222 0 104 0 222 0 112 0 222 0 115 0 222 0 118 0 222 0 121 0 222 0 123 0 222 0 127 0 222 0 128 0 222 0 130 0 222 0 131 0 222 0 132 0 222 0 137 4 161 0 188 4 33 0 189 0 222 1 134] 
#[0 0 226 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 0 230 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 0 234 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 0 238 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 0 242 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 4 165 0 19 4 169 0 98] 
#[0 0 246 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 4 173 0 7] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[1 4 177 0 2 0 254 0 3 4 185 0 4 0 254 0 5 4 181 0 6 0 254 0 7 4 185 0 8 0 254 0 10 4 185 0 11 4 185 0 12 4 185 0 13 0 254 0 14 0 254 0 16 4 185 0 18 4 185 0 20 0 254 0 21 0 254 0 23 0 254 0 27 0 254 0 30 0 254 0 31 0 254 0 33 4 185 0 35 0 254 0 36 0 254 0 39 0 254 0 40 0 254 0 41 0 254 0 48 0 254 0 49 0 254 0 52 0 254 0 57 0 23 0 58 0 254 0 59 0 254 0 61 4 185 0 64 0 254 0 65 4 185 0 71 0 254 0 74 0 254 0 77 0 254 0 78 4 185 0 80 0 254 0 87 0 254 0 89 0 254 0 96 0 254 0 97 0 254 0 104 4 185 0 108 4 185 0 109 0 254 0 112 0 254 0 115 0 254 0 118 0 254 0 121 0 254 0 123 0 254 0 127 0 254 0 128 4 185 0 129 0 254 0 130 0 254 0 131 0 27 0 132 4 185 0 133 4 185 0 135 4 185 0 136 0 254 0 137 4 185 1 127 0 254 1 134] 
#[1 4 189 0 16 4 193 0 130] 
#[0 1 2 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 1 6 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[0 1 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 4 197 0 213 4 197 1 117 1 205 1 122 1 209 1 133] 
#[1 4 201 0 11 1 22 0 14 4 205 0 179] 
#[0 0 0 1 134] 
#[1 1 213 0 130 4 209 0 139 4 213 0 241] 
#[0 1 26 0 26 0 28 0 32 0 52 0 89 0 130 0 139] 
#[1 4 217 0 9 1 30 0 14 4 221 1 9] 
#[0 0 0 1 134] 
#[0 1 34 0 3 0 5 0 9 0 10 0 131 0 137 1 134] 
#[1 4 225 0 5 4 229 0 9] 
#[0 0 0 1 134] 
#[0 1 38 0 139] 
#[0 1 42 0 139] 
#[0 1 46 0 139] 
#[0 0 0 1 134] 
#[1 1 241 0 139 4 233 1 33] 
#[1 4 237 0 28 4 241 0 32 4 245 0 52 4 249 0 79 4 253 0 89 2 41 0 91 2 45 0 115 2 53 0 123 5 1 1 11 5 5 1 49 5 9 1 51 5 13 1 57 5 17 1 59 5 21 1 71] 
#[1 1 233 0 139 5 25 0 171 5 29 0 172] 
#[1 4 133 0 139 5 33 0 236] 
#[1 4 133 0 139 5 37 0 236] 
#[1 4 133 0 139 5 41 0 236] 
#[1 4 133 0 139 5 45 0 236] 
#[0 5 49 0 139] 
#[1 1 241 0 139 1 245 1 33 5 53 1 72 5 57 1 73] 
#[1 1 213 0 130 1 217 0 139 5 61 0 177 5 65 0 178 1 225 0 240 1 229 0 241] 
#[1 1 241 0 139 1 245 1 33 5 69 1 72 5 57 1 73] 
#[0 1 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 0 0 1 134] 
#[0 1 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 5 73 0 26 2 25 0 28 2 29 0 32 4 245 0 52 4 253 0 89 1 213 0 130 4 213 0 241 5 77 1 1 5 81 1 2 5 85 1 3 5 89 1 4 5 93 1 6 5 97 1 7 5 101 1 8 5 77 1 41 2 141 1 42 5 81 1 44 2 149 1 45 5 85 1 48 2 157 1 49 5 85 1 50 2 165 1 51 5 89 1 53 5 89 1 54 5 93 1 56 2 181 1 57 5 93 1 58 2 189 1 59 5 97 1 61 5 97 1 62 5 101 1 64 2 205 1 65] 
#[0 1 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 4 225 0 5 5 105 0 9] 
#[0 1 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 1 122 0 3 1 122 0 24 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 32 1 122 0 40 5 109 0 44 5 113 0 51 1 122 0 52 1 122 0 88 1 122 0 89 1 122 0 91 1 122 0 92 1 122 0 93 1 122 0 94 1 122 0 113 1 122 0 115 1 122 0 118 1 122 0 123 1 122 0 130 1 122 0 139 5 117 1 28 1 122 1 134] 
#[0 1 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 1 130 0 3 1 130 0 24 1 130 0 26 1 130 0 27 1 130 0 28 1 130 0 32 1 130 0 40 5 109 0 44 5 113 0 51 1 130 0 52 1 130 0 88 1 130 0 89 1 130 0 91 1 130 0 92 1 130 0 93 1 130 0 94 1 130 0 113 1 130 0 115 1 130 0 118 1 130 0 123 1 130 0 130 1 130 0 139 5 121 1 28 1 130 1 134] 
#[0 1 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 138 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 1 146 0 3 1 146 0 21 1 146 0 23 1 146 0 24 1 146 0 26 1 146 0 27 1 146 0 28 1 146 0 32 1 146 0 40 5 109 0 44 1 146 0 48 5 113 0 51 1 146 0 52 1 146 0 56 1 146 0 61 1 146 0 65 1 146 0 88 1 146 0 89 1 146 0 91 1 146 0 92 1 146 0 93 1 146 0 94 1 146 0 104 1 146 0 113 1 146 0 115 1 146 0 118 1 146 0 123 1 146 0 130 1 146 0 139 5 125 1 28 1 146 1 134] 
#[0 1 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 162 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 166 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 1 170 0 3 1 170 0 21 1 170 0 23 1 170 0 24 1 170 0 26 1 170 0 27 1 170 0 28 1 170 0 32 1 170 0 40 5 109 0 44 1 170 0 48 5 113 0 51 1 170 0 52 1 170 0 56 1 170 0 61 1 170 0 65 1 170 0 88 1 170 0 89 1 170 0 91 1 170 0 92 1 170 0 93 1 170 0 94 1 170 0 104 1 170 0 113 1 170 0 115 1 170 0 118 1 170 0 123 1 170 0 130 1 170 0 139 5 129 1 28 1 170 1 134] 
#[0 1 174 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 1 186 0 3 1 186 0 24 1 186 0 26 1 186 0 27 1 186 0 28 1 186 0 32 1 186 0 40 5 109 0 44 5 113 0 51 1 186 0 52 1 186 0 88 1 186 0 89 1 186 0 91 1 186 0 92 1 186 0 93 1 186 0 94 1 186 0 113 1 186 0 115 1 186 0 118 1 186 0 123 1 186 0 130 1 186 0 139 5 133 1 28 1 186 1 134] 
#[0 1 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 1 194 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 0 0 1 134] 
#[0 1 198 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 5 137 0 6 5 149 0 31 5 149 0 87 1 202 0 137 5 149 0 193] 
#[1 5 137 0 6 5 153 0 137] 
#[1 5 137 0 6 5 157 0 31 5 157 0 87 1 202 0 137 5 157 0 193] 
#[1 5 137 0 6 5 161 0 31 5 161 0 87 1 202 0 137 5 161 0 193] 
#[1 5 165 0 5 5 169 0 137] 
#[0 1 206 0 5 0 137] 
#[1 1 210 0 5 5 137 0 6 5 173 0 58 1 210 0 137] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 177 0 155 3 25 1 66 3 29 1 67] 
#[1 1 214 0 21 1 214 0 23 1 214 0 27 1 214 0 43 1 214 0 52 1 214 0 65 1 214 0 89 1 214 0 104 1 214 0 115 1 214 0 118 1 214 0 123 5 181 0 154] 
#[1 2 221 0 139 5 185 0 159 5 189 0 167] 
#[1 5 193 0 29 5 197 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 57 0 122 0 6 0 123 5 201 0 164] 
#[1 1 218 0 40 1 218 0 48 5 205 0 56 1 218 0 61 5 209 1 36] 
#[0 5 213 0 6] 
#[0 1 222 0 6] 
#[1 0 10 0 21 0 109 0 23 2 21 0 27 4 245 0 52 5 217 0 65 4 253 0 89 5 221 0 104 2 45 0 115 2 49 0 118 2 53 0 123 6 5 0 170 6 5 0 173 6 5 0 176 6 5 1 47 5 241 1 48 2 157 1 49 5 245 1 50 2 165 1 51 6 5 1 55 5 253 1 56 2 181 1 57 6 1 1 58 2 189 1 59 6 5 1 68 6 5 1 69 6 5 1 70 2 213 1 71 6 17 1 105 6 17 1 106 1 13 1 107] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 3 173 0 2 6 21 0 3 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 3 173 0 2 1 226 0 3 1 226 0 4 1 226 0 5 3 181 0 6 1 226 0 7 1 226 0 8 1 226 0 9 1 226 0 10 0 31 0 11 0 35 0 12 0 39 0 13 0 43 0 14 1 226 0 18 1 226 0 20 1 226 0 30 1 226 0 33 1 226 0 35 1 226 0 36 1 226 0 37 1 226 0 39 1 226 0 40 1 226 0 41 1 226 0 48 1 226 0 49 1 226 0 57 0 47 0 58 1 226 0 59 1 226 0 61 1 226 0 64 1 226 0 71 1 226 0 74 1 226 0 77 1 226 0 78 1 226 0 80 1 226 0 96 1 226 0 97 1 226 0 108 1 226 0 109 1 226 0 112 1 226 0 114 1 226 0 116 1 226 0 121 1 226 0 127 1 226 0 128 1 226 0 129 3 249 0 130 1 226 0 131 0 51 0 132 0 55 0 133 1 226 0 134 1 226 0 135 1 226 0 136 1 226 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 1 226 1 134] 
#[1 6 25 0 40 6 29 0 137] 
#[0 1 230 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 6 33 0 77 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[0 6 37 0 139] 
#[1 6 41 0 10 6 45 0 58] 
#[0 1 234 0 10 0 58] 
#[1 1 238 0 3 2 13 0 27 2 13 0 81 2 13 0 123 0 22 0 139 6 49 1 30 6 53 1 31 6 57 1 32 2 13 1 35] 
#[1 4 217 0 9 1 30 0 21 1 30 0 23 1 30 0 27 1 30 0 52 1 30 0 65 1 30 0 89 1 30 0 104 1 30 0 115 1 30 0 118 1 30 0 123 6 61 1 9] 
#[0 1 242 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 1 246 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 6 65 0 114 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 6 69 0 2 1 250 0 3 1 250 0 4 1 250 0 5 1 250 0 6 1 250 0 7 1 250 0 8 1 250 0 9 1 250 0 10 1 250 0 11 1 250 0 12 1 250 0 13 1 250 0 14 1 250 0 18 1 250 0 20 1 250 0 30 1 250 0 33 1 250 0 35 1 250 0 36 1 250 0 37 1 250 0 39 1 250 0 40 1 250 0 41 1 250 0 48 1 250 0 49 1 250 0 57 1 250 0 58 1 250 0 59 1 250 0 61 1 250 0 64 1 250 0 71 1 250 0 74 1 250 0 77 1 250 0 78 1 250 0 80 1 250 0 96 1 250 0 97 1 250 0 108 1 250 0 109 1 250 0 112 1 250 0 114 1 250 0 116 1 250 0 121 1 250 0 127 1 250 0 128 1 250 0 129 1 250 0 130 1 250 0 131 1 250 0 132 1 250 0 133 1 250 0 134 1 250 0 135 1 250 0 136 1 250 0 137 1 250 0 138 1 250 1 134] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 73 1 108 1 21 1 109 6 73 1 110 6 73 1 111 1 33 1 112 6 73 1 113 1 41 1 114 6 73 1 115 1 49 1 116 6 73 1 117 1 57 1 122 6 73 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 77 1 108 1 21 1 109 6 77 1 110 6 77 1 111 1 33 1 112 6 77 1 113 1 41 1 114 6 77 1 115 1 49 1 116 6 77 1 117 1 57 1 122 6 77 1 123 1 65 1 133] 
#[1 3 173 0 2 1 254 0 3 4 21 0 4 1 254 0 5 3 181 0 6 1 254 0 7 4 21 0 8 1 254 0 9 3 189 0 10 0 59 0 11 0 63 0 12 0 67 0 13 0 71 0 14 4 21 0 18 4 21 0 20 1 254 0 30 1 254 0 33 4 21 0 35 1 254 0 36 1 254 0 37 1 254 0 39 1 254 0 40 1 254 0 41 1 254 0 48 1 254 0 49 1 254 0 57 0 75 0 58 1 254 0 59 1 254 0 61 4 21 0 64 4 21 0 71 1 254 0 74 1 254 0 77 1 254 0 78 4 21 0 80 1 254 0 96 1 254 0 97 4 21 0 108 4 21 0 109 1 254 0 112 1 254 0 114 1 254 0 116 1 254 0 121 1 254 0 127 1 254 0 128 4 21 0 129 3 249 0 130 1 254 0 131 0 79 0 132 0 83 0 133 1 254 0 134 4 21 0 135 4 21 0 136 1 254 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 1 254 1 134] 
#[0 2 2 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 2 6 0 39 2 6 0 40 2 6 0 41 2 6 0 48 2 6 0 49 4 21 0 58 2 6 0 61 4 21 0 64 4 21 0 71 2 6 0 78 4 21 0 80 4 21 0 108 4 21 0 109 2 6 0 121 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 6 81 0 134 4 21 0 135 4 21 0 136 2 6 0 137 4 13 0 138 6 85 1 99 4 17 1 120 4 21 1 126 4 21 1 127 2 6 1 134] 
#[1 6 89 0 121 6 29 0 137] 
#[1 2 10 0 40 6 93 0 41 2 10 0 49 6 29 0 137 6 97 1 84] 
#[1 4 225 0 5 6 101 0 9 6 105 0 10] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 6 109 0 36 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 6 113 0 5 6 117 0 36] 
#[1 3 173 0 2 4 21 0 4 2 14 0 5 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 2 14 0 36 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[0 2 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 3 173 0 2 4 21 0 4 2 22 0 5 3 181 0 6 6 121 0 7 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 2 22 0 131 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 6 125 0 5 6 129 0 131] 
#[0 2 26 0 5 0 131] 
#[1 3 173 0 2 2 30 0 3 4 21 0 4 2 30 0 5 3 181 0 6 2 30 0 7 4 21 0 8 2 30 0 9 2 30 0 10 0 87 0 11 0 91 0 12 0 95 0 13 0 99 0 14 2 30 0 18 2 30 0 20 2 30 0 30 2 30 0 33 4 21 0 35 2 30 0 36 2 30 0 37 2 30 0 39 2 30 0 40 2 30 0 41 2 30 0 48 2 30 0 49 2 30 0 57 0 103 0 58 2 30 0 59 2 30 0 61 2 30 0 64 4 21 0 71 2 30 0 74 2 30 0 77 2 30 0 78 2 30 0 80 2 30 0 96 2 30 0 97 4 21 0 108 4 21 0 109 2 30 0 112 2 30 0 114 2 30 0 116 2 30 0 121 2 30 0 127 2 30 0 128 2 30 0 129 3 249 0 130 2 30 0 131 0 107 0 132 0 111 0 133 2 30 0 134 2 30 0 135 2 30 0 136 2 30 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 2 30 1 134] 
#[1 3 173 0 2 2 34 0 3 4 21 0 4 2 34 0 5 3 181 0 6 2 34 0 7 4 21 0 8 2 34 0 9 2 34 0 10 0 115 0 11 0 119 0 12 0 123 0 13 0 127 0 14 2 34 0 18 2 34 0 20 2 34 0 30 2 34 0 33 4 21 0 35 2 34 0 36 2 34 0 37 2 34 0 39 2 34 0 40 2 34 0 41 2 34 0 48 2 34 0 49 2 34 0 57 0 131 0 58 2 34 0 59 2 34 0 61 2 34 0 64 4 21 0 71 2 34 0 74 2 34 0 77 2 34 0 78 2 34 0 80 2 34 0 96 2 34 0 97 4 21 0 108 4 21 0 109 2 34 0 112 2 34 0 114 2 34 0 116 2 34 0 121 2 34 0 127 2 34 0 128 2 34 0 129 3 249 0 130 2 34 0 131 0 135 0 132 0 139 0 133 2 34 0 134 2 34 0 135 2 34 0 136 2 34 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 2 34 1 134] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 133 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 6 133 1 105 6 133 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 137 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 6 137 1 105 6 137 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[0 6 141 0 40] 
#[1 0 101 0 2 6 145 0 3 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 149 1 108 1 21 1 109 6 149 1 110 6 149 1 111 1 33 1 112 6 149 1 113 1 41 1 114 6 149 1 115 1 49 1 116 6 149 1 117 1 57 1 122 6 149 1 123 6 153 1 124 6 157 1 125 1 65 1 133] 
#[0 2 38 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[1 6 161 0 1 6 165 0 139] 
#[0 2 42 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 169 1 108 1 21 1 109 6 169 1 110 6 169 1 111 1 33 1 112 6 169 1 113 1 41 1 114 6 169 1 115 1 49 1 116 6 169 1 117 1 57 1 122 6 169 1 123 1 65 1 133] 
#[0 2 46 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 50 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 54 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 58 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 133] 
#[0 2 62 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 66 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 70 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 74 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 78 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 82 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 86 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 90 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 94 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 98 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 173 1 108 1 21 1 109 6 173 1 110 6 173 1 111 1 33 1 112 6 173 1 113 1 41 1 114 6 173 1 115 1 49 1 116 6 173 1 117 6 177 1 121 1 57 1 122 6 173 1 123 1 65 1 133] 
#[0 2 102 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 106 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 110 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 114 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 133] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 181 1 108 1 21 1 109 6 181 1 110 6 181 1 111 1 33 1 112 6 181 1 113 1 41 1 114 6 181 1 115 1 49 1 116 6 181 1 117 1 57 1 122 6 181 1 123 1 65 1 133] 
#[0 2 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 133] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 6 185 0 11] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 4 49 0 2 0 190 0 3 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 57 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 4 69 0 213 4 73 0 214 4 77 0 215 4 81 0 216 4 85 0 217 4 89 0 218 4 93 0 219 4 69 1 117 1 205 1 122 1 209 1 133] 
#[1 2 146 0 3 2 146 0 5 6 189 0 14] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 8 6 193 0 9 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 18 0 202 0 20 0 202 0 35 0 202 0 58 0 202 0 64 0 202 0 71 0 202 0 80 0 202 0 108 0 202 0 109 0 202 0 129 0 202 0 132 0 202 0 133 0 202 0 135 0 202 0 136] 
#[1 6 197 0 3 6 201 0 5] 
#[0 2 150 0 3 0 5] 
#[1 4 177 0 2 2 154 0 3 4 185 0 4 2 154 0 5 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 6 205 0 14 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[0 6 209 0 3] 
#[1 2 158 0 3 6 213 0 5] 
#[0 2 162 0 3 0 5] 
#[1 2 166 0 3 6 221 0 137 6 221 1 90] 
#[1 2 170 0 3 0 143 0 137] 
#[0 2 174 0 3 0 137] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[1 4 177 0 2 2 178 0 3 2 178 0 4 2 178 0 5 4 181 0 6 2 178 0 7 2 178 0 8 2 178 0 9 2 178 0 10 0 147 0 11 0 151 0 12 0 155 0 13 2 178 0 14 2 178 0 16 2 178 0 18 2 178 0 20 2 178 0 21 2 178 0 23 2 178 0 27 2 178 0 30 2 178 0 31 2 178 0 33 2 178 0 35 2 178 0 36 2 178 0 39 2 178 0 40 2 178 0 41 2 178 0 48 2 178 0 49 2 178 0 52 2 178 0 57 0 159 0 58 2 178 0 59 2 178 0 61 2 178 0 64 2 178 0 65 2 178 0 71 2 178 0 74 2 178 0 77 2 178 0 78 2 178 0 80 2 178 0 87 2 178 0 89 2 178 0 96 2 178 0 97 2 178 0 104 2 178 0 108 2 178 0 109 2 178 0 112 2 178 0 115 2 178 0 118 2 178 0 121 2 178 0 123 2 178 0 127 2 178 0 128 2 178 0 129 2 178 0 130 2 178 0 131 0 163 0 132 0 167 0 133 2 178 0 135 2 178 0 136 2 178 0 137 4 185 1 127 2 178 1 134] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 6 229 0 183 6 229 0 187 1 145 0 192 6 229 0 194 6 229 0 195 6 229 0 197 6 229 0 201 6 229 0 202 1 169 0 204 6 229 0 210 1 177 0 211 1 181 0 212 1 185 0 213 6 229 0 244 6 229 0 245 6 229 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[0 6 233 0 9] 
#[1 4 177 0 2 2 182 0 3 4 185 0 4 2 182 0 5 4 181 0 6 2 182 0 7 4 185 0 8 2 182 0 9 2 182 0 10 0 171 0 11 0 175 0 12 0 179 0 13 2 182 0 14 2 182 0 16 4 185 0 18 4 185 0 20 2 182 0 21 2 182 0 23 2 182 0 27 2 182 0 30 2 182 0 31 2 182 0 33 4 185 0 35 2 182 0 36 2 182 0 39 2 182 0 40 2 182 0 41 2 182 0 48 2 182 0 49 2 182 0 52 2 182 0 57 0 183 0 58 2 182 0 59 2 182 0 61 4 185 0 64 2 182 0 65 4 185 0 71 2 182 0 74 2 182 0 77 2 182 0 78 4 185 0 80 2 182 0 87 2 182 0 89 2 182 0 96 2 182 0 97 2 182 0 104 4 185 0 108 4 185 0 109 2 182 0 112 2 182 0 115 2 182 0 118 2 182 0 121 2 182 0 123 2 182 0 127 2 182 0 128 4 185 0 129 2 182 0 130 2 182 0 131 0 187 0 132 0 191 0 133 4 185 0 135 4 185 0 136 2 182 0 137 4 185 1 127 2 182 1 134] 
#[1 6 237 0 77 2 186 0 137 6 241 1 5] 
#[0 6 245 0 50] 
#[1 6 249 0 52 6 253 0 89] 
#[1 7 1 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 7 5 0 210 1 177 0 211 1 181 0 212 7 9 0 213 7 9 1 117 1 205 1 122 1 209 1 133] 
#[1 1 22 0 2 1 22 0 3 1 22 0 5 1 22 0 6 1 22 0 9 1 22 0 10 4 201 0 11 1 22 0 14 1 22 0 16 1 22 0 21 1 22 0 23 1 22 0 24 1 22 0 26 1 22 0 27 1 22 0 28 1 22 0 30 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 36 1 22 0 39 1 22 0 40 1 22 0 41 1 22 0 48 1 22 0 49 1 22 0 52 1 22 0 57 1 22 0 58 1 22 0 59 1 22 0 61 1 22 0 65 1 22 0 74 1 22 0 77 1 22 0 78 1 22 0 87 1 22 0 88 1 22 0 89 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 96 1 22 0 97 1 22 0 104 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 118 1 22 0 121 1 22 0 123 1 22 0 127 1 22 0 128 1 22 0 130 1 22 0 131 1 22 0 132 1 22 0 137 1 22 0 139 7 13 0 179 1 22 1 134] 
#[1 2 190 0 3 2 190 0 5 7 17 0 6 2 190 0 10 2 190 0 14 2 190 0 16 2 190 0 21 2 190 0 23 2 190 0 27 2 190 0 30 2 190 0 31 2 190 0 33 2 190 0 36 2 190 0 39 2 190 0 40 2 190 0 41 2 190 0 48 2 190 0 49 2 190 0 52 2 190 0 57 2 190 0 58 2 190 0 59 2 190 0 61 2 190 0 65 2 190 0 74 2 190 0 77 2 190 0 78 2 190 0 87 2 190 0 89 2 190 0 96 2 190 0 97 2 190 0 104 2 190 0 112 2 190 0 115 2 190 0 118 2 190 0 121 2 190 0 123 2 190 0 127 2 190 0 128 2 190 0 130 2 190 0 131 2 190 0 132 2 190 0 137 2 190 1 134] 
#[1 4 177 0 2 2 194 0 3 4 185 0 4 2 194 0 5 4 181 0 6 2 194 0 7 4 185 0 8 2 194 0 9 2 194 0 10 0 195 0 11 0 199 0 12 0 203 0 13 2 194 0 14 2 194 0 16 2 194 0 18 2 194 0 20 2 194 0 21 2 194 0 23 2 194 0 27 2 194 0 30 2 194 0 31 2 194 0 33 4 185 0 35 2 194 0 36 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 48 2 194 0 49 2 194 0 52 2 194 0 57 0 207 0 58 2 194 0 59 2 194 0 61 2 194 0 64 2 194 0 65 4 185 0 71 2 194 0 74 2 194 0 77 2 194 0 78 2 194 0 80 2 194 0 87 2 194 0 89 2 194 0 96 2 194 0 97 2 194 0 104 4 185 0 108 4 185 0 109 2 194 0 112 2 194 0 115 2 194 0 118 2 194 0 121 2 194 0 123 2 194 0 127 2 194 0 128 2 194 0 129 2 194 0 130 2 194 0 131 0 211 0 132 0 215 0 133 2 194 0 135 2 194 0 136 2 194 0 137 4 185 1 127 2 194 1 134] 
#[1 4 177 0 2 2 198 0 3 4 185 0 4 2 198 0 5 4 181 0 6 2 198 0 7 4 185 0 8 2 198 0 9 2 198 0 10 0 219 0 11 0 223 0 12 0 227 0 13 2 198 0 14 2 198 0 16 2 198 0 18 2 198 0 20 2 198 0 21 2 198 0 23 2 198 0 27 2 198 0 30 2 198 0 31 2 198 0 33 4 185 0 35 2 198 0 36 2 198 0 39 2 198 0 40 2 198 0 41 2 198 0 48 2 198 0 49 2 198 0 52 2 198 0 57 0 231 0 58 2 198 0 59 2 198 0 61 2 198 0 64 2 198 0 65 4 185 0 71 2 198 0 74 2 198 0 77 2 198 0 78 2 198 0 80 2 198 0 87 2 198 0 89 2 198 0 96 2 198 0 97 2 198 0 104 4 185 0 108 4 185 0 109 2 198 0 112 2 198 0 115 2 198 0 118 2 198 0 121 2 198 0 123 2 198 0 127 2 198 0 128 2 198 0 129 2 198 0 130 2 198 0 131 0 235 0 132 0 239 0 133 2 198 0 135 2 198 0 136 2 198 0 137 4 185 1 127 2 198 1 134] 
#[0 0 218 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 2 202 0 3 2 202 0 5 2 202 0 10 2 202 0 14 2 202 0 16 2 202 0 21 2 202 0 23 2 202 0 27 2 202 0 30 2 202 0 31 2 202 0 33 2 202 0 36 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 48 2 202 0 49 2 202 0 52 2 202 0 57 2 202 0 58 2 202 0 59 2 202 0 61 2 202 0 65 2 202 0 74 2 202 0 77 2 202 0 78 2 202 0 87 2 202 0 89 2 202 0 96 2 202 0 97 2 202 0 104 2 202 0 112 2 202 0 115 2 202 0 118 2 202 0 121 2 202 0 123 2 202 0 127 2 202 0 128 4 193 0 130 2 202 0 131 2 202 0 132 2 202 0 137 2 202 1 134] 
#[0 7 21 0 140] 
#[0 2 206 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 2 210 0 77 7 25 0 130 7 29 0 247] 
#[1 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 7 33 0 203 7 37 0 227 7 41 0 237] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 7 45 0 211 1 181 0 212 1 185 0 213 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 7 49 0 213 7 53 0 220 7 49 1 117 1 205 1 122 1 209 1 133] 
#[0 7 57 0 140] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 7 61 0 213 7 61 1 117 1 205 1 122 1 209 1 133] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 7 65 0 183 7 65 0 187 1 145 0 192 7 65 0 194 7 65 0 195 7 65 0 197 7 65 0 201 7 65 0 202 1 169 0 204 7 65 0 210 1 177 0 211 1 181 0 212 1 185 0 213 7 65 0 244 7 65 0 245 7 65 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 7 69 0 213 7 69 1 117 1 205 1 122 1 209 1 133] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 7 73 0 131 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 7 77 0 139 7 81 0 180 7 85 0 181] 
#[0 7 89 0 14] 
#[1 4 201 0 11 1 22 0 14 7 93 0 179] 
#[0 2 218 0 26 0 28 0 32 0 52 0 89 0 130 0 139] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 7 97 0 183 7 97 0 187 1 145 0 192 7 97 0 194 7 97 0 195 7 97 0 197 7 97 0 201 7 97 0 202 1 169 0 204 7 97 0 210 1 177 0 211 1 181 0 212 1 185 0 213 7 97 0 244 7 97 0 245 7 97 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[0 7 101 0 14] 
#[0 7 105 0 139] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 7 109 0 183 7 109 0 187 1 145 0 192 7 109 0 194 7 109 0 195 7 109 0 197 7 109 0 201 7 109 0 202 1 169 0 204 7 109 0 210 1 177 0 211 1 181 0 212 1 185 0 213 7 109 0 244 7 109 0 245 7 109 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 2 222 0 3 4 225 0 5 7 113 0 9 2 222 0 131 2 222 0 137 2 222 1 134] 
#[1 4 133 0 139 7 117 0 236] 
#[1 4 133 0 139 7 121 0 236] 
#[1 4 133 0 139 7 125 0 236] 
#[1 4 133 0 139 7 129 0 236] 
#[1 4 133 0 139 7 133 0 236] 
#[0 2 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 2 230 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 2 234 0 3 2 234 0 21 2 234 0 23 2 234 0 24 2 234 0 26 2 234 0 27 2 234 0 28 2 234 0 32 2 234 0 40 5 109 0 44 5 113 0 51 2 234 0 52 2 234 0 65 2 234 0 88 2 234 0 89 2 234 0 91 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 104 2 234 0 113 2 234 0 115 2 234 0 118 2 234 0 123 2 234 0 130 2 234 0 139 5 125 1 28 2 234 1 134] 
#[0 2 238 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 2 242 0 3 2 242 0 21 2 242 0 23 2 242 0 24 2 242 0 26 2 242 0 27 2 242 0 28 2 242 0 32 2 242 0 40 5 109 0 44 5 113 0 51 2 242 0 52 2 242 0 65 2 242 0 88 2 242 0 89 2 242 0 91 2 242 0 92 2 242 0 93 2 242 0 94 2 242 0 104 2 242 0 113 2 242 0 115 2 242 0 118 2 242 0 123 2 242 0 130 2 242 0 139 5 129 1 28 2 242 1 134] 
#[0 2 246 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 2 250 0 3 2 250 0 21 2 250 0 23 2 250 0 24 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 32 2 250 0 40 2 250 0 43 2 250 0 48 2 250 0 52 2 250 0 56 2 250 0 61 2 250 0 65 2 250 0 88 2 250 0 89 2 250 0 91 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 104 2 250 0 113 2 250 0 115 2 250 0 118 2 250 0 123 2 250 0 130 1 233 0 139 7 137 0 172 2 250 1 134] 
#[0 2 254 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 3 69 0 2 7 17 0 6 0 54 0 137 7 141 0 196] 
#[1 7 145 0 2 7 17 0 6 3 2 0 137 7 149 1 46] 
#[1 3 69 0 2 7 17 0 6 0 54 0 9 7 153 0 14 0 54 0 137 7 157 0 196] 
#[1 3 69 0 2 7 17 0 6 7 161 0 14 0 54 0 137 7 165 0 196] 
#[1 3 6 0 9 3 6 0 30 3 6 0 33 3 6 0 57 3 6 0 59 3 6 0 74 3 6 0 96 3 6 0 97 3 6 0 112 3 6 0 127 3 6 0 128 7 169 0 130 3 6 0 137 7 173 1 14] 
#[1 3 10 0 3 3 10 0 21 3 10 0 23 3 10 0 24 3 10 0 26 3 10 0 27 3 10 0 28 3 10 0 32 3 10 0 40 3 10 0 43 3 10 0 48 3 10 0 52 3 10 0 56 3 10 0 61 3 10 0 65 3 10 0 88 3 10 0 89 3 10 0 91 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 104 3 10 0 113 3 10 0 115 3 10 0 118 3 10 0 123 3 10 0 130 1 241 0 139 1 245 1 33 7 177 1 73 3 10 1 134] 
#[0 3 14 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 3 18 0 3 3 18 0 21 3 18 0 23 3 18 0 24 3 18 0 26 3 18 0 27 3 18 0 28 3 18 0 32 3 18 0 40 3 18 0 43 3 18 0 48 3 18 0 52 3 18 0 56 3 18 0 61 3 18 0 65 3 18 0 88 3 18 0 89 3 18 0 91 3 18 0 92 3 18 0 93 3 18 0 94 3 18 0 104 3 18 0 113 3 18 0 115 3 18 0 118 3 18 0 123 1 213 0 130 1 217 0 139 7 181 0 178 1 225 0 240 1 229 0 241 3 18 1 134] 
#[0 3 22 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 3 26 0 3 3 26 0 21 3 26 0 23 3 26 0 24 3 26 0 26 3 26 0 27 3 26 0 28 3 26 0 32 3 26 0 40 3 26 0 43 3 26 0 48 3 26 0 52 3 26 0 56 3 26 0 61 3 26 0 65 3 26 0 88 3 26 0 89 3 26 0 91 3 26 0 92 3 26 0 93 3 26 0 94 3 26 0 104 3 26 0 113 3 26 0 115 3 26 0 118 3 26 0 123 3 26 0 130 1 241 0 139 1 245 1 33 7 177 1 73 3 26 1 134] 
#[1 4 237 0 28 4 241 0 32 4 245 0 52 4 249 0 79 4 253 0 89 5 5 1 49 5 9 1 51 5 13 1 57 5 17 1 59] 
#[0 3 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 3 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 3 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 3 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 3 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 3 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 3 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 7 185 0 183 7 185 0 187 1 145 0 192 7 185 0 194 7 185 0 195 7 185 0 197 7 185 0 201 7 185 0 202 1 169 0 204 7 185 0 210 1 177 0 211 1 181 0 212 1 185 0 213 7 185 0 244 7 185 0 245 7 185 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 7 189 0 137 7 193 0 139 7 197 0 143] 
#[0 7 201 0 137] 
#[1 3 58 0 3 3 58 0 17 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 61 3 58 0 62 3 58 0 67 3 58 0 70 3 58 0 73 3 58 0 82 3 58 0 83 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 100 3 58 0 101 3 58 0 104 3 58 0 105 3 58 0 110 3 58 0 111 3 58 0 113 3 58 0 115 3 58 0 118 3 58 0 120 3 58 0 123 3 58 0 124 3 58 0 130 3 58 0 139 7 205 1 24 3 58 1 134] 
#[1 3 58 0 3 3 58 0 17 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 61 3 58 0 62 3 58 0 67 3 58 0 70 3 58 0 73 3 58 0 82 3 58 0 83 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 100 3 58 0 101 3 58 0 104 3 58 0 105 3 58 0 110 3 58 0 111 3 58 0 113 3 58 0 115 3 58 0 118 3 58 0 120 3 58 0 123 3 58 0 124 3 58 0 130 3 58 0 139 7 209 1 24 3 58 1 134] 
#[1 3 58 0 3 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 73 3 58 0 82 3 58 0 83 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 100 3 58 0 101 3 58 0 104 3 58 0 105 3 58 0 110 3 58 0 111 3 58 0 113 3 58 0 115 3 58 0 118 3 58 0 120 3 58 0 123 3 58 0 124 3 58 0 130 3 58 0 139 7 213 1 24 3 58 1 134] 
#[1 3 58 0 3 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 73 3 58 0 82 3 58 0 83 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 100 3 58 0 101 3 58 0 104 3 58 0 105 3 58 0 110 3 58 0 111 3 58 0 113 3 58 0 115 3 58 0 118 3 58 0 120 3 58 0 123 3 58 0 124 3 58 0 130 3 58 0 139 7 217 1 24 3 58 1 134] 
#[1 3 58 0 3 3 58 0 17 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 38 3 58 0 40 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 51 3 58 0 52 3 58 0 61 3 58 0 62 3 58 0 67 3 58 0 70 3 58 0 73 3 58 0 82 3 58 0 83 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 100 3 58 0 101 3 58 0 104 3 58 0 105 3 58 0 110 3 58 0 111 3 58 0 113 3 58 0 115 3 58 0 118 3 58 0 120 3 58 0 123 3 58 0 124 3 58 0 130 3 58 0 139 7 221 1 24 3 58 1 134] 
#[0 7 225 0 139] 
#[0 3 62 0 14 0 31 0 137] 
#[0 3 66 0 14 0 31 0 137] 
#[0 7 229 0 137] 
#[0 3 70 0 103] 
#[0 7 233 0 137] 
#[0 7 237 0 137] 
#[1 2 221 0 139 7 241 0 166 2 249 0 167] 
#[0 3 74 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 7 245 0 143] 
#[0 7 249 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 7 253 0 43 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 8 1 0 155 3 25 1 66 3 29 1 67 8 5 1 130] 
#[1 8 9 0 5 8 13 0 137] 
#[1 3 78 0 5 5 137 0 6 3 78 0 137] 
#[1 2 221 0 139 8 17 0 165 2 245 0 166 2 249 0 167] 
#[1 8 21 0 40 8 25 1 132] 
#[1 3 82 0 27 3 82 0 40 3 82 0 48 3 82 0 52 3 82 0 56 3 82 0 61 3 82 0 89 3 82 0 104 3 82 0 115 3 82 0 118 3 82 0 123 8 29 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 57 0 122 0 6 0 123 8 33 0 164] 
#[1 3 86 0 40 3 86 0 48 8 37 0 61 8 41 1 128] 
#[0 3 90 1 134] 
#[1 1 241 0 139 8 45 1 33] 
#[1 8 49 0 139 8 53 0 174 8 57 0 175] 
#[0 3 94 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 98 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 102 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 106 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 110 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 8 61 1 66 3 29 1 67] 
#[0 3 114 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 118 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 8 65 1 66 3 29 1 67] 
#[0 3 122 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 126 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 130 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 8 69 0 137] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 3 138 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 73 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 8 73 1 105 8 73 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 8 77 0 213 8 81 1 91 8 85 1 92 8 89 1 93 8 93 1 94 8 97 1 95 8 101 1 96 8 77 1 117 1 205 1 122 1 209 1 133] 
#[1 8 105 0 9 3 142 0 10 3 142 0 58] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 109 1 108 1 21 1 109 8 109 1 110 8 109 1 111 1 33 1 112 8 109 1 113 1 41 1 114 8 109 1 115 1 49 1 116 8 109 1 117 1 57 1 122 8 109 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 113 1 108 1 21 1 109 8 113 1 110 8 113 1 111 1 33 1 112 8 113 1 113 1 41 1 114 8 113 1 115 1 49 1 116 8 113 1 117 1 57 1 122 8 113 1 123 1 65 1 133] 
#[0 8 117 0 3] 
#[1 3 146 0 3 3 146 0 131 8 121 0 137] 
#[0 3 150 0 3 0 131 0 137] 
#[0 3 154 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 125 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 8 125 1 105 8 125 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[1 0 101 0 2 8 129 0 3 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 149 1 108 1 21 1 109 6 149 1 110 6 149 1 111 1 33 1 112 6 149 1 113 1 41 1 114 6 149 1 115 1 49 1 116 6 149 1 117 1 57 1 122 6 149 1 123 8 133 1 124 6 157 1 125 1 65 1 133] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 8 137 0 9 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 8 141 0 9 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 4 133 0 139 8 145 0 236] 
#[0 3 158 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 149 1 108 1 21 1 109 8 149 1 110 8 149 1 111 1 33 1 112 8 149 1 113 1 41 1 114 8 149 1 115 1 49 1 116 8 149 1 117 1 57 1 122 8 149 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 8 153 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 157 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 8 161 1 85 8 165 1 86 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 3 162 0 40 8 169 0 49 8 173 1 88] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 8 177 0 183 8 177 0 187 1 145 0 192 8 177 0 194 8 177 0 195 8 177 0 197 8 177 0 201 8 177 0 202 1 169 0 204 8 177 0 210 1 177 0 211 1 181 0 212 1 185 0 213 8 177 0 244 8 177 0 245 8 177 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 181 1 108 1 21 1 109 8 181 1 110 8 181 1 111 1 33 1 112 8 181 1 113 1 41 1 114 8 181 1 115 1 49 1 116 8 181 1 117 1 57 1 122 8 181 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 185 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 8 185 1 105 8 185 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 189 1 108 1 21 1 109 8 189 1 110 8 189 1 111 1 33 1 112 8 189 1 113 1 41 1 114 8 189 1 115 1 49 1 116 8 189 1 117 1 57 1 122 8 189 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 193 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 8 193 1 105 8 193 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 8 197 1 108 1 21 1 109 8 197 1 110 8 197 1 111 1 33 1 112 8 197 1 113 1 41 1 114 8 197 1 115 1 49 1 116 8 197 1 117 1 57 1 122 8 197 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 3 141 1 108 1 21 1 109 3 141 1 110 3 141 1 111 1 33 1 112 3 141 1 113 1 41 1 114 3 141 1 115 1 49 1 116 3 141 1 117 8 201 1 119 1 57 1 122 3 141 1 123 1 65 1 133] 
#[0 3 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 3 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 3 174 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 3 178 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 3 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 3 173 0 2 3 186 0 3 4 21 0 4 3 186 0 5 3 181 0 6 4 21 0 8 3 186 0 9 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 8 205 0 3 8 209 0 5] 
#[1 3 190 0 3 3 190 0 5 8 213 0 9] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 3 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 3 173 0 2 3 202 0 3 4 21 0 4 3 202 0 5 3 181 0 6 3 202 0 7 4 21 0 8 3 202 0 9 3 189 0 10 0 243 0 11 0 247 0 12 0 251 0 13 0 255 0 14 4 21 0 18 4 21 0 20 3 202 0 30 3 202 0 33 4 21 0 35 3 202 0 36 3 202 0 37 3 202 0 39 3 202 0 40 3 202 0 41 3 202 0 48 3 202 0 49 3 202 0 57 1 3 0 58 3 202 0 59 3 202 0 61 4 21 0 64 4 21 0 71 3 202 0 74 3 202 0 77 3 202 0 78 4 21 0 80 3 202 0 96 3 202 0 97 4 21 0 108 4 21 0 109 3 202 0 112 3 202 0 114 3 202 0 116 3 202 0 121 3 202 0 127 3 202 0 128 4 21 0 129 3 249 0 130 3 202 0 131 1 7 0 132 1 11 0 133 3 202 0 134 4 21 0 135 4 21 0 136 3 202 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 3 202 1 134] 
#[1 3 173 0 2 4 21 0 4 3 206 0 5 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 3 206 0 131 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 8 217 0 5 8 221 0 131] 
#[1 3 173 0 2 3 210 0 3 4 21 0 4 3 210 0 5 3 181 0 6 3 210 0 7 4 21 0 8 3 210 0 9 3 189 0 10 1 15 0 11 1 19 0 12 1 23 0 13 1 27 0 14 4 21 0 18 4 21 0 20 3 210 0 30 3 210 0 33 4 21 0 35 3 210 0 36 3 210 0 37 3 210 0 39 3 210 0 40 3 210 0 41 3 210 0 48 3 210 0 49 3 210 0 57 1 31 0 58 3 210 0 59 3 210 0 61 4 21 0 64 4 21 0 71 3 210 0 74 3 210 0 77 3 210 0 78 4 21 0 80 3 210 0 96 3 210 0 97 4 21 0 108 4 21 0 109 3 210 0 112 3 210 0 114 3 210 0 116 3 210 0 121 3 210 0 127 3 210 0 128 4 21 0 129 3 249 0 130 3 210 0 131 1 35 0 132 1 39 0 133 3 210 0 134 4 21 0 135 4 21 0 136 3 210 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 3 210 1 134] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 189 0 183 8 225 0 187 8 229 0 191 1 145 0 192 1 189 0 194 1 189 0 195 8 225 0 197 8 225 0 201 8 225 0 202 1 169 0 204 8 225 0 210 1 177 0 211 1 181 0 212 1 185 0 213 1 189 0 244 8 225 0 245 8 225 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 8 233 0 213 8 233 1 117 1 205 1 122 1 209 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 8 237 0 213 8 237 1 117 1 205 1 122 1 209 1 133] 
#[0 3 214 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 4 53 0 139 8 241 0 185] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 8 245 0 213 8 245 1 117 1 205 1 122 1 209 1 133] 
#[0 3 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 4 69 0 213 8 249 0 216 4 69 1 117 1 205 1 122 1 209 1 133] 
#[0 3 222 0 3] 
#[0 8 253 0 3] 
#[1 9 1 0 140 9 5 0 219] 
#[1 3 226 0 3 3 226 0 5 3 226 0 10 3 226 0 14 4 189 0 16 3 226 0 21 3 226 0 23 3 226 0 27 3 226 0 30 3 226 0 31 3 226 0 33 3 226 0 36 3 226 0 39 3 226 0 40 3 226 0 41 3 226 0 48 3 226 0 49 3 226 0 52 3 226 0 57 3 226 0 58 3 226 0 59 3 226 0 61 3 226 0 65 3 226 0 74 3 226 0 77 3 226 0 78 3 226 0 87 3 226 0 89 3 226 0 96 3 226 0 97 3 226 0 104 3 226 0 112 3 226 0 115 3 226 0 118 3 226 0 121 3 226 0 123 3 226 0 127 3 226 0 128 4 193 0 130 3 226 0 131 3 226 0 132 3 226 0 137 3 226 1 134] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 9 9 0 183 9 9 0 187 1 145 0 192 9 9 0 194 9 9 0 195 9 9 0 197 9 9 0 201 9 9 0 202 1 169 0 204 9 9 0 210 1 177 0 211 1 181 0 212 1 185 0 213 9 9 0 244 9 9 0 245 9 9 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[0 9 13 0 76] 
#[0 9 17 0 137] 
#[1 4 133 0 139 9 21 0 236] 
#[1 3 69 0 2 0 54 0 9 9 25 0 196] 
#[1 3 69 0 2 0 54 0 137 9 29 0 196] 
#[1 4 49 0 2 0 190 0 3 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 9 33 0 140 1 181 0 141 1 205 0 143 1 133 0 147 9 37 0 198 1 181 0 212 4 69 0 213 4 73 0 214 4 77 0 215 4 81 0 216 4 85 0 217 4 89 0 218 4 93 0 219 4 69 1 117 1 205 1 122 1 209 1 133] 
#[0 3 230 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 4 177 0 2 3 234 0 3 4 185 0 4 3 234 0 5 4 181 0 6 0 254 0 7 4 185 0 8 3 234 0 10 4 185 0 11 4 185 0 12 4 185 0 13 3 234 0 14 3 234 0 16 4 185 0 18 4 185 0 20 3 234 0 21 3 234 0 23 3 234 0 27 3 234 0 30 3 234 0 31 3 234 0 33 4 185 0 35 3 234 0 36 3 234 0 39 3 234 0 40 3 234 0 41 3 234 0 48 3 234 0 49 3 234 0 52 3 234 0 57 1 43 0 58 3 234 0 59 3 234 0 61 4 185 0 64 3 234 0 65 4 185 0 71 3 234 0 74 3 234 0 77 3 234 0 78 4 185 0 80 3 234 0 87 3 234 0 89 3 234 0 96 3 234 0 97 3 234 0 104 4 185 0 108 4 185 0 109 3 234 0 112 3 234 0 115 3 234 0 118 3 234 0 121 3 234 0 123 3 234 0 127 3 234 0 128 4 185 0 129 3 234 0 130 3 234 0 131 1 47 0 132 4 185 0 133 4 185 0 135 4 185 0 136 3 234 0 137 4 185 1 127 3 234 1 134] 
#[0 3 238 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 9 41 0 139] 
#[0 3 242 0 3 0 5 0 6 0 10 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 9 57 0 210 1 177 0 211 1 181 0 212 9 49 0 213 9 53 0 248 9 57 0 249 9 49 1 117 1 205 1 122 1 209 1 133] 
#[0 9 61 0 77] 
#[0 9 65 0 40] 
#[1 3 246 0 3 3 246 0 24 3 246 0 40 3 246 0 88 3 246 0 92 3 246 0 93 3 246 0 94 3 246 0 113 9 69 0 228] 
#[1 3 250 0 3 3 250 0 24 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 3 250 0 40 2 33 0 52 3 250 0 88 2 37 0 89 2 41 0 91 3 250 0 92 3 250 0 93 3 250 0 94 3 250 0 113 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 9 73 0 170 9 73 0 176 9 73 0 238 9 73 0 239 2 73 0 240 1 229 0 241 9 73 0 242 9 73 0 243 9 73 0 255 9 73 1 0 9 73 1 1 9 73 1 2 9 73 1 3 9 73 1 4 9 73 1 6 9 73 1 7 9 73 1 8 9 73 1 10 2 125 1 11 9 73 1 12 2 133 1 33 9 73 1 41 2 141 1 42 9 73 1 44 2 149 1 45 9 73 1 48 2 157 1 49 9 73 1 50 2 165 1 51 9 73 1 53 9 73 1 54 9 73 1 56 2 181 1 57 9 73 1 58 2 189 1 59 9 73 1 61 9 73 1 62 9 73 1 64 2 205 1 65 9 73 1 70 2 213 1 71] 
#[0 3 254 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 4 177 0 2 4 2 0 3 4 185 0 4 4 2 0 5 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 9 77 0 3 9 81 0 5] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[1 4 177 0 2 4 10 0 3 4 185 0 4 4 10 0 5 4 181 0 6 4 10 0 7 4 185 0 8 4 10 0 9 4 10 0 10 1 51 0 11 1 55 0 12 1 59 0 13 4 10 0 14 4 10 0 16 4 185 0 18 4 185 0 20 4 10 0 21 4 10 0 23 4 10 0 27 4 10 0 30 4 10 0 31 4 10 0 33 4 185 0 35 4 10 0 36 4 10 0 39 4 10 0 40 4 10 0 41 4 10 0 48 4 10 0 49 4 10 0 52 4 10 0 57 1 63 0 58 4 10 0 59 4 10 0 61 4 185 0 64 4 10 0 65 4 185 0 71 4 10 0 74 4 10 0 77 4 10 0 78 4 185 0 80 4 10 0 87 4 10 0 89 4 10 0 96 4 10 0 97 4 10 0 104 4 185 0 108 4 185 0 109 4 10 0 112 4 10 0 115 4 10 0 118 4 10 0 121 4 10 0 123 4 10 0 127 4 10 0 128 4 185 0 129 4 10 0 130 4 10 0 131 1 67 0 132 1 71 0 133 4 185 0 135 4 185 0 136 4 10 0 137 4 185 1 127 4 10 1 134] 
#[1 4 14 0 3 4 14 0 5 4 14 0 10 4 14 0 14 4 14 0 21 4 14 0 23 4 14 0 27 4 14 0 30 4 14 0 31 4 14 0 33 4 14 0 36 4 14 0 39 4 14 0 40 4 14 0 41 4 14 0 48 4 14 0 49 4 14 0 52 4 14 0 57 4 14 0 58 4 14 0 59 4 14 0 61 4 14 0 65 4 14 0 74 4 14 0 77 4 14 0 78 4 14 0 87 4 14 0 89 4 14 0 96 4 14 0 97 4 14 0 104 4 14 0 112 4 14 0 115 4 14 0 118 4 14 0 121 4 14 0 123 4 14 0 127 4 14 0 128 4 193 0 130 4 14 0 131 4 14 0 132 4 14 0 137 4 14 1 134] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 9 85 0 131 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[0 4 18 0 26 0 28 0 32 0 52 0 89 0 130 0 139 1 134] 
#[1 4 22 0 5 9 89 0 9 4 22 0 132] 
#[1 9 93 0 5 9 97 0 132] 
#[0 4 26 0 5 0 132] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 9 101 0 26 9 161 0 34 1 77 0 46 1 81 0 52 9 161 0 63 1 85 0 75 9 113 0 76 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 9 117 0 182 9 121 0 183 9 125 0 186 9 129 0 187 1 145 0 192 9 133 0 194 9 137 0 195 9 129 0 197 9 125 0 200 9 129 0 201 9 129 0 202 1 169 0 204 9 129 0 210 1 177 0 211 1 181 0 212 1 185 0 213 9 125 0 221 9 125 0 222 9 125 0 225 1 189 0 244 9 129 0 245 9 129 0 246 9 125 0 250 9 161 0 251 1 185 1 117 1 205 1 122 1 209 1 133] 
#[0 9 165 0 14] 
#[1 4 30 0 14 4 189 0 16 4 30 0 21 4 30 0 23 4 30 0 27 4 30 0 30 4 30 0 33 4 30 0 36 4 30 0 52 4 30 0 57 4 30 0 59 4 30 0 65 4 30 0 74 4 30 0 77 4 30 0 89 4 30 0 96 4 30 0 97 4 30 0 104 4 30 0 112 4 30 0 115 4 30 0 118 4 30 0 123 4 30 0 127 4 30 0 128 4 193 0 130 4 30 0 137] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 9 169 0 213 9 169 1 117 1 205 1 122 1 209 1 133] 
#[0 4 34 0 3 0 5 0 9 0 10 0 131 0 137 1 134] 
#[1 1 202 0 14 4 189 0 16 9 173 0 31 9 173 0 87 4 193 0 130 1 202 0 137 9 173 0 193] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 9 177 0 183 9 177 0 187 1 145 0 192 9 177 0 194 9 177 0 195 9 177 0 197 9 177 0 201 9 177 0 202 1 169 0 204 9 177 0 210 1 177 0 211 1 181 0 212 1 185 0 213 9 177 0 244 9 177 0 245 9 177 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 3 69 0 2 7 17 0 6 0 54 0 137 9 181 0 196] 
#[1 7 145 0 2 7 17 0 6 3 2 0 137 9 185 1 46] 
#[1 3 69 0 2 7 17 0 6 0 54 0 9 0 54 0 137 7 157 0 196] 
#[1 3 69 0 2 7 17 0 6 0 54 0 9 0 54 0 137 9 189 0 196] 
#[1 3 69 0 2 7 17 0 6 0 54 0 137 7 165 0 196] 
#[0 4 38 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 9 193 0 137] 
#[0 9 197 0 3] 
#[0 9 201 0 137] 
#[0 9 205 0 139] 
#[1 4 217 0 9 1 30 0 137 9 209 1 9] 
#[0 9 213 0 139] 
#[0 9 217 0 137] 
#[1 2 13 0 27 2 13 0 81 2 13 0 123 1 238 0 131 0 22 0 139 9 221 1 30 6 53 1 31 6 57 1 32 2 13 1 35] 
#[1 4 217 0 9 1 30 0 30 1 30 0 33 1 30 0 57 1 30 0 59 1 30 0 74 1 30 0 96 1 30 0 97 1 30 0 112 1 30 0 127 1 30 0 128 1 30 0 137 9 225 1 9] 
#[0 4 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 4 46 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 4 189 0 16 9 229 0 31 9 229 0 87 4 193 0 130 1 202 0 137 9 229 0 193] 
#[0 4 50 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[1 9 233 0 72 9 237 0 137] 
#[1 9 241 0 72 9 245 0 137] 
#[0 4 54 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[1 4 58 0 3 10 101 0 17 10 101 0 22 4 58 0 23 4 58 0 24 10 101 0 25 4 58 0 26 4 58 0 27 4 58 0 28 10 5 0 31 4 58 0 32 10 9 0 33 10 101 0 38 4 58 0 40 10 101 0 42 4 58 0 43 5 109 0 44 10 101 0 45 10 101 0 47 4 58 0 48 5 113 0 51 4 58 0 52 4 58 0 61 10 101 0 62 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 4 58 0 88 4 58 0 89 4 58 0 91 4 58 0 92 4 58 0 93 4 58 0 94 10 101 0 100 10 101 0 101 4 58 0 104 10 101 0 105 10 101 0 110 10 101 0 111 4 58 0 113 4 58 0 115 4 58 0 118 10 101 0 120 4 58 0 123 10 101 0 124 4 58 0 130 4 58 0 139 10 89 1 26 10 89 1 27 10 89 1 28 10 101 1 29 4 58 1 134] 
#[1 4 62 0 3 10 101 0 17 10 101 0 22 4 62 0 23 4 62 0 24 10 101 0 25 4 62 0 26 4 62 0 27 4 62 0 28 10 5 0 31 4 62 0 32 10 9 0 33 10 101 0 38 4 62 0 40 10 101 0 42 4 62 0 43 5 109 0 44 10 101 0 45 10 101 0 47 4 62 0 48 5 113 0 51 4 62 0 52 4 62 0 61 10 101 0 62 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 4 62 0 88 4 62 0 89 4 62 0 91 4 62 0 92 4 62 0 93 4 62 0 94 10 101 0 100 10 101 0 101 4 62 0 104 10 101 0 105 10 101 0 110 10 101 0 111 4 62 0 113 4 62 0 115 4 62 0 118 10 101 0 120 4 62 0 123 10 101 0 124 4 62 0 130 4 62 0 139 10 89 1 26 10 89 1 27 10 89 1 28 10 101 1 29 4 62 1 134] 
#[1 4 66 0 3 10 101 0 17 4 66 0 21 10 101 0 22 4 66 0 23 4 66 0 24 10 101 0 25 4 66 0 26 4 66 0 27 4 66 0 28 10 5 0 31 4 66 0 32 10 9 0 33 10 101 0 38 4 66 0 40 10 101 0 42 4 66 0 43 5 109 0 44 10 101 0 45 10 101 0 47 4 66 0 48 5 113 0 51 4 66 0 52 4 66 0 56 4 66 0 61 10 101 0 62 4 66 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 4 66 0 88 4 66 0 89 4 66 0 91 4 66 0 92 4 66 0 93 4 66 0 94 10 101 0 100 10 101 0 101 4 66 0 104 10 101 0 105 10 101 0 110 10 101 0 111 4 66 0 113 4 66 0 115 4 66 0 118 10 101 0 120 4 66 0 123 10 101 0 124 4 66 0 130 4 66 0 139 10 89 1 26 10 89 1 27 10 89 1 28 10 101 1 29 4 66 1 134] 
#[1 4 70 0 3 10 101 0 17 4 70 0 21 10 101 0 22 4 70 0 23 4 70 0 24 10 101 0 25 4 70 0 26 4 70 0 27 4 70 0 28 10 5 0 31 4 70 0 32 10 9 0 33 10 101 0 38 4 70 0 40 10 101 0 42 4 70 0 43 5 109 0 44 10 101 0 45 10 101 0 47 4 70 0 48 5 113 0 51 4 70 0 52 4 70 0 56 4 70 0 61 10 101 0 62 4 70 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 4 70 0 88 4 70 0 89 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 10 101 0 100 10 101 0 101 4 70 0 104 10 101 0 105 10 101 0 110 10 101 0 111 4 70 0 113 4 70 0 115 4 70 0 118 10 101 0 120 4 70 0 123 10 101 0 124 4 70 0 130 4 70 0 139 10 89 1 26 10 89 1 27 10 89 1 28 10 101 1 29 4 70 1 134] 
#[1 4 74 0 3 10 101 0 17 10 101 0 22 4 74 0 23 4 74 0 24 10 101 0 25 4 74 0 26 4 74 0 27 4 74 0 28 10 5 0 31 4 74 0 32 10 9 0 33 10 101 0 38 4 74 0 40 10 101 0 42 4 74 0 43 5 109 0 44 10 101 0 45 10 101 0 47 4 74 0 48 5 113 0 51 4 74 0 52 4 74 0 61 10 101 0 62 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 4 74 0 88 4 74 0 89 4 74 0 91 4 74 0 92 4 74 0 93 4 74 0 94 10 101 0 100 10 101 0 101 4 74 0 104 10 101 0 105 10 101 0 110 10 101 0 111 4 74 0 113 4 74 0 115 4 74 0 118 10 101 0 120 4 74 0 123 10 101 0 124 4 74 0 130 4 74 0 139 10 89 1 26 10 89 1 27 10 89 1 28 10 101 1 29 4 74 1 134] 
#[0 4 78 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 4 82 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 4 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 4 90 0 40 0 48 0 56 0 61 0 63 1 134] 
#[0 4 94 0 5 0 137] 
#[0 4 98 0 5 0 137] 
#[0 4 102 1 134] 
#[1 10 105 0 139 10 109 1 131] 
#[0 10 113 0 6] 
#[0 4 106 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 221 0 139 10 117 0 167] 
#[0 4 110 0 29] 
#[1 5 165 0 5 10 121 0 137] 
#[0 10 125 0 6] 
#[0 4 114 1 134] 
#[1 2 21 0 27 4 118 0 40 4 118 0 48 4 245 0 52 4 118 0 56 4 118 0 61 4 253 0 89 5 221 0 104 2 45 0 115 2 49 0 118 2 53 0 123 10 129 0 169 10 129 0 170 10 129 0 173 10 129 0 176 10 129 1 3 10 129 1 6 10 129 1 48 2 157 1 49 10 129 1 50 2 165 1 51 10 129 1 56 2 181 1 57 10 129 1 58 2 189 1 59 10 129 1 70 2 213 1 71] 
#[1 4 122 0 23 4 122 0 26 4 122 0 27 4 122 0 28 4 122 0 32 4 122 0 40 4 122 0 43 4 122 0 48 4 122 0 52 4 122 0 61 4 122 0 89 4 122 0 104 4 122 0 115 4 122 0 118 4 122 0 123 10 157 1 38] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 14 0 48 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 10 161 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 4 126 0 40 10 165 0 48 10 169 1 129] 
#[1 4 225 0 5 10 173 0 137] 
#[0 10 177 0 14] 
#[1 4 130 0 21 4 130 0 23 4 130 0 26 4 130 0 27 4 130 0 28 4 130 0 32 4 130 0 40 4 130 0 43 4 130 0 48 4 130 0 52 4 130 0 56 4 130 0 61 4 130 0 65 4 130 0 89 4 130 0 104 4 130 0 115 4 130 0 118 4 130 0 123 8 49 0 139 10 181 0 175] 
#[0 4 134 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 4 138 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 4 142 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 4 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 4 150 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 4 177 0 2 4 185 0 4 4 154 0 5 4 181 0 6 10 185 0 7 4 185 0 8 4 154 0 9 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 10 189 0 39 4 158 0 40 10 193 1 97] 
#[1 2 166 0 39 2 166 0 40 10 197 0 137 10 201 1 90] 
#[0 4 162 0 39 0 40 0 137] 
#[0 10 205 0 9] 
#[0 10 209 0 5] 
#[1 4 166 0 5 4 170 0 9] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 10 213 0 183 10 213 0 187 1 145 0 192 10 213 0 194 10 213 0 195 10 213 0 197 10 213 0 201 10 213 0 202 1 169 0 204 10 213 0 210 1 177 0 211 1 181 0 212 1 185 0 213 10 213 0 244 10 213 0 245 10 213 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 10 225 0 37 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 10 225 0 116 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 10 225 1 103 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 10 229 0 36 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[0 4 174 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 2 13 0 27 2 13 0 81 2 13 0 123 0 22 0 139 10 233 1 32 2 13 1 35] 
#[1 10 237 0 39 4 178 0 40 4 178 0 41 4 178 0 48 4 178 0 49 4 178 0 61 4 178 0 78 4 178 0 121 4 178 0 137 4 178 1 134] 
#[0 4 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 10 241 0 3 8 209 0 5] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 10 245 1 108 1 21 1 109 10 245 1 110 10 245 1 111 1 33 1 112 10 245 1 113 1 41 1 114 10 245 1 115 1 49 1 116 10 245 1 117 1 57 1 122 10 245 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 10 249 1 108 1 21 1 109 10 249 1 110 10 249 1 111 1 33 1 112 10 249 1 113 1 41 1 114 10 249 1 115 1 49 1 116 10 249 1 117 1 57 1 122 10 249 1 123 1 65 1 133] 
#[1 7 17 0 6 4 186 0 39 4 186 0 40 4 186 0 41 4 186 0 48 4 186 0 49 4 186 0 61 4 186 0 78 4 186 0 121 4 186 0 137 4 186 1 134] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 190 0 39 4 190 0 40 4 190 0 41 4 190 0 48 4 190 0 49 4 21 0 58 4 190 0 61 4 21 0 64 4 21 0 71 4 190 0 78 4 21 0 80 4 21 0 108 4 21 0 109 4 190 0 121 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 190 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 4 190 1 134] 
#[1 4 133 0 139 10 253 0 236] 
#[1 11 1 0 39 4 194 0 40 4 194 0 49 6 29 0 137 11 5 1 87] 
#[1 11 1 0 39 4 194 0 40 4 194 0 49 8 153 0 78 11 9 1 86 11 13 1 87] 
#[0 4 198 0 39 0 40 0 49 0 78] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 11 17 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[0 11 21 0 40] 
#[1 11 25 0 10 4 189 0 16 4 202 0 39 4 202 0 40 4 202 0 41 4 202 0 48 4 202 0 49 4 202 0 61 4 202 0 78 4 202 0 121 4 193 0 130 4 202 0 137 4 202 1 134] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 206 0 39 4 206 0 40 4 206 0 41 4 206 0 48 4 206 0 49 4 21 0 58 4 206 0 61 4 21 0 64 4 21 0 71 4 206 0 78 4 21 0 80 4 21 0 108 4 21 0 109 4 206 0 121 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 206 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 4 206 1 134] 
#[0 4 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[1 3 173 0 2 4 21 0 4 4 214 0 5 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 214 0 36 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[0 4 218 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[1 3 173 0 2 4 21 0 4 4 222 0 5 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 222 0 131 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[0 4 226 0 5 0 131] 
#[0 4 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 6 149 1 108 1 21 1 109 6 149 1 110 6 149 1 111 1 33 1 112 6 149 1 113 1 41 1 114 6 149 1 115 1 49 1 116 6 149 1 117 1 57 1 122 6 149 1 123 11 29 1 125 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 11 33 1 108 1 21 1 109 11 33 1 110 11 33 1 111 1 33 1 112 11 33 1 113 1 41 1 114 11 33 1 115 1 49 1 116 11 33 1 117 1 57 1 122 11 33 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 11 37 1 108 1 21 1 109 11 37 1 110 11 37 1 111 1 33 1 112 11 37 1 113 1 41 1 114 11 37 1 115 1 49 1 116 11 37 1 117 1 57 1 122 11 37 1 123 1 65 1 133] 
#[0 4 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 4 238 0 5 0 218 0 16 0 218 0 130 4 238 0 132] 
#[1 11 41 0 5 4 242 0 132 11 45 0 190] 
#[1 4 177 0 2 4 246 0 3 4 185 0 4 4 246 0 5 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 4 177 0 2 4 250 0 3 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 250 0 137 4 185 1 127] 
#[0 4 254 0 3 0 5] 
#[1 4 177 0 2 5 2 0 3 4 185 0 4 5 2 0 5 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[0 5 6 0 3 0 5] 
#[0 5 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[0 6 193 0 9] 
#[0 5 14 0 3 0 137] 
#[1 4 189 0 16 6 237 0 77 4 193 0 130 2 186 0 137 11 49 1 5] 
#[0 5 18 0 137] 
#[1 3 58 0 3 3 58 0 5 3 58 0 10 3 58 0 14 3 58 0 16 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 30 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 36 3 58 0 38 3 58 0 39 3 58 0 40 3 58 0 41 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 49 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 57 3 58 0 58 3 58 0 59 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 73 3 58 0 74 3 58 0 77 3 58 0 78 3 58 0 82 3 58 0 83 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 96 3 58 0 97 3 58 0 100 3 58 0 101 3 58 0 104 3 58 0 105 3 58 0 110 3 58 0 111 3 58 0 112 3 58 0 113 3 58 0 115 3 58 0 118 3 58 0 120 3 58 0 121 3 58 0 123 3 58 0 124 3 58 0 127 3 58 0 128 3 58 0 130 3 58 0 131 3 58 0 132 3 58 0 137 3 58 0 139 11 53 1 24 3 58 1 134] 
#[1 7 17 0 6 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 11 57 0 203 7 37 0 227 7 41 0 237] 
#[0 11 61 0 9] 
#[0 11 65 0 137] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 1 75 0 5 0 202 0 6 0 202 0 8 6 193 0 9 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 18 0 202 0 20 0 202 0 35 0 202 0 58 0 202 0 64 0 202 0 71 0 202 0 80 0 202 0 108 0 202 0 109 0 202 0 129 0 202 0 132 0 202 0 133 0 202 0 135 0 202 0 136] 
#[0 11 73 0 3] 
#[1 1 22 0 2 1 22 0 3 1 22 0 5 1 22 0 6 1 22 0 9 1 22 0 10 4 201 0 11 1 22 0 14 1 22 0 16 1 22 0 21 1 22 0 23 1 22 0 24 1 22 0 26 1 22 0 27 1 22 0 28 1 22 0 30 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 36 1 22 0 39 1 22 0 40 1 22 0 41 1 22 0 48 1 22 0 49 1 22 0 52 1 22 0 57 1 22 0 58 1 22 0 59 1 22 0 61 1 22 0 65 1 22 0 74 1 22 0 77 1 22 0 78 1 22 0 87 1 22 0 88 1 22 0 89 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 96 1 22 0 97 1 22 0 104 1 22 0 112 1 22 0 113 1 22 0 115 1 22 0 118 1 22 0 121 1 22 0 123 1 22 0 127 1 22 0 128 1 22 0 130 1 22 0 131 1 22 0 132 1 22 0 137 1 22 0 139 11 77 0 179 1 22 1 134] 
#[0 5 22 0 5 0 131] 
#[1 4 177 0 2 4 185 0 4 5 26 0 5 4 181 0 6 0 254 0 7 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 5 26 0 131 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 11 81 0 5 11 85 0 131] 
#[0 5 30 0 5 0 131] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 11 89 0 27 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 11 93 0 183 11 93 0 187 1 145 0 192 11 93 0 194 11 93 0 195 11 93 0 197 11 93 0 201 11 93 0 202 1 169 0 204 11 93 0 210 1 177 0 211 1 181 0 212 1 185 0 213 11 93 0 244 11 93 0 245 11 93 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[0 5 34 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 5 38 0 3 11 97 0 24 5 38 0 40 11 101 0 88 11 105 0 92 11 109 0 93 11 113 0 94 11 117 0 113 11 121 0 205 11 125 0 229 11 125 0 230 11 125 0 231 11 125 0 232 11 125 0 233] 
#[0 5 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 134] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 11 145 0 213 11 145 1 117 1 205 1 122 1 209 1 133] 
#[0 5 50 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 11 149 0 183 11 149 0 187 1 145 0 192 11 149 0 194 11 149 0 195 11 149 0 197 11 149 0 201 11 149 0 202 1 169 0 204 11 149 0 210 1 177 0 211 1 181 0 212 1 185 0 213 11 149 0 244 11 149 0 245 11 149 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 7 77 0 139 11 153 0 181] 
#[0 5 54 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[1 5 58 0 2 5 58 0 17 5 58 0 26 5 58 0 27 5 58 0 28 5 58 0 31 5 58 0 32 5 58 0 40 5 58 0 52 5 58 0 54 11 157 0 77 5 58 0 87 5 58 0 88 5 58 0 89 5 58 0 91 5 58 0 92 5 58 0 93 5 58 0 94 5 58 0 106 5 58 0 113 5 58 0 115 5 58 0 118 5 58 0 123 5 58 0 130 5 58 0 137 5 58 0 139 11 161 0 223] 
#[0 5 62 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 5 66 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 11 165 0 2 5 70 0 26 5 70 0 27 5 70 0 28 5 70 0 32 5 70 0 40 5 70 0 52 5 70 0 88 5 70 0 89 5 70 0 91 5 70 0 92 5 70 0 93 5 70 0 94 5 70 0 113 5 70 0 115 5 70 0 118 5 70 0 123 5 70 0 130 5 70 0 139 11 169 0 234] 
#[0 5 74 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 0 214 0 16 0 214 0 130 11 173 0 137] 
#[1 11 177 0 31 11 177 0 87 1 202 0 137 11 177 0 193] 
#[1 0 218 0 16 11 181 0 31 11 181 0 87 0 218 0 130 1 202 0 137 11 181 0 193] 
#[1 5 78 0 3 0 226 0 16 5 78 0 21 5 78 0 23 5 78 0 24 5 78 0 26 5 78 0 27 5 78 0 28 5 78 0 32 5 78 0 40 5 78 0 43 5 78 0 48 5 78 0 52 5 78 0 56 5 78 0 61 5 78 0 65 5 78 0 88 5 78 0 89 5 78 0 91 5 78 0 92 5 78 0 93 5 78 0 94 5 78 0 104 5 78 0 113 5 78 0 115 5 78 0 118 5 78 0 123 1 79 0 130 5 78 0 139 5 78 1 134] 
#[1 5 82 0 3 0 230 0 16 5 82 0 21 5 82 0 23 5 82 0 24 5 82 0 26 5 82 0 27 5 82 0 28 5 82 0 32 5 82 0 40 5 82 0 43 5 82 0 48 5 82 0 52 5 82 0 56 5 82 0 61 5 82 0 65 5 82 0 88 5 82 0 89 5 82 0 91 5 82 0 92 5 82 0 93 5 82 0 94 5 82 0 104 5 82 0 113 5 82 0 115 5 82 0 118 5 82 0 123 1 83 0 130 5 82 0 139 5 82 1 134] 
#[0 5 86 0 31 0 87 0 137] 
#[0 5 90 0 31 0 87 0 137] 
#[0 5 94 0 31 0 87 0 137] 
#[0 5 98 0 31 0 87 0 137] 
#[0 5 102 0 31 0 87 0 137] 
#[1 11 165 0 2 5 70 0 26 5 106 0 31 5 70 0 40 5 70 0 52 5 106 0 87 5 70 0 89 5 70 0 91 5 70 0 130 5 106 0 137 11 185 0 234] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 9 101 0 26 9 161 0 34 1 77 0 46 1 81 0 52 9 161 0 63 1 85 0 75 9 113 0 76 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 11 189 0 182 9 121 0 183 9 125 0 186 9 129 0 187 1 145 0 192 9 133 0 194 9 137 0 195 9 129 0 197 9 125 0 200 9 129 0 201 9 129 0 202 1 169 0 204 9 129 0 210 1 177 0 211 1 181 0 212 1 185 0 213 9 125 0 221 9 125 0 222 9 125 0 225 1 189 0 244 9 129 0 245 9 129 0 246 9 125 0 250 9 161 0 251 1 185 1 117 1 205 1 122 1 209 1 133] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 1 87 0 31 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 11 193 0 87 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 1 202 0 137 11 193 0 193 4 185 1 127] 
#[1 11 197 0 14 5 110 0 137 11 201 1 34] 
#[1 5 110 0 3 11 197 0 14 4 189 0 16 4 193 0 130 5 110 0 131 5 110 0 137 11 205 1 34 5 110 1 134] 
#[0 11 209 0 137] 
#[0 11 213 0 137] 
#[1 4 217 0 9 1 30 0 137 11 217 1 9] 
#[1 5 114 0 3 5 114 0 17 5 114 0 21 5 114 0 22 5 114 0 23 5 114 0 24 5 114 0 25 5 114 0 26 5 114 0 27 5 114 0 28 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 38 5 114 0 40 5 114 0 42 5 114 0 44 5 114 0 45 5 114 0 47 5 114 0 51 5 114 0 52 5 114 0 62 5 114 0 65 5 114 0 67 5 114 0 70 5 114 0 73 5 114 0 82 5 114 0 83 5 114 0 86 5 114 0 87 5 114 0 88 5 114 0 89 5 114 0 91 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 100 5 114 0 101 5 114 0 104 5 114 0 105 5 114 0 110 5 114 0 111 5 114 0 113 5 114 0 115 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 124 5 114 0 130 5 114 0 139 11 221 1 25 5 114 1 134] 
#[0 5 118 0 137] 
#[1 5 114 0 3 5 114 0 17 5 114 0 21 5 114 0 22 5 114 0 23 5 114 0 24 5 114 0 25 5 114 0 26 5 114 0 27 5 114 0 28 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 38 5 114 0 40 5 114 0 42 5 114 0 44 5 114 0 45 5 114 0 47 5 114 0 51 5 114 0 52 5 114 0 62 5 114 0 65 5 114 0 67 5 114 0 70 5 114 0 73 5 114 0 82 5 114 0 83 5 114 0 86 5 114 0 87 5 114 0 88 5 114 0 89 5 114 0 91 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 100 5 114 0 101 5 114 0 104 5 114 0 105 5 114 0 110 5 114 0 111 5 114 0 113 5 114 0 115 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 124 5 114 0 130 5 114 0 139 11 225 1 25 5 114 1 134] 
#[0 11 229 0 137] 
#[0 11 233 0 137] 
#[0 11 237 0 137] 
#[1 5 114 0 3 5 114 0 17 5 114 0 21 5 114 0 22 5 114 0 23 5 114 0 24 5 114 0 25 5 114 0 26 5 114 0 27 5 114 0 28 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 38 5 114 0 40 5 114 0 42 5 114 0 44 5 114 0 45 5 114 0 47 5 114 0 48 5 114 0 51 5 114 0 52 5 114 0 56 5 114 0 61 5 114 0 62 5 114 0 65 5 114 0 67 5 114 0 70 5 114 0 73 5 114 0 82 5 114 0 83 5 114 0 86 5 114 0 87 5 114 0 88 5 114 0 89 5 114 0 91 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 100 5 114 0 101 5 114 0 104 5 114 0 105 5 114 0 110 5 114 0 111 5 114 0 113 5 114 0 115 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 124 5 114 0 130 5 114 0 139 11 241 1 25 5 114 1 134] 
#[0 11 245 0 131] 
#[1 5 122 0 30 5 122 0 33 5 122 0 57 5 122 0 59 5 122 0 74 5 122 0 96 5 122 0 97 5 122 0 112 5 122 0 127 5 122 0 128 5 122 0 137 11 249 1 13] 
#[0 11 253 0 137] 
#[0 12 1 0 143] 
#[0 5 126 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 12 5 0 143] 
#[0 5 130 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 5 134 0 137] 
#[0 5 138 0 137] 
#[0 5 142 0 137] 
#[1 5 146 0 137 12 9 0 143] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 12 13 0 213 12 13 1 117 1 205 1 122 1 209 1 133] 
#[0 5 150 0 137] 
#[0 5 154 0 137] 
#[0 5 158 0 137] 
#[0 5 162 0 137] 
#[0 5 166 0 137] 
#[0 5 170 0 137] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 12 17 0 213 12 17 1 117 1 205 1 122 1 209 1 133] 
#[0 5 174 0 137] 
#[0 5 178 0 137] 
#[0 5 182 0 137] 
#[0 5 186 0 137] 
#[0 5 190 0 137] 
#[0 5 194 0 137] 
#[0 5 198 0 137] 
#[0 5 202 0 137] 
#[0 5 206 0 137] 
#[0 5 210 0 137] 
#[0 5 214 0 137] 
#[0 5 218 0 137] 
#[0 5 222 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 5 226 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 5 230 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 12 21 0 137] 
#[0 5 234 0 5 0 137] 
#[1 12 25 0 5 12 29 0 137] 
#[0 5 238 1 134] 
#[1 5 242 0 5 5 137 0 6 5 242 0 137] 
#[0 5 246 0 40] 
#[0 5 250 1 134] 
#[0 5 254 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 2 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 10 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 14 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 18 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 22 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 12 33 0 23 5 73 0 26 2 21 0 27 2 25 0 28 2 29 0 32 6 26 0 40 7 253 0 43 6 26 0 48 4 245 0 52 6 26 0 61 4 253 0 89 5 221 0 104 2 45 0 115 2 49 0 118 2 53 0 123 12 53 0 170 12 53 0 173 12 53 0 176 12 49 1 37 12 53 1 39 12 53 1 40 12 61 1 41 12 65 1 42 12 53 1 43 12 73 1 44 12 77 1 45 12 53 1 47 5 241 1 48 2 157 1 49 5 245 1 50 2 165 1 51 12 53 1 52 12 89 1 53 12 93 1 54 12 53 1 55 5 253 1 56 2 181 1 57 6 1 1 58 2 189 1 59 12 53 1 60 12 105 1 61 12 109 1 62 12 53 1 63 12 117 1 64 12 121 1 65 12 53 1 70 2 213 1 71 12 53 1 130] 
#[1 6 30 0 40 6 30 0 48 6 29 0 137] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 133 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 8 21 0 40 12 137 1 132] 
#[0 6 34 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 12 141 0 213 12 141 1 117 1 205 1 122 1 209 1 133] 
#[0 6 38 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 12 145 0 213 12 145 1 117 1 205 1 122 1 209 1 133] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 149 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[0 12 153 0 40] 
#[1 4 49 0 2 1 73 0 15 3 222 0 39 3 222 0 40 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 8 77 0 213 12 157 1 93 8 93 1 94 8 97 1 95 8 101 1 96 8 77 1 117 1 205 1 122 1 209 1 133] 
#[0 6 42 0 39 0 40] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 161 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 12 161 1 105 12 161 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 8 77 0 213 12 165 1 96 8 77 1 117 1 205 1 122 1 209 1 133] 
#[1 6 46 0 10 4 189 0 16 6 46 0 58 4 193 0 130] 
#[0 6 50 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 133] 
#[0 6 54 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 133] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 169 1 108 1 21 1 109 12 169 1 110 12 169 1 111 1 33 1 112 12 169 1 113 1 41 1 114 12 169 1 115 1 49 1 116 12 169 1 117 1 57 1 122 12 169 1 123 1 65 1 133] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 173 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 12 173 1 105 12 173 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[0 6 58 0 3 0 131 0 137] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 177 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 12 177 1 105 12 177 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[0 6 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 12 181 0 131 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 12 185 0 131 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 7 17 0 6 4 217 0 9 1 30 0 36 12 189 1 9] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 193 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[0 6 66 0 40 0 49] 
#[0 6 70 0 39 0 40 0 49 0 78] 
#[0 6 74 0 40 0 49] 
#[1 6 78 0 40 6 29 0 137] 
#[0 6 82 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 12 197 1 108 1 21 1 109 12 197 1 110 12 197 1 111 1 33 1 112 12 197 1 113 1 41 1 114 12 197 1 115 1 49 1 116 12 197 1 117 1 57 1 122 12 197 1 123 1 65 1 133] 
#[1 6 86 0 3 6 86 0 5 8 213 0 9] 
#[1 3 173 0 2 6 90 0 3 4 21 0 4 6 90 0 5 3 181 0 6 4 21 0 8 6 90 0 9 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 3 173 0 2 4 21 0 4 6 94 0 5 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 6 94 0 131 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 189 0 183 12 201 0 187 1 145 0 192 1 189 0 194 1 189 0 195 12 201 0 197 12 201 0 201 12 201 0 202 1 169 0 204 12 201 0 210 1 177 0 211 1 181 0 212 1 185 0 213 1 189 0 244 12 201 0 245 12 201 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[0 12 205 0 132] 
#[0 12 209 0 137] 
#[1 6 98 0 3 6 98 0 5 6 98 0 10 6 98 0 14 6 98 0 16 10 101 0 17 6 98 0 21 10 101 0 22 6 98 0 23 6 98 0 24 10 101 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 30 1 91 0 31 6 98 0 32 1 95 0 33 6 98 0 36 10 101 0 38 6 98 0 39 6 98 0 40 6 98 0 41 10 101 0 42 6 98 0 43 5 109 0 44 10 101 0 45 10 101 0 47 6 98 0 48 6 98 0 49 5 113 0 51 6 98 0 52 6 98 0 56 6 98 0 57 6 98 0 58 6 98 0 59 6 98 0 61 10 101 0 62 6 98 0 65 10 101 0 67 10 37 0 70 10 101 0 73 6 98 0 74 6 98 0 77 6 98 0 78 10 101 0 82 10 101 0 83 10 101 0 86 1 99 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 96 6 98 0 97 10 101 0 100 10 101 0 101 6 98 0 104 10 101 0 105 10 101 0 110 10 101 0 111 6 98 0 112 6 98 0 113 6 98 0 115 6 98 0 118 10 101 0 120 6 98 0 121 6 98 0 123 10 101 0 124 6 98 0 127 6 98 0 128 6 98 0 130 6 98 0 131 6 98 0 132 6 98 0 137 6 98 0 139 10 89 1 26 10 89 1 27 10 89 1 28 10 101 1 29 6 98 1 134] 
#[0 12 213 0 40] 
#[1 1 69 0 2 1 73 0 15 0 18 0 19 1 77 0 46 1 81 0 52 1 85 0 75 1 169 0 85 1 93 0 89 0 7 0 98 1 101 0 99 1 105 0 107 1 109 0 118 0 177 0 130 1 113 0 135 1 117 0 136 1 121 0 138 1 125 0 140 1 181 0 141 1 205 0 143 1 133 0 147 12 217 0 183 12 217 0 187 1 145 0 192 12 217 0 194 12 217 0 195 12 217 0 197 12 217 0 201 12 217 0 202 1 169 0 204 12 217 0 210 1 177 0 211 1 181 0 212 1 185 0 213 12 217 0 244 12 217 0 245 12 217 0 246 1 185 1 117 1 205 1 122 1 209 1 133] 
#[0 6 102 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[1 12 221 0 140 12 225 0 199] 
#[0 6 106 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[0 6 110 0 2 0 3 0 5 0 6 0 9 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 12 229 0 210 1 177 0 211 1 181 0 212 9 49 0 213 12 229 0 249 9 49 1 117 1 205 1 122 1 209 1 133] 
#[0 6 114 0 77] 
#[0 6 118 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 6 122 0 3 6 122 0 5 6 122 0 10 6 122 0 14 4 189 0 16 6 122 0 21 6 122 0 23 6 122 0 27 6 122 0 30 6 122 0 31 6 122 0 33 6 122 0 36 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 48 6 122 0 49 6 122 0 52 6 122 0 57 6 122 0 58 6 122 0 59 6 122 0 61 6 122 0 65 6 122 0 74 6 122 0 77 6 122 0 78 6 122 0 87 6 122 0 89 6 122 0 96 6 122 0 97 6 122 0 104 6 122 0 112 6 122 0 115 6 122 0 118 6 122 0 121 6 122 0 123 6 122 0 127 6 122 0 128 4 193 0 130 6 122 0 131 6 122 0 132 6 122 0 137 6 122 1 134] 
#[0 12 233 0 139] 
#[1 2 214 0 3 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 12 237 0 237] 
#[1 2 214 0 3 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 12 241 0 237] 
#[1 2 214 0 3 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 12 245 0 237] 
#[1 2 214 0 3 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 12 249 0 237] 
#[1 12 253 0 88 13 1 0 92] 
#[0 6 126 0 3 0 40] 
#[0 6 130 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 134 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 138 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 142 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 146 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 4 177 0 2 6 150 0 3 4 185 0 4 6 150 0 5 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 6 154 0 5 4 189 0 16 4 193 0 130 6 154 0 132] 
#[0 6 158 0 5 0 132] 
#[0 13 5 0 139] 
#[1 11 165 0 2 13 21 0 17 5 70 0 26 5 70 0 27 5 70 0 28 5 70 0 31 5 70 0 32 5 70 0 40 5 70 0 52 13 13 0 54 5 70 0 87 5 70 0 88 5 70 0 89 5 70 0 91 5 70 0 92 5 70 0 93 5 70 0 94 13 21 0 106 5 70 0 113 5 70 0 115 5 70 0 118 5 70 0 123 5 70 0 130 5 70 0 137 5 70 0 139 13 21 0 224 13 25 0 234] 
#[1 13 29 0 140 13 33 0 192 13 37 0 235] 
#[1 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 13 41 0 227 7 41 0 237] 
#[0 6 162 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 13 45 0 137] 
#[0 13 49 0 137] 
#[1 6 166 0 26 6 166 0 40 6 166 0 52 6 166 0 89 6 166 0 91 13 53 0 130 13 57 0 252] 
#[0 6 170 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 13 65 0 31 6 174 0 137 13 65 0 226] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 13 69 0 213 13 69 1 117 1 205 1 122 1 209 1 133] 
#[0 13 73 0 137] 
#[0 6 178 0 3 0 131 0 137 1 134] 
#[1 5 114 0 3 5 114 0 17 5 114 0 21 5 114 0 22 5 114 0 23 5 114 0 24 5 114 0 25 5 114 0 26 5 114 0 27 5 114 0 28 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 38 5 114 0 40 5 114 0 42 5 114 0 44 5 114 0 45 5 114 0 47 5 114 0 51 5 114 0 52 5 114 0 62 5 114 0 65 5 114 0 67 5 114 0 70 5 114 0 73 5 114 0 82 5 114 0 83 5 114 0 86 5 114 0 87 5 114 0 88 5 114 0 89 5 114 0 91 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 100 5 114 0 101 5 114 0 104 5 114 0 105 5 114 0 110 5 114 0 111 5 114 0 113 5 114 0 115 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 124 5 114 0 130 5 114 0 139 13 77 1 25 5 114 1 134] 
#[1 5 114 0 3 5 114 0 17 5 114 0 21 5 114 0 22 5 114 0 23 5 114 0 24 5 114 0 25 5 114 0 26 5 114 0 27 5 114 0 28 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 38 5 114 0 40 5 114 0 42 5 114 0 44 5 114 0 45 5 114 0 47 5 114 0 51 5 114 0 52 5 114 0 62 5 114 0 65 5 114 0 67 5 114 0 70 5 114 0 73 5 114 0 82 5 114 0 83 5 114 0 86 5 114 0 87 5 114 0 88 5 114 0 89 5 114 0 91 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 100 5 114 0 101 5 114 0 104 5 114 0 105 5 114 0 110 5 114 0 111 5 114 0 113 5 114 0 115 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 124 5 114 0 130 5 114 0 139 13 81 1 25 5 114 1 134] 
#[0 13 85 0 137] 
#[1 6 182 0 3 10 101 0 17 6 182 0 21 10 101 0 22 6 182 0 23 6 182 0 24 10 101 0 25 6 182 0 26 6 182 0 27 6 182 0 28 10 5 0 31 6 182 0 32 10 9 0 33 10 101 0 38 6 182 0 40 10 101 0 42 6 182 0 44 10 101 0 45 10 101 0 47 6 182 0 51 6 182 0 52 10 101 0 62 6 182 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 6 182 0 88 6 182 0 89 6 182 0 91 6 182 0 92 6 182 0 93 6 182 0 94 10 101 0 100 10 101 0 101 6 182 0 104 10 101 0 105 10 101 0 110 10 101 0 111 6 182 0 113 6 182 0 115 6 182 0 118 10 101 0 120 6 182 0 123 10 101 0 124 6 182 0 130 6 182 0 139 13 89 1 27 10 101 1 29 6 182 1 134] 
#[1 6 186 0 3 10 101 0 17 6 186 0 21 10 101 0 22 6 186 0 23 6 186 0 24 10 101 0 25 6 186 0 26 6 186 0 27 6 186 0 28 10 5 0 31 6 186 0 32 10 9 0 33 10 101 0 38 6 186 0 40 10 101 0 42 6 186 0 44 10 101 0 45 10 101 0 47 6 186 0 51 6 186 0 52 10 101 0 62 6 186 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 6 186 0 88 6 186 0 89 6 186 0 91 6 186 0 92 6 186 0 93 6 186 0 94 10 101 0 100 10 101 0 101 6 186 0 104 10 101 0 105 10 101 0 110 10 101 0 111 6 186 0 113 6 186 0 115 6 186 0 118 10 101 0 120 6 186 0 123 10 101 0 124 6 186 0 130 6 186 0 139 13 89 1 27 10 101 1 29 6 186 1 134] 
#[0 6 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 5 114 0 3 5 114 0 17 5 114 0 21 5 114 0 22 5 114 0 23 5 114 0 24 5 114 0 25 5 114 0 26 5 114 0 27 5 114 0 28 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 38 5 114 0 40 5 114 0 42 5 114 0 44 5 114 0 45 5 114 0 47 5 114 0 48 5 114 0 51 5 114 0 52 5 114 0 56 5 114 0 61 5 114 0 62 5 114 0 65 5 114 0 67 5 114 0 70 5 114 0 73 5 114 0 82 5 114 0 83 5 114 0 86 5 114 0 87 5 114 0 88 5 114 0 89 5 114 0 91 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 100 5 114 0 101 5 114 0 104 5 114 0 105 5 114 0 110 5 114 0 111 5 114 0 113 5 114 0 115 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 124 5 114 0 130 5 114 0 139 13 93 1 25 5 114 1 134] 
#[0 6 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 6 198 0 3 10 101 0 17 6 198 0 21 10 101 0 22 6 198 0 23 6 198 0 24 10 101 0 25 6 198 0 26 6 198 0 27 6 198 0 28 10 5 0 31 6 198 0 32 10 9 0 33 10 101 0 38 6 198 0 40 10 101 0 42 6 198 0 44 10 101 0 45 10 101 0 47 6 198 0 48 6 198 0 51 6 198 0 52 6 198 0 56 6 198 0 61 10 101 0 62 6 198 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 6 198 0 88 6 198 0 89 6 198 0 91 6 198 0 92 6 198 0 93 6 198 0 94 10 101 0 100 10 101 0 101 6 198 0 104 10 101 0 105 10 101 0 110 10 101 0 111 6 198 0 113 6 198 0 115 6 198 0 118 10 101 0 120 6 198 0 123 10 101 0 124 6 198 0 130 6 198 0 139 13 89 1 27 10 101 1 29 6 198 1 134] 
#[0 6 202 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 97 0 30 13 101 0 33 13 105 0 57 13 109 0 59 13 113 0 74 13 117 0 96 13 121 0 97 13 125 0 112 13 129 0 127 13 133 0 128 13 137 0 137 13 141 1 15 13 145 1 16 13 149 1 17 13 153 1 18 13 157 1 19 13 161 1 20 13 165 1 22] 
#[0 6 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 13 169 0 137] 
#[0 13 173 0 137] 
#[0 13 177 0 137] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 13 181 0 137 4 185 1 127] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 13 185 0 137 4 185 1 127] 
#[0 6 210 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 13 189 0 139] 
#[0 6 214 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 40 0 14 0 48 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 13 193 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[0 6 218 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 222 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 226 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 230 0 40 0 48 0 61] 
#[0 6 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 238 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 109 0 44 5 113 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 117 1 28 13 197 1 66 3 29 1 67] 
#[0 6 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 109 0 44 5 113 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 121 1 28 13 201 1 66 3 29 1 67] 
#[0 6 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 13 205 1 66 3 29 1 67] 
#[0 7 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 13 209 1 66 3 29 1 67] 
#[0 7 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 109 0 44 5 113 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 133 1 28 13 213 1 66 3 29 1 67] 
#[0 7 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 7 38 0 40 6 29 0 137] 
#[0 7 42 1 134] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 13 217 0 31 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 6 174 0 137 13 217 0 226 4 185 1 127] 
#[1 4 177 0 2 4 185 0 4 7 46 0 5 4 181 0 6 4 185 0 8 7 46 0 9 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 7 50 0 40 6 29 0 137] 
#[0 7 54 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 7 58 0 39 0 40 0 137] 
#[0 7 62 0 39 0 40 0 137] 
#[1 7 66 0 5 7 70 0 9] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 13 221 0 36 4 21 0 58 4 21 0 64 4 21 0 71 4 21 0 80 4 21 0 108 4 21 0 109 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[0 7 74 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 7 78 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[0 7 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 7 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[0 13 225 0 36] 
#[1 7 90 0 40 7 90 0 49 6 29 0 137] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 4 21 0 35 7 94 0 39 7 94 0 40 7 94 0 41 7 94 0 48 7 94 0 49 4 21 0 58 7 94 0 61 4 21 0 64 4 21 0 71 7 94 0 78 4 21 0 80 4 21 0 108 4 21 0 109 7 94 0 121 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 7 94 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127 7 94 1 134] 
#[1 7 98 0 5 0 218 0 16 0 218 0 130 7 98 0 132] 
#[0 7 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 134] 
#[1 3 58 0 3 3 58 0 5 3 58 0 10 3 58 0 14 3 58 0 16 3 58 0 17 3 58 0 21 3 58 0 22 3 58 0 23 3 58 0 24 3 58 0 25 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 30 3 58 0 31 3 58 0 32 3 58 0 33 3 58 0 36 3 58 0 38 3 58 0 39 3 58 0 40 3 58 0 41 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 47 3 58 0 48 3 58 0 49 3 58 0 51 3 58 0 52 3 58 0 56 3 58 0 57 3 58 0 58 3 58 0 59 3 58 0 61 3 58 0 62 3 58 0 65 3 58 0 67 3 58 0 70 3 58 0 73 3 58 0 74 3 58 0 77 3 58 0 78 3 58 0 82 3 58 0 83 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 91 3 58 0 92 3 58 0 93 3 58 0 94 3 58 0 96 3 58 0 97 3 58 0 100 3 58 0 101 3 58 0 104 3 58 0 105 3 58 0 110 3 58 0 111 3 58 0 112 3 58 0 113 3 58 0 115 3 58 0 118 3 58 0 120 3 58 0 121 3 58 0 123 3 58 0 124 3 58 0 127 3 58 0 128 3 58 0 130 3 58 0 131 3 58 0 132 3 58 0 137 3 58 0 139 13 229 1 24 3 58 1 134] 
#[0 7 106 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 134] 
#[1 4 189 0 16 4 193 0 130 13 233 0 137] 
#[0 7 110 0 3 0 5] 
#[1 7 114 0 3 13 237 0 5] 
#[0 7 118 0 5 0 131] 
#[1 4 217 0 9 1 30 0 77 13 241 1 9] 
#[1 7 122 0 3 7 122 0 24 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 7 122 0 40 2 33 0 52 7 122 0 88 2 37 0 89 2 41 0 91 7 122 0 92 7 122 0 93 7 122 0 94 7 122 0 113 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 9 73 0 170 9 73 0 176 9 73 0 238 9 73 0 239 2 73 0 240 1 229 0 241 9 73 0 242 9 73 0 243 9 73 0 255 9 73 1 0 9 73 1 1 9 73 1 2 9 73 1 3 9 73 1 4 9 73 1 6 9 73 1 7 9 73 1 8 9 73 1 10 2 125 1 11 9 73 1 12 2 133 1 33 9 73 1 41 2 141 1 42 9 73 1 44 2 149 1 45 9 73 1 48 2 157 1 49 9 73 1 50 2 165 1 51 9 73 1 53 9 73 1 54 9 73 1 56 2 181 1 57 9 73 1 58 2 189 1 59 9 73 1 61 9 73 1 62 9 73 1 64 2 205 1 65 9 73 1 70 2 213 1 71] 
#[1 7 126 0 3 7 126 0 24 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 7 126 0 40 2 33 0 52 7 126 0 88 2 37 0 89 2 41 0 91 7 126 0 92 7 126 0 93 7 126 0 94 7 126 0 113 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 9 73 0 170 9 73 0 176 9 73 0 238 9 73 0 239 2 73 0 240 1 229 0 241 9 73 0 242 9 73 0 243 9 73 0 255 9 73 1 0 9 73 1 1 9 73 1 2 9 73 1 3 9 73 1 4 9 73 1 6 9 73 1 7 9 73 1 8 9 73 1 10 2 125 1 11 9 73 1 12 2 133 1 33 9 73 1 41 2 141 1 42 9 73 1 44 2 149 1 45 9 73 1 48 2 157 1 49 9 73 1 50 2 165 1 51 9 73 1 53 9 73 1 54 9 73 1 56 2 181 1 57 9 73 1 58 2 189 1 59 9 73 1 61 9 73 1 62 9 73 1 64 2 205 1 65 9 73 1 70 2 213 1 71] 
#[1 7 130 0 3 7 130 0 24 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 7 130 0 40 2 33 0 52 7 130 0 88 2 37 0 89 2 41 0 91 7 130 0 92 7 130 0 93 7 130 0 94 7 130 0 113 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 9 73 0 170 9 73 0 176 9 73 0 238 9 73 0 239 2 73 0 240 1 229 0 241 9 73 0 242 9 73 0 243 9 73 0 255 9 73 1 0 9 73 1 1 9 73 1 2 9 73 1 3 9 73 1 4 9 73 1 6 9 73 1 7 9 73 1 8 9 73 1 10 2 125 1 11 9 73 1 12 2 133 1 33 9 73 1 41 2 141 1 42 9 73 1 44 2 149 1 45 9 73 1 48 2 157 1 49 9 73 1 50 2 165 1 51 9 73 1 53 9 73 1 54 9 73 1 56 2 181 1 57 9 73 1 58 2 189 1 59 9 73 1 61 9 73 1 62 9 73 1 64 2 205 1 65 9 73 1 70 2 213 1 71] 
#[1 7 134 0 3 7 134 0 24 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 7 134 0 40 2 33 0 52 7 134 0 88 2 37 0 89 2 41 0 91 7 134 0 92 7 134 0 93 7 134 0 94 7 134 0 113 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 9 73 0 170 9 73 0 176 9 73 0 238 9 73 0 239 2 73 0 240 1 229 0 241 9 73 0 242 9 73 0 243 9 73 0 255 9 73 1 0 9 73 1 1 9 73 1 2 9 73 1 3 9 73 1 4 9 73 1 6 9 73 1 7 9 73 1 8 9 73 1 10 2 125 1 11 9 73 1 12 2 133 1 33 9 73 1 41 2 141 1 42 9 73 1 44 2 149 1 45 9 73 1 48 2 157 1 49 9 73 1 50 2 165 1 51 9 73 1 53 9 73 1 54 9 73 1 56 2 181 1 57 9 73 1 58 2 189 1 59 9 73 1 61 9 73 1 62 9 73 1 64 2 205 1 65 9 73 1 70 2 213 1 71] 
#[1 2 214 0 3 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 13 245 0 237] 
#[1 2 214 0 3 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 40 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 13 249 0 237] 
#[0 7 138 0 31 0 87 0 137] 
#[0 7 142 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 13 253 0 50] 
#[0 7 146 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 150 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 214 0 26 2 214 0 27 2 214 0 28 7 154 0 31 2 214 0 32 2 214 0 40 2 214 0 52 7 154 0 87 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 7 154 0 137 2 214 0 139 14 1 0 227 7 41 0 237] 
#[0 0 206 0 3 0 5 0 6 0 11] 
#[1 7 158 0 3 7 158 0 5 4 157 0 6 0 150 0 11 4 161 0 188 4 33 0 189] 
#[1 14 5 0 3 14 9 0 5] 
#[1 3 246 0 40 3 246 0 88 3 246 0 92 3 246 0 93 3 246 0 94 3 246 0 113 14 13 0 228] 
#[0 7 162 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 7 166 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 14 17 0 213 14 17 1 117 1 205 1 122 1 209 1 133] 
#[1 7 170 0 26 7 170 0 40 7 170 0 52 7 170 0 89 7 170 0 91 14 21 0 253] 
#[0 7 174 0 137] 
#[0 14 25 0 137] 
#[1 4 177 0 2 7 178 0 3 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 7 178 0 131 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 7 178 0 137 4 185 1 127 7 178 1 134] 
#[0 7 182 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 7 186 0 3 10 101 0 17 7 186 0 21 10 101 0 22 7 186 0 23 7 186 0 24 10 101 0 25 7 186 0 26 7 186 0 27 7 186 0 28 10 5 0 31 7 186 0 32 10 9 0 33 10 101 0 38 7 186 0 40 10 101 0 42 7 186 0 44 10 101 0 45 10 101 0 47 7 186 0 51 7 186 0 52 10 101 0 62 7 186 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 7 186 0 88 7 186 0 89 7 186 0 91 7 186 0 92 7 186 0 93 7 186 0 94 10 101 0 100 10 101 0 101 7 186 0 104 10 101 0 105 10 101 0 110 10 101 0 111 7 186 0 113 7 186 0 115 7 186 0 118 10 101 0 120 7 186 0 123 10 101 0 124 7 186 0 130 7 186 0 139 13 89 1 27 10 101 1 29 7 186 1 134] 
#[1 7 190 0 3 10 101 0 17 7 190 0 21 10 101 0 22 7 190 0 23 7 190 0 24 10 101 0 25 7 190 0 26 7 190 0 27 7 190 0 28 10 5 0 31 7 190 0 32 10 9 0 33 10 101 0 38 7 190 0 40 10 101 0 42 7 190 0 44 10 101 0 45 10 101 0 47 7 190 0 51 7 190 0 52 10 101 0 62 7 190 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 7 190 0 88 7 190 0 89 7 190 0 91 7 190 0 92 7 190 0 93 7 190 0 94 10 101 0 100 10 101 0 101 7 190 0 104 10 101 0 105 10 101 0 110 10 101 0 111 7 190 0 113 7 190 0 115 7 190 0 118 10 101 0 120 7 190 0 123 10 101 0 124 7 190 0 130 7 190 0 139 13 89 1 27 10 101 1 29 7 190 1 134] 
#[1 5 114 0 3 5 114 0 17 5 114 0 21 5 114 0 22 5 114 0 23 5 114 0 24 5 114 0 25 5 114 0 26 5 114 0 27 5 114 0 28 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 38 5 114 0 40 5 114 0 42 5 114 0 44 5 114 0 45 5 114 0 47 5 114 0 51 5 114 0 52 5 114 0 62 5 114 0 65 5 114 0 67 5 114 0 70 5 114 0 73 5 114 0 82 5 114 0 83 5 114 0 86 5 114 0 87 5 114 0 88 5 114 0 89 5 114 0 91 5 114 0 92 5 114 0 93 5 114 0 94 5 114 0 100 5 114 0 101 5 114 0 104 5 114 0 105 5 114 0 110 5 114 0 111 5 114 0 113 5 114 0 115 5 114 0 118 5 114 0 120 5 114 0 123 5 114 0 124 5 114 0 130 5 114 0 139 14 29 1 25 5 114 1 134] 
#[0 7 194 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139 1 134] 
#[1 7 198 0 3 10 101 0 17 7 198 0 21 10 101 0 22 7 198 0 23 7 198 0 24 10 101 0 25 7 198 0 26 7 198 0 27 7 198 0 28 10 5 0 31 7 198 0 32 10 9 0 33 10 101 0 38 7 198 0 40 10 101 0 42 7 198 0 44 10 101 0 45 10 101 0 47 7 198 0 48 7 198 0 51 7 198 0 52 7 198 0 56 7 198 0 61 10 101 0 62 7 198 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 7 198 0 88 7 198 0 89 7 198 0 91 7 198 0 92 7 198 0 93 7 198 0 94 10 101 0 100 10 101 0 101 7 198 0 104 10 101 0 105 10 101 0 110 10 101 0 111 7 198 0 113 7 198 0 115 7 198 0 118 10 101 0 120 7 198 0 123 10 101 0 124 7 198 0 130 7 198 0 139 13 89 1 27 10 101 1 29 7 198 1 134] 
#[1 4 49 0 2 1 73 0 15 7 202 0 30 7 202 0 33 7 202 0 57 7 202 0 59 7 202 0 74 1 85 0 75 7 202 0 96 7 202 0 97 7 202 0 112 7 202 0 127 7 202 0 128 0 177 0 130 1 113 0 135 1 117 0 136 7 202 0 137 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 14 33 0 213 14 33 1 117 1 205 1 122 1 209 1 133] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 14 37 0 213 14 37 1 117 1 205 1 122 1 209 1 133] 
#[1 14 41 0 139 14 45 1 21] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 14 49 0 213 14 49 1 117 1 205 1 122 1 209 1 133] 
#[0 7 206 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 14 53 1 108 1 21 1 109 14 53 1 110 14 53 1 111 1 33 1 112 14 53 1 113 1 41 1 114 14 53 1 115 1 49 1 116 14 53 1 117 1 57 1 122 14 53 1 123 1 65 1 133] 
#[0 14 57 0 33] 
#[0 14 61 0 139] 
#[1 0 101 0 2 0 105 0 15 0 121 0 52 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 149 0 89 0 177 0 130 0 181 0 135 0 185 0 136 3 33 0 139 0 205 0 141 1 57 0 143 0 201 0 147 0 205 0 212 14 65 1 108 1 21 1 109 14 65 1 110 14 65 1 111 1 33 1 112 14 65 1 113 1 41 1 114 14 65 1 115 1 49 1 116 14 65 1 117 1 57 1 122 14 65 1 123 1 65 1 133] 
#[0 14 69 0 33] 
#[1 7 210 0 3 7 210 0 24 7 210 0 26 7 210 0 27 7 210 0 28 14 73 0 30 7 210 0 32 7 210 0 40 7 210 0 52 7 210 0 88 7 210 0 89 7 210 0 91 7 210 0 92 7 210 0 93 7 210 0 94 7 210 0 113 7 210 0 115 7 210 0 118 7 210 0 123 7 210 0 130 7 210 0 139 14 77 1 23 7 210 1 134] 
#[0 7 214 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 218 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 222 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 226 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 230 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 234 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 238 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 242 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 7 246 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 7 250 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 7 254 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 8 2 0 3 0 5 0 10 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 51 0 52 0 56 0 57 0 58 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 78 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 121 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 8 6 0 5 0 137] 
#[1 8 10 0 40 8 10 0 48 8 10 0 61 6 29 0 137] 
#[0 8 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 8 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 14 81 0 137] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 14 0 61 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 14 0 121 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 14 85 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 14 85 1 105 14 85 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133 0 14 1 134] 
#[1 0 101 0 2 0 105 0 15 0 10 0 21 0 109 0 23 0 113 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 117 0 50 0 121 0 52 0 125 0 53 0 129 0 55 0 133 0 60 0 137 0 68 0 141 0 69 0 145 0 75 0 14 0 78 0 149 0 89 0 153 0 95 0 157 0 102 0 161 0 117 0 165 0 123 0 169 0 125 0 173 0 126 0 177 0 130 0 181 0 135 0 185 0 136 0 14 0 137 0 189 0 139 0 193 0 141 1 57 0 143 0 201 0 147 0 205 0 212 14 89 1 74 3 49 1 75 0 213 1 76 0 217 1 77 0 221 1 78 0 225 1 79 0 229 1 80 0 233 1 81 0 237 1 83 0 241 1 89 0 245 1 98 0 249 1 100 0 253 1 101 1 1 1 104 3 49 1 105 3 49 1 106 1 13 1 107 1 17 1 108 1 21 1 109 1 17 1 110 1 17 1 111 1 33 1 112 1 17 1 113 1 41 1 114 1 17 1 115 1 49 1 116 1 17 1 117 1 57 1 122 1 17 1 123 1 65 1 133] 
#[1 8 34 0 3 8 34 0 5 8 34 0 10 8 34 0 14 8 34 0 16 10 101 0 17 8 34 0 21 10 101 0 22 8 34 0 23 8 34 0 24 10 101 0 25 8 34 0 26 8 34 0 27 8 34 0 28 8 34 0 30 1 103 0 31 8 34 0 32 1 107 0 33 8 34 0 36 10 101 0 38 8 34 0 39 8 34 0 40 8 34 0 41 10 101 0 42 8 34 0 43 5 109 0 44 10 101 0 45 10 101 0 47 8 34 0 48 8 34 0 49 5 113 0 51 8 34 0 52 8 34 0 56 8 34 0 57 8 34 0 58 8 34 0 59 8 34 0 61 10 101 0 62 8 34 0 65 10 101 0 67 10 37 0 70 10 101 0 73 8 34 0 74 8 34 0 77 8 34 0 78 10 101 0 82 10 101 0 83 10 101 0 86 1 111 0 87 8 34 0 88 8 34 0 89 8 34 0 91 8 34 0 92 8 34 0 93 8 34 0 94 8 34 0 96 8 34 0 97 10 101 0 100 10 101 0 101 8 34 0 104 10 101 0 105 10 101 0 110 10 101 0 111 8 34 0 112 8 34 0 113 8 34 0 115 8 34 0 118 10 101 0 120 8 34 0 121 8 34 0 123 10 101 0 124 8 34 0 127 8 34 0 128 8 34 0 130 8 34 0 131 8 34 0 132 8 34 0 137 8 34 0 139 10 89 1 26 10 89 1 27 10 89 1 28 10 101 1 29 8 34 1 134] 
#[0 8 38 0 3 0 5 0 10 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 56 0 57 0 58 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 134] 
#[0 14 93 0 140] 
#[0 14 97 0 77] 
#[1 8 42 0 3 8 42 0 24 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 8 42 0 40 2 33 0 52 8 42 0 88 2 37 0 89 2 41 0 91 8 42 0 92 8 42 0 93 8 42 0 94 8 42 0 113 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 9 73 0 170 9 73 0 176 9 73 0 238 9 73 0 239 2 73 0 240 1 229 0 241 9 73 0 242 9 73 0 243 9 73 0 255 9 73 1 0 9 73 1 1 9 73 1 2 9 73 1 3 9 73 1 4 9 73 1 6 9 73 1 7 9 73 1 8 9 73 1 10 2 125 1 11 9 73 1 12 2 133 1 33 9 73 1 41 2 141 1 42 9 73 1 44 2 149 1 45 9 73 1 48 2 157 1 49 9 73 1 50 2 165 1 51 9 73 1 53 9 73 1 54 9 73 1 56 2 181 1 57 9 73 1 58 2 189 1 59 9 73 1 61 9 73 1 62 9 73 1 64 2 205 1 65 9 73 1 70 2 213 1 71] 
#[1 8 46 0 3 8 46 0 24 2 17 0 26 2 21 0 27 2 25 0 28 2 29 0 32 8 46 0 40 2 33 0 52 8 46 0 88 2 37 0 89 2 41 0 91 8 46 0 92 8 46 0 93 8 46 0 94 8 46 0 113 2 45 0 115 2 49 0 118 2 53 0 123 1 213 0 130 1 241 0 139 9 73 0 170 9 73 0 176 9 73 0 238 9 73 0 239 2 73 0 240 1 229 0 241 9 73 0 242 9 73 0 243 9 73 0 255 9 73 1 0 9 73 1 1 9 73 1 2 9 73 1 3 9 73 1 4 9 73 1 6 9 73 1 7 9 73 1 8 9 73 1 10 2 125 1 11 9 73 1 12 2 133 1 33 9 73 1 41 2 141 1 42 9 73 1 44 2 149 1 45 9 73 1 48 2 157 1 49 9 73 1 50 2 165 1 51 9 73 1 53 9 73 1 54 9 73 1 56 2 181 1 57 9 73 1 58 2 189 1 59 9 73 1 61 9 73 1 62 9 73 1 64 2 205 1 65 9 73 1 70 2 213 1 71] 
#[1 4 133 0 139 14 101 0 236] 
#[1 3 246 0 40 3 246 0 88 3 246 0 92 3 246 0 93 3 246 0 94 3 246 0 113 14 105 0 228] 
#[0 8 50 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 13 29 0 140 14 109 0 192] 
#[1 14 113 0 40 11 101 0 88 11 105 0 92 11 109 0 93 11 113 0 94 11 117 0 113 11 125 0 229 11 125 0 230 11 125 0 231 11 125 0 232 11 125 0 233] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 14 117 0 131 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 14 121 0 26 14 125 0 40 4 245 0 52 4 253 0 89 2 41 0 91 14 129 0 254 14 129 0 255 14 129 1 0 14 129 1 3 14 129 1 4 14 129 1 6 14 129 1 7 14 129 1 8 14 129 1 10 2 125 1 11 14 129 1 12 14 129 1 48 2 157 1 49 14 129 1 50 2 165 1 51 14 129 1 53 14 129 1 54 14 129 1 56 2 181 1 57 14 129 1 58 2 189 1 59 14 129 1 61 14 129 1 62 14 129 1 64 2 205 1 65] 
#[0 8 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 8 58 0 3 10 101 0 17 8 58 0 21 10 101 0 22 8 58 0 23 8 58 0 24 10 101 0 25 8 58 0 26 8 58 0 27 8 58 0 28 10 5 0 31 8 58 0 32 10 9 0 33 10 101 0 38 8 58 0 40 10 101 0 42 8 58 0 44 10 101 0 45 10 101 0 47 8 58 0 51 8 58 0 52 10 101 0 62 8 58 0 65 10 101 0 67 10 37 0 70 10 101 0 73 10 101 0 82 10 101 0 83 10 101 0 86 10 101 0 87 8 58 0 88 8 58 0 89 8 58 0 91 8 58 0 92 8 58 0 93 8 58 0 94 10 101 0 100 10 101 0 101 8 58 0 104 10 101 0 105 10 101 0 110 10 101 0 111 8 58 0 113 8 58 0 115 8 58 0 118 10 101 0 120 8 58 0 123 10 101 0 124 8 58 0 130 8 58 0 139 13 89 1 27 10 101 1 29 8 58 1 134] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 8 62 0 30 8 62 0 33 4 185 0 35 8 62 0 57 4 185 0 58 8 62 0 59 4 185 0 64 4 185 0 71 8 62 0 74 4 185 0 80 8 62 0 96 8 62 0 97 4 185 0 108 4 185 0 109 8 62 0 112 8 62 0 127 8 62 0 128 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 8 62 0 137 4 185 1 127] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 8 66 0 30 8 66 0 33 4 185 0 35 8 66 0 57 4 185 0 58 8 66 0 59 4 185 0 64 4 185 0 71 8 66 0 74 4 185 0 80 8 66 0 96 8 66 0 97 4 185 0 108 4 185 0 109 8 66 0 112 8 66 0 127 8 66 0 128 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 8 66 0 137 4 185 1 127] 
#[0 8 70 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 141 0 5 8 74 0 30 8 74 0 33 8 74 0 57 8 74 0 59 8 74 0 74 8 74 0 96 8 74 0 97 8 74 0 112 8 74 0 127 8 74 0 128 8 74 0 137] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 8 78 0 30 8 78 0 33 4 185 0 35 8 78 0 57 4 185 0 58 8 78 0 59 4 185 0 64 4 185 0 71 8 78 0 74 4 185 0 80 8 78 0 96 8 78 0 97 4 185 0 108 4 185 0 109 8 78 0 112 8 78 0 127 8 78 0 128 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 8 78 0 137 4 185 1 127] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 8 82 0 30 8 82 0 33 4 21 0 35 8 82 0 57 4 21 0 58 8 82 0 59 4 21 0 64 4 21 0 71 8 82 0 74 4 21 0 80 8 82 0 96 8 82 0 97 4 21 0 108 4 21 0 109 8 82 0 112 8 82 0 127 8 82 0 128 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 8 82 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 14 145 0 213 14 145 1 117 1 205 1 122 1 209 1 133] 
#[0 8 86 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 3 173 0 2 4 21 0 4 3 181 0 6 4 21 0 8 3 189 0 10 4 21 0 11 4 21 0 12 4 21 0 13 4 21 0 14 4 21 0 18 4 21 0 20 8 90 0 30 8 90 0 33 4 21 0 35 8 90 0 57 4 21 0 58 8 90 0 59 4 21 0 64 4 21 0 71 8 90 0 74 4 21 0 80 8 90 0 96 8 90 0 97 4 21 0 108 4 21 0 109 8 90 0 112 8 90 0 127 8 90 0 128 4 21 0 129 3 249 0 130 4 21 0 132 4 21 0 133 4 21 0 135 4 21 0 136 8 90 0 137 4 13 0 138 4 17 1 120 4 21 1 126 4 21 1 127] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 1 181 0 212 14 149 0 213 14 149 1 117 1 205 1 122 1 209 1 133] 
#[0 14 153 0 137] 
#[0 8 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[0 8 98 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 8 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 134] 
#[1 8 106 0 39 8 106 0 40 8 106 0 49 8 106 0 78 6 29 0 137] 
#[0 8 110 0 3 0 5] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 14 157 0 206 14 161 0 207 14 165 0 208 14 169 0 209 1 181 0 212 14 173 0 213 14 173 1 117 1 205 1 122 1 209 1 133] 
#[1 11 165 0 2 7 17 0 6 5 70 0 26 5 70 0 27 5 70 0 28 5 70 0 31 5 70 0 32 5 70 0 40 5 70 0 52 5 70 0 87 5 70 0 88 5 70 0 89 5 70 0 91 5 70 0 92 5 70 0 93 5 70 0 94 5 70 0 113 5 70 0 115 5 70 0 118 5 70 0 123 5 70 0 130 5 70 0 137 5 70 0 139 14 177 0 234] 
#[1 14 181 0 40 11 101 0 88 11 105 0 92 11 109 0 93 11 113 0 94 11 117 0 113 11 125 0 229 11 125 0 230 11 125 0 231 11 125 0 232 11 125 0 233] 
#[1 8 114 0 3 8 114 0 5 4 157 0 6 0 150 0 11 4 161 0 188 4 33 0 189] 
#[0 8 118 0 31 0 87 0 137] 
#[0 8 122 0 26 0 40 0 52 0 89 0 91] 
#[1 4 245 0 52 4 249 0 79 4 253 0 89 2 41 0 91 5 1 1 11 5 5 1 49 5 9 1 51 5 13 1 57 5 17 1 59] 
#[0 8 126 0 31 0 87 0 137] 
#[0 8 130 0 26 0 40 0 52 0 89 0 91] 
#[0 8 134 0 26 0 40 0 52 0 89 0 91] 
#[0 8 138 0 26 0 40 0 52 0 89 0 91] 
#[0 14 185 0 139] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 8 142 0 30 8 142 0 33 4 185 0 35 8 142 0 57 4 185 0 58 8 142 0 59 4 185 0 64 4 185 0 71 8 142 0 74 4 185 0 80 8 142 0 96 8 142 0 97 4 185 0 108 4 185 0 109 8 142 0 112 8 142 0 127 8 142 0 128 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 8 142 0 137 4 185 1 127] 
#[1 4 177 0 2 4 185 0 4 4 181 0 6 4 185 0 8 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 8 146 0 30 8 146 0 33 4 185 0 35 8 146 0 57 4 185 0 58 8 146 0 59 4 185 0 64 4 185 0 71 8 146 0 74 4 185 0 80 8 146 0 96 8 146 0 97 4 185 0 108 4 185 0 109 8 146 0 112 8 146 0 127 8 146 0 128 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 8 146 0 137 4 185 1 127] 
#[0 8 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 134] 
#[1 2 166 0 3 2 166 0 40 14 189 0 137 14 193 1 90] 
#[0 8 154 0 3 0 40 0 137] 
#[1 14 197 0 5 14 201 0 9] 
#[0 8 158 0 5 0 9] 
#[1 4 177 0 2 4 185 0 4 8 162 0 5 4 181 0 6 4 185 0 8 8 162 0 9 4 185 0 11 4 185 0 12 4 185 0 13 4 185 0 18 4 185 0 20 4 185 0 35 4 185 0 58 4 185 0 64 4 185 0 71 4 185 0 80 4 185 0 108 4 185 0 109 4 185 0 129 4 185 0 132 4 185 0 133 4 185 0 135 4 185 0 136 4 185 1 127] 
#[1 2 214 0 26 2 214 0 27 2 214 0 28 8 166 0 31 2 214 0 32 2 214 0 40 2 214 0 52 8 166 0 87 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 8 166 0 137 2 214 0 139 14 205 0 227 7 41 0 237] 
#[0 8 170 0 31 0 87 0 137] 
#[0 8 174 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 4 49 0 2 3 222 0 3 1 73 0 15 3 222 0 40 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 14 209 0 207 14 165 0 208 14 169 0 209 1 181 0 212 14 173 0 213 14 173 1 117 1 205 1 122 1 209 1 133] 
#[0 8 178 0 3 0 40] 
#[1 4 49 0 2 1 73 0 15 1 85 0 75 0 177 0 130 1 113 0 135 1 117 0 136 4 97 0 140 1 181 0 141 1 205 0 143 1 133 0 147 14 213 0 209 1 181 0 212 14 173 0 213 14 173 1 117 1 205 1 122 1 209 1 133] 
#[0 14 217 0 2] 
#[1 3 246 0 40 3 246 0 88 3 246 0 92 3 246 0 93 3 246 0 94 3 246 0 113 14 221 0 228] 
#[0 8 182 0 3 0 40 0 137] 
#[0 8 186 0 5 0 9] 
#[1 2 214 0 3 2 214 0 24 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 32 2 214 0 52 2 214 0 88 2 214 0 89 2 214 0 91 2 214 0 92 2 214 0 93 2 214 0 94 2 214 0 113 2 214 0 115 2 214 0 118 2 214 0 123 2 214 0 130 2 214 0 139 14 225 0 203 7 37 0 227 7 41 0 237] 
#[1 14 229 0 40 11 101 0 88 11 105 0 92 11 109 0 93 11 113 0 94 11 117 0 113 11 125 0 229 11 125 0 230 11 125 0 231 11 125 0 232 11 125 0 233] 
#[0 14 233 0 3] 
#[0 8 190 0 31 0 87 0 137] 
#[0 8 194 0 3 0 40 0 137]
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
