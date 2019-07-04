Class {
	#name : #DelphiParser,
	#superclass : #SmaCCGLRParser,
	#instVars : [
		'lastInsertPosition',
		'genericCount'
	],
	#category : #'SmaCC_Delphi'
}

{ #category : #generated }
DelphiParser class >> ambiguousTransitions [
^#(
#[ 0 18 1 73] 
#[ 0 62 0 66] 
#[ 0 66 0 142] 
#[ 0 198 0 202] 
#[ 0 250 2 237] 
#[ 1 50 2 177] 
#[ 1 50 2 181] 
#[ 1 50 2 185] 
#[ 1 50 2 189] 
#[ 1 50 2 205] 
#[ 1 50 2 237] 
#[ 1 50 2 241] 
#[ 1 82 2 177] 
#[ 1 82 2 181] 
#[ 1 82 2 185] 
#[ 1 82 2 189] 
#[ 1 82 2 205] 
#[ 1 82 2 237] 
#[ 1 82 2 241] 
#[ 1 114 2 177] 
#[ 1 114 2 181] 
#[ 1 114 2 185] 
#[ 1 114 2 189] 
#[ 1 114 2 205] 
#[ 1 114 2 237] 
#[ 1 114 2 241] 
#[ 1 118 2 177] 
#[ 1 118 2 181] 
#[ 1 118 2 185] 
#[ 1 118 2 189] 
#[ 1 118 2 205] 
#[ 1 118 2 237] 
#[ 1 118 2 241] 
#[ 1 254 5 73] 
#[ 2 6 2 177] 
#[ 2 6 2 181] 
#[ 2 6 2 185] 
#[ 2 6 2 205] 
#[ 2 6 2 237] 
#[ 2 6 2 241] 
#[ 2 10 2 177] 
#[ 2 10 2 181] 
#[ 2 10 2 185] 
#[ 2 10 2 205] 
#[ 2 10 2 237] 
#[ 2 10 2 241] 
#[ 2 22 2 177] 
#[ 2 22 2 181] 
#[ 2 22 2 185] 
#[ 2 22 2 205] 
#[ 2 22 2 237] 
#[ 2 22 2 241] 
#[ 2 26 2 177] 
#[ 2 26 2 181] 
#[ 2 26 2 185] 
#[ 2 26 2 205] 
#[ 2 26 2 237] 
#[ 2 26 2 241] 
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
#[ 0 198 9 125] 
#[ 0 222 4 206] 
#[ 0 226 4 210] 
#[ 5 126 11 9] 
#[ 5 126 11 13] 
#[ 5 126 11 61] 
#[ 1 26 3 193] 
#[ 7 142 11 9] 
#[ 7 142 11 13] 
#[ 7 142 11 61]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-04T13:28:01.876858-05:00'
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
	: [genericCount := genericCount + 1]
	;
OutsideGeneric
	: [genericCount := genericCount - 1]
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
	#(164 0 #reduceActionForUsesList1: 5790721 false ) 
	#(360 0 #reduceActionForBeforeAsm1: 32509953 false ) 
	#(330 0 #reduceActionForStatement14: 29029390 false ) 
	#(204 0 #nil 11495425 false ) 
	#(149 1 #reduceActionForFile2: 4246530 false ) 
	#(149 1 #reduceActionForFile3: 4246531 false ) 
	#(149 1 #reduceActionForFile4: 4246532 false ) 
	#(149 1 #reduceActionForFile1: 4246529 false ) 
	#(163 0 #nil 5676033 false ) 
	#(161 1 #reduceActionForUnitFile2: 5349378 false ) 
	#(322 0 #reduceActionForMethodVariables2: 28274690 false ) 
	#(196 0 #reduceActionForOptionalArguments1: 10387457 false ) 
	#(377 1 #reduceActionForInheritedFunctionCall4: 35616772 false ) 
	#(352 1 #reduceActionForRaiseStatement2: 31676418 false ) 
	#(369 1 #reduceActionForVariableExpression1: 34914305 false ) 
	#(189 0 #reduceActionForInsideGeneric1: 9024513 true ) 
	#(212 1 #liftFirstValue: 12187649 false ) 
	#(376 1 #liftFirstValue: 35594241 false ) 
	#(361 1 #reduceActionForExpression10: 32627722 false ) 
	#(361 1 #reduceActionForExpression10: 32627720 false ) 
	#(330 1 #reduceActionForStatement13: 29029389 false ) 
	#(330 1 #reduceActionForStatement11: 29029387 false ) 
	#(330 1 #reduceActionForStatement2: 29029378 false ) 
	#(330 1 #reduceActionForStatement3: 29029379 false ) 
	#(330 1 #reduceActionForStatement4: 29029380 false ) 
	#(330 1 #reduceActionForStatement5: 29029381 false ) 
	#(330 1 #reduceActionForStatement6: 29029382 false ) 
	#(330 1 #reduceActionForStatement7: 29029383 false ) 
	#(330 1 #reduceActionForStatement8: 29029384 false ) 
	#(330 1 #reduceActionForStatement9: 29029385 false ) 
	#(330 1 #reduceActionForStatement10: 29029386 false ) 
	#(330 1 #liftFirstValue: 29029388 false ) 
	#(358 1 #liftFirstValue: 32330754 false ) 
	#(330 1 #liftFirstValue: 29029377 false ) 
	#(361 1 #reduceActionForExpression3: 32627715 false ) 
	#(361 1 #liftFirstValue: 32627716 false ) 
	#(361 1 #liftFirstValue: 32627736 false ) 
	#(361 1 #liftFirstValue: 32627735 false ) 
	#(361 1 #liftFirstValue: 32627734 false ) 
	#(361 1 #liftFirstValue: 32627713 false ) 
	#(361 1 #liftFirstValue: 32627714 false ) 
	#(361 1 #liftFirstValue: 32627731 false ) 
	#(361 1 #reduceActionForExpression10: 32627721 false ) 
	#(361 1 #liftFirstValue: 32627719 false ) 
	#(361 1 #reduceActionForExpression10: 32627733 false ) 
	#(214 0 #reduceActionForConstantArray2: 13270018 false ) 
	#(244 1 #reduceActionForFileType2: 17790978 false ) 
	#(204 1 #liftFirstValue: 11495426 false ) 
	#(213 1 #reduceActionForVariableExpression1: 12210179 false ) 
	#(192 1 #reduceActionForVariableExpression1: 9300993 false ) 
	#(213 1 #reduceActionForExpression10: 12210183 false ) 
	#(243 1 #liftFirstValue: 17696772 false ) 
	#(243 1 #liftFirstValue: 17696769 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8457217 false ) 
	#(243 1 #liftFirstValue: 17696770 false ) 
	#(243 1 #liftFirstValue: 17696771 false ) 
	#(187 1 #liftFirstValue: 8457225 false ) 
	#(187 1 #liftFirstValue: 8457220 false ) 
	#(187 1 #liftFirstValue: 8457221 false ) 
	#(187 1 #liftFirstValue: 8457226 false ) 
	#(213 1 #reduceActionForExpression10: 12210177 false ) 
	#(211 1 #liftFirstValue: 12124161 false ) 
	#(187 1 #liftFirstValue: 8457223 false ) 
	#(187 1 #liftFirstValue: 8457219 false ) 
	#(213 1 #liftFirstValue: 12210185 false ) 
	#(213 1 #reduceActionForExpression10: 12210182 false ) 
	#(213 1 #reduceActionForExpression10: 12210178 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7444481 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6057985 false ) 
	#(193 0 #nil 9643009 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5869569 false ) 
	#(166 1 #reduceActionForUsesModule1: 5944321 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4805633 false ) 
	#(291 0 #nil 23889921 false ) 
	#(155 1 #reduceActionForMainMethod1: 4859905 false ) 
	#(361 2 #reduceActionForExpression15: 32627727 false ) 
	#(329 1 #reduceActionForStatements1: 28925953 false ) 
	#(285 0 #reduceActionForArgumentList1: 23378945 false ) 
	#(290 0 #nil 23802881 false ) 
	#(264 0 #reduceActionForOptionalType1: 19743745 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29640705 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29640706 false ) 
	#(377 2 #reduceActionForInheritedFunctionCall3: 35616771 false ) 
	#(361 2 #reduceActionForExpression16: 32627728 false ) 
	#(365 2 #reduceActionForAnonymousProcedureHeader1: 34323457 false ) 
	#(353 0 #reduceActionForOptionalType1: 31784961 false ) 
	#(338 0 #nil 30385153 false ) 
	#(336 1 #reduceActionForStatements1: 30179329 false ) 
	#(371 2 #reduceActionForSetConstructor2: 35088386 false ) 
	#(373 1 #reduceActionForSetValue1: 35318785 false ) 
	#(372 1 #reduceActionForStatements1: 35218433 false ) 
	#(361 2 #reduceActionForExpression17: 32627729 false ) 
	#(361 2 #reduceActionForExpression18: 32627730 false ) 
	#(370 2 #reduceActionForInstantiatedGenericVariableExpression1: 34983937 false ) 
	#(381 1 #liftFirstValue: 36315143 false ) 
	#(381 1 #liftFirstValue: 36315144 false ) 
	#(381 1 #liftFirstValue: 36315151 false ) 
	#(381 1 #liftFirstValue: 36315152 false ) 
	#(381 1 #liftFirstValue: 36315140 false ) 
	#(380 1 #liftFirstValue: 36250625 false ) 
	#(381 1 #liftFirstValue: 36315137 false ) 
	#(381 1 #liftFirstValue: 36315149 false ) 
	#(381 1 #liftFirstValue: 36315141 false ) 
	#(381 1 #liftFirstValue: 36315154 false ) 
	#(381 1 #liftFirstValue: 36315155 false ) 
	#(381 1 #liftFirstValue: 36315142 false ) 
	#(381 1 #liftFirstValue: 36315138 false ) 
	#(381 1 #liftFirstValue: 36315147 false ) 
	#(381 1 #liftFirstValue: 36315148 false ) 
	#(381 1 #liftFirstValue: 36315139 false ) 
	#(381 1 #liftFirstValue: 36315150 false ) 
	#(381 1 #liftFirstValue: 36315153 false ) 
	#(381 1 #liftFirstValue: 36315146 false ) 
	#(381 1 #liftFirstValue: 36315145 false ) 
	#(361 2 #reduceActionForExpression20: 32627732 false ) 
	#(361 2 #reduceActionForExpression14: 32627726 false ) 
	#(380 1 #liftFirstValue: 36250626 false ) 
	#(363 2 #reduceActionForInstantiatedGenericPropertyExpression1: 34108417 false ) 
	#(364 2 #reduceActionForAnonymousProcedure1: 34211841 false ) 
	#(366 2 #reduceActionForAnonymousFunction1: 34423809 false ) 
	#(185 1 #reduceActionForEnumName1: 8236033 false ) 
	#(184 1 #reduceActionForStatements1: 8163329 false ) 
	#(216 1 #reduceActionForUsesModule1: 13497345 false ) 
	#(214 1 #reduceActionForConstantArray1: 13270017 false ) 
	#(215 1 #reduceActionForUsesModuleList1: 13317121 false ) 
	#(344 0 #nil 30977025 false ) 
	#(217 1 #reduceActionForConstantArray1: 13632513 false ) 
	#(218 1 #reduceActionForStatements1: 13675521 false ) 
	#(213 2 #reduceActionForExpression15: 12210191 false ) 
	#(213 2 #reduceActionForExpression16: 12210188 false ) 
	#(260 0 #reduceActionForOptionalType1: 19396609 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8457227 false ) 
	#(213 2 #reduceActionForExpression17: 12210189 false ) 
	#(213 2 #reduceActionForExpression18: 12210190 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8457218 false ) 
	#(192 2 #reduceActionForNamedType3: 9300995 false ) 
	#(246 0 #reduceActionForOptionalArguments1: 18113538 false ) 
	#(237 0 #reduceActionForMethodVariables2: 16238593 false ) 
	#(193 1 #liftFirstValue: 9643011 false ) 
	#(193 1 #liftFirstValue: 9643010 false ) 
	#(157 3 #reduceActionForPackageLine1: 4977665 false ) 
	#(164 3 #reduceActionForUsesList2: 5790722 false ) 
	#(159 1 #reduceActionForStatements1: 5156865 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6182913 false ) 
	#(382 0 #nil 36501505 false ) 
	#(150 3 #reduceActionForProgramFile2: 4376578 false ) 
	#(323 1 #liftFirstValue: 28346371 false ) 
	#(323 1 #liftFirstValue: 28346375 false ) 
	#(323 1 #liftFirstValue: 28346370 false ) 
	#(323 1 #liftFirstValue: 28346372 false ) 
	#(302 1 #reduceActionForProcedureDefinition2: 25561090 false ) 
	#(303 1 #reduceActionForExternalProcedureHeader1: 25728001 false ) 
	#(305 1 #reduceActionForExternalProcedureHeader1: 25925633 false ) 
	#(323 1 #liftFirstValue: 28346373 false ) 
	#(310 1 #reduceActionForFunctionDefinition2: 26603522 false ) 
	#(311 1 #reduceActionForExternalFunctionHeader1: 26765313 false ) 
	#(313 1 #reduceActionForExternalFunctionHeader1: 26957825 false ) 
	#(322 2 #reduceActionForMethodVariables1: 28274689 false ) 
	#(323 1 #liftFirstValue: 28346374 false ) 
	#(323 1 #liftFirstValue: 28346369 false ) 
	#(325 1 #reduceActionForVars1: 28584961 false ) 
	#(361 3 #reduceActionForExpression12: 32627724 false ) 
	#(358 3 #reduceActionForStatementBlock1: 32330753 false ) 
	#(290 1 #liftFirstValue: 23802883 false ) 
	#(290 1 #liftFirstValue: 23802884 false ) 
	#(290 1 #liftFirstValue: 23802882 false ) 
	#(285 1 #reduceActionForConstantArray1: 23378946 false ) 
	#(286 1 #reduceActionForStatements1: 23412737 false ) 
	#(367 3 #reduceActionForAnonymousFunctionHeader1: 34532353 false ) 
	#(352 3 #reduceActionForRaiseStatement1: 31676417 false ) 
	#(342 0 #nil 30787585 false ) 
	#(371 3 #reduceActionForSetConstructor1: 35088385 false ) 
	#(331 3 #reduceActionForPackageLine1: 29505537 false ) 
	#(331 3 #reduceActionForPackageLine1: 29505538 false ) 
	#(359 3 #reduceActionForAsmBlock1: 32435201 false ) 
	#(361 3 #reduceActionForExpression6: 32627718 false ) 
	#(379 1 #liftFirstValue: 36116481 false ) 
	#(378 1 #reduceActionForStatements1: 36008961 false ) 
	#(362 3 #reduceActionForPackageLine1: 33963010 false ) 
	#(362 3 #reduceActionForPackageLine1: 33963009 false ) 
	#(361 3 #reduceActionForExpression13: 32627725 false ) 
	#(375 1 #reduceActionForStatements1: 35506177 false ) 
	#(361 3 #reduceActionForExpression11: 32627723 false ) 
	#(183 3 #reduceActionForEnumType1: 8110081 false ) 
	#(213 3 #reduceActionForConstantExpression11: 12210187 false ) 
	#(344 1 #liftFirstValue: 30977026 false ) 
	#(244 3 #reduceActionForFileType1: 17790977 false ) 
	#(197 3 #reduceActionForSetType2: 10451970 false ) 
	#(197 3 #reduceActionForSetType1: 10451969 false ) 
	#(236 2 #reduceActionForQualifiedName1: 16037889 false ) 
	#(192 3 #reduceActionForNamedType2: 9300994 false ) 
	#(228 0 #reduceActionForMethodVariables2: 15105025 false ) 
	#(227 1 #reduceActionForImplicitClassSection1: 15032321 false ) 
	#(210 3 #reduceActionForRangeType1: 12034049 false ) 
	#(220 1 #reduceActionForStatements1: 13934593 false ) 
	#(213 3 #reduceActionForNamedType2: 12210180 false ) 
	#(213 3 #reduceActionForExpression11: 12210181 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8457224 false ) 
	#(240 3 #reduceActionForAttribute1: 17233921 false ) 
	#(181 1 #reduceActionForGenericTypeArgument1: 7690241 false ) 
	#(180 1 #reduceActionForStatements1: 7532545 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6057986 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4688897 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4492289 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5571585 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5869570 false ) 
	#(166 3 #reduceActionForPackageLine1: 5944322 false ) 
	#(150 4 #reduceActionForProgramFile1: 4376577 false ) 
	#(154 2 #reduceActionForMethodVariables1: 4805634 false ) 
	#(158 3 #reduceActionForRequires1: 5075969 false ) 
	#(156 4 #reduceActionForPackageFile1: 4920321 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5676034 false ) 
	#(293 0 #reduceActionForMethodVariables2: 24122369 false ) 
	#(383 0 #nil 36612097 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6412289 false ) 
	#(171 1 #reduceActionForConstantValues1: 6491137 false ) 
	#(288 1 #reduceActionForStatements1: 23647233 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6776833 false ) 
	#(174 1 #reduceActionForConstantValues1: 6876161 false ) 
	#(326 2 #reduceActionForVarsVars2: 28614658 false ) 
	#(327 1 #reduceActionForConstantValues1: 28702721 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7106561 false ) 
	#(177 1 #reduceActionForConstantValues1: 7187457 false ) 
	#(326 2 #reduceActionForVarsVars2: 28614657 false ) 
	#(302 2 #reduceActionForProcedureDefinition1: 25561089 false ) 
	#(279 0 #reduceActionForMethodVariables2: 21765121 false ) 
	#(310 2 #reduceActionForFunctionDefinition1: 26603521 false ) 
	#(321 3 #reduceActionForMethodComponents1: 28186625 false ) 
	#(329 3 #reduceActionForStatements2: 28925954 false ) 
	#(350 1 #reduceActionForBaseCaseLabel1: 31464449 false ) 
	#(351 0 #reduceActionForElseCase1: 31626241 false ) 
	#(346 1 #reduceActionForStatements1: 31081473 false ) 
	#(349 1 #reduceActionForStatements1: 31375361 false ) 
	#(348 1 #liftFirstValue: 31269889 false ) 
	#(196 3 #reduceActionForRequires1: 10387458 false ) 
	#(287 2 #reduceActionForArgument2: 23507970 false ) 
	#(264 2 #reduceActionForGotoStatement1: 19743746 false ) 
	#(334 4 #reduceActionForIfStatement1: 29845505 false ) 
	#(377 4 #reduceActionForInheritedFunctionCall2: 35616770 false ) 
	#(353 2 #reduceActionForGotoStatement1: 31784962 false ) 
	#(333 4 #reduceActionForRepeatStatement1: 29742081 false ) 
	#(341 0 #nil 30711809 false ) 
	#(339 1 #reduceActionForConstantValues1: 30544897 false ) 
	#(357 4 #reduceActionForLibraryLine1: 32225281 false ) 
	#(336 3 #reduceActionForStatements2: 30179330 false ) 
	#(335 4 #reduceActionForRepeatStatement1: 30085121 false ) 
	#(373 3 #reduceActionForSetValue2: 35318786 false ) 
	#(372 3 #reduceActionForStatements2: 35218434 false ) 
	#(191 1 #reduceActionForStatements1: 9138177 false ) 
	#(190 0 #reduceActionForOutsideGeneric1: 9080833 true ) 
	#(361 4 #reduceActionForExpression5: 32627717 false ) 
	#(374 3 #reduceActionForRequires1: 35451905 false ) 
	#(185 3 #reduceActionForEnumName2: 8236034 false ) 
	#(219 3 #reduceActionForConstantRecordField1: 13809665 false ) 
	#(184 3 #reduceActionForStatements2: 8163330 false ) 
	#(216 3 #reduceActionForPackageLine1: 13497346 false ) 
	#(215 3 #reduceActionForUsesModuleList2: 13317122 false ) 
	#(213 4 #reduceActionForConstantExpression10: 12210186 false ) 
	#(218 3 #reduceActionForStatements2: 13675522 false ) 
	#(260 2 #reduceActionForGotoStatement1: 19396610 false ) 
	#(248 1 #liftFirstValue: 18290690 false ) 
	#(248 1 #liftFirstValue: 18290689 false ) 
	#(247 1 #reduceActionForStatements1: 18179073 false ) 
	#(201 4 #reduceActionForRecordType1: 11085825 false ) 
	#(203 2 #reduceActionForRecordFieldList1: 11359233 false ) 
	#(238 1 #liftFirstValue: 16318476 false ) 
	#(238 1 #liftFirstValue: 16318477 false ) 
	#(237 2 #reduceActionForMethodVariables1: 16238594 false ) 
	#(238 1 #liftFirstValue: 16318472 false ) 
	#(238 1 #liftFirstValue: 16318474 false ) 
	#(238 1 #liftFirstValue: 16318475 false ) 
	#(238 1 #liftFirstValue: 16318473 false ) 
	#(239 1 #liftFirstValue: 16840710 false ) 
	#(238 1 #liftFirstValue: 16318468 false ) 
	#(238 1 #liftFirstValue: 16318470 false ) 
	#(255 1 #liftFirstValue: 18922497 false ) 
	#(255 1 #liftFirstValue: 18922498 false ) 
	#(255 1 #liftFirstValue: 18922499 false ) 
	#(255 1 #liftFirstValue: 18922500 false ) 
	#(255 1 #liftFirstValue: 18922501 false ) 
	#(254 1 #liftFirstValue: 18849793 false ) 
	#(265 1 #reduceActionForPropertyHeader1: 19791873 false ) 
	#(254 1 #liftFirstValue: 18849794 false ) 
	#(256 1 #liftFirstValue: 19060737 false ) 
	#(256 1 #liftFirstValue: 19060738 false ) 
	#(257 1 #liftFirstValue: 19144705 false ) 
	#(257 1 #liftFirstValue: 19144706 false ) 
	#(258 1 #liftFirstValue: 19225601 false ) 
	#(258 1 #liftFirstValue: 19225602 false ) 
	#(259 1 #liftFirstValue: 19303425 false ) 
	#(259 1 #liftFirstValue: 19303426 false ) 
	#(261 1 #liftFirstValue: 19488769 false ) 
	#(261 1 #liftFirstValue: 19488770 false ) 
	#(262 1 #liftFirstValue: 19563521 false ) 
	#(262 1 #liftFirstValue: 19563522 false ) 
	#(263 1 #liftFirstValue: 19653633 false ) 
	#(263 1 #liftFirstValue: 19653634 false ) 
	#(238 1 #liftFirstValue: 16318467 false ) 
	#(213 4 #reduceActionForExpression5: 12210184 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8457222 false ) 
	#(179 3 #reduceActionForRequires1: 7444482 false ) 
	#(223 0 #reduceActionForMethodVariables2: 14702593 false ) 
	#(250 1 #liftFirstValue: 18541570 false ) 
	#(250 1 #liftFirstValue: 18541569 false ) 
	#(234 0 #reduceActionForOptionalArguments1: 15877121 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7294977 false ) 
	#(182 1 #reduceActionForUsesModule1: 7838723 false ) 
	#(182 1 #reduceActionForUsesModule1: 7838724 false ) 
	#(186 1 #liftFirstValue: 8345604 false ) 
	#(186 1 #liftFirstValue: 8345601 false ) 
	#(186 1 #liftFirstValue: 8345605 false ) 
	#(186 1 #liftFirstValue: 8345602 false ) 
	#(186 1 #liftFirstValue: 8345603 false ) 
	#(249 1 #reduceActionForInterfaceType2: 18347010 false ) 
	#(385 1 #reduceActionForStatements1: 36826113 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4609025 false ) 
	#(159 3 #reduceActionForStatements2: 5156866 false ) 
	#(160 3 #reduceActionForUsesList2: 5266433 false ) 
	#(386 2 #reduceActionForGotoStatement1: 36917249 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6182914 false ) 
	#(169 1 #liftFirstValue: 6277123 false ) 
	#(169 1 #liftFirstValue: 6277122 false ) 
	#(169 1 #liftFirstValue: 6277121 false ) 
	#(169 1 #liftFirstValue: 6277124 false ) 
	#(169 1 #liftFirstValue: 6277125 false ) 
	#(169 1 #liftFirstValue: 6277126 false ) 
	#(292 0 #nil 24036353 false ) 
	#(382 2 #reduceActionForInitializationSection2: 36501506 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6491138 false ) 
	#(324 3 #reduceActionForLabels1: 28492801 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6876162 false ) 
	#(327 2 #reduceActionForMethodVariables1: 28702722 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7187458 false ) 
	#(283 2 #reduceActionForExternalMethodModifier1: 22435841 false ) 
	#(283 2 #reduceActionForExternalMethodModifier6: 22435846 false ) 
	#(304 3 #reduceActionForExternalProcedureHeaderVars1: 25807873 false ) 
	#(312 3 #reduceActionForExternalFunctionHeaderVars1: 26842113 false ) 
	#(345 2 #reduceActionForCaseOptionList1: 31029249 false ) 
	#(356 1 #liftFirstValue: 32192514 false ) 
	#(356 1 #liftFirstValue: 32192513 false ) 
	#(286 3 #reduceActionForStatements2: 23412738 false ) 
	#(377 5 #reduceActionForInheritedFunctionCall1: 35616769 false ) 
	#(338 3 #reduceActionForExcept3: 30385155 false ) 
	#(339 2 #reduceActionForMethodVariables1: 30544898 false ) 
	#(338 3 #reduceActionForExcept2: 30385154 false ) 
	#(342 2 #reduceActionForFinally2: 30787586 false ) 
	#(337 5 #reduceActionForTryStatement1: 30284801 false ) 
	#(378 3 #reduceActionForStatements2: 36008962 false ) 
	#(379 3 #reduceActionForMethodArgument2: 36116482 false ) 
	#(375 3 #reduceActionForStatements2: 35506178 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType1: 9719809 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType2: 9719810 false ) 
	#(197 5 #reduceActionForSetType3: 10451971 false ) 
	#(236 4 #reduceActionForQualifiedName2: 16037890 false ) 
	#(246 3 #reduceActionForRequires1: 18113537 false ) 
	#(245 5 #reduceActionForArrayType2: 17902594 false ) 
	#(245 5 #reduceActionForArrayType1: 17902593 false ) 
	#(203 3 #reduceActionForRecordFieldList2: 11359234 false ) 
	#(228 2 #reduceActionForMethodVariables1: 15105026 false ) 
	#(229 1 #liftFirstValue: 15167489 false ) 
	#(229 1 #liftFirstValue: 15167490 false ) 
	#(229 1 #liftFirstValue: 15167491 false ) 
	#(229 1 #liftFirstValue: 15167492 false ) 
	#(267 2 #reduceActionForClassPropertyHeader1: 20049921 false ) 
	#(308 2 #reduceActionForExternalClassProcedureHeader1: 26374145 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26485761 false ) 
	#(316 2 #reduceActionForExternalClassFunctionHeader1: 27407361 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27515905 false ) 
	#(238 2 #reduceActionForNewClassComponent2: 16318466 false ) 
	#(301 0 #reduceActionForOptionalType1: 25512961 false ) 
	#(269 0 #nil 20472833 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16318469 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16318471 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16840705 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16840706 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16840707 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16840708 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16840709 false ) 
	#(220 3 #reduceActionForStatements2: 13934594 false ) 
	#(181 3 #reduceActionForGenericTypeArgument2: 7690242 false ) 
	#(180 3 #reduceActionForStatements2: 7532546 false ) 
	#(182 2 #reduceActionForDefinedType2: 7838722 false ) 
	#(251 0 #nil 18596865 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7294978 false ) 
	#(384 3 #reduceActionForExportsDefinition1: 36715521 false ) 
	#(294 1 #liftFirstValue: 24181770 false ) 
	#(294 1 #liftFirstValue: 24181771 false ) 
	#(294 1 #liftFirstValue: 24181768 false ) 
	#(291 4 #reduceActionForImplementationSection2: 23889922 false ) 
	#(293 2 #reduceActionForMethodVariables1: 24122370 false ) 
	#(294 1 #liftFirstValue: 24181761 false ) 
	#(295 1 #reduceActionForConstructorDefinition2: 24469506 false ) 
	#(294 1 #liftFirstValue: 24181762 false ) 
	#(298 1 #reduceActionForDestructorDefinition2: 24998914 false ) 
	#(294 1 #liftFirstValue: 24181763 false ) 
	#(294 1 #liftFirstValue: 24181764 false ) 
	#(307 1 #reduceActionForClassProcedureDefinition2: 26181634 false ) 
	#(294 1 #liftFirstValue: 24181765 false ) 
	#(294 1 #liftFirstValue: 24181766 false ) 
	#(315 1 #reduceActionForClassFunctionDefinition2: 27219970 false ) 
	#(294 1 #liftFirstValue: 24181767 false ) 
	#(318 1 #reduceActionForClassOperatorDefinition2: 27630594 false ) 
	#(294 1 #liftFirstValue: 24181769 false ) 
	#(294 1 #liftFirstValue: 24181772 false ) 
	#(383 2 #reduceActionForFinalizationSection2: 36612098 false ) 
	#(161 6 #reduceActionForUnitFile1: 5349377 false ) 
	#(288 3 #reduceActionForStatements2: 23647234 false ) 
	#(280 0 #reduceActionForMethodVariables2: 21835777 false ) 
	#(226 0 #nil 14971905 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22435844 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22435842 false ) 
	#(284 1 #liftFirstValue: 23090187 false ) 
	#(284 1 #liftFirstValue: 23090181 false ) 
	#(284 1 #liftFirstValue: 23090190 false ) 
	#(284 1 #liftFirstValue: 23090185 false ) 
	#(284 1 #liftFirstValue: 23090191 false ) 
	#(284 1 #liftFirstValue: 23090194 false ) 
	#(284 1 #liftFirstValue: 23090189 false ) 
	#(284 1 #liftFirstValue: 23090197 false ) 
	#(284 1 #liftFirstValue: 23090196 false ) 
	#(284 1 #liftFirstValue: 23090195 false ) 
	#(284 1 #liftFirstValue: 23090188 false ) 
	#(284 1 #liftFirstValue: 23090177 false ) 
	#(284 1 #liftFirstValue: 23090178 false ) 
	#(284 1 #liftFirstValue: 23090182 false ) 
	#(284 1 #liftFirstValue: 23090193 false ) 
	#(284 1 #liftFirstValue: 23090180 false ) 
	#(284 1 #liftFirstValue: 23090183 false ) 
	#(284 1 #liftFirstValue: 23090198 false ) 
	#(284 1 #liftFirstValue: 23090192 false ) 
	#(284 1 #liftFirstValue: 23090179 false ) 
	#(284 1 #liftFirstValue: 23090186 false ) 
	#(284 1 #liftFirstValue: 23090184 false ) 
	#(279 2 #reduceActionForMethodVariables1: 21765122 false ) 
	#(281 1 #liftFirstValue: 21939201 false ) 
	#(281 1 #liftFirstValue: 21939202 false ) 
	#(350 3 #reduceActionForBaseCaseLabel2: 31464450 false ) 
	#(351 2 #reduceActionForElseCase2: 31626242 false ) 
	#(343 6 #reduceActionForCaseStatement1: 30855169 false ) 
	#(346 3 #reduceActionForStatements2: 31081474 false ) 
	#(347 3 #reduceActionForCaseOption1: 31183873 false ) 
	#(349 3 #reduceActionForStatements2: 31375362 false ) 
	#(348 3 #reduceActionForCaseLabel2: 31269890 false ) 
	#(355 6 #reduceActionForForInStatement1: 32046081 false ) 
	#(289 0 #reduceActionForOptionalType1: 23738369 false ) 
	#(334 6 #reduceActionForForInStatement1: 29845506 false ) 
	#(368 6 #reduceActionForMemExpression1: 34641921 false ) 
	#(368 6 #reduceActionForMemExpression1: 34641922 false ) 
	#(341 2 #reduceActionForPossibleExceptElse2: 30711810 false ) 
	#(191 3 #reduceActionForStatements2: 9138178 false ) 
	#(188 5 #reduceActionForInstantiatedGenericTypeArguments1: 8893441 false ) 
	#(202 6 #reduceActionForRecordHelperType1: 11191297 false ) 
	#(199 1 #reduceActionForStatements1: 10886145 false ) 
	#(198 3 #reduceActionForTwoItemSetNameList1: 10729473 false ) 
	#(247 3 #reduceActionForStatements2: 18179074 false ) 
	#(230 2 #reduceActionForPrivateClassSection2: 15281154 false ) 
	#(231 2 #reduceActionForProtectedClassSection2: 15473666 false ) 
	#(232 2 #reduceActionForPublicClassSection1: 15680513 false ) 
	#(233 2 #reduceActionForPublishedClassSection1: 15772673 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24646657 false ) 
	#(299 3 #reduceActionForExternalConstructorHeader1: 25170945 false ) 
	#(319 3 #reduceActionForExternalConstructorHeader1: 27817985 false ) 
	#(200 3 #reduceActionForMetaclassType1: 10989569 false ) 
	#(224 1 #liftFirstValue: 14777345 false ) 
	#(224 1 #liftFirstValue: 14777346 false ) 
	#(223 2 #reduceActionForMethodVariables1: 14702594 false ) 
	#(221 3 #reduceActionForNewClassType2: 14054402 false ) 
	#(235 1 #reduceActionForStatements1: 15938561 false ) 
	#(182 3 #reduceActionForPackageLine1: 7838725 false ) 
	#(182 3 #reduceActionForPackageLine1: 7838721 false ) 
	#(252 0 #reduceActionForMethodVariables2: 18672641 false ) 
	#(385 3 #reduceActionForStatements2: 36826114 false ) 
	#(292 2 #reduceActionForImplementationCode2: 24036354 false ) 
	#(295 2 #reduceActionForConstructorDefinition1: 24469505 false ) 
	#(298 2 #reduceActionForDestructorDefinition1: 24998913 false ) 
	#(307 2 #reduceActionForClassProcedureDefinition1: 26181633 false ) 
	#(315 2 #reduceActionForClassFunctionDefinition1: 27219969 false ) 
	#(318 2 #reduceActionForClassOperatorDefinition1: 27630593 false ) 
	#(306 5 #reduceActionForNonExternalProcedureHeaderVars1: 26011649 false ) 
	#(226 1 #liftFirstValue: 14971906 false ) 
	#(282 2 #reduceActionForExternalMethodModifier6: 22013953 false ) 
	#(287 5 #reduceActionForArgument1: 23507969 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType1: 10032129 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType2: 10032130 false ) 
	#(230 3 #reduceActionForPrivateClassSection1: 15281153 false ) 
	#(231 3 #reduceActionForProtectedClassSection1: 15473665 false ) 
	#(301 2 #reduceActionForGotoStatement1: 25512962 false ) 
	#(268 0 #reduceActionForPropertyValues1: 20142081 false ) 
	#(234 3 #reduceActionForRequires1: 15877122 false ) 
	#(314 6 #reduceActionForNonExternalFunctionHeaderVars1: 27040769 false ) 
	#(280 2 #reduceActionForMethodVariables1: 21835778 false ) 
	#(175 5 #reduceActionForResource1: 6950913 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22435845 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22435843 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier2: 22013954 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22013956 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22013955 false ) 
	#(354 8 #reduceActionForForStatement1: 31852545 false ) 
	#(289 2 #reduceActionForGotoStatement1: 23738370 false ) 
	#(340 5 #reduceActionForOnDo1: 30609409 false ) 
	#(199 3 #reduceActionForStatements2: 10886146 false ) 
	#(297 5 #reduceActionForNonExternalConstructorHeader1: 24782849 false ) 
	#(300 5 #reduceActionForNonExternalDestructorHeader1: 25304065 false ) 
	#(241 5 #reduceActionForInterfaceFunctionAssignment1: 17320961 false ) 
	#(242 5 #reduceActionForInterfaceProcedureAssignment1: 17504257 false ) 
	#(269 3 #reduceActionForPropertyArrayAccessors2: 20472834 false ) 
	#(238 5 #reduceActionForNewClassComponent1: 16318465 false ) 
	#(235 3 #reduceActionForStatements2: 15938562 false ) 
	#(225 5 #reduceActionForOldClassType1: 14822401 false ) 
	#(251 3 #reduceActionForGuid2: 18596866 false ) 
	#(249 5 #reduceActionForInterfaceType1: 18347009 false ) 
	#(252 2 #reduceActionForMethodVariables1: 18672642 false ) 
	#(253 1 #liftFirstValue: 18764802 false ) 
	#(253 1 #liftFirstValue: 18764801 false ) 
	#(328 6 #reduceActionForVariable1: 28802049 false ) 
	#(206 1 #reduceActionForStatements1: 11694081 false ) 
	#(208 1 #reduceActionForStatements1: 11909121 false ) 
	#(209 1 #liftFirstValue: 11996161 false ) 
	#(297 6 #reduceActionForNonExternalConstructorHeader2: 24782850 false ) 
	#(300 6 #reduceActionForNonExternalDestructorHeader2: 25304066 false ) 
	#(274 1 #reduceActionForPropertyDefault2: 21147650 false ) 
	#(274 1 #reduceActionForPropertyDefault3: 21147651 false ) 
	#(278 0 #nil 21664769 false ) 
	#(268 2 #reduceActionForPropertyValues2: 20142082 false ) 
	#(268 2 #reduceActionForCaseOptionList1: 20142083 false ) 
	#(268 2 #reduceActionForPropertyValues4: 20142084 false ) 
	#(268 2 #reduceActionForPropertyValues8: 20142088 false ) 
	#(268 2 #reduceActionForPropertyValues5: 20142085 false ) 
	#(268 2 #reduceActionForPropertyValues7: 20142087 false ) 
	#(268 2 #reduceActionForPropertyValues6: 20142086 false ) 
	#(222 6 #reduceActionForClassHelperType2: 14286850 false ) 
	#(221 6 #reduceActionForNewClassType1: 14054401 false ) 
	#(172 7 #reduceActionForConstantValue1: 6586369 false ) 
	#(205 6 #reduceActionForVariantRecordPart1: 11544577 false ) 
	#(320 7 #reduceActionForNonExternalClassOperatorHeader1: 27960321 false ) 
	#(274 2 #reduceActionForPropertyDefault1: 21147649 false ) 
	#(273 2 #reduceActionForPropertyDispid1: 20835329 false ) 
	#(276 1 #reduceActionForStatements1: 21455873 false ) 
	#(275 2 #reduceActionForPropertyImplements1: 21351425 false ) 
	#(270 2 #reduceActionForPropertyIndex1: 20570113 false ) 
	#(271 2 #reduceActionForPropertyReader1: 20663297 false ) 
	#(277 2 #reduceActionForPropertyStored1: 21575681 false ) 
	#(272 2 #reduceActionForPropertyWriter1: 20748289 false ) 
	#(266 7 #reduceActionForPropertyHeaderVars1: 19852289 false ) 
	#(206 3 #reduceActionForStatements2: 11694082 false ) 
	#(208 3 #reduceActionForStatements2: 11909122 false ) 
	#(273 3 #reduceActionForPropertyDispid2: 20835330 false ) 
	#(273 3 #reduceActionForPropertyDispid3: 20835331 false ) 
	#(278 2 #reduceActionForPropertyModifiers2: 21664770 false ) 
	#(276 3 #reduceActionForStatements2: 21455874 false ) 
	#(222 9 #reduceActionForClassHelperType1: 14286849 false ) 
	#(207 5 #reduceActionForVariantType1: 11808769 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericPropertyExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'InstantiatedGenericVariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiProgramNode #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection #Object #Object #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #OrderedCollection #DelphiInstantiatedGenericPropertyExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiInstantiatedGenericVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 21 0 66 0 25 0 84 0 6 0 89 0 29 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 33 0 119 0 37 0 122 0 6 0 123 0 41 0 149 0 45 0 150 0 49 0 151 0 53 0 152 0 57 0 153 0 61 0 156 0 65 0 157 0 69 0 161 0 73 0 162 0 77 0 164] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 0 185 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 0 185 1 102 0 185 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 165 0 183 1 117 0 187 1 121 0 192 1 165 0 194 1 165 0 195 1 117 0 197 1 117 0 201 1 117 0 202 1 145 0 204 1 117 0 210 1 153 0 211 1 157 0 212 1 161 0 213 1 165 0 243 1 117 0 244 1 117 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[1 1 189 0 130 1 193 0 139 1 197 0 178 1 201 0 240] 
#[1 1 205 0 139 1 209 0 167] 
#[1 1 205 0 139 1 213 0 167] 
#[1 1 205 0 139 1 217 0 167] 
#[1 1 205 0 139 1 221 0 167] 
#[1 1 205 0 139 1 225 0 165 1 229 0 166 1 233 0 167] 
#[0 0 0 1 132] 
#[0 0 22 1 132] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 237 0 164] 
#[0 0 26 1 132] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 241 0 164] 
#[0 0 30 1 132] 
#[1 1 245 0 103 1 249 0 158] 
#[0 0 34 1 132] 
#[1 0 38 0 40 0 38 0 48 0 38 0 56 0 38 0 61 1 253 0 63 2 1 0 163 0 42 1 132] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 2 5 0 155 2 9 1 65 2 13 1 66] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 21 1 105 0 249 1 106 2 21 1 107 2 21 1 108 1 5 1 109 2 21 1 110 1 13 1 111 2 21 1 112 2 21 1 113 2 21 1 114 2 21 1 115 1 33 1 120 2 21 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 25 1 105 0 249 1 106 2 25 1 107 2 25 1 108 1 5 1 109 2 25 1 110 1 13 1 111 2 25 1 112 2 25 1 113 2 25 1 114 2 25 1 115 1 33 1 120 2 25 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 29 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 37 1 105 0 249 1 106 2 37 1 107 2 37 1 108 1 5 1 109 2 37 1 110 1 13 1 111 2 37 1 112 2 37 1 113 2 37 1 114 2 37 1 115 1 33 1 120 2 37 1 121 1 41 1 131] 
#[1 2 41 0 139 2 45 1 113] 
#[1 2 49 0 2 0 50 0 9 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 53 0 196] 
#[1 2 57 0 139 2 61 0 141] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 65 1 105 0 249 1 106 2 65 1 107 2 65 1 108 1 5 1 109 2 65 1 110 1 13 1 111 2 65 1 112 2 65 1 113 2 65 1 114 2 65 1 115 1 33 1 120 2 65 1 121 1 41 1 131] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 18 0 54 0 20 0 54 0 30 0 54 0 33 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 48 0 54 0 49 0 54 0 57 0 54 0 58 0 54 0 59 0 54 0 61 0 54 0 64 0 54 0 71 0 54 0 74 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 96 0 54 0 97 0 54 0 108 0 54 0 109 0 54 0 112 0 54 0 114 0 54 0 116 0 54 0 121 0 54 0 127 0 54 0 128 0 54 0 129 0 54 0 130 0 54 0 131 0 54 0 132 0 54 0 133 0 54 0 134 0 54 0 135 0 54 0 136 0 54 0 137 0 54 0 138 2 69 0 139 0 54 1 132] 
#[0 2 73 0 130] 
#[0 2 77 0 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 81 1 105 0 249 1 106 2 81 1 107 2 81 1 108 1 5 1 109 2 81 1 110 1 13 1 111 2 81 1 112 2 81 1 113 2 81 1 114 2 81 1 115 1 33 1 120 2 81 1 121 1 41 1 131] 
#[1 2 49 0 2 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 85 0 196] 
#[1 0 81 0 2 0 85 0 15 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 101 0 52 0 113 0 60 0 58 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 58 0 78 0 129 0 89 0 58 0 121 0 153 0 130 0 157 0 135 0 161 0 136 0 58 0 137 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 89 1 105 0 249 1 106 2 89 1 107 2 89 1 108 1 5 1 109 2 89 1 110 1 13 1 111 2 89 1 112 2 89 1 113 2 89 1 114 2 89 1 115 1 33 1 120 2 89 1 121 1 41 1 131 0 58 1 132] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 93 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 97 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 101 1 105 0 249 1 106 2 101 1 107 2 101 1 108 1 5 1 109 2 101 1 110 1 13 1 111 2 101 1 112 2 101 1 113 2 101 1 114 2 101 1 115 1 33 1 120 2 101 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 105 1 80 2 109 1 105 0 249 1 106 2 109 1 107 2 109 1 108 1 5 1 109 2 109 1 110 1 13 1 111 2 109 1 112 2 109 1 113 2 109 1 114 2 109 1 115 1 33 1 120 2 109 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 2 113 0 131 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 117 1 105 0 249 1 106 2 117 1 107 2 117 1 108 1 5 1 109 2 117 1 110 1 13 1 111 2 117 1 112 2 117 1 113 2 117 1 114 2 117 1 115 2 121 1 116 2 125 1 117 1 33 1 120 2 117 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 129 1 105 0 249 1 106 2 129 1 107 2 129 1 108 1 5 1 109 2 129 1 110 1 13 1 111 2 129 1 112 2 129 1 113 2 129 1 114 2 129 1 115 1 33 1 120 2 129 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 133 1 105 0 249 1 106 2 133 1 107 2 133 1 108 1 5 1 109 2 133 1 110 1 13 1 111 2 133 1 112 2 133 1 113 2 133 1 114 2 133 1 115 1 33 1 120 2 133 1 121 1 41 1 131] 
#[1 0 62 0 2 0 62 0 4 0 62 0 6 0 62 0 8 2 137 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 35 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 58 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 78 0 62 0 80 0 62 0 108 0 62 0 109 0 62 0 121 0 62 0 129 0 62 0 130 0 62 0 132 0 62 0 133 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 2 141 0 188 2 145 0 189 0 62 1 132] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 2 149 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 78 0 70 0 80 0 70 0 108 0 70 0 109 0 70 0 121 0 70 0 129 0 70 0 130 0 70 0 132 0 70 0 133 0 70 0 135 0 70 0 136 0 70 0 137 0 70 0 138 0 70 1 132] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 0 1 132] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 0 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 2 153 0 21] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 3 5 0 58 0 138 0 61 3 5 0 64 3 5 0 71 0 138 0 78 3 5 0 80 3 5 0 108 3 5 0 109 0 138 0 121 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 0 138 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 0 138 1 132] 
#[1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 15 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 18 0 142 0 20 0 142 0 30 0 142 0 33 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 48 0 142 0 49 0 142 0 57 0 142 0 58 0 142 0 59 0 142 0 61 0 142 0 64 0 142 0 71 0 142 0 74 0 142 0 77 0 142 0 78 0 142 0 80 0 142 0 96 0 142 0 97 0 142 0 108 0 142 0 109 0 142 0 112 0 142 0 114 0 142 0 116 0 142 0 121 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 132 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 137 0 142 0 138 3 13 0 188 2 145 0 189 0 142 1 132] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 17 1 65 2 13 1 66] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 21 1 65 2 13 1 66] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 3 25 0 2 0 186 0 3 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 29 0 139 3 33 0 140 1 157 0 141 1 181 0 143 1 109 0 147 3 37 0 184 3 41 0 185 1 157 0 212 3 45 0 213 3 49 0 214 3 53 0 215 3 57 0 216 3 61 0 217 3 65 0 218 3 69 0 219 3 45 1 115 1 181 1 120 1 185 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 3 77 0 213 3 77 1 115 1 181 1 120 1 185 1 131] 
#[1 0 190 0 3 0 190 0 5 0 190 0 14 0 190 0 16 0 190 0 21 0 190 0 23 0 190 0 27 0 190 0 30 0 190 0 31 0 190 0 33 0 190 0 36 0 190 0 52 0 190 0 57 0 190 0 59 0 190 0 65 0 190 0 74 3 81 0 77 0 190 0 87 0 190 0 89 0 190 0 96 0 190 0 97 0 190 0 104 0 190 0 112 0 190 0 115 0 190 0 118 0 190 0 123 0 190 0 127 0 190 0 128 0 190 0 130 0 190 0 131 0 190 0 132 0 190 0 137 0 190 1 132] 
#[1 2 49 0 2 0 50 0 9 3 85 0 196] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 3 89 0 213 3 89 1 115 1 181 1 120 1 185 1 131] 
#[0 0 194 0 19 0 98] 
#[1 2 49 0 2 0 50 0 77 0 50 0 137 3 93 0 196] 
#[0 3 97 0 54] 
#[0 3 101 0 116] 
#[0 3 105 0 77] 
#[1 3 109 0 139 3 113 0 236] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 3 117 0 213 3 117 1 115 1 181 1 120 1 185 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 3 121 0 213 3 121 1 115 1 181 1 120 1 185 1 131] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 3 129 0 183 3 129 0 187 1 121 0 192 3 129 0 194 3 129 0 195 3 129 0 197 3 129 0 201 3 129 0 202 1 145 0 204 3 129 0 210 1 153 0 211 1 157 0 212 1 161 0 213 3 129 0 243 3 129 0 244 3 129 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[1 0 198 0 2 0 202 0 3 0 198 0 4 0 202 0 5 0 19 0 6 0 198 0 7 0 198 0 8 0 19 0 11 0 198 0 12 0 198 0 13 0 202 0 14 0 202 0 16 0 198 0 18 0 198 0 20 0 202 0 21 0 202 0 23 0 202 0 27 0 202 0 30 0 202 0 31 0 202 0 33 0 198 0 35 0 202 0 36 0 202 0 52 0 202 0 57 0 198 0 58 0 202 0 59 0 198 0 64 0 202 0 65 0 198 0 71 0 202 0 74 0 202 0 77 0 198 0 80 0 202 0 87 0 202 0 89 0 202 0 96 0 202 0 97 0 202 0 104 0 198 0 108 0 198 0 109 0 202 0 112 0 202 0 115 0 202 0 118 0 202 0 123 0 202 0 127 0 202 0 128 0 198 0 129 0 202 0 130 0 202 0 131 0 19 0 132 0 198 0 133 0 198 0 135 0 198 0 136 0 202 0 137 0 202 1 132] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 0 214 0 16 0 214 0 130 0 0 1 132] 
#[1 0 218 0 3 0 218 0 5 3 133 0 6 0 66 0 11 0 218 0 14 0 218 0 16 0 218 0 21 0 218 0 23 0 218 0 27 0 218 0 30 0 218 0 31 0 218 0 33 0 218 0 36 0 218 0 52 0 218 0 57 0 218 0 59 0 218 0 65 0 218 0 74 0 218 0 77 0 218 0 87 0 218 0 89 0 218 0 96 0 218 0 97 0 218 0 104 0 218 0 112 0 218 0 115 0 218 0 118 0 218 0 123 0 218 0 127 0 218 0 128 0 218 0 130 0 218 0 131 0 218 0 132 0 218 0 137 3 137 0 188 2 145 0 189 0 218 1 132] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 0 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 0 238 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 3 141 0 19 3 145 0 98] 
#[0 0 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 3 149 0 7] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[1 3 153 0 2 0 250 0 3 3 161 0 4 0 250 0 5 3 157 0 6 0 250 0 7 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 0 250 0 14 0 250 0 16 3 161 0 18 3 161 0 20 0 250 0 21 0 250 0 23 0 250 0 27 0 250 0 30 0 250 0 31 0 250 0 33 3 161 0 35 0 250 0 36 0 250 0 52 0 250 0 57 3 161 0 58 0 250 0 59 3 161 0 64 0 250 0 65 3 161 0 71 0 250 0 74 0 250 0 77 3 161 0 80 0 250 0 87 0 250 0 89 0 250 0 96 0 250 0 97 0 250 0 104 3 161 0 108 3 161 0 109 0 250 0 112 0 250 0 115 0 250 0 118 0 250 0 123 0 250 0 127 0 250 0 128 3 161 0 129 0 250 0 130 0 250 0 131 0 23 0 132 3 161 0 133 3 161 0 135 3 161 0 136 0 250 0 137 3 161 1 125 0 250 1 132] 
#[1 3 165 0 16 3 169 0 130] 
#[0 0 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 1 2 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 3 173 0 213 3 173 1 115 1 181 1 120 1 185 1 131] 
#[1 3 177 0 11 1 18 0 14 3 181 0 179] 
#[0 0 0 1 132] 
#[0 3 185 0 139] 
#[0 1 22 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 3 189 0 6 3 201 0 31 3 201 0 87 1 26 0 137 3 201 0 193] 
#[1 3 189 0 6 3 205 0 137] 
#[1 3 189 0 6 3 209 0 31 3 209 0 87 1 26 0 137 3 209 0 193] 
#[1 3 189 0 6 3 213 0 31 3 213 0 87 1 26 0 137 3 213 0 193] 
#[1 3 217 0 5 3 221 0 137] 
#[0 1 30 0 5 0 137] 
#[1 1 34 0 5 3 189 0 6 3 225 0 58 1 34 0 137] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 229 0 155 2 9 1 65 2 13 1 66] 
#[1 1 38 0 21 1 38 0 23 1 38 0 27 1 38 0 43 1 38 0 52 1 38 0 65 1 38 0 89 1 38 0 104 1 38 0 115 1 38 0 118 1 38 0 123 3 233 0 154] 
#[1 1 205 0 139 3 237 0 159 3 241 0 167] 
#[1 3 245 0 29 3 249 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 3 253 0 164] 
#[1 1 42 0 40 1 42 0 48 4 1 0 56 1 42 0 61 4 5 1 35] 
#[0 4 9 0 6] 
#[0 1 46 0 6] 
#[1 0 10 0 21 0 89 0 23 4 13 0 27 4 17 0 52 4 21 0 65 4 25 0 89 4 29 0 104 4 33 0 115 4 37 0 118 4 41 0 123 4 97 0 170 4 97 0 173 4 97 0 176 4 97 1 46 4 61 1 47 4 65 1 48 4 69 1 49 4 73 1 50 4 97 1 54 4 81 1 55 4 85 1 56 4 89 1 57 4 93 1 58 4 97 1 67 4 97 1 68 4 97 1 69 4 109 1 70 4 113 1 102 4 113 1 103 0 241 1 104] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 9 0 62 0 10 0 11 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 30 0 62 0 33 0 62 0 35 0 62 0 36 0 62 0 37 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 57 0 62 0 58 0 62 0 59 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 74 0 62 0 77 0 62 0 78 0 62 0 80 0 62 0 96 0 62 0 97 0 62 0 108 0 62 0 109 0 62 0 112 0 62 0 114 0 62 0 116 0 62 0 121 0 62 0 127 0 62 0 128 0 62 0 129 0 62 0 130 0 62 0 131 0 62 0 132 0 62 0 133 0 62 0 134 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 2 141 0 188 2 145 0 189 0 62 1 132] 
#[1 2 157 0 2 4 117 0 3 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 2 157 0 2 1 50 0 3 1 50 0 4 1 50 0 5 2 165 0 6 1 50 0 7 1 50 0 8 1 50 0 9 1 50 0 10 0 27 0 11 0 31 0 12 0 35 0 13 0 39 0 14 1 50 0 18 1 50 0 20 1 50 0 30 1 50 0 33 1 50 0 35 1 50 0 36 1 50 0 37 1 50 0 39 1 50 0 40 1 50 0 41 1 50 0 48 1 50 0 49 1 50 0 57 0 43 0 58 1 50 0 59 1 50 0 61 1 50 0 64 1 50 0 71 1 50 0 74 1 50 0 77 1 50 0 78 1 50 0 80 1 50 0 96 1 50 0 97 1 50 0 108 1 50 0 109 1 50 0 112 1 50 0 114 1 50 0 116 1 50 0 121 1 50 0 127 1 50 0 128 1 50 0 129 2 233 0 130 1 50 0 131 0 47 0 132 0 51 0 133 1 50 0 134 1 50 0 135 1 50 0 136 1 50 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 1 50 1 132] 
#[1 4 121 0 40 4 125 0 137] 
#[0 1 54 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 4 129 0 77 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[0 0 62 0 10 0 58] 
#[1 4 133 0 10 4 137 0 58] 
#[1 1 58 0 3 4 165 0 27 4 165 0 81 4 165 0 123 1 62 0 139 4 153 1 29 4 157 1 30 4 161 1 31 4 165 1 34] 
#[1 4 169 0 9 1 66 0 21 1 66 0 23 1 66 0 27 1 66 0 52 1 66 0 65 1 66 0 89 1 66 0 104 1 66 0 115 1 66 0 118 1 66 0 123 4 173 1 8] 
#[0 1 70 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 1 74 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 4 177 0 114 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 4 181 0 2 1 78 0 3 1 78 0 4 1 78 0 5 1 78 0 6 1 78 0 7 1 78 0 8 1 78 0 9 1 78 0 10 1 78 0 11 1 78 0 12 1 78 0 13 1 78 0 14 1 78 0 18 1 78 0 20 1 78 0 30 1 78 0 33 1 78 0 35 1 78 0 36 1 78 0 37 1 78 0 39 1 78 0 40 1 78 0 41 1 78 0 48 1 78 0 49 1 78 0 57 1 78 0 58 1 78 0 59 1 78 0 61 1 78 0 64 1 78 0 71 1 78 0 74 1 78 0 77 1 78 0 78 1 78 0 80 1 78 0 96 1 78 0 97 1 78 0 108 1 78 0 109 1 78 0 112 1 78 0 114 1 78 0 116 1 78 0 121 1 78 0 127 1 78 0 128 1 78 0 129 1 78 0 130 1 78 0 131 1 78 0 132 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 1 78 0 137 1 78 0 138 1 78 1 132] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 4 185 1 105 0 249 1 106 4 185 1 107 4 185 1 108 1 5 1 109 4 185 1 110 1 13 1 111 4 185 1 112 4 185 1 113 4 185 1 114 4 185 1 115 1 33 1 120 4 185 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 4 189 1 105 0 249 1 106 4 189 1 107 4 189 1 108 1 5 1 109 4 189 1 110 1 13 1 111 4 189 1 112 4 189 1 113 4 189 1 114 4 189 1 115 1 33 1 120 4 189 1 121 1 41 1 131] 
#[1 2 157 0 2 1 82 0 3 3 5 0 4 1 82 0 5 2 165 0 6 1 82 0 7 3 5 0 8 1 82 0 9 2 173 0 10 0 55 0 11 0 59 0 12 0 63 0 13 0 67 0 14 3 5 0 18 3 5 0 20 1 82 0 30 1 82 0 33 3 5 0 35 1 82 0 36 1 82 0 37 1 82 0 39 1 82 0 40 1 82 0 41 1 82 0 48 1 82 0 49 1 82 0 57 0 71 0 58 1 82 0 59 1 82 0 61 3 5 0 64 3 5 0 71 1 82 0 74 1 82 0 77 1 82 0 78 3 5 0 80 1 82 0 96 1 82 0 97 3 5 0 108 3 5 0 109 1 82 0 112 1 82 0 114 1 82 0 116 1 82 0 121 1 82 0 127 1 82 0 128 3 5 0 129 2 233 0 130 1 82 0 131 0 75 0 132 0 79 0 133 1 82 0 134 3 5 0 135 3 5 0 136 1 82 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 1 82 1 132] 
#[0 1 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 1 90 0 39 1 90 0 40 1 90 0 41 1 90 0 48 1 90 0 49 3 5 0 58 1 90 0 61 3 5 0 64 3 5 0 71 1 90 0 78 3 5 0 80 3 5 0 108 3 5 0 109 1 90 0 121 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 4 193 0 134 3 5 0 135 3 5 0 136 1 90 0 137 2 253 0 138 4 197 1 97 3 1 1 118 3 5 1 124 3 5 1 125 1 90 1 132] 
#[1 4 201 0 121 4 125 0 137] 
#[1 1 94 0 40 4 205 0 41 1 94 0 49 4 125 0 137 4 209 1 82] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 4 213 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 4 217 0 5 4 221 0 36] 
#[1 2 157 0 2 3 5 0 4 1 98 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 1 98 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 2 157 0 2 3 5 0 4 1 106 0 5 2 165 0 6 4 225 0 7 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 1 106 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 4 229 0 5 4 233 0 131] 
#[0 1 110 0 5 0 131] 
#[1 2 157 0 2 1 114 0 3 3 5 0 4 1 114 0 5 2 165 0 6 1 114 0 7 3 5 0 8 1 114 0 9 1 114 0 10 0 83 0 11 0 87 0 12 0 91 0 13 0 95 0 14 1 114 0 18 1 114 0 20 1 114 0 30 1 114 0 33 3 5 0 35 1 114 0 36 1 114 0 37 1 114 0 39 1 114 0 40 1 114 0 41 1 114 0 48 1 114 0 49 1 114 0 57 0 99 0 58 1 114 0 59 1 114 0 61 1 114 0 64 3 5 0 71 1 114 0 74 1 114 0 77 1 114 0 78 1 114 0 80 1 114 0 96 1 114 0 97 3 5 0 108 3 5 0 109 1 114 0 112 1 114 0 114 1 114 0 116 1 114 0 121 1 114 0 127 1 114 0 128 1 114 0 129 2 233 0 130 1 114 0 131 0 103 0 132 0 107 0 133 1 114 0 134 1 114 0 135 1 114 0 136 1 114 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 1 114 1 132] 
#[1 2 157 0 2 1 118 0 3 3 5 0 4 1 118 0 5 2 165 0 6 1 118 0 7 3 5 0 8 1 118 0 9 1 118 0 10 0 111 0 11 0 115 0 12 0 119 0 13 0 123 0 14 1 118 0 18 1 118 0 20 1 118 0 30 1 118 0 33 3 5 0 35 1 118 0 36 1 118 0 37 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 48 1 118 0 49 1 118 0 57 0 127 0 58 1 118 0 59 1 118 0 61 1 118 0 64 3 5 0 71 1 118 0 74 1 118 0 77 1 118 0 78 1 118 0 80 1 118 0 96 1 118 0 97 3 5 0 108 3 5 0 109 1 118 0 112 1 118 0 114 1 118 0 116 1 118 0 121 1 118 0 127 1 118 0 128 1 118 0 129 2 233 0 130 1 118 0 131 0 131 0 132 0 135 0 133 1 118 0 134 1 118 0 135 1 118 0 136 1 118 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 1 118 1 132] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 4 237 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 4 237 1 102 4 237 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[0 1 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 4 241 0 11] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 4 245 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 4 245 1 102 4 245 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[0 4 249 0 40] 
#[1 0 81 0 2 4 253 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 5 1 1 105 0 249 1 106 5 1 1 107 5 1 1 108 1 5 1 109 5 1 1 110 1 13 1 111 5 1 1 112 5 1 1 113 5 1 1 114 5 1 1 115 1 33 1 120 5 1 1 121 5 5 1 122 5 9 1 123 1 41 1 131] 
#[0 1 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[1 5 13 0 1 5 17 0 139] 
#[0 1 130 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 5 21 1 105 0 249 1 106 5 21 1 107 5 21 1 108 1 5 1 109 5 21 1 110 1 13 1 111 5 21 1 112 5 21 1 113 5 21 1 114 5 21 1 115 1 33 1 120 5 21 1 121 1 41 1 131] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 131] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 5 25 1 105 0 249 1 106 5 25 1 107 5 25 1 108 1 5 1 109 5 25 1 110 1 13 1 111 5 25 1 112 5 25 1 113 5 25 1 114 5 25 1 115 5 29 1 119 1 33 1 120 5 25 1 121 1 41 1 131] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 194 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 198 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 202 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 131] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 5 33 1 105 0 249 1 106 5 33 1 107 5 33 1 108 1 5 1 109 5 33 1 110 1 13 1 111 5 33 1 112 5 33 1 113 5 33 1 114 5 33 1 115 1 33 1 120 5 33 1 121 1 41 1 131] 
#[0 1 214 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 131] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 1 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 3 25 0 2 0 186 0 3 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 33 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 3 45 0 213 3 49 0 214 3 53 0 215 3 57 0 216 3 61 0 217 3 65 0 218 3 69 0 219 3 45 1 115 1 181 1 120 1 185 1 131] 
#[1 1 230 0 3 1 230 0 5 5 37 0 14] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 8 5 41 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[1 5 45 0 3 5 49 0 5] 
#[0 1 234 0 3 0 5] 
#[1 3 153 0 2 1 238 0 3 3 161 0 4 1 238 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 5 53 0 14 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[0 5 57 0 3] 
#[1 1 242 0 3 5 61 0 5] 
#[0 1 246 0 3 0 5] 
#[1 1 250 0 3 5 69 0 137 5 69 1 88] 
#[1 1 254 0 3 0 139 0 137] 
#[0 2 2 0 3 0 137] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[1 3 153 0 2 2 6 0 3 2 6 0 4 2 6 0 5 3 157 0 6 2 6 0 7 2 6 0 8 2 6 0 9 0 143 0 11 0 147 0 12 0 151 0 13 2 6 0 14 2 6 0 16 2 6 0 18 2 6 0 20 2 6 0 21 2 6 0 23 2 6 0 27 2 6 0 30 2 6 0 31 2 6 0 33 2 6 0 35 2 6 0 36 2 6 0 52 2 6 0 57 0 155 0 58 2 6 0 59 2 6 0 64 2 6 0 65 2 6 0 71 2 6 0 74 2 6 0 77 2 6 0 80 2 6 0 87 2 6 0 89 2 6 0 96 2 6 0 97 2 6 0 104 2 6 0 108 2 6 0 109 2 6 0 112 2 6 0 115 2 6 0 118 2 6 0 123 2 6 0 127 2 6 0 128 2 6 0 129 2 6 0 130 2 6 0 131 0 159 0 132 0 163 0 133 2 6 0 135 2 6 0 136 2 6 0 137 3 161 1 125 2 6 1 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 77 0 183 5 77 0 187 1 121 0 192 5 77 0 194 5 77 0 195 5 77 0 197 5 77 0 201 5 77 0 202 1 145 0 204 5 77 0 210 1 153 0 211 1 157 0 212 1 161 0 213 5 77 0 243 5 77 0 244 5 77 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 5 81 0 9] 
#[1 3 153 0 2 2 10 0 3 3 161 0 4 2 10 0 5 3 157 0 6 2 10 0 7 3 161 0 8 2 10 0 9 0 167 0 11 0 171 0 12 0 175 0 13 2 10 0 14 2 10 0 16 3 161 0 18 3 161 0 20 2 10 0 21 2 10 0 23 2 10 0 27 2 10 0 30 2 10 0 31 2 10 0 33 3 161 0 35 2 10 0 36 2 10 0 52 2 10 0 57 0 179 0 58 2 10 0 59 3 161 0 64 2 10 0 65 3 161 0 71 2 10 0 74 2 10 0 77 3 161 0 80 2 10 0 87 2 10 0 89 2 10 0 96 2 10 0 97 2 10 0 104 3 161 0 108 3 161 0 109 2 10 0 112 2 10 0 115 2 10 0 118 2 10 0 123 2 10 0 127 2 10 0 128 3 161 0 129 2 10 0 130 2 10 0 131 0 183 0 132 0 187 0 133 3 161 0 135 3 161 0 136 2 10 0 137 3 161 1 125 2 10 1 132] 
#[1 5 85 0 77 2 14 0 137 5 89 1 4] 
#[0 5 93 0 50] 
#[1 5 97 0 52 5 101 0 89] 
#[1 5 105 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 109 0 210 1 153 0 211 1 157 0 212 5 113 0 213 5 113 1 115 1 181 1 120 1 185 1 131] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 3 177 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 5 117 0 179 1 18 1 132] 
#[1 2 18 0 3 2 18 0 5 5 121 0 6 2 18 0 14 2 18 0 16 2 18 0 21 2 18 0 23 2 18 0 27 2 18 0 30 2 18 0 31 2 18 0 33 2 18 0 36 2 18 0 52 2 18 0 57 2 18 0 59 2 18 0 65 2 18 0 74 2 18 0 77 2 18 0 87 2 18 0 89 2 18 0 96 2 18 0 97 2 18 0 104 2 18 0 112 2 18 0 115 2 18 0 118 2 18 0 123 2 18 0 127 2 18 0 128 2 18 0 130 2 18 0 131 2 18 0 132 2 18 0 137 2 18 1 132] 
#[1 3 153 0 2 2 22 0 3 3 161 0 4 2 22 0 5 3 157 0 6 2 22 0 7 3 161 0 8 2 22 0 9 0 191 0 11 0 195 0 12 0 199 0 13 2 22 0 14 2 22 0 16 2 22 0 18 2 22 0 20 2 22 0 21 2 22 0 23 2 22 0 27 2 22 0 30 2 22 0 31 2 22 0 33 3 161 0 35 2 22 0 36 2 22 0 52 2 22 0 57 0 203 0 58 2 22 0 59 2 22 0 64 2 22 0 65 3 161 0 71 2 22 0 74 2 22 0 77 2 22 0 80 2 22 0 87 2 22 0 89 2 22 0 96 2 22 0 97 2 22 0 104 3 161 0 108 3 161 0 109 2 22 0 112 2 22 0 115 2 22 0 118 2 22 0 123 2 22 0 127 2 22 0 128 2 22 0 129 2 22 0 130 2 22 0 131 0 207 0 132 0 211 0 133 2 22 0 135 2 22 0 136 2 22 0 137 3 161 1 125 2 22 1 132] 
#[1 3 153 0 2 2 26 0 3 3 161 0 4 2 26 0 5 3 157 0 6 2 26 0 7 3 161 0 8 2 26 0 9 0 215 0 11 0 219 0 12 0 223 0 13 2 26 0 14 2 26 0 16 2 26 0 18 2 26 0 20 2 26 0 21 2 26 0 23 2 26 0 27 2 26 0 30 2 26 0 31 2 26 0 33 3 161 0 35 2 26 0 36 2 26 0 52 2 26 0 57 0 227 0 58 2 26 0 59 2 26 0 64 2 26 0 65 3 161 0 71 2 26 0 74 2 26 0 77 2 26 0 80 2 26 0 87 2 26 0 89 2 26 0 96 2 26 0 97 2 26 0 104 3 161 0 108 3 161 0 109 2 26 0 112 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 127 2 26 0 128 2 26 0 129 2 26 0 130 2 26 0 131 0 231 0 132 0 235 0 133 2 26 0 135 2 26 0 136 2 26 0 137 3 161 1 125 2 26 1 132] 
#[0 0 214 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 2 30 0 3 2 30 0 5 2 30 0 14 2 30 0 16 2 30 0 21 2 30 0 23 2 30 0 27 2 30 0 30 2 30 0 31 2 30 0 33 2 30 0 36 2 30 0 52 2 30 0 57 2 30 0 59 2 30 0 65 2 30 0 74 2 30 0 77 2 30 0 87 2 30 0 89 2 30 0 96 2 30 0 97 2 30 0 104 2 30 0 112 2 30 0 115 2 30 0 118 2 30 0 123 2 30 0 127 2 30 0 128 3 169 0 130 2 30 0 131 2 30 0 132 2 30 0 137 2 30 1 132] 
#[0 5 125 0 140] 
#[0 2 34 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 2 38 0 77 5 129 0 130 5 133 0 246] 
#[1 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 5 137 0 203 5 141 0 227 5 145 0 237] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 149 0 211 1 157 0 212 1 161 0 213 1 161 1 115 1 181 1 120 1 185 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 5 153 0 213 5 157 0 220 5 153 1 115 1 181 1 120 1 185 1 131] 
#[0 5 161 0 140] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 5 165 0 213 5 165 1 115 1 181 1 120 1 185 1 131] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 5 169 0 183 5 169 0 187 1 121 0 192 5 169 0 194 5 169 0 195 5 169 0 197 5 169 0 201 5 169 0 202 1 145 0 204 5 169 0 210 1 153 0 211 1 157 0 212 1 161 0 213 5 169 0 243 5 169 0 244 5 169 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 5 173 0 213 5 173 1 115 1 181 1 120 1 185 1 131] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 5 177 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 5 181 0 139 5 185 0 180 5 189 0 181] 
#[0 5 193 0 14] 
#[1 3 177 0 11 1 18 0 14 5 197 0 179] 
#[0 5 201 0 139] 
#[0 2 46 0 14 0 31 0 137] 
#[0 2 50 0 14 0 31 0 137] 
#[0 5 205 0 137] 
#[0 2 54 0 103] 
#[0 5 209 0 137] 
#[0 5 213 0 137] 
#[1 1 205 0 139 5 217 0 166 1 233 0 167] 
#[0 2 58 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 5 221 0 143] 
#[0 5 225 0 6] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 5 229 0 43 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 5 233 0 155 2 9 1 65 2 13 1 66 5 237 1 128] 
#[1 5 241 0 5 5 245 0 137] 
#[1 2 62 0 5 3 189 0 6 2 62 0 137] 
#[1 1 205 0 139 5 249 0 165 1 229 0 166 1 233 0 167] 
#[1 5 253 0 40 6 1 1 130] 
#[1 2 66 0 27 2 66 0 40 2 66 0 48 2 66 0 52 2 66 0 56 2 66 0 61 2 66 0 89 2 66 0 104 2 66 0 115 2 66 0 118 2 66 0 123 6 5 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 6 9 0 164] 
#[1 2 70 0 40 2 70 0 48 6 13 0 61 6 17 1 126] 
#[0 2 74 1 132] 
#[1 6 21 0 139 6 25 0 171 6 29 0 172] 
#[1 3 109 0 139 6 33 0 236] 
#[1 6 37 0 139 6 41 1 32] 
#[1 3 109 0 139 6 45 0 236] 
#[1 6 49 0 139 6 53 0 174 6 57 0 175] 
#[1 6 37 0 139 6 61 1 32 6 65 1 71 6 69 1 72] 
#[1 1 189 0 130 1 193 0 139 6 73 0 177 6 77 0 178 1 201 0 240] 
#[1 6 37 0 139 6 61 1 32 6 81 1 71 6 69 1 72] 
#[0 2 78 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 90 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 94 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 98 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 85 1 65 2 13 1 66] 
#[1 2 102 0 3 2 102 0 21 2 102 0 23 2 102 0 24 2 102 0 26 2 102 0 27 2 102 0 28 2 102 0 32 2 102 0 40 6 89 0 44 2 102 0 48 6 93 0 51 2 102 0 52 2 102 0 56 2 102 0 61 2 102 0 65 2 102 0 88 2 102 0 89 2 102 0 91 2 102 0 92 2 102 0 93 2 102 0 94 2 102 0 104 2 102 0 113 2 102 0 115 2 102 0 118 2 102 0 123 2 102 0 130 2 102 0 139 6 97 1 27] 
#[0 2 106 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 110 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 114 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 101 1 65 2 13 1 66] 
#[1 2 118 0 3 2 118 0 21 2 118 0 23 2 118 0 24 2 118 0 26 2 118 0 27 2 118 0 28 2 118 0 32 2 118 0 40 6 89 0 44 2 118 0 48 6 93 0 51 2 118 0 52 2 118 0 56 2 118 0 61 2 118 0 65 2 118 0 88 2 118 0 89 2 118 0 91 2 118 0 92 2 118 0 93 2 118 0 94 2 118 0 104 2 118 0 113 2 118 0 115 2 118 0 118 2 118 0 123 2 118 0 130 2 118 0 139 6 105 1 27] 
#[0 2 122 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 126 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 130 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 134 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 6 109 0 137] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 2 142 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 113 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 113 1 102 6 113 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 6 117 0 213 6 121 1 89 6 125 1 90 6 129 1 91 6 133 1 92 6 137 1 93 6 141 1 94 6 117 1 115 1 181 1 120 1 185 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 145 1 105 0 249 1 106 6 145 1 107 6 145 1 108 1 5 1 109 6 145 1 110 1 13 1 111 6 145 1 112 6 145 1 113 6 145 1 114 6 145 1 115 1 33 1 120 6 145 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 149 1 105 0 249 1 106 6 149 1 107 6 149 1 108 1 5 1 109 6 149 1 110 1 13 1 111 6 149 1 112 6 149 1 113 6 149 1 114 6 149 1 115 1 33 1 120 6 149 1 121 1 41 1 131] 
#[0 2 146 0 139] 
#[0 2 150 0 139] 
#[0 2 154 0 139] 
#[0 6 153 0 3] 
#[1 2 158 0 3 2 158 0 131 6 157 0 137] 
#[0 2 162 0 3 0 131 0 137] 
#[1 6 37 0 139 6 161 1 32] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 6 165 0 183 6 165 0 187 1 121 0 192 6 165 0 194 6 165 0 195 6 165 0 197 6 165 0 201 6 165 0 202 1 145 0 204 6 165 0 210 1 153 0 211 1 157 0 212 1 161 0 213 6 165 0 243 6 165 0 244 6 165 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 2 166 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 169 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 169 1 102 6 169 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[1 0 81 0 2 6 173 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 5 1 1 105 0 249 1 106 5 1 1 107 5 1 1 108 1 5 1 109 5 1 1 110 1 13 1 111 5 1 1 112 5 1 1 113 5 1 1 114 5 1 1 115 1 33 1 120 5 1 1 121 6 177 1 122 5 9 1 123 1 41 1 131] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 6 181 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 6 185 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 3 109 0 139 6 189 0 236] 
#[0 2 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 193 1 105 0 249 1 106 6 193 1 107 6 193 1 108 1 5 1 109 6 193 1 110 1 13 1 111 6 193 1 112 6 193 1 113 6 193 1 114 6 193 1 115 1 33 1 120 6 193 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 6 197 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 201 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 6 205 1 83 6 209 1 84 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 2 174 0 40 6 213 0 49 6 217 1 86] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 221 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 221 1 102 6 221 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 225 1 105 0 249 1 106 6 225 1 107 6 225 1 108 1 5 1 109 6 225 1 110 1 13 1 111 6 225 1 112 6 225 1 113 6 225 1 114 6 225 1 115 1 33 1 120 6 225 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 229 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 229 1 102 6 229 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 6 233 1 105 0 249 1 106 6 233 1 107 6 233 1 108 1 5 1 109 6 233 1 110 1 13 1 111 6 233 1 112 6 233 1 113 6 233 1 114 6 233 1 115 1 33 1 120 6 233 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 2 117 1 105 0 249 1 106 2 117 1 107 2 117 1 108 1 5 1 109 2 117 1 110 1 13 1 111 2 117 1 112 2 117 1 113 2 117 1 114 2 117 1 115 6 237 1 117 1 33 1 120 2 117 1 121 1 41 1 131] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 2 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 165 0 183 6 241 0 187 6 245 0 191 1 121 0 192 1 165 0 194 1 165 0 195 6 241 0 197 6 241 0 201 6 241 0 202 1 145 0 204 6 241 0 210 1 153 0 211 1 157 0 212 1 161 0 213 1 165 0 243 6 241 0 244 6 241 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 2 186 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 2 190 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 2 157 0 2 2 198 0 3 3 5 0 4 2 198 0 5 2 165 0 6 3 5 0 8 2 198 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 6 249 0 3 6 253 0 5] 
#[1 2 202 0 3 2 202 0 5 7 1 0 9] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 2 157 0 2 2 214 0 3 3 5 0 4 2 214 0 5 2 165 0 6 2 214 0 7 3 5 0 8 2 214 0 9 2 173 0 10 0 239 0 11 0 243 0 12 0 247 0 13 0 251 0 14 3 5 0 18 3 5 0 20 2 214 0 30 2 214 0 33 3 5 0 35 2 214 0 36 2 214 0 37 2 214 0 39 2 214 0 40 2 214 0 41 2 214 0 48 2 214 0 49 2 214 0 57 0 255 0 58 2 214 0 59 2 214 0 61 3 5 0 64 3 5 0 71 2 214 0 74 2 214 0 77 2 214 0 78 3 5 0 80 2 214 0 96 2 214 0 97 3 5 0 108 3 5 0 109 2 214 0 112 2 214 0 114 2 214 0 116 2 214 0 121 2 214 0 127 2 214 0 128 3 5 0 129 2 233 0 130 2 214 0 131 1 3 0 132 1 7 0 133 2 214 0 134 3 5 0 135 3 5 0 136 2 214 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 2 214 1 132] 
#[1 2 157 0 2 3 5 0 4 2 218 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 2 218 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 7 5 0 5 7 9 0 131] 
#[1 2 157 0 2 2 222 0 3 3 5 0 4 2 222 0 5 2 165 0 6 2 222 0 7 3 5 0 8 2 222 0 9 2 173 0 10 1 11 0 11 1 15 0 12 1 19 0 13 1 23 0 14 3 5 0 18 3 5 0 20 2 222 0 30 2 222 0 33 3 5 0 35 2 222 0 36 2 222 0 37 2 222 0 39 2 222 0 40 2 222 0 41 2 222 0 48 2 222 0 49 2 222 0 57 1 27 0 58 2 222 0 59 2 222 0 61 3 5 0 64 3 5 0 71 2 222 0 74 2 222 0 77 2 222 0 78 3 5 0 80 2 222 0 96 2 222 0 97 3 5 0 108 3 5 0 109 2 222 0 112 2 222 0 114 2 222 0 116 2 222 0 121 2 222 0 127 2 222 0 128 3 5 0 129 2 233 0 130 2 222 0 131 1 31 0 132 1 35 0 133 2 222 0 134 3 5 0 135 3 5 0 136 2 222 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 2 222 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 7 13 0 213 7 13 1 115 1 181 1 120 1 185 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 7 17 0 213 7 17 1 115 1 181 1 120 1 185 1 131] 
#[0 2 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 3 29 0 139 7 21 0 185] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 7 25 0 213 7 25 1 115 1 181 1 120 1 185 1 131] 
#[0 2 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 3 45 0 213 7 29 0 216 3 45 1 115 1 181 1 120 1 185 1 131] 
#[0 2 234 0 3] 
#[0 7 33 0 3] 
#[1 7 37 0 140 7 41 0 219] 
#[1 2 238 0 3 2 238 0 5 2 238 0 14 3 165 0 16 2 238 0 21 2 238 0 23 2 238 0 27 2 238 0 30 2 238 0 31 2 238 0 33 2 238 0 36 2 238 0 52 2 238 0 57 2 238 0 59 2 238 0 65 2 238 0 74 2 238 0 77 2 238 0 87 2 238 0 89 2 238 0 96 2 238 0 97 2 238 0 104 2 238 0 112 2 238 0 115 2 238 0 118 2 238 0 123 2 238 0 127 2 238 0 128 3 169 0 130 2 238 0 131 2 238 0 132 2 238 0 137 2 238 1 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 7 45 0 183 7 45 0 187 1 121 0 192 7 45 0 194 7 45 0 195 7 45 0 197 7 45 0 201 7 45 0 202 1 145 0 204 7 45 0 210 1 153 0 211 1 157 0 212 1 161 0 213 7 45 0 243 7 45 0 244 7 45 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 7 49 0 76] 
#[0 7 53 0 137] 
#[1 3 109 0 139 7 57 0 236] 
#[1 2 49 0 2 0 50 0 9 7 61 0 196] 
#[1 2 49 0 2 0 50 0 137 7 65 0 196] 
#[1 3 25 0 2 0 186 0 3 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 7 69 0 140 1 157 0 141 1 181 0 143 1 109 0 147 7 73 0 198 1 157 0 212 3 45 0 213 3 49 0 214 3 53 0 215 3 57 0 216 3 61 0 217 3 65 0 218 3 69 0 219 3 45 1 115 1 181 1 120 1 185 1 131] 
#[0 2 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 3 153 0 2 2 246 0 3 3 161 0 4 2 246 0 5 3 157 0 6 0 250 0 7 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 2 246 0 14 2 246 0 16 3 161 0 18 3 161 0 20 2 246 0 21 2 246 0 23 2 246 0 27 2 246 0 30 2 246 0 31 2 246 0 33 3 161 0 35 2 246 0 36 2 246 0 52 2 246 0 57 3 161 0 58 2 246 0 59 3 161 0 64 2 246 0 65 3 161 0 71 2 246 0 74 2 246 0 77 3 161 0 80 2 246 0 87 2 246 0 89 2 246 0 96 2 246 0 97 2 246 0 104 3 161 0 108 3 161 0 109 2 246 0 112 2 246 0 115 2 246 0 118 2 246 0 123 2 246 0 127 2 246 0 128 3 161 0 129 2 246 0 130 2 246 0 131 1 39 0 132 3 161 0 133 3 161 0 135 3 161 0 136 2 246 0 137 3 161 1 125 2 246 1 132] 
#[0 2 250 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 7 77 0 139] 
#[0 2 254 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 7 93 0 210 1 153 0 211 1 157 0 212 7 85 0 213 7 89 0 247 7 93 0 248 7 85 1 115 1 181 1 120 1 185 1 131] 
#[0 7 97 0 77] 
#[0 7 101 0 40] 
#[1 3 2 0 3 3 2 0 24 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 7 105 0 228] 
#[1 3 6 0 3 3 6 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 3 6 0 40 7 121 0 52 3 6 0 88 7 125 0 89 7 129 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 170 7 141 0 176 7 141 0 238 7 141 0 239 7 149 0 240 7 141 0 241 7 141 0 242 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 2 7 141 1 3 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 9 7 201 1 10 7 141 1 11 7 209 1 32 7 141 1 40 7 217 1 41 7 141 1 43 7 225 1 44 7 141 1 47 4 65 1 48 7 141 1 49 4 73 1 50 7 141 1 52 7 141 1 53 7 141 1 55 4 85 1 56 7 141 1 57 4 93 1 58 7 141 1 60 7 141 1 61 7 141 1 63 8 9 1 64 7 141 1 69 4 109 1 70] 
#[0 3 10 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 3 153 0 2 3 14 0 3 3 161 0 4 3 14 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 8 17 0 3 8 21 0 5] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[1 3 153 0 2 3 22 0 3 3 161 0 4 3 22 0 5 3 157 0 6 3 22 0 7 3 161 0 8 3 22 0 9 1 43 0 11 1 47 0 12 1 51 0 13 3 22 0 14 3 22 0 16 3 161 0 18 3 161 0 20 3 22 0 21 3 22 0 23 3 22 0 27 3 22 0 30 3 22 0 31 3 22 0 33 3 161 0 35 3 22 0 36 3 22 0 52 3 22 0 57 1 55 0 58 3 22 0 59 3 161 0 64 3 22 0 65 3 161 0 71 3 22 0 74 3 22 0 77 3 161 0 80 3 22 0 87 3 22 0 89 3 22 0 96 3 22 0 97 3 22 0 104 3 161 0 108 3 161 0 109 3 22 0 112 3 22 0 115 3 22 0 118 3 22 0 123 3 22 0 127 3 22 0 128 3 161 0 129 3 22 0 130 3 22 0 131 1 59 0 132 1 63 0 133 3 161 0 135 3 161 0 136 3 22 0 137 3 161 1 125 3 22 1 132] 
#[1 3 26 0 3 3 26 0 5 3 26 0 14 3 26 0 21 3 26 0 23 3 26 0 27 3 26 0 30 3 26 0 31 3 26 0 33 3 26 0 36 3 26 0 52 3 26 0 57 3 26 0 59 3 26 0 65 3 26 0 74 3 26 0 77 3 26 0 87 3 26 0 89 3 26 0 96 3 26 0 97 3 26 0 104 3 26 0 112 3 26 0 115 3 26 0 118 3 26 0 123 3 26 0 127 3 26 0 128 3 169 0 130 3 26 0 131 3 26 0 132 3 26 0 137 3 26 1 132] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 8 25 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[0 3 30 0 26 0 28 0 32 0 52 0 89 0 139] 
#[1 3 34 0 5 8 29 0 9 3 34 0 132] 
#[1 8 33 0 5 8 37 0 132] 
#[0 3 38 0 5 0 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 8 41 0 26 8 101 0 34 1 53 0 46 1 57 0 52 8 101 0 63 1 61 0 75 8 53 0 76 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 8 57 0 182 8 61 0 183 8 65 0 186 8 69 0 187 1 121 0 192 8 73 0 194 8 77 0 195 8 69 0 197 8 65 0 200 8 69 0 201 8 69 0 202 1 145 0 204 8 69 0 210 1 153 0 211 1 157 0 212 1 161 0 213 8 65 0 221 8 65 0 222 8 65 0 225 1 165 0 243 8 69 0 244 8 69 0 245 8 65 0 249 8 101 0 250 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 8 105 0 14] 
#[0 3 42 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 3 46 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 50 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 54 0 40 0 48 0 56 0 61 0 63 1 132] 
#[0 3 58 0 5 0 137] 
#[0 3 62 0 5 0 137] 
#[0 3 66 1 132] 
#[1 8 109 0 139 8 113 1 129] 
#[0 8 117 0 6] 
#[0 3 70 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 1 205 0 139 8 121 0 167] 
#[0 3 74 0 29] 
#[1 3 217 0 5 8 125 0 137] 
#[0 8 129 0 6] 
#[0 3 78 1 132] 
#[1 4 13 0 27 3 82 0 40 3 82 0 48 4 17 0 52 3 82 0 56 3 82 0 61 4 25 0 89 4 29 0 104 4 33 0 115 4 37 0 118 4 41 0 123 8 133 0 169 8 133 0 170 8 133 0 173 8 133 0 176 8 133 1 2 8 133 1 5 8 133 1 47 4 65 1 48 8 133 1 49 4 73 1 50 8 133 1 55 4 85 1 56 8 133 1 57 4 93 1 58 8 133 1 69 4 109 1 70] 
#[1 3 86 0 23 3 86 0 26 3 86 0 27 3 86 0 28 3 86 0 32 3 86 0 40 3 86 0 43 3 86 0 48 3 86 0 52 3 86 0 61 3 86 0 89 3 86 0 104 3 86 0 115 3 86 0 118 3 86 0 123 8 161 1 37] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 8 165 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 3 90 0 40 8 169 0 48 8 173 1 127] 
#[1 4 169 0 9 1 66 0 14 8 177 1 8] 
#[1 3 94 0 3 3 94 0 21 3 94 0 23 3 94 0 24 3 94 0 26 3 94 0 27 3 94 0 28 3 94 0 32 3 94 0 40 3 94 0 43 3 94 0 48 3 94 0 52 3 94 0 56 3 94 0 61 3 94 0 65 3 94 0 88 3 94 0 89 3 94 0 91 3 94 0 92 3 94 0 93 3 94 0 94 3 94 0 104 3 94 0 113 3 94 0 115 3 94 0 118 3 94 0 123 3 94 0 130 6 21 0 139 8 181 0 172] 
#[0 3 98 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 49 0 2 5 121 0 6 0 50 0 9 0 50 0 137 8 185 0 196] 
#[0 3 102 0 3 0 5 0 9 0 131 0 137] 
#[1 8 189 0 5 8 193 0 137] 
#[1 2 49 0 2 5 121 0 6 0 50 0 137 8 197 0 196] 
#[0 8 201 0 14] 
#[1 3 106 0 21 3 106 0 23 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 32 3 106 0 40 3 106 0 43 3 106 0 48 3 106 0 52 3 106 0 56 3 106 0 61 3 106 0 65 3 106 0 89 3 106 0 104 3 106 0 115 3 106 0 118 3 106 0 123 6 49 0 139 8 205 0 175] 
#[0 3 110 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 8 189 0 5 8 209 0 9] 
#[1 3 114 0 3 3 114 0 21 3 114 0 23 3 114 0 24 3 114 0 26 3 114 0 27 3 114 0 28 3 114 0 32 3 114 0 40 3 114 0 43 3 114 0 48 3 114 0 52 3 114 0 56 3 114 0 61 3 114 0 65 3 114 0 88 3 114 0 89 3 114 0 91 3 114 0 92 3 114 0 93 3 114 0 94 3 114 0 104 3 114 0 113 3 114 0 115 3 114 0 118 3 114 0 123 3 114 0 130 6 37 0 139 6 61 1 32 8 213 1 72] 
#[0 3 118 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 122 0 3 3 122 0 21 3 122 0 23 3 122 0 24 3 122 0 26 3 122 0 27 3 122 0 28 3 122 0 32 3 122 0 40 3 122 0 43 3 122 0 48 3 122 0 52 3 122 0 56 3 122 0 61 3 122 0 65 3 122 0 88 3 122 0 89 3 122 0 91 3 122 0 92 3 122 0 93 3 122 0 94 3 122 0 104 3 122 0 113 3 122 0 115 3 122 0 118 3 122 0 123 1 189 0 130 1 193 0 139 8 217 0 178 1 201 0 240] 
#[0 3 126 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 130 0 3 3 130 0 21 3 130 0 23 3 130 0 24 3 130 0 26 3 130 0 27 3 130 0 28 3 130 0 32 3 130 0 40 3 130 0 43 3 130 0 48 3 130 0 52 3 130 0 56 3 130 0 61 3 130 0 65 3 130 0 88 3 130 0 89 3 130 0 91 3 130 0 92 3 130 0 93 3 130 0 94 3 130 0 104 3 130 0 113 3 130 0 115 3 130 0 118 3 130 0 123 3 130 0 130 6 37 0 139 6 61 1 32 8 213 1 72] 
#[0 3 134 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 8 221 0 137 8 225 0 139 8 229 0 143] 
#[0 8 233 0 137] 
#[1 3 138 0 3 3 138 0 17 3 138 0 21 3 138 0 22 3 138 0 23 3 138 0 24 3 138 0 25 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 38 3 138 0 40 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 47 3 138 0 48 3 138 0 51 3 138 0 52 3 138 0 56 3 138 0 61 3 138 0 62 3 138 0 65 3 138 0 67 3 138 0 70 3 138 0 73 3 138 0 82 3 138 0 83 3 138 0 86 3 138 0 87 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 100 3 138 0 101 3 138 0 104 3 138 0 105 3 138 0 110 3 138 0 111 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 120 3 138 0 123 3 138 0 124 3 138 0 130 3 138 0 139 8 237 1 23] 
#[0 3 142 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 138 0 3 3 138 0 17 3 138 0 21 3 138 0 22 3 138 0 23 3 138 0 24 3 138 0 25 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 38 3 138 0 40 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 47 3 138 0 48 3 138 0 51 3 138 0 52 3 138 0 56 3 138 0 61 3 138 0 62 3 138 0 65 3 138 0 67 3 138 0 70 3 138 0 73 3 138 0 82 3 138 0 83 3 138 0 86 3 138 0 87 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 100 3 138 0 101 3 138 0 104 3 138 0 105 3 138 0 110 3 138 0 111 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 120 3 138 0 123 3 138 0 124 3 138 0 130 3 138 0 139 8 241 1 23] 
#[0 3 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 3 150 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 153 0 2 3 161 0 4 3 154 0 5 3 157 0 6 8 245 0 7 3 161 0 8 3 154 0 9 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 8 249 0 39 3 158 0 40 8 253 1 95] 
#[1 1 250 0 39 1 250 0 40 9 1 0 137 9 5 1 88] 
#[0 3 162 0 39 0 40 0 137] 
#[0 9 9 0 9] 
#[0 9 13 0 5] 
#[1 3 166 0 5 3 170 0 9] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 9 25 0 37 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 9 25 0 116 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 9 25 1 100 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 9 29 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[0 3 174 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 4 165 0 27 4 165 0 81 4 165 0 123 1 62 0 139 9 33 1 31 4 165 1 34] 
#[1 3 178 0 3 8 189 0 5 9 37 0 9 3 178 0 131 3 178 0 137] 
#[1 3 182 0 14 3 165 0 16 3 182 0 21 3 182 0 23 3 182 0 27 3 182 0 30 3 182 0 33 3 182 0 36 3 182 0 52 3 182 0 57 3 182 0 59 3 182 0 65 3 182 0 74 3 182 0 77 3 182 0 89 3 182 0 96 3 182 0 97 3 182 0 104 3 182 0 112 3 182 0 115 3 182 0 118 3 182 0 123 3 182 0 127 3 182 0 128 3 169 0 130 3 182 0 137] 
#[1 9 41 0 39 3 186 0 40 3 186 0 41 3 186 0 48 3 186 0 49 3 186 0 61 3 186 0 78 3 186 0 121 3 186 0 137 3 186 1 132] 
#[0 3 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 9 45 0 3 6 253 0 5] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 9 49 1 105 0 249 1 106 9 49 1 107 9 49 1 108 1 5 1 109 9 49 1 110 1 13 1 111 9 49 1 112 9 49 1 113 9 49 1 114 9 49 1 115 1 33 1 120 9 49 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 9 53 1 105 0 249 1 106 9 53 1 107 9 53 1 108 1 5 1 109 9 53 1 110 1 13 1 111 9 53 1 112 9 53 1 113 9 53 1 114 9 53 1 115 1 33 1 120 9 53 1 121 1 41 1 131] 
#[1 5 121 0 6 3 194 0 39 3 194 0 40 3 194 0 41 3 194 0 48 3 194 0 49 3 194 0 61 3 194 0 78 3 194 0 121 3 194 0 137 3 194 1 132] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 198 0 39 3 198 0 40 3 198 0 41 3 198 0 48 3 198 0 49 3 5 0 58 3 198 0 61 3 5 0 64 3 5 0 71 3 198 0 78 3 5 0 80 3 5 0 108 3 5 0 109 3 198 0 121 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 3 198 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125 3 198 1 132] 
#[1 3 109 0 139 9 57 0 236] 
#[1 9 61 0 39 3 202 0 40 3 202 0 49 4 125 0 137 9 65 1 85] 
#[1 9 61 0 39 3 202 0 40 3 202 0 49 6 197 0 78 9 69 1 84 9 73 1 85] 
#[0 3 206 0 39 0 40 0 49 0 78] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 9 77 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[0 9 81 0 40] 
#[0 3 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 2 157 0 2 3 5 0 4 3 214 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 214 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[0 3 218 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 2 157 0 2 3 5 0 4 3 222 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 222 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[0 3 226 0 5 0 131] 
#[1 3 230 0 5 0 214 0 16 0 214 0 130 3 230 0 132] 
#[1 9 85 0 5 3 234 0 132 9 89 0 190] 
#[0 3 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 5 1 1 105 0 249 1 106 5 1 1 107 5 1 1 108 1 5 1 109 5 1 1 110 1 13 1 111 5 1 1 112 5 1 1 113 5 1 1 114 5 1 1 115 1 33 1 120 5 1 1 121 9 93 1 123 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 9 97 1 105 0 249 1 106 9 97 1 107 9 97 1 108 1 5 1 109 9 97 1 110 1 13 1 111 9 97 1 112 9 97 1 113 9 97 1 114 9 97 1 115 1 33 1 120 9 97 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 9 101 1 105 0 249 1 106 9 101 1 107 9 101 1 108 1 5 1 109 9 101 1 110 1 13 1 111 9 101 1 112 9 101 1 113 9 101 1 114 9 101 1 115 1 33 1 120 9 101 1 121 1 41 1 131] 
#[0 3 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 3 153 0 2 3 246 0 3 3 161 0 4 3 246 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 3 153 0 2 3 250 0 3 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 250 0 137 3 161 1 125] 
#[0 3 254 0 3 0 5] 
#[1 3 153 0 2 4 2 0 3 3 161 0 4 4 2 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[0 4 6 0 3 0 5] 
#[0 4 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[0 5 41 0 9] 
#[0 4 14 0 3 0 137] 
#[1 3 165 0 16 5 85 0 77 3 169 0 130 2 14 0 137 9 105 1 4] 
#[0 4 18 0 137] 
#[1 3 138 0 3 3 138 0 5 3 138 0 14 3 138 0 16 3 138 0 17 3 138 0 21 3 138 0 22 3 138 0 23 3 138 0 24 3 138 0 25 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 30 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 36 3 138 0 38 3 138 0 40 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 47 3 138 0 48 3 138 0 51 3 138 0 52 3 138 0 56 3 138 0 57 3 138 0 59 3 138 0 61 3 138 0 62 3 138 0 65 3 138 0 67 3 138 0 70 3 138 0 73 3 138 0 74 3 138 0 77 3 138 0 82 3 138 0 83 3 138 0 86 3 138 0 87 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 96 3 138 0 97 3 138 0 100 3 138 0 101 3 138 0 104 3 138 0 105 3 138 0 110 3 138 0 111 3 138 0 112 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 120 3 138 0 123 3 138 0 124 3 138 0 127 3 138 0 128 3 138 0 130 3 138 0 131 3 138 0 132 3 138 0 137 3 138 0 139 9 109 1 23 3 138 1 132] 
#[1 5 121 0 6 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 9 113 0 203 5 141 0 227 5 145 0 237] 
#[0 9 117 0 9] 
#[0 9 121 0 137] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 1 67 0 5 0 198 0 6 0 198 0 8 5 41 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[0 9 129 0 3] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 3 177 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 9 133 0 179 1 18 1 132] 
#[0 4 22 0 5 0 131] 
#[1 3 153 0 2 3 161 0 4 4 26 0 5 3 157 0 6 0 250 0 7 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 4 26 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 9 137 0 5 9 141 0 131] 
#[0 4 30 0 5 0 131] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 9 145 0 27 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 9 149 0 183 9 149 0 187 1 121 0 192 9 149 0 194 9 149 0 195 9 149 0 197 9 149 0 201 9 149 0 202 1 145 0 204 9 149 0 210 1 153 0 211 1 157 0 212 1 161 0 213 9 149 0 243 9 149 0 244 9 149 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 4 34 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 4 38 0 3 9 153 0 24 4 38 0 40 9 157 0 88 9 161 0 92 9 165 0 93 9 169 0 94 9 173 0 113 9 177 0 205 9 181 0 229 9 181 0 230 9 181 0 231 9 181 0 232 9 181 0 233] 
#[1 9 201 0 28 9 205 0 32 4 17 0 52 9 209 0 79 4 25 0 89 7 129 0 91 4 33 0 115 4 41 0 123 9 213 1 10 9 217 1 48 9 221 1 50 9 225 1 56 9 229 1 58 9 233 1 70] 
#[1 3 109 0 139 9 237 0 236] 
#[1 3 109 0 139 9 241 0 236] 
#[1 3 109 0 139 9 245 0 236] 
#[1 3 109 0 139 9 249 0 236] 
#[0 9 253 0 139] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 1 0 26 7 113 0 28 7 117 0 32 4 17 0 52 4 25 0 89 10 5 1 0 10 9 1 1 10 13 1 2 10 17 1 3 10 21 1 5 10 25 1 6 10 29 1 7 10 5 1 40 7 217 1 41 10 9 1 43 7 225 1 44 10 13 1 47 4 65 1 48 10 13 1 49 4 73 1 50 10 17 1 52 10 17 1 53 10 21 1 55 4 85 1 56 10 21 1 57 4 93 1 58 10 25 1 60 10 25 1 61 10 29 1 63 8 9 1 64] 
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
#[1 8 189 0 5 10 33 0 9] 
#[0 4 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 118 0 3 4 118 0 24 4 118 0 26 4 118 0 27 4 118 0 28 4 118 0 32 4 118 0 40 6 89 0 44 6 93 0 51 4 118 0 52 4 118 0 88 4 118 0 89 4 118 0 91 4 118 0 92 4 118 0 93 4 118 0 94 4 118 0 113 4 118 0 115 4 118 0 118 4 118 0 123 4 118 0 130 4 118 0 139 10 37 1 27] 
#[0 4 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 126 0 3 4 126 0 24 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 32 4 126 0 40 6 89 0 44 6 93 0 51 4 126 0 52 4 126 0 88 4 126 0 89 4 126 0 91 4 126 0 92 4 126 0 93 4 126 0 94 4 126 0 113 4 126 0 115 4 126 0 118 4 126 0 123 4 126 0 130 4 126 0 139 10 41 1 27] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 166 0 3 4 166 0 24 4 166 0 26 4 166 0 27 4 166 0 28 4 166 0 32 4 166 0 40 6 89 0 44 6 93 0 51 4 166 0 52 4 166 0 88 4 166 0 89 4 166 0 91 4 166 0 92 4 166 0 93 4 166 0 94 4 166 0 113 4 166 0 115 4 166 0 118 4 166 0 123 4 166 0 130 4 166 0 139 10 45 1 27] 
#[0 4 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 10 49 0 213 10 49 1 115 1 181 1 120 1 185 1 131] 
#[0 4 178 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 10 53 0 183 10 53 0 187 1 121 0 192 10 53 0 194 10 53 0 195 10 53 0 197 10 53 0 201 10 53 0 202 1 145 0 204 10 53 0 210 1 153 0 211 1 157 0 212 1 161 0 213 10 53 0 243 10 53 0 244 10 53 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[1 5 181 0 139 10 57 0 181] 
#[0 4 182 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[1 4 186 0 2 4 186 0 17 4 186 0 26 4 186 0 27 4 186 0 28 4 186 0 31 4 186 0 32 4 186 0 40 4 186 0 52 4 186 0 54 10 61 0 77 4 186 0 87 4 186 0 88 4 186 0 89 4 186 0 91 4 186 0 92 4 186 0 93 4 186 0 94 4 186 0 106 4 186 0 113 4 186 0 115 4 186 0 118 4 186 0 123 4 186 0 130 4 186 0 137 4 186 0 139 10 65 0 223] 
#[0 4 190 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 4 194 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 10 69 0 2 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 32 4 198 0 40 4 198 0 52 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 139 10 73 0 234] 
#[0 4 202 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 132] 
#[1 0 210 0 16 0 210 0 130 10 77 0 137] 
#[1 10 81 0 31 10 81 0 87 1 26 0 137 10 81 0 193] 
#[1 0 214 0 16 10 85 0 31 10 85 0 87 0 214 0 130 1 26 0 137 10 85 0 193] 
#[1 4 206 0 3 0 222 0 16 4 206 0 21 4 206 0 23 4 206 0 24 4 206 0 26 4 206 0 27 4 206 0 28 4 206 0 32 4 206 0 40 4 206 0 43 4 206 0 48 4 206 0 52 4 206 0 56 4 206 0 61 4 206 0 65 4 206 0 88 4 206 0 89 4 206 0 91 4 206 0 92 4 206 0 93 4 206 0 94 4 206 0 104 4 206 0 113 4 206 0 115 4 206 0 118 4 206 0 123 1 71 0 130 4 206 0 139 4 206 1 132] 
#[1 4 210 0 3 0 226 0 16 4 210 0 21 4 210 0 23 4 210 0 24 4 210 0 26 4 210 0 27 4 210 0 28 4 210 0 32 4 210 0 40 4 210 0 43 4 210 0 48 4 210 0 52 4 210 0 56 4 210 0 61 4 210 0 65 4 210 0 88 4 210 0 89 4 210 0 91 4 210 0 92 4 210 0 93 4 210 0 94 4 210 0 104 4 210 0 113 4 210 0 115 4 210 0 118 4 210 0 123 1 75 0 130 4 210 0 139 4 210 1 132] 
#[0 4 214 0 31 0 87 0 137] 
#[0 4 218 0 31 0 87 0 137] 
#[0 4 222 0 31 0 87 0 137] 
#[0 4 226 0 31 0 87 0 137] 
#[0 4 230 0 31 0 87 0 137] 
#[1 10 69 0 2 4 198 0 26 4 234 0 31 4 198 0 40 4 198 0 52 4 234 0 87 4 198 0 89 4 198 0 91 4 198 0 130 4 234 0 137 10 89 0 234] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 8 41 0 26 8 101 0 34 1 53 0 46 1 57 0 52 8 101 0 63 1 61 0 75 8 53 0 76 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 10 93 0 182 8 61 0 183 8 65 0 186 8 69 0 187 1 121 0 192 8 73 0 194 8 77 0 195 8 69 0 197 8 65 0 200 8 69 0 201 8 69 0 202 1 145 0 204 8 69 0 210 1 153 0 211 1 157 0 212 1 161 0 213 8 65 0 221 8 65 0 222 8 65 0 225 1 165 0 243 8 69 0 244 8 69 0 245 8 65 0 249 8 101 0 250 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 4 238 0 5 0 137] 
#[1 10 97 0 5 10 101 0 137] 
#[0 4 242 1 132] 
#[1 4 246 0 5 3 189 0 6 4 246 0 137] 
#[0 4 250 0 40] 
#[0 4 254 1 132] 
#[0 5 2 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 10 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 14 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 18 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 22 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 26 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 10 105 0 23 10 1 0 26 4 13 0 27 7 113 0 28 7 117 0 32 5 30 0 40 5 229 0 43 5 30 0 48 4 17 0 52 5 30 0 61 4 25 0 89 4 29 0 104 4 33 0 115 4 37 0 118 4 41 0 123 10 125 0 170 10 125 0 173 10 125 0 176 10 121 1 36 10 125 1 38 10 125 1 39 10 133 1 40 10 137 1 41 10 125 1 42 10 145 1 43 10 149 1 44 10 125 1 46 4 61 1 47 4 65 1 48 4 69 1 49 4 73 1 50 10 125 1 51 10 161 1 52 10 165 1 53 10 125 1 54 4 81 1 55 4 85 1 56 4 89 1 57 4 93 1 58 10 125 1 59 10 177 1 60 10 181 1 61 10 125 1 62 10 189 1 63 10 193 1 64 10 125 1 69 4 109 1 70 10 125 1 128] 
#[1 5 34 0 40 5 34 0 48 4 125 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 10 205 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 5 253 0 40 10 209 1 130] 
#[0 10 213 0 14] 
#[0 5 38 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 169 0 9 1 66 0 137 10 217 1 8] 
#[0 10 221 0 139] 
#[0 5 42 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 10 225 0 137] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 10 229 0 213 10 229 1 115 1 181 1 120 1 185 1 131] 
#[0 5 46 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 10 233 0 183 10 233 0 187 1 121 0 192 10 233 0 194 10 233 0 195 10 233 0 197 10 233 0 201 10 233 0 202 1 145 0 204 10 233 0 210 1 153 0 211 1 157 0 212 1 161 0 213 10 233 0 243 10 233 0 244 10 233 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 5 50 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 58 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[1 10 237 0 72 10 241 0 137] 
#[1 10 245 0 72 10 249 0 137] 
#[0 5 62 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[1 5 66 0 3 11 105 0 17 5 66 0 21 11 105 0 22 5 66 0 23 5 66 0 24 11 105 0 25 5 66 0 26 5 66 0 27 5 66 0 28 11 9 0 31 5 66 0 32 11 13 0 33 11 105 0 38 5 66 0 40 11 105 0 42 5 66 0 43 6 89 0 44 11 105 0 45 11 105 0 47 5 66 0 48 6 93 0 51 5 66 0 52 5 66 0 56 5 66 0 61 11 105 0 62 5 66 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 5 66 0 88 5 66 0 89 5 66 0 91 5 66 0 92 5 66 0 93 5 66 0 94 11 105 0 100 11 105 0 101 5 66 0 104 11 105 0 105 11 105 0 110 11 105 0 111 5 66 0 113 5 66 0 115 5 66 0 118 11 105 0 120 5 66 0 123 11 105 0 124 5 66 0 130 5 66 0 139 11 93 1 25 11 93 1 26 11 93 1 27 11 105 1 28] 
#[1 5 70 0 3 11 105 0 17 5 70 0 21 11 105 0 22 5 70 0 23 5 70 0 24 11 105 0 25 5 70 0 26 5 70 0 27 5 70 0 28 11 9 0 31 5 70 0 32 11 13 0 33 11 105 0 38 5 70 0 40 11 105 0 42 5 70 0 43 6 89 0 44 11 105 0 45 11 105 0 47 5 70 0 48 6 93 0 51 5 70 0 52 5 70 0 56 5 70 0 61 11 105 0 62 5 70 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 5 70 0 88 5 70 0 89 5 70 0 91 5 70 0 92 5 70 0 93 5 70 0 94 11 105 0 100 11 105 0 101 5 70 0 104 11 105 0 105 11 105 0 110 11 105 0 111 5 70 0 113 5 70 0 115 5 70 0 118 11 105 0 120 5 70 0 123 11 105 0 124 5 70 0 130 5 70 0 139 11 93 1 25 11 93 1 26 11 93 1 27 11 105 1 28] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 11 109 0 213 11 109 1 115 1 181 1 120 1 185 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 11 113 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[0 11 117 0 40] 
#[1 3 25 0 2 1 49 0 15 2 234 0 39 2 234 0 40 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 6 117 0 213 11 121 1 91 6 133 1 92 6 137 1 93 6 141 1 94 6 117 1 115 1 181 1 120 1 185 1 131] 
#[0 5 74 0 39 0 40] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 11 125 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 11 125 1 102 11 125 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 6 117 0 213 11 129 1 94 6 117 1 115 1 181 1 120 1 185 1 131] 
#[0 5 78 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 131] 
#[0 5 82 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 11 133 1 105 0 249 1 106 11 133 1 107 11 133 1 108 1 5 1 109 11 133 1 110 1 13 1 111 11 133 1 112 11 133 1 113 11 133 1 114 11 133 1 115 1 33 1 120 11 133 1 121 1 41 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 11 137 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 11 137 1 102 11 137 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[0 5 86 0 3 0 131 0 137] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 11 141 0 183 11 141 0 187 1 121 0 192 11 141 0 194 11 141 0 195 11 141 0 197 11 141 0 201 11 141 0 202 1 145 0 204 11 141 0 210 1 153 0 211 1 157 0 212 1 161 0 213 11 141 0 243 11 141 0 244 11 141 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 11 145 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 11 145 1 102 11 145 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[0 5 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 11 149 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 11 153 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 5 121 0 6 4 169 0 9 1 66 0 36 11 157 1 8] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 11 161 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[0 5 94 0 40 0 49] 
#[0 5 98 0 39 0 40 0 49 0 78] 
#[0 5 102 0 40 0 49] 
#[1 5 106 0 40 4 125 0 137] 
#[0 5 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 165 0 183 11 165 0 187 1 121 0 192 1 165 0 194 1 165 0 195 11 165 0 197 11 165 0 201 11 165 0 202 1 145 0 204 11 165 0 210 1 153 0 211 1 157 0 212 1 161 0 213 1 165 0 243 11 165 0 244 11 165 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 11 169 0 132] 
#[1 5 114 0 3 5 114 0 5 7 1 0 9] 
#[1 2 157 0 2 5 118 0 3 3 5 0 4 5 118 0 5 2 165 0 6 3 5 0 8 5 118 0 9 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 2 157 0 2 3 5 0 4 5 122 0 5 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 5 122 0 131 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[0 11 173 0 137] 
#[1 5 126 0 3 5 126 0 5 5 126 0 14 5 126 0 16 11 105 0 17 5 126 0 21 11 105 0 22 5 126 0 23 5 126 0 24 11 105 0 25 5 126 0 26 5 126 0 27 5 126 0 28 5 126 0 30 1 79 0 31 5 126 0 32 1 83 0 33 5 126 0 36 11 105 0 38 5 126 0 40 11 105 0 42 5 126 0 43 6 89 0 44 11 105 0 45 11 105 0 47 5 126 0 48 6 93 0 51 5 126 0 52 5 126 0 56 5 126 0 57 5 126 0 59 5 126 0 61 11 105 0 62 5 126 0 65 11 105 0 67 11 41 0 70 11 105 0 73 5 126 0 74 5 126 0 77 11 105 0 82 11 105 0 83 11 105 0 86 1 87 0 87 5 126 0 88 5 126 0 89 5 126 0 91 5 126 0 92 5 126 0 93 5 126 0 94 5 126 0 96 5 126 0 97 11 105 0 100 11 105 0 101 5 126 0 104 11 105 0 105 11 105 0 110 11 105 0 111 5 126 0 112 5 126 0 113 5 126 0 115 5 126 0 118 11 105 0 120 5 126 0 123 11 105 0 124 5 126 0 127 5 126 0 128 5 126 0 130 5 126 0 131 5 126 0 132 5 126 0 137 5 126 0 139 11 93 1 25 11 93 1 26 11 93 1 27 11 105 1 28 5 126 1 132] 
#[0 11 177 0 40] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 11 181 0 183 11 181 0 187 1 121 0 192 11 181 0 194 11 181 0 195 11 181 0 197 11 181 0 201 11 181 0 202 1 145 0 204 11 181 0 210 1 153 0 211 1 157 0 212 1 161 0 213 11 181 0 243 11 181 0 244 11 181 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[0 5 130 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[1 11 185 0 140 11 189 0 199] 
#[0 5 134 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[0 5 138 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 11 193 0 210 1 153 0 211 1 157 0 212 7 85 0 213 11 193 0 248 7 85 1 115 1 181 1 120 1 185 1 131] 
#[0 5 142 0 77] 
#[0 5 146 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 5 150 0 3 5 150 0 5 5 150 0 14 3 165 0 16 5 150 0 21 5 150 0 23 5 150 0 27 5 150 0 30 5 150 0 31 5 150 0 33 5 150 0 36 5 150 0 52 5 150 0 57 5 150 0 59 5 150 0 65 5 150 0 74 5 150 0 77 5 150 0 87 5 150 0 89 5 150 0 96 5 150 0 97 5 150 0 104 5 150 0 112 5 150 0 115 5 150 0 118 5 150 0 123 5 150 0 127 5 150 0 128 3 169 0 130 5 150 0 131 5 150 0 132 5 150 0 137 5 150 1 132] 
#[0 11 197 0 139] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 201 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 205 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 209 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 11 213 0 237] 
#[1 11 217 0 88 11 221 0 92] 
#[0 5 154 0 3 0 40] 
#[0 5 158 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 162 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 166 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 170 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 174 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 3 109 0 139 11 225 0 236] 
#[1 3 109 0 139 11 229 0 236] 
#[1 3 109 0 139 11 233 0 236] 
#[0 5 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 182 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 186 0 3 5 186 0 21 5 186 0 23 5 186 0 24 5 186 0 26 5 186 0 27 5 186 0 28 5 186 0 32 5 186 0 40 6 89 0 44 6 93 0 51 5 186 0 52 5 186 0 65 5 186 0 88 5 186 0 89 5 186 0 91 5 186 0 92 5 186 0 93 5 186 0 94 5 186 0 104 5 186 0 113 5 186 0 115 5 186 0 118 5 186 0 123 5 186 0 130 5 186 0 139 6 97 1 27] 
#[0 5 190 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 194 0 3 5 194 0 21 5 194 0 23 5 194 0 24 5 194 0 26 5 194 0 27 5 194 0 28 5 194 0 32 5 194 0 40 6 89 0 44 6 93 0 51 5 194 0 52 5 194 0 65 5 194 0 88 5 194 0 89 5 194 0 91 5 194 0 92 5 194 0 93 5 194 0 94 5 194 0 104 5 194 0 113 5 194 0 115 5 194 0 118 5 194 0 123 5 194 0 130 5 194 0 139 6 105 1 27] 
#[0 5 198 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 49 0 2 5 121 0 6 0 50 0 137 11 237 0 196] 
#[1 11 241 0 2 5 121 0 6 5 202 0 137 11 245 1 45] 
#[1 2 49 0 2 5 121 0 6 0 50 0 9 11 249 0 14 0 50 0 137 8 185 0 196] 
#[1 2 49 0 2 5 121 0 6 11 253 0 14 0 50 0 137 8 197 0 196] 
#[1 5 206 0 9 5 206 0 30 5 206 0 33 5 206 0 57 5 206 0 59 5 206 0 74 5 206 0 96 5 206 0 97 5 206 0 112 5 206 0 127 5 206 0 128 12 1 0 130 5 206 0 137 12 5 1 13] 
#[1 9 201 0 28 9 205 0 32 4 17 0 52 9 209 0 79 4 25 0 89 9 217 1 48 9 221 1 50 9 225 1 56 9 229 1 58] 
#[0 5 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 218 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 222 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 234 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 45 0 2 1 49 0 15 0 18 0 19 1 53 0 46 1 57 0 52 1 61 0 75 1 145 0 85 1 69 0 89 0 7 0 98 1 77 0 99 1 81 0 107 1 85 0 118 0 153 0 130 1 89 0 135 1 93 0 136 1 97 0 138 1 101 0 140 1 157 0 141 1 181 0 143 1 109 0 147 12 9 0 183 12 9 0 187 1 121 0 192 12 9 0 194 12 9 0 195 12 9 0 197 12 9 0 201 12 9 0 202 1 145 0 204 12 9 0 210 1 153 0 211 1 157 0 212 1 161 0 213 12 9 0 243 12 9 0 244 12 9 0 245 1 161 1 115 1 181 1 120 1 185 1 131] 
#[1 3 138 0 3 3 138 0 17 3 138 0 22 3 138 0 23 3 138 0 24 3 138 0 25 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 38 3 138 0 40 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 47 3 138 0 48 3 138 0 51 3 138 0 52 3 138 0 61 3 138 0 62 3 138 0 67 3 138 0 70 3 138 0 73 3 138 0 82 3 138 0 83 3 138 0 86 3 138 0 87 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 100 3 138 0 101 3 138 0 104 3 138 0 105 3 138 0 110 3 138 0 111 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 120 3 138 0 123 3 138 0 124 3 138 0 130 3 138 0 139 12 13 1 23] 
#[1 3 138 0 3 3 138 0 17 3 138 0 22 3 138 0 23 3 138 0 24 3 138 0 25 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 38 3 138 0 40 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 47 3 138 0 48 3 138 0 51 3 138 0 52 3 138 0 61 3 138 0 62 3 138 0 67 3 138 0 70 3 138 0 73 3 138 0 82 3 138 0 83 3 138 0 86 3 138 0 87 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 100 3 138 0 101 3 138 0 104 3 138 0 105 3 138 0 110 3 138 0 111 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 120 3 138 0 123 3 138 0 124 3 138 0 130 3 138 0 139 12 17 1 23] 
#[1 3 138 0 3 3 138 0 17 3 138 0 22 3 138 0 23 3 138 0 24 3 138 0 25 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 38 3 138 0 40 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 47 3 138 0 48 3 138 0 51 3 138 0 52 3 138 0 61 3 138 0 62 3 138 0 67 3 138 0 70 3 138 0 73 3 138 0 82 3 138 0 83 3 138 0 86 3 138 0 87 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 100 3 138 0 101 3 138 0 104 3 138 0 105 3 138 0 110 3 138 0 111 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 120 3 138 0 123 3 138 0 124 3 138 0 130 3 138 0 139 12 21 1 23] 
#[1 3 153 0 2 5 238 0 3 3 161 0 4 5 238 0 5 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 5 242 0 5 3 165 0 16 3 169 0 130 5 242 0 132] 
#[0 5 246 0 5 0 132] 
#[0 12 25 0 139] 
#[1 10 69 0 2 12 41 0 17 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 31 4 198 0 32 4 198 0 40 4 198 0 52 12 33 0 54 4 198 0 87 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 12 41 0 106 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 137 4 198 0 139 12 41 0 224 12 45 0 234] 
#[1 12 49 0 140 12 53 0 192 12 57 0 235] 
#[1 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 12 61 0 227 5 145 0 237] 
#[0 5 250 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 132] 
#[0 12 65 0 137] 
#[0 12 69 0 137] 
#[1 5 254 0 26 5 254 0 40 5 254 0 52 5 254 0 89 5 254 0 91 12 73 0 130 12 77 0 251] 
#[0 6 2 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 132] 
#[0 12 81 0 139] 
#[0 6 6 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 12 85 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[0 6 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 22 0 40 0 48 0 61] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 89 0 44 6 93 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 37 1 27 12 89 1 65 2 13 1 66] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 89 0 44 6 93 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 41 1 27 12 93 1 65 2 13 1 66] 
#[0 6 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 54 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 97 1 65 2 13 1 66] 
#[0 6 58 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 62 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 66 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 101 1 65 2 13 1 66] 
#[0 6 70 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 74 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 89 0 44 6 93 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 45 1 27 12 105 1 65 2 13 1 66] 
#[0 6 78 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 82 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 86 0 40 4 125 0 137] 
#[0 6 90 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 12 109 0 213 12 109 1 115 1 181 1 120 1 185 1 131] 
#[0 12 113 0 137] 
#[0 6 94 0 3 0 5 0 9 0 131 0 137] 
#[1 6 98 0 3 6 98 0 17 6 98 0 21 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 38 6 98 0 40 6 98 0 42 6 98 0 44 6 98 0 45 6 98 0 47 6 98 0 48 6 98 0 51 6 98 0 52 6 98 0 56 6 98 0 61 6 98 0 62 6 98 0 65 6 98 0 67 6 98 0 70 6 98 0 73 6 98 0 82 6 98 0 83 6 98 0 86 6 98 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 100 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 110 6 98 0 111 6 98 0 113 6 98 0 115 6 98 0 118 6 98 0 120 6 98 0 123 6 98 0 124 6 98 0 130 6 98 0 139 12 117 1 24] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 12 125 0 31 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 6 102 0 137 12 125 0 226 3 161 1 125] 
#[1 1 26 0 14 3 165 0 16 12 129 0 31 12 129 0 87 3 169 0 130 1 26 0 137 12 129 0 193] 
#[0 12 133 0 143] 
#[0 6 106 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 12 137 0 143] 
#[0 6 110 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 6 114 0 137] 
#[0 6 118 0 137] 
#[0 6 122 0 137] 
#[1 6 126 0 137 12 141 0 143] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 12 145 0 213 12 145 1 115 1 181 1 120 1 185 1 131] 
#[0 6 130 0 137] 
#[0 6 134 0 137] 
#[0 6 138 0 137] 
#[0 6 142 0 137] 
#[0 6 146 0 137] 
#[0 6 150 0 137] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 12 149 0 213 12 149 1 115 1 181 1 120 1 185 1 131] 
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
#[0 6 202 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 6 206 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 6 210 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 12 153 0 137] 
#[1 3 153 0 2 3 161 0 4 6 214 0 5 3 157 0 6 3 161 0 8 6 214 0 9 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 6 218 0 40 4 125 0 137] 
#[0 6 222 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 6 226 0 39 0 40 0 137] 
#[0 6 230 0 39 0 40 0 137] 
#[1 6 234 0 5 6 238 0 9] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 3 5 0 35 12 157 0 36 3 5 0 58 3 5 0 64 3 5 0 71 3 5 0 80 3 5 0 108 3 5 0 109 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[0 6 242 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 6 246 0 3 12 161 0 14 3 165 0 16 3 169 0 130 6 246 0 131 6 246 0 137 12 165 1 33] 
#[0 6 250 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[0 6 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 7 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[0 12 169 0 36] 
#[1 7 6 0 40 7 6 0 49 4 125 0 137] 
#[1 7 10 0 5 0 214 0 16 0 214 0 130 7 10 0 132] 
#[0 7 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 132] 
#[1 3 138 0 3 3 138 0 5 3 138 0 14 3 138 0 16 3 138 0 17 3 138 0 21 3 138 0 22 3 138 0 23 3 138 0 24 3 138 0 25 3 138 0 26 3 138 0 27 3 138 0 28 3 138 0 30 3 138 0 31 3 138 0 32 3 138 0 33 3 138 0 36 3 138 0 38 3 138 0 40 3 138 0 42 3 138 0 43 3 138 0 44 3 138 0 45 3 138 0 47 3 138 0 48 3 138 0 51 3 138 0 52 3 138 0 56 3 138 0 57 3 138 0 59 3 138 0 61 3 138 0 62 3 138 0 65 3 138 0 67 3 138 0 70 3 138 0 73 3 138 0 74 3 138 0 77 3 138 0 82 3 138 0 83 3 138 0 86 3 138 0 87 3 138 0 88 3 138 0 89 3 138 0 91 3 138 0 92 3 138 0 93 3 138 0 94 3 138 0 96 3 138 0 97 3 138 0 100 3 138 0 101 3 138 0 104 3 138 0 105 3 138 0 110 3 138 0 111 3 138 0 112 3 138 0 113 3 138 0 115 3 138 0 118 3 138 0 120 3 138 0 123 3 138 0 124 3 138 0 127 3 138 0 128 3 138 0 130 3 138 0 131 3 138 0 132 3 138 0 137 3 138 0 139 12 173 1 23 3 138 1 132] 
#[0 7 18 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 132] 
#[1 3 165 0 16 3 169 0 130 12 177 0 137] 
#[0 7 22 0 3 0 5] 
#[1 7 26 0 3 12 181 0 5] 
#[0 7 30 0 5 0 131] 
#[1 4 169 0 9 1 66 0 77 12 185 1 8] 
#[1 7 34 0 3 7 34 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 34 0 40 7 121 0 52 7 34 0 88 7 125 0 89 7 129 0 91 7 34 0 92 7 34 0 93 7 34 0 94 7 34 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 170 7 141 0 176 7 141 0 238 7 141 0 239 7 149 0 240 7 141 0 241 7 141 0 242 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 2 7 141 1 3 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 9 7 201 1 10 7 141 1 11 7 209 1 32 7 141 1 40 7 217 1 41 7 141 1 43 7 225 1 44 7 141 1 47 4 65 1 48 7 141 1 49 4 73 1 50 7 141 1 52 7 141 1 53 7 141 1 55 4 85 1 56 7 141 1 57 4 93 1 58 7 141 1 60 7 141 1 61 7 141 1 63 8 9 1 64 7 141 1 69 4 109 1 70] 
#[1 7 38 0 3 7 38 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 38 0 40 7 121 0 52 7 38 0 88 7 125 0 89 7 129 0 91 7 38 0 92 7 38 0 93 7 38 0 94 7 38 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 170 7 141 0 176 7 141 0 238 7 141 0 239 7 149 0 240 7 141 0 241 7 141 0 242 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 2 7 141 1 3 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 9 7 201 1 10 7 141 1 11 7 209 1 32 7 141 1 40 7 217 1 41 7 141 1 43 7 225 1 44 7 141 1 47 4 65 1 48 7 141 1 49 4 73 1 50 7 141 1 52 7 141 1 53 7 141 1 55 4 85 1 56 7 141 1 57 4 93 1 58 7 141 1 60 7 141 1 61 7 141 1 63 8 9 1 64 7 141 1 69 4 109 1 70] 
#[1 7 42 0 3 7 42 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 42 0 40 7 121 0 52 7 42 0 88 7 125 0 89 7 129 0 91 7 42 0 92 7 42 0 93 7 42 0 94 7 42 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 170 7 141 0 176 7 141 0 238 7 141 0 239 7 149 0 240 7 141 0 241 7 141 0 242 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 2 7 141 1 3 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 9 7 201 1 10 7 141 1 11 7 209 1 32 7 141 1 40 7 217 1 41 7 141 1 43 7 225 1 44 7 141 1 47 4 65 1 48 7 141 1 49 4 73 1 50 7 141 1 52 7 141 1 53 7 141 1 55 4 85 1 56 7 141 1 57 4 93 1 58 7 141 1 60 7 141 1 61 7 141 1 63 8 9 1 64 7 141 1 69 4 109 1 70] 
#[1 7 46 0 3 7 46 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 46 0 40 7 121 0 52 7 46 0 88 7 125 0 89 7 129 0 91 7 46 0 92 7 46 0 93 7 46 0 94 7 46 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 170 7 141 0 176 7 141 0 238 7 141 0 239 7 149 0 240 7 141 0 241 7 141 0 242 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 2 7 141 1 3 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 9 7 201 1 10 7 141 1 11 7 209 1 32 7 141 1 40 7 217 1 41 7 141 1 43 7 225 1 44 7 141 1 47 4 65 1 48 7 141 1 49 4 73 1 50 7 141 1 52 7 141 1 53 7 141 1 55 4 85 1 56 7 141 1 57 4 93 1 58 7 141 1 60 7 141 1 61 7 141 1 63 8 9 1 64 7 141 1 69 4 109 1 70] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 12 189 0 237] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 40 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 12 193 0 237] 
#[1 2 49 0 2 5 121 0 6 0 50 0 137 12 197 0 196] 
#[1 11 241 0 2 5 121 0 6 5 202 0 137 12 201 1 45] 
#[1 2 49 0 2 5 121 0 6 0 50 0 9 0 50 0 137 12 205 0 196] 
#[0 12 209 0 137] 
#[0 12 213 0 3] 
#[0 12 217 0 137] 
#[0 12 221 0 139] 
#[0 12 225 0 139] 
#[1 4 165 0 27 4 165 0 81 4 165 0 123 1 58 0 131 1 62 0 139 12 229 1 29 4 157 1 30 4 161 1 31 4 165 1 34] 
#[1 4 169 0 9 1 66 0 30 1 66 0 33 1 66 0 57 1 66 0 59 1 66 0 74 1 66 0 96 1 66 0 97 1 66 0 112 1 66 0 127 1 66 0 128 1 66 0 137 12 233 1 8] 
#[1 3 165 0 16 12 237 0 31 12 237 0 87 3 169 0 130 1 26 0 137 12 237 0 193] 
#[1 7 50 0 3 11 105 0 17 11 105 0 22 7 50 0 23 7 50 0 24 11 105 0 25 7 50 0 26 7 50 0 27 7 50 0 28 11 9 0 31 7 50 0 32 11 13 0 33 11 105 0 38 7 50 0 40 11 105 0 42 7 50 0 43 6 89 0 44 11 105 0 45 11 105 0 47 7 50 0 48 6 93 0 51 7 50 0 52 7 50 0 61 11 105 0 62 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 7 50 0 88 7 50 0 89 7 50 0 91 7 50 0 92 7 50 0 93 7 50 0 94 11 105 0 100 11 105 0 101 7 50 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 50 0 113 7 50 0 115 7 50 0 118 11 105 0 120 7 50 0 123 11 105 0 124 7 50 0 130 7 50 0 139 11 93 1 25 11 93 1 26 11 93 1 27 11 105 1 28] 
#[1 7 54 0 3 11 105 0 17 11 105 0 22 7 54 0 23 7 54 0 24 11 105 0 25 7 54 0 26 7 54 0 27 7 54 0 28 11 9 0 31 7 54 0 32 11 13 0 33 11 105 0 38 7 54 0 40 11 105 0 42 7 54 0 43 6 89 0 44 11 105 0 45 11 105 0 47 7 54 0 48 6 93 0 51 7 54 0 52 7 54 0 61 11 105 0 62 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 7 54 0 88 7 54 0 89 7 54 0 91 7 54 0 92 7 54 0 93 7 54 0 94 11 105 0 100 11 105 0 101 7 54 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 54 0 113 7 54 0 115 7 54 0 118 11 105 0 120 7 54 0 123 11 105 0 124 7 54 0 130 7 54 0 139 11 93 1 25 11 93 1 26 11 93 1 27 11 105 1 28] 
#[1 7 58 0 3 11 105 0 17 11 105 0 22 7 58 0 23 7 58 0 24 11 105 0 25 7 58 0 26 7 58 0 27 7 58 0 28 11 9 0 31 7 58 0 32 11 13 0 33 11 105 0 38 7 58 0 40 11 105 0 42 7 58 0 43 6 89 0 44 11 105 0 45 11 105 0 47 7 58 0 48 6 93 0 51 7 58 0 52 7 58 0 61 11 105 0 62 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 7 58 0 88 7 58 0 89 7 58 0 91 7 58 0 92 7 58 0 93 7 58 0 94 11 105 0 100 11 105 0 101 7 58 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 58 0 113 7 58 0 115 7 58 0 118 11 105 0 120 7 58 0 123 11 105 0 124 7 58 0 130 7 58 0 139 11 93 1 25 11 93 1 26 11 93 1 27 11 105 1 28] 
#[0 7 62 0 31 0 87 0 137] 
#[0 7 66 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 12 241 0 50] 
#[0 7 70 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 74 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 42 0 26 2 42 0 27 2 42 0 28 7 78 0 31 2 42 0 32 2 42 0 40 2 42 0 52 7 78 0 87 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 7 78 0 137 2 42 0 139 12 245 0 227 5 145 0 237] 
#[0 0 202 0 3 0 5 0 6 0 11] 
#[1 7 82 0 3 7 82 0 5 3 133 0 6 0 66 0 11 3 137 0 188 2 145 0 189] 
#[1 12 249 0 3 12 253 0 5] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 13 1 0 228] 
#[0 7 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 132] 
#[0 7 90 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 13 5 0 213 13 5 1 115 1 181 1 120 1 185 1 131] 
#[1 7 94 0 26 7 94 0 40 7 94 0 52 7 94 0 89 7 94 0 91 13 9 0 252] 
#[0 7 98 0 5 0 137] 
#[1 7 102 0 40 7 102 0 48 7 102 0 61 4 125 0 137] 
#[0 7 106 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 110 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 114 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 118 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 122 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 1 91 0 31 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 13 13 0 87 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 1 26 0 137 13 13 0 193 3 161 1 125] 
#[1 6 98 0 3 6 98 0 17 6 98 0 21 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 38 6 98 0 40 6 98 0 42 6 98 0 44 6 98 0 45 6 98 0 47 6 98 0 48 6 98 0 51 6 98 0 52 6 98 0 56 6 98 0 61 6 98 0 62 6 98 0 65 6 98 0 67 6 98 0 70 6 98 0 73 6 98 0 82 6 98 0 83 6 98 0 86 6 98 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 100 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 110 6 98 0 111 6 98 0 113 6 98 0 115 6 98 0 118 6 98 0 120 6 98 0 123 6 98 0 124 6 98 0 130 6 98 0 139 13 17 1 24] 
#[1 7 126 0 3 11 105 0 17 7 126 0 21 11 105 0 22 7 126 0 23 7 126 0 24 11 105 0 25 7 126 0 26 7 126 0 27 7 126 0 28 11 9 0 31 7 126 0 32 11 13 0 33 11 105 0 38 7 126 0 40 11 105 0 42 7 126 0 44 11 105 0 45 11 105 0 47 7 126 0 48 7 126 0 51 7 126 0 52 7 126 0 56 7 126 0 61 11 105 0 62 7 126 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 7 126 0 88 7 126 0 89 7 126 0 91 7 126 0 92 7 126 0 93 7 126 0 94 11 105 0 100 11 105 0 101 7 126 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 126 0 113 7 126 0 115 7 126 0 118 11 105 0 120 7 126 0 123 11 105 0 124 7 126 0 130 7 126 0 139 13 21 1 26 11 105 1 28] 
#[0 7 130 0 137] 
#[0 13 25 0 137] 
#[1 12 161 0 14 6 246 0 137 13 29 1 33] 
#[0 13 33 0 137] 
#[0 13 37 0 137] 
#[0 13 41 0 137] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 13 45 0 137 3 161 1 125] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 13 49 0 137 3 161 1 125] 
#[0 7 134 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 13 53 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 13 53 1 102 13 53 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131 0 14 1 132] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 13 57 0 213 13 57 1 115 1 181 1 120 1 185 1 131] 
#[0 7 138 0 3 0 131 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 33 0 143 0 177 0 147 0 181 0 212 13 61 1 73 2 33 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 33 1 102 2 33 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 0 245 1 113 0 245 1 114 0 245 1 115 1 33 1 120 0 245 1 121 1 41 1 131] 
#[1 7 142 0 3 7 142 0 5 7 142 0 14 7 142 0 16 11 105 0 17 7 142 0 21 11 105 0 22 7 142 0 23 7 142 0 24 11 105 0 25 7 142 0 26 7 142 0 27 7 142 0 28 7 142 0 30 1 95 0 31 7 142 0 32 1 99 0 33 7 142 0 36 11 105 0 38 7 142 0 40 11 105 0 42 7 142 0 43 6 89 0 44 11 105 0 45 11 105 0 47 7 142 0 48 6 93 0 51 7 142 0 52 7 142 0 56 7 142 0 57 7 142 0 59 7 142 0 61 11 105 0 62 7 142 0 65 11 105 0 67 11 41 0 70 11 105 0 73 7 142 0 74 7 142 0 77 11 105 0 82 11 105 0 83 11 105 0 86 1 103 0 87 7 142 0 88 7 142 0 89 7 142 0 91 7 142 0 92 7 142 0 93 7 142 0 94 7 142 0 96 7 142 0 97 11 105 0 100 11 105 0 101 7 142 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 142 0 112 7 142 0 113 7 142 0 115 7 142 0 118 11 105 0 120 7 142 0 123 11 105 0 124 7 142 0 127 7 142 0 128 7 142 0 130 7 142 0 131 7 142 0 132 7 142 0 137 7 142 0 139 11 93 1 25 11 93 1 26 11 93 1 27 11 105 1 28 7 142 1 132] 
#[0 7 146 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 13 65 0 140] 
#[0 13 69 0 77] 
#[1 7 150 0 3 7 150 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 150 0 40 7 121 0 52 7 150 0 88 7 125 0 89 7 129 0 91 7 150 0 92 7 150 0 93 7 150 0 94 7 150 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 170 7 141 0 176 7 141 0 238 7 141 0 239 7 149 0 240 7 141 0 241 7 141 0 242 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 2 7 141 1 3 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 9 7 201 1 10 7 141 1 11 7 209 1 32 7 141 1 40 7 217 1 41 7 141 1 43 7 225 1 44 7 141 1 47 4 65 1 48 7 141 1 49 4 73 1 50 7 141 1 52 7 141 1 53 7 141 1 55 4 85 1 56 7 141 1 57 4 93 1 58 7 141 1 60 7 141 1 61 7 141 1 63 8 9 1 64 7 141 1 69 4 109 1 70] 
#[1 7 154 0 3 7 154 0 24 7 109 0 26 4 13 0 27 7 113 0 28 7 117 0 32 7 154 0 40 7 121 0 52 7 154 0 88 7 125 0 89 7 129 0 91 7 154 0 92 7 154 0 93 7 154 0 94 7 154 0 113 4 33 0 115 4 37 0 118 4 41 0 123 1 189 0 130 6 37 0 139 7 141 0 170 7 141 0 176 7 141 0 238 7 141 0 239 7 149 0 240 7 141 0 241 7 141 0 242 7 141 0 254 7 141 0 255 7 141 1 0 7 141 1 1 7 141 1 2 7 141 1 3 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 9 7 201 1 10 7 141 1 11 7 209 1 32 7 141 1 40 7 217 1 41 7 141 1 43 7 225 1 44 7 141 1 47 4 65 1 48 7 141 1 49 4 73 1 50 7 141 1 52 7 141 1 53 7 141 1 55 4 85 1 56 7 141 1 57 4 93 1 58 7 141 1 60 7 141 1 61 7 141 1 63 8 9 1 64 7 141 1 69 4 109 1 70] 
#[0 13 73 0 137] 
#[0 13 77 0 137] 
#[1 4 169 0 9 1 66 0 137 13 81 1 8] 
#[1 6 98 0 3 6 98 0 17 6 98 0 21 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 38 6 98 0 40 6 98 0 42 6 98 0 44 6 98 0 45 6 98 0 47 6 98 0 51 6 98 0 52 6 98 0 62 6 98 0 65 6 98 0 67 6 98 0 70 6 98 0 73 6 98 0 82 6 98 0 83 6 98 0 86 6 98 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 100 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 110 6 98 0 111 6 98 0 113 6 98 0 115 6 98 0 118 6 98 0 120 6 98 0 123 6 98 0 124 6 98 0 130 6 98 0 139 13 85 1 24] 
#[0 7 158 0 137] 
#[1 6 98 0 3 6 98 0 17 6 98 0 21 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 38 6 98 0 40 6 98 0 42 6 98 0 44 6 98 0 45 6 98 0 47 6 98 0 51 6 98 0 52 6 98 0 62 6 98 0 65 6 98 0 67 6 98 0 70 6 98 0 73 6 98 0 82 6 98 0 83 6 98 0 86 6 98 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 100 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 110 6 98 0 111 6 98 0 113 6 98 0 115 6 98 0 118 6 98 0 120 6 98 0 123 6 98 0 124 6 98 0 130 6 98 0 139 13 89 1 24] 
#[0 13 93 0 137] 
#[0 13 97 0 137] 
#[0 13 101 0 131] 
#[1 7 162 0 30 7 162 0 33 7 162 0 57 7 162 0 59 7 162 0 74 7 162 0 96 7 162 0 97 7 162 0 112 7 162 0 127 7 162 0 128 7 162 0 137 13 105 1 12] 
#[0 13 109 0 137] 
#[1 3 109 0 139 13 113 0 236] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 13 117 0 228] 
#[0 7 166 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 49 0 140 13 121 0 192] 
#[1 13 125 0 40 9 157 0 88 9 161 0 92 9 165 0 93 9 169 0 94 9 173 0 113 9 181 0 229 9 181 0 230 9 181 0 231 9 181 0 232 9 181 0 233] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 13 129 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 13 133 0 26 13 137 0 40 4 17 0 52 4 25 0 89 7 129 0 91 13 141 0 253 13 141 0 254 13 141 0 255 13 141 1 2 13 141 1 3 13 141 1 5 13 141 1 6 13 141 1 7 13 141 1 9 7 201 1 10 13 141 1 11 13 141 1 47 4 65 1 48 13 141 1 49 4 73 1 50 13 141 1 52 13 141 1 53 13 141 1 55 4 85 1 56 13 141 1 57 4 93 1 58 13 141 1 60 13 141 1 61 13 141 1 63 8 9 1 64] 
#[1 13 153 0 31 6 102 0 137 13 153 0 226] 
#[1 7 170 0 3 11 105 0 17 7 170 0 21 11 105 0 22 7 170 0 23 7 170 0 24 11 105 0 25 7 170 0 26 7 170 0 27 7 170 0 28 11 9 0 31 7 170 0 32 11 13 0 33 11 105 0 38 7 170 0 40 11 105 0 42 7 170 0 44 11 105 0 45 11 105 0 47 7 170 0 48 7 170 0 51 7 170 0 52 7 170 0 56 7 170 0 61 11 105 0 62 7 170 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 7 170 0 88 7 170 0 89 7 170 0 91 7 170 0 92 7 170 0 93 7 170 0 94 11 105 0 100 11 105 0 101 7 170 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 170 0 113 7 170 0 115 7 170 0 118 11 105 0 120 7 170 0 123 11 105 0 124 7 170 0 130 7 170 0 139 13 21 1 26 11 105 1 28] 
#[0 7 174 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139] 
#[0 7 178 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 13 157 0 137] 
#[0 7 182 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 7 186 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 7 190 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 7 194 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 7 198 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 132] 
#[0 7 202 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 132] 
#[1 3 153 0 2 7 206 0 3 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 7 206 0 131 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 7 206 0 137 3 161 1 125] 
#[1 7 210 0 39 7 210 0 40 7 210 0 49 7 210 0 78 4 125 0 137] 
#[0 7 214 0 3 0 5] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 13 161 0 206 13 165 0 207 13 169 0 208 13 173 0 209 1 157 0 212 13 177 0 213 13 177 1 115 1 181 1 120 1 185 1 131] 
#[1 6 98 0 3 6 98 0 17 6 98 0 21 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 38 6 98 0 40 6 98 0 42 6 98 0 44 6 98 0 45 6 98 0 47 6 98 0 51 6 98 0 52 6 98 0 62 6 98 0 65 6 98 0 67 6 98 0 70 6 98 0 73 6 98 0 82 6 98 0 83 6 98 0 86 6 98 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 100 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 110 6 98 0 111 6 98 0 113 6 98 0 115 6 98 0 118 6 98 0 120 6 98 0 123 6 98 0 124 6 98 0 130 6 98 0 139 13 181 1 24] 
#[1 6 98 0 3 6 98 0 17 6 98 0 21 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 38 6 98 0 40 6 98 0 42 6 98 0 44 6 98 0 45 6 98 0 47 6 98 0 51 6 98 0 52 6 98 0 62 6 98 0 65 6 98 0 67 6 98 0 70 6 98 0 73 6 98 0 82 6 98 0 83 6 98 0 86 6 98 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 100 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 110 6 98 0 111 6 98 0 113 6 98 0 115 6 98 0 118 6 98 0 120 6 98 0 123 6 98 0 124 6 98 0 130 6 98 0 139 13 185 1 24] 
#[0 13 189 0 137] 
#[1 7 218 0 3 11 105 0 17 7 218 0 21 11 105 0 22 7 218 0 23 7 218 0 24 11 105 0 25 7 218 0 26 7 218 0 27 7 218 0 28 11 9 0 31 7 218 0 32 11 13 0 33 11 105 0 38 7 218 0 40 11 105 0 42 7 218 0 44 11 105 0 45 11 105 0 47 7 218 0 51 7 218 0 52 11 105 0 62 7 218 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 7 218 0 88 7 218 0 89 7 218 0 91 7 218 0 92 7 218 0 93 7 218 0 94 11 105 0 100 11 105 0 101 7 218 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 218 0 113 7 218 0 115 7 218 0 118 11 105 0 120 7 218 0 123 11 105 0 124 7 218 0 130 7 218 0 139 13 21 1 26 11 105 1 28] 
#[1 7 222 0 3 11 105 0 17 7 222 0 21 11 105 0 22 7 222 0 23 7 222 0 24 11 105 0 25 7 222 0 26 7 222 0 27 7 222 0 28 11 9 0 31 7 222 0 32 11 13 0 33 11 105 0 38 7 222 0 40 11 105 0 42 7 222 0 44 11 105 0 45 11 105 0 47 7 222 0 51 7 222 0 52 11 105 0 62 7 222 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 7 222 0 88 7 222 0 89 7 222 0 91 7 222 0 92 7 222 0 93 7 222 0 94 11 105 0 100 11 105 0 101 7 222 0 104 11 105 0 105 11 105 0 110 11 105 0 111 7 222 0 113 7 222 0 115 7 222 0 118 11 105 0 120 7 222 0 123 11 105 0 124 7 222 0 130 7 222 0 139 13 21 1 26 11 105 1 28] 
#[0 7 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 234 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 193 0 30 13 197 0 33 13 201 0 57 13 205 0 59 13 209 0 74 13 213 0 96 13 217 0 97 13 221 0 112 13 225 0 127 13 229 0 128 13 233 0 137 13 237 1 14 13 241 1 15 13 245 1 16 13 249 1 17 13 253 1 18 14 1 1 19 14 5 1 21] 
#[0 7 238 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 69 0 2 5 121 0 6 4 198 0 26 4 198 0 27 4 198 0 28 4 198 0 31 4 198 0 32 4 198 0 40 4 198 0 52 4 198 0 87 4 198 0 88 4 198 0 89 4 198 0 91 4 198 0 92 4 198 0 93 4 198 0 94 4 198 0 113 4 198 0 115 4 198 0 118 4 198 0 123 4 198 0 130 4 198 0 137 4 198 0 139 14 9 0 234] 
#[1 14 13 0 40 9 157 0 88 9 161 0 92 9 165 0 93 9 169 0 94 9 173 0 113 9 181 0 229 9 181 0 230 9 181 0 231 9 181 0 232 9 181 0 233] 
#[1 7 242 0 3 7 242 0 5 3 133 0 6 0 66 0 11 3 137 0 188 2 145 0 189] 
#[0 7 246 0 31 0 87 0 137] 
#[0 7 250 0 26 0 40 0 52 0 89 0 91] 
#[1 4 17 0 52 9 209 0 79 4 25 0 89 7 129 0 91 9 213 1 10 9 217 1 48 9 221 1 50 9 225 1 56 9 229 1 58] 
#[0 7 254 0 31 0 87 0 137] 
#[0 8 2 0 26 0 40 0 52 0 89 0 91] 
#[0 8 6 0 26 0 40 0 52 0 89 0 91] 
#[0 8 10 0 26 0 40 0 52 0 89 0 91] 
#[0 14 17 0 137] 
#[0 8 14 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 250 0 3 1 250 0 40 14 21 0 137 14 25 1 88] 
#[0 8 18 0 3 0 40 0 137] 
#[1 14 29 0 5 14 33 0 9] 
#[0 8 22 0 5 0 9] 
#[1 3 153 0 2 3 161 0 4 8 26 0 5 3 157 0 6 3 161 0 8 8 26 0 9 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 3 161 0 35 3 161 0 58 3 161 0 64 3 161 0 71 3 161 0 80 3 161 0 108 3 161 0 109 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 3 161 1 125] 
#[1 8 30 0 3 11 105 0 17 8 30 0 21 11 105 0 22 8 30 0 23 8 30 0 24 11 105 0 25 8 30 0 26 8 30 0 27 8 30 0 28 11 9 0 31 8 30 0 32 11 13 0 33 11 105 0 38 8 30 0 40 11 105 0 42 8 30 0 44 11 105 0 45 11 105 0 47 8 30 0 51 8 30 0 52 11 105 0 62 8 30 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 8 30 0 88 8 30 0 89 8 30 0 91 8 30 0 92 8 30 0 93 8 30 0 94 11 105 0 100 11 105 0 101 8 30 0 104 11 105 0 105 11 105 0 110 11 105 0 111 8 30 0 113 8 30 0 115 8 30 0 118 11 105 0 120 8 30 0 123 11 105 0 124 8 30 0 130 8 30 0 139 13 21 1 26 11 105 1 28] 
#[1 8 34 0 3 11 105 0 17 8 34 0 21 11 105 0 22 8 34 0 23 8 34 0 24 11 105 0 25 8 34 0 26 8 34 0 27 8 34 0 28 11 9 0 31 8 34 0 32 11 13 0 33 11 105 0 38 8 34 0 40 11 105 0 42 8 34 0 44 11 105 0 45 11 105 0 47 8 34 0 51 8 34 0 52 11 105 0 62 8 34 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 8 34 0 88 8 34 0 89 8 34 0 91 8 34 0 92 8 34 0 93 8 34 0 94 11 105 0 100 11 105 0 101 8 34 0 104 11 105 0 105 11 105 0 110 11 105 0 111 8 34 0 113 8 34 0 115 8 34 0 118 11 105 0 120 8 34 0 123 11 105 0 124 8 34 0 130 8 34 0 139 13 21 1 26 11 105 1 28] 
#[1 6 98 0 3 6 98 0 17 6 98 0 21 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 38 6 98 0 40 6 98 0 42 6 98 0 44 6 98 0 45 6 98 0 47 6 98 0 51 6 98 0 52 6 98 0 62 6 98 0 65 6 98 0 67 6 98 0 70 6 98 0 73 6 98 0 82 6 98 0 83 6 98 0 86 6 98 0 87 6 98 0 88 6 98 0 89 6 98 0 91 6 98 0 92 6 98 0 93 6 98 0 94 6 98 0 100 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 110 6 98 0 111 6 98 0 113 6 98 0 115 6 98 0 118 6 98 0 120 6 98 0 123 6 98 0 124 6 98 0 130 6 98 0 139 14 37 1 24] 
#[1 3 25 0 2 1 49 0 15 8 38 0 30 8 38 0 33 8 38 0 57 8 38 0 59 8 38 0 74 1 61 0 75 8 38 0 96 8 38 0 97 8 38 0 112 8 38 0 127 8 38 0 128 0 153 0 130 1 89 0 135 1 93 0 136 8 38 0 137 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 14 41 0 213 14 41 1 115 1 181 1 120 1 185 1 131] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 14 45 0 213 14 45 1 115 1 181 1 120 1 185 1 131] 
#[1 14 49 0 139 14 53 1 20] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 14 57 0 213 14 57 1 115 1 181 1 120 1 185 1 131] 
#[0 8 42 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 14 61 1 105 0 249 1 106 14 61 1 107 14 61 1 108 1 5 1 109 14 61 1 110 1 13 1 111 14 61 1 112 14 61 1 113 14 61 1 114 14 61 1 115 1 33 1 120 14 61 1 121 1 41 1 131] 
#[0 14 65 0 33] 
#[0 14 69 0 139] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 17 0 139 0 181 0 141 1 33 0 143 0 177 0 147 0 181 0 212 14 73 1 105 0 249 1 106 14 73 1 107 14 73 1 108 1 5 1 109 14 73 1 110 1 13 1 111 14 73 1 112 14 73 1 113 14 73 1 114 14 73 1 115 1 33 1 120 14 73 1 121 1 41 1 131] 
#[0 14 77 0 33] 
#[1 8 46 0 3 8 46 0 24 8 46 0 26 8 46 0 27 8 46 0 28 14 81 0 30 8 46 0 32 8 46 0 40 8 46 0 52 8 46 0 88 8 46 0 89 8 46 0 91 8 46 0 92 8 46 0 93 8 46 0 94 8 46 0 113 8 46 0 115 8 46 0 118 8 46 0 123 8 46 0 130 8 46 0 139 14 85 1 22] 
#[0 8 50 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 54 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 58 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 62 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 66 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 70 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 74 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 42 0 26 2 42 0 27 2 42 0 28 8 78 0 31 2 42 0 32 2 42 0 40 2 42 0 52 8 78 0 87 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 8 78 0 137 2 42 0 139 14 89 0 227 5 145 0 237] 
#[0 8 82 0 31 0 87 0 137] 
#[0 8 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 25 0 2 2 234 0 3 1 49 0 15 2 234 0 40 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 14 93 0 207 13 169 0 208 13 173 0 209 1 157 0 212 13 177 0 213 13 177 1 115 1 181 1 120 1 185 1 131] 
#[0 8 90 0 3 0 40] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 14 97 0 209 1 157 0 212 13 177 0 213 13 177 1 115 1 181 1 120 1 185 1 131] 
#[0 14 101 0 2] 
#[1 8 94 0 3 11 105 0 17 8 94 0 21 11 105 0 22 8 94 0 23 8 94 0 24 11 105 0 25 8 94 0 26 8 94 0 27 8 94 0 28 11 9 0 31 8 94 0 32 11 13 0 33 11 105 0 38 8 94 0 40 11 105 0 42 8 94 0 44 11 105 0 45 11 105 0 47 8 94 0 51 8 94 0 52 11 105 0 62 8 94 0 65 11 105 0 67 11 41 0 70 11 105 0 73 11 105 0 82 11 105 0 83 11 105 0 86 11 105 0 87 8 94 0 88 8 94 0 89 8 94 0 91 8 94 0 92 8 94 0 93 8 94 0 94 11 105 0 100 11 105 0 101 8 94 0 104 11 105 0 105 11 105 0 110 11 105 0 111 8 94 0 113 8 94 0 115 8 94 0 118 11 105 0 120 8 94 0 123 11 105 0 124 8 94 0 130 8 94 0 139 13 21 1 26 11 105 1 28] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 98 0 30 8 98 0 33 3 161 0 35 8 98 0 57 3 161 0 58 8 98 0 59 3 161 0 64 3 161 0 71 8 98 0 74 3 161 0 80 8 98 0 96 8 98 0 97 3 161 0 108 3 161 0 109 8 98 0 112 8 98 0 127 8 98 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 98 0 137 3 161 1 125] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 102 0 30 8 102 0 33 3 161 0 35 8 102 0 57 3 161 0 58 8 102 0 59 3 161 0 64 3 161 0 71 8 102 0 74 3 161 0 80 8 102 0 96 8 102 0 97 3 161 0 108 3 161 0 109 8 102 0 112 8 102 0 127 8 102 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 102 0 137 3 161 1 125] 
#[0 8 106 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 105 0 5 8 110 0 30 8 110 0 33 8 110 0 57 8 110 0 59 8 110 0 74 8 110 0 96 8 110 0 97 8 110 0 112 8 110 0 127 8 110 0 128 8 110 0 137] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 114 0 30 8 114 0 33 3 161 0 35 8 114 0 57 3 161 0 58 8 114 0 59 3 161 0 64 3 161 0 71 8 114 0 74 3 161 0 80 8 114 0 96 8 114 0 97 3 161 0 108 3 161 0 109 8 114 0 112 8 114 0 127 8 114 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 114 0 137 3 161 1 125] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 8 118 0 30 8 118 0 33 3 5 0 35 8 118 0 57 3 5 0 58 8 118 0 59 3 5 0 64 3 5 0 71 8 118 0 74 3 5 0 80 8 118 0 96 8 118 0 97 3 5 0 108 3 5 0 109 8 118 0 112 8 118 0 127 8 118 0 128 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 8 118 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 14 109 0 213 14 109 1 115 1 181 1 120 1 185 1 131] 
#[0 8 122 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 157 0 2 3 5 0 4 2 165 0 6 3 5 0 8 2 173 0 10 3 5 0 11 3 5 0 12 3 5 0 13 3 5 0 14 3 5 0 18 3 5 0 20 8 126 0 30 8 126 0 33 3 5 0 35 8 126 0 57 3 5 0 58 8 126 0 59 3 5 0 64 3 5 0 71 8 126 0 74 3 5 0 80 8 126 0 96 8 126 0 97 3 5 0 108 3 5 0 109 8 126 0 112 8 126 0 127 8 126 0 128 3 5 0 129 2 233 0 130 3 5 0 132 3 5 0 133 3 5 0 135 3 5 0 136 8 126 0 137 2 253 0 138 3 1 1 118 3 5 1 124 3 5 1 125] 
#[1 3 25 0 2 1 49 0 15 1 61 0 75 0 153 0 130 1 89 0 135 1 93 0 136 3 73 0 140 1 157 0 141 1 181 0 143 1 109 0 147 1 157 0 212 14 113 0 213 14 113 1 115 1 181 1 120 1 185 1 131] 
#[0 14 117 0 137] 
#[0 8 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 2 0 40 3 2 0 88 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 14 121 0 228] 
#[0 8 134 0 3 0 40 0 137] 
#[0 8 138 0 5 0 9] 
#[1 2 42 0 3 2 42 0 24 2 42 0 26 2 42 0 27 2 42 0 28 2 42 0 32 2 42 0 52 2 42 0 88 2 42 0 89 2 42 0 91 2 42 0 92 2 42 0 93 2 42 0 94 2 42 0 113 2 42 0 115 2 42 0 118 2 42 0 123 2 42 0 130 2 42 0 139 14 125 0 203 5 141 0 227 5 145 0 237] 
#[0 14 129 0 139] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 142 0 30 8 142 0 33 3 161 0 35 8 142 0 57 3 161 0 58 8 142 0 59 3 161 0 64 3 161 0 71 8 142 0 74 3 161 0 80 8 142 0 96 8 142 0 97 3 161 0 108 3 161 0 109 8 142 0 112 8 142 0 127 8 142 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 142 0 137 3 161 1 125] 
#[1 3 153 0 2 3 161 0 4 3 157 0 6 3 161 0 8 3 161 0 11 3 161 0 12 3 161 0 13 3 161 0 18 3 161 0 20 8 146 0 30 8 146 0 33 3 161 0 35 8 146 0 57 3 161 0 58 8 146 0 59 3 161 0 64 3 161 0 71 8 146 0 74 3 161 0 80 8 146 0 96 8 146 0 97 3 161 0 108 3 161 0 109 8 146 0 112 8 146 0 127 8 146 0 128 3 161 0 129 3 161 0 132 3 161 0 133 3 161 0 135 3 161 0 136 8 146 0 137 3 161 1 125] 
#[0 8 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 14 133 0 40 9 157 0 88 9 161 0 92 9 165 0 93 9 169 0 94 9 173 0 113 9 181 0 229 9 181 0 230 9 181 0 231 9 181 0 232 9 181 0 233] 
#[0 14 137 0 3] 
#[0 8 154 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 158 0 31 0 87 0 137] 
#[0 8 162 0 3 0 40 0 137]
	).
]

{ #category : #private }
DelphiParser >> actionsForCurrentToken [
	| actions action ids newToken |
	actions := OrderedCollection new: 1.
	ids := currentToken ids.
	ids
		do: [ :id | 
			(id = scanner gtEqId and: [ genericCount > 0 ])
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

{ #category : #'initialize-release' }
DelphiParser >> initialize [
	super initialize.
	genericCount := 0
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
	^ genericCount := genericCount + 1
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
	^ genericCount := genericCount - 1
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
