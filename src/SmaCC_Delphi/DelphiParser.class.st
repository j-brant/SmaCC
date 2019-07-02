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
#[ 0 22 1 65] 
#[ 0 66 2 129] 
#[ 0 18 1 49] 
#[ 0 18 1 61] 
#[ 0 18 1 73] 
#[ 0 190 0 194] 
#[ 0 242 2 225] 
#[ 1 42 2 165] 
#[ 1 42 2 169] 
#[ 1 42 2 173] 
#[ 1 42 2 177] 
#[ 1 42 2 193] 
#[ 1 42 2 225] 
#[ 1 42 2 229] 
#[ 1 74 2 165] 
#[ 1 74 2 169] 
#[ 1 74 2 173] 
#[ 1 74 2 177] 
#[ 1 74 2 193] 
#[ 1 74 2 225] 
#[ 1 74 2 229] 
#[ 1 106 2 165] 
#[ 1 106 2 169] 
#[ 1 106 2 173] 
#[ 1 106 2 177] 
#[ 1 106 2 193] 
#[ 1 106 2 225] 
#[ 1 106 2 229] 
#[ 1 110 2 165] 
#[ 1 110 2 169] 
#[ 1 110 2 173] 
#[ 1 110 2 177] 
#[ 1 110 2 193] 
#[ 1 110 2 225] 
#[ 1 110 2 229] 
#[ 1 242 5 57] 
#[ 1 250 2 165] 
#[ 1 250 2 169] 
#[ 1 250 2 173] 
#[ 1 250 2 193] 
#[ 1 250 2 225] 
#[ 1 250 2 229] 
#[ 1 254 2 165] 
#[ 1 254 2 169] 
#[ 1 254 2 173] 
#[ 1 254 2 193] 
#[ 1 254 2 225] 
#[ 1 254 2 229] 
#[ 2 10 2 165] 
#[ 2 10 2 169] 
#[ 2 10 2 173] 
#[ 2 10 2 193] 
#[ 2 10 2 225] 
#[ 2 10 2 229] 
#[ 2 14 2 165] 
#[ 2 14 2 169] 
#[ 2 14 2 173] 
#[ 2 14 2 193] 
#[ 2 14 2 225] 
#[ 2 14 2 229] 
#[ 2 165 2 206] 
#[ 2 169 2 206] 
#[ 2 173 2 206] 
#[ 2 177 2 206] 
#[ 2 193 2 206] 
#[ 2 206 2 225] 
#[ 2 206 2 229] 
#[ 2 165 2 214] 
#[ 2 169 2 214] 
#[ 2 173 2 214] 
#[ 2 177 2 214] 
#[ 2 193 2 214] 
#[ 2 214 2 225] 
#[ 2 214 2 229] 
#[ 2 225 2 238] 
#[ 2 165 3 14] 
#[ 2 169 3 14] 
#[ 2 173 3 14] 
#[ 2 193 3 14] 
#[ 2 225 3 14] 
#[ 2 229 3 14] 
#[ 0 190 9 69] 
#[ 0 18 9 89] 
#[ 0 214 4 190] 
#[ 0 218 4 194] 
#[ 5 110 10 205] 
#[ 5 110 10 209] 
#[ 5 110 11 1] 
#[ 1 18 3 173] 
#[ 7 110 10 205] 
#[ 7 110 10 209] 
#[ 7 110 11 1]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-01T20:58:48.757355-05:00'
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
	: | <constantIdentifier> 'name' {{VariableExpression}}
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
	;
AnonymousFunctionType
	: ""FUNCTION"" 'functionToken' OptionalArguments "":"" 'colon' Type 'type' OptionalOfObject  <semicolon> 'semicolon' MethodModifiers {{AnonymousFunctionType}}
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
	#(164 0 #reduceActionForUsesList1: 5793793 false ) 
	#(357 0 #reduceActionForBeforeAsm1: 31789057 false ) 
	#(327 0 #reduceActionForStatement14: 28308494 false ) 
	#(189 0 #nil 8997889 false ) 
	#(201 0 #nil 10875905 false ) 
	#(148 1 #reduceActionForFile2: 4144130 false ) 
	#(148 1 #reduceActionForFile3: 4144131 false ) 
	#(148 1 #reduceActionForFile4: 4144132 false ) 
	#(148 1 #reduceActionForFile1: 4144129 false ) 
	#(163 0 #nil 5679105 false ) 
	#(161 1 #reduceActionForUnitFile2: 5352450 false ) 
	#(319 0 #reduceActionForMethodVariables2: 27553794 false ) 
	#(193 0 #reduceActionForOptionalArguments1: 9767937 false ) 
	#(372 1 #reduceActionForInheritedFunctionCall4: 34727940 false ) 
	#(349 1 #reduceActionForRaiseStatement2: 30955522 false ) 
	#(364 1 #reduceActionForVariableExpression1: 34025473 false ) 
	#(209 1 #liftFirstValue: 11568129 false ) 
	#(371 1 #liftFirstValue: 34705409 false ) 
	#(358 1 #reduceActionForExpression10: 31906826 false ) 
	#(358 1 #reduceActionForExpression10: 31906824 false ) 
	#(327 1 #reduceActionForStatement13: 28308493 false ) 
	#(327 1 #reduceActionForStatement11: 28308491 false ) 
	#(327 1 #reduceActionForStatement2: 28308482 false ) 
	#(327 1 #reduceActionForStatement3: 28308483 false ) 
	#(327 1 #reduceActionForStatement4: 28308484 false ) 
	#(327 1 #reduceActionForStatement5: 28308485 false ) 
	#(327 1 #reduceActionForStatement6: 28308486 false ) 
	#(327 1 #reduceActionForStatement7: 28308487 false ) 
	#(327 1 #reduceActionForStatement8: 28308488 false ) 
	#(327 1 #reduceActionForStatement9: 28308489 false ) 
	#(327 1 #reduceActionForStatement10: 28308490 false ) 
	#(327 1 #liftFirstValue: 28308492 false ) 
	#(355 1 #liftFirstValue: 31609858 false ) 
	#(327 1 #liftFirstValue: 28308481 false ) 
	#(358 1 #liftFirstValue: 31906840 false ) 
	#(358 1 #liftFirstValue: 31906839 false ) 
	#(358 1 #liftFirstValue: 31906838 false ) 
	#(358 1 #liftFirstValue: 31906817 false ) 
	#(358 1 #liftFirstValue: 31906818 false ) 
	#(358 1 #liftFirstValue: 31906835 false ) 
	#(358 1 #reduceActionForExpression10: 31906825 false ) 
	#(358 1 #liftFirstValue: 31906823 false ) 
	#(358 1 #reduceActionForExpression10: 31906837 false ) 
	#(211 0 #reduceActionForConstantArray2: 12650498 false ) 
	#(241 1 #reduceActionForFileType2: 17171458 false ) 
	#(201 1 #liftFirstValue: 10875906 false ) 
	#(210 1 #reduceActionForVariableExpression1: 11590659 false ) 
	#(189 1 #reduceActionForVariableExpression1: 8997890 false ) 
	#(210 1 #reduceActionForExpression10: 11590663 false ) 
	#(240 1 #liftFirstValue: 17077252 false ) 
	#(240 1 #liftFirstValue: 17077249 false ) 
	#(186 1 #reduceActionForSimpleDefinedType1: 8297473 false ) 
	#(240 1 #liftFirstValue: 17077250 false ) 
	#(240 1 #liftFirstValue: 17077251 false ) 
	#(186 1 #liftFirstValue: 8297481 false ) 
	#(186 1 #liftFirstValue: 8297476 false ) 
	#(186 1 #liftFirstValue: 8297477 false ) 
	#(186 1 #liftFirstValue: 8297482 false ) 
	#(210 1 #reduceActionForExpression10: 11590657 false ) 
	#(208 1 #liftFirstValue: 11504641 false ) 
	#(186 1 #liftFirstValue: 8297479 false ) 
	#(186 1 #liftFirstValue: 8297475 false ) 
	#(210 1 #liftFirstValue: 11590665 false ) 
	#(210 1 #reduceActionForExpression10: 11590662 false ) 
	#(210 1 #reduceActionForExpression10: 11590658 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7447553 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6061057 false ) 
	#(190 0 #nil 9341953 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5872641 false ) 
	#(166 1 #reduceActionForUsesModule1: 5947393 false ) 
	#(153 0 #reduceActionForMethodVariables2: 4703233 false ) 
	#(288 0 #nil 23169025 false ) 
	#(155 1 #reduceActionForMainMethod1: 4862977 false ) 
	#(358 2 #reduceActionForExpression15: 31906831 false ) 
	#(326 1 #reduceActionForStatements1: 28205057 false ) 
	#(282 0 #reduceActionForArgumentList1: 22658049 false ) 
	#(287 0 #nil 23081985 false ) 
	#(261 0 #reduceActionForOptionalType1: 19124225 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28919809 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28919810 false ) 
	#(372 2 #reduceActionForInheritedFunctionCall3: 34727939 false ) 
	#(358 2 #reduceActionForExpression16: 31906832 false ) 
	#(360 2 #reduceActionForAnonymousProcedureHeader1: 33434625 false ) 
	#(350 0 #reduceActionForOptionalType1: 31064065 false ) 
	#(335 0 #nil 29664257 false ) 
	#(333 1 #reduceActionForStatements1: 29458433 false ) 
	#(366 2 #reduceActionForSetConstructor2: 34199554 false ) 
	#(368 1 #reduceActionForSetValue1: 34429953 false ) 
	#(367 1 #reduceActionForStatements1: 34329601 false ) 
	#(358 2 #reduceActionForExpression17: 31906833 false ) 
	#(358 2 #reduceActionForExpression18: 31906834 false ) 
	#(365 2 #reduceActionForInstantiatedGenericVariableExpression1: 34095105 false ) 
	#(376 1 #liftFirstValue: 35426311 false ) 
	#(376 1 #liftFirstValue: 35426312 false ) 
	#(376 1 #liftFirstValue: 35426319 false ) 
	#(376 1 #liftFirstValue: 35426320 false ) 
	#(376 1 #liftFirstValue: 35426308 false ) 
	#(375 1 #liftFirstValue: 35361793 false ) 
	#(376 1 #liftFirstValue: 35426305 false ) 
	#(376 1 #liftFirstValue: 35426317 false ) 
	#(376 1 #liftFirstValue: 35426309 false ) 
	#(376 1 #liftFirstValue: 35426322 false ) 
	#(376 1 #liftFirstValue: 35426323 false ) 
	#(376 1 #liftFirstValue: 35426310 false ) 
	#(376 1 #liftFirstValue: 35426306 false ) 
	#(376 1 #liftFirstValue: 35426315 false ) 
	#(376 1 #liftFirstValue: 35426316 false ) 
	#(376 1 #liftFirstValue: 35426307 false ) 
	#(376 1 #liftFirstValue: 35426318 false ) 
	#(376 1 #liftFirstValue: 35426321 false ) 
	#(376 1 #liftFirstValue: 35426314 false ) 
	#(376 1 #liftFirstValue: 35426313 false ) 
	#(358 2 #reduceActionForExpression20: 31906836 false ) 
	#(358 2 #reduceActionForExpression14: 31906830 false ) 
	#(375 1 #liftFirstValue: 35361794 false ) 
	#(359 2 #reduceActionForAnonymousProcedure1: 33323009 false ) 
	#(361 2 #reduceActionForAnonymousFunction1: 33534977 false ) 
	#(184 1 #reduceActionForEnumName1: 8076289 false ) 
	#(183 1 #reduceActionForStatements1: 8003585 false ) 
	#(213 1 #reduceActionForUsesModule1: 12877825 false ) 
	#(211 1 #reduceActionForConstantArray1: 12650497 false ) 
	#(212 1 #reduceActionForUsesModuleList1: 12697601 false ) 
	#(341 0 #nil 30256129 false ) 
	#(214 1 #reduceActionForConstantArray1: 13012993 false ) 
	#(215 1 #reduceActionForStatements1: 13056001 false ) 
	#(210 2 #reduceActionForExpression15: 11590671 false ) 
	#(210 2 #reduceActionForExpression16: 11590668 false ) 
	#(257 0 #reduceActionForOptionalType1: 18777089 false ) 
	#(186 2 #reduceActionForSimpleDefinedType11: 8297483 false ) 
	#(210 2 #reduceActionForExpression17: 11590669 false ) 
	#(210 2 #reduceActionForExpression18: 11590670 false ) 
	#(186 2 #reduceActionForSimpleDefinedType2: 8297474 false ) 
	#(189 2 #reduceActionForNamedType4: 8997892 false ) 
	#(243 0 #reduceActionForOptionalArguments1: 17494018 false ) 
	#(234 0 #reduceActionForMethodVariables2: 15619073 false ) 
	#(190 1 #liftFirstValue: 9341955 false ) 
	#(190 1 #liftFirstValue: 9341954 false ) 
	#(157 3 #reduceActionForPackageLine1: 4980737 false ) 
	#(164 3 #reduceActionForUsesList2: 5793794 false ) 
	#(159 1 #reduceActionForStatements1: 5159937 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6185985 false ) 
	#(377 0 #nil 35612673 false ) 
	#(149 3 #reduceActionForProgramFile2: 4274178 false ) 
	#(320 1 #liftFirstValue: 27625475 false ) 
	#(320 1 #liftFirstValue: 27625479 false ) 
	#(320 1 #liftFirstValue: 27625474 false ) 
	#(320 1 #liftFirstValue: 27625476 false ) 
	#(299 1 #reduceActionForProcedureDefinition2: 24840194 false ) 
	#(300 1 #reduceActionForExternalProcedureHeader1: 25007105 false ) 
	#(302 1 #reduceActionForExternalProcedureHeader1: 25204737 false ) 
	#(320 1 #liftFirstValue: 27625477 false ) 
	#(307 1 #reduceActionForFunctionDefinition2: 25882626 false ) 
	#(308 1 #reduceActionForExternalFunctionHeader1: 26044417 false ) 
	#(310 1 #reduceActionForExternalFunctionHeader1: 26236929 false ) 
	#(319 2 #reduceActionForMethodVariables1: 27553793 false ) 
	#(320 1 #liftFirstValue: 27625478 false ) 
	#(320 1 #liftFirstValue: 27625473 false ) 
	#(322 1 #reduceActionForVars1: 27864065 false ) 
	#(358 3 #reduceActionForExpression12: 31906828 false ) 
	#(355 3 #reduceActionForStatementBlock1: 31609857 false ) 
	#(287 1 #liftFirstValue: 23081987 false ) 
	#(287 1 #liftFirstValue: 23081988 false ) 
	#(287 1 #liftFirstValue: 23081986 false ) 
	#(282 1 #reduceActionForConstantArray1: 22658050 false ) 
	#(283 1 #reduceActionForStatements1: 22691841 false ) 
	#(362 3 #reduceActionForAnonymousFunctionHeader1: 33643521 false ) 
	#(349 3 #reduceActionForRaiseStatement1: 30955521 false ) 
	#(339 0 #nil 30066689 false ) 
	#(366 3 #reduceActionForSetConstructor1: 34199553 false ) 
	#(328 3 #reduceActionForPackageLine1: 28784641 false ) 
	#(188 1 #reduceActionForStatements1: 8835073 false ) 
	#(328 3 #reduceActionForPackageLine1: 28784642 false ) 
	#(356 3 #reduceActionForAsmBlock1: 31714305 false ) 
	#(358 3 #reduceActionForExpression6: 31906822 false ) 
	#(374 1 #liftFirstValue: 35227649 false ) 
	#(373 1 #reduceActionForStatements1: 35120129 false ) 
	#(358 3 #reduceActionForExpression4: 31906820 false ) 
	#(358 3 #reduceActionForExpression4: 31906819 false ) 
	#(358 3 #reduceActionForExpression13: 31906829 false ) 
	#(370 1 #reduceActionForStatements1: 34617345 false ) 
	#(358 3 #reduceActionForExpression11: 31906827 false ) 
	#(182 3 #reduceActionForEnumType1: 7950337 false ) 
	#(210 3 #reduceActionForConstantExpression11: 11590667 false ) 
	#(341 1 #liftFirstValue: 30256130 false ) 
	#(241 3 #reduceActionForFileType1: 17171457 false ) 
	#(194 3 #reduceActionForSetType2: 9832450 false ) 
	#(194 3 #reduceActionForSetType1: 9832449 false ) 
	#(233 2 #reduceActionForQualifiedName1: 15418369 false ) 
	#(189 3 #reduceActionForExpression4: 8997891 false ) 
	#(225 0 #reduceActionForMethodVariables2: 14485505 false ) 
	#(224 1 #reduceActionForImplicitClassSection1: 14412801 false ) 
	#(207 3 #reduceActionForRangeType1: 11414529 false ) 
	#(217 1 #reduceActionForStatements1: 13315073 false ) 
	#(210 3 #reduceActionForExpression4: 11590660 false ) 
	#(210 3 #reduceActionForExpression11: 11590661 false ) 
	#(186 3 #reduceActionForSimpleDefinedType8: 8297480 false ) 
	#(237 3 #reduceActionForAttribute1: 16614401 false ) 
	#(180 1 #reduceActionForStatements1: 7535617 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6061058 false ) 
	#(152 4 #reduceActionForLibraryLine1: 4586497 false ) 
	#(150 4 #reduceActionForLibraryLine1: 4389889 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5574657 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5872642 false ) 
	#(166 3 #reduceActionForPackageLine1: 5947394 false ) 
	#(149 4 #reduceActionForProgramFile1: 4274177 false ) 
	#(153 2 #reduceActionForMethodVariables1: 4703234 false ) 
	#(158 3 #reduceActionForRequires1: 5079041 false ) 
	#(156 4 #reduceActionForPackageFile1: 4923393 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5679106 false ) 
	#(290 0 #reduceActionForMethodVariables2: 23401473 false ) 
	#(378 0 #nil 35723265 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6415361 false ) 
	#(171 1 #reduceActionForConstantValues1: 6494209 false ) 
	#(285 1 #reduceActionForStatements1: 22926337 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6779905 false ) 
	#(174 1 #reduceActionForConstantValues1: 6879233 false ) 
	#(323 2 #reduceActionForVarsVars2: 27893762 false ) 
	#(324 1 #reduceActionForConstantValues1: 27981825 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7109633 false ) 
	#(177 1 #reduceActionForConstantValues1: 7190529 false ) 
	#(323 2 #reduceActionForVarsVars2: 27893761 false ) 
	#(299 2 #reduceActionForProcedureDefinition1: 24840193 false ) 
	#(276 0 #reduceActionForMethodVariables2: 21145601 false ) 
	#(307 2 #reduceActionForFunctionDefinition1: 25882625 false ) 
	#(318 3 #reduceActionForMethodComponents1: 27465729 false ) 
	#(326 3 #reduceActionForStatements2: 28205058 false ) 
	#(347 1 #reduceActionForBaseCaseLabel1: 30743553 false ) 
	#(348 0 #reduceActionForElseCase1: 30905345 false ) 
	#(343 1 #reduceActionForStatements1: 30360577 false ) 
	#(346 1 #reduceActionForStatements1: 30654465 false ) 
	#(345 1 #liftFirstValue: 30548993 false ) 
	#(193 3 #reduceActionForRequires1: 9767938 false ) 
	#(284 2 #reduceActionForArgument2: 22787074 false ) 
	#(261 2 #reduceActionForGotoStatement1: 19124226 false ) 
	#(331 4 #reduceActionForIfStatement1: 29124609 false ) 
	#(372 4 #reduceActionForInheritedFunctionCall2: 34727938 false ) 
	#(350 2 #reduceActionForGotoStatement1: 31064066 false ) 
	#(330 4 #reduceActionForRepeatStatement1: 29021185 false ) 
	#(338 0 #nil 29990913 false ) 
	#(336 1 #reduceActionForConstantValues1: 29824001 false ) 
	#(354 4 #reduceActionForLibraryLine1: 31504385 false ) 
	#(333 3 #reduceActionForStatements2: 29458434 false ) 
	#(332 4 #reduceActionForRepeatStatement1: 29364225 false ) 
	#(368 3 #reduceActionForSetValue2: 34429954 false ) 
	#(367 3 #reduceActionForStatements2: 34329602 false ) 
	#(187 3 #reduceActionForRequires1: 8733697 false ) 
	#(358 4 #reduceActionForExpression5: 31906821 false ) 
	#(369 3 #reduceActionForRequires1: 34563073 false ) 
	#(184 3 #reduceActionForEnumName2: 8076290 false ) 
	#(216 3 #reduceActionForConstantRecordField1: 13190145 false ) 
	#(183 3 #reduceActionForStatements2: 8003586 false ) 
	#(213 3 #reduceActionForPackageLine1: 12877826 false ) 
	#(212 3 #reduceActionForUsesModuleList2: 12697602 false ) 
	#(210 4 #reduceActionForConstantExpression10: 11590666 false ) 
	#(215 3 #reduceActionForStatements2: 13056002 false ) 
	#(257 2 #reduceActionForGotoStatement1: 18777090 false ) 
	#(245 1 #liftFirstValue: 17671170 false ) 
	#(245 1 #liftFirstValue: 17671169 false ) 
	#(244 1 #reduceActionForStatements1: 17559553 false ) 
	#(198 4 #reduceActionForRecordType1: 10466305 false ) 
	#(200 2 #reduceActionForRecordFieldList1: 10739713 false ) 
	#(235 1 #liftFirstValue: 15698956 false ) 
	#(235 1 #liftFirstValue: 15698957 false ) 
	#(234 2 #reduceActionForMethodVariables1: 15619074 false ) 
	#(235 1 #liftFirstValue: 15698952 false ) 
	#(235 1 #liftFirstValue: 15698954 false ) 
	#(235 1 #liftFirstValue: 15698955 false ) 
	#(235 1 #liftFirstValue: 15698953 false ) 
	#(236 1 #liftFirstValue: 16221190 false ) 
	#(235 1 #liftFirstValue: 15698948 false ) 
	#(235 1 #liftFirstValue: 15698950 false ) 
	#(252 1 #liftFirstValue: 18302977 false ) 
	#(252 1 #liftFirstValue: 18302978 false ) 
	#(252 1 #liftFirstValue: 18302979 false ) 
	#(252 1 #liftFirstValue: 18302980 false ) 
	#(252 1 #liftFirstValue: 18302981 false ) 
	#(251 1 #liftFirstValue: 18230273 false ) 
	#(262 1 #reduceActionForPropertyHeader1: 19172353 false ) 
	#(251 1 #liftFirstValue: 18230274 false ) 
	#(253 1 #liftFirstValue: 18441217 false ) 
	#(253 1 #liftFirstValue: 18441218 false ) 
	#(254 1 #liftFirstValue: 18525185 false ) 
	#(254 1 #liftFirstValue: 18525186 false ) 
	#(255 1 #liftFirstValue: 18606081 false ) 
	#(255 1 #liftFirstValue: 18606082 false ) 
	#(256 1 #liftFirstValue: 18683905 false ) 
	#(256 1 #liftFirstValue: 18683906 false ) 
	#(258 1 #liftFirstValue: 18869249 false ) 
	#(258 1 #liftFirstValue: 18869250 false ) 
	#(259 1 #liftFirstValue: 18944001 false ) 
	#(259 1 #liftFirstValue: 18944002 false ) 
	#(260 1 #liftFirstValue: 19034113 false ) 
	#(260 1 #liftFirstValue: 19034114 false ) 
	#(235 1 #liftFirstValue: 15698947 false ) 
	#(210 4 #reduceActionForExpression5: 11590664 false ) 
	#(186 4 #reduceActionForSimpleDefinedType6: 8297478 false ) 
	#(179 3 #reduceActionForRequires1: 7447554 false ) 
	#(220 0 #reduceActionForMethodVariables2: 14083073 false ) 
	#(247 1 #liftFirstValue: 17922050 false ) 
	#(247 1 #liftFirstValue: 17922049 false ) 
	#(231 0 #reduceActionForOptionalArguments1: 15257601 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7298049 false ) 
	#(181 1 #reduceActionForUsesModule1: 7678979 false ) 
	#(181 1 #reduceActionForUsesModule1: 7678980 false ) 
	#(185 1 #liftFirstValue: 8185860 false ) 
	#(185 1 #liftFirstValue: 8185857 false ) 
	#(185 1 #liftFirstValue: 8185861 false ) 
	#(185 1 #liftFirstValue: 8185858 false ) 
	#(185 1 #liftFirstValue: 8185859 false ) 
	#(246 1 #reduceActionForInterfaceType2: 17727490 false ) 
	#(151 5 #reduceActionForLibraryFile1: 4506625 false ) 
	#(159 3 #reduceActionForStatements2: 5159938 false ) 
	#(160 3 #reduceActionForUsesList2: 5269505 false ) 
	#(381 2 #reduceActionForGotoStatement1: 36028417 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6185986 false ) 
	#(169 1 #liftFirstValue: 6280195 false ) 
	#(169 1 #liftFirstValue: 6280194 false ) 
	#(169 1 #liftFirstValue: 6280193 false ) 
	#(169 1 #liftFirstValue: 6280196 false ) 
	#(169 1 #liftFirstValue: 6280197 false ) 
	#(169 1 #liftFirstValue: 6280198 false ) 
	#(289 0 #nil 23315457 false ) 
	#(377 2 #reduceActionForInitializationSection2: 35612674 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6494210 false ) 
	#(321 3 #reduceActionForLabels1: 27771905 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6879234 false ) 
	#(324 2 #reduceActionForMethodVariables1: 27981826 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7190530 false ) 
	#(280 2 #reduceActionForExternalMethodModifier1: 21714945 false ) 
	#(280 2 #reduceActionForExternalMethodModifier6: 21714950 false ) 
	#(301 3 #reduceActionForExternalProcedureHeaderVars1: 25086977 false ) 
	#(309 3 #reduceActionForExternalFunctionHeaderVars1: 26121217 false ) 
	#(342 2 #reduceActionForCaseOptionList1: 30308353 false ) 
	#(353 1 #liftFirstValue: 31471618 false ) 
	#(353 1 #liftFirstValue: 31471617 false ) 
	#(283 3 #reduceActionForStatements2: 22691842 false ) 
	#(372 5 #reduceActionForInheritedFunctionCall1: 34727937 false ) 
	#(335 3 #reduceActionForExcept3: 29664259 false ) 
	#(336 2 #reduceActionForMethodVariables1: 29824002 false ) 
	#(335 3 #reduceActionForExcept2: 29664258 false ) 
	#(339 2 #reduceActionForFinally2: 30066690 false ) 
	#(334 5 #reduceActionForTryStatement1: 29563905 false ) 
	#(188 3 #reduceActionForStatements2: 8835074 false ) 
	#(373 3 #reduceActionForStatements2: 35120130 false ) 
	#(374 3 #reduceActionForMethodArgument2: 35227650 false ) 
	#(370 3 #reduceActionForStatements2: 34617346 false ) 
	#(191 5 #reduceActionForAnonymousProcedureType1: 9418753 false ) 
	#(194 5 #reduceActionForSetType3: 9832451 false ) 
	#(233 4 #reduceActionForQualifiedName2: 15418370 false ) 
	#(243 3 #reduceActionForRequires1: 17494017 false ) 
	#(242 5 #reduceActionForArrayType2: 17283074 false ) 
	#(242 5 #reduceActionForArrayType1: 17283073 false ) 
	#(200 3 #reduceActionForRecordFieldList2: 10739714 false ) 
	#(225 2 #reduceActionForMethodVariables1: 14485506 false ) 
	#(226 1 #liftFirstValue: 14547969 false ) 
	#(226 1 #liftFirstValue: 14547970 false ) 
	#(226 1 #liftFirstValue: 14547971 false ) 
	#(226 1 #liftFirstValue: 14547972 false ) 
	#(264 2 #reduceActionForClassPropertyHeader1: 19430401 false ) 
	#(305 2 #reduceActionForExternalClassProcedureHeader1: 25653249 false ) 
	#(306 2 #reduceActionForExternalClassProcedureHeader1: 25764865 false ) 
	#(313 2 #reduceActionForExternalClassFunctionHeader1: 26686465 false ) 
	#(314 2 #reduceActionForExternalClassFunctionHeader1: 26795009 false ) 
	#(235 2 #reduceActionForNewClassComponent2: 15698946 false ) 
	#(298 0 #reduceActionForOptionalType1: 24792065 false ) 
	#(266 0 #nil 19853313 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15698949 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15698951 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221185 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221186 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221187 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221188 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221189 false ) 
	#(217 3 #reduceActionForStatements2: 13315074 false ) 
	#(180 3 #reduceActionForStatements2: 7535618 false ) 
	#(181 2 #reduceActionForDefinedType2: 7678978 false ) 
	#(248 0 #nil 17977345 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7298050 false ) 
	#(154 3 #reduceActionForLibraryExport1: 4753409 false ) 
	#(291 1 #liftFirstValue: 23460874 false ) 
	#(291 1 #liftFirstValue: 23460875 false ) 
	#(291 1 #liftFirstValue: 23460872 false ) 
	#(288 4 #reduceActionForImplementationSection2: 23169026 false ) 
	#(290 2 #reduceActionForMethodVariables1: 23401474 false ) 
	#(291 1 #liftFirstValue: 23460865 false ) 
	#(292 1 #reduceActionForConstructorDefinition2: 23748610 false ) 
	#(291 1 #liftFirstValue: 23460866 false ) 
	#(295 1 #reduceActionForDestructorDefinition2: 24278018 false ) 
	#(291 1 #liftFirstValue: 23460867 false ) 
	#(291 1 #liftFirstValue: 23460868 false ) 
	#(304 1 #reduceActionForClassProcedureDefinition2: 25460738 false ) 
	#(291 1 #liftFirstValue: 23460869 false ) 
	#(291 1 #liftFirstValue: 23460870 false ) 
	#(312 1 #reduceActionForClassFunctionDefinition2: 26499074 false ) 
	#(291 1 #liftFirstValue: 23460871 false ) 
	#(315 1 #reduceActionForClassOperatorDefinition2: 26909698 false ) 
	#(291 1 #liftFirstValue: 23460873 false ) 
	#(291 1 #liftFirstValue: 23460876 false ) 
	#(378 2 #reduceActionForFinalizationSection2: 35723266 false ) 
	#(161 6 #reduceActionForUnitFile1: 5352449 false ) 
	#(285 3 #reduceActionForStatements2: 22926338 false ) 
	#(277 0 #reduceActionForMethodVariables2: 21216257 false ) 
	#(223 0 #nil 14352385 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21714948 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21714946 false ) 
	#(281 1 #liftFirstValue: 22369291 false ) 
	#(281 1 #liftFirstValue: 22369285 false ) 
	#(281 1 #liftFirstValue: 22369294 false ) 
	#(281 1 #liftFirstValue: 22369289 false ) 
	#(281 1 #liftFirstValue: 22369295 false ) 
	#(281 1 #liftFirstValue: 22369298 false ) 
	#(281 1 #liftFirstValue: 22369293 false ) 
	#(281 1 #liftFirstValue: 22369301 false ) 
	#(281 1 #liftFirstValue: 22369300 false ) 
	#(281 1 #liftFirstValue: 22369299 false ) 
	#(281 1 #liftFirstValue: 22369292 false ) 
	#(281 1 #liftFirstValue: 22369281 false ) 
	#(281 1 #liftFirstValue: 22369282 false ) 
	#(281 1 #liftFirstValue: 22369286 false ) 
	#(281 1 #liftFirstValue: 22369297 false ) 
	#(281 1 #liftFirstValue: 22369284 false ) 
	#(281 1 #liftFirstValue: 22369287 false ) 
	#(281 1 #liftFirstValue: 22369302 false ) 
	#(281 1 #liftFirstValue: 22369296 false ) 
	#(281 1 #liftFirstValue: 22369283 false ) 
	#(281 1 #liftFirstValue: 22369290 false ) 
	#(281 1 #liftFirstValue: 22369288 false ) 
	#(276 2 #reduceActionForMethodVariables1: 21145602 false ) 
	#(278 1 #liftFirstValue: 21319681 false ) 
	#(278 1 #liftFirstValue: 21319682 false ) 
	#(347 3 #reduceActionForBaseCaseLabel2: 30743554 false ) 
	#(348 2 #reduceActionForElseCase2: 30905346 false ) 
	#(340 6 #reduceActionForCaseStatement1: 30134273 false ) 
	#(343 3 #reduceActionForStatements2: 30360578 false ) 
	#(344 3 #reduceActionForCaseOption1: 30462977 false ) 
	#(346 3 #reduceActionForStatements2: 30654466 false ) 
	#(345 3 #reduceActionForCaseLabel2: 30548994 false ) 
	#(352 6 #reduceActionForForInStatement1: 31325185 false ) 
	#(286 0 #reduceActionForOptionalType1: 23017473 false ) 
	#(331 6 #reduceActionForForInStatement1: 29124610 false ) 
	#(363 6 #reduceActionForMemExpression1: 33753089 false ) 
	#(363 6 #reduceActionForMemExpression1: 33753090 false ) 
	#(338 2 #reduceActionForPossibleExceptElse2: 29990914 false ) 
	#(199 6 #reduceActionForRecordHelperType1: 10571777 false ) 
	#(196 1 #reduceActionForStatements1: 10266625 false ) 
	#(195 3 #reduceActionForTwoItemSetNameList1: 10109953 false ) 
	#(244 3 #reduceActionForStatements2: 17559554 false ) 
	#(227 2 #reduceActionForPrivateClassSection2: 14661634 false ) 
	#(228 2 #reduceActionForProtectedClassSection2: 14854146 false ) 
	#(229 2 #reduceActionForPublicClassSection1: 15060993 false ) 
	#(230 2 #reduceActionForPublishedClassSection1: 15153153 false ) 
	#(293 3 #reduceActionForExternalConstructorHeader1: 23925761 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24450049 false ) 
	#(316 3 #reduceActionForExternalConstructorHeader1: 27097089 false ) 
	#(197 3 #reduceActionForMetaclassType1: 10370049 false ) 
	#(221 1 #liftFirstValue: 14157825 false ) 
	#(221 1 #liftFirstValue: 14157826 false ) 
	#(220 2 #reduceActionForMethodVariables1: 14083074 false ) 
	#(218 3 #reduceActionForNewClassType2: 13434882 false ) 
	#(232 1 #reduceActionForStatements1: 15319041 false ) 
	#(181 3 #reduceActionForPackageLine1: 7678981 false ) 
	#(181 3 #reduceActionForPackageLine1: 7678977 false ) 
	#(249 0 #reduceActionForMethodVariables2: 18053121 false ) 
	#(289 2 #reduceActionForImplementationCode2: 23315458 false ) 
	#(380 1 #reduceActionForStatements1: 35937281 false ) 
	#(292 2 #reduceActionForConstructorDefinition1: 23748609 false ) 
	#(295 2 #reduceActionForDestructorDefinition1: 24278017 false ) 
	#(304 2 #reduceActionForClassProcedureDefinition1: 25460737 false ) 
	#(312 2 #reduceActionForClassFunctionDefinition1: 26499073 false ) 
	#(315 2 #reduceActionForClassOperatorDefinition1: 26909697 false ) 
	#(303 5 #reduceActionForNonExternalProcedureHeaderVars1: 25290753 false ) 
	#(223 1 #liftFirstValue: 14352386 false ) 
	#(279 2 #reduceActionForExternalMethodModifier6: 21394433 false ) 
	#(284 5 #reduceActionForArgument1: 22787073 false ) 
	#(192 7 #reduceActionForAnonymousFunctionType1: 9582593 false ) 
	#(227 3 #reduceActionForPrivateClassSection1: 14661633 false ) 
	#(228 3 #reduceActionForProtectedClassSection1: 14854145 false ) 
	#(298 2 #reduceActionForGotoStatement1: 24792066 false ) 
	#(265 0 #reduceActionForPropertyValues1: 19522561 false ) 
	#(231 3 #reduceActionForRequires1: 15257602 false ) 
	#(379 3 #reduceActionForExportsDefinition1: 35826689 false ) 
	#(311 6 #reduceActionForNonExternalFunctionHeaderVars1: 26319873 false ) 
	#(277 2 #reduceActionForMethodVariables1: 21216258 false ) 
	#(175 5 #reduceActionForResource1: 6953985 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21714949 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21714947 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21394435 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21394434 false ) 
	#(351 8 #reduceActionForForStatement1: 31131649 false ) 
	#(286 2 #reduceActionForGotoStatement1: 23017474 false ) 
	#(337 5 #reduceActionForOnDo1: 29888513 false ) 
	#(196 3 #reduceActionForStatements2: 10266626 false ) 
	#(294 5 #reduceActionForNonExternalConstructorHeader1: 24061953 false ) 
	#(297 5 #reduceActionForNonExternalDestructorHeader1: 24583169 false ) 
	#(238 5 #reduceActionForInterfaceFunctionAssignment1: 16701441 false ) 
	#(239 5 #reduceActionForInterfaceProcedureAssignment1: 16884737 false ) 
	#(266 3 #reduceActionForPropertyArrayAccessors2: 19853314 false ) 
	#(235 5 #reduceActionForNewClassComponent1: 15698945 false ) 
	#(232 3 #reduceActionForStatements2: 15319042 false ) 
	#(222 5 #reduceActionForOldClassType1: 14202881 false ) 
	#(248 3 #reduceActionForGuid2: 17977346 false ) 
	#(246 5 #reduceActionForInterfaceType1: 17727489 false ) 
	#(249 2 #reduceActionForMethodVariables1: 18053122 false ) 
	#(250 1 #liftFirstValue: 18145282 false ) 
	#(250 1 #liftFirstValue: 18145281 false ) 
	#(380 3 #reduceActionForStatements2: 35937282 false ) 
	#(325 6 #reduceActionForVariable1: 28081153 false ) 
	#(203 1 #reduceActionForStatements1: 11074561 false ) 
	#(205 1 #reduceActionForStatements1: 11289601 false ) 
	#(206 1 #liftFirstValue: 11376641 false ) 
	#(294 6 #reduceActionForNonExternalConstructorHeader2: 24061954 false ) 
	#(297 6 #reduceActionForNonExternalDestructorHeader2: 24583170 false ) 
	#(271 1 #reduceActionForPropertyDefault2: 20528130 false ) 
	#(271 1 #reduceActionForPropertyDefault3: 20528131 false ) 
	#(275 0 #nil 21045249 false ) 
	#(265 2 #reduceActionForPropertyValues2: 19522562 false ) 
	#(265 2 #reduceActionForCaseOptionList1: 19522563 false ) 
	#(265 2 #reduceActionForPropertyValues4: 19522564 false ) 
	#(265 2 #reduceActionForPropertyValues8: 19522568 false ) 
	#(265 2 #reduceActionForPropertyValues5: 19522565 false ) 
	#(265 2 #reduceActionForPropertyValues7: 19522567 false ) 
	#(265 2 #reduceActionForPropertyValues6: 19522566 false ) 
	#(219 6 #reduceActionForClassHelperType2: 13667330 false ) 
	#(218 6 #reduceActionForNewClassType1: 13434881 false ) 
	#(172 7 #reduceActionForConstantValue1: 6589441 false ) 
	#(202 6 #reduceActionForVariantRecordPart1: 10925057 false ) 
	#(317 7 #reduceActionForNonExternalClassOperatorHeader1: 27239425 false ) 
	#(271 2 #reduceActionForPropertyDefault1: 20528129 false ) 
	#(270 2 #reduceActionForPropertyDispid1: 20215809 false ) 
	#(273 1 #reduceActionForStatements1: 20836353 false ) 
	#(272 2 #reduceActionForPropertyImplements1: 20731905 false ) 
	#(267 2 #reduceActionForPropertyIndex1: 19950593 false ) 
	#(268 2 #reduceActionForPropertyReader1: 20043777 false ) 
	#(274 2 #reduceActionForPropertyStored1: 20956161 false ) 
	#(269 2 #reduceActionForPropertyWriter1: 20128769 false ) 
	#(263 7 #reduceActionForPropertyHeaderVars1: 19232769 false ) 
	#(203 3 #reduceActionForStatements2: 11074562 false ) 
	#(205 3 #reduceActionForStatements2: 11289602 false ) 
	#(270 3 #reduceActionForPropertyDispid2: 20215810 false ) 
	#(270 3 #reduceActionForPropertyDispid3: 20215811 false ) 
	#(275 2 #reduceActionForPropertyModifiers2: 21045250 false ) 
	#(273 3 #reduceActionForStatements2: 20836354 false ) 
	#(219 9 #reduceActionForClassHelperType1: 13667329 false ) 
	#(204 5 #reduceActionForVariantType1: 11189249 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'LibraryExport' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'InstantiatedGenericVariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiProgramNode #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiLibraryExportNode #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiInstantiatedGenericVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 21 0 66 0 25 0 84 0 6 0 89 0 29 0 90 0 6 0 103 0 6 0 114 0 6 0 117 0 33 0 118 0 37 0 121 0 6 0 122 0 41 0 148 0 45 0 149 0 49 0 150 0 53 0 151 0 57 0 152 0 61 0 156 0 65 0 157 0 69 0 161 0 73 0 162 0 77 0 164] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 0 185 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 0 185 1 99 0 185 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 133 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 153 0 182 1 105 0 186 1 109 0 189 1 153 0 191 1 153 0 192 1 105 0 194 1 105 0 198 1 105 0 199 1 133 0 201 1 105 0 207 1 141 0 208 1 145 0 209 1 149 0 210 1 153 0 240 1 105 0 241 1 105 0 242 1 149 1 110 1 169 1 115 1 173 1 126 0 18 1 127] 
#[1 1 177 0 129 1 181 0 138 1 185 0 178 1 189 0 237] 
#[1 1 193 0 138 1 197 0 167] 
#[1 1 193 0 138 1 201 0 167] 
#[1 1 193 0 138 1 205 0 167] 
#[1 1 193 0 138 1 209 0 167] 
#[1 1 193 0 138 1 213 0 165 1 217 0 166 1 221 0 167] 
#[0 0 0 1 127] 
#[0 0 26 1 127] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 1 225 0 164] 
#[0 0 30 1 127] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 1 229 0 164] 
#[0 0 34 1 127] 
#[1 1 233 0 102 1 237 0 158] 
#[0 0 38 1 127] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 1 241 0 63 1 245 0 163 0 46 1 127] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 1 249 0 155 1 253 1 62 2 1 1 63] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 9 1 102 2 9 1 103 0 253 1 104 2 9 1 105 1 5 1 106 2 9 1 107 2 9 1 108 2 9 1 109 2 9 1 110 1 25 1 115 2 9 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 13 1 102 2 13 1 103 0 253 1 104 2 13 1 105 1 5 1 106 2 13 1 107 2 13 1 108 2 13 1 109 2 13 1 110 1 25 1 115 2 13 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 17 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 25 1 102 2 25 1 103 0 253 1 104 2 25 1 105 1 5 1 106 2 25 1 107 2 25 1 108 2 25 1 109 2 25 1 110 1 25 1 115 2 25 1 116 1 33 1 126] 
#[1 2 29 0 138 2 33 1 108] 
#[1 2 37 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 103 0 54 0 114 0 54 0 117 0 54 0 122 2 41 0 193] 
#[1 2 45 0 138 2 49 0 140] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 53 1 102 2 53 1 103 0 253 1 104 2 53 1 105 1 5 1 106 2 53 1 107 2 53 1 108 2 53 1 109 2 53 1 110 1 25 1 115 2 53 1 116 1 33 1 126] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 74 0 58 0 77 0 58 0 78 0 58 0 80 0 58 0 96 0 58 0 97 0 58 0 107 0 58 0 108 0 58 0 111 0 58 0 113 0 58 0 115 0 58 0 120 0 58 0 126 0 58 0 127 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 2 57 0 138 0 58 1 127] 
#[0 2 61 0 129] 
#[0 2 65 0 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 69 1 102 2 69 1 103 0 253 1 104 2 69 1 105 1 5 1 106 2 69 1 107 2 69 1 108 2 69 1 109 2 69 1 110 1 25 1 115 2 69 1 116 1 33 1 126] 
#[1 2 37 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 103 0 54 0 114 0 54 0 117 0 54 0 122 2 73 0 193] 
#[1 0 81 0 2 0 85 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 101 0 52 0 113 0 60 0 62 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 62 0 78 0 129 0 89 0 62 0 120 0 153 0 129 0 157 0 134 0 161 0 135 0 62 0 136 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 77 1 102 2 77 1 103 0 253 1 104 2 77 1 105 1 5 1 106 2 77 1 107 2 77 1 108 2 77 1 109 2 77 1 110 1 25 1 115 2 77 1 116 1 33 1 126 0 62 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 81 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 85 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 89 1 102 2 89 1 103 0 253 1 104 2 89 1 105 1 5 1 106 2 89 1 107 2 89 1 108 2 89 1 109 2 89 1 110 1 25 1 115 2 89 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 93 1 77 2 97 1 102 2 97 1 103 0 253 1 104 2 97 1 105 1 5 1 106 2 97 1 107 2 97 1 108 2 97 1 109 2 97 1 110 1 25 1 115 2 97 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 2 101 0 130 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 105 1 102 2 105 1 103 0 253 1 104 2 105 1 105 1 5 1 106 2 105 1 107 2 105 1 108 2 105 1 109 2 105 1 110 2 109 1 111 2 113 1 112 1 25 1 115 2 105 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 117 1 102 2 117 1 103 0 253 1 104 2 117 1 105 1 5 1 106 2 117 1 107 2 117 1 108 2 117 1 109 2 117 1 110 1 25 1 115 2 117 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 121 1 102 2 121 1 103 0 253 1 104 2 121 1 105 1 5 1 106 2 121 1 107 2 121 1 108 2 121 1 109 2 121 1 110 1 25 1 115 2 121 1 116 1 33 1 126] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 125 0 9 0 66 0 10 0 11 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 107 0 66 0 108 0 66 0 120 0 66 0 128 0 66 0 129 0 66 0 131 0 66 0 132 0 66 0 134 0 66 0 135 0 66 0 136 0 66 0 137 2 133 0 187 0 66 1 127] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 2 137 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 78 0 70 0 80 0 70 0 107 0 70 0 108 0 70 0 120 0 70 0 128 0 70 0 129 0 70 0 131 0 70 0 132 0 70 0 134 0 70 0 135 0 70 0 136 0 70 0 137 0 70 1 127] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 0 1 127] 
#[0 0 86 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 94 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 98 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 102 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 110 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 114 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 126 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 0 134 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 2 141 0 21] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 2 249 0 58 0 138 0 61 2 249 0 64 2 249 0 71 0 138 0 78 2 249 0 80 2 249 0 107 2 249 0 108 0 138 0 120 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 0 138 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 0 138 1 127] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 3 1 1 62 2 1 1 63] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 3 5 1 62 2 1 1 63] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 3 9 0 2 0 178 0 3 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 13 0 138 3 17 0 139 1 145 0 140 1 169 0 142 1 97 0 146 3 21 0 183 3 25 0 184 1 145 0 209 3 29 0 210 3 33 0 211 3 37 0 212 3 41 0 213 3 45 0 214 3 49 0 215 3 53 0 216 3 29 1 110 1 169 1 115 1 173 1 126] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 3 61 0 210 3 61 1 110 1 169 1 115 1 173 1 126] 
#[1 0 182 0 3 0 182 0 5 0 182 0 14 0 182 0 16 0 182 0 21 0 182 0 23 0 182 0 27 0 182 0 30 0 182 0 31 0 182 0 33 0 182 0 36 0 182 0 52 0 182 0 57 0 182 0 59 0 182 0 65 0 182 0 74 3 65 0 77 0 182 0 87 0 182 0 89 0 182 0 96 0 182 0 97 0 182 0 103 0 182 0 111 0 182 0 114 0 182 0 117 0 182 0 122 0 182 0 126 0 182 0 127 0 182 0 129 0 182 0 130 0 182 0 131 0 182 0 136 0 182 1 127] 
#[1 2 37 0 2 0 54 0 9 3 69 0 193] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 3 73 0 210 3 73 1 110 1 169 1 115 1 173 1 126] 
#[0 0 186 0 19 0 98] 
#[1 2 37 0 2 0 54 0 77 0 54 0 136 3 77 0 193] 
#[0 3 81 0 54] 
#[0 3 85 0 77] 
#[1 3 89 0 138 3 93 0 233] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 3 97 0 210 3 97 1 110 1 169 1 115 1 173 1 126] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 3 101 0 210 3 101 1 110 1 169 1 115 1 173 1 126] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 133 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 3 109 0 182 3 109 0 186 1 109 0 189 3 109 0 191 3 109 0 192 3 109 0 194 3 109 0 198 3 109 0 199 1 133 0 201 3 109 0 207 1 141 0 208 1 145 0 209 1 149 0 210 3 109 0 240 3 109 0 241 3 109 0 242 1 149 1 110 1 169 1 115 1 173 1 126 0 18 1 127] 
#[1 0 190 0 2 0 194 0 3 0 190 0 4 0 194 0 5 0 27 0 6 0 190 0 7 0 190 0 8 0 27 0 11 0 190 0 12 0 190 0 13 0 194 0 14 0 194 0 16 0 190 0 18 0 190 0 20 0 194 0 21 0 194 0 23 0 194 0 27 0 194 0 30 0 194 0 31 0 194 0 33 0 190 0 35 0 194 0 36 0 194 0 52 0 194 0 57 0 190 0 58 0 194 0 59 0 190 0 64 0 194 0 65 0 190 0 71 0 194 0 74 0 194 0 77 0 190 0 80 0 194 0 87 0 194 0 89 0 194 0 96 0 194 0 97 0 194 0 103 0 190 0 107 0 190 0 108 0 194 0 111 0 194 0 114 0 194 0 117 0 194 0 122 0 194 0 126 0 194 0 127 0 190 0 128 0 194 0 129 0 194 0 130 0 27 0 131 0 190 0 132 0 190 0 134 0 190 0 135 0 194 0 136 0 194 1 127] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[0 0 202 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 0 206 0 16 0 206 0 129 0 0 1 127] 
#[1 0 210 0 3 0 210 0 5 3 113 0 6 2 129 0 11 0 210 0 14 0 210 0 16 0 210 0 21 0 210 0 23 0 210 0 27 0 210 0 30 0 210 0 31 0 210 0 33 0 210 0 36 0 210 0 52 0 210 0 57 0 210 0 59 0 210 0 65 0 210 0 74 0 210 0 77 0 210 0 87 0 210 0 89 0 210 0 96 0 210 0 97 0 210 0 103 0 210 0 111 0 210 0 114 0 210 0 117 0 210 0 122 0 210 0 126 0 210 0 127 0 210 0 129 0 210 0 130 0 210 0 131 0 210 0 136 3 117 0 187 0 210 1 127] 
#[0 0 214 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 121 0 19 3 125 0 98] 
#[0 0 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 3 129 0 7] 
#[0 0 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 133 0 2 0 242 0 3 3 141 0 4 0 242 0 5 3 137 0 6 0 242 0 7 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 0 242 0 14 0 242 0 16 3 141 0 18 3 141 0 20 0 242 0 21 0 242 0 23 0 242 0 27 0 242 0 30 0 242 0 31 0 242 0 33 3 141 0 35 0 242 0 36 0 242 0 52 0 242 0 57 3 141 0 58 0 242 0 59 3 141 0 64 0 242 0 65 3 141 0 71 0 242 0 74 0 242 0 77 3 141 0 80 0 242 0 87 0 242 0 89 0 242 0 96 0 242 0 97 0 242 0 103 3 141 0 107 3 141 0 108 0 242 0 111 0 242 0 114 0 242 0 117 0 242 0 122 0 242 0 126 0 242 0 127 3 141 0 128 0 242 0 129 0 242 0 130 0 31 0 131 3 141 0 132 3 141 0 134 3 141 0 135 0 242 0 136 3 141 1 120 0 242 1 127] 
#[1 3 145 0 16 3 149 0 129] 
#[0 0 246 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 250 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 3 153 0 210 3 153 1 110 1 169 1 115 1 173 1 126] 
#[1 3 157 0 11 1 10 0 14 3 161 0 179] 
#[0 0 0 1 127] 
#[0 3 165 0 138] 
#[0 1 14 0 5 0 6 0 31 0 58 0 87 0 136] 
#[1 3 169 0 6 3 181 0 31 3 181 0 87 1 18 0 136 3 181 0 190] 
#[1 3 169 0 6 3 185 0 136] 
#[1 3 169 0 6 3 189 0 31 3 189 0 87 1 18 0 136 3 189 0 190] 
#[1 3 169 0 6 3 193 0 31 3 193 0 87 1 18 0 136 3 193 0 190] 
#[1 3 197 0 5 3 201 0 136] 
#[0 1 22 0 5 0 136] 
#[1 1 26 0 5 3 169 0 6 3 205 0 58 1 26 0 136] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 3 209 0 155 1 253 1 62 2 1 1 63] 
#[1 1 30 0 21 1 30 0 23 1 30 0 27 1 30 0 43 1 30 0 52 1 30 0 65 1 30 0 89 1 30 0 103 1 30 0 114 1 30 0 117 1 30 0 122 3 213 0 153] 
#[1 1 193 0 138 3 217 0 159 3 221 0 167] 
#[1 3 225 0 29 3 229 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 3 233 0 164] 
#[1 1 34 0 40 1 34 0 48 3 237 0 56 1 34 0 61 3 241 1 32] 
#[0 3 245 0 6] 
#[0 1 38 0 6] 
#[1 0 10 0 21 0 89 0 23 3 249 0 27 3 253 0 52 4 1 0 65 4 5 0 89 4 9 0 103 4 13 0 114 4 17 0 117 4 21 0 122 4 77 0 170 4 77 0 173 4 77 0 176 4 77 1 43 4 41 1 44 4 45 1 45 4 49 1 46 4 53 1 47 4 77 1 51 4 61 1 52 4 65 1 53 4 69 1 54 4 73 1 55 4 77 1 64 4 77 1 65 4 77 1 66 4 89 1 67 4 93 1 99 4 93 1 100 0 241 1 101] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 66 0 8 0 66 0 9 0 66 0 10 0 11 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 30 0 66 0 33 0 66 0 35 0 66 0 36 0 66 0 37 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 74 0 66 0 77 0 66 0 78 0 66 0 80 0 66 0 96 0 66 0 97 0 66 0 107 0 66 0 108 0 66 0 111 0 66 0 113 0 66 0 115 0 66 0 120 0 66 0 126 0 66 0 127 0 66 0 128 0 66 0 129 0 66 0 130 0 66 0 131 0 66 0 132 0 66 0 133 0 66 0 134 0 66 0 135 0 66 0 136 0 66 0 137 2 133 0 187 0 66 1 127] 
#[1 2 145 0 2 4 97 0 3 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 2 145 0 2 1 42 0 3 1 42 0 4 1 42 0 5 2 153 0 6 1 42 0 7 1 42 0 8 1 42 0 9 1 42 0 10 0 35 0 11 0 39 0 12 0 43 0 13 0 47 0 14 1 42 0 18 1 42 0 20 1 42 0 30 1 42 0 33 1 42 0 35 1 42 0 36 1 42 0 37 1 42 0 39 1 42 0 40 1 42 0 41 1 42 0 48 1 42 0 49 1 42 0 57 0 51 0 58 1 42 0 59 1 42 0 61 1 42 0 64 1 42 0 71 1 42 0 74 1 42 0 77 1 42 0 78 1 42 0 80 1 42 0 96 1 42 0 97 1 42 0 107 1 42 0 108 1 42 0 111 1 42 0 113 1 42 0 115 1 42 0 120 1 42 0 126 1 42 0 127 1 42 0 128 2 221 0 129 1 42 0 130 0 55 0 131 0 59 0 132 1 42 0 133 1 42 0 134 1 42 0 135 1 42 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 1 42 1 127] 
#[1 4 101 0 40 4 105 0 136] 
#[0 1 46 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 4 109 0 77 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[0 0 66 0 10 0 58] 
#[1 4 113 0 10 4 117 0 58] 
#[1 1 50 0 3 4 145 0 27 4 145 0 81 4 145 0 122 1 54 0 138 4 133 1 26 4 137 1 27 4 141 1 28 4 145 1 31] 
#[1 4 149 0 9 1 58 0 21 1 58 0 23 1 58 0 27 1 58 0 52 1 58 0 65 1 58 0 89 1 58 0 103 1 58 0 114 1 58 0 117 1 58 0 122 4 153 1 5] 
#[0 1 62 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 1 66 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 4 157 0 113 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 4 161 0 2 1 70 0 3 1 70 0 4 1 70 0 5 1 70 0 6 1 70 0 7 1 70 0 8 1 70 0 9 1 70 0 10 1 70 0 11 1 70 0 12 1 70 0 13 1 70 0 14 1 70 0 18 1 70 0 20 1 70 0 30 1 70 0 33 1 70 0 35 1 70 0 36 1 70 0 37 1 70 0 39 1 70 0 40 1 70 0 41 1 70 0 48 1 70 0 49 1 70 0 57 1 70 0 58 1 70 0 59 1 70 0 61 1 70 0 64 1 70 0 71 1 70 0 74 1 70 0 77 1 70 0 78 1 70 0 80 1 70 0 96 1 70 0 97 1 70 0 107 1 70 0 108 1 70 0 111 1 70 0 113 1 70 0 115 1 70 0 120 1 70 0 126 1 70 0 127 1 70 0 128 1 70 0 129 1 70 0 130 1 70 0 131 1 70 0 132 1 70 0 133 1 70 0 134 1 70 0 135 1 70 0 136 1 70 0 137 1 70 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 165 1 102 4 165 1 103 0 253 1 104 4 165 1 105 1 5 1 106 4 165 1 107 4 165 1 108 4 165 1 109 4 165 1 110 1 25 1 115 4 165 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 169 1 102 4 169 1 103 0 253 1 104 4 169 1 105 1 5 1 106 4 169 1 107 4 169 1 108 4 169 1 109 4 169 1 110 1 25 1 115 4 169 1 116 1 33 1 126] 
#[1 2 145 0 2 1 74 0 3 2 249 0 4 1 74 0 5 2 153 0 6 1 74 0 7 2 249 0 8 1 74 0 9 2 161 0 10 0 63 0 11 0 67 0 12 0 71 0 13 0 75 0 14 2 249 0 18 2 249 0 20 1 74 0 30 1 74 0 33 2 249 0 35 1 74 0 36 1 74 0 37 1 74 0 39 1 74 0 40 1 74 0 41 1 74 0 48 1 74 0 49 1 74 0 57 0 79 0 58 1 74 0 59 1 74 0 61 2 249 0 64 2 249 0 71 1 74 0 74 1 74 0 77 1 74 0 78 2 249 0 80 1 74 0 96 1 74 0 97 2 249 0 107 2 249 0 108 1 74 0 111 1 74 0 113 1 74 0 115 1 74 0 120 1 74 0 126 1 74 0 127 2 249 0 128 2 221 0 129 1 74 0 130 0 83 0 131 0 87 0 132 1 74 0 133 2 249 0 134 2 249 0 135 1 74 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 1 74 1 127] 
#[0 1 78 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 1 82 0 39 1 82 0 40 1 82 0 41 1 82 0 48 1 82 0 49 2 249 0 58 1 82 0 61 2 249 0 64 2 249 0 71 1 82 0 78 2 249 0 80 2 249 0 107 2 249 0 108 1 82 0 120 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 4 173 0 133 2 249 0 134 2 249 0 135 1 82 0 136 2 241 0 137 4 177 1 94 2 245 1 113 2 249 1 119 2 249 1 120 1 82 1 127] 
#[1 4 181 0 120 4 105 0 136] 
#[1 1 86 0 40 4 185 0 41 1 86 0 49 4 105 0 136 4 189 1 79] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 4 193 0 36 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 4 197 0 5 4 201 0 36] 
#[1 2 145 0 2 2 249 0 4 1 90 0 5 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 1 90 0 36 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 145 0 2 2 249 0 4 1 98 0 5 2 153 0 6 4 205 0 7 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 1 98 0 130 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 4 209 0 5 4 213 0 130] 
#[0 1 102 0 5 0 130] 
#[1 2 145 0 2 1 106 0 3 2 249 0 4 1 106 0 5 2 153 0 6 1 106 0 7 2 249 0 8 1 106 0 9 1 106 0 10 0 91 0 11 0 95 0 12 0 99 0 13 0 103 0 14 1 106 0 18 1 106 0 20 1 106 0 30 1 106 0 33 2 249 0 35 1 106 0 36 1 106 0 37 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 48 1 106 0 49 1 106 0 57 0 107 0 58 1 106 0 59 1 106 0 61 1 106 0 64 2 249 0 71 1 106 0 74 1 106 0 77 1 106 0 78 1 106 0 80 1 106 0 96 1 106 0 97 2 249 0 107 2 249 0 108 1 106 0 111 1 106 0 113 1 106 0 115 1 106 0 120 1 106 0 126 1 106 0 127 1 106 0 128 2 221 0 129 1 106 0 130 0 111 0 131 0 115 0 132 1 106 0 133 1 106 0 134 1 106 0 135 1 106 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 1 106 1 127] 
#[1 2 145 0 2 1 110 0 3 2 249 0 4 1 110 0 5 2 153 0 6 1 110 0 7 2 249 0 8 1 110 0 9 1 110 0 10 0 119 0 11 0 123 0 12 0 127 0 13 0 131 0 14 1 110 0 18 1 110 0 20 1 110 0 30 1 110 0 33 2 249 0 35 1 110 0 36 1 110 0 37 1 110 0 39 1 110 0 40 1 110 0 41 1 110 0 48 1 110 0 49 1 110 0 57 0 135 0 58 1 110 0 59 1 110 0 61 1 110 0 64 2 249 0 71 1 110 0 74 1 110 0 77 1 110 0 78 1 110 0 80 1 110 0 96 1 110 0 97 2 249 0 107 2 249 0 108 1 110 0 111 1 110 0 113 1 110 0 115 1 110 0 120 1 110 0 126 1 110 0 127 1 110 0 128 2 221 0 129 1 110 0 130 0 139 0 131 0 143 0 132 1 110 0 133 1 110 0 134 1 110 0 135 1 110 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 1 110 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 217 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 4 217 1 99 4 217 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 1 37 0 2 0 18 0 5 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 133 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 0 18 0 131 1 77 0 134 1 81 0 135 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 153 0 182 4 221 0 186 4 225 0 188 1 109 0 189 1 153 0 191 1 153 0 192 4 221 0 194 4 221 0 198 4 221 0 199 1 133 0 201 4 221 0 207 1 141 0 208 1 145 0 209 1 149 0 210 1 153 0 240 4 221 0 241 4 221 0 242 1 149 1 110 1 169 1 115 1 173 1 126] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 229 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 4 229 1 99 4 229 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[0 4 233 0 40] 
#[1 0 81 0 2 4 237 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 241 1 102 4 241 1 103 0 253 1 104 4 241 1 105 1 5 1 106 4 241 1 107 4 241 1 108 4 241 1 109 4 241 1 110 1 25 1 115 4 241 1 116 4 245 1 117 4 249 1 118 1 33 1 126] 
#[0 1 118 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[1 4 253 0 1 5 1 0 138] 
#[0 1 122 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 5 5 1 102 5 5 1 103 0 253 1 104 5 5 1 105 1 5 1 106 5 5 1 107 5 5 1 108 5 5 1 109 5 5 1 110 1 25 1 115 5 5 1 116 1 33 1 126] 
#[0 1 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 130 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 5 9 1 102 5 9 1 103 0 253 1 104 5 9 1 105 1 5 1 106 5 9 1 107 5 9 1 108 5 9 1 109 5 9 1 110 5 13 1 114 1 25 1 115 5 9 1 116 1 33 1 126] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 194 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 5 17 1 102 5 17 1 103 0 253 1 104 5 17 1 105 1 5 1 106 5 17 1 107 5 17 1 108 5 17 1 109 5 17 1 110 1 25 1 115 5 17 1 116 1 33 1 126] 
#[0 1 206 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 3 9 0 2 0 178 0 3 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 17 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 3 29 0 210 3 33 0 211 3 37 0 212 3 41 0 213 3 45 0 214 3 49 0 215 3 53 0 216 3 29 1 110 1 169 1 115 1 173 1 126] 
#[1 1 218 0 3 1 218 0 5 5 21 0 14] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 0 190 0 5 0 190 0 6 0 190 0 8 5 25 0 9 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 18 0 190 0 20 0 190 0 35 0 190 0 58 0 190 0 64 0 190 0 71 0 190 0 80 0 190 0 107 0 190 0 108 0 190 0 128 0 190 0 131 0 190 0 132 0 190 0 134 0 190 0 135] 
#[1 5 29 0 3 5 33 0 5] 
#[0 1 222 0 3 0 5] 
#[1 3 133 0 2 1 226 0 3 3 141 0 4 1 226 0 5 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 5 37 0 14 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[0 5 41 0 3] 
#[1 1 230 0 3 5 45 0 5] 
#[0 1 234 0 3 0 5] 
#[1 1 238 0 3 5 53 0 136 5 53 1 85] 
#[1 1 242 0 3 0 147 0 136] 
#[0 1 246 0 3 0 136] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 133 0 2 1 250 0 3 1 250 0 4 1 250 0 5 3 137 0 6 1 250 0 7 1 250 0 8 1 250 0 9 0 151 0 11 0 155 0 12 0 159 0 13 1 250 0 14 1 250 0 16 1 250 0 18 1 250 0 20 1 250 0 21 1 250 0 23 1 250 0 27 1 250 0 30 1 250 0 31 1 250 0 33 1 250 0 35 1 250 0 36 1 250 0 52 1 250 0 57 0 163 0 58 1 250 0 59 1 250 0 64 1 250 0 65 1 250 0 71 1 250 0 74 1 250 0 77 1 250 0 80 1 250 0 87 1 250 0 89 1 250 0 96 1 250 0 97 1 250 0 103 1 250 0 107 1 250 0 108 1 250 0 111 1 250 0 114 1 250 0 117 1 250 0 122 1 250 0 126 1 250 0 127 1 250 0 128 1 250 0 129 1 250 0 130 0 167 0 131 0 171 0 132 1 250 0 134 1 250 0 135 1 250 0 136 3 141 1 120 1 250 1 127] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 133 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 5 61 0 182 5 61 0 186 1 109 0 189 5 61 0 191 5 61 0 192 5 61 0 194 5 61 0 198 5 61 0 199 1 133 0 201 5 61 0 207 1 141 0 208 1 145 0 209 1 149 0 210 5 61 0 240 5 61 0 241 5 61 0 242 1 149 1 110 1 169 1 115 1 173 1 126 0 18 1 127] 
#[0 5 65 0 9] 
#[1 3 133 0 2 1 254 0 3 3 141 0 4 1 254 0 5 3 137 0 6 1 254 0 7 3 141 0 8 1 254 0 9 0 175 0 11 0 179 0 12 0 183 0 13 1 254 0 14 1 254 0 16 3 141 0 18 3 141 0 20 1 254 0 21 1 254 0 23 1 254 0 27 1 254 0 30 1 254 0 31 1 254 0 33 3 141 0 35 1 254 0 36 1 254 0 52 1 254 0 57 0 187 0 58 1 254 0 59 3 141 0 64 1 254 0 65 3 141 0 71 1 254 0 74 1 254 0 77 3 141 0 80 1 254 0 87 1 254 0 89 1 254 0 96 1 254 0 97 1 254 0 103 3 141 0 107 3 141 0 108 1 254 0 111 1 254 0 114 1 254 0 117 1 254 0 122 1 254 0 126 1 254 0 127 3 141 0 128 1 254 0 129 1 254 0 130 0 191 0 131 0 195 0 132 3 141 0 134 3 141 0 135 1 254 0 136 3 141 1 120 1 254 1 127] 
#[1 5 69 0 77 2 2 0 136 5 73 1 1] 
#[0 5 77 0 50] 
#[1 5 81 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 5 85 0 207 1 141 0 208 1 145 0 209 5 89 0 210 5 89 1 110 1 169 1 115 1 173 1 126] 
#[1 1 10 0 2 1 10 0 3 1 10 0 5 1 10 0 6 1 10 0 9 3 157 0 11 1 10 0 14 1 10 0 16 1 10 0 21 1 10 0 23 1 10 0 24 1 10 0 26 1 10 0 27 1 10 0 28 1 10 0 30 1 10 0 31 1 10 0 32 1 10 0 33 1 10 0 36 1 10 0 39 1 10 0 40 1 10 0 41 1 10 0 48 1 10 0 49 1 10 0 52 1 10 0 57 1 10 0 59 1 10 0 61 1 10 0 65 1 10 0 74 1 10 0 77 1 10 0 78 1 10 0 87 1 10 0 88 1 10 0 89 1 10 0 91 1 10 0 92 1 10 0 93 1 10 0 94 1 10 0 96 1 10 0 97 1 10 0 103 1 10 0 111 1 10 0 112 1 10 0 114 1 10 0 117 1 10 0 120 1 10 0 122 1 10 0 126 1 10 0 127 1 10 0 129 1 10 0 130 1 10 0 131 1 10 0 136 1 10 0 138 5 93 0 179 1 10 1 127] 
#[1 2 6 0 3 2 6 0 5 5 97 0 6 2 6 0 14 2 6 0 16 2 6 0 21 2 6 0 23 2 6 0 27 2 6 0 30 2 6 0 31 2 6 0 33 2 6 0 36 2 6 0 52 2 6 0 57 2 6 0 59 2 6 0 65 2 6 0 74 2 6 0 77 2 6 0 87 2 6 0 89 2 6 0 96 2 6 0 97 2 6 0 103 2 6 0 111 2 6 0 114 2 6 0 117 2 6 0 122 2 6 0 126 2 6 0 127 2 6 0 129 2 6 0 130 2 6 0 131 2 6 0 136 2 6 1 127] 
#[1 3 133 0 2 2 10 0 3 3 141 0 4 2 10 0 5 3 137 0 6 2 10 0 7 3 141 0 8 2 10 0 9 0 199 0 11 0 203 0 12 0 207 0 13 2 10 0 14 2 10 0 16 2 10 0 18 2 10 0 20 2 10 0 21 2 10 0 23 2 10 0 27 2 10 0 30 2 10 0 31 2 10 0 33 3 141 0 35 2 10 0 36 2 10 0 52 2 10 0 57 0 211 0 58 2 10 0 59 2 10 0 64 2 10 0 65 3 141 0 71 2 10 0 74 2 10 0 77 2 10 0 80 2 10 0 87 2 10 0 89 2 10 0 96 2 10 0 97 2 10 0 103 3 141 0 107 3 141 0 108 2 10 0 111 2 10 0 114 2 10 0 117 2 10 0 122 2 10 0 126 2 10 0 127 2 10 0 128 2 10 0 129 2 10 0 130 0 215 0 131 0 219 0 132 2 10 0 134 2 10 0 135 2 10 0 136 3 141 1 120 2 10 1 127] 
#[1 3 133 0 2 2 14 0 3 3 141 0 4 2 14 0 5 3 137 0 6 2 14 0 7 3 141 0 8 2 14 0 9 0 223 0 11 0 227 0 12 0 231 0 13 2 14 0 14 2 14 0 16 2 14 0 18 2 14 0 20 2 14 0 21 2 14 0 23 2 14 0 27 2 14 0 30 2 14 0 31 2 14 0 33 3 141 0 35 2 14 0 36 2 14 0 52 2 14 0 57 0 235 0 58 2 14 0 59 2 14 0 64 2 14 0 65 3 141 0 71 2 14 0 74 2 14 0 77 2 14 0 80 2 14 0 87 2 14 0 89 2 14 0 96 2 14 0 97 2 14 0 103 3 141 0 107 3 141 0 108 2 14 0 111 2 14 0 114 2 14 0 117 2 14 0 122 2 14 0 126 2 14 0 127 2 14 0 128 2 14 0 129 2 14 0 130 0 239 0 131 0 243 0 132 2 14 0 134 2 14 0 135 2 14 0 136 3 141 1 120 2 14 1 127] 
#[0 0 206 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 2 18 0 3 2 18 0 5 2 18 0 14 2 18 0 16 2 18 0 21 2 18 0 23 2 18 0 27 2 18 0 30 2 18 0 31 2 18 0 33 2 18 0 36 2 18 0 52 2 18 0 57 2 18 0 59 2 18 0 65 2 18 0 74 2 18 0 77 2 18 0 87 2 18 0 89 2 18 0 96 2 18 0 97 2 18 0 103 2 18 0 111 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 126 2 18 0 127 3 149 0 129 2 18 0 130 2 18 0 131 2 18 0 136 2 18 1 127] 
#[0 5 101 0 139] 
#[0 2 22 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 2 26 0 77 5 105 0 129 5 109 0 243] 
#[1 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 5 113 0 200 5 117 0 224 5 121 0 234] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 5 125 0 208 1 145 0 209 1 149 0 210 1 149 1 110 1 169 1 115 1 173 1 126] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 5 129 0 210 5 133 0 217 5 129 1 110 1 169 1 115 1 173 1 126] 
#[0 5 137 0 139] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 5 141 0 210 5 141 1 110 1 169 1 115 1 173 1 126] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 133 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 5 145 0 182 5 145 0 186 1 109 0 189 5 145 0 191 5 145 0 192 5 145 0 194 5 145 0 198 5 145 0 199 1 133 0 201 5 145 0 207 1 141 0 208 1 145 0 209 1 149 0 210 5 145 0 240 5 145 0 241 5 145 0 242 1 149 1 110 1 169 1 115 1 173 1 126 0 18 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 5 149 0 210 5 149 1 110 1 169 1 115 1 173 1 126] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 5 153 0 130 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 5 157 0 138 5 161 0 180] 
#[0 5 165 0 14] 
#[1 3 157 0 11 1 10 0 14 5 169 0 179] 
#[0 5 173 0 138] 
#[0 2 34 0 14 0 31 0 136] 
#[0 2 38 0 14 0 31 0 136] 
#[0 5 177 0 136] 
#[0 2 42 0 102] 
#[0 5 181 0 136] 
#[0 5 185 0 136] 
#[1 1 193 0 138 5 189 0 166 1 221 0 167] 
#[0 2 46 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 5 193 0 142] 
#[0 5 197 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 201 0 43 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 5 205 0 154 5 209 0 155 1 253 1 62 2 1 1 63] 
#[1 5 213 0 5 5 217 0 136] 
#[1 2 50 0 5 3 169 0 6 2 50 0 136] 
#[1 1 193 0 138 5 221 0 165 1 217 0 166 1 221 0 167] 
#[1 5 225 0 40 5 229 1 125] 
#[1 2 54 0 27 2 54 0 40 2 54 0 48 2 54 0 52 2 54 0 56 2 54 0 61 2 54 0 89 2 54 0 103 2 54 0 114 2 54 0 117 2 54 0 122 5 233 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 5 237 0 164] 
#[1 2 58 0 40 2 58 0 48 5 241 0 61 5 245 1 121] 
#[0 2 62 1 127] 
#[1 5 249 0 138 5 253 0 171 6 1 0 172] 
#[1 3 89 0 138 6 5 0 233] 
#[1 6 9 0 138 6 13 1 29] 
#[1 3 89 0 138 6 17 0 233] 
#[1 6 21 0 138 6 25 0 174 6 29 0 175] 
#[1 6 9 0 138 6 33 1 29 6 37 1 68 6 41 1 69] 
#[1 1 177 0 129 1 181 0 138 6 45 0 177 6 49 0 178 1 189 0 237] 
#[1 6 9 0 138 6 33 1 29 6 53 1 68 6 41 1 69] 
#[0 2 66 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 70 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 74 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 78 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 82 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 6 57 1 62 2 1 1 63] 
#[1 2 90 0 3 2 90 0 21 2 90 0 23 2 90 0 24 2 90 0 26 2 90 0 27 2 90 0 28 2 90 0 32 2 90 0 40 6 61 0 44 2 90 0 48 6 65 0 51 2 90 0 52 2 90 0 56 2 90 0 61 2 90 0 65 2 90 0 88 2 90 0 89 2 90 0 91 2 90 0 92 2 90 0 93 2 90 0 94 2 90 0 103 2 90 0 112 2 90 0 114 2 90 0 117 2 90 0 122 2 90 0 129 2 90 0 138 6 69 1 24] 
#[0 2 94 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 98 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 102 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 6 73 1 62 2 1 1 63] 
#[1 2 106 0 3 2 106 0 21 2 106 0 23 2 106 0 24 2 106 0 26 2 106 0 27 2 106 0 28 2 106 0 32 2 106 0 40 6 61 0 44 2 106 0 48 6 65 0 51 2 106 0 52 2 106 0 56 2 106 0 61 2 106 0 65 2 106 0 88 2 106 0 89 2 106 0 91 2 106 0 92 2 106 0 93 2 106 0 94 2 106 0 103 2 106 0 112 2 106 0 114 2 106 0 117 2 106 0 122 2 106 0 129 2 106 0 138 6 77 1 24] 
#[0 2 110 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 114 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 118 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 122 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 6 81 0 136] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 2 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 85 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 85 1 99 6 85 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 6 89 0 210 6 93 1 86 6 97 1 87 6 101 1 88 6 105 1 89 6 109 1 90 6 113 1 91 6 89 1 110 1 169 1 115 1 173 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 117 1 102 6 117 1 103 0 253 1 104 6 117 1 105 1 5 1 106 6 117 1 107 6 117 1 108 6 117 1 109 6 117 1 110 1 25 1 115 6 117 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 121 1 102 6 121 1 103 0 253 1 104 6 121 1 105 1 5 1 106 6 121 1 107 6 121 1 108 6 121 1 109 6 121 1 110 1 25 1 115 6 121 1 116 1 33 1 126] 
#[0 2 134 0 138] 
#[0 2 138 0 138] 
#[0 2 142 0 138] 
#[0 6 125 0 3] 
#[1 2 146 0 3 2 146 0 130 6 129 0 136] 
#[0 2 150 0 3 0 130 0 136] 
#[1 6 9 0 138 6 133 1 29] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 133 0 85 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 6 137 0 182 6 137 0 186 1 109 0 189 6 137 0 191 6 137 0 192 6 137 0 194 6 137 0 198 6 137 0 199 1 133 0 201 6 137 0 207 1 141 0 208 1 145 0 209 1 149 0 210 6 137 0 240 6 137 0 241 6 137 0 242 1 149 1 110 1 169 1 115 1 173 1 126] 
#[0 2 154 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 141 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 141 1 99 6 141 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 0 81 0 2 6 145 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 241 1 102 4 241 1 103 0 253 1 104 4 241 1 105 1 5 1 106 4 241 1 107 4 241 1 108 4 241 1 109 4 241 1 110 1 25 1 115 4 241 1 116 6 149 1 117 4 249 1 118 1 33 1 126] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 6 153 0 9 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 6 157 0 9 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 3 89 0 138 6 161 0 233] 
#[0 2 158 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 165 1 102 6 165 1 103 0 253 1 104 6 165 1 105 1 5 1 106 6 165 1 107 6 165 1 108 6 165 1 109 6 165 1 110 1 25 1 115 6 165 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 6 169 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 173 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 6 177 1 80 6 181 1 81 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 2 162 0 40 6 185 0 49 6 189 1 83] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 193 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 193 1 99 6 193 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 197 1 102 6 197 1 103 0 253 1 104 6 197 1 105 1 5 1 106 6 197 1 107 6 197 1 108 6 197 1 109 6 197 1 110 1 25 1 115 6 197 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 201 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 201 1 99 6 201 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 205 1 102 6 205 1 103 0 253 1 104 6 205 1 105 1 5 1 106 6 205 1 107 6 205 1 108 6 205 1 109 6 205 1 110 1 25 1 115 6 205 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 105 1 102 2 105 1 103 0 253 1 104 2 105 1 105 1 5 1 106 2 105 1 107 2 105 1 108 2 105 1 109 2 105 1 110 6 209 1 112 1 25 1 115 2 105 1 116 1 33 1 126] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 2 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 174 0 5 0 206 0 16 0 206 0 129 2 174 0 131] 
#[1 6 213 0 5 6 217 0 131] 
#[0 2 178 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 2 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 145 0 2 2 190 0 3 2 249 0 4 2 190 0 5 2 153 0 6 2 249 0 8 2 190 0 9 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 6 221 0 3 6 225 0 5] 
#[1 2 194 0 3 2 194 0 5 6 229 0 9] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 145 0 2 2 206 0 3 2 249 0 4 2 206 0 5 2 153 0 6 2 206 0 7 2 249 0 8 2 206 0 9 2 161 0 10 0 247 0 11 0 251 0 12 0 255 0 13 1 3 0 14 2 249 0 18 2 249 0 20 2 206 0 30 2 206 0 33 2 249 0 35 2 206 0 36 2 206 0 37 2 206 0 39 2 206 0 40 2 206 0 41 2 206 0 48 2 206 0 49 2 206 0 57 1 7 0 58 2 206 0 59 2 206 0 61 2 249 0 64 2 249 0 71 2 206 0 74 2 206 0 77 2 206 0 78 2 249 0 80 2 206 0 96 2 206 0 97 2 249 0 107 2 249 0 108 2 206 0 111 2 206 0 113 2 206 0 115 2 206 0 120 2 206 0 126 2 206 0 127 2 249 0 128 2 221 0 129 2 206 0 130 1 11 0 131 1 15 0 132 2 206 0 133 2 249 0 134 2 249 0 135 2 206 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 2 206 1 127] 
#[1 2 145 0 2 2 249 0 4 2 210 0 5 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 210 0 130 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 6 233 0 5 6 237 0 130] 
#[1 2 145 0 2 2 214 0 3 2 249 0 4 2 214 0 5 2 153 0 6 2 214 0 7 2 249 0 8 2 214 0 9 2 161 0 10 1 19 0 11 1 23 0 12 1 27 0 13 1 31 0 14 2 249 0 18 2 249 0 20 2 214 0 30 2 214 0 33 2 249 0 35 2 214 0 36 2 214 0 37 2 214 0 39 2 214 0 40 2 214 0 41 2 214 0 48 2 214 0 49 2 214 0 57 1 35 0 58 2 214 0 59 2 214 0 61 2 249 0 64 2 249 0 71 2 214 0 74 2 214 0 77 2 214 0 78 2 249 0 80 2 214 0 96 2 214 0 97 2 249 0 107 2 249 0 108 2 214 0 111 2 214 0 113 2 214 0 115 2 214 0 120 2 214 0 126 2 214 0 127 2 249 0 128 2 221 0 129 2 214 0 130 1 39 0 131 1 43 0 132 2 214 0 133 2 249 0 134 2 249 0 135 2 214 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 2 214 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 6 241 0 210 6 241 1 110 1 169 1 115 1 173 1 126] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 6 245 0 210 6 245 1 110 1 169 1 115 1 173 1 126] 
#[0 2 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 13 0 138 6 249 0 184] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 6 253 0 210 6 253 1 110 1 169 1 115 1 173 1 126] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 3 29 0 210 7 1 0 213 3 29 1 110 1 169 1 115 1 173 1 126] 
#[0 2 226 0 3] 
#[0 7 5 0 3] 
#[1 7 9 0 139 7 13 0 216] 
#[1 2 230 0 3 2 230 0 5 2 230 0 14 3 145 0 16 2 230 0 21 2 230 0 23 2 230 0 27 2 230 0 30 2 230 0 31 2 230 0 33 2 230 0 36 2 230 0 52 2 230 0 57 2 230 0 59 2 230 0 65 2 230 0 74 2 230 0 77 2 230 0 87 2 230 0 89 2 230 0 96 2 230 0 97 2 230 0 103 2 230 0 111 2 230 0 114 2 230 0 117 2 230 0 122 2 230 0 126 2 230 0 127 3 149 0 129 2 230 0 130 2 230 0 131 2 230 0 136 2 230 1 127] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 0 18 0 77 1 133 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 7 17 0 182 7 17 0 186 1 109 0 189 7 17 0 191 7 17 0 192 7 17 0 194 7 17 0 198 7 17 0 199 1 133 0 201 7 17 0 207 1 141 0 208 1 145 0 209 1 149 0 210 7 17 0 240 7 17 0 241 7 17 0 242 1 149 1 110 1 169 1 115 1 173 1 126] 
#[0 7 21 0 76] 
#[0 7 25 0 136] 
#[1 3 89 0 138 7 29 0 233] 
#[1 3 9 0 2 0 178 0 3 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 7 33 0 139 1 145 0 140 1 169 0 142 1 97 0 146 7 37 0 195 1 145 0 209 3 29 0 210 3 33 0 211 3 37 0 212 3 41 0 213 3 45 0 214 3 49 0 215 3 53 0 216 3 29 1 110 1 169 1 115 1 173 1 126] 
#[0 2 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 133 0 2 2 238 0 3 3 141 0 4 2 238 0 5 3 137 0 6 0 242 0 7 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 2 238 0 14 2 238 0 16 3 141 0 18 3 141 0 20 2 238 0 21 2 238 0 23 2 238 0 27 2 238 0 30 2 238 0 31 2 238 0 33 3 141 0 35 2 238 0 36 2 238 0 52 2 238 0 57 3 141 0 58 2 238 0 59 3 141 0 64 2 238 0 65 3 141 0 71 2 238 0 74 2 238 0 77 3 141 0 80 2 238 0 87 2 238 0 89 2 238 0 96 2 238 0 97 2 238 0 103 3 141 0 107 3 141 0 108 2 238 0 111 2 238 0 114 2 238 0 117 2 238 0 122 2 238 0 126 2 238 0 127 3 141 0 128 2 238 0 129 2 238 0 130 1 47 0 131 3 141 0 132 3 141 0 134 3 141 0 135 2 238 0 136 3 141 1 120 2 238 1 127] 
#[0 2 242 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 103 0 111 0 112 0 114 0 117 0 120 0 122 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 41 0 138] 
#[0 2 246 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 7 57 0 207 1 141 0 208 1 145 0 209 7 49 0 210 7 53 0 244 7 57 0 245 7 49 1 110 1 169 1 115 1 173 1 126] 
#[0 7 61 0 77] 
#[0 7 65 0 40] 
#[1 2 250 0 3 2 250 0 24 2 250 0 40 2 250 0 88 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 112 7 69 0 225] 
#[1 2 254 0 3 2 254 0 24 7 73 0 26 3 249 0 27 7 77 0 28 7 81 0 32 2 254 0 40 7 85 0 52 2 254 0 88 7 89 0 89 7 93 0 91 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 112 4 13 0 114 4 17 0 117 4 21 0 122 1 177 0 129 6 9 0 138 7 105 0 170 7 105 0 176 7 105 0 235 7 105 0 236 7 113 0 237 7 105 0 238 7 105 0 239 7 105 0 251 7 105 0 252 7 105 0 253 7 105 0 254 7 105 0 255 7 105 1 0 7 105 1 2 7 105 1 3 7 105 1 4 7 105 1 6 7 165 1 7 7 105 1 8 7 173 1 29 7 105 1 37 7 181 1 38 7 105 1 40 7 189 1 41 7 105 1 44 4 45 1 45 7 105 1 46 4 53 1 47 7 105 1 49 7 105 1 50 7 105 1 52 4 65 1 53 7 105 1 54 4 73 1 55 7 105 1 57 7 105 1 58 7 105 1 60 7 229 1 61 7 105 1 66 4 89 1 67] 
#[0 3 2 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 133 0 2 3 6 0 3 3 141 0 4 3 6 0 5 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 7 237 0 3 7 241 0 5] 
#[0 3 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 133 0 2 3 14 0 3 3 141 0 4 3 14 0 5 3 137 0 6 3 14 0 7 3 141 0 8 3 14 0 9 1 51 0 11 1 55 0 12 1 59 0 13 3 14 0 14 3 14 0 16 3 141 0 18 3 141 0 20 3 14 0 21 3 14 0 23 3 14 0 27 3 14 0 30 3 14 0 31 3 14 0 33 3 141 0 35 3 14 0 36 3 14 0 52 3 14 0 57 1 63 0 58 3 14 0 59 3 141 0 64 3 14 0 65 3 141 0 71 3 14 0 74 3 14 0 77 3 141 0 80 3 14 0 87 3 14 0 89 3 14 0 96 3 14 0 97 3 14 0 103 3 141 0 107 3 141 0 108 3 14 0 111 3 14 0 114 3 14 0 117 3 14 0 122 3 14 0 126 3 14 0 127 3 141 0 128 3 14 0 129 3 14 0 130 1 67 0 131 1 71 0 132 3 141 0 134 3 141 0 135 3 14 0 136 3 141 1 120 3 14 1 127] 
#[1 3 18 0 3 3 18 0 5 3 18 0 14 3 18 0 21 3 18 0 23 3 18 0 27 3 18 0 30 3 18 0 31 3 18 0 33 3 18 0 36 3 18 0 52 3 18 0 57 3 18 0 59 3 18 0 65 3 18 0 74 3 18 0 77 3 18 0 87 3 18 0 89 3 18 0 96 3 18 0 97 3 18 0 103 3 18 0 111 3 18 0 114 3 18 0 117 3 18 0 122 3 18 0 126 3 18 0 127 3 149 0 129 3 18 0 130 3 18 0 131 3 18 0 136 3 18 1 127] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 7 245 0 130 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[0 3 22 0 26 0 28 0 32 0 52 0 89 0 138] 
#[0 3 26 0 5 0 131] 
#[1 7 249 0 5 7 253 0 131] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 8 1 0 26 0 18 0 31 8 61 0 34 1 45 0 46 1 49 0 52 8 61 0 63 1 53 0 75 8 13 0 76 1 133 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 8 17 0 181 8 21 0 182 8 25 0 185 8 29 0 186 1 109 0 189 8 33 0 191 8 37 0 192 8 29 0 194 8 25 0 197 8 29 0 198 8 29 0 199 1 133 0 201 8 29 0 207 1 141 0 208 1 145 0 209 1 149 0 210 8 25 0 218 8 25 0 219 8 25 0 222 1 153 0 240 8 29 0 241 8 29 0 242 8 25 0 246 8 61 0 247 1 149 1 110 1 169 1 115 1 173 1 126] 
#[0 8 65 0 14] 
#[0 3 30 0 5 0 6 0 31 0 58 0 87 0 136] 
#[0 3 34 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 121 0 122] 
#[0 3 38 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 121 0 122] 
#[0 3 42 0 40 0 48 0 56 0 61 0 63 1 127] 
#[0 3 46 0 5 0 136] 
#[0 3 50 0 5 0 136] 
#[0 3 54 1 127] 
#[0 8 69 0 138] 
#[0 3 58 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 8 73 0 6] 
#[1 1 193 0 138 8 77 0 167] 
#[0 3 62 0 29] 
#[1 3 197 0 5 8 81 0 136] 
#[0 8 85 0 6] 
#[0 3 66 1 127] 
#[1 3 249 0 27 3 70 0 40 3 70 0 48 3 253 0 52 3 70 0 56 3 70 0 61 4 5 0 89 4 9 0 103 4 13 0 114 4 17 0 117 4 21 0 122 8 89 0 169 8 89 0 170 8 89 0 173 8 89 0 176 8 89 0 255 8 89 1 2 8 89 1 44 4 45 1 45 8 89 1 46 4 53 1 47 8 89 1 52 4 65 1 53 8 89 1 54 4 73 1 55 8 89 1 66 4 89 1 67] 
#[1 3 74 0 23 3 74 0 26 3 74 0 27 3 74 0 28 3 74 0 32 3 74 0 40 3 74 0 43 3 74 0 48 3 74 0 52 3 74 0 61 3 74 0 89 3 74 0 103 3 74 0 114 3 74 0 117 3 74 0 122 8 117 1 34] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 8 121 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 3 78 0 40 8 125 0 48 8 129 1 122] 
#[1 4 149 0 9 1 58 0 14 8 133 1 5] 
#[1 3 82 0 3 3 82 0 21 3 82 0 23 3 82 0 24 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 32 3 82 0 40 3 82 0 43 3 82 0 48 3 82 0 52 3 82 0 56 3 82 0 61 3 82 0 65 3 82 0 88 3 82 0 89 3 82 0 91 3 82 0 92 3 82 0 93 3 82 0 94 3 82 0 103 3 82 0 112 3 82 0 114 3 82 0 117 3 82 0 122 3 82 0 129 5 249 0 138 8 137 0 172] 
#[0 3 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 37 0 2 5 97 0 6 0 54 0 9 0 54 0 136 8 141 0 193] 
#[0 3 90 0 3 0 5 0 9 0 130 0 136] 
#[1 8 145 0 5 8 149 0 136] 
#[1 2 37 0 2 5 97 0 6 0 54 0 136 8 153 0 193] 
#[0 8 157 0 14] 
#[1 3 94 0 21 3 94 0 23 3 94 0 26 3 94 0 27 3 94 0 28 3 94 0 32 3 94 0 40 3 94 0 43 3 94 0 48 3 94 0 52 3 94 0 56 3 94 0 61 3 94 0 65 3 94 0 89 3 94 0 103 3 94 0 114 3 94 0 117 3 94 0 122 6 21 0 138 8 161 0 175] 
#[0 3 98 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[1 8 145 0 5 8 165 0 9] 
#[1 3 102 0 3 3 102 0 21 3 102 0 23 3 102 0 24 3 102 0 26 3 102 0 27 3 102 0 28 3 102 0 32 3 102 0 40 3 102 0 43 3 102 0 48 3 102 0 52 3 102 0 56 3 102 0 61 3 102 0 65 3 102 0 88 3 102 0 89 3 102 0 91 3 102 0 92 3 102 0 93 3 102 0 94 3 102 0 103 3 102 0 112 3 102 0 114 3 102 0 117 3 102 0 122 3 102 0 129 6 9 0 138 6 33 1 29 8 169 1 69] 
#[0 3 106 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 3 110 0 3 3 110 0 21 3 110 0 23 3 110 0 24 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 32 3 110 0 40 3 110 0 43 3 110 0 48 3 110 0 52 3 110 0 56 3 110 0 61 3 110 0 65 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 103 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 122 1 177 0 129 1 181 0 138 8 173 0 178 1 189 0 237] 
#[0 3 114 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 3 118 0 3 3 118 0 21 3 118 0 23 3 118 0 24 3 118 0 26 3 118 0 27 3 118 0 28 3 118 0 32 3 118 0 40 3 118 0 43 3 118 0 48 3 118 0 52 3 118 0 56 3 118 0 61 3 118 0 65 3 118 0 88 3 118 0 89 3 118 0 91 3 118 0 92 3 118 0 93 3 118 0 94 3 118 0 103 3 118 0 112 3 118 0 114 3 118 0 117 3 118 0 122 3 118 0 129 6 9 0 138 6 33 1 29 8 169 1 69] 
#[0 3 122 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 8 177 0 136 8 181 0 138 8 185 0 142] 
#[0 8 189 0 136] 
#[1 3 126 0 3 3 126 0 17 3 126 0 21 3 126 0 22 3 126 0 23 3 126 0 24 3 126 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 31 3 126 0 32 3 126 0 33 3 126 0 38 3 126 0 40 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 56 3 126 0 61 3 126 0 62 3 126 0 65 3 126 0 67 3 126 0 70 3 126 0 73 3 126 0 82 3 126 0 83 3 126 0 86 3 126 0 87 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 99 3 126 0 100 3 126 0 103 3 126 0 104 3 126 0 109 3 126 0 110 3 126 0 112 3 126 0 114 3 126 0 117 3 126 0 119 3 126 0 122 3 126 0 123 3 126 0 129 3 126 0 138 8 193 1 20] 
#[0 3 130 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 3 126 0 3 3 126 0 17 3 126 0 21 3 126 0 22 3 126 0 23 3 126 0 24 3 126 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 31 3 126 0 32 3 126 0 33 3 126 0 38 3 126 0 40 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 56 3 126 0 61 3 126 0 62 3 126 0 65 3 126 0 67 3 126 0 70 3 126 0 73 3 126 0 82 3 126 0 83 3 126 0 86 3 126 0 87 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 99 3 126 0 100 3 126 0 103 3 126 0 104 3 126 0 109 3 126 0 110 3 126 0 112 3 126 0 114 3 126 0 117 3 126 0 119 3 126 0 122 3 126 0 123 3 126 0 129 3 126 0 138 8 197 1 20] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 3 138 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136] 
#[1 3 133 0 2 3 141 0 4 3 142 0 5 3 137 0 6 8 201 0 7 3 141 0 8 3 142 0 9 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 8 205 0 39 3 146 0 40 8 209 1 92] 
#[1 1 238 0 39 1 238 0 40 8 213 0 136 8 217 1 85] 
#[0 3 150 0 39 0 40 0 136] 
#[0 8 221 0 9] 
#[0 8 225 0 5] 
#[1 3 154 0 5 3 158 0 9] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 8 237 0 37 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 8 237 0 115 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 8 237 1 97 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 8 241 0 36 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[0 3 162 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 103 0 114 0 117 0 122 0 136] 
#[1 4 145 0 27 4 145 0 81 4 145 0 122 1 54 0 138 8 245 1 28 4 145 1 31] 
#[1 3 166 0 3 8 145 0 5 8 249 0 9 3 166 0 130 3 166 0 136] 
#[1 3 170 0 14 3 145 0 16 3 170 0 21 3 170 0 23 3 170 0 27 3 170 0 30 3 170 0 33 3 170 0 36 3 170 0 52 3 170 0 57 3 170 0 59 3 170 0 65 3 170 0 74 3 170 0 77 3 170 0 89 3 170 0 96 3 170 0 97 3 170 0 103 3 170 0 111 3 170 0 114 3 170 0 117 3 170 0 122 3 170 0 126 3 170 0 127 3 149 0 129 3 170 0 136] 
#[1 8 253 0 39 3 174 0 40 3 174 0 41 3 174 0 48 3 174 0 49 3 174 0 61 3 174 0 78 3 174 0 120 3 174 0 136 3 174 1 127] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 9 1 0 3 6 225 0 5] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 9 5 1 102 9 5 1 103 0 253 1 104 9 5 1 105 1 5 1 106 9 5 1 107 9 5 1 108 9 5 1 109 9 5 1 110 1 25 1 115 9 5 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 9 9 1 102 9 9 1 103 0 253 1 104 9 9 1 105 1 5 1 106 9 9 1 107 9 9 1 108 9 9 1 109 9 9 1 110 1 25 1 115 9 9 1 116 1 33 1 126] 
#[1 5 97 0 6 3 182 0 39 3 182 0 40 3 182 0 41 3 182 0 48 3 182 0 49 3 182 0 61 3 182 0 78 3 182 0 120 3 182 0 136 3 182 1 127] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 3 186 0 39 3 186 0 40 3 186 0 41 3 186 0 48 3 186 0 49 2 249 0 58 3 186 0 61 2 249 0 64 2 249 0 71 3 186 0 78 2 249 0 80 2 249 0 107 2 249 0 108 3 186 0 120 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 3 186 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120 3 186 1 127] 
#[1 3 89 0 138 9 13 0 233] 
#[1 9 17 0 39 3 190 0 40 3 190 0 49 4 105 0 136 9 21 1 82] 
#[1 9 17 0 39 3 190 0 40 3 190 0 49 6 169 0 78 9 25 1 81 9 29 1 82] 
#[0 3 194 0 39 0 40 0 49 0 78] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 9 33 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[0 9 37 0 40] 
#[0 3 198 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 145 0 2 2 249 0 4 3 202 0 5 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 3 202 0 36 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[0 3 206 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 145 0 2 2 249 0 4 3 210 0 5 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 3 210 0 130 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[0 3 214 0 5 0 130] 
#[1 1 37 0 2 0 18 0 5 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 133 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 0 18 0 131 1 77 0 134 1 81 0 135 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 153 0 182 9 41 0 186 1 109 0 189 1 153 0 191 1 153 0 192 9 41 0 194 9 41 0 198 9 41 0 199 1 133 0 201 9 41 0 207 1 141 0 208 1 145 0 209 1 149 0 210 1 153 0 240 9 41 0 241 9 41 0 242 1 149 1 110 1 169 1 115 1 173 1 126] 
#[0 3 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 3 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 241 1 102 4 241 1 103 0 253 1 104 4 241 1 105 1 5 1 106 4 241 1 107 4 241 1 108 4 241 1 109 4 241 1 110 1 25 1 115 4 241 1 116 9 45 1 118 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 9 49 1 102 9 49 1 103 0 253 1 104 9 49 1 105 1 5 1 106 9 49 1 107 9 49 1 108 9 49 1 109 9 49 1 110 1 25 1 115 9 49 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 9 53 1 102 9 53 1 103 0 253 1 104 9 53 1 105 1 5 1 106 9 53 1 107 9 53 1 108 9 53 1 109 9 53 1 110 1 25 1 115 9 53 1 116 1 33 1 126] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 3 133 0 2 3 230 0 3 3 141 0 4 3 230 0 5 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 3 133 0 2 3 234 0 3 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 234 0 136 3 141 1 120] 
#[0 3 238 0 3 0 5] 
#[1 3 133 0 2 3 242 0 3 3 141 0 4 3 242 0 5 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[0 3 246 0 3 0 5] 
#[0 3 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[0 5 25 0 9] 
#[0 3 254 0 3 0 136] 
#[1 3 145 0 16 5 69 0 77 3 149 0 129 2 2 0 136 9 57 1 1] 
#[0 4 2 0 136] 
#[1 3 126 0 3 3 126 0 5 3 126 0 14 3 126 0 16 3 126 0 17 3 126 0 21 3 126 0 22 3 126 0 23 3 126 0 24 3 126 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 30 3 126 0 31 3 126 0 32 3 126 0 33 3 126 0 36 3 126 0 38 3 126 0 40 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 56 3 126 0 57 3 126 0 59 3 126 0 61 3 126 0 62 3 126 0 65 3 126 0 67 3 126 0 70 3 126 0 73 3 126 0 74 3 126 0 77 3 126 0 82 3 126 0 83 3 126 0 86 3 126 0 87 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 96 3 126 0 97 3 126 0 99 3 126 0 100 3 126 0 103 3 126 0 104 3 126 0 109 3 126 0 110 3 126 0 111 3 126 0 112 3 126 0 114 3 126 0 117 3 126 0 119 3 126 0 122 3 126 0 123 3 126 0 126 3 126 0 127 3 126 0 129 3 126 0 130 3 126 0 131 3 126 0 136 3 126 0 138 9 61 1 20 3 126 1 127] 
#[1 5 97 0 6 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 9 65 0 200 5 117 0 224 5 121 0 234] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 1 75 0 5 0 190 0 6 0 190 0 8 5 25 0 9 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 18 0 190 0 20 0 190 0 35 0 190 0 58 0 190 0 64 0 190 0 71 0 190 0 80 0 190 0 107 0 190 0 108 0 190 0 128 0 190 0 131 0 190 0 132 0 190 0 134 0 190 0 135] 
#[0 9 73 0 3] 
#[1 1 10 0 2 1 10 0 3 1 10 0 5 1 10 0 6 1 10 0 9 3 157 0 11 1 10 0 14 1 10 0 16 1 10 0 21 1 10 0 23 1 10 0 24 1 10 0 26 1 10 0 27 1 10 0 28 1 10 0 30 1 10 0 31 1 10 0 32 1 10 0 33 1 10 0 36 1 10 0 39 1 10 0 40 1 10 0 41 1 10 0 48 1 10 0 49 1 10 0 52 1 10 0 57 1 10 0 59 1 10 0 61 1 10 0 65 1 10 0 74 1 10 0 77 1 10 0 78 1 10 0 87 1 10 0 88 1 10 0 89 1 10 0 91 1 10 0 92 1 10 0 93 1 10 0 94 1 10 0 96 1 10 0 97 1 10 0 103 1 10 0 111 1 10 0 112 1 10 0 114 1 10 0 117 1 10 0 120 1 10 0 122 1 10 0 126 1 10 0 127 1 10 0 129 1 10 0 130 1 10 0 131 1 10 0 136 1 10 0 138 9 77 0 179 1 10 1 127] 
#[0 4 6 0 5 0 130] 
#[1 3 133 0 2 3 141 0 4 4 10 0 5 3 137 0 6 0 242 0 7 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 4 10 0 130 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 9 81 0 5 9 85 0 130] 
#[0 4 14 0 5 0 130] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 1 79 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 133 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 9 93 0 182 9 93 0 186 1 109 0 189 9 93 0 191 9 93 0 192 9 93 0 194 9 93 0 198 9 93 0 199 1 133 0 201 9 93 0 207 1 141 0 208 1 145 0 209 1 149 0 210 9 93 0 240 9 93 0 241 9 93 0 242 1 149 1 110 1 169 1 115 1 173 1 126 0 18 1 127] 
#[0 4 18 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 4 22 0 3 9 97 0 24 4 22 0 40 9 101 0 88 9 105 0 92 9 109 0 93 9 113 0 94 9 117 0 112 9 121 0 202 9 125 0 226 9 125 0 227 9 125 0 228 9 125 0 229 9 125 0 230] 
#[1 9 145 0 28 9 149 0 32 3 253 0 52 9 153 0 79 4 5 0 89 7 93 0 91 4 13 0 114 4 21 0 122 9 157 1 7 9 161 1 45 9 165 1 47 9 169 1 53 9 173 1 55 9 177 1 67] 
#[1 3 89 0 138 9 181 0 233] 
#[1 3 89 0 138 9 185 0 233] 
#[1 3 89 0 138 9 189 0 233] 
#[1 3 89 0 138 9 193 0 233] 
#[0 9 197 0 138] 
#[0 4 26 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 9 201 0 26 7 77 0 28 7 81 0 32 3 253 0 52 4 5 0 89 9 205 0 253 9 209 0 254 9 213 0 255 9 217 1 0 9 221 1 2 9 225 1 3 9 229 1 4 9 205 1 37 7 181 1 38 9 209 1 40 7 189 1 41 9 213 1 44 4 45 1 45 9 213 1 46 4 53 1 47 9 217 1 49 9 217 1 50 9 221 1 52 4 65 1 53 9 221 1 54 4 73 1 55 9 225 1 57 9 225 1 58 9 229 1 60 7 229 1 61] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 8 145 0 5 9 233 0 9] 
#[0 4 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 102 0 3 4 102 0 24 4 102 0 26 4 102 0 27 4 102 0 28 4 102 0 32 4 102 0 40 6 61 0 44 6 65 0 51 4 102 0 52 4 102 0 88 4 102 0 89 4 102 0 91 4 102 0 92 4 102 0 93 4 102 0 94 4 102 0 112 4 102 0 114 4 102 0 117 4 102 0 122 4 102 0 129 4 102 0 138 9 237 1 24] 
#[0 4 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 110 0 3 4 110 0 24 4 110 0 26 4 110 0 27 4 110 0 28 4 110 0 32 4 110 0 40 6 61 0 44 6 65 0 51 4 110 0 52 4 110 0 88 4 110 0 89 4 110 0 91 4 110 0 92 4 110 0 93 4 110 0 94 4 110 0 112 4 110 0 114 4 110 0 117 4 110 0 122 4 110 0 129 4 110 0 138 9 241 1 24] 
#[0 4 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 150 0 3 4 150 0 24 4 150 0 26 4 150 0 27 4 150 0 28 4 150 0 32 4 150 0 40 6 61 0 44 6 65 0 51 4 150 0 52 4 150 0 88 4 150 0 89 4 150 0 91 4 150 0 92 4 150 0 93 4 150 0 94 4 150 0 112 4 150 0 114 4 150 0 117 4 150 0 122 4 150 0 129 4 150 0 138 9 245 1 24] 
#[0 4 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 9 249 0 210 9 249 1 110 1 169 1 115 1 173 1 126] 
#[0 4 162 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 9 253 0 138] 
#[0 4 166 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 103 0 111 0 112 0 114 0 117 0 120 0 122 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 4 170 0 2 4 170 0 17 4 170 0 26 4 170 0 27 4 170 0 28 4 170 0 31 4 170 0 32 4 170 0 40 4 170 0 52 4 170 0 54 10 1 0 77 4 170 0 87 4 170 0 88 4 170 0 89 4 170 0 91 4 170 0 92 4 170 0 93 4 170 0 94 4 170 0 105 4 170 0 112 4 170 0 114 4 170 0 117 4 170 0 122 4 170 0 129 4 170 0 136 4 170 0 138 10 5 0 220] 
#[0 4 174 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 129 0 136] 
#[0 4 178 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 129 0 136] 
#[1 10 9 0 2 4 182 0 26 4 182 0 27 4 182 0 28 4 182 0 32 4 182 0 40 4 182 0 52 4 182 0 88 4 182 0 89 4 182 0 91 4 182 0 92 4 182 0 93 4 182 0 94 4 182 0 112 4 182 0 114 4 182 0 117 4 182 0 122 4 182 0 129 4 182 0 138 10 13 0 231] 
#[0 4 186 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[1 0 202 0 16 0 202 0 129 10 17 0 136] 
#[1 10 21 0 31 10 21 0 87 1 18 0 136 10 21 0 190] 
#[1 0 206 0 16 10 25 0 31 10 25 0 87 0 206 0 129 1 18 0 136 10 25 0 190] 
#[1 4 190 0 3 0 214 0 16 4 190 0 21 4 190 0 23 4 190 0 24 4 190 0 26 4 190 0 27 4 190 0 28 4 190 0 32 4 190 0 40 4 190 0 43 4 190 0 48 4 190 0 52 4 190 0 56 4 190 0 61 4 190 0 65 4 190 0 88 4 190 0 89 4 190 0 91 4 190 0 92 4 190 0 93 4 190 0 94 4 190 0 103 4 190 0 112 4 190 0 114 4 190 0 117 4 190 0 122 1 83 0 129 4 190 0 138 4 190 1 127] 
#[1 4 194 0 3 0 218 0 16 4 194 0 21 4 194 0 23 4 194 0 24 4 194 0 26 4 194 0 27 4 194 0 28 4 194 0 32 4 194 0 40 4 194 0 43 4 194 0 48 4 194 0 52 4 194 0 56 4 194 0 61 4 194 0 65 4 194 0 88 4 194 0 89 4 194 0 91 4 194 0 92 4 194 0 93 4 194 0 94 4 194 0 103 4 194 0 112 4 194 0 114 4 194 0 117 4 194 0 122 1 87 0 129 4 194 0 138 4 194 1 127] 
#[0 4 198 0 31 0 87 0 136] 
#[0 4 202 0 31 0 87 0 136] 
#[0 4 206 0 31 0 87 0 136] 
#[0 4 210 0 31 0 87 0 136] 
#[0 4 214 0 31 0 87 0 136] 
#[1 10 9 0 2 4 182 0 26 4 218 0 31 4 182 0 40 4 182 0 52 4 218 0 87 4 182 0 89 4 182 0 91 4 182 0 129 4 218 0 136 10 29 0 231] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 8 1 0 26 0 18 0 31 8 61 0 34 1 45 0 46 1 49 0 52 8 61 0 63 1 53 0 75 8 13 0 76 1 133 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 10 33 0 181 8 21 0 182 8 25 0 185 8 29 0 186 1 109 0 189 8 33 0 191 8 37 0 192 8 29 0 194 8 25 0 197 8 29 0 198 8 29 0 199 1 133 0 201 8 29 0 207 1 141 0 208 1 145 0 209 1 149 0 210 8 25 0 218 8 25 0 219 8 25 0 222 1 153 0 240 8 29 0 241 8 29 0 242 8 25 0 246 8 61 0 247 1 149 1 110 1 169 1 115 1 173 1 126] 
#[0 10 37 0 136] 
#[0 4 222 1 127] 
#[1 4 226 0 5 3 169 0 6 4 226 0 136] 
#[0 4 230 0 40] 
#[0 4 234 1 127] 
#[0 4 238 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 242 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 246 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 250 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 254 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 2 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 10 41 0 23 9 201 0 26 3 249 0 27 7 77 0 28 7 81 0 32 5 10 0 40 10 45 0 43 5 10 0 48 3 253 0 52 5 10 0 61 4 5 0 89 4 9 0 103 4 13 0 114 4 17 0 117 4 21 0 122 10 65 0 170 10 65 0 173 10 65 0 176 10 61 1 33 10 65 1 35 10 65 1 36 10 73 1 37 10 77 1 38 10 65 1 39 10 85 1 40 10 89 1 41 10 65 1 43 4 41 1 44 4 45 1 45 4 49 1 46 4 53 1 47 10 65 1 48 10 101 1 49 10 105 1 50 10 65 1 51 4 61 1 52 4 65 1 53 4 69 1 54 4 73 1 55 10 65 1 56 10 117 1 57 10 121 1 58 10 65 1 59 10 129 1 60 10 133 1 61 10 65 1 66 4 89 1 67 10 65 1 123] 
#[1 5 14 0 40 5 14 0 48 4 105 0 136] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 10 145 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 5 225 0 40 10 149 1 125] 
#[0 10 153 0 14] 
#[0 5 18 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 149 0 9 1 58 0 136 10 157 1 5] 
#[0 10 161 0 138] 
#[0 5 22 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 10 165 0 136] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 10 169 0 210 10 169 1 110 1 169 1 115 1 173 1 126] 
#[0 5 26 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 31 1 45 0 46 1 49 0 52 1 53 0 75 1 133 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 10 173 0 182 10 173 0 186 1 109 0 189 10 173 0 191 10 173 0 192 10 173 0 194 10 173 0 198 10 173 0 199 1 133 0 201 10 173 0 207 1 141 0 208 1 145 0 209 1 149 0 210 10 173 0 240 10 173 0 241 10 173 0 242 1 149 1 110 1 169 1 115 1 173 1 126] 
#[0 5 30 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 34 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 38 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 10 177 0 72 10 181 0 136] 
#[1 10 185 0 72 10 189 0 136] 
#[0 5 42 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 5 46 0 3 11 45 0 17 5 46 0 21 11 45 0 22 5 46 0 23 5 46 0 24 11 45 0 25 5 46 0 26 5 46 0 27 5 46 0 28 11 45 0 31 5 46 0 32 10 209 0 33 11 45 0 38 5 46 0 40 11 45 0 42 5 46 0 43 6 61 0 44 11 45 0 45 11 45 0 47 5 46 0 48 6 65 0 51 5 46 0 52 5 46 0 56 5 46 0 61 11 45 0 62 5 46 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 5 46 0 88 5 46 0 89 5 46 0 91 5 46 0 92 5 46 0 93 5 46 0 94 11 45 0 99 11 45 0 100 5 46 0 103 11 45 0 104 11 45 0 109 11 45 0 110 5 46 0 112 5 46 0 114 5 46 0 117 11 45 0 119 5 46 0 122 11 45 0 123 5 46 0 129 5 46 0 138 11 33 1 22 11 33 1 23 11 33 1 24 11 45 1 25] 
#[1 5 50 0 3 11 45 0 17 5 50 0 21 11 45 0 22 5 50 0 23 5 50 0 24 11 45 0 25 5 50 0 26 5 50 0 27 5 50 0 28 11 45 0 31 5 50 0 32 10 209 0 33 11 45 0 38 5 50 0 40 11 45 0 42 5 50 0 43 6 61 0 44 11 45 0 45 11 45 0 47 5 50 0 48 6 65 0 51 5 50 0 52 5 50 0 56 5 50 0 61 11 45 0 62 5 50 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 5 50 0 88 5 50 0 89 5 50 0 91 5 50 0 92 5 50 0 93 5 50 0 94 11 45 0 99 11 45 0 100 5 50 0 103 11 45 0 104 11 45 0 109 11 45 0 110 5 50 0 112 5 50 0 114 5 50 0 117 11 45 0 119 5 50 0 122 11 45 0 123 5 50 0 129 5 50 0 138 11 33 1 22 11 33 1 23 11 33 1 24 11 45 1 25] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 11 49 0 210 11 49 1 110 1 169 1 115 1 173 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 53 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[0 11 57 0 40] 
#[1 3 9 0 2 1 41 0 15 2 226 0 39 2 226 0 40 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 6 89 0 210 11 61 1 88 6 105 1 89 6 109 1 90 6 113 1 91 6 89 1 110 1 169 1 115 1 173 1 126] 
#[0 5 54 0 39 0 40] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 65 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 11 65 1 99 11 65 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 6 89 0 210 11 69 1 91 6 89 1 110 1 169 1 115 1 173 1 126] 
#[0 5 58 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[0 5 62 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 73 1 102 11 73 1 103 0 253 1 104 11 73 1 105 1 5 1 106 11 73 1 107 11 73 1 108 11 73 1 109 11 73 1 110 1 25 1 115 11 73 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 77 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 11 77 1 99 11 77 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[0 5 66 0 3 0 130 0 136] 
#[1 1 37 0 2 0 18 0 3 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 133 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 0 18 0 130 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 11 81 0 182 11 81 0 186 1 109 0 189 11 81 0 191 11 81 0 192 11 81 0 194 11 81 0 198 11 81 0 199 1 133 0 201 11 81 0 207 1 141 0 208 1 145 0 209 1 149 0 210 11 81 0 240 11 81 0 241 11 81 0 242 1 149 1 110 1 169 1 115 1 173 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 85 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 11 85 1 99 11 85 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[0 5 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 11 89 0 130 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 11 93 0 130 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 5 97 0 6 4 149 0 9 1 58 0 36 11 97 1 5] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 101 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[0 5 74 0 40 0 49] 
#[0 5 78 0 39 0 40 0 49 0 78] 
#[0 5 82 0 40 0 49] 
#[1 5 86 0 40 4 105 0 136] 
#[0 5 90 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 5 94 0 5 0 206 0 16 0 206 0 129 5 94 0 131] 
#[1 5 98 0 3 5 98 0 5 6 229 0 9] 
#[1 2 145 0 2 5 102 0 3 2 249 0 4 5 102 0 5 2 153 0 6 2 249 0 8 5 102 0 9 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 2 145 0 2 2 249 0 4 5 106 0 5 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 5 106 0 130 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[0 11 105 0 136] 
#[1 5 110 0 3 5 110 0 5 5 110 0 14 5 110 0 16 11 45 0 17 5 110 0 21 11 45 0 22 5 110 0 23 5 110 0 24 11 45 0 25 5 110 0 26 5 110 0 27 5 110 0 28 5 110 0 30 1 91 0 31 5 110 0 32 1 95 0 33 5 110 0 36 11 45 0 38 5 110 0 40 11 45 0 42 5 110 0 43 6 61 0 44 11 45 0 45 11 45 0 47 5 110 0 48 6 65 0 51 5 110 0 52 5 110 0 56 5 110 0 57 5 110 0 59 5 110 0 61 11 45 0 62 5 110 0 65 11 45 0 67 10 237 0 70 11 45 0 73 5 110 0 74 5 110 0 77 11 45 0 82 11 45 0 83 11 45 0 86 1 99 0 87 5 110 0 88 5 110 0 89 5 110 0 91 5 110 0 92 5 110 0 93 5 110 0 94 5 110 0 96 5 110 0 97 11 45 0 99 11 45 0 100 5 110 0 103 11 45 0 104 11 45 0 109 11 45 0 110 5 110 0 111 5 110 0 112 5 110 0 114 5 110 0 117 11 45 0 119 5 110 0 122 11 45 0 123 5 110 0 126 5 110 0 127 5 110 0 129 5 110 0 130 5 110 0 131 5 110 0 136 5 110 0 138 11 33 1 22 11 33 1 23 11 33 1 24 11 45 1 25 5 110 1 127] 
#[0 11 109 0 40] 
#[1 11 113 0 139 11 117 0 196] 
#[0 5 114 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 5 118 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 103 0 111 0 112 0 114 0 117 0 120 0 122 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 11 121 0 207 1 141 0 208 1 145 0 209 7 49 0 210 11 121 0 245 7 49 1 110 1 169 1 115 1 173 1 126] 
#[0 5 122 0 77] 
#[0 5 126 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 5 130 0 3 5 130 0 5 5 130 0 14 3 145 0 16 5 130 0 21 5 130 0 23 5 130 0 27 5 130 0 30 5 130 0 31 5 130 0 33 5 130 0 36 5 130 0 52 5 130 0 57 5 130 0 59 5 130 0 65 5 130 0 74 5 130 0 77 5 130 0 87 5 130 0 89 5 130 0 96 5 130 0 97 5 130 0 103 5 130 0 111 5 130 0 114 5 130 0 117 5 130 0 122 5 130 0 126 5 130 0 127 3 149 0 129 5 130 0 130 5 130 0 131 5 130 0 136 5 130 1 127] 
#[0 11 125 0 138] 
#[1 2 30 0 3 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 11 129 0 234] 
#[1 2 30 0 3 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 11 133 0 234] 
#[1 2 30 0 3 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 11 137 0 234] 
#[1 2 30 0 3 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 11 141 0 234] 
#[1 11 145 0 88 11 149 0 92] 
#[0 5 134 0 3 0 40] 
#[0 5 138 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 142 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 146 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 150 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 154 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[1 3 89 0 138 11 153 0 233] 
#[1 3 89 0 138 11 157 0 233] 
#[1 3 89 0 138 11 161 0 233] 
#[0 5 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 162 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 5 166 0 3 5 166 0 21 5 166 0 23 5 166 0 24 5 166 0 26 5 166 0 27 5 166 0 28 5 166 0 32 5 166 0 40 6 61 0 44 6 65 0 51 5 166 0 52 5 166 0 65 5 166 0 88 5 166 0 89 5 166 0 91 5 166 0 92 5 166 0 93 5 166 0 94 5 166 0 103 5 166 0 112 5 166 0 114 5 166 0 117 5 166 0 122 5 166 0 129 5 166 0 138 6 69 1 24] 
#[0 5 170 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 5 174 0 3 5 174 0 21 5 174 0 23 5 174 0 24 5 174 0 26 5 174 0 27 5 174 0 28 5 174 0 32 5 174 0 40 6 61 0 44 6 65 0 51 5 174 0 52 5 174 0 65 5 174 0 88 5 174 0 89 5 174 0 91 5 174 0 92 5 174 0 93 5 174 0 94 5 174 0 103 5 174 0 112 5 174 0 114 5 174 0 117 5 174 0 122 5 174 0 129 5 174 0 138 6 77 1 24] 
#[0 5 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 37 0 2 5 97 0 6 0 54 0 136 11 165 0 193] 
#[1 11 169 0 2 5 97 0 6 5 182 0 136 11 173 1 42] 
#[1 2 37 0 2 5 97 0 6 0 54 0 9 11 177 0 14 0 54 0 136 8 141 0 193] 
#[1 2 37 0 2 5 97 0 6 11 181 0 14 0 54 0 136 8 153 0 193] 
#[1 5 186 0 9 5 186 0 30 5 186 0 33 5 186 0 57 5 186 0 59 5 186 0 74 5 186 0 96 5 186 0 97 5 186 0 111 5 186 0 126 5 186 0 127 11 185 0 129 5 186 0 136 11 189 1 10] 
#[1 9 145 0 28 9 149 0 32 3 253 0 52 9 153 0 79 4 5 0 89 9 161 1 45 9 165 1 47 9 169 1 53 9 173 1 55] 
#[0 5 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 198 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 202 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 31 1 45 0 46 1 49 0 52 1 53 0 75 1 133 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 145 0 140 1 169 0 142 1 97 0 146 11 193 0 182 11 193 0 186 1 109 0 189 11 193 0 191 11 193 0 192 11 193 0 194 11 193 0 198 11 193 0 199 1 133 0 201 11 193 0 207 1 141 0 208 1 145 0 209 1 149 0 210 11 193 0 240 11 193 0 241 11 193 0 242 1 149 1 110 1 169 1 115 1 173 1 126] 
#[1 3 126 0 3 3 126 0 17 3 126 0 22 3 126 0 23 3 126 0 24 3 126 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 31 3 126 0 32 3 126 0 33 3 126 0 38 3 126 0 40 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 61 3 126 0 62 3 126 0 67 3 126 0 70 3 126 0 73 3 126 0 82 3 126 0 83 3 126 0 86 3 126 0 87 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 99 3 126 0 100 3 126 0 103 3 126 0 104 3 126 0 109 3 126 0 110 3 126 0 112 3 126 0 114 3 126 0 117 3 126 0 119 3 126 0 122 3 126 0 123 3 126 0 129 3 126 0 138 11 197 1 20] 
#[1 3 126 0 3 3 126 0 17 3 126 0 22 3 126 0 23 3 126 0 24 3 126 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 31 3 126 0 32 3 126 0 33 3 126 0 38 3 126 0 40 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 61 3 126 0 62 3 126 0 67 3 126 0 70 3 126 0 73 3 126 0 82 3 126 0 83 3 126 0 86 3 126 0 87 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 99 3 126 0 100 3 126 0 103 3 126 0 104 3 126 0 109 3 126 0 110 3 126 0 112 3 126 0 114 3 126 0 117 3 126 0 119 3 126 0 122 3 126 0 123 3 126 0 129 3 126 0 138 11 201 1 20] 
#[1 3 126 0 3 3 126 0 17 3 126 0 22 3 126 0 23 3 126 0 24 3 126 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 31 3 126 0 32 3 126 0 33 3 126 0 38 3 126 0 40 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 61 3 126 0 62 3 126 0 67 3 126 0 70 3 126 0 73 3 126 0 82 3 126 0 83 3 126 0 86 3 126 0 87 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 99 3 126 0 100 3 126 0 103 3 126 0 104 3 126 0 109 3 126 0 110 3 126 0 112 3 126 0 114 3 126 0 117 3 126 0 119 3 126 0 122 3 126 0 123 3 126 0 129 3 126 0 138 11 205 1 20] 
#[1 3 133 0 2 5 218 0 3 3 141 0 4 5 218 0 5 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[0 5 222 0 5 0 131] 
#[0 11 209 0 138] 
#[1 10 9 0 2 11 225 0 17 4 182 0 26 4 182 0 27 4 182 0 28 4 182 0 31 4 182 0 32 4 182 0 40 4 182 0 52 11 217 0 54 4 182 0 87 4 182 0 88 4 182 0 89 4 182 0 91 4 182 0 92 4 182 0 93 4 182 0 94 11 225 0 105 4 182 0 112 4 182 0 114 4 182 0 117 4 182 0 122 4 182 0 129 4 182 0 136 4 182 0 138 11 225 0 221 11 229 0 231] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 233 0 139 11 237 0 189 11 241 0 232] 
#[1 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 11 245 0 224 5 121 0 234] 
#[0 5 226 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[0 11 249 0 136] 
#[0 11 253 0 136] 
#[1 5 230 0 26 5 230 0 40 5 230 0 52 5 230 0 89 5 230 0 91 12 1 0 129 12 5 0 248] 
#[0 5 234 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[0 5 238 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 12 9 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 12 13 0 138 12 17 1 124] 
#[0 5 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 254 0 40 0 48 0 61] 
#[0 6 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 61 0 44 6 65 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 237 1 24 12 21 1 62 2 1 1 63] 
#[0 6 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 61 0 44 6 65 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 241 1 24 12 25 1 62 2 1 1 63] 
#[0 6 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 12 29 1 62 2 1 1 63] 
#[0 6 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 12 33 1 62 2 1 1 63] 
#[0 6 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 61 0 44 6 65 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 245 1 24 12 37 1 62 2 1 1 63] 
#[0 6 54 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 58 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 6 62 0 40 4 105 0 136] 
#[0 6 66 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 12 41 0 210 12 41 1 110 1 169 1 115 1 173 1 126] 
#[0 12 45 0 136] 
#[0 6 70 0 3 0 5 0 9 0 130 0 136] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 48 6 74 0 51 6 74 0 52 6 74 0 56 6 74 0 61 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 99 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 109 6 74 0 110 6 74 0 112 6 74 0 114 6 74 0 117 6 74 0 119 6 74 0 122 6 74 0 123 6 74 0 129 6 74 0 138 12 49 1 21] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 12 57 0 31 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 6 78 0 136 12 57 0 223 3 141 1 120] 
#[1 1 18 0 14 3 145 0 16 12 61 0 31 12 61 0 87 3 149 0 129 1 18 0 136 12 61 0 190] 
#[0 12 65 0 142] 
#[0 6 82 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 12 69 0 142] 
#[0 6 86 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 6 90 0 136] 
#[0 6 94 0 136] 
#[0 6 98 0 136] 
#[0 6 102 0 136] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 12 73 0 210 12 73 1 110 1 169 1 115 1 173 1 126] 
#[0 6 106 0 136] 
#[0 6 110 0 136] 
#[0 6 114 0 136] 
#[0 6 118 0 136] 
#[0 6 122 0 136] 
#[0 6 126 0 136] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 12 77 0 210 12 77 1 110 1 169 1 115 1 173 1 126] 
#[0 6 130 0 136] 
#[0 6 134 0 136] 
#[0 6 138 0 136] 
#[0 6 142 0 136] 
#[0 6 146 0 136] 
#[0 6 150 0 136] 
#[0 6 154 0 136] 
#[0 6 158 0 136] 
#[0 6 162 0 136] 
#[0 6 166 0 136] 
#[0 6 170 0 136] 
#[0 6 174 0 136] 
#[0 6 178 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 6 182 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 6 186 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 12 81 0 136] 
#[1 3 133 0 2 3 141 0 4 6 190 0 5 3 137 0 6 3 141 0 8 6 190 0 9 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 6 194 0 40 4 105 0 136] 
#[0 6 198 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 6 202 0 39 0 40 0 136] 
#[0 6 206 0 39 0 40 0 136] 
#[1 6 210 0 5 6 214 0 9] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 2 249 0 35 12 85 0 36 2 249 0 58 2 249 0 64 2 249 0 71 2 249 0 80 2 249 0 107 2 249 0 108 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[0 6 218 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 6 222 0 3 12 89 0 14 3 145 0 16 3 149 0 129 6 222 0 130 6 222 0 136 12 93 1 30] 
#[0 6 226 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 6 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 6 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 12 97 0 36] 
#[1 6 238 0 40 6 238 0 49 4 105 0 136] 
#[1 3 126 0 3 3 126 0 5 3 126 0 14 3 126 0 16 3 126 0 17 3 126 0 21 3 126 0 22 3 126 0 23 3 126 0 24 3 126 0 25 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 30 3 126 0 31 3 126 0 32 3 126 0 33 3 126 0 36 3 126 0 38 3 126 0 40 3 126 0 42 3 126 0 43 3 126 0 44 3 126 0 45 3 126 0 47 3 126 0 48 3 126 0 51 3 126 0 52 3 126 0 56 3 126 0 57 3 126 0 59 3 126 0 61 3 126 0 62 3 126 0 65 3 126 0 67 3 126 0 70 3 126 0 73 3 126 0 74 3 126 0 77 3 126 0 82 3 126 0 83 3 126 0 86 3 126 0 87 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 96 3 126 0 97 3 126 0 99 3 126 0 100 3 126 0 103 3 126 0 104 3 126 0 109 3 126 0 110 3 126 0 111 3 126 0 112 3 126 0 114 3 126 0 117 3 126 0 119 3 126 0 122 3 126 0 123 3 126 0 126 3 126 0 127 3 126 0 129 3 126 0 130 3 126 0 131 3 126 0 136 3 126 0 138 12 101 1 20 3 126 1 127] 
#[0 6 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 6 246 0 3 0 5] 
#[1 6 250 0 3 12 105 0 5] 
#[0 6 254 0 5 0 130] 
#[1 4 149 0 9 1 58 0 77 12 109 1 5] 
#[1 7 2 0 3 7 2 0 24 7 73 0 26 3 249 0 27 7 77 0 28 7 81 0 32 7 2 0 40 7 85 0 52 7 2 0 88 7 89 0 89 7 93 0 91 7 2 0 92 7 2 0 93 7 2 0 94 7 2 0 112 4 13 0 114 4 17 0 117 4 21 0 122 1 177 0 129 6 9 0 138 7 105 0 170 7 105 0 176 7 105 0 235 7 105 0 236 7 113 0 237 7 105 0 238 7 105 0 239 7 105 0 251 7 105 0 252 7 105 0 253 7 105 0 254 7 105 0 255 7 105 1 0 7 105 1 2 7 105 1 3 7 105 1 4 7 105 1 6 7 165 1 7 7 105 1 8 7 173 1 29 7 105 1 37 7 181 1 38 7 105 1 40 7 189 1 41 7 105 1 44 4 45 1 45 7 105 1 46 4 53 1 47 7 105 1 49 7 105 1 50 7 105 1 52 4 65 1 53 7 105 1 54 4 73 1 55 7 105 1 57 7 105 1 58 7 105 1 60 7 229 1 61 7 105 1 66 4 89 1 67] 
#[1 7 6 0 3 7 6 0 24 7 73 0 26 3 249 0 27 7 77 0 28 7 81 0 32 7 6 0 40 7 85 0 52 7 6 0 88 7 89 0 89 7 93 0 91 7 6 0 92 7 6 0 93 7 6 0 94 7 6 0 112 4 13 0 114 4 17 0 117 4 21 0 122 1 177 0 129 6 9 0 138 7 105 0 170 7 105 0 176 7 105 0 235 7 105 0 236 7 113 0 237 7 105 0 238 7 105 0 239 7 105 0 251 7 105 0 252 7 105 0 253 7 105 0 254 7 105 0 255 7 105 1 0 7 105 1 2 7 105 1 3 7 105 1 4 7 105 1 6 7 165 1 7 7 105 1 8 7 173 1 29 7 105 1 37 7 181 1 38 7 105 1 40 7 189 1 41 7 105 1 44 4 45 1 45 7 105 1 46 4 53 1 47 7 105 1 49 7 105 1 50 7 105 1 52 4 65 1 53 7 105 1 54 4 73 1 55 7 105 1 57 7 105 1 58 7 105 1 60 7 229 1 61 7 105 1 66 4 89 1 67] 
#[1 7 10 0 3 7 10 0 24 7 73 0 26 3 249 0 27 7 77 0 28 7 81 0 32 7 10 0 40 7 85 0 52 7 10 0 88 7 89 0 89 7 93 0 91 7 10 0 92 7 10 0 93 7 10 0 94 7 10 0 112 4 13 0 114 4 17 0 117 4 21 0 122 1 177 0 129 6 9 0 138 7 105 0 170 7 105 0 176 7 105 0 235 7 105 0 236 7 113 0 237 7 105 0 238 7 105 0 239 7 105 0 251 7 105 0 252 7 105 0 253 7 105 0 254 7 105 0 255 7 105 1 0 7 105 1 2 7 105 1 3 7 105 1 4 7 105 1 6 7 165 1 7 7 105 1 8 7 173 1 29 7 105 1 37 7 181 1 38 7 105 1 40 7 189 1 41 7 105 1 44 4 45 1 45 7 105 1 46 4 53 1 47 7 105 1 49 7 105 1 50 7 105 1 52 4 65 1 53 7 105 1 54 4 73 1 55 7 105 1 57 7 105 1 58 7 105 1 60 7 229 1 61 7 105 1 66 4 89 1 67] 
#[1 7 14 0 3 7 14 0 24 7 73 0 26 3 249 0 27 7 77 0 28 7 81 0 32 7 14 0 40 7 85 0 52 7 14 0 88 7 89 0 89 7 93 0 91 7 14 0 92 7 14 0 93 7 14 0 94 7 14 0 112 4 13 0 114 4 17 0 117 4 21 0 122 1 177 0 129 6 9 0 138 7 105 0 170 7 105 0 176 7 105 0 235 7 105 0 236 7 113 0 237 7 105 0 238 7 105 0 239 7 105 0 251 7 105 0 252 7 105 0 253 7 105 0 254 7 105 0 255 7 105 1 0 7 105 1 2 7 105 1 3 7 105 1 4 7 105 1 6 7 165 1 7 7 105 1 8 7 173 1 29 7 105 1 37 7 181 1 38 7 105 1 40 7 189 1 41 7 105 1 44 4 45 1 45 7 105 1 46 4 53 1 47 7 105 1 49 7 105 1 50 7 105 1 52 4 65 1 53 7 105 1 54 4 73 1 55 7 105 1 57 7 105 1 58 7 105 1 60 7 229 1 61 7 105 1 66 4 89 1 67] 
#[1 2 30 0 3 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 12 113 0 234] 
#[1 2 30 0 3 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 40 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 12 117 0 234] 
#[1 2 37 0 2 5 97 0 6 0 54 0 136 12 121 0 193] 
#[1 11 169 0 2 5 97 0 6 5 182 0 136 12 125 1 42] 
#[1 2 37 0 2 5 97 0 6 0 54 0 9 0 54 0 136 12 129 0 193] 
#[0 12 133 0 136] 
#[0 12 137 0 3] 
#[0 12 141 0 136] 
#[0 12 145 0 138] 
#[0 12 149 0 138] 
#[1 4 145 0 27 4 145 0 81 4 145 0 122 1 50 0 130 1 54 0 138 12 153 1 26 4 137 1 27 4 141 1 28 4 145 1 31] 
#[1 4 149 0 9 1 58 0 30 1 58 0 33 1 58 0 57 1 58 0 59 1 58 0 74 1 58 0 96 1 58 0 97 1 58 0 111 1 58 0 126 1 58 0 127 1 58 0 136 12 157 1 5] 
#[1 3 145 0 16 12 161 0 31 12 161 0 87 3 149 0 129 1 18 0 136 12 161 0 190] 
#[1 7 18 0 3 11 45 0 17 11 45 0 22 7 18 0 23 7 18 0 24 11 45 0 25 7 18 0 26 7 18 0 27 7 18 0 28 11 45 0 31 7 18 0 32 10 209 0 33 11 45 0 38 7 18 0 40 11 45 0 42 7 18 0 43 6 61 0 44 11 45 0 45 11 45 0 47 7 18 0 48 6 65 0 51 7 18 0 52 7 18 0 61 11 45 0 62 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 18 0 88 7 18 0 89 7 18 0 91 7 18 0 92 7 18 0 93 7 18 0 94 11 45 0 99 11 45 0 100 7 18 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 18 0 112 7 18 0 114 7 18 0 117 11 45 0 119 7 18 0 122 11 45 0 123 7 18 0 129 7 18 0 138 11 33 1 22 11 33 1 23 11 33 1 24 11 45 1 25] 
#[1 7 22 0 3 11 45 0 17 11 45 0 22 7 22 0 23 7 22 0 24 11 45 0 25 7 22 0 26 7 22 0 27 7 22 0 28 11 45 0 31 7 22 0 32 10 209 0 33 11 45 0 38 7 22 0 40 11 45 0 42 7 22 0 43 6 61 0 44 11 45 0 45 11 45 0 47 7 22 0 48 6 65 0 51 7 22 0 52 7 22 0 61 11 45 0 62 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 22 0 88 7 22 0 89 7 22 0 91 7 22 0 92 7 22 0 93 7 22 0 94 11 45 0 99 11 45 0 100 7 22 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 22 0 112 7 22 0 114 7 22 0 117 11 45 0 119 7 22 0 122 11 45 0 123 7 22 0 129 7 22 0 138 11 33 1 22 11 33 1 23 11 33 1 24 11 45 1 25] 
#[1 7 26 0 3 11 45 0 17 11 45 0 22 7 26 0 23 7 26 0 24 11 45 0 25 7 26 0 26 7 26 0 27 7 26 0 28 11 45 0 31 7 26 0 32 10 209 0 33 11 45 0 38 7 26 0 40 11 45 0 42 7 26 0 43 6 61 0 44 11 45 0 45 11 45 0 47 7 26 0 48 6 65 0 51 7 26 0 52 7 26 0 61 11 45 0 62 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 26 0 88 7 26 0 89 7 26 0 91 7 26 0 92 7 26 0 93 7 26 0 94 11 45 0 99 11 45 0 100 7 26 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 26 0 112 7 26 0 114 7 26 0 117 11 45 0 119 7 26 0 122 11 45 0 123 7 26 0 129 7 26 0 138 11 33 1 22 11 33 1 23 11 33 1 24 11 45 1 25] 
#[0 7 30 0 31 0 87 0 136] 
#[0 7 34 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[0 12 165 0 50] 
#[0 7 38 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[0 7 42 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[1 2 30 0 26 2 30 0 27 2 30 0 28 7 46 0 31 2 30 0 32 2 30 0 40 2 30 0 52 7 46 0 87 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 7 46 0 136 2 30 0 138 12 169 0 224 5 121 0 234] 
#[0 0 194 0 3 0 5 0 6 0 11] 
#[1 7 50 0 3 7 50 0 5 3 113 0 6 2 129 0 11 3 117 0 187] 
#[1 12 173 0 3 12 177 0 5] 
#[1 2 250 0 40 2 250 0 88 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 112 12 181 0 225] 
#[0 7 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[0 7 58 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 12 185 0 210 12 185 1 110 1 169 1 115 1 173 1 126] 
#[1 7 62 0 26 7 62 0 40 7 62 0 52 7 62 0 89 7 62 0 91 12 189 0 249] 
#[1 7 66 0 40 7 66 0 48 7 66 0 61 4 105 0 136] 
#[0 7 70 0 5 0 136] 
#[1 12 193 0 5 12 197 0 136] 
#[0 7 74 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 78 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 82 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 86 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 90 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 1 103 0 31 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 12 201 0 87 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 1 18 0 136 12 201 0 190 3 141 1 120] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 48 6 74 0 51 6 74 0 52 6 74 0 56 6 74 0 61 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 99 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 109 6 74 0 110 6 74 0 112 6 74 0 114 6 74 0 117 6 74 0 119 6 74 0 122 6 74 0 123 6 74 0 129 6 74 0 138 12 205 1 21] 
#[1 7 94 0 3 11 45 0 17 7 94 0 21 11 45 0 22 7 94 0 23 7 94 0 24 11 45 0 25 7 94 0 26 7 94 0 27 7 94 0 28 11 45 0 31 7 94 0 32 10 209 0 33 11 45 0 38 7 94 0 40 11 45 0 42 7 94 0 44 11 45 0 45 11 45 0 47 7 94 0 48 7 94 0 51 7 94 0 52 7 94 0 56 7 94 0 61 11 45 0 62 7 94 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 94 0 88 7 94 0 89 7 94 0 91 7 94 0 92 7 94 0 93 7 94 0 94 11 45 0 99 11 45 0 100 7 94 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 94 0 112 7 94 0 114 7 94 0 117 11 45 0 119 7 94 0 122 11 45 0 123 7 94 0 129 7 94 0 138 12 209 1 23 11 45 1 25] 
#[0 7 98 0 136] 
#[0 12 213 0 136] 
#[1 12 89 0 14 6 222 0 136 12 217 1 30] 
#[0 12 221 0 136] 
#[0 12 225 0 136] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 12 229 0 136 3 141 1 120] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 12 233 0 136 3 141 1 120] 
#[0 7 102 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 12 237 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 12 237 1 99 12 237 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 12 241 0 210 12 241 1 110 1 169 1 115 1 173 1 126] 
#[0 7 106 0 3 0 130 0 136] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 12 245 1 70 2 21 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 21 1 99 2 21 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 7 110 0 3 7 110 0 5 7 110 0 14 7 110 0 16 11 45 0 17 7 110 0 21 11 45 0 22 7 110 0 23 7 110 0 24 11 45 0 25 7 110 0 26 7 110 0 27 7 110 0 28 7 110 0 30 1 107 0 31 7 110 0 32 1 111 0 33 7 110 0 36 11 45 0 38 7 110 0 40 11 45 0 42 7 110 0 43 6 61 0 44 11 45 0 45 11 45 0 47 7 110 0 48 6 65 0 51 7 110 0 52 7 110 0 56 7 110 0 57 7 110 0 59 7 110 0 61 11 45 0 62 7 110 0 65 11 45 0 67 10 237 0 70 11 45 0 73 7 110 0 74 7 110 0 77 11 45 0 82 11 45 0 83 11 45 0 86 1 115 0 87 7 110 0 88 7 110 0 89 7 110 0 91 7 110 0 92 7 110 0 93 7 110 0 94 7 110 0 96 7 110 0 97 11 45 0 99 11 45 0 100 7 110 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 110 0 111 7 110 0 112 7 110 0 114 7 110 0 117 11 45 0 119 7 110 0 122 11 45 0 123 7 110 0 126 7 110 0 127 7 110 0 129 7 110 0 130 7 110 0 131 7 110 0 136 7 110 0 138 11 33 1 22 11 33 1 23 11 33 1 24 11 45 1 25 7 110 1 127] 
#[0 12 249 0 139] 
#[0 12 253 0 77] 
#[1 7 114 0 3 7 114 0 24 7 73 0 26 3 249 0 27 7 77 0 28 7 81 0 32 7 114 0 40 7 85 0 52 7 114 0 88 7 89 0 89 7 93 0 91 7 114 0 92 7 114 0 93 7 114 0 94 7 114 0 112 4 13 0 114 4 17 0 117 4 21 0 122 1 177 0 129 6 9 0 138 7 105 0 170 7 105 0 176 7 105 0 235 7 105 0 236 7 113 0 237 7 105 0 238 7 105 0 239 7 105 0 251 7 105 0 252 7 105 0 253 7 105 0 254 7 105 0 255 7 105 1 0 7 105 1 2 7 105 1 3 7 105 1 4 7 105 1 6 7 165 1 7 7 105 1 8 7 173 1 29 7 105 1 37 7 181 1 38 7 105 1 40 7 189 1 41 7 105 1 44 4 45 1 45 7 105 1 46 4 53 1 47 7 105 1 49 7 105 1 50 7 105 1 52 4 65 1 53 7 105 1 54 4 73 1 55 7 105 1 57 7 105 1 58 7 105 1 60 7 229 1 61 7 105 1 66 4 89 1 67] 
#[1 7 118 0 3 7 118 0 24 7 73 0 26 3 249 0 27 7 77 0 28 7 81 0 32 7 118 0 40 7 85 0 52 7 118 0 88 7 89 0 89 7 93 0 91 7 118 0 92 7 118 0 93 7 118 0 94 7 118 0 112 4 13 0 114 4 17 0 117 4 21 0 122 1 177 0 129 6 9 0 138 7 105 0 170 7 105 0 176 7 105 0 235 7 105 0 236 7 113 0 237 7 105 0 238 7 105 0 239 7 105 0 251 7 105 0 252 7 105 0 253 7 105 0 254 7 105 0 255 7 105 1 0 7 105 1 2 7 105 1 3 7 105 1 4 7 105 1 6 7 165 1 7 7 105 1 8 7 173 1 29 7 105 1 37 7 181 1 38 7 105 1 40 7 189 1 41 7 105 1 44 4 45 1 45 7 105 1 46 4 53 1 47 7 105 1 49 7 105 1 50 7 105 1 52 4 65 1 53 7 105 1 54 4 73 1 55 7 105 1 57 7 105 1 58 7 105 1 60 7 229 1 61 7 105 1 66 4 89 1 67] 
#[0 13 1 0 136] 
#[0 13 5 0 136] 
#[1 4 149 0 9 1 58 0 136 13 9 1 5] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 99 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 109 6 74 0 110 6 74 0 112 6 74 0 114 6 74 0 117 6 74 0 119 6 74 0 122 6 74 0 123 6 74 0 129 6 74 0 138 13 13 1 21] 
#[0 7 122 0 136] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 99 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 109 6 74 0 110 6 74 0 112 6 74 0 114 6 74 0 117 6 74 0 119 6 74 0 122 6 74 0 123 6 74 0 129 6 74 0 138 13 17 1 21] 
#[0 13 21 0 136] 
#[0 13 25 0 136] 
#[0 13 29 0 130] 
#[1 7 126 0 30 7 126 0 33 7 126 0 57 7 126 0 59 7 126 0 74 7 126 0 96 7 126 0 97 7 126 0 111 7 126 0 126 7 126 0 127 7 126 0 136 13 33 1 9] 
#[0 13 37 0 136] 
#[1 3 89 0 138 13 41 0 233] 
#[1 2 250 0 40 2 250 0 88 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 112 13 45 0 225] 
#[0 7 130 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 233 0 139 13 49 0 189] 
#[1 13 53 0 40 9 101 0 88 9 105 0 92 9 109 0 93 9 113 0 94 9 117 0 112 9 125 0 226 9 125 0 227 9 125 0 228 9 125 0 229 9 125 0 230] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 13 57 0 130 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 13 61 0 26 13 65 0 40 3 253 0 52 4 5 0 89 7 93 0 91 13 69 0 250 13 69 0 251 13 69 0 252 13 69 0 255 13 69 1 0 13 69 1 2 13 69 1 3 13 69 1 4 13 69 1 6 7 165 1 7 13 69 1 8 13 69 1 44 4 45 1 45 13 69 1 46 4 53 1 47 13 69 1 49 13 69 1 50 13 69 1 52 4 65 1 53 13 69 1 54 4 73 1 55 13 69 1 57 13 69 1 58 13 69 1 60 7 229 1 61] 
#[0 13 81 0 138] 
#[0 7 134 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 13 85 0 31 6 78 0 136 13 85 0 223] 
#[1 7 138 0 3 11 45 0 17 7 138 0 21 11 45 0 22 7 138 0 23 7 138 0 24 11 45 0 25 7 138 0 26 7 138 0 27 7 138 0 28 11 45 0 31 7 138 0 32 10 209 0 33 11 45 0 38 7 138 0 40 11 45 0 42 7 138 0 44 11 45 0 45 11 45 0 47 7 138 0 48 7 138 0 51 7 138 0 52 7 138 0 56 7 138 0 61 11 45 0 62 7 138 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 138 0 88 7 138 0 89 7 138 0 91 7 138 0 92 7 138 0 93 7 138 0 94 11 45 0 99 11 45 0 100 7 138 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 138 0 112 7 138 0 114 7 138 0 117 11 45 0 119 7 138 0 122 11 45 0 123 7 138 0 129 7 138 0 138 12 209 1 23 11 45 1 25] 
#[0 7 142 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 99 0 100 0 103 0 104 0 109 0 110 0 112 0 114 0 117 0 119 0 122 0 123 0 129 0 138] 
#[0 7 146 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[0 13 89 0 136] 
#[0 7 150 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 154 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 158 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 162 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 166 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 3 133 0 2 7 170 0 3 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 7 170 0 130 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 7 170 0 136 3 141 1 120] 
#[1 7 174 0 39 7 174 0 40 7 174 0 49 7 174 0 78 4 105 0 136] 
#[0 7 178 0 3 0 5] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 13 93 0 203 13 97 0 204 13 101 0 205 13 105 0 206 1 145 0 209 13 109 0 210 13 109 1 110 1 169 1 115 1 173 1 126] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 99 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 109 6 74 0 110 6 74 0 112 6 74 0 114 6 74 0 117 6 74 0 119 6 74 0 122 6 74 0 123 6 74 0 129 6 74 0 138 13 113 1 21] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 99 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 109 6 74 0 110 6 74 0 112 6 74 0 114 6 74 0 117 6 74 0 119 6 74 0 122 6 74 0 123 6 74 0 129 6 74 0 138 13 117 1 21] 
#[0 13 121 0 136] 
#[1 7 182 0 3 11 45 0 17 7 182 0 21 11 45 0 22 7 182 0 23 7 182 0 24 11 45 0 25 7 182 0 26 7 182 0 27 7 182 0 28 11 45 0 31 7 182 0 32 10 209 0 33 11 45 0 38 7 182 0 40 11 45 0 42 7 182 0 44 11 45 0 45 11 45 0 47 7 182 0 51 7 182 0 52 11 45 0 62 7 182 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 182 0 88 7 182 0 89 7 182 0 91 7 182 0 92 7 182 0 93 7 182 0 94 11 45 0 99 11 45 0 100 7 182 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 182 0 112 7 182 0 114 7 182 0 117 11 45 0 119 7 182 0 122 11 45 0 123 7 182 0 129 7 182 0 138 12 209 1 23 11 45 1 25] 
#[1 7 186 0 3 11 45 0 17 7 186 0 21 11 45 0 22 7 186 0 23 7 186 0 24 11 45 0 25 7 186 0 26 7 186 0 27 7 186 0 28 11 45 0 31 7 186 0 32 10 209 0 33 11 45 0 38 7 186 0 40 11 45 0 42 7 186 0 44 11 45 0 45 11 45 0 47 7 186 0 51 7 186 0 52 11 45 0 62 7 186 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 186 0 88 7 186 0 89 7 186 0 91 7 186 0 92 7 186 0 93 7 186 0 94 11 45 0 99 11 45 0 100 7 186 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 186 0 112 7 186 0 114 7 186 0 117 11 45 0 119 7 186 0 122 11 45 0 123 7 186 0 129 7 186 0 138 12 209 1 23 11 45 1 25] 
#[0 7 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 7 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 7 198 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 13 125 0 30 13 129 0 33 13 133 0 57 13 137 0 59 13 141 0 74 13 145 0 96 13 149 0 97 13 153 0 111 13 157 0 126 13 161 0 127 13 165 0 136 13 169 1 11 13 173 1 12 13 177 1 13 13 181 1 14 13 185 1 15 13 189 1 16 13 193 1 18] 
#[0 7 202 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 10 9 0 2 5 97 0 6 4 182 0 26 4 182 0 27 4 182 0 28 4 182 0 31 4 182 0 32 4 182 0 40 4 182 0 52 4 182 0 87 4 182 0 88 4 182 0 89 4 182 0 91 4 182 0 92 4 182 0 93 4 182 0 94 4 182 0 112 4 182 0 114 4 182 0 117 4 182 0 122 4 182 0 129 4 182 0 136 4 182 0 138 13 197 0 231] 
#[1 13 201 0 40 9 101 0 88 9 105 0 92 9 109 0 93 9 113 0 94 9 117 0 112 9 125 0 226 9 125 0 227 9 125 0 228 9 125 0 229 9 125 0 230] 
#[1 7 206 0 3 7 206 0 5 3 113 0 6 2 129 0 11 3 117 0 187] 
#[0 7 210 0 31 0 87 0 136] 
#[0 7 214 0 26 0 40 0 52 0 89 0 91] 
#[1 3 253 0 52 9 153 0 79 4 5 0 89 7 93 0 91 9 157 1 7 9 161 1 45 9 165 1 47 9 169 1 53 9 173 1 55] 
#[0 7 218 0 31 0 87 0 136] 
#[0 7 222 0 26 0 40 0 52 0 89 0 91] 
#[0 7 226 0 26 0 40 0 52 0 89 0 91] 
#[0 7 230 0 26 0 40 0 52 0 89 0 91] 
#[0 7 234 0 5 0 136] 
#[0 13 205 0 136] 
#[0 7 238 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 238 0 3 1 238 0 40 13 209 0 136 13 213 1 85] 
#[0 7 242 0 3 0 40 0 136] 
#[1 13 217 0 5 13 221 0 9] 
#[0 7 246 0 5 0 9] 
#[1 3 133 0 2 3 141 0 4 7 250 0 5 3 137 0 6 3 141 0 8 7 250 0 9 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 3 141 0 35 3 141 0 58 3 141 0 64 3 141 0 71 3 141 0 80 3 141 0 107 3 141 0 108 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 3 141 1 120] 
#[1 7 254 0 3 11 45 0 17 7 254 0 21 11 45 0 22 7 254 0 23 7 254 0 24 11 45 0 25 7 254 0 26 7 254 0 27 7 254 0 28 11 45 0 31 7 254 0 32 10 209 0 33 11 45 0 38 7 254 0 40 11 45 0 42 7 254 0 44 11 45 0 45 11 45 0 47 7 254 0 51 7 254 0 52 11 45 0 62 7 254 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 7 254 0 88 7 254 0 89 7 254 0 91 7 254 0 92 7 254 0 93 7 254 0 94 11 45 0 99 11 45 0 100 7 254 0 103 11 45 0 104 11 45 0 109 11 45 0 110 7 254 0 112 7 254 0 114 7 254 0 117 11 45 0 119 7 254 0 122 11 45 0 123 7 254 0 129 7 254 0 138 12 209 1 23 11 45 1 25] 
#[1 8 2 0 3 11 45 0 17 8 2 0 21 11 45 0 22 8 2 0 23 8 2 0 24 11 45 0 25 8 2 0 26 8 2 0 27 8 2 0 28 11 45 0 31 8 2 0 32 10 209 0 33 11 45 0 38 8 2 0 40 11 45 0 42 8 2 0 44 11 45 0 45 11 45 0 47 8 2 0 51 8 2 0 52 11 45 0 62 8 2 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 8 2 0 88 8 2 0 89 8 2 0 91 8 2 0 92 8 2 0 93 8 2 0 94 11 45 0 99 11 45 0 100 8 2 0 103 11 45 0 104 11 45 0 109 11 45 0 110 8 2 0 112 8 2 0 114 8 2 0 117 11 45 0 119 8 2 0 122 11 45 0 123 8 2 0 129 8 2 0 138 12 209 1 23 11 45 1 25] 
#[1 6 74 0 3 6 74 0 17 6 74 0 21 6 74 0 22 6 74 0 23 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 38 6 74 0 40 6 74 0 42 6 74 0 44 6 74 0 45 6 74 0 47 6 74 0 51 6 74 0 52 6 74 0 62 6 74 0 65 6 74 0 67 6 74 0 70 6 74 0 73 6 74 0 82 6 74 0 83 6 74 0 86 6 74 0 87 6 74 0 88 6 74 0 89 6 74 0 91 6 74 0 92 6 74 0 93 6 74 0 94 6 74 0 99 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 109 6 74 0 110 6 74 0 112 6 74 0 114 6 74 0 117 6 74 0 119 6 74 0 122 6 74 0 123 6 74 0 129 6 74 0 138 13 225 1 21] 
#[1 3 9 0 2 1 41 0 15 8 6 0 30 8 6 0 33 8 6 0 57 8 6 0 59 8 6 0 74 1 53 0 75 8 6 0 96 8 6 0 97 8 6 0 111 8 6 0 126 8 6 0 127 0 153 0 129 1 77 0 134 1 81 0 135 8 6 0 136 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 13 229 0 210 13 229 1 110 1 169 1 115 1 173 1 126] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 13 233 0 210 13 233 1 110 1 169 1 115 1 173 1 126] 
#[1 13 237 0 138 13 241 1 17] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 13 245 0 210 13 245 1 110 1 169 1 115 1 173 1 126] 
#[0 8 10 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 13 249 1 102 13 249 1 103 0 253 1 104 13 249 1 105 1 5 1 106 13 249 1 107 13 249 1 108 13 249 1 109 13 249 1 110 1 25 1 115 13 249 1 116 1 33 1 126] 
#[0 13 253 0 33] 
#[0 14 1 0 138] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 5 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 14 5 1 102 14 5 1 103 0 253 1 104 14 5 1 105 1 5 1 106 14 5 1 107 14 5 1 108 14 5 1 109 14 5 1 110 1 25 1 115 14 5 1 116 1 33 1 126] 
#[0 14 9 0 33] 
#[1 8 14 0 3 8 14 0 24 8 14 0 26 8 14 0 27 8 14 0 28 14 13 0 30 8 14 0 32 8 14 0 40 8 14 0 52 8 14 0 88 8 14 0 89 8 14 0 91 8 14 0 92 8 14 0 93 8 14 0 94 8 14 0 112 8 14 0 114 8 14 0 117 8 14 0 122 8 14 0 129 8 14 0 138 14 17 1 19] 
#[0 8 18 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 22 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 26 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 30 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 34 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 38 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 42 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 2 30 0 26 2 30 0 27 2 30 0 28 8 46 0 31 2 30 0 32 2 30 0 40 2 30 0 52 8 46 0 87 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 8 46 0 136 2 30 0 138 14 21 0 224 5 121 0 234] 
#[0 8 50 0 31 0 87 0 136] 
#[0 8 54 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 3 9 0 2 2 226 0 3 1 41 0 15 2 226 0 40 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 14 25 0 204 13 101 0 205 13 105 0 206 1 145 0 209 13 109 0 210 13 109 1 110 1 169 1 115 1 173 1 126] 
#[0 8 58 0 3 0 40] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 14 29 0 206 1 145 0 209 13 109 0 210 13 109 1 110 1 169 1 115 1 173 1 126] 
#[0 14 33 0 2] 
#[1 8 62 0 3 11 45 0 17 8 62 0 21 11 45 0 22 8 62 0 23 8 62 0 24 11 45 0 25 8 62 0 26 8 62 0 27 8 62 0 28 11 45 0 31 8 62 0 32 10 209 0 33 11 45 0 38 8 62 0 40 11 45 0 42 8 62 0 44 11 45 0 45 11 45 0 47 8 62 0 51 8 62 0 52 11 45 0 62 8 62 0 65 11 45 0 67 10 237 0 70 11 45 0 73 11 45 0 82 11 45 0 83 11 45 0 86 11 45 0 87 8 62 0 88 8 62 0 89 8 62 0 91 8 62 0 92 8 62 0 93 8 62 0 94 11 45 0 99 11 45 0 100 8 62 0 103 11 45 0 104 11 45 0 109 11 45 0 110 8 62 0 112 8 62 0 114 8 62 0 117 11 45 0 119 8 62 0 122 11 45 0 123 8 62 0 129 8 62 0 138 12 209 1 23 11 45 1 25] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 8 66 0 30 8 66 0 33 3 141 0 35 8 66 0 57 3 141 0 58 8 66 0 59 3 141 0 64 3 141 0 71 8 66 0 74 3 141 0 80 8 66 0 96 8 66 0 97 3 141 0 107 3 141 0 108 8 66 0 111 8 66 0 126 8 66 0 127 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 8 66 0 136 3 141 1 120] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 8 70 0 30 8 70 0 33 3 141 0 35 8 70 0 57 3 141 0 58 8 70 0 59 3 141 0 64 3 141 0 71 8 70 0 74 3 141 0 80 8 70 0 96 8 70 0 97 3 141 0 107 3 141 0 108 8 70 0 111 8 70 0 126 8 70 0 127 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 8 70 0 136 3 141 1 120] 
#[0 8 74 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 14 37 0 5 8 78 0 30 8 78 0 33 8 78 0 57 8 78 0 59 8 78 0 74 8 78 0 96 8 78 0 97 8 78 0 111 8 78 0 126 8 78 0 127 8 78 0 136] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 8 82 0 30 8 82 0 33 3 141 0 35 8 82 0 57 3 141 0 58 8 82 0 59 3 141 0 64 3 141 0 71 8 82 0 74 3 141 0 80 8 82 0 96 8 82 0 97 3 141 0 107 3 141 0 108 8 82 0 111 8 82 0 126 8 82 0 127 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 8 82 0 136 3 141 1 120] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 8 86 0 30 8 86 0 33 2 249 0 35 8 86 0 57 2 249 0 58 8 86 0 59 2 249 0 64 2 249 0 71 8 86 0 74 2 249 0 80 8 86 0 96 8 86 0 97 2 249 0 107 2 249 0 108 8 86 0 111 8 86 0 126 8 86 0 127 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 8 86 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 14 41 0 210 14 41 1 110 1 169 1 115 1 173 1 126] 
#[0 8 90 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 2 145 0 2 2 249 0 4 2 153 0 6 2 249 0 8 2 161 0 10 2 249 0 11 2 249 0 12 2 249 0 13 2 249 0 14 2 249 0 18 2 249 0 20 8 94 0 30 8 94 0 33 2 249 0 35 8 94 0 57 2 249 0 58 8 94 0 59 2 249 0 64 2 249 0 71 8 94 0 74 2 249 0 80 8 94 0 96 8 94 0 97 2 249 0 107 2 249 0 108 8 94 0 111 8 94 0 126 8 94 0 127 2 249 0 128 2 221 0 129 2 249 0 131 2 249 0 132 2 249 0 134 2 249 0 135 8 94 0 136 2 241 0 137 2 245 1 113 2 249 1 119 2 249 1 120] 
#[1 3 9 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 57 0 139 1 145 0 140 1 169 0 142 1 97 0 146 1 145 0 209 14 45 0 210 14 45 1 110 1 169 1 115 1 173 1 126] 
#[0 14 49 0 136] 
#[0 8 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 250 0 40 2 250 0 88 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 112 14 53 0 225] 
#[0 8 102 0 3 0 40 0 136] 
#[0 8 106 0 5 0 9] 
#[1 2 30 0 3 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 32 2 30 0 52 2 30 0 88 2 30 0 89 2 30 0 91 2 30 0 92 2 30 0 93 2 30 0 94 2 30 0 112 2 30 0 114 2 30 0 117 2 30 0 122 2 30 0 129 2 30 0 138 14 57 0 200 5 117 0 224 5 121 0 234] 
#[0 14 61 0 138] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 8 110 0 30 8 110 0 33 3 141 0 35 8 110 0 57 3 141 0 58 8 110 0 59 3 141 0 64 3 141 0 71 8 110 0 74 3 141 0 80 8 110 0 96 8 110 0 97 3 141 0 107 3 141 0 108 8 110 0 111 8 110 0 126 8 110 0 127 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 8 110 0 136 3 141 1 120] 
#[1 3 133 0 2 3 141 0 4 3 137 0 6 3 141 0 8 3 141 0 11 3 141 0 12 3 141 0 13 3 141 0 18 3 141 0 20 8 114 0 30 8 114 0 33 3 141 0 35 8 114 0 57 3 141 0 58 8 114 0 59 3 141 0 64 3 141 0 71 8 114 0 74 3 141 0 80 8 114 0 96 8 114 0 97 3 141 0 107 3 141 0 108 8 114 0 111 8 114 0 126 8 114 0 127 3 141 0 128 3 141 0 131 3 141 0 132 3 141 0 134 3 141 0 135 8 114 0 136 3 141 1 120] 
#[0 8 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 14 65 0 40 9 101 0 88 9 105 0 92 9 109 0 93 9 113 0 94 9 117 0 112 9 125 0 226 9 125 0 227 9 125 0 228 9 125 0 229 9 125 0 230] 
#[0 14 69 0 3] 
#[0 8 122 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 126 0 31 0 87 0 136] 
#[0 8 130 0 3 0 40 0 136]
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
			(id = scanner atId or: [ currentToken value sameAs: 'on' ])
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
