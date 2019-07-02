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
#[ 0 66 2 125] 
#[ 0 18 1 49] 
#[ 0 18 1 61] 
#[ 0 18 1 73] 
#[ 0 190 0 194] 
#[ 0 238 2 221] 
#[ 1 38 2 161] 
#[ 1 38 2 165] 
#[ 1 38 2 169] 
#[ 1 38 2 173] 
#[ 1 38 2 189] 
#[ 1 38 2 221] 
#[ 1 38 2 225] 
#[ 1 70 2 161] 
#[ 1 70 2 165] 
#[ 1 70 2 169] 
#[ 1 70 2 173] 
#[ 1 70 2 189] 
#[ 1 70 2 221] 
#[ 1 70 2 225] 
#[ 1 102 2 161] 
#[ 1 102 2 165] 
#[ 1 102 2 169] 
#[ 1 102 2 173] 
#[ 1 102 2 189] 
#[ 1 102 2 221] 
#[ 1 102 2 225] 
#[ 1 106 2 161] 
#[ 1 106 2 165] 
#[ 1 106 2 169] 
#[ 1 106 2 173] 
#[ 1 106 2 189] 
#[ 1 106 2 221] 
#[ 1 106 2 225] 
#[ 1 230 5 25] 
#[ 1 238 2 161] 
#[ 1 238 2 165] 
#[ 1 238 2 169] 
#[ 1 238 2 189] 
#[ 1 238 2 221] 
#[ 1 238 2 225] 
#[ 1 242 2 161] 
#[ 1 242 2 165] 
#[ 1 242 2 169] 
#[ 1 242 2 189] 
#[ 1 242 2 221] 
#[ 1 242 2 225] 
#[ 1 254 2 161] 
#[ 1 254 2 165] 
#[ 1 254 2 169] 
#[ 1 254 2 189] 
#[ 1 254 2 221] 
#[ 1 254 2 225] 
#[ 2 2 2 161] 
#[ 2 2 2 165] 
#[ 2 2 2 169] 
#[ 2 2 2 189] 
#[ 2 2 2 221] 
#[ 2 2 2 225] 
#[ 2 161 2 194] 
#[ 2 165 2 194] 
#[ 2 169 2 194] 
#[ 2 173 2 194] 
#[ 2 189 2 194] 
#[ 2 194 2 221] 
#[ 2 194 2 225] 
#[ 2 161 2 202] 
#[ 2 165 2 202] 
#[ 2 169 2 202] 
#[ 2 173 2 202] 
#[ 2 189 2 202] 
#[ 2 202 2 221] 
#[ 2 202 2 225] 
#[ 2 221 2 222] 
#[ 2 161 2 254] 
#[ 2 165 2 254] 
#[ 2 169 2 254] 
#[ 2 189 2 254] 
#[ 2 221 2 254] 
#[ 2 225 2 254] 
#[ 0 190 9 29] 
#[ 0 18 9 49] 
#[ 0 210 4 166] 
#[ 0 214 4 170] 
#[ 5 86 10 177] 
#[ 5 86 10 181] 
#[ 5 86 10 229] 
#[ 1 14 3 153] 
#[ 7 98 10 177] 
#[ 7 98 10 181] 
#[ 7 98 10 229]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-01T20:34:38.724491-05:00'
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
	| <identifier> 'namespace' OptionalGenericTypeArguments ""."" 'period' <identifier> 'name'  {{QualifiedName}}
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
	#(357 0 #reduceActionForBeforeAsm1: 31776769 false ) 
	#(327 0 #reduceActionForStatement14: 28296206 false ) 
	#(189 0 #nil 8997889 false ) 
	#(201 0 #nil 10875905 false ) 
	#(148 1 #reduceActionForFile2: 4144130 false ) 
	#(148 1 #reduceActionForFile3: 4144131 false ) 
	#(148 1 #reduceActionForFile4: 4144132 false ) 
	#(148 1 #reduceActionForFile1: 4144129 false ) 
	#(163 0 #nil 5679105 false ) 
	#(161 1 #reduceActionForUnitFile2: 5352450 false ) 
	#(319 0 #reduceActionForMethodVariables2: 27541506 false ) 
	#(193 0 #reduceActionForOptionalArguments1: 9767937 false ) 
	#(372 1 #reduceActionForInheritedFunctionCall4: 34715652 false ) 
	#(349 1 #reduceActionForRaiseStatement2: 30943234 false ) 
	#(364 1 #reduceActionForVariableExpression1: 34013185 false ) 
	#(209 1 #liftFirstValue: 11568129 false ) 
	#(371 1 #liftFirstValue: 34693121 false ) 
	#(358 1 #reduceActionForExpression10: 31894538 false ) 
	#(358 1 #reduceActionForExpression10: 31894536 false ) 
	#(327 1 #reduceActionForStatement13: 28296205 false ) 
	#(327 1 #reduceActionForStatement11: 28296203 false ) 
	#(327 1 #reduceActionForStatement2: 28296194 false ) 
	#(327 1 #reduceActionForStatement3: 28296195 false ) 
	#(327 1 #reduceActionForStatement4: 28296196 false ) 
	#(327 1 #reduceActionForStatement5: 28296197 false ) 
	#(327 1 #reduceActionForStatement6: 28296198 false ) 
	#(327 1 #reduceActionForStatement7: 28296199 false ) 
	#(327 1 #reduceActionForStatement8: 28296200 false ) 
	#(327 1 #reduceActionForStatement9: 28296201 false ) 
	#(327 1 #reduceActionForStatement10: 28296202 false ) 
	#(327 1 #liftFirstValue: 28296204 false ) 
	#(355 1 #liftFirstValue: 31597570 false ) 
	#(327 1 #liftFirstValue: 28296193 false ) 
	#(358 1 #liftFirstValue: 31894552 false ) 
	#(358 1 #liftFirstValue: 31894551 false ) 
	#(358 1 #liftFirstValue: 31894550 false ) 
	#(358 1 #liftFirstValue: 31894529 false ) 
	#(358 1 #liftFirstValue: 31894530 false ) 
	#(358 1 #liftFirstValue: 31894547 false ) 
	#(358 1 #reduceActionForExpression10: 31894537 false ) 
	#(358 1 #liftFirstValue: 31894535 false ) 
	#(358 1 #reduceActionForExpression10: 31894549 false ) 
	#(211 0 #reduceActionForConstantArray2: 12650498 false ) 
	#(241 1 #reduceActionForFileType2: 17159170 false ) 
	#(201 1 #liftFirstValue: 10875906 false ) 
	#(210 1 #reduceActionForVariableExpression1: 11590659 false ) 
	#(189 1 #reduceActionForVariableExpression1: 8997890 false ) 
	#(210 1 #reduceActionForExpression10: 11590663 false ) 
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
	#(288 0 #nil 23156737 false ) 
	#(155 1 #reduceActionForMainMethod1: 4862977 false ) 
	#(358 2 #reduceActionForExpression15: 31894543 false ) 
	#(326 1 #reduceActionForStatements1: 28192769 false ) 
	#(282 0 #reduceActionForArgumentList1: 22645761 false ) 
	#(287 0 #nil 23069697 false ) 
	#(261 0 #reduceActionForOptionalType1: 19111937 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28907521 false ) 
	#(329 2 #reduceActionForGotoStatement1: 28907522 false ) 
	#(372 2 #reduceActionForInheritedFunctionCall3: 34715651 false ) 
	#(358 2 #reduceActionForExpression16: 31894544 false ) 
	#(360 2 #reduceActionForAnonymousProcedureHeader1: 33422337 false ) 
	#(350 0 #reduceActionForOptionalType1: 31051777 false ) 
	#(335 0 #nil 29651969 false ) 
	#(333 1 #reduceActionForStatements1: 29446145 false ) 
	#(366 2 #reduceActionForSetConstructor2: 34187266 false ) 
	#(368 1 #reduceActionForSetValue1: 34417665 false ) 
	#(367 1 #reduceActionForStatements1: 34317313 false ) 
	#(358 2 #reduceActionForExpression17: 31894545 false ) 
	#(358 2 #reduceActionForExpression18: 31894546 false ) 
	#(365 2 #reduceActionForInstantiatedGenericVariableExpression1: 34082817 false ) 
	#(376 1 #liftFirstValue: 35414023 false ) 
	#(376 1 #liftFirstValue: 35414024 false ) 
	#(376 1 #liftFirstValue: 35414031 false ) 
	#(376 1 #liftFirstValue: 35414032 false ) 
	#(376 1 #liftFirstValue: 35414020 false ) 
	#(375 1 #liftFirstValue: 35349505 false ) 
	#(376 1 #liftFirstValue: 35414017 false ) 
	#(376 1 #liftFirstValue: 35414029 false ) 
	#(376 1 #liftFirstValue: 35414021 false ) 
	#(376 1 #liftFirstValue: 35414034 false ) 
	#(376 1 #liftFirstValue: 35414035 false ) 
	#(376 1 #liftFirstValue: 35414022 false ) 
	#(376 1 #liftFirstValue: 35414018 false ) 
	#(376 1 #liftFirstValue: 35414027 false ) 
	#(376 1 #liftFirstValue: 35414028 false ) 
	#(376 1 #liftFirstValue: 35414019 false ) 
	#(376 1 #liftFirstValue: 35414030 false ) 
	#(376 1 #liftFirstValue: 35414033 false ) 
	#(376 1 #liftFirstValue: 35414026 false ) 
	#(376 1 #liftFirstValue: 35414025 false ) 
	#(358 2 #reduceActionForExpression20: 31894548 false ) 
	#(358 2 #reduceActionForExpression14: 31894542 false ) 
	#(375 1 #liftFirstValue: 35349506 false ) 
	#(359 2 #reduceActionForAnonymousProcedure1: 33310721 false ) 
	#(361 2 #reduceActionForAnonymousFunction1: 33522689 false ) 
	#(213 1 #reduceActionForUsesModule1: 12877825 false ) 
	#(211 1 #reduceActionForConstantArray1: 12650497 false ) 
	#(212 1 #reduceActionForUsesModuleList1: 12697601 false ) 
	#(341 0 #nil 30243841 false ) 
	#(214 1 #reduceActionForConstantArray1: 13012993 false ) 
	#(215 1 #reduceActionForStatements1: 13056001 false ) 
	#(210 2 #reduceActionForExpression15: 11590671 false ) 
	#(210 2 #reduceActionForExpression16: 11590668 false ) 
	#(257 0 #reduceActionForOptionalType1: 18764801 false ) 
	#(186 2 #reduceActionForSimpleDefinedType11: 8297483 false ) 
	#(210 2 #reduceActionForExpression17: 11590669 false ) 
	#(210 2 #reduceActionForExpression18: 11590670 false ) 
	#(186 2 #reduceActionForSimpleDefinedType2: 8297474 false ) 
	#(189 2 #reduceActionForNamedType4: 8997892 false ) 
	#(243 0 #reduceActionForOptionalArguments1: 17481730 false ) 
	#(234 0 #reduceActionForMethodVariables2: 15619073 false ) 
	#(190 1 #liftFirstValue: 9341955 false ) 
	#(190 1 #liftFirstValue: 9341954 false ) 
	#(157 3 #reduceActionForPackageLine1: 4980737 false ) 
	#(164 3 #reduceActionForUsesList2: 5793794 false ) 
	#(159 1 #reduceActionForStatements1: 5159937 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6185985 false ) 
	#(377 0 #nil 35600385 false ) 
	#(149 3 #reduceActionForProgramFile2: 4274178 false ) 
	#(320 1 #liftFirstValue: 27613187 false ) 
	#(320 1 #liftFirstValue: 27613191 false ) 
	#(320 1 #liftFirstValue: 27613186 false ) 
	#(320 1 #liftFirstValue: 27613188 false ) 
	#(299 1 #reduceActionForProcedureDefinition2: 24827906 false ) 
	#(300 1 #reduceActionForExternalProcedureHeader1: 24994817 false ) 
	#(302 1 #reduceActionForExternalProcedureHeader1: 25192449 false ) 
	#(320 1 #liftFirstValue: 27613189 false ) 
	#(307 1 #reduceActionForFunctionDefinition2: 25870338 false ) 
	#(308 1 #reduceActionForExternalFunctionHeader1: 26032129 false ) 
	#(310 1 #reduceActionForExternalFunctionHeader1: 26224641 false ) 
	#(319 2 #reduceActionForMethodVariables1: 27541505 false ) 
	#(320 1 #liftFirstValue: 27613190 false ) 
	#(320 1 #liftFirstValue: 27613185 false ) 
	#(322 1 #reduceActionForVars1: 27851777 false ) 
	#(358 3 #reduceActionForExpression12: 31894540 false ) 
	#(355 3 #reduceActionForStatementBlock1: 31597569 false ) 
	#(287 1 #liftFirstValue: 23069699 false ) 
	#(287 1 #liftFirstValue: 23069700 false ) 
	#(287 1 #liftFirstValue: 23069698 false ) 
	#(282 1 #reduceActionForConstantArray1: 22645762 false ) 
	#(283 1 #reduceActionForStatements1: 22679553 false ) 
	#(362 3 #reduceActionForAnonymousFunctionHeader1: 33631233 false ) 
	#(349 3 #reduceActionForRaiseStatement1: 30943233 false ) 
	#(339 0 #nil 30054401 false ) 
	#(366 3 #reduceActionForSetConstructor1: 34187265 false ) 
	#(328 3 #reduceActionForPackageLine1: 28772353 false ) 
	#(188 1 #reduceActionForStatements1: 8835073 false ) 
	#(328 3 #reduceActionForPackageLine1: 28772354 false ) 
	#(356 3 #reduceActionForAsmBlock1: 31702017 false ) 
	#(358 3 #reduceActionForExpression6: 31894534 false ) 
	#(374 1 #liftFirstValue: 35215361 false ) 
	#(373 1 #reduceActionForStatements1: 35107841 false ) 
	#(358 3 #reduceActionForExpression4: 31894532 false ) 
	#(358 3 #reduceActionForExpression4: 31894531 false ) 
	#(358 3 #reduceActionForExpression13: 31894541 false ) 
	#(370 1 #reduceActionForStatements1: 34605057 false ) 
	#(358 3 #reduceActionForExpression11: 31894539 false ) 
	#(210 3 #reduceActionForConstantExpression11: 11590667 false ) 
	#(341 1 #liftFirstValue: 30243842 false ) 
	#(241 3 #reduceActionForFileType1: 17159169 false ) 
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
	#(290 0 #reduceActionForMethodVariables2: 23389185 false ) 
	#(378 0 #nil 35710977 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6415361 false ) 
	#(171 1 #reduceActionForConstantValues1: 6494209 false ) 
	#(285 1 #reduceActionForStatements1: 22914049 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6779905 false ) 
	#(174 1 #reduceActionForConstantValues1: 6879233 false ) 
	#(323 2 #reduceActionForVarsVars2: 27881474 false ) 
	#(324 1 #reduceActionForConstantValues1: 27969537 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7109633 false ) 
	#(177 1 #reduceActionForConstantValues1: 7190529 false ) 
	#(323 2 #reduceActionForVarsVars2: 27881473 false ) 
	#(299 2 #reduceActionForProcedureDefinition1: 24827905 false ) 
	#(276 0 #reduceActionForMethodVariables2: 21133313 false ) 
	#(307 2 #reduceActionForFunctionDefinition1: 25870337 false ) 
	#(318 3 #reduceActionForMethodComponents1: 27453441 false ) 
	#(326 3 #reduceActionForStatements2: 28192770 false ) 
	#(347 1 #reduceActionForBaseCaseLabel1: 30731265 false ) 
	#(348 0 #reduceActionForElseCase1: 30893057 false ) 
	#(343 1 #reduceActionForStatements1: 30348289 false ) 
	#(346 1 #reduceActionForStatements1: 30642177 false ) 
	#(345 1 #liftFirstValue: 30536705 false ) 
	#(193 3 #reduceActionForRequires1: 9767938 false ) 
	#(284 2 #reduceActionForArgument2: 22774786 false ) 
	#(261 2 #reduceActionForGotoStatement1: 19111938 false ) 
	#(331 4 #reduceActionForIfStatement1: 29112321 false ) 
	#(372 4 #reduceActionForInheritedFunctionCall2: 34715650 false ) 
	#(350 2 #reduceActionForGotoStatement1: 31051778 false ) 
	#(330 4 #reduceActionForRepeatStatement1: 29008897 false ) 
	#(338 0 #nil 29978625 false ) 
	#(336 1 #reduceActionForConstantValues1: 29811713 false ) 
	#(354 4 #reduceActionForLibraryLine1: 31492097 false ) 
	#(333 3 #reduceActionForStatements2: 29446146 false ) 
	#(332 4 #reduceActionForRepeatStatement1: 29351937 false ) 
	#(368 3 #reduceActionForSetValue2: 34417666 false ) 
	#(367 3 #reduceActionForStatements2: 34317314 false ) 
	#(187 3 #reduceActionForRequires1: 8733697 false ) 
	#(358 4 #reduceActionForExpression5: 31894533 false ) 
	#(369 3 #reduceActionForRequires1: 34550785 false ) 
	#(216 3 #reduceActionForConstantRecordField1: 13190145 false ) 
	#(213 3 #reduceActionForPackageLine1: 12877826 false ) 
	#(212 3 #reduceActionForUsesModuleList2: 12697602 false ) 
	#(210 4 #reduceActionForConstantExpression10: 11590666 false ) 
	#(215 3 #reduceActionForStatements2: 13056002 false ) 
	#(257 2 #reduceActionForGotoStatement1: 18764802 false ) 
	#(245 1 #liftFirstValue: 17658882 false ) 
	#(245 1 #liftFirstValue: 17658881 false ) 
	#(244 1 #reduceActionForStatements1: 17547265 false ) 
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
	#(252 1 #liftFirstValue: 18290689 false ) 
	#(252 1 #liftFirstValue: 18290690 false ) 
	#(252 1 #liftFirstValue: 18290691 false ) 
	#(252 1 #liftFirstValue: 18290692 false ) 
	#(252 1 #liftFirstValue: 18290693 false ) 
	#(251 1 #liftFirstValue: 18217985 false ) 
	#(262 1 #reduceActionForPropertyHeader1: 19160065 false ) 
	#(251 1 #liftFirstValue: 18217986 false ) 
	#(253 1 #liftFirstValue: 18428929 false ) 
	#(253 1 #liftFirstValue: 18428930 false ) 
	#(254 1 #liftFirstValue: 18512897 false ) 
	#(254 1 #liftFirstValue: 18512898 false ) 
	#(255 1 #liftFirstValue: 18593793 false ) 
	#(255 1 #liftFirstValue: 18593794 false ) 
	#(256 1 #liftFirstValue: 18671617 false ) 
	#(256 1 #liftFirstValue: 18671618 false ) 
	#(258 1 #liftFirstValue: 18856961 false ) 
	#(258 1 #liftFirstValue: 18856962 false ) 
	#(259 1 #liftFirstValue: 18931713 false ) 
	#(259 1 #liftFirstValue: 18931714 false ) 
	#(260 1 #liftFirstValue: 19021825 false ) 
	#(260 1 #liftFirstValue: 19021826 false ) 
	#(235 1 #liftFirstValue: 15698947 false ) 
	#(210 4 #reduceActionForExpression5: 11590664 false ) 
	#(186 4 #reduceActionForSimpleDefinedType6: 8297478 false ) 
	#(179 3 #reduceActionForRequires1: 7447554 false ) 
	#(220 0 #reduceActionForMethodVariables2: 14083073 false ) 
	#(247 1 #liftFirstValue: 17909762 false ) 
	#(247 1 #liftFirstValue: 17909761 false ) 
	#(231 0 #reduceActionForOptionalArguments1: 15257601 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7298049 false ) 
	#(181 1 #reduceActionForUsesModule1: 7678979 false ) 
	#(181 1 #reduceActionForUsesModule1: 7678980 false ) 
	#(185 1 #liftFirstValue: 8185860 false ) 
	#(185 1 #liftFirstValue: 8185857 false ) 
	#(185 1 #liftFirstValue: 8185861 false ) 
	#(185 1 #liftFirstValue: 8185858 false ) 
	#(185 1 #liftFirstValue: 8185859 false ) 
	#(246 1 #reduceActionForInterfaceType2: 17715202 false ) 
	#(151 5 #reduceActionForLibraryFile1: 4506625 false ) 
	#(159 3 #reduceActionForStatements2: 5159938 false ) 
	#(160 3 #reduceActionForUsesList2: 5269505 false ) 
	#(381 2 #reduceActionForGotoStatement1: 36016129 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6185986 false ) 
	#(169 1 #liftFirstValue: 6280195 false ) 
	#(169 1 #liftFirstValue: 6280194 false ) 
	#(169 1 #liftFirstValue: 6280193 false ) 
	#(169 1 #liftFirstValue: 6280196 false ) 
	#(169 1 #liftFirstValue: 6280197 false ) 
	#(169 1 #liftFirstValue: 6280198 false ) 
	#(289 0 #nil 23303169 false ) 
	#(377 2 #reduceActionForInitializationSection2: 35600386 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6494210 false ) 
	#(321 3 #reduceActionForLabels1: 27759617 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6879234 false ) 
	#(324 2 #reduceActionForMethodVariables1: 27969538 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7190530 false ) 
	#(280 2 #reduceActionForExternalMethodModifier1: 21702657 false ) 
	#(280 2 #reduceActionForExternalMethodModifier6: 21702662 false ) 
	#(301 3 #reduceActionForExternalProcedureHeaderVars1: 25074689 false ) 
	#(309 3 #reduceActionForExternalFunctionHeaderVars1: 26108929 false ) 
	#(342 2 #reduceActionForCaseOptionList1: 30296065 false ) 
	#(353 1 #liftFirstValue: 31459330 false ) 
	#(353 1 #liftFirstValue: 31459329 false ) 
	#(283 3 #reduceActionForStatements2: 22679554 false ) 
	#(372 5 #reduceActionForInheritedFunctionCall1: 34715649 false ) 
	#(335 3 #reduceActionForExcept3: 29651971 false ) 
	#(336 2 #reduceActionForMethodVariables1: 29811714 false ) 
	#(335 3 #reduceActionForExcept2: 29651970 false ) 
	#(339 2 #reduceActionForFinally2: 30054402 false ) 
	#(334 5 #reduceActionForTryStatement1: 29551617 false ) 
	#(188 3 #reduceActionForStatements2: 8835074 false ) 
	#(373 3 #reduceActionForStatements2: 35107842 false ) 
	#(374 3 #reduceActionForMethodArgument2: 35215362 false ) 
	#(370 3 #reduceActionForStatements2: 34605058 false ) 
	#(191 5 #reduceActionForAnonymousProcedureType1: 9418753 false ) 
	#(194 5 #reduceActionForSetType3: 9832451 false ) 
	#(233 4 #reduceActionForQualifiedName2: 15418370 false ) 
	#(243 3 #reduceActionForRequires1: 17481729 false ) 
	#(242 5 #reduceActionForArrayType2: 17270786 false ) 
	#(242 5 #reduceActionForArrayType1: 17270785 false ) 
	#(200 3 #reduceActionForRecordFieldList2: 10739714 false ) 
	#(225 2 #reduceActionForMethodVariables1: 14485506 false ) 
	#(226 1 #liftFirstValue: 14547969 false ) 
	#(226 1 #liftFirstValue: 14547970 false ) 
	#(226 1 #liftFirstValue: 14547971 false ) 
	#(226 1 #liftFirstValue: 14547972 false ) 
	#(264 2 #reduceActionForClassPropertyHeader1: 19418113 false ) 
	#(305 2 #reduceActionForExternalClassProcedureHeader1: 25640961 false ) 
	#(306 2 #reduceActionForExternalClassProcedureHeader1: 25752577 false ) 
	#(313 2 #reduceActionForExternalClassFunctionHeader1: 26674177 false ) 
	#(314 2 #reduceActionForExternalClassFunctionHeader1: 26782721 false ) 
	#(235 2 #reduceActionForNewClassComponent2: 15698946 false ) 
	#(298 0 #reduceActionForOptionalType1: 24779777 false ) 
	#(266 0 #nil 19841025 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15698949 false ) 
	#(235 2 #reduceActionForNewClassComponent5: 15698951 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221185 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221186 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221187 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221188 false ) 
	#(236 2 #reduceActionForNewClassComponent5: 16221189 false ) 
	#(217 3 #reduceActionForStatements2: 13315074 false ) 
	#(180 3 #reduceActionForStatements2: 7535618 false ) 
	#(184 1 #reduceActionForEnumName1: 8076289 false ) 
	#(183 1 #reduceActionForStatements1: 8003585 false ) 
	#(181 2 #reduceActionForDefinedType2: 7678978 false ) 
	#(248 0 #nil 17965057 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7298050 false ) 
	#(154 3 #reduceActionForLibraryExport1: 4753409 false ) 
	#(291 1 #liftFirstValue: 23448586 false ) 
	#(291 1 #liftFirstValue: 23448587 false ) 
	#(291 1 #liftFirstValue: 23448584 false ) 
	#(288 4 #reduceActionForImplementationSection2: 23156738 false ) 
	#(290 2 #reduceActionForMethodVariables1: 23389186 false ) 
	#(291 1 #liftFirstValue: 23448577 false ) 
	#(292 1 #reduceActionForConstructorDefinition2: 23736322 false ) 
	#(291 1 #liftFirstValue: 23448578 false ) 
	#(295 1 #reduceActionForDestructorDefinition2: 24265730 false ) 
	#(291 1 #liftFirstValue: 23448579 false ) 
	#(291 1 #liftFirstValue: 23448580 false ) 
	#(304 1 #reduceActionForClassProcedureDefinition2: 25448450 false ) 
	#(291 1 #liftFirstValue: 23448581 false ) 
	#(291 1 #liftFirstValue: 23448582 false ) 
	#(312 1 #reduceActionForClassFunctionDefinition2: 26486786 false ) 
	#(291 1 #liftFirstValue: 23448583 false ) 
	#(315 1 #reduceActionForClassOperatorDefinition2: 26897410 false ) 
	#(291 1 #liftFirstValue: 23448585 false ) 
	#(291 1 #liftFirstValue: 23448588 false ) 
	#(378 2 #reduceActionForFinalizationSection2: 35710978 false ) 
	#(161 6 #reduceActionForUnitFile1: 5352449 false ) 
	#(285 3 #reduceActionForStatements2: 22914050 false ) 
	#(277 0 #reduceActionForMethodVariables2: 21203969 false ) 
	#(223 0 #nil 14352385 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21702660 false ) 
	#(280 3 #reduceActionForExternalMethodModifier4: 21702658 false ) 
	#(281 1 #liftFirstValue: 22357003 false ) 
	#(281 1 #liftFirstValue: 22356997 false ) 
	#(281 1 #liftFirstValue: 22357006 false ) 
	#(281 1 #liftFirstValue: 22357001 false ) 
	#(281 1 #liftFirstValue: 22357007 false ) 
	#(281 1 #liftFirstValue: 22357010 false ) 
	#(281 1 #liftFirstValue: 22357005 false ) 
	#(281 1 #liftFirstValue: 22357013 false ) 
	#(281 1 #liftFirstValue: 22357012 false ) 
	#(281 1 #liftFirstValue: 22357011 false ) 
	#(281 1 #liftFirstValue: 22357004 false ) 
	#(281 1 #liftFirstValue: 22356993 false ) 
	#(281 1 #liftFirstValue: 22356994 false ) 
	#(281 1 #liftFirstValue: 22356998 false ) 
	#(281 1 #liftFirstValue: 22357009 false ) 
	#(281 1 #liftFirstValue: 22356996 false ) 
	#(281 1 #liftFirstValue: 22356999 false ) 
	#(281 1 #liftFirstValue: 22357014 false ) 
	#(281 1 #liftFirstValue: 22357008 false ) 
	#(281 1 #liftFirstValue: 22356995 false ) 
	#(281 1 #liftFirstValue: 22357002 false ) 
	#(281 1 #liftFirstValue: 22357000 false ) 
	#(276 2 #reduceActionForMethodVariables1: 21133314 false ) 
	#(278 1 #liftFirstValue: 21307393 false ) 
	#(278 1 #liftFirstValue: 21307394 false ) 
	#(347 3 #reduceActionForBaseCaseLabel2: 30731266 false ) 
	#(348 2 #reduceActionForElseCase2: 30893058 false ) 
	#(340 6 #reduceActionForCaseStatement1: 30121985 false ) 
	#(343 3 #reduceActionForStatements2: 30348290 false ) 
	#(344 3 #reduceActionForCaseOption1: 30450689 false ) 
	#(346 3 #reduceActionForStatements2: 30642178 false ) 
	#(345 3 #reduceActionForCaseLabel2: 30536706 false ) 
	#(352 6 #reduceActionForForInStatement1: 31312897 false ) 
	#(286 0 #reduceActionForOptionalType1: 23005185 false ) 
	#(331 6 #reduceActionForForInStatement1: 29112322 false ) 
	#(363 6 #reduceActionForMemExpression1: 33740801 false ) 
	#(363 6 #reduceActionForMemExpression1: 33740802 false ) 
	#(338 2 #reduceActionForPossibleExceptElse2: 29978626 false ) 
	#(199 6 #reduceActionForRecordHelperType1: 10571777 false ) 
	#(196 1 #reduceActionForStatements1: 10266625 false ) 
	#(195 3 #reduceActionForTwoItemSetNameList1: 10109953 false ) 
	#(244 3 #reduceActionForStatements2: 17547266 false ) 
	#(227 2 #reduceActionForPrivateClassSection2: 14661634 false ) 
	#(228 2 #reduceActionForProtectedClassSection2: 14854146 false ) 
	#(229 2 #reduceActionForPublicClassSection1: 15060993 false ) 
	#(230 2 #reduceActionForPublishedClassSection1: 15153153 false ) 
	#(293 3 #reduceActionForExternalConstructorHeader1: 23913473 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24437761 false ) 
	#(316 3 #reduceActionForExternalConstructorHeader1: 27084801 false ) 
	#(182 3 #reduceActionForEnumType1: 7950337 false ) 
	#(197 3 #reduceActionForMetaclassType1: 10370049 false ) 
	#(221 1 #liftFirstValue: 14157825 false ) 
	#(221 1 #liftFirstValue: 14157826 false ) 
	#(220 2 #reduceActionForMethodVariables1: 14083074 false ) 
	#(218 3 #reduceActionForNewClassType2: 13434882 false ) 
	#(232 1 #reduceActionForStatements1: 15319041 false ) 
	#(181 3 #reduceActionForPackageLine1: 7678981 false ) 
	#(181 3 #reduceActionForPackageLine1: 7678977 false ) 
	#(249 0 #reduceActionForMethodVariables2: 18040833 false ) 
	#(289 2 #reduceActionForImplementationCode2: 23303170 false ) 
	#(380 1 #reduceActionForStatements1: 35924993 false ) 
	#(292 2 #reduceActionForConstructorDefinition1: 23736321 false ) 
	#(295 2 #reduceActionForDestructorDefinition1: 24265729 false ) 
	#(304 2 #reduceActionForClassProcedureDefinition1: 25448449 false ) 
	#(312 2 #reduceActionForClassFunctionDefinition1: 26486785 false ) 
	#(315 2 #reduceActionForClassOperatorDefinition1: 26897409 false ) 
	#(303 5 #reduceActionForNonExternalProcedureHeaderVars1: 25278465 false ) 
	#(223 1 #liftFirstValue: 14352386 false ) 
	#(279 2 #reduceActionForExternalMethodModifier6: 21382145 false ) 
	#(284 5 #reduceActionForArgument1: 22774785 false ) 
	#(192 7 #reduceActionForAnonymousFunctionType1: 9582593 false ) 
	#(227 3 #reduceActionForPrivateClassSection1: 14661633 false ) 
	#(228 3 #reduceActionForProtectedClassSection1: 14854145 false ) 
	#(298 2 #reduceActionForGotoStatement1: 24779778 false ) 
	#(265 0 #reduceActionForPropertyValues1: 19510273 false ) 
	#(184 3 #reduceActionForEnumName2: 8076290 false ) 
	#(183 3 #reduceActionForStatements2: 8003586 false ) 
	#(231 3 #reduceActionForRequires1: 15257602 false ) 
	#(379 3 #reduceActionForExportsDefinition1: 35814401 false ) 
	#(311 6 #reduceActionForNonExternalFunctionHeaderVars1: 26307585 false ) 
	#(277 2 #reduceActionForMethodVariables1: 21203970 false ) 
	#(175 5 #reduceActionForResource1: 6953985 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21702661 false ) 
	#(280 5 #reduceActionForExternalMethodModifier5: 21702659 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21382147 false ) 
	#(279 3 #reduceActionForNonExternalMethodModifier3: 21382146 false ) 
	#(351 8 #reduceActionForForStatement1: 31119361 false ) 
	#(286 2 #reduceActionForGotoStatement1: 23005186 false ) 
	#(337 5 #reduceActionForOnDo1: 29876225 false ) 
	#(196 3 #reduceActionForStatements2: 10266626 false ) 
	#(294 5 #reduceActionForNonExternalConstructorHeader1: 24049665 false ) 
	#(297 5 #reduceActionForNonExternalDestructorHeader1: 24570881 false ) 
	#(238 5 #reduceActionForInterfaceFunctionAssignment1: 16701441 false ) 
	#(239 5 #reduceActionForInterfaceProcedureAssignment1: 16884737 false ) 
	#(266 3 #reduceActionForPropertyArrayAccessors2: 19841026 false ) 
	#(235 5 #reduceActionForNewClassComponent1: 15698945 false ) 
	#(232 3 #reduceActionForStatements2: 15319042 false ) 
	#(222 5 #reduceActionForOldClassType1: 14202881 false ) 
	#(248 3 #reduceActionForGuid2: 17965058 false ) 
	#(246 5 #reduceActionForInterfaceType1: 17715201 false ) 
	#(249 2 #reduceActionForMethodVariables1: 18040834 false ) 
	#(250 1 #liftFirstValue: 18132994 false ) 
	#(250 1 #liftFirstValue: 18132993 false ) 
	#(380 3 #reduceActionForStatements2: 35924994 false ) 
	#(325 6 #reduceActionForVariable1: 28068865 false ) 
	#(203 1 #reduceActionForStatements1: 11074561 false ) 
	#(205 1 #reduceActionForStatements1: 11289601 false ) 
	#(206 1 #liftFirstValue: 11376641 false ) 
	#(294 6 #reduceActionForNonExternalConstructorHeader2: 24049666 false ) 
	#(297 6 #reduceActionForNonExternalDestructorHeader2: 24570882 false ) 
	#(271 1 #reduceActionForPropertyDefault2: 20515842 false ) 
	#(271 1 #reduceActionForPropertyDefault3: 20515843 false ) 
	#(275 0 #nil 21032961 false ) 
	#(265 2 #reduceActionForPropertyValues2: 19510274 false ) 
	#(265 2 #reduceActionForCaseOptionList1: 19510275 false ) 
	#(265 2 #reduceActionForPropertyValues4: 19510276 false ) 
	#(265 2 #reduceActionForPropertyValues8: 19510280 false ) 
	#(265 2 #reduceActionForPropertyValues5: 19510277 false ) 
	#(265 2 #reduceActionForPropertyValues7: 19510279 false ) 
	#(265 2 #reduceActionForPropertyValues6: 19510278 false ) 
	#(219 6 #reduceActionForClassHelperType2: 13667330 false ) 
	#(218 6 #reduceActionForNewClassType1: 13434881 false ) 
	#(172 7 #reduceActionForConstantValue1: 6589441 false ) 
	#(202 6 #reduceActionForVariantRecordPart1: 10925057 false ) 
	#(317 7 #reduceActionForNonExternalClassOperatorHeader1: 27227137 false ) 
	#(271 2 #reduceActionForPropertyDefault1: 20515841 false ) 
	#(270 2 #reduceActionForPropertyDispid1: 20203521 false ) 
	#(273 1 #reduceActionForStatements1: 20824065 false ) 
	#(272 2 #reduceActionForPropertyImplements1: 20719617 false ) 
	#(267 2 #reduceActionForPropertyIndex1: 19938305 false ) 
	#(268 2 #reduceActionForPropertyReader1: 20031489 false ) 
	#(274 2 #reduceActionForPropertyStored1: 20943873 false ) 
	#(269 2 #reduceActionForPropertyWriter1: 20116481 false ) 
	#(263 7 #reduceActionForPropertyHeaderVars1: 19220481 false ) 
	#(203 3 #reduceActionForStatements2: 11074562 false ) 
	#(205 3 #reduceActionForStatements2: 11289602 false ) 
	#(270 3 #reduceActionForPropertyDispid2: 20203522 false ) 
	#(270 3 #reduceActionForPropertyDispid3: 20203523 false ) 
	#(275 2 #reduceActionForPropertyModifiers2: 21032962 false ) 
	#(273 3 #reduceActionForStatements2: 20824066 false ) 
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
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 129 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 101 0 186 1 105 0 189 1 149 0 191 1 149 0 192 1 101 0 194 1 101 0 198 1 101 0 199 1 129 0 201 1 101 0 207 1 137 0 208 1 141 0 209 1 145 0 210 1 149 0 240 1 101 0 241 1 101 0 242 1 145 1 110 1 165 1 115 1 169 1 126 0 18 1 127] 
#[1 1 173 0 129 1 177 0 138 1 181 0 178 1 185 0 237] 
#[1 1 189 0 138 1 193 0 167] 
#[1 1 189 0 138 1 197 0 167] 
#[1 1 189 0 138 1 201 0 167] 
#[1 1 189 0 138 1 205 0 167] 
#[1 1 189 0 138 1 209 0 165 1 213 0 166 1 217 0 167] 
#[0 0 0 1 127] 
#[0 0 26 1 127] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 1 221 0 164] 
#[0 0 30 1 127] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 1 225 0 164] 
#[0 0 34 1 127] 
#[1 1 229 0 102 1 233 0 158] 
#[0 0 38 1 127] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 1 237 0 63 1 241 0 163 0 46 1 127] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 1 245 0 155 1 249 1 62 1 253 1 63] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 5 1 102 2 5 1 103 0 253 1 104 2 5 1 105 1 5 1 106 2 5 1 107 2 5 1 108 2 5 1 109 2 5 1 110 1 25 1 115 2 5 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 9 1 102 2 9 1 103 0 253 1 104 2 9 1 105 1 5 1 106 2 9 1 107 2 9 1 108 2 9 1 109 2 9 1 110 1 25 1 115 2 9 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 13 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 21 1 102 2 21 1 103 0 253 1 104 2 21 1 105 1 5 1 106 2 21 1 107 2 21 1 108 2 21 1 109 2 21 1 110 1 25 1 115 2 21 1 116 1 33 1 126] 
#[1 2 25 0 138 2 29 1 108] 
#[1 2 33 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 103 0 54 0 114 0 54 0 117 0 54 0 122 2 37 0 193] 
#[1 2 41 0 138 2 45 0 140] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 49 1 102 2 49 1 103 0 253 1 104 2 49 1 105 1 5 1 106 2 49 1 107 2 49 1 108 2 49 1 109 2 49 1 110 1 25 1 115 2 49 1 116 1 33 1 126] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 74 0 58 0 77 0 58 0 78 0 58 0 80 0 58 0 96 0 58 0 97 0 58 0 107 0 58 0 108 0 58 0 111 0 58 0 113 0 58 0 115 0 58 0 120 0 58 0 126 0 58 0 127 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 2 53 0 138 0 58 1 127] 
#[0 2 57 0 129] 
#[0 2 61 0 129] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 65 1 102 2 65 1 103 0 253 1 104 2 65 1 105 1 5 1 106 2 65 1 107 2 65 1 108 2 65 1 109 2 65 1 110 1 25 1 115 2 65 1 116 1 33 1 126] 
#[1 2 33 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 103 0 54 0 114 0 54 0 117 0 54 0 122 2 69 0 193] 
#[1 0 81 0 2 0 85 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 101 0 52 0 113 0 60 0 62 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 62 0 78 0 129 0 89 0 62 0 120 0 153 0 129 0 157 0 134 0 161 0 135 0 62 0 136 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 73 1 102 2 73 1 103 0 253 1 104 2 73 1 105 1 5 1 106 2 73 1 107 2 73 1 108 2 73 1 109 2 73 1 110 1 25 1 115 2 73 1 116 1 33 1 126 0 62 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 77 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 81 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 85 1 102 2 85 1 103 0 253 1 104 2 85 1 105 1 5 1 106 2 85 1 107 2 85 1 108 2 85 1 109 2 85 1 110 1 25 1 115 2 85 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 89 1 77 2 93 1 102 2 93 1 103 0 253 1 104 2 93 1 105 1 5 1 106 2 93 1 107 2 93 1 108 2 93 1 109 2 93 1 110 1 25 1 115 2 93 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 2 97 0 130 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 101 1 102 2 101 1 103 0 253 1 104 2 101 1 105 1 5 1 106 2 101 1 107 2 101 1 108 2 101 1 109 2 101 1 110 2 105 1 111 2 109 1 112 1 25 1 115 2 101 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 113 1 102 2 113 1 103 0 253 1 104 2 113 1 105 1 5 1 106 2 113 1 107 2 113 1 108 2 113 1 109 2 113 1 110 1 25 1 115 2 113 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 117 1 102 2 117 1 103 0 253 1 104 2 117 1 105 1 5 1 106 2 117 1 107 2 117 1 108 2 117 1 109 2 117 1 110 1 25 1 115 2 117 1 116 1 33 1 126] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 121 0 9 0 66 0 10 0 11 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 107 0 66 0 108 0 66 0 120 0 66 0 128 0 66 0 129 0 66 0 131 0 66 0 132 0 66 0 134 0 66 0 135 0 66 0 136 0 66 0 137 2 129 0 187 0 66 1 127] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 2 133 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 78 0 70 0 80 0 70 0 107 0 70 0 108 0 70 0 120 0 70 0 128 0 70 0 129 0 70 0 131 0 70 0 132 0 70 0 134 0 70 0 135 0 70 0 136 0 70 0 137 0 70 1 127] 
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
#[0 2 137 0 21] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 2 245 0 58 0 138 0 61 2 245 0 64 2 245 0 71 0 138 0 78 2 245 0 80 2 245 0 107 2 245 0 108 0 138 0 120 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 0 138 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 0 138 1 127] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 2 253 1 62 1 253 1 63] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 3 1 1 62 1 253 1 63] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 1 37 0 2 0 178 0 3 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 5 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 3 9 0 210 3 13 0 211 3 17 0 212 3 21 0 213 3 25 0 214 3 29 0 215 3 33 0 216 3 9 1 110 1 165 1 115 1 169 1 126] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 3 41 0 210 3 41 1 110 1 165 1 115 1 169 1 126] 
#[1 0 182 0 3 0 182 0 5 0 182 0 14 0 182 0 16 0 182 0 21 0 182 0 23 0 182 0 27 0 182 0 30 0 182 0 31 0 182 0 33 0 182 0 36 0 182 0 52 0 182 0 57 0 182 0 59 0 182 0 65 0 182 0 74 3 45 0 77 0 182 0 87 0 182 0 89 0 182 0 96 0 182 0 97 0 182 0 103 0 182 0 111 0 182 0 114 0 182 0 117 0 182 0 122 0 182 0 126 0 182 0 127 0 182 0 129 0 182 0 130 0 182 0 131 0 182 0 136 0 182 1 127] 
#[1 2 33 0 2 0 54 0 9 3 49 0 193] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 3 53 0 210 3 53 1 110 1 165 1 115 1 169 1 126] 
#[0 0 186 0 19 0 98] 
#[1 2 33 0 2 0 54 0 77 0 54 0 136 3 57 0 193] 
#[0 3 61 0 54] 
#[0 3 65 0 77] 
#[1 3 69 0 138 3 73 0 233] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 3 77 0 210 3 77 1 110 1 165 1 115 1 169 1 126] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 3 81 0 210 3 81 1 110 1 165 1 115 1 169 1 126] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 129 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 3 89 0 186 1 105 0 189 3 89 0 191 3 89 0 192 3 89 0 194 3 89 0 198 3 89 0 199 1 129 0 201 3 89 0 207 1 137 0 208 1 141 0 209 1 145 0 210 3 89 0 240 3 89 0 241 3 89 0 242 1 145 1 110 1 165 1 115 1 169 1 126 0 18 1 127] 
#[1 0 190 0 2 0 194 0 3 0 190 0 4 0 194 0 5 0 27 0 6 0 190 0 7 0 190 0 8 0 27 0 11 0 190 0 12 0 190 0 13 0 194 0 14 0 194 0 16 0 190 0 18 0 190 0 20 0 194 0 21 0 194 0 23 0 194 0 27 0 194 0 30 0 194 0 31 0 194 0 33 0 190 0 35 0 194 0 36 0 194 0 52 0 194 0 57 0 190 0 58 0 194 0 59 0 190 0 64 0 194 0 65 0 190 0 71 0 194 0 74 0 194 0 77 0 190 0 80 0 194 0 87 0 194 0 89 0 194 0 96 0 194 0 97 0 194 0 103 0 190 0 107 0 190 0 108 0 194 0 111 0 194 0 114 0 194 0 117 0 194 0 122 0 194 0 126 0 194 0 127 0 190 0 128 0 194 0 129 0 194 0 130 0 27 0 131 0 190 0 132 0 190 0 134 0 190 0 135 0 194 0 136 0 194 1 127] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 0 202 0 16 0 202 0 129 0 0 1 127] 
#[1 0 206 0 3 0 206 0 5 3 93 0 6 2 125 0 11 0 206 0 14 0 206 0 16 0 206 0 21 0 206 0 23 0 206 0 27 0 206 0 30 0 206 0 31 0 206 0 33 0 206 0 36 0 206 0 52 0 206 0 57 0 206 0 59 0 206 0 65 0 206 0 74 0 206 0 77 0 206 0 87 0 206 0 89 0 206 0 96 0 206 0 97 0 206 0 103 0 206 0 111 0 206 0 114 0 206 0 117 0 206 0 122 0 206 0 126 0 206 0 127 0 206 0 129 0 206 0 130 0 206 0 131 0 206 0 136 3 97 0 187 0 206 1 127] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 214 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 101 0 19 3 105 0 98] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 3 109 0 7] 
#[0 0 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 113 0 2 0 238 0 3 3 121 0 4 0 238 0 5 3 117 0 6 0 238 0 7 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 0 238 0 14 0 238 0 16 3 121 0 18 3 121 0 20 0 238 0 21 0 238 0 23 0 238 0 27 0 238 0 30 0 238 0 31 0 238 0 33 3 121 0 35 0 238 0 36 0 238 0 52 0 238 0 57 3 121 0 58 0 238 0 59 3 121 0 64 0 238 0 65 3 121 0 71 0 238 0 74 0 238 0 77 3 121 0 80 0 238 0 87 0 238 0 89 0 238 0 96 0 238 0 97 0 238 0 103 3 121 0 107 3 121 0 108 0 238 0 111 0 238 0 114 0 238 0 117 0 238 0 122 0 238 0 126 0 238 0 127 3 121 0 128 0 238 0 129 0 238 0 130 0 31 0 131 3 121 0 132 3 121 0 134 3 121 0 135 0 238 0 136 3 121 1 120 0 238 1 127] 
#[1 3 125 0 16 3 129 0 129] 
#[0 0 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 246 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 3 133 0 210 3 133 1 110 1 165 1 115 1 169 1 126] 
#[1 3 137 0 11 1 6 0 14 3 141 0 179] 
#[0 0 0 1 127] 
#[0 3 145 0 138] 
#[0 1 10 0 5 0 6 0 31 0 58 0 87 0 136] 
#[1 3 149 0 6 3 161 0 31 3 161 0 87 1 14 0 136 3 161 0 190] 
#[1 3 149 0 6 3 165 0 136] 
#[1 3 149 0 6 3 169 0 31 3 169 0 87 1 14 0 136 3 169 0 190] 
#[1 3 149 0 6 3 173 0 31 3 173 0 87 1 14 0 136 3 173 0 190] 
#[1 3 177 0 5 3 181 0 136] 
#[0 1 18 0 5 0 136] 
#[1 1 22 0 5 3 149 0 6 3 185 0 58 1 22 0 136] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 3 189 0 155 1 249 1 62 1 253 1 63] 
#[1 1 26 0 21 1 26 0 23 1 26 0 27 1 26 0 43 1 26 0 52 1 26 0 65 1 26 0 89 1 26 0 103 1 26 0 114 1 26 0 117 1 26 0 122 3 193 0 153] 
#[1 1 189 0 138 3 197 0 159 3 201 0 167] 
#[1 3 205 0 29 3 209 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 3 213 0 164] 
#[1 1 30 0 40 1 30 0 48 3 217 0 56 1 30 0 61 3 221 1 32] 
#[0 3 225 0 6] 
#[0 1 34 0 6] 
#[1 0 10 0 21 0 89 0 23 3 229 0 27 3 233 0 52 3 237 0 65 3 241 0 89 3 245 0 103 3 249 0 114 3 253 0 117 4 1 0 122 4 57 0 170 4 57 0 173 4 57 0 176 4 57 1 43 4 21 1 44 4 25 1 45 4 29 1 46 4 33 1 47 4 57 1 51 4 41 1 52 4 45 1 53 4 49 1 54 4 53 1 55 4 57 1 64 4 57 1 65 4 57 1 66 4 69 1 67 4 73 1 99 4 73 1 100 0 241 1 101] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 66 0 8 0 66 0 9 0 66 0 10 0 11 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 30 0 66 0 33 0 66 0 35 0 66 0 36 0 66 0 37 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 74 0 66 0 77 0 66 0 78 0 66 0 80 0 66 0 96 0 66 0 97 0 66 0 107 0 66 0 108 0 66 0 111 0 66 0 113 0 66 0 115 0 66 0 120 0 66 0 126 0 66 0 127 0 66 0 128 0 66 0 129 0 66 0 130 0 66 0 131 0 66 0 132 0 66 0 133 0 66 0 134 0 66 0 135 0 66 0 136 0 66 0 137 2 129 0 187 0 66 1 127] 
#[1 2 141 0 2 4 77 0 3 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 2 141 0 2 1 38 0 3 1 38 0 4 1 38 0 5 2 149 0 6 1 38 0 7 1 38 0 8 1 38 0 9 1 38 0 10 0 35 0 11 0 39 0 12 0 43 0 13 0 47 0 14 1 38 0 18 1 38 0 20 1 38 0 30 1 38 0 33 1 38 0 35 1 38 0 36 1 38 0 37 1 38 0 39 1 38 0 40 1 38 0 41 1 38 0 48 1 38 0 49 1 38 0 57 0 51 0 58 1 38 0 59 1 38 0 61 1 38 0 64 1 38 0 71 1 38 0 74 1 38 0 77 1 38 0 78 1 38 0 80 1 38 0 96 1 38 0 97 1 38 0 107 1 38 0 108 1 38 0 111 1 38 0 113 1 38 0 115 1 38 0 120 1 38 0 126 1 38 0 127 1 38 0 128 2 217 0 129 1 38 0 130 0 55 0 131 0 59 0 132 1 38 0 133 1 38 0 134 1 38 0 135 1 38 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 1 38 1 127] 
#[1 4 81 0 40 4 85 0 136] 
#[0 1 42 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 4 89 0 77 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[0 0 66 0 10 0 58] 
#[1 4 93 0 10 4 97 0 58] 
#[1 1 46 0 3 4 125 0 27 4 125 0 81 4 125 0 122 1 50 0 138 4 113 1 26 4 117 1 27 4 121 1 28 4 125 1 31] 
#[1 4 129 0 9 1 54 0 21 1 54 0 23 1 54 0 27 1 54 0 52 1 54 0 65 1 54 0 89 1 54 0 103 1 54 0 114 1 54 0 117 1 54 0 122 4 133 1 5] 
#[0 1 58 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 1 62 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 4 137 0 113 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 4 141 0 2 1 66 0 3 1 66 0 4 1 66 0 5 1 66 0 6 1 66 0 7 1 66 0 8 1 66 0 9 1 66 0 10 1 66 0 11 1 66 0 12 1 66 0 13 1 66 0 14 1 66 0 18 1 66 0 20 1 66 0 30 1 66 0 33 1 66 0 35 1 66 0 36 1 66 0 37 1 66 0 39 1 66 0 40 1 66 0 41 1 66 0 48 1 66 0 49 1 66 0 57 1 66 0 58 1 66 0 59 1 66 0 61 1 66 0 64 1 66 0 71 1 66 0 74 1 66 0 77 1 66 0 78 1 66 0 80 1 66 0 96 1 66 0 97 1 66 0 107 1 66 0 108 1 66 0 111 1 66 0 113 1 66 0 115 1 66 0 120 1 66 0 126 1 66 0 127 1 66 0 128 1 66 0 129 1 66 0 130 1 66 0 131 1 66 0 132 1 66 0 133 1 66 0 134 1 66 0 135 1 66 0 136 1 66 0 137 1 66 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 145 1 102 4 145 1 103 0 253 1 104 4 145 1 105 1 5 1 106 4 145 1 107 4 145 1 108 4 145 1 109 4 145 1 110 1 25 1 115 4 145 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 149 1 102 4 149 1 103 0 253 1 104 4 149 1 105 1 5 1 106 4 149 1 107 4 149 1 108 4 149 1 109 4 149 1 110 1 25 1 115 4 149 1 116 1 33 1 126] 
#[1 2 141 0 2 1 70 0 3 2 245 0 4 1 70 0 5 2 149 0 6 1 70 0 7 2 245 0 8 1 70 0 9 2 157 0 10 0 63 0 11 0 67 0 12 0 71 0 13 0 75 0 14 2 245 0 18 2 245 0 20 1 70 0 30 1 70 0 33 2 245 0 35 1 70 0 36 1 70 0 37 1 70 0 39 1 70 0 40 1 70 0 41 1 70 0 48 1 70 0 49 1 70 0 57 0 79 0 58 1 70 0 59 1 70 0 61 2 245 0 64 2 245 0 71 1 70 0 74 1 70 0 77 1 70 0 78 2 245 0 80 1 70 0 96 1 70 0 97 2 245 0 107 2 245 0 108 1 70 0 111 1 70 0 113 1 70 0 115 1 70 0 120 1 70 0 126 1 70 0 127 2 245 0 128 2 217 0 129 1 70 0 130 0 83 0 131 0 87 0 132 1 70 0 133 2 245 0 134 2 245 0 135 1 70 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 1 70 1 127] 
#[0 1 74 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 1 78 0 39 1 78 0 40 1 78 0 41 1 78 0 48 1 78 0 49 2 245 0 58 1 78 0 61 2 245 0 64 2 245 0 71 1 78 0 78 2 245 0 80 2 245 0 107 2 245 0 108 1 78 0 120 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 4 153 0 133 2 245 0 134 2 245 0 135 1 78 0 136 2 237 0 137 4 157 1 94 2 241 1 113 2 245 1 119 2 245 1 120 1 78 1 127] 
#[1 4 161 0 120 4 85 0 136] 
#[1 1 82 0 40 4 165 0 41 1 82 0 49 4 85 0 136 4 169 1 79] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 4 173 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 4 177 0 5 4 181 0 36] 
#[1 2 141 0 2 2 245 0 4 1 86 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 1 86 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 141 0 2 2 245 0 4 1 94 0 5 2 149 0 6 4 185 0 7 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 1 94 0 130 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 4 189 0 5 4 193 0 130] 
#[0 1 98 0 5 0 130] 
#[1 2 141 0 2 1 102 0 3 2 245 0 4 1 102 0 5 2 149 0 6 1 102 0 7 2 245 0 8 1 102 0 9 1 102 0 10 0 91 0 11 0 95 0 12 0 99 0 13 0 103 0 14 1 102 0 18 1 102 0 20 1 102 0 30 1 102 0 33 2 245 0 35 1 102 0 36 1 102 0 37 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 48 1 102 0 49 1 102 0 57 0 107 0 58 1 102 0 59 1 102 0 61 1 102 0 64 2 245 0 71 1 102 0 74 1 102 0 77 1 102 0 78 1 102 0 80 1 102 0 96 1 102 0 97 2 245 0 107 2 245 0 108 1 102 0 111 1 102 0 113 1 102 0 115 1 102 0 120 1 102 0 126 1 102 0 127 1 102 0 128 2 217 0 129 1 102 0 130 0 111 0 131 0 115 0 132 1 102 0 133 1 102 0 134 1 102 0 135 1 102 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 1 102 1 127] 
#[1 2 141 0 2 1 106 0 3 2 245 0 4 1 106 0 5 2 149 0 6 1 106 0 7 2 245 0 8 1 106 0 9 1 106 0 10 0 119 0 11 0 123 0 12 0 127 0 13 0 131 0 14 1 106 0 18 1 106 0 20 1 106 0 30 1 106 0 33 2 245 0 35 1 106 0 36 1 106 0 37 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 48 1 106 0 49 1 106 0 57 0 135 0 58 1 106 0 59 1 106 0 61 1 106 0 64 2 245 0 71 1 106 0 74 1 106 0 77 1 106 0 78 1 106 0 80 1 106 0 96 1 106 0 97 2 245 0 107 2 245 0 108 1 106 0 111 1 106 0 113 1 106 0 115 1 106 0 120 1 106 0 126 1 106 0 127 1 106 0 128 2 217 0 129 1 106 0 130 0 139 0 131 0 143 0 132 1 106 0 133 1 106 0 134 1 106 0 135 1 106 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 1 106 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 197 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 4 197 1 99 4 197 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 1 37 0 2 0 18 0 5 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 129 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 0 18 0 131 1 77 0 134 1 81 0 135 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 4 201 0 186 4 205 0 188 1 105 0 189 1 149 0 191 1 149 0 192 4 201 0 194 4 201 0 198 4 201 0 199 1 129 0 201 4 201 0 207 1 137 0 208 1 141 0 209 1 145 0 210 1 149 0 240 4 201 0 241 4 201 0 242 1 145 1 110 1 165 1 115 1 169 1 126] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 209 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 4 209 1 99 4 209 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[0 4 213 0 40] 
#[1 0 81 0 2 4 217 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 221 1 102 4 221 1 103 0 253 1 104 4 221 1 105 1 5 1 106 4 221 1 107 4 221 1 108 4 221 1 109 4 221 1 110 1 25 1 115 4 221 1 116 4 225 1 117 4 229 1 118 1 33 1 126] 
#[0 1 114 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[1 4 233 0 1 4 237 0 138] 
#[0 1 118 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 241 1 102 4 241 1 103 0 253 1 104 4 241 1 105 1 5 1 106 4 241 1 107 4 241 1 108 4 241 1 109 4 241 1 110 1 25 1 115 4 241 1 116 1 33 1 126] 
#[0 1 122 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 130 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 245 1 102 4 245 1 103 0 253 1 104 4 245 1 105 1 5 1 106 4 245 1 107 4 245 1 108 4 245 1 109 4 245 1 110 4 249 1 114 1 25 1 115 4 245 1 116 1 33 1 126] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 139 0 140 0 142 0 146 1 126] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 253 1 102 4 253 1 103 0 253 1 104 4 253 1 105 1 5 1 106 4 253 1 107 4 253 1 108 4 253 1 109 4 253 1 110 1 25 1 115 4 253 1 116 1 33 1 126] 
#[0 1 202 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 0 190 0 5 0 190 0 6 0 190 0 8 5 1 0 9 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 18 0 190 0 20 0 190 0 35 0 190 0 58 0 190 0 64 0 190 0 71 0 190 0 80 0 190 0 107 0 190 0 108 0 190 0 128 0 190 0 131 0 190 0 132 0 190 0 134 0 190 0 135] 
#[1 3 113 0 2 1 214 0 3 3 121 0 4 1 214 0 5 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 5 5 0 14 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[0 5 9 0 3] 
#[1 1 218 0 3 5 13 0 5] 
#[0 1 222 0 3 0 5] 
#[1 1 226 0 3 5 21 0 136 5 21 1 85] 
#[1 1 230 0 3 0 147 0 136] 
#[0 1 234 0 3 0 136] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 113 0 2 1 238 0 3 1 238 0 4 1 238 0 5 3 117 0 6 1 238 0 7 1 238 0 8 1 238 0 9 0 151 0 11 0 155 0 12 0 159 0 13 1 238 0 14 1 238 0 16 1 238 0 18 1 238 0 20 1 238 0 21 1 238 0 23 1 238 0 27 1 238 0 30 1 238 0 31 1 238 0 33 1 238 0 35 1 238 0 36 1 238 0 52 1 238 0 57 0 163 0 58 1 238 0 59 1 238 0 64 1 238 0 65 1 238 0 71 1 238 0 74 1 238 0 77 1 238 0 80 1 238 0 87 1 238 0 89 1 238 0 96 1 238 0 97 1 238 0 103 1 238 0 107 1 238 0 108 1 238 0 111 1 238 0 114 1 238 0 117 1 238 0 122 1 238 0 126 1 238 0 127 1 238 0 128 1 238 0 129 1 238 0 130 0 167 0 131 0 171 0 132 1 238 0 134 1 238 0 135 1 238 0 136 3 121 1 120 1 238 1 127] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 129 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 5 29 0 186 1 105 0 189 5 29 0 191 5 29 0 192 5 29 0 194 5 29 0 198 5 29 0 199 1 129 0 201 5 29 0 207 1 137 0 208 1 141 0 209 1 145 0 210 5 29 0 240 5 29 0 241 5 29 0 242 1 145 1 110 1 165 1 115 1 169 1 126 0 18 1 127] 
#[0 5 33 0 9] 
#[1 3 113 0 2 1 242 0 3 3 121 0 4 1 242 0 5 3 117 0 6 1 242 0 7 3 121 0 8 1 242 0 9 0 175 0 11 0 179 0 12 0 183 0 13 1 242 0 14 1 242 0 16 3 121 0 18 3 121 0 20 1 242 0 21 1 242 0 23 1 242 0 27 1 242 0 30 1 242 0 31 1 242 0 33 3 121 0 35 1 242 0 36 1 242 0 52 1 242 0 57 0 187 0 58 1 242 0 59 3 121 0 64 1 242 0 65 3 121 0 71 1 242 0 74 1 242 0 77 3 121 0 80 1 242 0 87 1 242 0 89 1 242 0 96 1 242 0 97 1 242 0 103 3 121 0 107 3 121 0 108 1 242 0 111 1 242 0 114 1 242 0 117 1 242 0 122 1 242 0 126 1 242 0 127 3 121 0 128 1 242 0 129 1 242 0 130 0 191 0 131 0 195 0 132 3 121 0 134 3 121 0 135 1 242 0 136 3 121 1 120 1 242 1 127] 
#[1 5 37 0 77 1 246 0 136 5 41 1 1] 
#[0 5 45 0 50] 
#[1 5 49 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 5 53 0 207 1 137 0 208 1 141 0 209 5 57 0 210 5 57 1 110 1 165 1 115 1 169 1 126] 
#[1 1 6 0 2 1 6 0 3 1 6 0 5 1 6 0 6 1 6 0 9 3 137 0 11 1 6 0 14 1 6 0 16 1 6 0 21 1 6 0 23 1 6 0 24 1 6 0 26 1 6 0 27 1 6 0 28 1 6 0 30 1 6 0 31 1 6 0 32 1 6 0 33 1 6 0 36 1 6 0 39 1 6 0 40 1 6 0 41 1 6 0 48 1 6 0 49 1 6 0 52 1 6 0 57 1 6 0 59 1 6 0 61 1 6 0 65 1 6 0 74 1 6 0 77 1 6 0 78 1 6 0 87 1 6 0 88 1 6 0 89 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 96 1 6 0 97 1 6 0 103 1 6 0 111 1 6 0 112 1 6 0 114 1 6 0 117 1 6 0 120 1 6 0 122 1 6 0 126 1 6 0 127 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 136 1 6 0 138 5 61 0 179 1 6 1 127] 
#[0 1 250 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 113 0 2 1 254 0 3 3 121 0 4 1 254 0 5 3 117 0 6 1 254 0 7 3 121 0 8 1 254 0 9 0 199 0 11 0 203 0 12 0 207 0 13 1 254 0 14 1 254 0 16 1 254 0 18 1 254 0 20 1 254 0 21 1 254 0 23 1 254 0 27 1 254 0 30 1 254 0 31 1 254 0 33 3 121 0 35 1 254 0 36 1 254 0 52 1 254 0 57 0 211 0 58 1 254 0 59 1 254 0 64 1 254 0 65 3 121 0 71 1 254 0 74 1 254 0 77 1 254 0 80 1 254 0 87 1 254 0 89 1 254 0 96 1 254 0 97 1 254 0 103 3 121 0 107 3 121 0 108 1 254 0 111 1 254 0 114 1 254 0 117 1 254 0 122 1 254 0 126 1 254 0 127 1 254 0 128 1 254 0 129 1 254 0 130 0 215 0 131 0 219 0 132 1 254 0 134 1 254 0 135 1 254 0 136 3 121 1 120 1 254 1 127] 
#[1 3 113 0 2 2 2 0 3 3 121 0 4 2 2 0 5 3 117 0 6 2 2 0 7 3 121 0 8 2 2 0 9 0 223 0 11 0 227 0 12 0 231 0 13 2 2 0 14 2 2 0 16 2 2 0 18 2 2 0 20 2 2 0 21 2 2 0 23 2 2 0 27 2 2 0 30 2 2 0 31 2 2 0 33 3 121 0 35 2 2 0 36 2 2 0 52 2 2 0 57 0 235 0 58 2 2 0 59 2 2 0 64 2 2 0 65 3 121 0 71 2 2 0 74 2 2 0 77 2 2 0 80 2 2 0 87 2 2 0 89 2 2 0 96 2 2 0 97 2 2 0 103 3 121 0 107 3 121 0 108 2 2 0 111 2 2 0 114 2 2 0 117 2 2 0 122 2 2 0 126 2 2 0 127 2 2 0 128 2 2 0 129 2 2 0 130 0 239 0 131 0 243 0 132 2 2 0 134 2 2 0 135 2 2 0 136 3 121 1 120 2 2 1 127] 
#[0 0 202 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 2 6 0 3 2 6 0 5 2 6 0 14 2 6 0 16 2 6 0 21 2 6 0 23 2 6 0 27 2 6 0 30 2 6 0 31 2 6 0 33 2 6 0 36 2 6 0 52 2 6 0 57 2 6 0 59 2 6 0 65 2 6 0 74 2 6 0 77 2 6 0 87 2 6 0 89 2 6 0 96 2 6 0 97 2 6 0 103 2 6 0 111 2 6 0 114 2 6 0 117 2 6 0 122 2 6 0 126 2 6 0 127 3 129 0 129 2 6 0 130 2 6 0 131 2 6 0 136 2 6 1 127] 
#[0 5 65 0 139] 
#[0 2 10 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 2 14 0 77 5 69 0 129 5 73 0 243] 
#[1 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 5 77 0 200 5 81 0 224 5 85 0 234] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 5 89 0 208 1 141 0 209 1 145 0 210 1 145 1 110 1 165 1 115 1 169 1 126] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 5 93 0 210 5 97 0 217 5 93 1 110 1 165 1 115 1 169 1 126] 
#[0 5 101 0 139] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 5 105 0 210 5 105 1 110 1 165 1 115 1 169 1 126] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 129 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 5 109 0 186 1 105 0 189 5 109 0 191 5 109 0 192 5 109 0 194 5 109 0 198 5 109 0 199 1 129 0 201 5 109 0 207 1 137 0 208 1 141 0 209 1 145 0 210 5 109 0 240 5 109 0 241 5 109 0 242 1 145 1 110 1 165 1 115 1 169 1 126 0 18 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 5 113 0 210 5 113 1 110 1 165 1 115 1 169 1 126] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 5 117 0 130 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[1 5 121 0 138 5 125 0 180] 
#[0 5 129 0 14] 
#[1 3 137 0 11 1 6 0 14 5 133 0 179] 
#[0 5 137 0 138] 
#[0 2 22 0 14 0 31 0 136] 
#[0 2 26 0 14 0 31 0 136] 
#[0 5 141 0 136] 
#[0 2 30 0 102] 
#[0 5 145 0 136] 
#[0 5 149 0 136] 
#[1 1 189 0 138 5 153 0 166 1 217 0 167] 
#[0 2 34 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 5 157 0 142] 
#[0 5 161 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 165 0 43 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 5 169 0 154 5 173 0 155 1 249 1 62 1 253 1 63] 
#[1 5 177 0 5 5 181 0 136] 
#[1 2 38 0 5 3 149 0 6 2 38 0 136] 
#[1 1 189 0 138 5 185 0 165 1 213 0 166 1 217 0 167] 
#[1 5 189 0 40 5 193 1 125] 
#[1 2 42 0 27 2 42 0 40 2 42 0 48 2 42 0 52 2 42 0 56 2 42 0 61 2 42 0 89 2 42 0 103 2 42 0 114 2 42 0 117 2 42 0 122 5 197 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 103 0 6 0 114 0 6 0 117 0 37 0 121 0 6 0 122 5 201 0 164] 
#[1 2 46 0 40 2 46 0 48 5 205 0 61 5 209 1 121] 
#[0 2 50 1 127] 
#[1 5 213 0 138 5 217 0 171 5 221 0 172] 
#[1 3 69 0 138 5 225 0 233] 
#[1 5 229 0 138 5 233 1 29] 
#[1 3 69 0 138 5 237 0 233] 
#[1 5 241 0 138 5 245 0 174 5 249 0 175] 
#[1 5 229 0 138 5 253 1 29 6 1 1 68 6 5 1 69] 
#[1 1 173 0 129 1 177 0 138 6 9 0 177 6 13 0 178 1 185 0 237] 
#[1 5 229 0 138 5 253 1 29 6 17 1 68 6 5 1 69] 
#[0 2 54 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 58 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 62 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 66 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 70 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 74 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 6 21 1 62 1 253 1 63] 
#[1 2 78 0 3 2 78 0 21 2 78 0 23 2 78 0 24 2 78 0 26 2 78 0 27 2 78 0 28 2 78 0 32 2 78 0 40 6 25 0 44 2 78 0 48 6 29 0 51 2 78 0 52 2 78 0 56 2 78 0 61 2 78 0 65 2 78 0 88 2 78 0 89 2 78 0 91 2 78 0 92 2 78 0 93 2 78 0 94 2 78 0 103 2 78 0 112 2 78 0 114 2 78 0 117 2 78 0 122 2 78 0 129 2 78 0 138 6 33 1 24] 
#[0 2 82 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 86 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 90 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 6 37 1 62 1 253 1 63] 
#[1 2 94 0 3 2 94 0 21 2 94 0 23 2 94 0 24 2 94 0 26 2 94 0 27 2 94 0 28 2 94 0 32 2 94 0 40 6 25 0 44 2 94 0 48 6 29 0 51 2 94 0 52 2 94 0 56 2 94 0 61 2 94 0 65 2 94 0 88 2 94 0 89 2 94 0 91 2 94 0 92 2 94 0 93 2 94 0 94 2 94 0 103 2 94 0 112 2 94 0 114 2 94 0 117 2 94 0 122 2 94 0 129 2 94 0 138 6 41 1 24] 
#[0 2 98 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 102 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 106 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 2 110 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 6 45 0 136] 
#[0 2 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 2 118 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 49 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 49 1 99 6 49 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 6 53 0 210 6 57 1 86 6 61 1 87 6 65 1 88 6 69 1 89 6 73 1 90 6 77 1 91 6 53 1 110 1 165 1 115 1 169 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 81 1 102 6 81 1 103 0 253 1 104 6 81 1 105 1 5 1 106 6 81 1 107 6 81 1 108 6 81 1 109 6 81 1 110 1 25 1 115 6 81 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 85 1 102 6 85 1 103 0 253 1 104 6 85 1 105 1 5 1 106 6 85 1 107 6 85 1 108 6 85 1 109 6 85 1 110 1 25 1 115 6 85 1 116 1 33 1 126] 
#[0 2 122 0 138] 
#[0 2 126 0 138] 
#[0 2 130 0 138] 
#[0 6 89 0 3] 
#[1 2 134 0 3 2 134 0 130 6 93 0 136] 
#[0 2 138 0 3 0 130 0 136] 
#[1 5 229 0 138 6 97 1 29] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 0 18 0 27 0 18 0 30 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 129 0 85 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 6 101 0 186 1 105 0 189 6 101 0 191 6 101 0 192 6 101 0 194 6 101 0 198 6 101 0 199 1 129 0 201 6 101 0 207 1 137 0 208 1 141 0 209 1 145 0 210 6 101 0 240 6 101 0 241 6 101 0 242 1 145 1 110 1 165 1 115 1 169 1 126] 
#[0 2 142 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 105 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 105 1 99 6 105 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 0 81 0 2 6 109 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 221 1 102 4 221 1 103 0 253 1 104 4 221 1 105 1 5 1 106 4 221 1 107 4 221 1 108 4 221 1 109 4 221 1 110 1 25 1 115 4 221 1 116 6 113 1 117 4 229 1 118 1 33 1 126] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 6 117 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 6 121 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 3 69 0 138 6 125 0 233] 
#[0 2 146 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 129 1 102 6 129 1 103 0 253 1 104 6 129 1 105 1 5 1 106 6 129 1 107 6 129 1 108 6 129 1 109 6 129 1 110 1 25 1 115 6 129 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 6 133 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 137 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 6 141 1 80 6 145 1 81 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 2 150 0 40 6 149 0 49 6 153 1 83] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 157 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 157 1 99 6 157 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 161 1 102 6 161 1 103 0 253 1 104 6 161 1 105 1 5 1 106 6 161 1 107 6 161 1 108 6 161 1 109 6 161 1 110 1 25 1 115 6 161 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 165 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 6 165 1 99 6 165 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 6 169 1 102 6 169 1 103 0 253 1 104 6 169 1 105 1 5 1 106 6 169 1 107 6 169 1 108 6 169 1 109 6 169 1 110 1 25 1 115 6 169 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 2 101 1 102 2 101 1 103 0 253 1 104 2 101 1 105 1 5 1 106 2 101 1 107 2 101 1 108 2 101 1 109 2 101 1 110 6 173 1 112 1 25 1 115 2 101 1 116 1 33 1 126] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 2 158 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 162 0 5 0 202 0 16 0 202 0 129 2 162 0 131] 
#[1 6 177 0 5 6 181 0 131] 
#[0 2 166 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 2 170 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 141 0 2 2 178 0 3 2 245 0 4 2 178 0 5 2 149 0 6 2 245 0 8 2 178 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 6 185 0 3 6 189 0 5] 
#[1 2 182 0 3 2 182 0 5 6 193 0 9] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 141 0 2 2 194 0 3 2 245 0 4 2 194 0 5 2 149 0 6 2 194 0 7 2 245 0 8 2 194 0 9 2 157 0 10 0 247 0 11 0 251 0 12 0 255 0 13 1 3 0 14 2 245 0 18 2 245 0 20 2 194 0 30 2 194 0 33 2 245 0 35 2 194 0 36 2 194 0 37 2 194 0 39 2 194 0 40 2 194 0 41 2 194 0 48 2 194 0 49 2 194 0 57 1 7 0 58 2 194 0 59 2 194 0 61 2 245 0 64 2 245 0 71 2 194 0 74 2 194 0 77 2 194 0 78 2 245 0 80 2 194 0 96 2 194 0 97 2 245 0 107 2 245 0 108 2 194 0 111 2 194 0 113 2 194 0 115 2 194 0 120 2 194 0 126 2 194 0 127 2 245 0 128 2 217 0 129 2 194 0 130 1 11 0 131 1 15 0 132 2 194 0 133 2 245 0 134 2 245 0 135 2 194 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 2 194 1 127] 
#[1 2 141 0 2 2 245 0 4 2 198 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 198 0 130 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 6 197 0 5 6 201 0 130] 
#[1 2 141 0 2 2 202 0 3 2 245 0 4 2 202 0 5 2 149 0 6 2 202 0 7 2 245 0 8 2 202 0 9 2 157 0 10 1 19 0 11 1 23 0 12 1 27 0 13 1 31 0 14 2 245 0 18 2 245 0 20 2 202 0 30 2 202 0 33 2 245 0 35 2 202 0 36 2 202 0 37 2 202 0 39 2 202 0 40 2 202 0 41 2 202 0 48 2 202 0 49 2 202 0 57 1 35 0 58 2 202 0 59 2 202 0 61 2 245 0 64 2 245 0 71 2 202 0 74 2 202 0 77 2 202 0 78 2 245 0 80 2 202 0 96 2 202 0 97 2 245 0 107 2 245 0 108 2 202 0 111 2 202 0 113 2 202 0 115 2 202 0 120 2 202 0 126 2 202 0 127 2 245 0 128 2 217 0 129 2 202 0 130 1 39 0 131 1 43 0 132 2 202 0 133 2 245 0 134 2 245 0 135 2 202 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 2 202 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 6 205 0 210 6 205 1 110 1 165 1 115 1 169 1 126] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 6 209 0 210 6 209 1 110 1 165 1 115 1 169 1 126] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 3 9 0 210 6 213 0 213 3 9 1 110 1 165 1 115 1 169 1 126] 
#[0 2 210 0 3] 
#[0 6 217 0 3] 
#[1 6 221 0 139 6 225 0 216] 
#[1 2 214 0 3 2 214 0 5 2 214 0 14 3 125 0 16 2 214 0 21 2 214 0 23 2 214 0 27 2 214 0 30 2 214 0 31 2 214 0 33 2 214 0 36 2 214 0 52 2 214 0 57 2 214 0 59 2 214 0 65 2 214 0 74 2 214 0 77 2 214 0 87 2 214 0 89 2 214 0 96 2 214 0 97 2 214 0 103 2 214 0 111 2 214 0 114 2 214 0 117 2 214 0 122 2 214 0 126 2 214 0 127 3 129 0 129 2 214 0 130 2 214 0 131 2 214 0 136 2 214 1 127] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 0 18 0 77 1 129 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 6 229 0 186 1 105 0 189 6 229 0 191 6 229 0 192 6 229 0 194 6 229 0 198 6 229 0 199 1 129 0 201 6 229 0 207 1 137 0 208 1 141 0 209 1 145 0 210 6 229 0 240 6 229 0 241 6 229 0 242 1 145 1 110 1 165 1 115 1 169 1 126] 
#[0 6 233 0 76] 
#[0 6 237 0 136] 
#[1 3 69 0 138 6 241 0 233] 
#[1 1 37 0 2 0 178 0 3 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 6 245 0 139 1 141 0 140 1 165 0 142 1 97 0 146 6 249 0 195 1 141 0 209 3 9 0 210 3 13 0 211 3 17 0 212 3 21 0 213 3 25 0 214 3 29 0 215 3 33 0 216 3 9 1 110 1 165 1 115 1 169 1 126] 
#[0 2 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 113 0 2 2 222 0 3 3 121 0 4 2 222 0 5 3 117 0 6 0 238 0 7 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 2 222 0 14 2 222 0 16 3 121 0 18 3 121 0 20 2 222 0 21 2 222 0 23 2 222 0 27 2 222 0 30 2 222 0 31 2 222 0 33 3 121 0 35 2 222 0 36 2 222 0 52 2 222 0 57 3 121 0 58 2 222 0 59 3 121 0 64 2 222 0 65 3 121 0 71 2 222 0 74 2 222 0 77 3 121 0 80 2 222 0 87 2 222 0 89 2 222 0 96 2 222 0 97 2 222 0 103 3 121 0 107 3 121 0 108 2 222 0 111 2 222 0 114 2 222 0 117 2 222 0 122 2 222 0 126 2 222 0 127 3 121 0 128 2 222 0 129 2 222 0 130 1 47 0 131 3 121 0 132 3 121 0 134 3 121 0 135 2 222 0 136 3 121 1 120 2 222 1 127] 
#[1 2 226 0 2 2 226 0 3 2 226 0 5 6 253 0 6 2 226 0 9 2 226 0 14 2 226 0 16 2 226 0 21 2 226 0 23 2 226 0 24 2 226 0 26 2 226 0 27 2 226 0 28 2 226 0 30 2 226 0 31 2 226 0 32 2 226 0 33 2 226 0 36 2 226 0 39 2 226 0 40 2 226 0 41 2 226 0 48 2 226 0 49 2 226 0 52 2 226 0 57 2 226 0 59 2 226 0 61 2 226 0 65 2 226 0 74 2 226 0 77 2 226 0 78 2 226 0 87 2 226 0 88 2 226 0 89 2 226 0 91 2 226 0 92 2 226 0 93 2 226 0 94 2 226 0 96 2 226 0 97 2 226 0 103 2 226 0 111 2 226 0 112 2 226 0 114 2 226 0 117 2 226 0 120 2 226 0 122 2 226 0 126 2 226 0 127 2 226 0 129 2 226 0 130 2 226 0 131 2 226 0 136 2 226 0 138 2 226 1 127] 
#[0 2 230 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 7 13 0 207 1 137 0 208 1 141 0 209 7 5 0 210 7 9 0 244 7 13 0 245 7 5 1 110 1 165 1 115 1 169 1 126] 
#[0 7 17 0 77] 
#[0 7 21 0 40] 
#[1 2 234 0 3 2 234 0 24 2 234 0 40 2 234 0 88 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 112 7 25 0 225] 
#[1 2 238 0 3 2 238 0 24 7 29 0 26 3 229 0 27 7 33 0 28 7 37 0 32 2 238 0 40 7 41 0 52 2 238 0 88 7 45 0 89 7 49 0 91 2 238 0 92 2 238 0 93 2 238 0 94 2 238 0 112 3 249 0 114 3 253 0 117 4 1 0 122 1 173 0 129 5 229 0 138 7 61 0 170 7 61 0 176 7 61 0 235 7 61 0 236 7 69 0 237 7 61 0 238 7 61 0 239 7 61 0 251 7 61 0 252 7 61 0 253 7 61 0 254 7 61 0 255 7 61 1 0 7 61 1 2 7 61 1 3 7 61 1 4 7 61 1 6 7 121 1 7 7 61 1 8 7 129 1 29 7 61 1 37 7 137 1 38 7 61 1 40 7 145 1 41 7 61 1 44 4 25 1 45 7 61 1 46 4 33 1 47 7 61 1 49 7 61 1 50 7 61 1 52 4 45 1 53 7 61 1 54 4 53 1 55 7 61 1 57 7 61 1 58 7 61 1 60 7 185 1 61 7 61 1 66 4 69 1 67] 
#[0 2 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 113 0 2 2 246 0 3 3 121 0 4 2 246 0 5 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[1 7 193 0 3 7 197 0 5] 
#[0 2 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 3 113 0 2 2 254 0 3 3 121 0 4 2 254 0 5 3 117 0 6 2 254 0 7 3 121 0 8 2 254 0 9 1 51 0 11 1 55 0 12 1 59 0 13 2 254 0 14 2 254 0 16 3 121 0 18 3 121 0 20 2 254 0 21 2 254 0 23 2 254 0 27 2 254 0 30 2 254 0 31 2 254 0 33 3 121 0 35 2 254 0 36 2 254 0 52 2 254 0 57 1 63 0 58 2 254 0 59 3 121 0 64 2 254 0 65 3 121 0 71 2 254 0 74 2 254 0 77 3 121 0 80 2 254 0 87 2 254 0 89 2 254 0 96 2 254 0 97 2 254 0 103 3 121 0 107 3 121 0 108 2 254 0 111 2 254 0 114 2 254 0 117 2 254 0 122 2 254 0 126 2 254 0 127 3 121 0 128 2 254 0 129 2 254 0 130 1 67 0 131 1 71 0 132 3 121 0 134 3 121 0 135 2 254 0 136 3 121 1 120 2 254 1 127] 
#[1 3 2 0 3 3 2 0 5 3 2 0 14 3 2 0 21 3 2 0 23 3 2 0 27 3 2 0 30 3 2 0 31 3 2 0 33 3 2 0 36 3 2 0 52 3 2 0 57 3 2 0 59 3 2 0 65 3 2 0 74 3 2 0 77 3 2 0 87 3 2 0 89 3 2 0 96 3 2 0 97 3 2 0 103 3 2 0 111 3 2 0 114 3 2 0 117 3 2 0 122 3 2 0 126 3 2 0 127 3 129 0 129 3 2 0 130 3 2 0 131 3 2 0 136 3 2 1 127] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 7 201 0 130 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[0 3 6 0 26 0 28 0 32 0 52 0 89 0 138] 
#[0 3 10 0 5 0 131] 
#[1 7 205 0 5 7 209 0 131] 
#[1 7 213 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 7 217 0 26 0 18 0 31 8 21 0 34 1 45 0 46 1 49 0 52 8 21 0 63 1 53 0 75 7 229 0 76 1 129 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 7 233 0 181 7 237 0 182 7 241 0 185 7 245 0 186 1 105 0 189 7 249 0 191 7 253 0 192 7 245 0 194 7 241 0 197 7 245 0 198 7 245 0 199 1 129 0 201 7 245 0 207 1 137 0 208 1 141 0 209 1 145 0 210 7 241 0 218 7 241 0 219 7 241 0 222 1 149 0 240 7 245 0 241 7 245 0 242 7 241 0 246 8 21 0 247 1 145 1 110 1 165 1 115 1 169 1 126] 
#[0 8 25 0 14] 
#[0 3 14 0 5 0 6 0 31 0 58 0 87 0 136] 
#[0 3 18 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 121 0 122] 
#[0 3 22 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 121 0 122] 
#[0 3 26 0 40 0 48 0 56 0 61 0 63 1 127] 
#[0 3 30 0 5 0 136] 
#[0 3 34 0 5 0 136] 
#[0 3 38 1 127] 
#[0 8 29 0 138] 
#[0 3 42 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 8 33 0 6] 
#[1 1 189 0 138 8 37 0 167] 
#[0 3 46 0 29] 
#[1 3 177 0 5 8 41 0 136] 
#[0 8 45 0 6] 
#[0 3 50 1 127] 
#[1 3 229 0 27 3 54 0 40 3 54 0 48 3 233 0 52 3 54 0 56 3 54 0 61 3 241 0 89 3 245 0 103 3 249 0 114 3 253 0 117 4 1 0 122 8 49 0 169 8 49 0 170 8 49 0 173 8 49 0 176 8 49 0 255 8 49 1 2 8 49 1 44 4 25 1 45 8 49 1 46 4 33 1 47 8 49 1 52 4 45 1 53 8 49 1 54 4 53 1 55 8 49 1 66 4 69 1 67] 
#[1 3 58 0 23 3 58 0 26 3 58 0 27 3 58 0 28 3 58 0 32 3 58 0 40 3 58 0 43 3 58 0 48 3 58 0 52 3 58 0 61 3 58 0 89 3 58 0 103 3 58 0 114 3 58 0 117 3 58 0 122 8 77 1 34] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 8 81 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 3 62 0 40 8 85 0 48 8 89 1 122] 
#[1 4 129 0 9 1 54 0 14 8 93 1 5] 
#[1 3 66 0 3 3 66 0 21 3 66 0 23 3 66 0 24 3 66 0 26 3 66 0 27 3 66 0 28 3 66 0 32 3 66 0 40 3 66 0 43 3 66 0 48 3 66 0 52 3 66 0 56 3 66 0 61 3 66 0 65 3 66 0 88 3 66 0 89 3 66 0 91 3 66 0 92 3 66 0 93 3 66 0 94 3 66 0 103 3 66 0 112 3 66 0 114 3 66 0 117 3 66 0 122 3 66 0 129 5 213 0 138 8 97 0 172] 
#[0 3 70 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 33 0 2 0 54 0 9 0 54 0 136 8 101 0 193] 
#[0 3 74 0 3 0 5 0 9 0 130 0 136] 
#[1 8 105 0 5 8 109 0 136] 
#[1 2 33 0 2 0 54 0 136 8 113 0 193] 
#[0 8 117 0 14] 
#[1 3 78 0 21 3 78 0 23 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 32 3 78 0 40 3 78 0 43 3 78 0 48 3 78 0 52 3 78 0 56 3 78 0 61 3 78 0 65 3 78 0 89 3 78 0 103 3 78 0 114 3 78 0 117 3 78 0 122 5 241 0 138 8 121 0 175] 
#[0 3 82 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[1 8 105 0 5 8 125 0 9] 
#[1 3 86 0 3 3 86 0 21 3 86 0 23 3 86 0 24 3 86 0 26 3 86 0 27 3 86 0 28 3 86 0 32 3 86 0 40 3 86 0 43 3 86 0 48 3 86 0 52 3 86 0 56 3 86 0 61 3 86 0 65 3 86 0 88 3 86 0 89 3 86 0 91 3 86 0 92 3 86 0 93 3 86 0 94 3 86 0 103 3 86 0 112 3 86 0 114 3 86 0 117 3 86 0 122 3 86 0 129 5 229 0 138 5 253 1 29 8 129 1 69] 
#[0 3 90 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 3 94 0 3 3 94 0 21 3 94 0 23 3 94 0 24 3 94 0 26 3 94 0 27 3 94 0 28 3 94 0 32 3 94 0 40 3 94 0 43 3 94 0 48 3 94 0 52 3 94 0 56 3 94 0 61 3 94 0 65 3 94 0 88 3 94 0 89 3 94 0 91 3 94 0 92 3 94 0 93 3 94 0 94 3 94 0 103 3 94 0 112 3 94 0 114 3 94 0 117 3 94 0 122 1 173 0 129 1 177 0 138 8 133 0 178 1 185 0 237] 
#[0 3 98 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 3 102 0 3 3 102 0 21 3 102 0 23 3 102 0 24 3 102 0 26 3 102 0 27 3 102 0 28 3 102 0 32 3 102 0 40 3 102 0 43 3 102 0 48 3 102 0 52 3 102 0 56 3 102 0 61 3 102 0 65 3 102 0 88 3 102 0 89 3 102 0 91 3 102 0 92 3 102 0 93 3 102 0 94 3 102 0 103 3 102 0 112 3 102 0 114 3 102 0 117 3 102 0 122 3 102 0 129 5 229 0 138 5 253 1 29 8 129 1 69] 
#[0 3 106 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 8 137 0 136 8 141 0 138 8 145 0 142] 
#[0 8 149 0 136] 
#[1 3 110 0 3 3 110 0 17 3 110 0 21 3 110 0 22 3 110 0 23 3 110 0 24 3 110 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 31 3 110 0 32 3 110 0 33 3 110 0 38 3 110 0 40 3 110 0 42 3 110 0 43 3 110 0 44 3 110 0 45 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 56 3 110 0 61 3 110 0 62 3 110 0 65 3 110 0 67 3 110 0 70 3 110 0 73 3 110 0 82 3 110 0 83 3 110 0 86 3 110 0 87 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 99 3 110 0 100 3 110 0 103 3 110 0 104 3 110 0 109 3 110 0 110 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 119 3 110 0 122 3 110 0 123 3 110 0 129 3 110 0 138 8 153 1 20] 
#[0 3 114 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 3 110 0 3 3 110 0 17 3 110 0 21 3 110 0 22 3 110 0 23 3 110 0 24 3 110 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 31 3 110 0 32 3 110 0 33 3 110 0 38 3 110 0 40 3 110 0 42 3 110 0 43 3 110 0 44 3 110 0 45 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 56 3 110 0 61 3 110 0 62 3 110 0 65 3 110 0 67 3 110 0 70 3 110 0 73 3 110 0 82 3 110 0 83 3 110 0 86 3 110 0 87 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 99 3 110 0 100 3 110 0 103 3 110 0 104 3 110 0 109 3 110 0 110 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 119 3 110 0 122 3 110 0 123 3 110 0 129 3 110 0 138 8 157 1 20] 
#[0 3 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 3 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136] 
#[1 3 113 0 2 3 121 0 4 3 126 0 5 3 117 0 6 8 161 0 7 3 121 0 8 3 126 0 9 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[1 8 165 0 39 3 130 0 40 8 169 1 92] 
#[1 1 226 0 39 1 226 0 40 8 173 0 136 8 177 1 85] 
#[0 3 134 0 39 0 40 0 136] 
#[0 8 181 0 9] 
#[0 8 185 0 5] 
#[1 3 138 0 5 3 142 0 9] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 8 197 0 37 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 8 197 0 115 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 8 197 1 97 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 8 201 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[0 3 146 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 103 0 114 0 117 0 122 0 136] 
#[1 4 125 0 27 4 125 0 81 4 125 0 122 1 50 0 138 8 205 1 28 4 125 1 31] 
#[1 3 150 0 3 8 105 0 5 8 209 0 9 3 150 0 130 3 150 0 136] 
#[1 3 154 0 14 3 125 0 16 3 154 0 21 3 154 0 23 3 154 0 27 3 154 0 30 3 154 0 33 3 154 0 36 3 154 0 52 3 154 0 57 3 154 0 59 3 154 0 65 3 154 0 74 3 154 0 77 3 154 0 89 3 154 0 96 3 154 0 97 3 154 0 103 3 154 0 111 3 154 0 114 3 154 0 117 3 154 0 122 3 154 0 126 3 154 0 127 3 129 0 129 3 154 0 136] 
#[1 8 213 0 39 3 158 0 40 3 158 0 41 3 158 0 48 3 158 0 49 3 158 0 61 3 158 0 78 3 158 0 120 3 158 0 136 3 158 1 127] 
#[0 3 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 8 217 0 3 6 189 0 5] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 8 221 1 102 8 221 1 103 0 253 1 104 8 221 1 105 1 5 1 106 8 221 1 107 8 221 1 108 8 221 1 109 8 221 1 110 1 25 1 115 8 221 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 8 225 1 102 8 225 1 103 0 253 1 104 8 225 1 105 1 5 1 106 8 225 1 107 8 225 1 108 8 225 1 109 8 225 1 110 1 25 1 115 8 225 1 116 1 33 1 126] 
#[0 3 166 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 3 170 0 39 3 170 0 40 3 170 0 41 3 170 0 48 3 170 0 49 2 245 0 58 3 170 0 61 2 245 0 64 2 245 0 71 3 170 0 78 2 245 0 80 2 245 0 107 2 245 0 108 3 170 0 120 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 3 170 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120 3 170 1 127] 
#[1 3 69 0 138 8 229 0 233] 
#[1 8 233 0 39 3 174 0 40 3 174 0 49 4 85 0 136 8 237 1 82] 
#[1 8 233 0 39 3 174 0 40 3 174 0 49 6 133 0 78 8 241 1 81 8 245 1 82] 
#[0 3 178 0 39 0 40 0 49 0 78] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 8 249 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[0 8 253 0 40] 
#[0 3 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 141 0 2 2 245 0 4 3 186 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 3 186 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[0 3 190 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 2 141 0 2 2 245 0 4 3 194 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 3 194 0 130 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[0 3 198 0 5 0 130] 
#[1 1 37 0 2 0 18 0 5 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 129 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 0 18 0 131 1 77 0 134 1 81 0 135 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 9 1 0 186 1 105 0 189 1 149 0 191 1 149 0 192 9 1 0 194 9 1 0 198 9 1 0 199 1 129 0 201 9 1 0 207 1 137 0 208 1 141 0 209 1 145 0 210 1 149 0 240 9 1 0 241 9 1 0 242 1 145 1 110 1 165 1 115 1 169 1 126] 
#[0 3 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 113 0 114 0 115 0 117 0 120 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 3 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 4 221 1 102 4 221 1 103 0 253 1 104 4 221 1 105 1 5 1 106 4 221 1 107 4 221 1 108 4 221 1 109 4 221 1 110 1 25 1 115 4 221 1 116 9 5 1 118 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 9 9 1 102 9 9 1 103 0 253 1 104 9 9 1 105 1 5 1 106 9 9 1 107 9 9 1 108 9 9 1 109 9 9 1 110 1 25 1 115 9 9 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 9 13 1 102 9 13 1 103 0 253 1 104 9 13 1 105 1 5 1 106 9 13 1 107 9 13 1 108 9 13 1 109 9 13 1 110 1 25 1 115 9 13 1 116 1 33 1 126] 
#[0 3 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 3 113 0 2 3 214 0 3 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 214 0 136 3 121 1 120] 
#[1 3 113 0 2 3 218 0 3 3 121 0 4 3 218 0 5 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[0 3 222 0 3 0 5] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[0 5 1 0 9] 
#[0 3 230 0 3 0 136] 
#[1 3 125 0 16 5 37 0 77 3 129 0 129 1 246 0 136 9 17 1 1] 
#[0 3 234 0 136] 
#[1 3 110 0 3 3 110 0 5 3 110 0 14 3 110 0 16 3 110 0 17 3 110 0 21 3 110 0 22 3 110 0 23 3 110 0 24 3 110 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 30 3 110 0 31 3 110 0 32 3 110 0 33 3 110 0 36 3 110 0 38 3 110 0 40 3 110 0 42 3 110 0 43 3 110 0 44 3 110 0 45 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 56 3 110 0 57 3 110 0 59 3 110 0 61 3 110 0 62 3 110 0 65 3 110 0 67 3 110 0 70 3 110 0 73 3 110 0 74 3 110 0 77 3 110 0 82 3 110 0 83 3 110 0 86 3 110 0 87 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 96 3 110 0 97 3 110 0 99 3 110 0 100 3 110 0 103 3 110 0 104 3 110 0 109 3 110 0 110 3 110 0 111 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 119 3 110 0 122 3 110 0 123 3 110 0 126 3 110 0 127 3 110 0 129 3 110 0 130 3 110 0 131 3 110 0 136 3 110 0 138 9 21 1 20 3 110 1 127] 
#[1 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 9 25 0 200 5 81 0 224 5 85 0 234] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 1 75 0 5 0 190 0 6 0 190 0 8 5 1 0 9 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 18 0 190 0 20 0 190 0 35 0 190 0 58 0 190 0 64 0 190 0 71 0 190 0 80 0 190 0 107 0 190 0 108 0 190 0 128 0 190 0 131 0 190 0 132 0 190 0 134 0 190 0 135] 
#[0 9 33 0 3] 
#[0 9 37 0 138] 
#[0 3 238 0 5 0 130] 
#[1 3 113 0 2 3 121 0 4 3 242 0 5 3 117 0 6 0 238 0 7 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 242 0 130 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[1 9 41 0 5 9 45 0 130] 
#[0 3 246 0 5 0 130] 
#[1 1 37 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 21 0 18 0 23 1 79 0 27 0 18 0 30 0 18 0 31 0 18 0 33 0 18 0 36 1 45 0 46 0 15 0 52 0 18 0 57 0 18 0 59 0 18 0 65 0 18 0 74 1 53 0 75 0 18 0 77 1 129 0 85 0 18 0 87 0 19 0 89 0 18 0 96 0 18 0 97 0 7 0 98 0 18 0 103 1 69 0 106 0 18 0 111 0 18 0 114 0 23 0 117 0 18 0 122 0 18 0 126 0 18 0 127 0 153 0 129 0 18 0 130 0 18 0 131 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 9 53 0 186 1 105 0 189 9 53 0 191 9 53 0 192 9 53 0 194 9 53 0 198 9 53 0 199 1 129 0 201 9 53 0 207 1 137 0 208 1 141 0 209 1 145 0 210 9 53 0 240 9 53 0 241 9 53 0 242 1 145 1 110 1 165 1 115 1 169 1 126 0 18 1 127] 
#[0 3 250 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 3 254 0 3 9 57 0 24 3 254 0 40 9 61 0 88 9 65 0 92 9 69 0 93 9 73 0 94 9 77 0 112 9 81 0 202 9 85 0 226 9 85 0 227 9 85 0 228 9 85 0 229 9 85 0 230] 
#[1 9 105 0 28 9 109 0 32 3 233 0 52 9 113 0 79 3 241 0 89 7 49 0 91 3 249 0 114 4 1 0 122 9 117 1 7 9 121 1 45 9 125 1 47 9 129 1 53 9 133 1 55 9 137 1 67] 
#[1 3 69 0 138 9 141 0 233] 
#[1 3 69 0 138 9 145 0 233] 
#[1 3 69 0 138 9 149 0 233] 
#[1 3 69 0 138 9 153 0 233] 
#[0 9 157 0 138] 
#[0 4 2 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 6 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 10 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 14 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 9 161 0 26 7 33 0 28 7 37 0 32 3 233 0 52 3 241 0 89 9 165 0 253 9 169 0 254 9 173 0 255 9 177 1 0 9 181 1 2 9 185 1 3 9 189 1 4 9 165 1 37 7 137 1 38 9 169 1 40 7 145 1 41 9 173 1 44 4 25 1 45 9 173 1 46 4 33 1 47 9 177 1 49 9 177 1 50 9 181 1 52 4 45 1 53 9 181 1 54 4 53 1 55 9 185 1 57 9 185 1 58 9 189 1 60 7 185 1 61] 
#[0 4 18 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 22 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 26 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 8 105 0 5 9 193 0 9] 
#[0 4 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 78 0 3 4 78 0 24 4 78 0 26 4 78 0 27 4 78 0 28 4 78 0 32 4 78 0 40 6 25 0 44 6 29 0 51 4 78 0 52 4 78 0 88 4 78 0 89 4 78 0 91 4 78 0 92 4 78 0 93 4 78 0 94 4 78 0 112 4 78 0 114 4 78 0 117 4 78 0 122 4 78 0 129 4 78 0 138 9 197 1 24] 
#[0 4 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 86 0 3 4 86 0 24 4 86 0 26 4 86 0 27 4 86 0 28 4 86 0 32 4 86 0 40 6 25 0 44 6 29 0 51 4 86 0 52 4 86 0 88 4 86 0 89 4 86 0 91 4 86 0 92 4 86 0 93 4 86 0 94 4 86 0 112 4 86 0 114 4 86 0 117 4 86 0 122 4 86 0 129 4 86 0 138 9 201 1 24] 
#[0 4 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 122 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 126 0 3 4 126 0 24 4 126 0 26 4 126 0 27 4 126 0 28 4 126 0 32 4 126 0 40 6 25 0 44 6 29 0 51 4 126 0 52 4 126 0 88 4 126 0 89 4 126 0 91 4 126 0 92 4 126 0 93 4 126 0 94 4 126 0 112 4 126 0 114 4 126 0 117 4 126 0 122 4 126 0 129 4 126 0 138 9 205 1 24] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 4 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 103 0 107 0 108 0 111 0 114 0 117 0 122 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 134 0 135 0 136 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 9 209 0 210 9 209 1 110 1 165 1 115 1 169 1 126] 
#[0 4 138 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 9 213 0 138] 
#[0 4 142 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 103 0 111 0 112 0 114 0 117 0 120 0 122 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 1 37 0 2 0 178 0 3 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 9 217 0 138 3 5 0 139 1 141 0 140 1 165 0 142 1 97 0 146 9 221 0 183 9 225 0 184 1 141 0 209 3 9 0 210 3 13 0 211 3 17 0 212 3 21 0 213 3 25 0 214 3 29 0 215 3 33 0 216 3 9 1 110 1 165 1 115 1 169 1 126] 
#[1 4 146 0 2 4 146 0 17 4 146 0 26 4 146 0 27 4 146 0 28 4 146 0 31 4 146 0 32 4 146 0 40 4 146 0 52 4 146 0 54 9 229 0 77 4 146 0 87 4 146 0 88 4 146 0 89 4 146 0 91 4 146 0 92 4 146 0 93 4 146 0 94 4 146 0 105 4 146 0 112 4 146 0 114 4 146 0 117 4 146 0 122 4 146 0 129 4 146 0 136 4 146 0 138 9 233 0 220] 
#[0 4 150 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 129 0 136] 
#[0 4 154 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 129 0 136] 
#[1 9 237 0 2 4 158 0 26 4 158 0 27 4 158 0 28 4 158 0 32 4 158 0 40 4 158 0 52 4 158 0 88 4 158 0 89 4 158 0 91 4 158 0 92 4 158 0 93 4 158 0 94 4 158 0 112 4 158 0 114 4 158 0 117 4 158 0 122 4 158 0 129 4 158 0 138 9 241 0 231] 
#[0 4 162 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[0 9 245 0 136] 
#[1 9 249 0 31 9 249 0 87 1 14 0 136 9 249 0 190] 
#[1 0 202 0 16 9 253 0 31 9 253 0 87 0 202 0 129 1 14 0 136 9 253 0 190] 
#[1 4 166 0 3 0 210 0 16 4 166 0 21 4 166 0 23 4 166 0 24 4 166 0 26 4 166 0 27 4 166 0 28 4 166 0 32 4 166 0 40 4 166 0 43 4 166 0 48 4 166 0 52 4 166 0 56 4 166 0 61 4 166 0 65 4 166 0 88 4 166 0 89 4 166 0 91 4 166 0 92 4 166 0 93 4 166 0 94 4 166 0 103 4 166 0 112 4 166 0 114 4 166 0 117 4 166 0 122 1 83 0 129 4 166 0 138 4 166 1 127] 
#[1 4 170 0 3 0 214 0 16 4 170 0 21 4 170 0 23 4 170 0 24 4 170 0 26 4 170 0 27 4 170 0 28 4 170 0 32 4 170 0 40 4 170 0 43 4 170 0 48 4 170 0 52 4 170 0 56 4 170 0 61 4 170 0 65 4 170 0 88 4 170 0 89 4 170 0 91 4 170 0 92 4 170 0 93 4 170 0 94 4 170 0 103 4 170 0 112 4 170 0 114 4 170 0 117 4 170 0 122 1 87 0 129 4 170 0 138 4 170 1 127] 
#[0 4 174 0 31 0 87 0 136] 
#[0 4 178 0 31 0 87 0 136] 
#[0 4 182 0 31 0 87 0 136] 
#[0 4 186 0 31 0 87 0 136] 
#[0 4 190 0 31 0 87 0 136] 
#[1 9 237 0 2 4 158 0 26 4 194 0 31 4 158 0 40 4 158 0 52 4 194 0 87 4 158 0 89 4 158 0 91 4 158 0 129 4 194 0 136 10 1 0 231] 
#[1 7 213 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 7 217 0 26 0 18 0 31 8 21 0 34 1 45 0 46 1 49 0 52 8 21 0 63 1 53 0 75 7 229 0 76 1 129 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 10 5 0 181 7 237 0 182 7 241 0 185 7 245 0 186 1 105 0 189 7 249 0 191 7 253 0 192 7 245 0 194 7 241 0 197 7 245 0 198 7 245 0 199 1 129 0 201 7 245 0 207 1 137 0 208 1 141 0 209 1 145 0 210 7 241 0 218 7 241 0 219 7 241 0 222 1 149 0 240 7 245 0 241 7 245 0 242 7 241 0 246 8 21 0 247 1 145 1 110 1 165 1 115 1 169 1 126] 
#[0 10 9 0 136] 
#[0 4 198 1 127] 
#[1 4 202 0 5 3 149 0 6 4 202 0 136] 
#[0 4 206 0 40] 
#[0 4 210 1 127] 
#[0 4 214 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 218 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 222 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 226 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 230 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 234 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 4 238 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 10 13 0 23 9 161 0 26 3 229 0 27 7 33 0 28 7 37 0 32 4 242 0 40 10 17 0 43 4 242 0 48 3 233 0 52 4 242 0 61 3 241 0 89 3 245 0 103 3 249 0 114 3 253 0 117 4 1 0 122 10 37 0 170 10 37 0 173 10 37 0 176 10 33 1 33 10 37 1 35 10 37 1 36 10 45 1 37 10 49 1 38 10 37 1 39 10 57 1 40 10 61 1 41 10 37 1 43 4 21 1 44 4 25 1 45 4 29 1 46 4 33 1 47 10 37 1 48 10 73 1 49 10 77 1 50 10 37 1 51 4 41 1 52 4 45 1 53 4 49 1 54 4 53 1 55 10 37 1 56 10 89 1 57 10 93 1 58 10 37 1 59 10 101 1 60 10 105 1 61 10 37 1 66 4 69 1 67 10 37 1 123] 
#[1 4 246 0 40 4 246 0 48 4 85 0 136] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 10 117 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 5 189 0 40 10 121 1 125] 
#[0 10 125 0 14] 
#[0 4 250 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 4 129 0 9 1 54 0 136 10 129 1 5] 
#[0 10 133 0 138] 
#[0 4 254 0 21 0 23 0 27 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[0 10 137 0 136] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 10 141 0 210 10 141 1 110 1 165 1 115 1 169 1 126] 
#[0 5 2 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 31 1 45 0 46 1 49 0 52 1 53 0 75 1 129 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 10 145 0 186 1 105 0 189 10 145 0 191 10 145 0 192 10 145 0 194 10 145 0 198 10 145 0 199 1 129 0 201 10 145 0 207 1 137 0 208 1 141 0 209 1 145 0 210 10 145 0 240 10 145 0 241 10 145 0 242 1 145 1 110 1 165 1 115 1 169 1 126] 
#[0 5 6 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 10 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 14 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 10 149 0 72 10 153 0 136] 
#[1 10 157 0 72 10 161 0 136] 
#[0 5 18 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 5 22 0 3 11 17 0 17 5 22 0 21 11 17 0 22 5 22 0 23 5 22 0 24 11 17 0 25 5 22 0 26 5 22 0 27 5 22 0 28 11 17 0 31 5 22 0 32 10 181 0 33 11 17 0 38 5 22 0 40 11 17 0 42 5 22 0 43 6 25 0 44 11 17 0 45 11 17 0 47 5 22 0 48 6 29 0 51 5 22 0 52 5 22 0 56 5 22 0 61 11 17 0 62 5 22 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 5 22 0 88 5 22 0 89 5 22 0 91 5 22 0 92 5 22 0 93 5 22 0 94 11 17 0 99 11 17 0 100 5 22 0 103 11 17 0 104 11 17 0 109 11 17 0 110 5 22 0 112 5 22 0 114 5 22 0 117 11 17 0 119 5 22 0 122 11 17 0 123 5 22 0 129 5 22 0 138 11 5 1 22 11 5 1 23 11 5 1 24 11 17 1 25] 
#[1 5 26 0 3 11 17 0 17 5 26 0 21 11 17 0 22 5 26 0 23 5 26 0 24 11 17 0 25 5 26 0 26 5 26 0 27 5 26 0 28 11 17 0 31 5 26 0 32 10 181 0 33 11 17 0 38 5 26 0 40 11 17 0 42 5 26 0 43 6 25 0 44 11 17 0 45 11 17 0 47 5 26 0 48 6 29 0 51 5 26 0 52 5 26 0 56 5 26 0 61 11 17 0 62 5 26 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 5 26 0 88 5 26 0 89 5 26 0 91 5 26 0 92 5 26 0 93 5 26 0 94 11 17 0 99 11 17 0 100 5 26 0 103 11 17 0 104 11 17 0 109 11 17 0 110 5 26 0 112 5 26 0 114 5 26 0 117 11 17 0 119 5 26 0 122 11 17 0 123 5 26 0 129 5 26 0 138 11 5 1 22 11 5 1 23 11 5 1 24 11 17 1 25] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 11 21 0 210 11 21 1 110 1 165 1 115 1 169 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 25 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[0 11 29 0 40] 
#[1 1 37 0 2 1 41 0 15 2 210 0 39 2 210 0 40 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 6 53 0 210 11 33 1 88 6 69 1 89 6 73 1 90 6 77 1 91 6 53 1 110 1 165 1 115 1 169 1 126] 
#[0 5 30 0 39 0 40] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 37 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 11 37 1 99 11 37 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 6 53 0 210 11 41 1 91 6 53 1 110 1 165 1 115 1 169 1 126] 
#[0 5 34 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[0 5 38 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 129 0 134 0 135 0 138 0 140 0 142 0 146 1 126] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 45 1 102 11 45 1 103 0 253 1 104 11 45 1 105 1 5 1 106 11 45 1 107 11 45 1 108 11 45 1 109 11 45 1 110 1 25 1 115 11 45 1 116 1 33 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 49 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 11 49 1 99 11 49 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[0 5 42 0 3 0 130 0 136] 
#[1 1 37 0 2 0 18 0 3 0 18 0 6 0 18 0 11 0 18 0 14 1 41 0 15 0 18 0 16 0 22 0 19 1 45 0 46 1 49 0 52 1 53 0 75 1 129 0 85 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 0 18 0 130 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 11 53 0 186 1 105 0 189 11 53 0 191 11 53 0 192 11 53 0 194 11 53 0 198 11 53 0 199 1 129 0 201 11 53 0 207 1 137 0 208 1 141 0 209 1 145 0 210 11 53 0 240 11 53 0 241 11 53 0 242 1 145 1 110 1 165 1 115 1 169 1 126] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 57 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 11 57 1 99 11 57 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[0 5 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 11 61 0 130 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 11 65 0 130 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 4 129 0 9 1 54 0 36 11 69 1 5] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 73 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[0 5 50 0 40 0 49] 
#[0 5 54 0 39 0 40 0 49 0 78] 
#[0 5 58 0 40 0 49] 
#[1 5 62 0 40 4 85 0 136] 
#[0 5 66 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 5 70 0 5 0 202 0 16 0 202 0 129 5 70 0 131] 
#[1 5 74 0 3 5 74 0 5 6 193 0 9] 
#[1 2 141 0 2 5 78 0 3 2 245 0 4 5 78 0 5 2 149 0 6 2 245 0 8 5 78 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 2 141 0 2 2 245 0 4 5 82 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 5 82 0 130 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[0 11 77 0 136] 
#[1 5 86 0 3 5 86 0 5 5 86 0 14 5 86 0 16 11 17 0 17 5 86 0 21 11 17 0 22 5 86 0 23 5 86 0 24 11 17 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 30 1 91 0 31 5 86 0 32 1 95 0 33 5 86 0 36 11 17 0 38 5 86 0 40 11 17 0 42 5 86 0 43 6 25 0 44 11 17 0 45 11 17 0 47 5 86 0 48 6 29 0 51 5 86 0 52 5 86 0 56 5 86 0 57 5 86 0 59 5 86 0 61 11 17 0 62 5 86 0 65 11 17 0 67 10 209 0 70 11 17 0 73 5 86 0 74 5 86 0 77 11 17 0 82 11 17 0 83 11 17 0 86 1 99 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 96 5 86 0 97 11 17 0 99 11 17 0 100 5 86 0 103 11 17 0 104 11 17 0 109 11 17 0 110 5 86 0 111 5 86 0 112 5 86 0 114 5 86 0 117 11 17 0 119 5 86 0 122 11 17 0 123 5 86 0 126 5 86 0 127 5 86 0 129 5 86 0 130 5 86 0 131 5 86 0 136 5 86 0 138 11 5 1 22 11 5 1 23 11 5 1 24 11 17 1 25 5 86 1 127] 
#[0 11 81 0 40] 
#[1 11 85 0 139 11 89 0 196] 
#[0 5 90 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 5 94 0 2 0 3 0 5 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 103 0 111 0 112 0 114 0 117 0 120 0 122 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 11 93 0 207 1 137 0 208 1 141 0 209 7 5 0 210 11 93 0 245 7 5 1 110 1 165 1 115 1 169 1 126] 
#[0 5 98 0 77] 
#[0 5 102 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[1 5 106 0 3 5 106 0 5 5 106 0 14 3 125 0 16 5 106 0 21 5 106 0 23 5 106 0 27 5 106 0 30 5 106 0 31 5 106 0 33 5 106 0 36 5 106 0 52 5 106 0 57 5 106 0 59 5 106 0 65 5 106 0 74 5 106 0 77 5 106 0 87 5 106 0 89 5 106 0 96 5 106 0 97 5 106 0 103 5 106 0 111 5 106 0 114 5 106 0 117 5 106 0 122 5 106 0 126 5 106 0 127 3 129 0 129 5 106 0 130 5 106 0 131 5 106 0 136 5 106 1 127] 
#[0 11 97 0 138] 
#[1 2 18 0 3 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 11 101 0 234] 
#[1 2 18 0 3 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 11 105 0 234] 
#[1 2 18 0 3 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 11 109 0 234] 
#[1 2 18 0 3 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 11 113 0 234] 
#[1 11 117 0 88 11 121 0 92] 
#[0 5 110 0 3 0 40] 
#[0 5 114 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 118 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 122 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 126 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[0 5 130 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 112] 
#[1 3 69 0 138 11 125 0 233] 
#[1 3 69 0 138 11 129 0 233] 
#[1 3 69 0 138 11 133 0 233] 
#[0 5 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 138 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 5 142 0 3 5 142 0 21 5 142 0 23 5 142 0 24 5 142 0 26 5 142 0 27 5 142 0 28 5 142 0 32 5 142 0 40 6 25 0 44 6 29 0 51 5 142 0 52 5 142 0 65 5 142 0 88 5 142 0 89 5 142 0 91 5 142 0 92 5 142 0 93 5 142 0 94 5 142 0 103 5 142 0 112 5 142 0 114 5 142 0 117 5 142 0 122 5 142 0 129 5 142 0 138 6 33 1 24] 
#[0 5 146 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 5 150 0 3 5 150 0 21 5 150 0 23 5 150 0 24 5 150 0 26 5 150 0 27 5 150 0 28 5 150 0 32 5 150 0 40 6 25 0 44 6 29 0 51 5 150 0 52 5 150 0 65 5 150 0 88 5 150 0 89 5 150 0 91 5 150 0 92 5 150 0 93 5 150 0 94 5 150 0 103 5 150 0 112 5 150 0 114 5 150 0 117 5 150 0 122 5 150 0 129 5 150 0 138 6 41 1 24] 
#[0 5 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 33 0 2 0 54 0 136 11 137 0 193] 
#[1 11 141 0 2 5 158 0 136 11 145 1 42] 
#[1 2 33 0 2 0 54 0 9 11 149 0 14 0 54 0 136 8 101 0 193] 
#[1 2 33 0 2 11 153 0 14 0 54 0 136 8 113 0 193] 
#[1 5 162 0 9 5 162 0 30 5 162 0 33 5 162 0 57 5 162 0 59 5 162 0 74 5 162 0 96 5 162 0 97 5 162 0 111 5 162 0 126 5 162 0 127 11 157 0 129 5 162 0 136 11 161 1 10] 
#[1 9 105 0 28 9 109 0 32 3 233 0 52 9 113 0 79 3 241 0 89 9 121 1 45 9 125 1 47 9 129 1 53 9 133 1 55] 
#[0 5 166 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 174 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 178 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 186 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 5 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 37 0 2 0 18 0 6 0 18 0 11 1 41 0 15 0 18 0 16 0 22 0 19 0 18 0 31 1 45 0 46 1 49 0 52 1 53 0 75 1 129 0 85 0 18 0 87 1 61 0 89 0 7 0 98 1 69 0 106 1 73 0 117 0 153 0 129 1 77 0 134 1 81 0 135 0 18 0 136 1 85 0 137 1 89 0 139 1 141 0 140 1 165 0 142 1 97 0 146 11 165 0 186 1 105 0 189 11 165 0 191 11 165 0 192 11 165 0 194 11 165 0 198 11 165 0 199 1 129 0 201 11 165 0 207 1 137 0 208 1 141 0 209 1 145 0 210 11 165 0 240 11 165 0 241 11 165 0 242 1 145 1 110 1 165 1 115 1 169 1 126] 
#[1 3 110 0 3 3 110 0 17 3 110 0 22 3 110 0 23 3 110 0 24 3 110 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 31 3 110 0 32 3 110 0 33 3 110 0 38 3 110 0 40 3 110 0 42 3 110 0 43 3 110 0 44 3 110 0 45 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 61 3 110 0 62 3 110 0 67 3 110 0 70 3 110 0 73 3 110 0 82 3 110 0 83 3 110 0 86 3 110 0 87 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 99 3 110 0 100 3 110 0 103 3 110 0 104 3 110 0 109 3 110 0 110 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 119 3 110 0 122 3 110 0 123 3 110 0 129 3 110 0 138 11 169 1 20] 
#[1 3 110 0 3 3 110 0 17 3 110 0 22 3 110 0 23 3 110 0 24 3 110 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 31 3 110 0 32 3 110 0 33 3 110 0 38 3 110 0 40 3 110 0 42 3 110 0 43 3 110 0 44 3 110 0 45 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 61 3 110 0 62 3 110 0 67 3 110 0 70 3 110 0 73 3 110 0 82 3 110 0 83 3 110 0 86 3 110 0 87 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 99 3 110 0 100 3 110 0 103 3 110 0 104 3 110 0 109 3 110 0 110 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 119 3 110 0 122 3 110 0 123 3 110 0 129 3 110 0 138 11 173 1 20] 
#[1 3 110 0 3 3 110 0 17 3 110 0 22 3 110 0 23 3 110 0 24 3 110 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 31 3 110 0 32 3 110 0 33 3 110 0 38 3 110 0 40 3 110 0 42 3 110 0 43 3 110 0 44 3 110 0 45 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 61 3 110 0 62 3 110 0 67 3 110 0 70 3 110 0 73 3 110 0 82 3 110 0 83 3 110 0 86 3 110 0 87 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 99 3 110 0 100 3 110 0 103 3 110 0 104 3 110 0 109 3 110 0 110 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 119 3 110 0 122 3 110 0 123 3 110 0 129 3 110 0 138 11 177 1 20] 
#[1 3 113 0 2 5 194 0 3 3 121 0 4 5 194 0 5 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[0 5 198 0 5 0 131] 
#[1 5 202 0 3 5 202 0 5 11 181 0 14] 
#[1 11 185 0 3 11 189 0 5] 
#[0 5 206 0 3 0 5] 
#[0 11 193 0 138] 
#[1 9 237 0 2 11 209 0 17 4 158 0 26 4 158 0 27 4 158 0 28 4 158 0 31 4 158 0 32 4 158 0 40 4 158 0 52 11 201 0 54 4 158 0 87 4 158 0 88 4 158 0 89 4 158 0 91 4 158 0 92 4 158 0 93 4 158 0 94 11 209 0 105 4 158 0 112 4 158 0 114 4 158 0 117 4 158 0 122 4 158 0 129 4 158 0 136 4 158 0 138 11 209 0 221 11 213 0 231] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 217 0 139 11 221 0 189 11 225 0 232] 
#[1 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 11 229 0 224 5 85 0 234] 
#[0 5 210 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[0 11 233 0 136] 
#[0 11 237 0 136] 
#[1 5 214 0 26 5 214 0 40 5 214 0 52 5 214 0 89 5 214 0 91 11 241 0 129 11 245 0 248] 
#[0 5 218 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[0 5 222 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 103 0 114 0 117 0 122] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 11 249 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 11 253 0 138 12 1 1 124] 
#[0 5 226 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 230 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 238 0 40 0 48 0 61] 
#[0 5 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 5 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 25 0 44 6 29 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 197 1 24 12 5 1 62 1 253 1 63] 
#[0 5 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 25 0 44 6 29 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 201 1 24 12 9 1 62 1 253 1 63] 
#[0 6 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 12 13 1 62 1 253 1 63] 
#[0 6 18 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 12 17 1 62 1 253 1 63] 
#[0 6 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 6 25 0 44 6 29 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 103 0 50 0 114 0 50 0 117 0 50 0 122 9 205 1 24 12 21 1 62 1 253 1 63] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 6 46 0 40 4 85 0 136] 
#[0 6 50 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 12 25 0 210 12 25 1 110 1 165 1 115 1 169 1 126] 
#[0 12 29 0 136] 
#[0 6 54 0 3 0 5 0 9 0 130 0 136] 
#[1 6 58 0 3 6 58 0 17 6 58 0 21 6 58 0 22 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 38 6 58 0 40 6 58 0 42 6 58 0 44 6 58 0 45 6 58 0 47 6 58 0 48 6 58 0 51 6 58 0 52 6 58 0 56 6 58 0 61 6 58 0 62 6 58 0 65 6 58 0 67 6 58 0 70 6 58 0 73 6 58 0 82 6 58 0 83 6 58 0 86 6 58 0 87 6 58 0 88 6 58 0 89 6 58 0 91 6 58 0 92 6 58 0 93 6 58 0 94 6 58 0 99 6 58 0 100 6 58 0 103 6 58 0 104 6 58 0 109 6 58 0 110 6 58 0 112 6 58 0 114 6 58 0 117 6 58 0 119 6 58 0 122 6 58 0 123 6 58 0 129 6 58 0 138 12 33 1 21] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 12 41 0 31 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 6 62 0 136 12 41 0 223 3 121 1 120] 
#[1 1 14 0 14 3 125 0 16 12 45 0 31 12 45 0 87 3 129 0 129 1 14 0 136 12 45 0 190] 
#[0 12 49 0 142] 
#[0 6 66 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 12 53 0 142] 
#[0 6 70 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 6 74 0 136] 
#[0 6 78 0 136] 
#[0 6 82 0 136] 
#[0 6 86 0 136] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 12 57 0 210 12 57 1 110 1 165 1 115 1 169 1 126] 
#[0 6 90 0 136] 
#[0 6 94 0 136] 
#[0 6 98 0 136] 
#[0 6 102 0 136] 
#[0 6 106 0 136] 
#[0 6 110 0 136] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 12 61 0 210 12 61 1 110 1 165 1 115 1 169 1 126] 
#[0 6 114 0 136] 
#[0 6 118 0 136] 
#[0 6 122 0 136] 
#[0 6 126 0 136] 
#[0 6 130 0 136] 
#[0 6 134 0 136] 
#[0 6 138 0 136] 
#[0 6 142 0 136] 
#[0 6 146 0 136] 
#[0 6 150 0 136] 
#[0 6 154 0 136] 
#[0 6 158 0 136] 
#[0 6 162 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 6 166 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 6 170 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 12 65 0 136] 
#[1 3 113 0 2 3 121 0 4 6 174 0 5 3 117 0 6 3 121 0 8 6 174 0 9 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[1 6 178 0 40 4 85 0 136] 
#[0 6 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 6 186 0 39 0 40 0 136] 
#[0 6 190 0 39 0 40 0 136] 
#[1 6 194 0 5 6 198 0 9] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 12 69 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 107 2 245 0 108 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[0 6 202 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 6 206 0 3 12 73 0 14 3 125 0 16 3 129 0 129 6 206 0 130 6 206 0 136 12 77 1 30] 
#[0 6 210 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[0 6 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 6 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 107 0 108 0 111 0 113 0 115 0 120 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 127] 
#[0 12 81 0 36] 
#[1 6 222 0 40 6 222 0 49 4 85 0 136] 
#[1 3 110 0 3 3 110 0 5 3 110 0 14 3 110 0 16 3 110 0 17 3 110 0 21 3 110 0 22 3 110 0 23 3 110 0 24 3 110 0 25 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 30 3 110 0 31 3 110 0 32 3 110 0 33 3 110 0 36 3 110 0 38 3 110 0 40 3 110 0 42 3 110 0 43 3 110 0 44 3 110 0 45 3 110 0 47 3 110 0 48 3 110 0 51 3 110 0 52 3 110 0 56 3 110 0 57 3 110 0 59 3 110 0 61 3 110 0 62 3 110 0 65 3 110 0 67 3 110 0 70 3 110 0 73 3 110 0 74 3 110 0 77 3 110 0 82 3 110 0 83 3 110 0 86 3 110 0 87 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 96 3 110 0 97 3 110 0 99 3 110 0 100 3 110 0 103 3 110 0 104 3 110 0 109 3 110 0 110 3 110 0 111 3 110 0 112 3 110 0 114 3 110 0 117 3 110 0 119 3 110 0 122 3 110 0 123 3 110 0 126 3 110 0 127 3 110 0 129 3 110 0 130 3 110 0 131 3 110 0 136 3 110 0 138 12 85 1 20 3 110 1 127] 
#[0 6 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 103 0 111 0 114 0 117 0 122 0 126 0 127 0 129 0 130 0 131 0 136 1 127] 
#[0 6 230 0 3 0 5] 
#[1 6 234 0 3 12 89 0 5] 
#[0 6 238 0 5 0 130] 
#[1 4 129 0 9 1 54 0 77 12 93 1 5] 
#[1 6 242 0 3 6 242 0 24 7 29 0 26 3 229 0 27 7 33 0 28 7 37 0 32 6 242 0 40 7 41 0 52 6 242 0 88 7 45 0 89 7 49 0 91 6 242 0 92 6 242 0 93 6 242 0 94 6 242 0 112 3 249 0 114 3 253 0 117 4 1 0 122 1 173 0 129 5 229 0 138 7 61 0 170 7 61 0 176 7 61 0 235 7 61 0 236 7 69 0 237 7 61 0 238 7 61 0 239 7 61 0 251 7 61 0 252 7 61 0 253 7 61 0 254 7 61 0 255 7 61 1 0 7 61 1 2 7 61 1 3 7 61 1 4 7 61 1 6 7 121 1 7 7 61 1 8 7 129 1 29 7 61 1 37 7 137 1 38 7 61 1 40 7 145 1 41 7 61 1 44 4 25 1 45 7 61 1 46 4 33 1 47 7 61 1 49 7 61 1 50 7 61 1 52 4 45 1 53 7 61 1 54 4 53 1 55 7 61 1 57 7 61 1 58 7 61 1 60 7 185 1 61 7 61 1 66 4 69 1 67] 
#[1 6 246 0 3 6 246 0 24 7 29 0 26 3 229 0 27 7 33 0 28 7 37 0 32 6 246 0 40 7 41 0 52 6 246 0 88 7 45 0 89 7 49 0 91 6 246 0 92 6 246 0 93 6 246 0 94 6 246 0 112 3 249 0 114 3 253 0 117 4 1 0 122 1 173 0 129 5 229 0 138 7 61 0 170 7 61 0 176 7 61 0 235 7 61 0 236 7 69 0 237 7 61 0 238 7 61 0 239 7 61 0 251 7 61 0 252 7 61 0 253 7 61 0 254 7 61 0 255 7 61 1 0 7 61 1 2 7 61 1 3 7 61 1 4 7 61 1 6 7 121 1 7 7 61 1 8 7 129 1 29 7 61 1 37 7 137 1 38 7 61 1 40 7 145 1 41 7 61 1 44 4 25 1 45 7 61 1 46 4 33 1 47 7 61 1 49 7 61 1 50 7 61 1 52 4 45 1 53 7 61 1 54 4 53 1 55 7 61 1 57 7 61 1 58 7 61 1 60 7 185 1 61 7 61 1 66 4 69 1 67] 
#[1 6 250 0 3 6 250 0 24 7 29 0 26 3 229 0 27 7 33 0 28 7 37 0 32 6 250 0 40 7 41 0 52 6 250 0 88 7 45 0 89 7 49 0 91 6 250 0 92 6 250 0 93 6 250 0 94 6 250 0 112 3 249 0 114 3 253 0 117 4 1 0 122 1 173 0 129 5 229 0 138 7 61 0 170 7 61 0 176 7 61 0 235 7 61 0 236 7 69 0 237 7 61 0 238 7 61 0 239 7 61 0 251 7 61 0 252 7 61 0 253 7 61 0 254 7 61 0 255 7 61 1 0 7 61 1 2 7 61 1 3 7 61 1 4 7 61 1 6 7 121 1 7 7 61 1 8 7 129 1 29 7 61 1 37 7 137 1 38 7 61 1 40 7 145 1 41 7 61 1 44 4 25 1 45 7 61 1 46 4 33 1 47 7 61 1 49 7 61 1 50 7 61 1 52 4 45 1 53 7 61 1 54 4 53 1 55 7 61 1 57 7 61 1 58 7 61 1 60 7 185 1 61 7 61 1 66 4 69 1 67] 
#[1 6 254 0 3 6 254 0 24 7 29 0 26 3 229 0 27 7 33 0 28 7 37 0 32 6 254 0 40 7 41 0 52 6 254 0 88 7 45 0 89 7 49 0 91 6 254 0 92 6 254 0 93 6 254 0 94 6 254 0 112 3 249 0 114 3 253 0 117 4 1 0 122 1 173 0 129 5 229 0 138 7 61 0 170 7 61 0 176 7 61 0 235 7 61 0 236 7 69 0 237 7 61 0 238 7 61 0 239 7 61 0 251 7 61 0 252 7 61 0 253 7 61 0 254 7 61 0 255 7 61 1 0 7 61 1 2 7 61 1 3 7 61 1 4 7 61 1 6 7 121 1 7 7 61 1 8 7 129 1 29 7 61 1 37 7 137 1 38 7 61 1 40 7 145 1 41 7 61 1 44 4 25 1 45 7 61 1 46 4 33 1 47 7 61 1 49 7 61 1 50 7 61 1 52 4 45 1 53 7 61 1 54 4 53 1 55 7 61 1 57 7 61 1 58 7 61 1 60 7 185 1 61 7 61 1 66 4 69 1 67] 
#[1 2 18 0 3 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 12 97 0 234] 
#[1 2 18 0 3 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 40 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 12 101 0 234] 
#[1 2 33 0 2 0 54 0 136 12 105 0 193] 
#[1 11 141 0 2 5 158 0 136 12 109 1 42] 
#[1 2 33 0 2 0 54 0 9 0 54 0 136 12 113 0 193] 
#[0 12 117 0 136] 
#[0 12 121 0 3] 
#[0 12 125 0 136] 
#[0 12 129 0 138] 
#[0 12 133 0 138] 
#[1 4 125 0 27 4 125 0 81 4 125 0 122 1 46 0 130 1 50 0 138 12 137 1 26 4 117 1 27 4 121 1 28 4 125 1 31] 
#[1 4 129 0 9 1 54 0 30 1 54 0 33 1 54 0 57 1 54 0 59 1 54 0 74 1 54 0 96 1 54 0 97 1 54 0 111 1 54 0 126 1 54 0 127 1 54 0 136 12 141 1 5] 
#[1 3 125 0 16 12 145 0 31 12 145 0 87 3 129 0 129 1 14 0 136 12 145 0 190] 
#[1 7 2 0 3 11 17 0 17 11 17 0 22 7 2 0 23 7 2 0 24 11 17 0 25 7 2 0 26 7 2 0 27 7 2 0 28 11 17 0 31 7 2 0 32 10 181 0 33 11 17 0 38 7 2 0 40 11 17 0 42 7 2 0 43 6 25 0 44 11 17 0 45 11 17 0 47 7 2 0 48 6 29 0 51 7 2 0 52 7 2 0 61 11 17 0 62 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 2 0 88 7 2 0 89 7 2 0 91 7 2 0 92 7 2 0 93 7 2 0 94 11 17 0 99 11 17 0 100 7 2 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 2 0 112 7 2 0 114 7 2 0 117 11 17 0 119 7 2 0 122 11 17 0 123 7 2 0 129 7 2 0 138 11 5 1 22 11 5 1 23 11 5 1 24 11 17 1 25] 
#[1 7 6 0 3 11 17 0 17 11 17 0 22 7 6 0 23 7 6 0 24 11 17 0 25 7 6 0 26 7 6 0 27 7 6 0 28 11 17 0 31 7 6 0 32 10 181 0 33 11 17 0 38 7 6 0 40 11 17 0 42 7 6 0 43 6 25 0 44 11 17 0 45 11 17 0 47 7 6 0 48 6 29 0 51 7 6 0 52 7 6 0 61 11 17 0 62 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 6 0 88 7 6 0 89 7 6 0 91 7 6 0 92 7 6 0 93 7 6 0 94 11 17 0 99 11 17 0 100 7 6 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 6 0 112 7 6 0 114 7 6 0 117 11 17 0 119 7 6 0 122 11 17 0 123 7 6 0 129 7 6 0 138 11 5 1 22 11 5 1 23 11 5 1 24 11 17 1 25] 
#[1 7 10 0 3 11 17 0 17 11 17 0 22 7 10 0 23 7 10 0 24 11 17 0 25 7 10 0 26 7 10 0 27 7 10 0 28 11 17 0 31 7 10 0 32 10 181 0 33 11 17 0 38 7 10 0 40 11 17 0 42 7 10 0 43 6 25 0 44 11 17 0 45 11 17 0 47 7 10 0 48 6 29 0 51 7 10 0 52 7 10 0 61 11 17 0 62 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 10 0 88 7 10 0 89 7 10 0 91 7 10 0 92 7 10 0 93 7 10 0 94 11 17 0 99 11 17 0 100 7 10 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 10 0 112 7 10 0 114 7 10 0 117 11 17 0 119 7 10 0 122 11 17 0 123 7 10 0 129 7 10 0 138 11 5 1 22 11 5 1 23 11 5 1 24 11 17 1 25] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 12 149 0 210 12 149 1 110 1 165 1 115 1 169 1 126] 
#[0 7 14 0 136] 
#[1 9 217 0 138 12 153 0 184] 
#[0 7 18 0 31 0 87 0 136] 
#[0 7 22 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[0 12 157 0 50] 
#[0 7 26 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[0 7 30 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 105 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[1 2 18 0 26 2 18 0 27 2 18 0 28 7 34 0 31 2 18 0 32 2 18 0 40 2 18 0 52 7 34 0 87 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 7 34 0 136 2 18 0 138 12 161 0 224 5 85 0 234] 
#[0 0 194 0 3 0 5 0 6 0 11] 
#[1 7 38 0 3 7 38 0 5 3 93 0 6 2 125 0 11 3 97 0 187] 
#[1 12 165 0 3 12 169 0 5] 
#[1 2 234 0 40 2 234 0 88 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 112 12 173 0 225] 
#[0 7 42 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[0 7 46 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 12 177 0 210 12 177 1 110 1 165 1 115 1 169 1 126] 
#[1 7 50 0 26 7 50 0 40 7 50 0 52 7 50 0 89 7 50 0 91 12 181 0 249] 
#[1 7 54 0 40 7 54 0 48 7 54 0 61 4 85 0 136] 
#[0 7 58 0 5 0 136] 
#[1 12 185 0 5 12 189 0 136] 
#[0 7 62 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 66 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 70 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 74 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[0 7 78 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 1 103 0 31 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 12 193 0 87 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 1 14 0 136 12 193 0 190 3 121 1 120] 
#[1 6 58 0 3 6 58 0 17 6 58 0 21 6 58 0 22 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 38 6 58 0 40 6 58 0 42 6 58 0 44 6 58 0 45 6 58 0 47 6 58 0 48 6 58 0 51 6 58 0 52 6 58 0 56 6 58 0 61 6 58 0 62 6 58 0 65 6 58 0 67 6 58 0 70 6 58 0 73 6 58 0 82 6 58 0 83 6 58 0 86 6 58 0 87 6 58 0 88 6 58 0 89 6 58 0 91 6 58 0 92 6 58 0 93 6 58 0 94 6 58 0 99 6 58 0 100 6 58 0 103 6 58 0 104 6 58 0 109 6 58 0 110 6 58 0 112 6 58 0 114 6 58 0 117 6 58 0 119 6 58 0 122 6 58 0 123 6 58 0 129 6 58 0 138 12 197 1 21] 
#[1 7 82 0 3 11 17 0 17 7 82 0 21 11 17 0 22 7 82 0 23 7 82 0 24 11 17 0 25 7 82 0 26 7 82 0 27 7 82 0 28 11 17 0 31 7 82 0 32 10 181 0 33 11 17 0 38 7 82 0 40 11 17 0 42 7 82 0 44 11 17 0 45 11 17 0 47 7 82 0 48 7 82 0 51 7 82 0 52 7 82 0 56 7 82 0 61 11 17 0 62 7 82 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 82 0 88 7 82 0 89 7 82 0 91 7 82 0 92 7 82 0 93 7 82 0 94 11 17 0 99 11 17 0 100 7 82 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 82 0 112 7 82 0 114 7 82 0 117 11 17 0 119 7 82 0 122 11 17 0 123 7 82 0 129 7 82 0 138 12 201 1 23 11 17 1 25] 
#[0 7 86 0 136] 
#[0 12 205 0 136] 
#[1 12 73 0 14 6 206 0 136 12 209 1 30] 
#[0 12 213 0 136] 
#[0 12 217 0 136] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 12 221 0 136 3 121 1 120] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 12 225 0 136 3 121 1 120] 
#[0 7 90 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 14 0 120 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 12 229 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 12 229 1 99 12 229 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126 0 14 1 127] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 12 233 0 210 12 233 1 110 1 165 1 115 1 169 1 126] 
#[0 7 94 0 3 0 130 0 136] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 101 0 141 0 116 0 145 0 124 0 149 0 125 0 153 0 129 0 157 0 134 0 161 0 135 0 14 0 136 0 165 0 138 0 169 0 140 1 25 0 142 0 177 0 146 0 181 0 209 12 237 1 70 2 17 1 71 0 189 1 72 0 193 1 73 0 197 1 74 0 201 1 75 0 205 1 76 0 209 1 78 0 213 1 84 0 217 1 93 0 221 1 95 0 225 1 96 0 229 1 98 2 17 1 99 2 17 1 100 0 241 1 101 0 245 1 102 0 245 1 103 0 253 1 104 0 245 1 105 1 5 1 106 0 245 1 107 0 245 1 108 0 245 1 109 0 245 1 110 1 25 1 115 0 245 1 116 1 33 1 126] 
#[1 7 98 0 3 7 98 0 5 7 98 0 14 7 98 0 16 11 17 0 17 7 98 0 21 11 17 0 22 7 98 0 23 7 98 0 24 11 17 0 25 7 98 0 26 7 98 0 27 7 98 0 28 7 98 0 30 1 107 0 31 7 98 0 32 1 111 0 33 7 98 0 36 11 17 0 38 7 98 0 40 11 17 0 42 7 98 0 43 6 25 0 44 11 17 0 45 11 17 0 47 7 98 0 48 6 29 0 51 7 98 0 52 7 98 0 56 7 98 0 57 7 98 0 59 7 98 0 61 11 17 0 62 7 98 0 65 11 17 0 67 10 209 0 70 11 17 0 73 7 98 0 74 7 98 0 77 11 17 0 82 11 17 0 83 11 17 0 86 1 115 0 87 7 98 0 88 7 98 0 89 7 98 0 91 7 98 0 92 7 98 0 93 7 98 0 94 7 98 0 96 7 98 0 97 11 17 0 99 11 17 0 100 7 98 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 98 0 111 7 98 0 112 7 98 0 114 7 98 0 117 11 17 0 119 7 98 0 122 11 17 0 123 7 98 0 126 7 98 0 127 7 98 0 129 7 98 0 130 7 98 0 131 7 98 0 136 7 98 0 138 11 5 1 22 11 5 1 23 11 5 1 24 11 17 1 25 7 98 1 127] 
#[0 12 241 0 139] 
#[0 12 245 0 77] 
#[1 7 102 0 3 7 102 0 24 7 29 0 26 3 229 0 27 7 33 0 28 7 37 0 32 7 102 0 40 7 41 0 52 7 102 0 88 7 45 0 89 7 49 0 91 7 102 0 92 7 102 0 93 7 102 0 94 7 102 0 112 3 249 0 114 3 253 0 117 4 1 0 122 1 173 0 129 5 229 0 138 7 61 0 170 7 61 0 176 7 61 0 235 7 61 0 236 7 69 0 237 7 61 0 238 7 61 0 239 7 61 0 251 7 61 0 252 7 61 0 253 7 61 0 254 7 61 0 255 7 61 1 0 7 61 1 2 7 61 1 3 7 61 1 4 7 61 1 6 7 121 1 7 7 61 1 8 7 129 1 29 7 61 1 37 7 137 1 38 7 61 1 40 7 145 1 41 7 61 1 44 4 25 1 45 7 61 1 46 4 33 1 47 7 61 1 49 7 61 1 50 7 61 1 52 4 45 1 53 7 61 1 54 4 53 1 55 7 61 1 57 7 61 1 58 7 61 1 60 7 185 1 61 7 61 1 66 4 69 1 67] 
#[1 7 106 0 3 7 106 0 24 7 29 0 26 3 229 0 27 7 33 0 28 7 37 0 32 7 106 0 40 7 41 0 52 7 106 0 88 7 45 0 89 7 49 0 91 7 106 0 92 7 106 0 93 7 106 0 94 7 106 0 112 3 249 0 114 3 253 0 117 4 1 0 122 1 173 0 129 5 229 0 138 7 61 0 170 7 61 0 176 7 61 0 235 7 61 0 236 7 69 0 237 7 61 0 238 7 61 0 239 7 61 0 251 7 61 0 252 7 61 0 253 7 61 0 254 7 61 0 255 7 61 1 0 7 61 1 2 7 61 1 3 7 61 1 4 7 61 1 6 7 121 1 7 7 61 1 8 7 129 1 29 7 61 1 37 7 137 1 38 7 61 1 40 7 145 1 41 7 61 1 44 4 25 1 45 7 61 1 46 4 33 1 47 7 61 1 49 7 61 1 50 7 61 1 52 4 45 1 53 7 61 1 54 4 53 1 55 7 61 1 57 7 61 1 58 7 61 1 60 7 185 1 61 7 61 1 66 4 69 1 67] 
#[0 12 249 0 136] 
#[0 12 253 0 136] 
#[1 4 129 0 9 1 54 0 136 13 1 1 5] 
#[1 6 58 0 3 6 58 0 17 6 58 0 21 6 58 0 22 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 38 6 58 0 40 6 58 0 42 6 58 0 44 6 58 0 45 6 58 0 47 6 58 0 51 6 58 0 52 6 58 0 62 6 58 0 65 6 58 0 67 6 58 0 70 6 58 0 73 6 58 0 82 6 58 0 83 6 58 0 86 6 58 0 87 6 58 0 88 6 58 0 89 6 58 0 91 6 58 0 92 6 58 0 93 6 58 0 94 6 58 0 99 6 58 0 100 6 58 0 103 6 58 0 104 6 58 0 109 6 58 0 110 6 58 0 112 6 58 0 114 6 58 0 117 6 58 0 119 6 58 0 122 6 58 0 123 6 58 0 129 6 58 0 138 13 5 1 21] 
#[0 7 110 0 136] 
#[1 6 58 0 3 6 58 0 17 6 58 0 21 6 58 0 22 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 38 6 58 0 40 6 58 0 42 6 58 0 44 6 58 0 45 6 58 0 47 6 58 0 51 6 58 0 52 6 58 0 62 6 58 0 65 6 58 0 67 6 58 0 70 6 58 0 73 6 58 0 82 6 58 0 83 6 58 0 86 6 58 0 87 6 58 0 88 6 58 0 89 6 58 0 91 6 58 0 92 6 58 0 93 6 58 0 94 6 58 0 99 6 58 0 100 6 58 0 103 6 58 0 104 6 58 0 109 6 58 0 110 6 58 0 112 6 58 0 114 6 58 0 117 6 58 0 119 6 58 0 122 6 58 0 123 6 58 0 129 6 58 0 138 13 9 1 21] 
#[0 13 13 0 136] 
#[0 13 17 0 136] 
#[0 13 21 0 130] 
#[1 7 114 0 30 7 114 0 33 7 114 0 57 7 114 0 59 7 114 0 74 7 114 0 96 7 114 0 97 7 114 0 111 7 114 0 126 7 114 0 127 7 114 0 136 13 25 1 9] 
#[0 13 29 0 136] 
#[1 3 113 0 2 7 118 0 3 3 121 0 4 7 118 0 5 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[0 7 122 0 3 0 5] 
#[1 3 69 0 138 13 33 0 233] 
#[1 2 234 0 40 2 234 0 88 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 112 13 37 0 225] 
#[0 7 126 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 136 0 138] 
#[1 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 11 11 217 0 139 13 41 0 189] 
#[1 13 45 0 40 9 61 0 88 9 65 0 92 9 69 0 93 9 73 0 94 9 77 0 112 9 85 0 226 9 85 0 227 9 85 0 228 9 85 0 229 9 85 0 230] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 13 49 0 130 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[1 13 53 0 26 13 57 0 40 3 233 0 52 3 241 0 89 7 49 0 91 13 61 0 250 13 61 0 251 13 61 0 252 13 61 0 255 13 61 1 0 13 61 1 2 13 61 1 3 13 61 1 4 13 61 1 6 7 121 1 7 13 61 1 8 13 61 1 44 4 25 1 45 13 61 1 46 4 33 1 47 13 61 1 49 13 61 1 50 13 61 1 52 4 45 1 53 13 61 1 54 4 53 1 55 13 61 1 57 13 61 1 58 13 61 1 60 7 185 1 61] 
#[0 13 73 0 138] 
#[0 7 130 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 103 0 114 0 117 0 122] 
#[1 13 77 0 31 6 62 0 136 13 77 0 223] 
#[1 7 134 0 3 11 17 0 17 7 134 0 21 11 17 0 22 7 134 0 23 7 134 0 24 11 17 0 25 7 134 0 26 7 134 0 27 7 134 0 28 11 17 0 31 7 134 0 32 10 181 0 33 11 17 0 38 7 134 0 40 11 17 0 42 7 134 0 44 11 17 0 45 11 17 0 47 7 134 0 48 7 134 0 51 7 134 0 52 7 134 0 56 7 134 0 61 11 17 0 62 7 134 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 134 0 88 7 134 0 89 7 134 0 91 7 134 0 92 7 134 0 93 7 134 0 94 11 17 0 99 11 17 0 100 7 134 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 134 0 112 7 134 0 114 7 134 0 117 11 17 0 119 7 134 0 122 11 17 0 123 7 134 0 129 7 134 0 138 12 201 1 23 11 17 1 25] 
#[0 7 138 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 99 0 100 0 103 0 104 0 109 0 110 0 112 0 114 0 117 0 119 0 122 0 123 0 129 0 138] 
#[0 7 142 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 103 0 114 0 117 0 122 0 138] 
#[0 13 81 0 136] 
#[0 7 146 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 150 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 154 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 158 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 99 0 100 0 103 0 104 0 109 0 110 0 111 0 112 0 114 0 117 0 119 0 122 0 123 0 126 0 127 0 129 0 130 0 131 0 136 0 138 1 127] 
#[0 7 162 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 120 0 136 1 127] 
#[1 3 113 0 2 7 166 0 3 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 7 166 0 130 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 7 166 0 136 3 121 1 120] 
#[1 7 170 0 39 7 170 0 40 7 170 0 49 7 170 0 78 4 85 0 136] 
#[0 7 174 0 3 0 5] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 13 85 0 203 13 89 0 204 13 93 0 205 13 97 0 206 1 141 0 209 13 101 0 210 13 101 1 110 1 165 1 115 1 169 1 126] 
#[1 6 58 0 3 6 58 0 17 6 58 0 21 6 58 0 22 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 38 6 58 0 40 6 58 0 42 6 58 0 44 6 58 0 45 6 58 0 47 6 58 0 51 6 58 0 52 6 58 0 62 6 58 0 65 6 58 0 67 6 58 0 70 6 58 0 73 6 58 0 82 6 58 0 83 6 58 0 86 6 58 0 87 6 58 0 88 6 58 0 89 6 58 0 91 6 58 0 92 6 58 0 93 6 58 0 94 6 58 0 99 6 58 0 100 6 58 0 103 6 58 0 104 6 58 0 109 6 58 0 110 6 58 0 112 6 58 0 114 6 58 0 117 6 58 0 119 6 58 0 122 6 58 0 123 6 58 0 129 6 58 0 138 13 105 1 21] 
#[1 6 58 0 3 6 58 0 17 6 58 0 21 6 58 0 22 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 38 6 58 0 40 6 58 0 42 6 58 0 44 6 58 0 45 6 58 0 47 6 58 0 51 6 58 0 52 6 58 0 62 6 58 0 65 6 58 0 67 6 58 0 70 6 58 0 73 6 58 0 82 6 58 0 83 6 58 0 86 6 58 0 87 6 58 0 88 6 58 0 89 6 58 0 91 6 58 0 92 6 58 0 93 6 58 0 94 6 58 0 99 6 58 0 100 6 58 0 103 6 58 0 104 6 58 0 109 6 58 0 110 6 58 0 112 6 58 0 114 6 58 0 117 6 58 0 119 6 58 0 122 6 58 0 123 6 58 0 129 6 58 0 138 13 109 1 21] 
#[0 13 113 0 136] 
#[1 7 178 0 3 11 17 0 17 7 178 0 21 11 17 0 22 7 178 0 23 7 178 0 24 11 17 0 25 7 178 0 26 7 178 0 27 7 178 0 28 11 17 0 31 7 178 0 32 10 181 0 33 11 17 0 38 7 178 0 40 11 17 0 42 7 178 0 44 11 17 0 45 11 17 0 47 7 178 0 51 7 178 0 52 11 17 0 62 7 178 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 178 0 88 7 178 0 89 7 178 0 91 7 178 0 92 7 178 0 93 7 178 0 94 11 17 0 99 11 17 0 100 7 178 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 178 0 112 7 178 0 114 7 178 0 117 11 17 0 119 7 178 0 122 11 17 0 123 7 178 0 129 7 178 0 138 12 201 1 23 11 17 1 25] 
#[1 7 182 0 3 11 17 0 17 7 182 0 21 11 17 0 22 7 182 0 23 7 182 0 24 11 17 0 25 7 182 0 26 7 182 0 27 7 182 0 28 11 17 0 31 7 182 0 32 10 181 0 33 11 17 0 38 7 182 0 40 11 17 0 42 7 182 0 44 11 17 0 45 11 17 0 47 7 182 0 51 7 182 0 52 11 17 0 62 7 182 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 182 0 88 7 182 0 89 7 182 0 91 7 182 0 92 7 182 0 93 7 182 0 94 11 17 0 99 11 17 0 100 7 182 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 182 0 112 7 182 0 114 7 182 0 117 11 17 0 119 7 182 0 122 11 17 0 123 7 182 0 129 7 182 0 138 12 201 1 23 11 17 1 25] 
#[0 7 186 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 7 190 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[0 7 194 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 13 117 0 30 13 121 0 33 13 125 0 57 13 129 0 59 13 133 0 74 13 137 0 96 13 141 0 97 13 145 0 111 13 149 0 126 13 153 0 127 13 157 0 136 13 161 1 11 13 165 1 12 13 169 1 13 13 173 1 14 13 177 1 15 13 181 1 16 13 185 1 18] 
#[0 7 198 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 9 237 0 2 4 158 0 26 4 158 0 27 4 158 0 28 4 158 0 31 4 158 0 32 4 158 0 40 4 158 0 52 4 158 0 87 4 158 0 88 4 158 0 89 4 158 0 91 4 158 0 92 4 158 0 93 4 158 0 94 4 158 0 112 4 158 0 114 4 158 0 117 4 158 0 122 4 158 0 129 4 158 0 136 4 158 0 138 13 189 0 231] 
#[1 13 193 0 40 9 61 0 88 9 65 0 92 9 69 0 93 9 73 0 94 9 77 0 112 9 85 0 226 9 85 0 227 9 85 0 228 9 85 0 229 9 85 0 230] 
#[1 7 202 0 3 7 202 0 5 3 93 0 6 2 125 0 11 3 97 0 187] 
#[0 7 206 0 31 0 87 0 136] 
#[0 7 210 0 26 0 40 0 52 0 89 0 91] 
#[1 3 233 0 52 9 113 0 79 3 241 0 89 7 49 0 91 9 117 1 7 9 121 1 45 9 125 1 47 9 129 1 53 9 133 1 55] 
#[0 7 214 0 31 0 87 0 136] 
#[0 7 218 0 26 0 40 0 52 0 89 0 91] 
#[0 7 222 0 26 0 40 0 52 0 89 0 91] 
#[0 7 226 0 26 0 40 0 52 0 89 0 91] 
#[0 7 230 0 5 0 136] 
#[0 13 197 0 136] 
#[0 7 234 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 226 0 3 1 226 0 40 13 201 0 136 13 205 1 85] 
#[0 7 238 0 3 0 40 0 136] 
#[1 13 209 0 5 13 213 0 9] 
#[0 7 242 0 5 0 9] 
#[1 3 113 0 2 3 121 0 4 7 246 0 5 3 117 0 6 3 121 0 8 7 246 0 9 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 3 121 0 35 3 121 0 58 3 121 0 64 3 121 0 71 3 121 0 80 3 121 0 107 3 121 0 108 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 3 121 1 120] 
#[1 7 250 0 3 11 17 0 17 7 250 0 21 11 17 0 22 7 250 0 23 7 250 0 24 11 17 0 25 7 250 0 26 7 250 0 27 7 250 0 28 11 17 0 31 7 250 0 32 10 181 0 33 11 17 0 38 7 250 0 40 11 17 0 42 7 250 0 44 11 17 0 45 11 17 0 47 7 250 0 51 7 250 0 52 11 17 0 62 7 250 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 250 0 88 7 250 0 89 7 250 0 91 7 250 0 92 7 250 0 93 7 250 0 94 11 17 0 99 11 17 0 100 7 250 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 250 0 112 7 250 0 114 7 250 0 117 11 17 0 119 7 250 0 122 11 17 0 123 7 250 0 129 7 250 0 138 12 201 1 23 11 17 1 25] 
#[1 7 254 0 3 11 17 0 17 7 254 0 21 11 17 0 22 7 254 0 23 7 254 0 24 11 17 0 25 7 254 0 26 7 254 0 27 7 254 0 28 11 17 0 31 7 254 0 32 10 181 0 33 11 17 0 38 7 254 0 40 11 17 0 42 7 254 0 44 11 17 0 45 11 17 0 47 7 254 0 51 7 254 0 52 11 17 0 62 7 254 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 7 254 0 88 7 254 0 89 7 254 0 91 7 254 0 92 7 254 0 93 7 254 0 94 11 17 0 99 11 17 0 100 7 254 0 103 11 17 0 104 11 17 0 109 11 17 0 110 7 254 0 112 7 254 0 114 7 254 0 117 11 17 0 119 7 254 0 122 11 17 0 123 7 254 0 129 7 254 0 138 12 201 1 23 11 17 1 25] 
#[1 6 58 0 3 6 58 0 17 6 58 0 21 6 58 0 22 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 38 6 58 0 40 6 58 0 42 6 58 0 44 6 58 0 45 6 58 0 47 6 58 0 51 6 58 0 52 6 58 0 62 6 58 0 65 6 58 0 67 6 58 0 70 6 58 0 73 6 58 0 82 6 58 0 83 6 58 0 86 6 58 0 87 6 58 0 88 6 58 0 89 6 58 0 91 6 58 0 92 6 58 0 93 6 58 0 94 6 58 0 99 6 58 0 100 6 58 0 103 6 58 0 104 6 58 0 109 6 58 0 110 6 58 0 112 6 58 0 114 6 58 0 117 6 58 0 119 6 58 0 122 6 58 0 123 6 58 0 129 6 58 0 138 13 217 1 21] 
#[1 1 37 0 2 1 41 0 15 8 2 0 30 8 2 0 33 8 2 0 57 8 2 0 59 8 2 0 74 1 53 0 75 8 2 0 96 8 2 0 97 8 2 0 111 8 2 0 126 8 2 0 127 0 153 0 129 1 77 0 134 1 81 0 135 8 2 0 136 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 13 221 0 210 13 221 1 110 1 165 1 115 1 169 1 126] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 13 225 0 210 13 225 1 110 1 165 1 115 1 169 1 126] 
#[1 13 229 0 138 13 233 1 17] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 13 237 0 210 13 237 1 110 1 165 1 115 1 169 1 126] 
#[0 8 6 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 13 241 1 102 13 241 1 103 0 253 1 104 13 241 1 105 1 5 1 106 13 241 1 107 13 241 1 108 13 241 1 109 13 241 1 110 1 25 1 115 13 241 1 116 1 33 1 126] 
#[0 13 245 0 33] 
#[0 13 249 0 138] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 129 0 157 0 134 0 161 0 135 2 1 0 138 0 181 0 140 1 25 0 142 0 177 0 146 0 181 0 209 13 253 1 102 13 253 1 103 0 253 1 104 13 253 1 105 1 5 1 106 13 253 1 107 13 253 1 108 13 253 1 109 13 253 1 110 1 25 1 115 13 253 1 116 1 33 1 126] 
#[0 14 1 0 33] 
#[1 8 10 0 3 8 10 0 24 8 10 0 26 8 10 0 27 8 10 0 28 14 5 0 30 8 10 0 32 8 10 0 40 8 10 0 52 8 10 0 88 8 10 0 89 8 10 0 91 8 10 0 92 8 10 0 93 8 10 0 94 8 10 0 112 8 10 0 114 8 10 0 117 8 10 0 122 8 10 0 129 8 10 0 138 14 9 1 19] 
#[0 8 14 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 18 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 22 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 26 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 30 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 34 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 38 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 2 18 0 26 2 18 0 27 2 18 0 28 8 42 0 31 2 18 0 32 2 18 0 40 2 18 0 52 8 42 0 87 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 8 42 0 136 2 18 0 138 14 13 0 224 5 85 0 234] 
#[0 8 46 0 31 0 87 0 136] 
#[0 8 50 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 103 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 1 37 0 2 2 210 0 3 1 41 0 15 2 210 0 40 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 14 17 0 204 13 93 0 205 13 97 0 206 1 141 0 209 13 101 0 210 13 101 1 110 1 165 1 115 1 169 1 126] 
#[0 8 54 0 3 0 40] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 14 21 0 206 1 141 0 209 13 101 0 210 13 101 1 110 1 165 1 115 1 169 1 126] 
#[0 14 25 0 2] 
#[1 8 58 0 3 11 17 0 17 8 58 0 21 11 17 0 22 8 58 0 23 8 58 0 24 11 17 0 25 8 58 0 26 8 58 0 27 8 58 0 28 11 17 0 31 8 58 0 32 10 181 0 33 11 17 0 38 8 58 0 40 11 17 0 42 8 58 0 44 11 17 0 45 11 17 0 47 8 58 0 51 8 58 0 52 11 17 0 62 8 58 0 65 11 17 0 67 10 209 0 70 11 17 0 73 11 17 0 82 11 17 0 83 11 17 0 86 11 17 0 87 8 58 0 88 8 58 0 89 8 58 0 91 8 58 0 92 8 58 0 93 8 58 0 94 11 17 0 99 11 17 0 100 8 58 0 103 11 17 0 104 11 17 0 109 11 17 0 110 8 58 0 112 8 58 0 114 8 58 0 117 11 17 0 119 8 58 0 122 11 17 0 123 8 58 0 129 8 58 0 138 12 201 1 23 11 17 1 25] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 8 62 0 30 8 62 0 33 3 121 0 35 8 62 0 57 3 121 0 58 8 62 0 59 3 121 0 64 3 121 0 71 8 62 0 74 3 121 0 80 8 62 0 96 8 62 0 97 3 121 0 107 3 121 0 108 8 62 0 111 8 62 0 126 8 62 0 127 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 8 62 0 136 3 121 1 120] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 8 66 0 30 8 66 0 33 3 121 0 35 8 66 0 57 3 121 0 58 8 66 0 59 3 121 0 64 3 121 0 71 8 66 0 74 3 121 0 80 8 66 0 96 8 66 0 97 3 121 0 107 3 121 0 108 8 66 0 111 8 66 0 126 8 66 0 127 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 8 66 0 136 3 121 1 120] 
#[0 8 70 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 14 29 0 5 8 74 0 30 8 74 0 33 8 74 0 57 8 74 0 59 8 74 0 74 8 74 0 96 8 74 0 97 8 74 0 111 8 74 0 126 8 74 0 127 8 74 0 136] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 8 78 0 30 8 78 0 33 3 121 0 35 8 78 0 57 3 121 0 58 8 78 0 59 3 121 0 64 3 121 0 71 8 78 0 74 3 121 0 80 8 78 0 96 8 78 0 97 3 121 0 107 3 121 0 108 8 78 0 111 8 78 0 126 8 78 0 127 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 8 78 0 136 3 121 1 120] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 8 82 0 30 8 82 0 33 2 245 0 35 8 82 0 57 2 245 0 58 8 82 0 59 2 245 0 64 2 245 0 71 8 82 0 74 2 245 0 80 8 82 0 96 8 82 0 97 2 245 0 107 2 245 0 108 8 82 0 111 8 82 0 126 8 82 0 127 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 8 82 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 14 33 0 210 14 33 1 110 1 165 1 115 1 169 1 126] 
#[0 8 86 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 8 90 0 30 8 90 0 33 2 245 0 35 8 90 0 57 2 245 0 58 8 90 0 59 2 245 0 64 2 245 0 71 8 90 0 74 2 245 0 80 8 90 0 96 8 90 0 97 2 245 0 107 2 245 0 108 8 90 0 111 8 90 0 126 8 90 0 127 2 245 0 128 2 217 0 129 2 245 0 131 2 245 0 132 2 245 0 134 2 245 0 135 8 90 0 136 2 237 0 137 2 241 1 113 2 245 1 119 2 245 1 120] 
#[1 1 37 0 2 1 41 0 15 1 53 0 75 0 153 0 129 1 77 0 134 1 81 0 135 3 37 0 139 1 141 0 140 1 165 0 142 1 97 0 146 1 141 0 209 14 37 0 210 14 37 1 110 1 165 1 115 1 169 1 126] 
#[0 14 41 0 136] 
#[0 8 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 2 234 0 40 2 234 0 88 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 112 14 45 0 225] 
#[0 8 98 0 3 0 40 0 136] 
#[0 8 102 0 5 0 9] 
#[1 2 18 0 3 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 32 2 18 0 52 2 18 0 88 2 18 0 89 2 18 0 91 2 18 0 92 2 18 0 93 2 18 0 94 2 18 0 112 2 18 0 114 2 18 0 117 2 18 0 122 2 18 0 129 2 18 0 138 14 49 0 200 5 81 0 224 5 85 0 234] 
#[0 14 53 0 138] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 8 106 0 30 8 106 0 33 3 121 0 35 8 106 0 57 3 121 0 58 8 106 0 59 3 121 0 64 3 121 0 71 8 106 0 74 3 121 0 80 8 106 0 96 8 106 0 97 3 121 0 107 3 121 0 108 8 106 0 111 8 106 0 126 8 106 0 127 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 8 106 0 136 3 121 1 120] 
#[1 3 113 0 2 3 121 0 4 3 117 0 6 3 121 0 8 3 121 0 11 3 121 0 12 3 121 0 13 3 121 0 18 3 121 0 20 8 110 0 30 8 110 0 33 3 121 0 35 8 110 0 57 3 121 0 58 8 110 0 59 3 121 0 64 3 121 0 71 8 110 0 74 3 121 0 80 8 110 0 96 8 110 0 97 3 121 0 107 3 121 0 108 8 110 0 111 8 110 0 126 8 110 0 127 3 121 0 128 3 121 0 131 3 121 0 132 3 121 0 134 3 121 0 135 8 110 0 136 3 121 1 120] 
#[0 8 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 112 0 114 0 117 0 122 0 129 0 138] 
#[1 14 57 0 40 9 61 0 88 9 65 0 92 9 69 0 93 9 73 0 94 9 77 0 112 9 85 0 226 9 85 0 227 9 85 0 228 9 85 0 229 9 85 0 230] 
#[0 14 61 0 3] 
#[0 8 118 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 111 0 126 0 127 0 136] 
#[0 8 122 0 31 0 87 0 136] 
#[0 8 126 0 3 0 40 0 136]
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
	result left: ((nodes at: 2) at: 1).
	result
		addTokens: ((nodes at: 2) at: 2)
		to: result genericTypeArguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result right: ((nodes at: 2) at: 4).
	result period: (nodes at: 3).
	result name: (nodes at: 4).
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
