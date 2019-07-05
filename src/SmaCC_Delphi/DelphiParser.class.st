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
#[ 0 18 1 69] 
#[ 0 138 0 142] 
#[ 0 142 0 162] 
#[ 0 194 0 198] 
#[ 0 246 2 221] 
#[ 1 46 2 161] 
#[ 1 46 2 165] 
#[ 1 46 2 169] 
#[ 1 46 2 173] 
#[ 1 46 2 189] 
#[ 1 46 2 221] 
#[ 1 46 2 225] 
#[ 1 78 2 161] 
#[ 1 78 2 165] 
#[ 1 78 2 169] 
#[ 1 78 2 173] 
#[ 1 78 2 189] 
#[ 1 78 2 221] 
#[ 1 78 2 225] 
#[ 1 110 2 161] 
#[ 1 110 2 165] 
#[ 1 110 2 169] 
#[ 1 110 2 173] 
#[ 1 110 2 189] 
#[ 1 110 2 221] 
#[ 1 110 2 225] 
#[ 1 114 2 161] 
#[ 1 114 2 165] 
#[ 1 114 2 169] 
#[ 1 114 2 173] 
#[ 1 114 2 189] 
#[ 1 114 2 221] 
#[ 1 114 2 225] 
#[ 1 250 5 65] 
#[ 2 2 2 161] 
#[ 2 2 2 165] 
#[ 2 2 2 169] 
#[ 2 2 2 189] 
#[ 2 2 2 221] 
#[ 2 2 2 225] 
#[ 2 6 2 161] 
#[ 2 6 2 165] 
#[ 2 6 2 169] 
#[ 2 6 2 189] 
#[ 2 6 2 221] 
#[ 2 6 2 225] 
#[ 2 18 2 161] 
#[ 2 18 2 165] 
#[ 2 18 2 169] 
#[ 2 18 2 189] 
#[ 2 18 2 221] 
#[ 2 18 2 225] 
#[ 2 22 2 161] 
#[ 2 22 2 165] 
#[ 2 22 2 169] 
#[ 2 22 2 189] 
#[ 2 22 2 221] 
#[ 2 22 2 225] 
#[ 2 161 2 210] 
#[ 2 165 2 210] 
#[ 2 169 2 210] 
#[ 2 173 2 210] 
#[ 2 189 2 210] 
#[ 2 210 2 221] 
#[ 2 210 2 225] 
#[ 2 161 2 218] 
#[ 2 165 2 218] 
#[ 2 169 2 218] 
#[ 2 173 2 218] 
#[ 2 189 2 218] 
#[ 2 218 2 221] 
#[ 2 218 2 225] 
#[ 2 221 2 242] 
#[ 2 161 3 18] 
#[ 2 165 3 18] 
#[ 2 169 3 18] 
#[ 2 189 3 18] 
#[ 2 221 3 18] 
#[ 2 225 3 18] 
#[ 0 194 9 117] 
#[ 0 218 4 202] 
#[ 0 222 4 206] 
#[ 5 122 11 1] 
#[ 5 122 11 5] 
#[ 5 122 11 53] 
#[ 1 22 3 185] 
#[ 7 138 11 1] 
#[ 7 138 11 5] 
#[ 7 138 11 53]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-07-05T09:14:28.064943-05:00'
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
	#(164 0 #reduceActionForUsesList1: 5670913 false ) 
	#(360 0 #reduceActionForBeforeAsm1: 32416769 false ) 
	#(330 0 #reduceActionForStatement14: 28936206 false ) 
	#(204 0 #nil 11402241 false ) 
	#(149 1 #reduceActionForFile2: 4126722 false ) 
	#(149 1 #reduceActionForFile3: 4126723 false ) 
	#(149 1 #reduceActionForFile4: 4126724 false ) 
	#(149 1 #reduceActionForFile1: 4126721 false ) 
	#(163 0 #nil 5556225 false ) 
	#(161 1 #reduceActionForUnitFile2: 5229570 false ) 
	#(322 0 #reduceActionForMethodVariables2: 28181506 false ) 
	#(196 0 #reduceActionForOptionalArguments1: 10294273 false ) 
	#(376 1 #reduceActionForInheritedFunctionCall4: 35425284 false ) 
	#(352 1 #reduceActionForRaiseStatement2: 31583234 false ) 
	#(369 1 #reduceActionForVariableExpression1: 34827265 false ) 
	#(212 1 #liftFirstValue: 12094465 false ) 
	#(375 1 #liftFirstValue: 35402753 false ) 
	#(361 1 #reduceActionForExpression9: 32534537 false ) 
	#(361 1 #reduceActionForExpression9: 32534535 false ) 
	#(330 1 #reduceActionForStatement13: 28936205 false ) 
	#(330 1 #reduceActionForStatement11: 28936203 false ) 
	#(330 1 #reduceActionForStatement2: 28936194 false ) 
	#(330 1 #reduceActionForStatement3: 28936195 false ) 
	#(330 1 #reduceActionForStatement4: 28936196 false ) 
	#(330 1 #reduceActionForStatement5: 28936197 false ) 
	#(330 1 #reduceActionForStatement6: 28936198 false ) 
	#(330 1 #reduceActionForStatement7: 28936199 false ) 
	#(330 1 #reduceActionForStatement8: 28936200 false ) 
	#(330 1 #reduceActionForStatement9: 28936201 false ) 
	#(330 1 #reduceActionForStatement10: 28936202 false ) 
	#(330 1 #liftFirstValue: 28936204 false ) 
	#(358 1 #liftFirstValue: 32237570 false ) 
	#(330 1 #liftFirstValue: 28936193 false ) 
	#(361 1 #liftFirstValue: 32534531 false ) 
	#(189 0 #reduceActionForInsideGeneric1: 8904705 true ) 
	#(361 1 #liftFirstValue: 32534530 false ) 
	#(361 1 #liftFirstValue: 32534551 false ) 
	#(361 1 #liftFirstValue: 32534550 false ) 
	#(361 1 #liftFirstValue: 32534549 false ) 
	#(361 1 #liftFirstValue: 32534529 false ) 
	#(361 1 #liftFirstValue: 32534546 false ) 
	#(361 1 #reduceActionForExpression9: 32534536 false ) 
	#(361 1 #liftFirstValue: 32534534 false ) 
	#(361 1 #reduceActionForExpression9: 32534548 false ) 
	#(214 0 #reduceActionForConstantArray2: 13176834 false ) 
	#(244 1 #reduceActionForFileType2: 17697794 false ) 
	#(204 1 #liftFirstValue: 11402242 false ) 
	#(213 1 #reduceActionForVariableExpression1: 12116995 false ) 
	#(192 1 #reduceActionForVariableExpression1: 9207809 false ) 
	#(213 1 #reduceActionForExpression9: 12116999 false ) 
	#(243 1 #liftFirstValue: 17603588 false ) 
	#(243 1 #liftFirstValue: 17603585 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8337409 false ) 
	#(243 1 #liftFirstValue: 17603586 false ) 
	#(243 1 #liftFirstValue: 17603587 false ) 
	#(187 1 #liftFirstValue: 8337417 false ) 
	#(187 1 #liftFirstValue: 8337412 false ) 
	#(187 1 #liftFirstValue: 8337413 false ) 
	#(187 1 #liftFirstValue: 8337418 false ) 
	#(213 1 #reduceActionForExpression9: 12116993 false ) 
	#(211 1 #liftFirstValue: 12030977 false ) 
	#(187 1 #liftFirstValue: 8337415 false ) 
	#(187 1 #liftFirstValue: 8337411 false ) 
	#(213 1 #liftFirstValue: 12117001 false ) 
	#(213 1 #reduceActionForExpression9: 12116998 false ) 
	#(213 1 #reduceActionForExpression9: 12116994 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7324673 false ) 
	#(167 1 #reduceActionForFullModuleName1: 5938177 false ) 
	#(193 0 #nil 9549825 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5749761 false ) 
	#(166 1 #reduceActionForUsesModule1: 5824513 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4685825 false ) 
	#(291 0 #nil 23796737 false ) 
	#(155 1 #reduceActionForMainMethod1: 4740097 false ) 
	#(361 2 #reduceActionForExpression14: 32534542 false ) 
	#(329 1 #reduceActionForStatements1: 28832769 false ) 
	#(285 0 #reduceActionForArgumentList1: 23285761 false ) 
	#(290 0 #nil 23709697 false ) 
	#(264 0 #reduceActionForOptionalType1: 19650561 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29547521 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29547522 false ) 
	#(376 2 #reduceActionForInheritedFunctionCall3: 35425283 false ) 
	#(361 2 #reduceActionForExpression15: 32534543 false ) 
	#(365 2 #reduceActionForAnonymousProcedureHeader1: 34236417 false ) 
	#(353 0 #reduceActionForOptionalType1: 31691777 false ) 
	#(338 0 #nil 30291969 false ) 
	#(336 1 #reduceActionForStatements1: 30086145 false ) 
	#(370 2 #reduceActionForSetConstructor2: 34896898 false ) 
	#(372 1 #reduceActionForSetValue1: 35127297 false ) 
	#(371 1 #reduceActionForStatements1: 35026945 false ) 
	#(361 2 #reduceActionForExpression16: 32534544 false ) 
	#(361 2 #reduceActionForExpression17: 32534545 false ) 
	#(380 1 #liftFirstValue: 36123655 false ) 
	#(380 1 #liftFirstValue: 36123656 false ) 
	#(380 1 #liftFirstValue: 36123663 false ) 
	#(380 1 #liftFirstValue: 36123664 false ) 
	#(380 1 #liftFirstValue: 36123652 false ) 
	#(379 1 #liftFirstValue: 36059137 false ) 
	#(380 1 #liftFirstValue: 36123649 false ) 
	#(380 1 #liftFirstValue: 36123661 false ) 
	#(380 1 #liftFirstValue: 36123653 false ) 
	#(380 1 #liftFirstValue: 36123666 false ) 
	#(380 1 #liftFirstValue: 36123667 false ) 
	#(380 1 #liftFirstValue: 36123654 false ) 
	#(380 1 #liftFirstValue: 36123650 false ) 
	#(380 1 #liftFirstValue: 36123659 false ) 
	#(380 1 #liftFirstValue: 36123660 false ) 
	#(380 1 #liftFirstValue: 36123651 false ) 
	#(380 1 #liftFirstValue: 36123662 false ) 
	#(380 1 #liftFirstValue: 36123665 false ) 
	#(380 1 #liftFirstValue: 36123658 false ) 
	#(380 1 #liftFirstValue: 36123657 false ) 
	#(361 2 #reduceActionForExpression19: 32534547 false ) 
	#(361 2 #reduceActionForExpression13: 32534541 false ) 
	#(379 1 #liftFirstValue: 36059138 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 33951745 false ) 
	#(364 2 #reduceActionForAnonymousProcedure1: 34124801 false ) 
	#(366 2 #reduceActionForAnonymousFunction1: 34336769 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 33951746 false ) 
	#(185 1 #reduceActionForEnumName1: 8116225 false ) 
	#(184 1 #reduceActionForStatements1: 8043521 false ) 
	#(216 1 #reduceActionForUsesModule1: 13404161 false ) 
	#(214 1 #reduceActionForConstantArray1: 13176833 false ) 
	#(215 1 #reduceActionForUsesModuleList1: 13223937 false ) 
	#(344 0 #nil 30883841 false ) 
	#(217 1 #reduceActionForConstantArray1: 13539329 false ) 
	#(218 1 #reduceActionForStatements1: 13582337 false ) 
	#(213 2 #reduceActionForExpression14: 12117007 false ) 
	#(213 2 #reduceActionForExpression15: 12117004 false ) 
	#(260 0 #reduceActionForOptionalType1: 19303425 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8337419 false ) 
	#(213 2 #reduceActionForExpression16: 12117005 false ) 
	#(213 2 #reduceActionForExpression17: 12117006 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8337410 false ) 
	#(192 2 #reduceActionForNamedType3: 9207811 false ) 
	#(246 0 #reduceActionForOptionalArguments1: 18020354 false ) 
	#(237 0 #reduceActionForMethodVariables2: 16145409 false ) 
	#(193 1 #liftFirstValue: 9549827 false ) 
	#(193 1 #liftFirstValue: 9549826 false ) 
	#(157 3 #reduceActionForPackageLine1: 4857857 false ) 
	#(164 3 #reduceActionForUsesList2: 5670914 false ) 
	#(159 1 #reduceActionForStatements1: 5037057 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6063105 false ) 
	#(381 0 #nil 36310017 false ) 
	#(150 3 #reduceActionForProgramFile2: 4256770 false ) 
	#(323 1 #liftFirstValue: 28253187 false ) 
	#(323 1 #liftFirstValue: 28253191 false ) 
	#(323 1 #liftFirstValue: 28253186 false ) 
	#(323 1 #liftFirstValue: 28253188 false ) 
	#(302 1 #reduceActionForProcedureDefinition2: 25467906 false ) 
	#(303 1 #reduceActionForExternalProcedureHeader1: 25634817 false ) 
	#(305 1 #reduceActionForExternalProcedureHeader1: 25832449 false ) 
	#(323 1 #liftFirstValue: 28253189 false ) 
	#(310 1 #reduceActionForFunctionDefinition2: 26510338 false ) 
	#(311 1 #reduceActionForExternalFunctionHeader1: 26672129 false ) 
	#(313 1 #reduceActionForExternalFunctionHeader1: 26864641 false ) 
	#(322 2 #reduceActionForMethodVariables1: 28181505 false ) 
	#(323 1 #liftFirstValue: 28253190 false ) 
	#(323 1 #liftFirstValue: 28253185 false ) 
	#(325 1 #reduceActionForVars1: 28491777 false ) 
	#(361 3 #reduceActionForExpression11: 32534539 false ) 
	#(358 3 #reduceActionForStatementBlock1: 32237569 false ) 
	#(290 1 #liftFirstValue: 23709699 false ) 
	#(290 1 #liftFirstValue: 23709700 false ) 
	#(290 1 #liftFirstValue: 23709698 false ) 
	#(285 1 #reduceActionForConstantArray1: 23285762 false ) 
	#(286 1 #reduceActionForStatements1: 23319553 false ) 
	#(367 3 #reduceActionForAnonymousFunctionHeader1: 34445313 false ) 
	#(352 3 #reduceActionForRaiseStatement1: 31583233 false ) 
	#(342 0 #nil 30694401 false ) 
	#(370 3 #reduceActionForSetConstructor1: 34896897 false ) 
	#(331 3 #reduceActionForPackageLine1: 29412353 false ) 
	#(331 3 #reduceActionForPackageLine1: 29412354 false ) 
	#(359 3 #reduceActionForAsmBlock1: 32342017 false ) 
	#(361 3 #reduceActionForExpression5: 32534533 false ) 
	#(378 1 #liftFirstValue: 35924993 false ) 
	#(377 1 #reduceActionForStatements1: 35817473 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33797122 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33797121 false ) 
	#(361 3 #reduceActionForExpression12: 32534540 false ) 
	#(374 1 #reduceActionForStatements1: 35314689 false ) 
	#(361 3 #reduceActionForExpression10: 32534538 false ) 
	#(183 3 #reduceActionForEnumType1: 7990273 false ) 
	#(213 3 #reduceActionForConstantExpression11: 12117003 false ) 
	#(344 1 #liftFirstValue: 30883842 false ) 
	#(244 3 #reduceActionForFileType1: 17697793 false ) 
	#(197 3 #reduceActionForSetType2: 10358786 false ) 
	#(197 3 #reduceActionForSetType1: 10358785 false ) 
	#(236 2 #reduceActionForQualifiedName1: 15944705 false ) 
	#(192 3 #reduceActionForPropertyExpression2: 9207810 false ) 
	#(228 0 #reduceActionForMethodVariables2: 15011841 false ) 
	#(227 1 #reduceActionForImplicitClassSection1: 14939137 false ) 
	#(210 3 #reduceActionForRangeType1: 11940865 false ) 
	#(220 1 #reduceActionForStatements1: 13841409 false ) 
	#(213 3 #reduceActionForPropertyExpression2: 12116996 false ) 
	#(213 3 #reduceActionForExpression10: 12116997 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8337416 false ) 
	#(240 3 #reduceActionForAttribute1: 17140737 false ) 
	#(181 1 #reduceActionForGenericTypeArgument1: 7570433 false ) 
	#(180 1 #reduceActionForStatements1: 7412737 false ) 
	#(167 3 #reduceActionForFullModuleName2: 5938178 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4569089 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4372481 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5451777 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5749762 false ) 
	#(166 3 #reduceActionForPackageLine1: 5824514 false ) 
	#(150 4 #reduceActionForProgramFile1: 4256769 false ) 
	#(154 2 #reduceActionForMethodVariables1: 4685826 false ) 
	#(158 3 #reduceActionForRequires1: 4956161 false ) 
	#(156 4 #reduceActionForPackageFile1: 4800513 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5556226 false ) 
	#(293 0 #reduceActionForMethodVariables2: 24029185 false ) 
	#(382 0 #nil 36420609 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6292481 false ) 
	#(171 1 #reduceActionForConstantValues1: 6371329 false ) 
	#(288 1 #reduceActionForStatements1: 23554049 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6657025 false ) 
	#(174 1 #reduceActionForConstantValues1: 6756353 false ) 
	#(326 2 #reduceActionForVarsVars2: 28521474 false ) 
	#(327 1 #reduceActionForConstantValues1: 28609537 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 6986753 false ) 
	#(177 1 #reduceActionForConstantValues1: 7067649 false ) 
	#(326 2 #reduceActionForVarsVars2: 28521473 false ) 
	#(302 2 #reduceActionForProcedureDefinition1: 25467905 false ) 
	#(279 0 #reduceActionForMethodVariables2: 21671937 false ) 
	#(310 2 #reduceActionForFunctionDefinition1: 26510337 false ) 
	#(321 3 #reduceActionForMethodComponents1: 28093441 false ) 
	#(329 3 #reduceActionForStatements2: 28832770 false ) 
	#(350 1 #reduceActionForBaseCaseLabel1: 31371265 false ) 
	#(351 0 #reduceActionForElseCase1: 31533057 false ) 
	#(346 1 #reduceActionForStatements1: 30988289 false ) 
	#(349 1 #reduceActionForStatements1: 31282177 false ) 
	#(348 1 #liftFirstValue: 31176705 false ) 
	#(196 3 #reduceActionForRequires1: 10294274 false ) 
	#(287 2 #reduceActionForArgument2: 23414786 false ) 
	#(264 2 #reduceActionForGotoStatement1: 19650562 false ) 
	#(334 4 #reduceActionForIfStatement1: 29752321 false ) 
	#(376 4 #reduceActionForInheritedFunctionCall2: 35425282 false ) 
	#(353 2 #reduceActionForGotoStatement1: 31691778 false ) 
	#(333 4 #reduceActionForRepeatStatement1: 29648897 false ) 
	#(341 0 #nil 30618625 false ) 
	#(339 1 #reduceActionForConstantValues1: 30451713 false ) 
	#(357 4 #reduceActionForLibraryLine1: 32132097 false ) 
	#(336 3 #reduceActionForStatements2: 30086146 false ) 
	#(335 4 #reduceActionForRepeatStatement1: 29991937 false ) 
	#(372 3 #reduceActionForSetValue2: 35127298 false ) 
	#(371 3 #reduceActionForStatements2: 35026946 false ) 
	#(361 4 #reduceActionForExpression4: 32534532 false ) 
	#(373 3 #reduceActionForRequires1: 35260417 false ) 
	#(191 1 #reduceActionForStatements1: 9044993 false ) 
	#(190 0 #reduceActionForOutsideGeneric1: 8974337 true ) 
	#(185 3 #reduceActionForEnumName2: 8116226 false ) 
	#(219 3 #reduceActionForConstantRecordField1: 13716481 false ) 
	#(184 3 #reduceActionForStatements2: 8043522 false ) 
	#(216 3 #reduceActionForPackageLine1: 13404162 false ) 
	#(215 3 #reduceActionForUsesModuleList2: 13223938 false ) 
	#(213 4 #reduceActionForConstantExpression10: 12117002 false ) 
	#(218 3 #reduceActionForStatements2: 13582338 false ) 
	#(260 2 #reduceActionForGotoStatement1: 19303426 false ) 
	#(248 1 #liftFirstValue: 18197506 false ) 
	#(248 1 #liftFirstValue: 18197505 false ) 
	#(247 1 #reduceActionForStatements1: 18085889 false ) 
	#(201 4 #reduceActionForRecordType1: 10992641 false ) 
	#(203 2 #reduceActionForRecordFieldList1: 11266049 false ) 
	#(238 1 #liftFirstValue: 16225292 false ) 
	#(238 1 #liftFirstValue: 16225293 false ) 
	#(237 2 #reduceActionForMethodVariables1: 16145410 false ) 
	#(238 1 #liftFirstValue: 16225288 false ) 
	#(238 1 #liftFirstValue: 16225290 false ) 
	#(238 1 #liftFirstValue: 16225291 false ) 
	#(238 1 #liftFirstValue: 16225289 false ) 
	#(239 1 #liftFirstValue: 16747526 false ) 
	#(238 1 #liftFirstValue: 16225284 false ) 
	#(238 1 #liftFirstValue: 16225286 false ) 
	#(255 1 #liftFirstValue: 18829313 false ) 
	#(255 1 #liftFirstValue: 18829314 false ) 
	#(255 1 #liftFirstValue: 18829315 false ) 
	#(255 1 #liftFirstValue: 18829316 false ) 
	#(255 1 #liftFirstValue: 18829317 false ) 
	#(254 1 #liftFirstValue: 18756609 false ) 
	#(265 1 #reduceActionForPropertyHeader1: 19698689 false ) 
	#(254 1 #liftFirstValue: 18756610 false ) 
	#(256 1 #liftFirstValue: 18967553 false ) 
	#(256 1 #liftFirstValue: 18967554 false ) 
	#(257 1 #liftFirstValue: 19051521 false ) 
	#(257 1 #liftFirstValue: 19051522 false ) 
	#(258 1 #liftFirstValue: 19132417 false ) 
	#(258 1 #liftFirstValue: 19132418 false ) 
	#(259 1 #liftFirstValue: 19210241 false ) 
	#(259 1 #liftFirstValue: 19210242 false ) 
	#(261 1 #liftFirstValue: 19395585 false ) 
	#(261 1 #liftFirstValue: 19395586 false ) 
	#(262 1 #liftFirstValue: 19470337 false ) 
	#(262 1 #liftFirstValue: 19470338 false ) 
	#(263 1 #liftFirstValue: 19560449 false ) 
	#(263 1 #liftFirstValue: 19560450 false ) 
	#(238 1 #liftFirstValue: 16225283 false ) 
	#(213 4 #reduceActionForExpression4: 12117000 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8337414 false ) 
	#(179 3 #reduceActionForRequires1: 7324674 false ) 
	#(223 0 #reduceActionForMethodVariables2: 14609409 false ) 
	#(250 1 #liftFirstValue: 18448386 false ) 
	#(250 1 #liftFirstValue: 18448385 false ) 
	#(234 0 #reduceActionForOptionalArguments1: 15783937 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7175169 false ) 
	#(182 1 #reduceActionForUsesModule1: 7718915 false ) 
	#(182 1 #reduceActionForUsesModule1: 7718916 false ) 
	#(186 1 #liftFirstValue: 8225796 false ) 
	#(186 1 #liftFirstValue: 8225793 false ) 
	#(186 1 #liftFirstValue: 8225797 false ) 
	#(186 1 #liftFirstValue: 8225794 false ) 
	#(186 1 #liftFirstValue: 8225795 false ) 
	#(249 1 #reduceActionForInterfaceType2: 18253826 false ) 
	#(384 1 #reduceActionForStatements1: 36634625 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4489217 false ) 
	#(159 3 #reduceActionForStatements2: 5037058 false ) 
	#(160 3 #reduceActionForUsesList2: 5146625 false ) 
	#(385 2 #reduceActionForGotoStatement1: 36725761 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6063106 false ) 
	#(169 1 #liftFirstValue: 6157315 false ) 
	#(169 1 #liftFirstValue: 6157314 false ) 
	#(169 1 #liftFirstValue: 6157313 false ) 
	#(169 1 #liftFirstValue: 6157316 false ) 
	#(169 1 #liftFirstValue: 6157317 false ) 
	#(169 1 #liftFirstValue: 6157318 false ) 
	#(292 0 #nil 23943169 false ) 
	#(381 2 #reduceActionForInitializationSection2: 36310018 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6371330 false ) 
	#(324 3 #reduceActionForLabels1: 28399617 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6756354 false ) 
	#(327 2 #reduceActionForMethodVariables1: 28609538 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7067650 false ) 
	#(283 2 #reduceActionForExternalMethodModifier1: 22342657 false ) 
	#(283 2 #reduceActionForExternalMethodModifier6: 22342662 false ) 
	#(304 3 #reduceActionForExternalProcedureHeaderVars1: 25714689 false ) 
	#(312 3 #reduceActionForExternalFunctionHeaderVars1: 26748929 false ) 
	#(345 2 #reduceActionForCaseOptionList1: 30936065 false ) 
	#(356 1 #liftFirstValue: 32099330 false ) 
	#(356 1 #liftFirstValue: 32099329 false ) 
	#(286 3 #reduceActionForStatements2: 23319554 false ) 
	#(376 5 #reduceActionForInheritedFunctionCall1: 35425281 false ) 
	#(338 3 #reduceActionForExcept3: 30291971 false ) 
	#(339 2 #reduceActionForMethodVariables1: 30451714 false ) 
	#(338 3 #reduceActionForExcept2: 30291970 false ) 
	#(342 2 #reduceActionForFinally2: 30694402 false ) 
	#(337 5 #reduceActionForTryStatement1: 30191617 false ) 
	#(377 3 #reduceActionForStatements2: 35817474 false ) 
	#(378 3 #reduceActionForMethodArgument2: 35924994 false ) 
	#(374 3 #reduceActionForStatements2: 35314690 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType1: 9626625 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType2: 9626626 false ) 
	#(197 5 #reduceActionForSetType3: 10358787 false ) 
	#(236 4 #reduceActionForQualifiedName2: 15944706 false ) 
	#(246 3 #reduceActionForRequires1: 18020353 false ) 
	#(245 5 #reduceActionForArrayType2: 17809410 false ) 
	#(245 5 #reduceActionForArrayType1: 17809409 false ) 
	#(203 3 #reduceActionForRecordFieldList2: 11266050 false ) 
	#(228 2 #reduceActionForMethodVariables1: 15011842 false ) 
	#(229 1 #liftFirstValue: 15074305 false ) 
	#(229 1 #liftFirstValue: 15074306 false ) 
	#(229 1 #liftFirstValue: 15074307 false ) 
	#(229 1 #liftFirstValue: 15074308 false ) 
	#(267 2 #reduceActionForClassPropertyHeader1: 19956737 false ) 
	#(308 2 #reduceActionForExternalClassProcedureHeader1: 26280961 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26392577 false ) 
	#(316 2 #reduceActionForExternalClassFunctionHeader1: 27314177 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27422721 false ) 
	#(238 2 #reduceActionForNewClassComponent2: 16225282 false ) 
	#(301 0 #reduceActionForOptionalType1: 25419777 false ) 
	#(269 0 #nil 20379649 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16225285 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16225287 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16747521 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16747522 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16747523 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16747524 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16747525 false ) 
	#(220 3 #reduceActionForStatements2: 13841410 false ) 
	#(181 3 #reduceActionForGenericTypeArgument2: 7570434 false ) 
	#(180 3 #reduceActionForStatements2: 7412738 false ) 
	#(182 2 #reduceActionForDefinedType2: 7718914 false ) 
	#(251 0 #nil 18503681 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7175170 false ) 
	#(383 3 #reduceActionForExportsDefinition1: 36524033 false ) 
	#(294 1 #liftFirstValue: 24088586 false ) 
	#(294 1 #liftFirstValue: 24088587 false ) 
	#(294 1 #liftFirstValue: 24088584 false ) 
	#(291 4 #reduceActionForImplementationSection2: 23796738 false ) 
	#(293 2 #reduceActionForMethodVariables1: 24029186 false ) 
	#(294 1 #liftFirstValue: 24088577 false ) 
	#(295 1 #reduceActionForConstructorDefinition2: 24376322 false ) 
	#(294 1 #liftFirstValue: 24088578 false ) 
	#(298 1 #reduceActionForDestructorDefinition2: 24905730 false ) 
	#(294 1 #liftFirstValue: 24088579 false ) 
	#(294 1 #liftFirstValue: 24088580 false ) 
	#(307 1 #reduceActionForClassProcedureDefinition2: 26088450 false ) 
	#(294 1 #liftFirstValue: 24088581 false ) 
	#(294 1 #liftFirstValue: 24088582 false ) 
	#(315 1 #reduceActionForClassFunctionDefinition2: 27126786 false ) 
	#(294 1 #liftFirstValue: 24088583 false ) 
	#(318 1 #reduceActionForClassOperatorDefinition2: 27537410 false ) 
	#(294 1 #liftFirstValue: 24088585 false ) 
	#(294 1 #liftFirstValue: 24088588 false ) 
	#(382 2 #reduceActionForFinalizationSection2: 36420610 false ) 
	#(161 6 #reduceActionForUnitFile1: 5229569 false ) 
	#(288 3 #reduceActionForStatements2: 23554050 false ) 
	#(280 0 #reduceActionForMethodVariables2: 21742593 false ) 
	#(226 0 #nil 14878721 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22342660 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22342658 false ) 
	#(284 1 #liftFirstValue: 22997003 false ) 
	#(284 1 #liftFirstValue: 22996997 false ) 
	#(284 1 #liftFirstValue: 22997006 false ) 
	#(284 1 #liftFirstValue: 22997001 false ) 
	#(284 1 #liftFirstValue: 22997007 false ) 
	#(284 1 #liftFirstValue: 22997010 false ) 
	#(284 1 #liftFirstValue: 22997005 false ) 
	#(284 1 #liftFirstValue: 22997013 false ) 
	#(284 1 #liftFirstValue: 22997012 false ) 
	#(284 1 #liftFirstValue: 22997011 false ) 
	#(284 1 #liftFirstValue: 22997004 false ) 
	#(284 1 #liftFirstValue: 22996993 false ) 
	#(284 1 #liftFirstValue: 22996994 false ) 
	#(284 1 #liftFirstValue: 22996998 false ) 
	#(284 1 #liftFirstValue: 22997009 false ) 
	#(284 1 #liftFirstValue: 22996996 false ) 
	#(284 1 #liftFirstValue: 22996999 false ) 
	#(284 1 #liftFirstValue: 22997014 false ) 
	#(284 1 #liftFirstValue: 22997008 false ) 
	#(284 1 #liftFirstValue: 22996995 false ) 
	#(284 1 #liftFirstValue: 22997002 false ) 
	#(284 1 #liftFirstValue: 22997000 false ) 
	#(279 2 #reduceActionForMethodVariables1: 21671938 false ) 
	#(281 1 #liftFirstValue: 21846017 false ) 
	#(281 1 #liftFirstValue: 21846018 false ) 
	#(350 3 #reduceActionForBaseCaseLabel2: 31371266 false ) 
	#(351 2 #reduceActionForElseCase2: 31533058 false ) 
	#(343 6 #reduceActionForCaseStatement1: 30761985 false ) 
	#(346 3 #reduceActionForStatements2: 30988290 false ) 
	#(347 3 #reduceActionForCaseOption1: 31090689 false ) 
	#(349 3 #reduceActionForStatements2: 31282178 false ) 
	#(348 3 #reduceActionForCaseLabel2: 31176706 false ) 
	#(355 6 #reduceActionForForInStatement1: 31952897 false ) 
	#(289 0 #reduceActionForOptionalType1: 23645185 false ) 
	#(334 6 #reduceActionForForInStatement1: 29752322 false ) 
	#(368 6 #reduceActionForMemExpression1: 34554881 false ) 
	#(368 6 #reduceActionForMemExpression1: 34554882 false ) 
	#(341 2 #reduceActionForPossibleExceptElse2: 30618626 false ) 
	#(191 3 #reduceActionForStatements2: 9044994 false ) 
	#(188 5 #reduceActionForInstantiatedGenericTypeArguments1: 8773633 false ) 
	#(202 6 #reduceActionForRecordHelperType1: 11098113 false ) 
	#(199 1 #reduceActionForStatements1: 10792961 false ) 
	#(198 3 #reduceActionForTwoItemSetNameList1: 10636289 false ) 
	#(247 3 #reduceActionForStatements2: 18085890 false ) 
	#(230 2 #reduceActionForPrivateClassSection2: 15187970 false ) 
	#(231 2 #reduceActionForProtectedClassSection2: 15380482 false ) 
	#(232 2 #reduceActionForPublicClassSection1: 15587329 false ) 
	#(233 2 #reduceActionForPublishedClassSection1: 15679489 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24553473 false ) 
	#(299 3 #reduceActionForExternalConstructorHeader1: 25077761 false ) 
	#(319 3 #reduceActionForExternalConstructorHeader1: 27724801 false ) 
	#(200 3 #reduceActionForMetaclassType1: 10896385 false ) 
	#(224 1 #liftFirstValue: 14684161 false ) 
	#(224 1 #liftFirstValue: 14684162 false ) 
	#(223 2 #reduceActionForMethodVariables1: 14609410 false ) 
	#(221 3 #reduceActionForNewClassType2: 13961218 false ) 
	#(235 1 #reduceActionForStatements1: 15845377 false ) 
	#(182 3 #reduceActionForPackageLine1: 7718917 false ) 
	#(182 3 #reduceActionForPackageLine1: 7718913 false ) 
	#(252 0 #reduceActionForMethodVariables2: 18579457 false ) 
	#(384 3 #reduceActionForStatements2: 36634626 false ) 
	#(292 2 #reduceActionForImplementationCode2: 23943170 false ) 
	#(295 2 #reduceActionForConstructorDefinition1: 24376321 false ) 
	#(298 2 #reduceActionForDestructorDefinition1: 24905729 false ) 
	#(307 2 #reduceActionForClassProcedureDefinition1: 26088449 false ) 
	#(315 2 #reduceActionForClassFunctionDefinition1: 27126785 false ) 
	#(318 2 #reduceActionForClassOperatorDefinition1: 27537409 false ) 
	#(306 5 #reduceActionForNonExternalProcedureHeaderVars1: 25918465 false ) 
	#(226 1 #liftFirstValue: 14878722 false ) 
	#(282 2 #reduceActionForExternalMethodModifier6: 21920769 false ) 
	#(287 5 #reduceActionForArgument1: 23414785 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType1: 9938945 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType2: 9938946 false ) 
	#(230 3 #reduceActionForPrivateClassSection1: 15187969 false ) 
	#(231 3 #reduceActionForProtectedClassSection1: 15380481 false ) 
	#(301 2 #reduceActionForGotoStatement1: 25419778 false ) 
	#(268 0 #reduceActionForPropertyValues1: 20048897 false ) 
	#(234 3 #reduceActionForRequires1: 15783938 false ) 
	#(314 6 #reduceActionForNonExternalFunctionHeaderVars1: 26947585 false ) 
	#(280 2 #reduceActionForMethodVariables1: 21742594 false ) 
	#(175 5 #reduceActionForResource1: 6831105 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22342661 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22342659 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier2: 21920770 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 21920772 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 21920771 false ) 
	#(354 8 #reduceActionForForStatement1: 31759361 false ) 
	#(289 2 #reduceActionForGotoStatement1: 23645186 false ) 
	#(340 5 #reduceActionForOnDo1: 30516225 false ) 
	#(199 3 #reduceActionForStatements2: 10792962 false ) 
	#(297 5 #reduceActionForNonExternalConstructorHeader1: 24689665 false ) 
	#(300 5 #reduceActionForNonExternalDestructorHeader1: 25210881 false ) 
	#(241 5 #reduceActionForInterfaceFunctionAssignment1: 17227777 false ) 
	#(242 5 #reduceActionForInterfaceProcedureAssignment1: 17411073 false ) 
	#(269 3 #reduceActionForPropertyArrayAccessors2: 20379650 false ) 
	#(238 5 #reduceActionForNewClassComponent1: 16225281 false ) 
	#(235 3 #reduceActionForStatements2: 15845378 false ) 
	#(225 5 #reduceActionForOldClassType1: 14729217 false ) 
	#(251 3 #reduceActionForGuid2: 18503682 false ) 
	#(249 5 #reduceActionForInterfaceType1: 18253825 false ) 
	#(252 2 #reduceActionForMethodVariables1: 18579458 false ) 
	#(253 1 #liftFirstValue: 18671618 false ) 
	#(253 1 #liftFirstValue: 18671617 false ) 
	#(328 6 #reduceActionForVariable1: 28708865 false ) 
	#(206 1 #reduceActionForStatements1: 11600897 false ) 
	#(208 1 #reduceActionForStatements1: 11815937 false ) 
	#(209 1 #liftFirstValue: 11902977 false ) 
	#(297 6 #reduceActionForNonExternalConstructorHeader2: 24689666 false ) 
	#(300 6 #reduceActionForNonExternalDestructorHeader2: 25210882 false ) 
	#(274 1 #reduceActionForPropertyDefault2: 21054466 false ) 
	#(274 1 #reduceActionForPropertyDefault3: 21054467 false ) 
	#(278 0 #nil 21571585 false ) 
	#(268 2 #reduceActionForPropertyValues2: 20048898 false ) 
	#(268 2 #reduceActionForCaseOptionList1: 20048899 false ) 
	#(268 2 #reduceActionForPropertyValues4: 20048900 false ) 
	#(268 2 #reduceActionForPropertyValues8: 20048904 false ) 
	#(268 2 #reduceActionForPropertyValues5: 20048901 false ) 
	#(268 2 #reduceActionForPropertyValues7: 20048903 false ) 
	#(268 2 #reduceActionForPropertyValues6: 20048902 false ) 
	#(222 6 #reduceActionForClassHelperType2: 14193666 false ) 
	#(221 6 #reduceActionForNewClassType1: 13961217 false ) 
	#(172 7 #reduceActionForConstantValue1: 6466561 false ) 
	#(205 6 #reduceActionForVariantRecordPart1: 11451393 false ) 
	#(320 7 #reduceActionForNonExternalClassOperatorHeader1: 27867137 false ) 
	#(274 2 #reduceActionForPropertyDefault1: 21054465 false ) 
	#(273 2 #reduceActionForPropertyDispid1: 20742145 false ) 
	#(276 1 #reduceActionForStatements1: 21362689 false ) 
	#(275 2 #reduceActionForPropertyImplements1: 21258241 false ) 
	#(270 2 #reduceActionForPropertyIndex1: 20476929 false ) 
	#(271 2 #reduceActionForPropertyReader1: 20570113 false ) 
	#(277 2 #reduceActionForPropertyStored1: 21482497 false ) 
	#(272 2 #reduceActionForPropertyWriter1: 20655105 false ) 
	#(266 7 #reduceActionForPropertyHeaderVars1: 19759105 false ) 
	#(206 3 #reduceActionForStatements2: 11600898 false ) 
	#(208 3 #reduceActionForStatements2: 11815938 false ) 
	#(273 3 #reduceActionForPropertyDispid2: 20742146 false ) 
	#(273 3 #reduceActionForPropertyDispid3: 20742147 false ) 
	#(278 2 #reduceActionForPropertyModifiers2: 21571586 false ) 
	#(276 3 #reduceActionForStatements2: 21362690 false ) 
	#(222 9 #reduceActionForClassHelperType1: 14193665 false ) 
	#(207 5 #reduceActionForVariantType1: 11715585 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiProgramNode #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 21 0 66 0 25 0 84 0 6 0 89 0 29 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 33 0 119 0 37 0 122 0 6 0 123 0 41 0 149 0 45 0 150 0 49 0 151 0 53 0 152 0 57 0 153 0 61 0 156 0 65 0 157 0 69 0 161 0 73 0 162 0 77 0 164] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 0 185 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 0 185 1 102 0 185 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 161 0 183 1 113 0 187 1 117 0 192 1 161 0 194 1 161 0 195 1 113 0 197 1 113 0 201 1 113 0 202 1 141 0 204 1 113 0 210 1 149 0 211 1 153 0 212 1 157 0 213 1 161 0 243 1 113 0 244 1 113 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 1 185 0 130 1 189 0 139 1 193 0 178 1 197 0 240] 
#[1 1 201 0 139 1 205 0 167] 
#[1 1 201 0 139 1 209 0 167] 
#[1 1 201 0 139 1 213 0 167] 
#[1 1 201 0 139 1 217 0 167] 
#[1 1 201 0 139 1 221 0 165 1 225 0 166 1 229 0 167] 
#[0 0 0 1 131] 
#[0 0 22 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 233 0 164] 
#[0 0 26 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 1 237 0 164] 
#[0 0 30 1 131] 
#[1 1 241 0 103 1 245 0 158] 
#[0 0 34 1 131] 
#[1 0 38 0 40 0 38 0 48 0 38 0 56 0 38 0 61 1 249 0 63 1 253 0 163 0 42 1 131] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 2 1 0 155 2 5 1 65 2 9 1 66] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 17 1 105 0 249 1 106 2 17 1 107 2 17 1 108 1 5 1 109 2 17 1 110 1 13 1 111 2 17 1 112 1 21 1 113 2 17 1 114 1 29 1 119 2 17 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 21 1 105 0 249 1 106 2 21 1 107 2 21 1 108 1 5 1 109 2 21 1 110 1 13 1 111 2 21 1 112 1 21 1 113 2 21 1 114 1 29 1 119 2 21 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 25 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 33 1 105 0 249 1 106 2 33 1 107 2 33 1 108 1 5 1 109 2 33 1 110 1 13 1 111 2 33 1 112 1 21 1 113 2 33 1 114 1 29 1 119 2 33 1 120 1 37 1 130] 
#[1 2 13 0 139 2 37 1 113] 
#[1 2 41 0 2 0 50 0 9 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 45 0 196] 
#[1 2 49 0 139 2 53 0 141] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 57 1 105 0 249 1 106 2 57 1 107 2 57 1 108 1 5 1 109 2 57 1 110 1 13 1 111 2 57 1 112 1 21 1 113 2 57 1 114 1 29 1 119 2 57 1 120 1 37 1 130] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 18 0 54 0 20 0 54 0 30 0 54 0 33 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 39 0 54 0 40 0 54 0 41 0 54 0 48 0 54 0 49 0 54 0 57 0 54 0 58 0 54 0 59 0 54 0 61 0 54 0 64 0 54 0 71 0 54 0 74 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 96 0 54 0 97 0 54 0 108 0 54 0 109 0 54 0 112 0 54 0 114 0 54 0 116 0 54 0 121 0 54 0 127 0 54 0 128 0 54 0 129 0 54 0 130 0 54 0 131 0 54 0 132 0 54 0 133 0 54 0 134 0 54 0 135 0 54 0 136 0 54 0 137 0 54 0 138 2 61 0 139 0 54 1 131] 
#[0 2 65 0 130] 
#[0 2 69 0 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 73 1 105 0 249 1 106 2 73 1 107 2 73 1 108 1 5 1 109 2 73 1 110 1 13 1 111 2 73 1 112 1 21 1 113 2 73 1 114 1 29 1 119 2 73 1 120 1 37 1 130] 
#[1 2 41 0 2 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 2 77 0 196] 
#[1 0 81 0 2 0 85 0 15 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 101 0 52 0 113 0 60 0 58 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 58 0 78 0 129 0 89 0 58 0 121 0 153 0 130 0 157 0 135 0 161 0 136 0 58 0 137 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 81 1 105 0 249 1 106 2 81 1 107 2 81 1 108 1 5 1 109 2 81 1 110 1 13 1 111 2 81 1 112 1 21 1 113 2 81 1 114 1 29 1 119 2 81 1 120 1 37 1 130 0 58 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 85 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 89 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 93 1 105 0 249 1 106 2 93 1 107 2 93 1 108 1 5 1 109 2 93 1 110 1 13 1 111 2 93 1 112 1 21 1 113 2 93 1 114 1 29 1 119 2 93 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 97 1 80 2 101 1 105 0 249 1 106 2 101 1 107 2 101 1 108 1 5 1 109 2 101 1 110 1 13 1 111 2 101 1 112 1 21 1 113 2 101 1 114 1 29 1 119 2 101 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 2 105 0 131 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 109 1 105 0 249 1 106 2 109 1 107 2 109 1 108 1 5 1 109 2 109 1 110 1 13 1 111 2 109 1 112 1 21 1 113 2 109 1 114 2 113 1 115 2 117 1 116 1 29 1 119 2 109 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 121 1 105 0 249 1 106 2 121 1 107 2 121 1 108 1 5 1 109 2 121 1 110 1 13 1 111 2 121 1 112 1 21 1 113 2 121 1 114 1 29 1 119 2 121 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 125 1 105 0 249 1 106 2 125 1 107 2 125 1 108 1 5 1 109 2 125 1 110 1 13 1 111 2 125 1 112 1 21 1 113 2 125 1 114 1 29 1 119 2 125 1 120 1 37 1 130] 
#[1 0 62 0 2 0 62 0 4 0 62 0 6 0 62 0 8 2 129 0 9 0 62 0 10 0 62 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 18 0 62 0 20 0 62 0 35 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 62 0 58 0 62 0 61 0 62 0 64 0 62 0 71 0 62 0 78 0 62 0 80 0 62 0 108 0 62 0 109 0 62 0 121 0 62 0 129 0 62 0 130 0 62 0 132 0 62 0 133 0 62 0 135 0 62 0 136 0 62 0 137 0 62 0 138 0 62 1 131] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 2 133 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 131] 
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
#[0 2 137 0 21] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 0 134 0 39 0 134 0 40 0 134 0 41 0 134 0 48 0 134 0 49 2 245 0 58 0 134 0 61 2 245 0 64 2 245 0 71 0 134 0 78 2 245 0 80 2 245 0 108 2 245 0 109 0 134 0 121 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 0 134 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 0 134 1 131] 
#[1 0 138 0 2 0 138 0 3 0 138 0 4 0 138 0 5 0 138 0 6 0 138 0 7 0 138 0 8 0 138 0 9 0 138 0 10 0 11 0 11 0 138 0 12 0 138 0 13 0 138 0 14 0 138 0 18 0 138 0 20 0 138 0 30 0 138 0 33 0 138 0 35 0 138 0 36 0 138 0 37 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 0 138 0 57 0 138 0 58 0 138 0 59 0 138 0 61 0 138 0 64 0 138 0 71 0 138 0 74 0 138 0 77 0 138 0 78 0 138 0 80 0 138 0 96 0 138 0 97 0 138 0 108 0 138 0 109 0 138 0 112 0 138 0 114 0 138 0 116 0 138 0 121 0 138 0 127 0 138 0 128 0 138 0 129 0 138 0 130 0 138 0 131 0 138 0 132 0 138 0 133 0 138 0 134 0 138 0 135 0 138 0 136 0 138 0 137 0 138 0 138 2 253 0 188 3 1 0 189 0 138 1 131] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 5 1 65 2 9 1 66] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 9 1 65 2 9 1 66] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 15 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 18 0 162 0 20 0 162 0 30 0 162 0 33 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 39 0 162 0 40 0 162 0 41 0 162 0 48 0 162 0 49 0 162 0 57 0 162 0 58 0 162 0 59 0 162 0 61 0 162 0 64 0 162 0 71 0 162 0 74 0 162 0 77 0 162 0 78 0 162 0 80 0 162 0 96 0 162 0 97 0 162 0 108 0 162 0 109 0 162 0 112 0 162 0 114 0 162 0 116 0 162 0 121 0 162 0 127 0 162 0 128 0 162 0 129 0 162 0 130 0 162 0 131 0 162 0 132 0 162 0 133 0 162 0 134 0 162 0 135 0 162 0 136 0 162 0 137 0 162 0 138 3 13 0 188 3 1 0 189 0 162 1 131] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 17 0 2 0 182 0 3 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 21 0 139 3 25 0 140 1 153 0 141 1 177 0 143 1 105 0 147 3 29 0 184 3 33 0 185 1 153 0 212 3 37 0 213 3 41 0 214 3 45 0 215 3 49 0 216 3 53 0 217 3 57 0 218 3 61 0 219 3 37 1 114 1 177 1 119 1 181 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 3 69 0 213 3 69 1 114 1 177 1 119 1 181 1 130] 
#[1 0 186 0 3 0 186 0 5 0 186 0 14 0 186 0 16 0 186 0 21 0 186 0 23 0 186 0 27 0 186 0 30 0 186 0 31 0 186 0 33 0 186 0 36 0 186 0 52 0 186 0 57 0 186 0 59 0 186 0 65 0 186 0 74 3 73 0 77 0 186 0 87 0 186 0 89 0 186 0 96 0 186 0 97 0 186 0 104 0 186 0 112 0 186 0 115 0 186 0 118 0 186 0 123 0 186 0 127 0 186 0 128 0 186 0 130 0 186 0 131 0 186 0 132 0 186 0 137 0 186 1 131] 
#[1 2 41 0 2 0 50 0 9 3 77 0 196] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 3 81 0 213 3 81 1 114 1 177 1 119 1 181 1 130] 
#[0 0 190 0 19 0 98] 
#[1 2 41 0 2 0 50 0 77 0 50 0 137 3 85 0 196] 
#[0 3 89 0 54] 
#[0 3 93 0 116] 
#[0 3 97 0 77] 
#[1 3 101 0 139 3 105 0 236] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 3 109 0 213 3 109 1 114 1 177 1 119 1 181 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 3 113 0 213 3 113 1 114 1 177 1 119 1 181 1 130] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 3 121 0 183 3 121 0 187 1 117 0 192 3 121 0 194 3 121 0 195 3 121 0 197 3 121 0 201 3 121 0 202 1 141 0 204 3 121 0 210 1 149 0 211 1 153 0 212 1 157 0 213 3 121 0 243 3 121 0 244 3 121 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 0 194 0 2 0 198 0 3 0 194 0 4 0 198 0 5 0 19 0 6 0 194 0 7 0 194 0 8 0 19 0 11 0 194 0 12 0 194 0 13 0 198 0 14 0 198 0 16 0 194 0 18 0 194 0 20 0 198 0 21 0 198 0 23 0 198 0 27 0 198 0 30 0 198 0 31 0 198 0 33 0 194 0 35 0 198 0 36 0 198 0 52 0 198 0 57 0 194 0 58 0 198 0 59 0 194 0 64 0 198 0 65 0 194 0 71 0 198 0 74 0 198 0 77 0 194 0 80 0 198 0 87 0 198 0 89 0 198 0 96 0 198 0 97 0 198 0 104 0 194 0 108 0 194 0 109 0 198 0 112 0 198 0 115 0 198 0 118 0 198 0 123 0 198 0 127 0 198 0 128 0 194 0 129 0 198 0 130 0 198 0 131 0 19 0 132 0 194 0 133 0 194 0 135 0 194 0 136 0 198 0 137 0 198 1 131] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 0 206 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 0 210 0 16 0 210 0 130 0 0 1 131] 
#[1 0 214 0 3 0 214 0 5 3 125 0 6 0 142 0 11 0 214 0 14 0 214 0 16 0 214 0 21 0 214 0 23 0 214 0 27 0 214 0 30 0 214 0 31 0 214 0 33 0 214 0 36 0 214 0 52 0 214 0 57 0 214 0 59 0 214 0 65 0 214 0 74 0 214 0 77 0 214 0 87 0 214 0 89 0 214 0 96 0 214 0 97 0 214 0 104 0 214 0 112 0 214 0 115 0 214 0 118 0 214 0 123 0 214 0 127 0 214 0 128 0 214 0 130 0 214 0 131 0 214 0 132 0 214 0 137 3 129 0 188 3 1 0 189 0 214 1 131] 
#[0 0 218 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 133 0 19 3 137 0 98] 
#[0 0 238 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 3 141 0 7] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 145 0 2 0 246 0 3 3 153 0 4 0 246 0 5 3 149 0 6 0 246 0 7 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 0 246 0 14 0 246 0 16 3 153 0 18 3 153 0 20 0 246 0 21 0 246 0 23 0 246 0 27 0 246 0 30 0 246 0 31 0 246 0 33 3 153 0 35 0 246 0 36 0 246 0 52 0 246 0 57 3 153 0 58 0 246 0 59 3 153 0 64 0 246 0 65 3 153 0 71 0 246 0 74 0 246 0 77 3 153 0 80 0 246 0 87 0 246 0 89 0 246 0 96 0 246 0 97 0 246 0 104 3 153 0 108 3 153 0 109 0 246 0 112 0 246 0 115 0 246 0 118 0 246 0 123 0 246 0 127 0 246 0 128 3 153 0 129 0 246 0 130 0 246 0 131 0 23 0 132 3 153 0 133 3 153 0 135 3 153 0 136 0 246 0 137 3 153 1 124 0 246 1 131] 
#[1 3 157 0 16 3 161 0 130] 
#[0 0 250 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 3 165 0 213 3 165 1 114 1 177 1 119 1 181 1 130] 
#[1 3 169 0 11 1 14 0 14 3 173 0 179] 
#[0 0 0 1 131] 
#[0 3 177 0 139] 
#[0 1 18 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 3 181 0 6 3 193 0 31 3 193 0 87 1 22 0 137 3 193 0 193] 
#[1 3 181 0 6 3 197 0 137] 
#[1 3 181 0 6 3 201 0 31 3 201 0 87 1 22 0 137 3 201 0 193] 
#[1 3 181 0 6 3 205 0 31 3 205 0 87 1 22 0 137 3 205 0 193] 
#[1 3 209 0 5 3 213 0 137] 
#[0 1 26 0 5 0 137] 
#[1 1 30 0 5 3 181 0 6 3 217 0 58 1 30 0 137] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 3 221 0 155 2 5 1 65 2 9 1 66] 
#[1 1 34 0 21 1 34 0 23 1 34 0 27 1 34 0 43 1 34 0 52 1 34 0 65 1 34 0 89 1 34 0 104 1 34 0 115 1 34 0 118 1 34 0 123 3 225 0 154] 
#[1 1 201 0 139 3 229 0 159 3 233 0 167] 
#[1 3 237 0 29 3 241 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 3 245 0 164] 
#[1 1 38 0 40 1 38 0 48 3 249 0 56 1 38 0 61 3 253 1 35] 
#[0 4 1 0 6] 
#[0 1 42 0 6] 
#[1 0 10 0 21 0 89 0 23 4 5 0 27 4 9 0 52 4 13 0 65 4 17 0 89 4 21 0 104 4 25 0 115 4 29 0 118 4 33 0 123 4 89 0 170 4 89 0 173 4 89 0 176 4 89 1 46 4 53 1 47 4 57 1 48 4 61 1 49 4 65 1 50 4 89 1 54 4 73 1 55 4 77 1 56 4 81 1 57 4 85 1 58 4 89 1 67 4 89 1 68 4 89 1 69 4 101 1 70 4 105 1 102 4 105 1 103 0 241 1 104] 
#[0 0 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 141 0 2 4 109 0 3 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 2 141 0 2 1 46 0 3 1 46 0 4 1 46 0 5 2 149 0 6 1 46 0 7 1 46 0 8 1 46 0 9 1 46 0 10 0 27 0 11 0 31 0 12 0 35 0 13 0 39 0 14 1 46 0 18 1 46 0 20 1 46 0 30 1 46 0 33 1 46 0 35 1 46 0 36 1 46 0 37 1 46 0 39 1 46 0 40 1 46 0 41 1 46 0 48 1 46 0 49 1 46 0 57 0 43 0 58 1 46 0 59 1 46 0 61 1 46 0 64 1 46 0 71 1 46 0 74 1 46 0 77 1 46 0 78 1 46 0 80 1 46 0 96 1 46 0 97 1 46 0 108 1 46 0 109 1 46 0 112 1 46 0 114 1 46 0 116 1 46 0 121 1 46 0 127 1 46 0 128 1 46 0 129 2 217 0 130 1 46 0 131 0 47 0 132 0 51 0 133 1 46 0 134 1 46 0 135 1 46 0 136 1 46 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 1 46 1 131] 
#[1 4 113 0 40 4 117 0 137] 
#[0 1 50 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 4 121 0 77 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 4 125 0 10 4 129 0 58] 
#[1 1 54 0 3 4 157 0 27 4 157 0 81 4 157 0 123 1 58 0 139 4 145 1 29 4 149 1 30 4 153 1 31 4 157 1 34] 
#[1 4 161 0 9 1 62 0 21 1 62 0 23 1 62 0 27 1 62 0 52 1 62 0 65 1 62 0 89 1 62 0 104 1 62 0 115 1 62 0 118 1 62 0 123 4 165 1 8] 
#[0 1 66 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 1 70 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 4 169 0 114 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 4 173 0 2 1 74 0 3 1 74 0 4 1 74 0 5 1 74 0 6 1 74 0 7 1 74 0 8 1 74 0 9 1 74 0 10 1 74 0 11 1 74 0 12 1 74 0 13 1 74 0 14 1 74 0 18 1 74 0 20 1 74 0 30 1 74 0 33 1 74 0 35 1 74 0 36 1 74 0 37 1 74 0 39 1 74 0 40 1 74 0 41 1 74 0 48 1 74 0 49 1 74 0 57 1 74 0 58 1 74 0 59 1 74 0 61 1 74 0 64 1 74 0 71 1 74 0 74 1 74 0 77 1 74 0 78 1 74 0 80 1 74 0 96 1 74 0 97 1 74 0 108 1 74 0 109 1 74 0 112 1 74 0 114 1 74 0 116 1 74 0 121 1 74 0 127 1 74 0 128 1 74 0 129 1 74 0 130 1 74 0 131 1 74 0 132 1 74 0 133 1 74 0 134 1 74 0 135 1 74 0 136 1 74 0 137 1 74 0 138 1 74 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 4 177 1 105 0 249 1 106 4 177 1 107 4 177 1 108 1 5 1 109 4 177 1 110 1 13 1 111 4 177 1 112 1 21 1 113 4 177 1 114 1 29 1 119 4 177 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 4 181 1 105 0 249 1 106 4 181 1 107 4 181 1 108 1 5 1 109 4 181 1 110 1 13 1 111 4 181 1 112 1 21 1 113 4 181 1 114 1 29 1 119 4 181 1 120 1 37 1 130] 
#[1 2 141 0 2 1 78 0 3 2 245 0 4 1 78 0 5 2 149 0 6 1 78 0 7 2 245 0 8 1 78 0 9 2 157 0 10 0 55 0 11 0 59 0 12 0 63 0 13 0 67 0 14 2 245 0 18 2 245 0 20 1 78 0 30 1 78 0 33 2 245 0 35 1 78 0 36 1 78 0 37 1 78 0 39 1 78 0 40 1 78 0 41 1 78 0 48 1 78 0 49 1 78 0 57 0 71 0 58 1 78 0 59 1 78 0 61 2 245 0 64 2 245 0 71 1 78 0 74 1 78 0 77 1 78 0 78 2 245 0 80 1 78 0 96 1 78 0 97 2 245 0 108 2 245 0 109 1 78 0 112 1 78 0 114 1 78 0 116 1 78 0 121 1 78 0 127 1 78 0 128 2 245 0 129 2 217 0 130 1 78 0 131 0 75 0 132 0 79 0 133 1 78 0 134 2 245 0 135 2 245 0 136 1 78 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 1 78 1 131] 
#[0 1 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 1 86 0 39 1 86 0 40 1 86 0 41 1 86 0 48 1 86 0 49 2 245 0 58 1 86 0 61 2 245 0 64 2 245 0 71 1 86 0 78 2 245 0 80 2 245 0 108 2 245 0 109 1 86 0 121 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 4 185 0 134 2 245 0 135 2 245 0 136 1 86 0 137 2 237 0 138 4 189 1 97 2 241 1 117 2 245 1 123 2 245 1 124 1 86 1 131] 
#[1 4 193 0 121 4 117 0 137] 
#[1 1 90 0 40 4 197 0 41 1 90 0 49 4 117 0 137 4 201 1 82] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 4 205 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 4 209 0 5 4 213 0 36] 
#[1 2 141 0 2 2 245 0 4 1 94 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 1 94 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 141 0 2 2 245 0 4 1 102 0 5 2 149 0 6 4 217 0 7 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 1 102 0 131 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 4 221 0 5 4 225 0 131] 
#[0 1 106 0 5 0 131] 
#[1 2 141 0 2 1 110 0 3 2 245 0 4 1 110 0 5 2 149 0 6 1 110 0 7 2 245 0 8 1 110 0 9 1 110 0 10 0 83 0 11 0 87 0 12 0 91 0 13 0 95 0 14 1 110 0 18 1 110 0 20 1 110 0 30 1 110 0 33 2 245 0 35 1 110 0 36 1 110 0 37 1 110 0 39 1 110 0 40 1 110 0 41 1 110 0 48 1 110 0 49 1 110 0 57 0 99 0 58 1 110 0 59 1 110 0 61 1 110 0 64 2 245 0 71 1 110 0 74 1 110 0 77 1 110 0 78 1 110 0 80 1 110 0 96 1 110 0 97 2 245 0 108 2 245 0 109 1 110 0 112 1 110 0 114 1 110 0 116 1 110 0 121 1 110 0 127 1 110 0 128 1 110 0 129 2 217 0 130 1 110 0 131 0 103 0 132 0 107 0 133 1 110 0 134 1 110 0 135 1 110 0 136 1 110 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 1 110 1 131] 
#[1 2 141 0 2 1 114 0 3 2 245 0 4 1 114 0 5 2 149 0 6 1 114 0 7 2 245 0 8 1 114 0 9 1 114 0 10 0 111 0 11 0 115 0 12 0 119 0 13 0 123 0 14 1 114 0 18 1 114 0 20 1 114 0 30 1 114 0 33 2 245 0 35 1 114 0 36 1 114 0 37 1 114 0 39 1 114 0 40 1 114 0 41 1 114 0 48 1 114 0 49 1 114 0 57 0 127 0 58 1 114 0 59 1 114 0 61 1 114 0 64 2 245 0 71 1 114 0 74 1 114 0 77 1 114 0 78 1 114 0 80 1 114 0 96 1 114 0 97 2 245 0 108 2 245 0 109 1 114 0 112 1 114 0 114 1 114 0 116 1 114 0 121 1 114 0 127 1 114 0 128 1 114 0 129 2 217 0 130 1 114 0 131 0 131 0 132 0 135 0 133 1 114 0 134 1 114 0 135 1 114 0 136 1 114 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 1 114 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 4 229 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 4 229 1 102 4 229 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 4 233 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 4 233 1 102 4 233 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[0 4 237 0 40] 
#[1 0 81 0 2 4 241 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 4 245 1 105 0 249 1 106 4 245 1 107 4 245 1 108 1 5 1 109 4 245 1 110 1 13 1 111 4 245 1 112 1 21 1 113 4 245 1 114 1 29 1 119 4 245 1 120 4 249 1 121 4 253 1 122 1 37 1 130] 
#[0 1 118 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 5 1 0 1 5 5 0 139] 
#[0 1 122 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 5 9 1 105 0 249 1 106 5 9 1 107 5 9 1 108 1 5 1 109 5 9 1 110 1 13 1 111 5 9 1 112 1 21 1 113 5 9 1 114 1 29 1 119 5 9 1 120 1 37 1 130] 
#[0 1 126 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 130 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 134 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 138 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 1 142 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 146 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 150 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 154 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 158 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 162 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 166 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 170 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 174 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 178 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 5 13 1 105 0 249 1 106 5 13 1 107 5 13 1 108 1 5 1 109 5 13 1 110 1 13 1 111 5 13 1 112 1 21 1 113 5 13 1 114 5 17 1 118 1 29 1 119 5 13 1 120 1 37 1 130] 
#[0 1 182 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 186 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 190 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 194 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 5 21 1 105 0 249 1 106 5 21 1 107 5 21 1 108 1 5 1 109 5 21 1 110 1 13 1 111 5 21 1 112 1 21 1 113 5 21 1 114 1 29 1 119 5 21 1 120 1 37 1 130] 
#[0 1 206 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 5 25 0 11] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 17 0 2 0 182 0 3 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 25 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 3 37 0 213 3 41 0 214 3 45 0 215 3 49 0 216 3 53 0 217 3 57 0 218 3 61 0 219 3 37 1 114 1 177 1 119 1 181 1 130] 
#[1 1 226 0 3 1 226 0 5 5 29 0 14] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 8 5 33 0 9 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 18 0 194 0 20 0 194 0 35 0 194 0 58 0 194 0 64 0 194 0 71 0 194 0 80 0 194 0 108 0 194 0 109 0 194 0 129 0 194 0 132 0 194 0 133 0 194 0 135 0 194 0 136] 
#[1 5 37 0 3 5 41 0 5] 
#[0 1 230 0 3 0 5] 
#[1 3 145 0 2 1 234 0 3 3 153 0 4 1 234 0 5 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 5 45 0 14 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[0 5 49 0 3] 
#[1 1 238 0 3 5 53 0 5] 
#[0 1 242 0 3 0 5] 
#[1 1 246 0 3 5 61 0 137 5 61 1 88] 
#[1 1 250 0 3 0 139 0 137] 
#[0 1 254 0 3 0 137] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 145 0 2 2 2 0 3 2 2 0 4 2 2 0 5 3 149 0 6 2 2 0 7 2 2 0 8 2 2 0 9 0 143 0 11 0 147 0 12 0 151 0 13 2 2 0 14 2 2 0 16 2 2 0 18 2 2 0 20 2 2 0 21 2 2 0 23 2 2 0 27 2 2 0 30 2 2 0 31 2 2 0 33 2 2 0 35 2 2 0 36 2 2 0 52 2 2 0 57 0 155 0 58 2 2 0 59 2 2 0 64 2 2 0 65 2 2 0 71 2 2 0 74 2 2 0 77 2 2 0 80 2 2 0 87 2 2 0 89 2 2 0 96 2 2 0 97 2 2 0 104 2 2 0 108 2 2 0 109 2 2 0 112 2 2 0 115 2 2 0 118 2 2 0 123 2 2 0 127 2 2 0 128 2 2 0 129 2 2 0 130 2 2 0 131 0 159 0 132 0 163 0 133 2 2 0 135 2 2 0 136 2 2 0 137 3 153 1 124 2 2 1 131] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 5 69 0 183 5 69 0 187 1 117 0 192 5 69 0 194 5 69 0 195 5 69 0 197 5 69 0 201 5 69 0 202 1 141 0 204 5 69 0 210 1 149 0 211 1 153 0 212 1 157 0 213 5 69 0 243 5 69 0 244 5 69 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 5 73 0 9] 
#[1 3 145 0 2 2 6 0 3 3 153 0 4 2 6 0 5 3 149 0 6 2 6 0 7 3 153 0 8 2 6 0 9 0 167 0 11 0 171 0 12 0 175 0 13 2 6 0 14 2 6 0 16 3 153 0 18 3 153 0 20 2 6 0 21 2 6 0 23 2 6 0 27 2 6 0 30 2 6 0 31 2 6 0 33 3 153 0 35 2 6 0 36 2 6 0 52 2 6 0 57 0 179 0 58 2 6 0 59 3 153 0 64 2 6 0 65 3 153 0 71 2 6 0 74 2 6 0 77 3 153 0 80 2 6 0 87 2 6 0 89 2 6 0 96 2 6 0 97 2 6 0 104 3 153 0 108 3 153 0 109 2 6 0 112 2 6 0 115 2 6 0 118 2 6 0 123 2 6 0 127 2 6 0 128 3 153 0 129 2 6 0 130 2 6 0 131 0 183 0 132 0 187 0 133 3 153 0 135 3 153 0 136 2 6 0 137 3 153 1 124 2 6 1 131] 
#[1 5 77 0 77 2 10 0 137 5 81 1 4] 
#[0 5 85 0 50] 
#[1 5 89 0 52 5 93 0 89] 
#[1 5 97 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 5 101 0 210 1 149 0 211 1 153 0 212 5 105 0 213 5 105 1 114 1 177 1 119 1 181 1 130] 
#[1 1 14 0 2 1 14 0 3 1 14 0 5 1 14 0 6 1 14 0 9 3 169 0 11 1 14 0 14 1 14 0 16 1 14 0 21 1 14 0 23 1 14 0 24 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 36 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 48 1 14 0 49 1 14 0 52 1 14 0 57 1 14 0 59 1 14 0 61 1 14 0 65 1 14 0 74 1 14 0 77 1 14 0 78 1 14 0 87 1 14 0 88 1 14 0 89 1 14 0 91 1 14 0 92 1 14 0 93 1 14 0 94 1 14 0 96 1 14 0 97 1 14 0 104 1 14 0 112 1 14 0 113 1 14 0 115 1 14 0 118 1 14 0 121 1 14 0 123 1 14 0 127 1 14 0 128 1 14 0 130 1 14 0 131 1 14 0 132 1 14 0 137 1 14 0 139 5 109 0 179 1 14 1 131] 
#[1 2 14 0 3 2 14 0 5 5 113 0 6 2 14 0 14 2 14 0 16 2 14 0 21 2 14 0 23 2 14 0 27 2 14 0 30 2 14 0 31 2 14 0 33 2 14 0 36 2 14 0 52 2 14 0 57 2 14 0 59 2 14 0 65 2 14 0 74 2 14 0 77 2 14 0 87 2 14 0 89 2 14 0 96 2 14 0 97 2 14 0 104 2 14 0 112 2 14 0 115 2 14 0 118 2 14 0 123 2 14 0 127 2 14 0 128 2 14 0 130 2 14 0 131 2 14 0 132 2 14 0 137 2 14 1 131] 
#[1 3 145 0 2 2 18 0 3 3 153 0 4 2 18 0 5 3 149 0 6 2 18 0 7 3 153 0 8 2 18 0 9 0 191 0 11 0 195 0 12 0 199 0 13 2 18 0 14 2 18 0 16 2 18 0 18 2 18 0 20 2 18 0 21 2 18 0 23 2 18 0 27 2 18 0 30 2 18 0 31 2 18 0 33 3 153 0 35 2 18 0 36 2 18 0 52 2 18 0 57 0 203 0 58 2 18 0 59 2 18 0 64 2 18 0 65 3 153 0 71 2 18 0 74 2 18 0 77 2 18 0 80 2 18 0 87 2 18 0 89 2 18 0 96 2 18 0 97 2 18 0 104 3 153 0 108 3 153 0 109 2 18 0 112 2 18 0 115 2 18 0 118 2 18 0 123 2 18 0 127 2 18 0 128 2 18 0 129 2 18 0 130 2 18 0 131 0 207 0 132 0 211 0 133 2 18 0 135 2 18 0 136 2 18 0 137 3 153 1 124 2 18 1 131] 
#[1 3 145 0 2 2 22 0 3 3 153 0 4 2 22 0 5 3 149 0 6 2 22 0 7 3 153 0 8 2 22 0 9 0 215 0 11 0 219 0 12 0 223 0 13 2 22 0 14 2 22 0 16 2 22 0 18 2 22 0 20 2 22 0 21 2 22 0 23 2 22 0 27 2 22 0 30 2 22 0 31 2 22 0 33 3 153 0 35 2 22 0 36 2 22 0 52 2 22 0 57 0 227 0 58 2 22 0 59 2 22 0 64 2 22 0 65 3 153 0 71 2 22 0 74 2 22 0 77 2 22 0 80 2 22 0 87 2 22 0 89 2 22 0 96 2 22 0 97 2 22 0 104 3 153 0 108 3 153 0 109 2 22 0 112 2 22 0 115 2 22 0 118 2 22 0 123 2 22 0 127 2 22 0 128 2 22 0 129 2 22 0 130 2 22 0 131 0 231 0 132 0 235 0 133 2 22 0 135 2 22 0 136 2 22 0 137 3 153 1 124 2 22 1 131] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 26 0 3 2 26 0 5 2 26 0 14 2 26 0 16 2 26 0 21 2 26 0 23 2 26 0 27 2 26 0 30 2 26 0 31 2 26 0 33 2 26 0 36 2 26 0 52 2 26 0 57 2 26 0 59 2 26 0 65 2 26 0 74 2 26 0 77 2 26 0 87 2 26 0 89 2 26 0 96 2 26 0 97 2 26 0 104 2 26 0 112 2 26 0 115 2 26 0 118 2 26 0 123 2 26 0 127 2 26 0 128 3 161 0 130 2 26 0 131 2 26 0 132 2 26 0 137 2 26 1 131] 
#[0 5 117 0 140] 
#[0 2 30 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 34 0 77 5 121 0 130 5 125 0 246] 
#[1 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 5 129 0 203 5 133 0 227 5 137 0 237] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 5 141 0 211 1 153 0 212 1 157 0 213 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 5 145 0 213 5 149 0 220 5 145 1 114 1 177 1 119 1 181 1 130] 
#[0 5 153 0 140] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 5 157 0 213 5 157 1 114 1 177 1 119 1 181 1 130] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 5 161 0 183 5 161 0 187 1 117 0 192 5 161 0 194 5 161 0 195 5 161 0 197 5 161 0 201 5 161 0 202 1 141 0 204 5 161 0 210 1 149 0 211 1 153 0 212 1 157 0 213 5 161 0 243 5 161 0 244 5 161 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 5 165 0 213 5 165 1 114 1 177 1 119 1 181 1 130] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 5 169 0 131 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 5 173 0 139 5 177 0 180 5 181 0 181] 
#[0 5 185 0 14] 
#[1 3 169 0 11 1 14 0 14 5 189 0 179] 
#[0 5 193 0 139] 
#[0 2 42 0 14 0 31 0 137] 
#[0 2 46 0 14 0 31 0 137] 
#[0 5 197 0 137] 
#[0 2 50 0 103] 
#[0 5 201 0 137] 
#[0 5 205 0 137] 
#[1 1 201 0 139 5 209 0 166 1 229 0 167] 
#[0 2 54 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 5 213 0 143] 
#[0 5 217 0 6] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 5 221 0 43 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 5 225 0 155 2 5 1 65 2 9 1 66 5 229 1 127] 
#[1 5 233 0 5 5 237 0 137] 
#[1 2 58 0 5 3 181 0 6 2 58 0 137] 
#[1 1 201 0 139 5 241 0 165 1 225 0 166 1 229 0 167] 
#[1 5 245 0 40 5 249 1 129] 
#[1 2 62 0 27 2 62 0 40 2 62 0 48 2 62 0 52 2 62 0 56 2 62 0 61 2 62 0 89 2 62 0 104 2 62 0 115 2 62 0 118 2 62 0 123 5 253 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 37 0 122 0 6 0 123 6 1 0 164] 
#[1 2 66 0 40 2 66 0 48 6 5 0 61 6 9 1 125] 
#[0 2 70 1 131] 
#[1 6 13 0 139 6 17 0 171 6 21 0 172] 
#[1 3 101 0 139 6 25 0 236] 
#[1 6 29 0 139 6 33 1 32] 
#[1 3 101 0 139 6 37 0 236] 
#[1 6 41 0 139 6 45 0 174 6 49 0 175] 
#[1 6 29 0 139 6 53 1 32 6 57 1 71 6 61 1 72] 
#[1 1 185 0 130 1 189 0 139 6 65 0 177 6 69 0 178 1 197 0 240] 
#[1 6 29 0 139 6 53 1 32 6 73 1 71 6 61 1 72] 
#[0 2 74 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 78 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 90 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 94 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 77 1 65 2 9 1 66] 
#[1 2 98 0 3 2 98 0 21 2 98 0 23 2 98 0 24 2 98 0 26 2 98 0 27 2 98 0 28 2 98 0 32 2 98 0 40 6 81 0 44 2 98 0 48 6 85 0 51 2 98 0 52 2 98 0 56 2 98 0 61 2 98 0 65 2 98 0 88 2 98 0 89 2 98 0 91 2 98 0 92 2 98 0 93 2 98 0 94 2 98 0 104 2 98 0 113 2 98 0 115 2 98 0 118 2 98 0 123 2 98 0 130 2 98 0 139 6 89 1 27] 
#[0 2 102 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 106 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 110 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 6 93 1 65 2 9 1 66] 
#[1 2 114 0 3 2 114 0 21 2 114 0 23 2 114 0 24 2 114 0 26 2 114 0 27 2 114 0 28 2 114 0 32 2 114 0 40 6 81 0 44 2 114 0 48 6 85 0 51 2 114 0 52 2 114 0 56 2 114 0 61 2 114 0 65 2 114 0 88 2 114 0 89 2 114 0 91 2 114 0 92 2 114 0 93 2 114 0 94 2 114 0 104 2 114 0 113 2 114 0 115 2 114 0 118 2 114 0 123 2 114 0 130 2 114 0 139 6 97 1 27] 
#[0 2 118 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 122 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 126 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 2 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 6 101 0 137] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 138 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 105 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 105 1 102 6 105 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 6 109 0 213 6 113 1 89 6 117 1 90 6 121 1 91 6 125 1 92 6 129 1 93 6 133 1 94 6 109 1 114 1 177 1 119 1 181 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 137 1 105 0 249 1 106 6 137 1 107 6 137 1 108 1 5 1 109 6 137 1 110 1 13 1 111 6 137 1 112 1 21 1 113 6 137 1 114 1 29 1 119 6 137 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 141 1 105 0 249 1 106 6 141 1 107 6 141 1 108 1 5 1 109 6 141 1 110 1 13 1 111 6 141 1 112 1 21 1 113 6 141 1 114 1 29 1 119 6 141 1 120 1 37 1 130] 
#[0 2 142 0 139] 
#[0 2 146 0 139] 
#[0 2 150 0 139] 
#[0 6 145 0 3] 
#[1 2 154 0 3 2 154 0 131 6 149 0 137] 
#[0 2 158 0 3 0 131 0 137] 
#[1 6 29 0 139 6 153 1 32] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 6 157 0 183 6 157 0 187 1 117 0 192 6 157 0 194 6 157 0 195 6 157 0 197 6 157 0 201 6 157 0 202 1 141 0 204 6 157 0 210 1 149 0 211 1 153 0 212 1 157 0 213 6 157 0 243 6 157 0 244 6 157 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 2 162 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 161 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 161 1 102 6 161 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[1 0 81 0 2 6 165 0 3 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 4 245 1 105 0 249 1 106 4 245 1 107 4 245 1 108 1 5 1 109 4 245 1 110 1 13 1 111 4 245 1 112 1 21 1 113 4 245 1 114 1 29 1 119 4 245 1 120 6 169 1 121 4 253 1 122 1 37 1 130] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 6 173 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 6 177 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 3 101 0 139 6 181 0 236] 
#[0 2 166 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 185 1 105 0 249 1 106 6 185 1 107 6 185 1 108 1 5 1 109 6 185 1 110 1 13 1 111 6 185 1 112 1 21 1 113 6 185 1 114 1 29 1 119 6 185 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 6 189 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 193 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 6 197 1 83 6 201 1 84 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 2 170 0 40 6 205 0 49 6 209 1 86] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 213 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 213 1 102 6 213 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 217 1 105 0 249 1 106 6 217 1 107 6 217 1 108 1 5 1 109 6 217 1 110 1 13 1 111 6 217 1 112 1 21 1 113 6 217 1 114 1 29 1 119 6 217 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 221 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 6 221 1 102 6 221 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 6 225 1 105 0 249 1 106 6 225 1 107 6 225 1 108 1 5 1 109 6 225 1 110 1 13 1 111 6 225 1 112 1 21 1 113 6 225 1 114 1 29 1 119 6 225 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 2 109 1 105 0 249 1 106 2 109 1 107 2 109 1 108 1 5 1 109 2 109 1 110 1 13 1 111 2 109 1 112 1 21 1 113 2 109 1 114 6 229 1 116 1 29 1 119 2 109 1 120 1 37 1 130] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 178 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 186 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 141 0 2 2 194 0 3 2 245 0 4 2 194 0 5 2 149 0 6 2 245 0 8 2 194 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 6 233 0 3 6 237 0 5] 
#[1 2 198 0 3 2 198 0 5 6 241 0 9] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 141 0 2 2 210 0 3 2 245 0 4 2 210 0 5 2 149 0 6 2 210 0 7 2 245 0 8 2 210 0 9 2 157 0 10 0 239 0 11 0 243 0 12 0 247 0 13 0 251 0 14 2 245 0 18 2 245 0 20 2 210 0 30 2 210 0 33 2 245 0 35 2 210 0 36 2 210 0 37 2 210 0 39 2 210 0 40 2 210 0 41 2 210 0 48 2 210 0 49 2 210 0 57 0 255 0 58 2 210 0 59 2 210 0 61 2 245 0 64 2 245 0 71 2 210 0 74 2 210 0 77 2 210 0 78 2 245 0 80 2 210 0 96 2 210 0 97 2 245 0 108 2 245 0 109 2 210 0 112 2 210 0 114 2 210 0 116 2 210 0 121 2 210 0 127 2 210 0 128 2 245 0 129 2 217 0 130 2 210 0 131 1 3 0 132 1 7 0 133 2 210 0 134 2 245 0 135 2 245 0 136 2 210 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 2 210 1 131] 
#[1 2 141 0 2 2 245 0 4 2 214 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 214 0 131 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 6 245 0 5 6 249 0 131] 
#[1 2 141 0 2 2 218 0 3 2 245 0 4 2 218 0 5 2 149 0 6 2 218 0 7 2 245 0 8 2 218 0 9 2 157 0 10 1 11 0 11 1 15 0 12 1 19 0 13 1 23 0 14 2 245 0 18 2 245 0 20 2 218 0 30 2 218 0 33 2 245 0 35 2 218 0 36 2 218 0 37 2 218 0 39 2 218 0 40 2 218 0 41 2 218 0 48 2 218 0 49 2 218 0 57 1 27 0 58 2 218 0 59 2 218 0 61 2 245 0 64 2 245 0 71 2 218 0 74 2 218 0 77 2 218 0 78 2 245 0 80 2 218 0 96 2 218 0 97 2 245 0 108 2 245 0 109 2 218 0 112 2 218 0 114 2 218 0 116 2 218 0 121 2 218 0 127 2 218 0 128 2 245 0 129 2 217 0 130 2 218 0 131 1 31 0 132 1 35 0 133 2 218 0 134 2 245 0 135 2 245 0 136 2 218 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 2 218 1 131] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 161 0 183 6 253 0 187 7 1 0 191 1 117 0 192 1 161 0 194 1 161 0 195 6 253 0 197 6 253 0 201 6 253 0 202 1 141 0 204 6 253 0 210 1 149 0 211 1 153 0 212 1 157 0 213 1 161 0 243 6 253 0 244 6 253 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 7 5 0 213 7 5 1 114 1 177 1 119 1 181 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 7 9 0 213 7 9 1 114 1 177 1 119 1 181 1 130] 
#[0 2 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 21 0 139 7 13 0 185] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 7 17 0 213 7 17 1 114 1 177 1 119 1 181 1 130] 
#[0 2 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 3 37 0 213 7 21 0 216 3 37 1 114 1 177 1 119 1 181 1 130] 
#[0 2 230 0 3] 
#[0 7 25 0 3] 
#[1 7 29 0 140 7 33 0 219] 
#[1 2 234 0 3 2 234 0 5 2 234 0 14 3 157 0 16 2 234 0 21 2 234 0 23 2 234 0 27 2 234 0 30 2 234 0 31 2 234 0 33 2 234 0 36 2 234 0 52 2 234 0 57 2 234 0 59 2 234 0 65 2 234 0 74 2 234 0 77 2 234 0 87 2 234 0 89 2 234 0 96 2 234 0 97 2 234 0 104 2 234 0 112 2 234 0 115 2 234 0 118 2 234 0 123 2 234 0 127 2 234 0 128 3 161 0 130 2 234 0 131 2 234 0 132 2 234 0 137 2 234 1 131] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 7 37 0 183 7 37 0 187 1 117 0 192 7 37 0 194 7 37 0 195 7 37 0 197 7 37 0 201 7 37 0 202 1 141 0 204 7 37 0 210 1 149 0 211 1 153 0 212 1 157 0 213 7 37 0 243 7 37 0 244 7 37 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 7 41 0 76] 
#[0 7 45 0 137] 
#[1 3 101 0 139 7 49 0 236] 
#[1 2 41 0 2 0 50 0 9 7 53 0 196] 
#[1 2 41 0 2 0 50 0 137 7 57 0 196] 
#[1 3 17 0 2 0 182 0 3 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 7 61 0 140 1 153 0 141 1 177 0 143 1 105 0 147 7 65 0 198 1 153 0 212 3 37 0 213 3 41 0 214 3 45 0 215 3 49 0 216 3 53 0 217 3 57 0 218 3 61 0 219 3 37 1 114 1 177 1 119 1 181 1 130] 
#[0 2 238 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 145 0 2 2 242 0 3 3 153 0 4 2 242 0 5 3 149 0 6 0 246 0 7 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 2 242 0 14 2 242 0 16 3 153 0 18 3 153 0 20 2 242 0 21 2 242 0 23 2 242 0 27 2 242 0 30 2 242 0 31 2 242 0 33 3 153 0 35 2 242 0 36 2 242 0 52 2 242 0 57 3 153 0 58 2 242 0 59 3 153 0 64 2 242 0 65 3 153 0 71 2 242 0 74 2 242 0 77 3 153 0 80 2 242 0 87 2 242 0 89 2 242 0 96 2 242 0 97 2 242 0 104 3 153 0 108 3 153 0 109 2 242 0 112 2 242 0 115 2 242 0 118 2 242 0 123 2 242 0 127 2 242 0 128 3 153 0 129 2 242 0 130 2 242 0 131 1 39 0 132 3 153 0 133 3 153 0 135 3 153 0 136 2 242 0 137 3 153 1 124 2 242 1 131] 
#[0 2 246 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 69 0 139] 
#[0 2 250 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 7 85 0 210 1 149 0 211 1 153 0 212 7 77 0 213 7 81 0 247 7 85 0 248 7 77 1 114 1 177 1 119 1 181 1 130] 
#[0 7 89 0 77] 
#[0 7 93 0 40] 
#[1 2 254 0 3 2 254 0 24 2 254 0 40 2 254 0 88 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 113 7 97 0 228] 
#[1 3 2 0 3 3 2 0 24 7 101 0 26 4 5 0 27 7 105 0 28 7 109 0 32 3 2 0 40 7 113 0 52 3 2 0 88 7 117 0 89 7 121 0 91 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 113 4 25 0 115 4 29 0 118 4 33 0 123 1 185 0 130 6 29 0 139 7 133 0 170 7 133 0 176 7 133 0 238 7 133 0 239 7 141 0 240 7 133 0 241 7 133 0 242 7 133 0 254 7 133 0 255 7 133 1 0 7 133 1 1 7 133 1 2 7 133 1 3 7 133 1 5 7 133 1 6 7 133 1 7 7 133 1 9 7 193 1 10 7 133 1 11 7 201 1 32 7 133 1 40 7 209 1 41 7 133 1 43 7 217 1 44 7 133 1 47 4 57 1 48 7 133 1 49 4 65 1 50 7 133 1 52 7 133 1 53 7 133 1 55 4 77 1 56 7 133 1 57 4 85 1 58 7 133 1 60 7 133 1 61 7 133 1 63 8 1 1 64 7 133 1 69 4 101 1 70] 
#[0 3 6 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 145 0 2 3 10 0 3 3 153 0 4 3 10 0 5 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 8 9 0 3 8 13 0 5] 
#[0 3 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 145 0 2 3 18 0 3 3 153 0 4 3 18 0 5 3 149 0 6 3 18 0 7 3 153 0 8 3 18 0 9 1 43 0 11 1 47 0 12 1 51 0 13 3 18 0 14 3 18 0 16 3 153 0 18 3 153 0 20 3 18 0 21 3 18 0 23 3 18 0 27 3 18 0 30 3 18 0 31 3 18 0 33 3 153 0 35 3 18 0 36 3 18 0 52 3 18 0 57 1 55 0 58 3 18 0 59 3 153 0 64 3 18 0 65 3 153 0 71 3 18 0 74 3 18 0 77 3 153 0 80 3 18 0 87 3 18 0 89 3 18 0 96 3 18 0 97 3 18 0 104 3 153 0 108 3 153 0 109 3 18 0 112 3 18 0 115 3 18 0 118 3 18 0 123 3 18 0 127 3 18 0 128 3 153 0 129 3 18 0 130 3 18 0 131 1 59 0 132 1 63 0 133 3 153 0 135 3 153 0 136 3 18 0 137 3 153 1 124 3 18 1 131] 
#[1 3 22 0 3 3 22 0 5 3 22 0 14 3 22 0 21 3 22 0 23 3 22 0 27 3 22 0 30 3 22 0 31 3 22 0 33 3 22 0 36 3 22 0 52 3 22 0 57 3 22 0 59 3 22 0 65 3 22 0 74 3 22 0 77 3 22 0 87 3 22 0 89 3 22 0 96 3 22 0 97 3 22 0 104 3 22 0 112 3 22 0 115 3 22 0 118 3 22 0 123 3 22 0 127 3 22 0 128 3 161 0 130 3 22 0 131 3 22 0 132 3 22 0 137 3 22 1 131] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 8 17 0 131 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[0 3 26 0 26 0 28 0 32 0 52 0 89 0 139] 
#[1 3 30 0 5 8 21 0 9 3 30 0 132] 
#[1 8 25 0 5 8 29 0 132] 
#[0 3 34 0 5 0 132] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 8 33 0 26 8 93 0 34 1 49 0 46 1 53 0 52 8 93 0 63 1 57 0 75 8 45 0 76 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 8 49 0 182 8 53 0 183 8 57 0 186 8 61 0 187 1 117 0 192 8 65 0 194 8 69 0 195 8 61 0 197 8 57 0 200 8 61 0 201 8 61 0 202 1 141 0 204 8 61 0 210 1 149 0 211 1 153 0 212 1 157 0 213 8 57 0 221 8 57 0 222 8 57 0 225 1 161 0 243 8 61 0 244 8 61 0 245 8 57 0 249 8 93 0 250 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 8 97 0 14] 
#[0 3 38 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 3 42 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 46 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 3 50 0 40 0 48 0 56 0 61 0 63 1 131] 
#[0 3 54 0 5 0 137] 
#[0 3 58 0 5 0 137] 
#[0 3 62 1 131] 
#[1 8 101 0 139 8 105 1 128] 
#[0 8 109 0 6] 
#[0 3 66 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 1 201 0 139 8 113 0 167] 
#[0 3 70 0 29] 
#[1 3 209 0 5 8 117 0 137] 
#[0 8 121 0 6] 
#[0 3 74 1 131] 
#[1 4 5 0 27 3 78 0 40 3 78 0 48 4 9 0 52 3 78 0 56 3 78 0 61 4 17 0 89 4 21 0 104 4 25 0 115 4 29 0 118 4 33 0 123 8 125 0 169 8 125 0 170 8 125 0 173 8 125 0 176 8 125 1 2 8 125 1 5 8 125 1 47 4 57 1 48 8 125 1 49 4 65 1 50 8 125 1 55 4 77 1 56 8 125 1 57 4 85 1 58 8 125 1 69 4 101 1 70] 
#[1 3 82 0 23 3 82 0 26 3 82 0 27 3 82 0 28 3 82 0 32 3 82 0 40 3 82 0 43 3 82 0 48 3 82 0 52 3 82 0 61 3 82 0 89 3 82 0 104 3 82 0 115 3 82 0 118 3 82 0 123 8 153 1 37] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 8 157 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 3 86 0 40 8 161 0 48 8 165 1 126] 
#[1 4 161 0 9 1 62 0 14 8 169 1 8] 
#[1 3 90 0 3 3 90 0 21 3 90 0 23 3 90 0 24 3 90 0 26 3 90 0 27 3 90 0 28 3 90 0 32 3 90 0 40 3 90 0 43 3 90 0 48 3 90 0 52 3 90 0 56 3 90 0 61 3 90 0 65 3 90 0 88 3 90 0 89 3 90 0 91 3 90 0 92 3 90 0 93 3 90 0 94 3 90 0 104 3 90 0 113 3 90 0 115 3 90 0 118 3 90 0 123 3 90 0 130 6 13 0 139 8 173 0 172] 
#[0 3 94 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 41 0 2 5 113 0 6 0 50 0 9 0 50 0 137 8 177 0 196] 
#[0 3 98 0 3 0 5 0 9 0 131 0 137] 
#[1 8 181 0 5 8 185 0 137] 
#[1 2 41 0 2 5 113 0 6 0 50 0 137 8 189 0 196] 
#[0 8 193 0 14] 
#[1 3 102 0 21 3 102 0 23 3 102 0 26 3 102 0 27 3 102 0 28 3 102 0 32 3 102 0 40 3 102 0 43 3 102 0 48 3 102 0 52 3 102 0 56 3 102 0 61 3 102 0 65 3 102 0 89 3 102 0 104 3 102 0 115 3 102 0 118 3 102 0 123 6 41 0 139 8 197 0 175] 
#[0 3 106 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 8 181 0 5 8 201 0 9] 
#[1 3 110 0 3 3 110 0 21 3 110 0 23 3 110 0 24 3 110 0 26 3 110 0 27 3 110 0 28 3 110 0 32 3 110 0 40 3 110 0 43 3 110 0 48 3 110 0 52 3 110 0 56 3 110 0 61 3 110 0 65 3 110 0 88 3 110 0 89 3 110 0 91 3 110 0 92 3 110 0 93 3 110 0 94 3 110 0 104 3 110 0 113 3 110 0 115 3 110 0 118 3 110 0 123 3 110 0 130 6 29 0 139 6 53 1 32 8 205 1 72] 
#[0 3 114 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 118 0 3 3 118 0 21 3 118 0 23 3 118 0 24 3 118 0 26 3 118 0 27 3 118 0 28 3 118 0 32 3 118 0 40 3 118 0 43 3 118 0 48 3 118 0 52 3 118 0 56 3 118 0 61 3 118 0 65 3 118 0 88 3 118 0 89 3 118 0 91 3 118 0 92 3 118 0 93 3 118 0 94 3 118 0 104 3 118 0 113 3 118 0 115 3 118 0 118 3 118 0 123 1 185 0 130 1 189 0 139 8 209 0 178 1 197 0 240] 
#[0 3 122 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 126 0 3 3 126 0 21 3 126 0 23 3 126 0 24 3 126 0 26 3 126 0 27 3 126 0 28 3 126 0 32 3 126 0 40 3 126 0 43 3 126 0 48 3 126 0 52 3 126 0 56 3 126 0 61 3 126 0 65 3 126 0 88 3 126 0 89 3 126 0 91 3 126 0 92 3 126 0 93 3 126 0 94 3 126 0 104 3 126 0 113 3 126 0 115 3 126 0 118 3 126 0 123 3 126 0 130 6 29 0 139 6 53 1 32 8 205 1 72] 
#[0 3 130 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 8 213 0 137 8 217 0 139 8 221 0 143] 
#[0 8 225 0 137] 
#[1 3 134 0 3 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 8 229 1 23] 
#[0 3 138 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 134 0 3 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 8 233 1 23] 
#[0 3 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 3 146 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 145 0 2 3 153 0 4 3 150 0 5 3 149 0 6 8 237 0 7 3 153 0 8 3 150 0 9 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 8 241 0 39 3 154 0 40 8 245 1 95] 
#[1 1 246 0 39 1 246 0 40 8 249 0 137 8 253 1 88] 
#[0 3 158 0 39 0 40 0 137] 
#[0 9 1 0 9] 
#[0 9 5 0 5] 
#[1 3 162 0 5 3 166 0 9] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 9 17 0 37 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 9 17 0 116 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 9 17 1 100 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 9 21 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[0 3 170 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 4 157 0 27 4 157 0 81 4 157 0 123 1 58 0 139 9 25 1 31 4 157 1 34] 
#[1 3 174 0 3 8 181 0 5 9 29 0 9 3 174 0 131 3 174 0 137] 
#[1 3 178 0 14 3 157 0 16 3 178 0 21 3 178 0 23 3 178 0 27 3 178 0 30 3 178 0 33 3 178 0 36 3 178 0 52 3 178 0 57 3 178 0 59 3 178 0 65 3 178 0 74 3 178 0 77 3 178 0 89 3 178 0 96 3 178 0 97 3 178 0 104 3 178 0 112 3 178 0 115 3 178 0 118 3 178 0 123 3 178 0 127 3 178 0 128 3 161 0 130 3 178 0 137] 
#[1 9 33 0 39 3 182 0 40 3 182 0 41 3 182 0 48 3 182 0 49 3 182 0 61 3 182 0 78 3 182 0 121 3 182 0 137 3 182 1 131] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 9 37 0 3 6 237 0 5] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 9 41 1 105 0 249 1 106 9 41 1 107 9 41 1 108 1 5 1 109 9 41 1 110 1 13 1 111 9 41 1 112 1 21 1 113 9 41 1 114 1 29 1 119 9 41 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 9 45 1 105 0 249 1 106 9 45 1 107 9 45 1 108 1 5 1 109 9 45 1 110 1 13 1 111 9 45 1 112 1 21 1 113 9 45 1 114 1 29 1 119 9 45 1 120 1 37 1 130] 
#[1 5 113 0 6 3 190 0 39 3 190 0 40 3 190 0 41 3 190 0 48 3 190 0 49 3 190 0 61 3 190 0 78 3 190 0 121 3 190 0 137 3 190 1 131] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 3 194 0 39 3 194 0 40 3 194 0 41 3 194 0 48 3 194 0 49 2 245 0 58 3 194 0 61 2 245 0 64 2 245 0 71 3 194 0 78 2 245 0 80 2 245 0 108 2 245 0 109 3 194 0 121 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 3 194 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124 3 194 1 131] 
#[1 3 101 0 139 9 49 0 236] 
#[1 9 53 0 39 3 198 0 40 3 198 0 49 4 117 0 137 9 57 1 85] 
#[1 9 53 0 39 3 198 0 40 3 198 0 49 6 189 0 78 9 61 1 84 9 65 1 85] 
#[0 3 202 0 39 0 40 0 49 0 78] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 9 69 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[0 9 73 0 40] 
#[0 3 206 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 141 0 2 2 245 0 4 3 210 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 3 210 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[0 3 214 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 2 141 0 2 2 245 0 4 3 218 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 3 218 0 131 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[0 3 222 0 5 0 131] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 4 245 1 105 0 249 1 106 4 245 1 107 4 245 1 108 1 5 1 109 4 245 1 110 1 13 1 111 4 245 1 112 1 21 1 113 4 245 1 114 1 29 1 119 4 245 1 120 9 77 1 122 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 9 81 1 105 0 249 1 106 9 81 1 107 9 81 1 108 1 5 1 109 9 81 1 110 1 13 1 111 9 81 1 112 1 21 1 113 9 81 1 114 1 29 1 119 9 81 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 9 85 1 105 0 249 1 106 9 85 1 107 9 85 1 108 1 5 1 109 9 85 1 110 1 13 1 111 9 85 1 112 1 21 1 113 9 85 1 114 1 29 1 119 9 85 1 120 1 37 1 130] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 234 0 5 0 210 0 16 0 210 0 130 3 234 0 132] 
#[1 9 89 0 5 3 238 0 132 9 93 0 190] 
#[1 3 145 0 2 3 242 0 3 3 153 0 4 3 242 0 5 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 3 145 0 2 3 246 0 3 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 246 0 137 3 153 1 124] 
#[0 3 250 0 3 0 5] 
#[1 3 145 0 2 3 254 0 3 3 153 0 4 3 254 0 5 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[0 4 2 0 3 0 5] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 5 33 0 9] 
#[0 4 10 0 3 0 137] 
#[1 3 157 0 16 5 77 0 77 3 161 0 130 2 10 0 137 9 97 1 4] 
#[0 4 14 0 137] 
#[1 3 134 0 3 3 134 0 5 3 134 0 14 3 134 0 16 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 30 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 36 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 57 3 134 0 59 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 74 3 134 0 77 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 96 3 134 0 97 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 112 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 127 3 134 0 128 3 134 0 130 3 134 0 131 3 134 0 132 3 134 0 137 3 134 0 139 9 101 1 23 3 134 1 131] 
#[1 5 113 0 6 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 9 105 0 203 5 133 0 227 5 137 0 237] 
#[0 9 109 0 9] 
#[0 9 113 0 137] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 1 67 0 5 0 194 0 6 0 194 0 8 5 33 0 9 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 18 0 194 0 20 0 194 0 35 0 194 0 58 0 194 0 64 0 194 0 71 0 194 0 80 0 194 0 108 0 194 0 109 0 194 0 129 0 194 0 132 0 194 0 133 0 194 0 135 0 194 0 136] 
#[0 9 121 0 3] 
#[1 1 14 0 2 1 14 0 3 1 14 0 5 1 14 0 6 1 14 0 9 3 169 0 11 1 14 0 14 1 14 0 16 1 14 0 21 1 14 0 23 1 14 0 24 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 30 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 36 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 48 1 14 0 49 1 14 0 52 1 14 0 57 1 14 0 59 1 14 0 61 1 14 0 65 1 14 0 74 1 14 0 77 1 14 0 78 1 14 0 87 1 14 0 88 1 14 0 89 1 14 0 91 1 14 0 92 1 14 0 93 1 14 0 94 1 14 0 96 1 14 0 97 1 14 0 104 1 14 0 112 1 14 0 113 1 14 0 115 1 14 0 118 1 14 0 121 1 14 0 123 1 14 0 127 1 14 0 128 1 14 0 130 1 14 0 131 1 14 0 132 1 14 0 137 1 14 0 139 9 125 0 179 1 14 1 131] 
#[0 4 18 0 5 0 131] 
#[1 3 145 0 2 3 153 0 4 4 22 0 5 3 149 0 6 0 246 0 7 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 4 22 0 131 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 9 129 0 5 9 133 0 131] 
#[0 4 26 0 5 0 131] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 9 137 0 27 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 9 141 0 183 9 141 0 187 1 117 0 192 9 141 0 194 9 141 0 195 9 141 0 197 9 141 0 201 9 141 0 202 1 141 0 204 9 141 0 210 1 149 0 211 1 153 0 212 1 157 0 213 9 141 0 243 9 141 0 244 9 141 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 4 30 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 34 0 3 9 145 0 24 4 34 0 40 9 149 0 88 9 153 0 92 9 157 0 93 9 161 0 94 9 165 0 113 9 169 0 205 9 173 0 229 9 173 0 230 9 173 0 231 9 173 0 232 9 173 0 233] 
#[1 9 193 0 28 9 197 0 32 4 9 0 52 9 201 0 79 4 17 0 89 7 121 0 91 4 25 0 115 4 33 0 123 9 205 1 10 9 209 1 48 9 213 1 50 9 217 1 56 9 221 1 58 9 225 1 70] 
#[1 3 101 0 139 9 229 0 236] 
#[1 3 101 0 139 9 233 0 236] 
#[1 3 101 0 139 9 237 0 236] 
#[1 3 101 0 139 9 241 0 236] 
#[0 9 245 0 139] 
#[0 4 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 9 249 0 26 7 105 0 28 7 109 0 32 4 9 0 52 4 17 0 89 9 253 1 0 10 1 1 1 10 5 1 2 10 9 1 3 10 13 1 5 10 17 1 6 10 21 1 7 9 253 1 40 7 209 1 41 10 1 1 43 7 217 1 44 10 5 1 47 4 57 1 48 10 5 1 49 4 65 1 50 10 9 1 52 10 9 1 53 10 13 1 55 4 77 1 56 10 13 1 57 4 85 1 58 10 17 1 60 10 17 1 61 10 21 1 63 8 1 1 64] 
#[0 4 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
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
#[1 8 181 0 5 10 25 0 9] 
#[0 4 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 114 0 3 4 114 0 24 4 114 0 26 4 114 0 27 4 114 0 28 4 114 0 32 4 114 0 40 6 81 0 44 6 85 0 51 4 114 0 52 4 114 0 88 4 114 0 89 4 114 0 91 4 114 0 92 4 114 0 93 4 114 0 94 4 114 0 113 4 114 0 115 4 114 0 118 4 114 0 123 4 114 0 130 4 114 0 139 10 29 1 27] 
#[0 4 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 122 0 3 4 122 0 24 4 122 0 26 4 122 0 27 4 122 0 28 4 122 0 32 4 122 0 40 6 81 0 44 6 85 0 51 4 122 0 52 4 122 0 88 4 122 0 89 4 122 0 91 4 122 0 92 4 122 0 93 4 122 0 94 4 122 0 113 4 122 0 115 4 122 0 118 4 122 0 123 4 122 0 130 4 122 0 139 10 33 1 27] 
#[0 4 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 130 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 138 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 154 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 162 0 3 4 162 0 24 4 162 0 26 4 162 0 27 4 162 0 28 4 162 0 32 4 162 0 40 6 81 0 44 6 85 0 51 4 162 0 52 4 162 0 88 4 162 0 89 4 162 0 91 4 162 0 92 4 162 0 93 4 162 0 94 4 162 0 113 4 162 0 115 4 162 0 118 4 162 0 123 4 162 0 130 4 162 0 139 10 37 1 27] 
#[0 4 166 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 4 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 10 41 0 213 10 41 1 114 1 177 1 119 1 181 1 130] 
#[0 4 174 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 10 45 0 183 10 45 0 187 1 117 0 192 10 45 0 194 10 45 0 195 10 45 0 197 10 45 0 201 10 45 0 202 1 141 0 204 10 45 0 210 1 149 0 211 1 153 0 212 1 157 0 213 10 45 0 243 10 45 0 244 10 45 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 5 173 0 139 10 49 0 181] 
#[0 4 178 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 4 182 0 2 4 182 0 17 4 182 0 26 4 182 0 27 4 182 0 28 4 182 0 31 4 182 0 32 4 182 0 40 4 182 0 52 4 182 0 54 10 53 0 77 4 182 0 87 4 182 0 88 4 182 0 89 4 182 0 91 4 182 0 92 4 182 0 93 4 182 0 94 4 182 0 106 4 182 0 113 4 182 0 115 4 182 0 118 4 182 0 123 4 182 0 130 4 182 0 137 4 182 0 139 10 57 0 223] 
#[0 4 186 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 4 190 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 10 61 0 2 4 194 0 26 4 194 0 27 4 194 0 28 4 194 0 32 4 194 0 40 4 194 0 52 4 194 0 88 4 194 0 89 4 194 0 91 4 194 0 92 4 194 0 93 4 194 0 94 4 194 0 113 4 194 0 115 4 194 0 118 4 194 0 123 4 194 0 130 4 194 0 139 10 65 0 234] 
#[0 4 198 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 0 206 0 16 0 206 0 130 10 69 0 137] 
#[1 10 73 0 31 10 73 0 87 1 22 0 137 10 73 0 193] 
#[1 0 210 0 16 10 77 0 31 10 77 0 87 0 210 0 130 1 22 0 137 10 77 0 193] 
#[1 4 202 0 3 0 218 0 16 4 202 0 21 4 202 0 23 4 202 0 24 4 202 0 26 4 202 0 27 4 202 0 28 4 202 0 32 4 202 0 40 4 202 0 43 4 202 0 48 4 202 0 52 4 202 0 56 4 202 0 61 4 202 0 65 4 202 0 88 4 202 0 89 4 202 0 91 4 202 0 92 4 202 0 93 4 202 0 94 4 202 0 104 4 202 0 113 4 202 0 115 4 202 0 118 4 202 0 123 1 71 0 130 4 202 0 139 4 202 1 131] 
#[1 4 206 0 3 0 222 0 16 4 206 0 21 4 206 0 23 4 206 0 24 4 206 0 26 4 206 0 27 4 206 0 28 4 206 0 32 4 206 0 40 4 206 0 43 4 206 0 48 4 206 0 52 4 206 0 56 4 206 0 61 4 206 0 65 4 206 0 88 4 206 0 89 4 206 0 91 4 206 0 92 4 206 0 93 4 206 0 94 4 206 0 104 4 206 0 113 4 206 0 115 4 206 0 118 4 206 0 123 1 75 0 130 4 206 0 139 4 206 1 131] 
#[0 4 210 0 31 0 87 0 137] 
#[0 4 214 0 31 0 87 0 137] 
#[0 4 218 0 31 0 87 0 137] 
#[0 4 222 0 31 0 87 0 137] 
#[0 4 226 0 31 0 87 0 137] 
#[1 10 61 0 2 4 194 0 26 4 230 0 31 4 194 0 40 4 194 0 52 4 230 0 87 4 194 0 89 4 194 0 91 4 194 0 130 4 230 0 137 10 81 0 234] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 8 33 0 26 8 93 0 34 1 49 0 46 1 53 0 52 8 93 0 63 1 57 0 75 8 45 0 76 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 10 85 0 182 8 53 0 183 8 57 0 186 8 61 0 187 1 117 0 192 8 65 0 194 8 69 0 195 8 61 0 197 8 57 0 200 8 61 0 201 8 61 0 202 1 141 0 204 8 61 0 210 1 149 0 211 1 153 0 212 1 157 0 213 8 57 0 221 8 57 0 222 8 57 0 225 1 161 0 243 8 61 0 244 8 61 0 245 8 57 0 249 8 93 0 250 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 4 234 0 5 0 137] 
#[1 10 89 0 5 10 93 0 137] 
#[0 4 238 1 131] 
#[1 4 242 0 5 3 181 0 6 4 242 0 137] 
#[0 4 246 0 40] 
#[0 4 250 1 131] 
#[0 4 254 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 2 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 6 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 10 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 14 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 18 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 22 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 10 97 0 23 9 249 0 26 4 5 0 27 7 105 0 28 7 109 0 32 5 26 0 40 5 221 0 43 5 26 0 48 4 9 0 52 5 26 0 61 4 17 0 89 4 21 0 104 4 25 0 115 4 29 0 118 4 33 0 123 10 117 0 170 10 117 0 173 10 117 0 176 10 113 1 36 10 117 1 38 10 117 1 39 10 125 1 40 10 129 1 41 10 117 1 42 10 137 1 43 10 141 1 44 10 117 1 46 4 53 1 47 4 57 1 48 4 61 1 49 4 65 1 50 10 117 1 51 10 153 1 52 10 157 1 53 10 117 1 54 4 73 1 55 4 77 1 56 4 81 1 57 4 85 1 58 10 117 1 59 10 169 1 60 10 173 1 61 10 117 1 62 10 181 1 63 10 185 1 64 10 117 1 69 4 101 1 70 10 117 1 127] 
#[1 5 30 0 40 5 30 0 48 4 117 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 10 197 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 5 245 0 40 10 201 1 129] 
#[0 10 205 0 14] 
#[0 5 34 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 4 161 0 9 1 62 0 137 10 209 1 8] 
#[0 10 213 0 139] 
#[0 5 38 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 10 217 0 137] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 10 221 0 213 10 221 1 114 1 177 1 119 1 181 1 130] 
#[0 5 42 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 10 225 0 183 10 225 0 187 1 117 0 192 10 225 0 194 10 225 0 195 10 225 0 197 10 225 0 201 10 225 0 202 1 141 0 204 10 225 0 210 1 149 0 211 1 153 0 212 1 157 0 213 10 225 0 243 10 225 0 244 10 225 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 5 46 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 50 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 54 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 10 229 0 72 10 233 0 137] 
#[1 10 237 0 72 10 241 0 137] 
#[0 5 58 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 5 62 0 3 11 97 0 17 5 62 0 21 11 97 0 22 5 62 0 23 5 62 0 24 11 97 0 25 5 62 0 26 5 62 0 27 5 62 0 28 11 1 0 31 5 62 0 32 11 5 0 33 11 97 0 38 5 62 0 40 11 97 0 42 5 62 0 43 6 81 0 44 11 97 0 45 11 97 0 47 5 62 0 48 6 85 0 51 5 62 0 52 5 62 0 56 5 62 0 61 11 97 0 62 5 62 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 5 62 0 88 5 62 0 89 5 62 0 91 5 62 0 92 5 62 0 93 5 62 0 94 11 97 0 100 11 97 0 101 5 62 0 104 11 97 0 105 11 97 0 110 11 97 0 111 5 62 0 113 5 62 0 115 5 62 0 118 11 97 0 120 5 62 0 123 11 97 0 124 5 62 0 130 5 62 0 139 11 85 1 25 11 85 1 26 11 85 1 27 11 97 1 28] 
#[1 5 66 0 3 11 97 0 17 5 66 0 21 11 97 0 22 5 66 0 23 5 66 0 24 11 97 0 25 5 66 0 26 5 66 0 27 5 66 0 28 11 1 0 31 5 66 0 32 11 5 0 33 11 97 0 38 5 66 0 40 11 97 0 42 5 66 0 43 6 81 0 44 11 97 0 45 11 97 0 47 5 66 0 48 6 85 0 51 5 66 0 52 5 66 0 56 5 66 0 61 11 97 0 62 5 66 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 5 66 0 88 5 66 0 89 5 66 0 91 5 66 0 92 5 66 0 93 5 66 0 94 11 97 0 100 11 97 0 101 5 66 0 104 11 97 0 105 11 97 0 110 11 97 0 111 5 66 0 113 5 66 0 115 5 66 0 118 11 97 0 120 5 66 0 123 11 97 0 124 5 66 0 130 5 66 0 139 11 85 1 25 11 85 1 26 11 85 1 27 11 97 1 28] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 11 101 0 213 11 101 1 114 1 177 1 119 1 181 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 11 105 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[0 11 109 0 40] 
#[1 3 17 0 2 1 45 0 15 2 230 0 39 2 230 0 40 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 6 109 0 213 11 113 1 91 6 125 1 92 6 129 1 93 6 133 1 94 6 109 1 114 1 177 1 119 1 181 1 130] 
#[0 5 70 0 39 0 40] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 11 117 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 11 117 1 102 11 117 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 6 109 0 213 11 121 1 94 6 109 1 114 1 177 1 119 1 181 1 130] 
#[0 5 74 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 5 78 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 11 125 1 105 0 249 1 106 11 125 1 107 11 125 1 108 1 5 1 109 11 125 1 110 1 13 1 111 11 125 1 112 1 21 1 113 11 125 1 114 1 29 1 119 11 125 1 120 1 37 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 11 129 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 11 129 1 102 11 129 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[0 5 82 0 3 0 131 0 137] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 11 133 0 183 11 133 0 187 1 117 0 192 11 133 0 194 11 133 0 195 11 133 0 197 11 133 0 201 11 133 0 202 1 141 0 204 11 133 0 210 1 149 0 211 1 153 0 212 1 157 0 213 11 133 0 243 11 133 0 244 11 133 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 11 137 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 11 137 1 102 11 137 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[0 5 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 11 141 0 131 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 11 145 0 131 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 5 113 0 6 4 161 0 9 1 62 0 36 11 149 1 8] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 11 153 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[0 5 90 0 40 0 49] 
#[0 5 94 0 39 0 40 0 49 0 78] 
#[0 5 98 0 40 0 49] 
#[1 5 102 0 40 4 117 0 137] 
#[0 5 106 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 5 110 0 3 5 110 0 5 6 241 0 9] 
#[1 2 141 0 2 5 114 0 3 2 245 0 4 5 114 0 5 2 149 0 6 2 245 0 8 5 114 0 9 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 2 141 0 2 2 245 0 4 5 118 0 5 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 5 118 0 131 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 161 0 183 11 157 0 187 1 117 0 192 1 161 0 194 1 161 0 195 11 157 0 197 11 157 0 201 11 157 0 202 1 141 0 204 11 157 0 210 1 149 0 211 1 153 0 212 1 157 0 213 1 161 0 243 11 157 0 244 11 157 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 11 161 0 132] 
#[0 11 165 0 137] 
#[1 5 122 0 3 5 122 0 5 5 122 0 14 5 122 0 16 11 97 0 17 5 122 0 21 11 97 0 22 5 122 0 23 5 122 0 24 11 97 0 25 5 122 0 26 5 122 0 27 5 122 0 28 5 122 0 30 1 79 0 31 5 122 0 32 1 83 0 33 5 122 0 36 11 97 0 38 5 122 0 40 11 97 0 42 5 122 0 43 6 81 0 44 11 97 0 45 11 97 0 47 5 122 0 48 6 85 0 51 5 122 0 52 5 122 0 56 5 122 0 57 5 122 0 59 5 122 0 61 11 97 0 62 5 122 0 65 11 97 0 67 11 33 0 70 11 97 0 73 5 122 0 74 5 122 0 77 11 97 0 82 11 97 0 83 11 97 0 86 1 87 0 87 5 122 0 88 5 122 0 89 5 122 0 91 5 122 0 92 5 122 0 93 5 122 0 94 5 122 0 96 5 122 0 97 11 97 0 100 11 97 0 101 5 122 0 104 11 97 0 105 11 97 0 110 11 97 0 111 5 122 0 112 5 122 0 113 5 122 0 115 5 122 0 118 11 97 0 120 5 122 0 123 11 97 0 124 5 122 0 127 5 122 0 128 5 122 0 130 5 122 0 131 5 122 0 132 5 122 0 137 5 122 0 139 11 85 1 25 11 85 1 26 11 85 1 27 11 97 1 28 5 122 1 131] 
#[0 11 169 0 40] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 11 173 0 183 11 173 0 187 1 117 0 192 11 173 0 194 11 173 0 195 11 173 0 197 11 173 0 201 11 173 0 202 1 141 0 204 11 173 0 210 1 149 0 211 1 153 0 212 1 157 0 213 11 173 0 243 11 173 0 244 11 173 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[0 5 126 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 11 177 0 140 11 181 0 199] 
#[0 5 130 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 5 134 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 11 185 0 210 1 149 0 211 1 153 0 212 7 77 0 213 11 185 0 248 7 77 1 114 1 177 1 119 1 181 1 130] 
#[0 5 138 0 77] 
#[0 5 142 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 5 146 0 3 5 146 0 5 5 146 0 14 3 157 0 16 5 146 0 21 5 146 0 23 5 146 0 27 5 146 0 30 5 146 0 31 5 146 0 33 5 146 0 36 5 146 0 52 5 146 0 57 5 146 0 59 5 146 0 65 5 146 0 74 5 146 0 77 5 146 0 87 5 146 0 89 5 146 0 96 5 146 0 97 5 146 0 104 5 146 0 112 5 146 0 115 5 146 0 118 5 146 0 123 5 146 0 127 5 146 0 128 3 161 0 130 5 146 0 131 5 146 0 132 5 146 0 137 5 146 1 131] 
#[0 11 189 0 139] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 193 0 237] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 197 0 237] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 201 0 237] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 11 205 0 237] 
#[1 11 209 0 88 11 213 0 92] 
#[0 5 150 0 3 0 40] 
#[0 5 154 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 158 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 162 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 166 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 5 170 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 3 101 0 139 11 217 0 236] 
#[1 3 101 0 139 11 221 0 236] 
#[1 3 101 0 139 11 225 0 236] 
#[0 5 174 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 178 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 182 0 3 5 182 0 21 5 182 0 23 5 182 0 24 5 182 0 26 5 182 0 27 5 182 0 28 5 182 0 32 5 182 0 40 6 81 0 44 6 85 0 51 5 182 0 52 5 182 0 65 5 182 0 88 5 182 0 89 5 182 0 91 5 182 0 92 5 182 0 93 5 182 0 94 5 182 0 104 5 182 0 113 5 182 0 115 5 182 0 118 5 182 0 123 5 182 0 130 5 182 0 139 6 89 1 27] 
#[0 5 186 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 5 190 0 3 5 190 0 21 5 190 0 23 5 190 0 24 5 190 0 26 5 190 0 27 5 190 0 28 5 190 0 32 5 190 0 40 6 81 0 44 6 85 0 51 5 190 0 52 5 190 0 65 5 190 0 88 5 190 0 89 5 190 0 91 5 190 0 92 5 190 0 93 5 190 0 94 5 190 0 104 5 190 0 113 5 190 0 115 5 190 0 118 5 190 0 123 5 190 0 130 5 190 0 139 6 97 1 27] 
#[0 5 194 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 41 0 2 5 113 0 6 0 50 0 137 11 229 0 196] 
#[1 11 233 0 2 5 113 0 6 5 198 0 137 11 237 1 45] 
#[1 2 41 0 2 5 113 0 6 0 50 0 9 11 241 0 14 0 50 0 137 8 177 0 196] 
#[1 2 41 0 2 5 113 0 6 11 245 0 14 0 50 0 137 8 189 0 196] 
#[1 5 202 0 9 5 202 0 30 5 202 0 33 5 202 0 57 5 202 0 59 5 202 0 74 5 202 0 96 5 202 0 97 5 202 0 112 5 202 0 127 5 202 0 128 11 249 0 130 5 202 0 137 11 253 1 13] 
#[1 9 193 0 28 9 197 0 32 4 9 0 52 9 201 0 79 4 17 0 89 9 209 1 48 9 213 1 50 9 217 1 56 9 221 1 58] 
#[0 5 206 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 214 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 218 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 222 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 41 0 2 1 45 0 15 0 18 0 19 1 49 0 46 1 53 0 52 1 57 0 75 1 141 0 85 1 65 0 89 0 7 0 98 1 73 0 99 1 77 0 107 1 81 0 118 0 153 0 130 1 85 0 135 1 89 0 136 1 93 0 138 1 97 0 140 1 153 0 141 1 177 0 143 1 105 0 147 12 1 0 183 12 1 0 187 1 117 0 192 12 1 0 194 12 1 0 195 12 1 0 197 12 1 0 201 12 1 0 202 1 141 0 204 12 1 0 210 1 149 0 211 1 153 0 212 1 157 0 213 12 1 0 243 12 1 0 244 12 1 0 245 1 157 1 114 1 177 1 119 1 181 1 130] 
#[1 3 134 0 3 3 134 0 17 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 61 3 134 0 62 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 12 5 1 23] 
#[1 3 134 0 3 3 134 0 17 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 61 3 134 0 62 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 12 9 1 23] 
#[1 3 134 0 3 3 134 0 17 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 61 3 134 0 62 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 130 3 134 0 139 12 13 1 23] 
#[1 3 145 0 2 5 234 0 3 3 153 0 4 5 234 0 5 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 5 238 0 5 3 157 0 16 3 161 0 130 5 238 0 132] 
#[0 5 242 0 5 0 132] 
#[0 12 17 0 139] 
#[1 10 61 0 2 12 33 0 17 4 194 0 26 4 194 0 27 4 194 0 28 4 194 0 31 4 194 0 32 4 194 0 40 4 194 0 52 12 25 0 54 4 194 0 87 4 194 0 88 4 194 0 89 4 194 0 91 4 194 0 92 4 194 0 93 4 194 0 94 12 33 0 106 4 194 0 113 4 194 0 115 4 194 0 118 4 194 0 123 4 194 0 130 4 194 0 137 4 194 0 139 12 33 0 224 12 37 0 234] 
#[1 12 41 0 140 12 45 0 192 12 49 0 235] 
#[1 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 12 53 0 227 5 137 0 237] 
#[0 5 246 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 12 57 0 137] 
#[0 12 61 0 137] 
#[1 5 250 0 26 5 250 0 40 5 250 0 52 5 250 0 89 5 250 0 91 12 65 0 130 12 69 0 251] 
#[0 5 254 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 12 73 0 139] 
#[0 6 2 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 40 0 14 0 48 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 12 77 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[0 6 6 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 10 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 14 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 18 0 40 0 48 0 61] 
#[0 6 22 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 26 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 30 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 81 0 44 6 85 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 29 1 27 12 81 1 65 2 9 1 66] 
#[0 6 34 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 38 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 81 0 44 6 85 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 33 1 27 12 85 1 65 2 9 1 66] 
#[0 6 42 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 46 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 50 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 89 1 65 2 9 1 66] 
#[0 6 54 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 58 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 62 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 12 93 1 65 2 9 1 66] 
#[0 6 66 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 70 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 46 0 21 0 46 0 23 0 46 0 27 6 81 0 44 6 85 0 51 0 46 0 52 0 46 0 65 0 46 0 89 0 46 0 104 0 46 0 115 0 46 0 118 0 46 0 123 10 37 1 27 12 97 1 65 2 9 1 66] 
#[0 6 74 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 78 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 6 82 0 40 4 117 0 137] 
#[0 6 86 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 12 101 0 213 12 101 1 114 1 177 1 119 1 181 1 130] 
#[0 12 105 0 137] 
#[0 6 90 0 3 0 5 0 9 0 131 0 137] 
#[1 6 94 0 3 6 94 0 17 6 94 0 21 6 94 0 22 6 94 0 23 6 94 0 24 6 94 0 25 6 94 0 26 6 94 0 27 6 94 0 28 6 94 0 31 6 94 0 32 6 94 0 33 6 94 0 38 6 94 0 40 6 94 0 42 6 94 0 44 6 94 0 45 6 94 0 47 6 94 0 48 6 94 0 51 6 94 0 52 6 94 0 56 6 94 0 61 6 94 0 62 6 94 0 65 6 94 0 67 6 94 0 70 6 94 0 73 6 94 0 82 6 94 0 83 6 94 0 86 6 94 0 87 6 94 0 88 6 94 0 89 6 94 0 91 6 94 0 92 6 94 0 93 6 94 0 94 6 94 0 100 6 94 0 101 6 94 0 104 6 94 0 105 6 94 0 110 6 94 0 111 6 94 0 113 6 94 0 115 6 94 0 118 6 94 0 120 6 94 0 123 6 94 0 124 6 94 0 130 6 94 0 139 12 109 1 24] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 12 117 0 31 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 6 98 0 137 12 117 0 226 3 153 1 124] 
#[1 1 22 0 14 3 157 0 16 12 121 0 31 12 121 0 87 3 161 0 130 1 22 0 137 12 121 0 193] 
#[0 12 125 0 143] 
#[0 6 102 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 12 129 0 143] 
#[0 6 106 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 110 0 137] 
#[0 6 114 0 137] 
#[0 6 118 0 137] 
#[1 6 122 0 137 12 133 0 143] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 12 137 0 213 12 137 1 114 1 177 1 119 1 181 1 130] 
#[0 6 126 0 137] 
#[0 6 130 0 137] 
#[0 6 134 0 137] 
#[0 6 138 0 137] 
#[0 6 142 0 137] 
#[0 6 146 0 137] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 12 141 0 213 12 141 1 114 1 177 1 119 1 181 1 130] 
#[0 6 150 0 137] 
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
#[0 6 198 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 202 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 6 206 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 12 145 0 137] 
#[1 3 145 0 2 3 153 0 4 6 210 0 5 3 149 0 6 3 153 0 8 6 210 0 9 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 6 214 0 40 4 117 0 137] 
#[0 6 218 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 6 222 0 39 0 40 0 137] 
#[0 6 226 0 39 0 40 0 137] 
#[1 6 230 0 5 6 234 0 9] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 2 245 0 35 12 149 0 36 2 245 0 58 2 245 0 64 2 245 0 71 2 245 0 80 2 245 0 108 2 245 0 109 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[0 6 238 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 6 242 0 3 12 153 0 14 3 157 0 16 3 161 0 130 6 242 0 131 6 242 0 137 12 157 1 33] 
#[0 6 246 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 6 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 6 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 12 161 0 36] 
#[1 7 2 0 40 7 2 0 49 4 117 0 137] 
#[1 7 6 0 5 0 210 0 16 0 210 0 130 7 6 0 132] 
#[0 7 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 134 0 3 3 134 0 5 3 134 0 14 3 134 0 16 3 134 0 17 3 134 0 21 3 134 0 22 3 134 0 23 3 134 0 24 3 134 0 25 3 134 0 26 3 134 0 27 3 134 0 28 3 134 0 30 3 134 0 31 3 134 0 32 3 134 0 33 3 134 0 36 3 134 0 38 3 134 0 40 3 134 0 42 3 134 0 43 3 134 0 44 3 134 0 45 3 134 0 47 3 134 0 48 3 134 0 51 3 134 0 52 3 134 0 56 3 134 0 57 3 134 0 59 3 134 0 61 3 134 0 62 3 134 0 65 3 134 0 67 3 134 0 70 3 134 0 73 3 134 0 74 3 134 0 77 3 134 0 82 3 134 0 83 3 134 0 86 3 134 0 87 3 134 0 88 3 134 0 89 3 134 0 91 3 134 0 92 3 134 0 93 3 134 0 94 3 134 0 96 3 134 0 97 3 134 0 100 3 134 0 101 3 134 0 104 3 134 0 105 3 134 0 110 3 134 0 111 3 134 0 112 3 134 0 113 3 134 0 115 3 134 0 118 3 134 0 120 3 134 0 123 3 134 0 124 3 134 0 127 3 134 0 128 3 134 0 130 3 134 0 131 3 134 0 132 3 134 0 137 3 134 0 139 12 165 1 23 3 134 1 131] 
#[0 7 14 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 3 157 0 16 3 161 0 130 12 169 0 137] 
#[0 7 18 0 3 0 5] 
#[1 7 22 0 3 12 173 0 5] 
#[0 7 26 0 5 0 131] 
#[1 4 161 0 9 1 62 0 77 12 177 1 8] 
#[1 7 30 0 3 7 30 0 24 7 101 0 26 4 5 0 27 7 105 0 28 7 109 0 32 7 30 0 40 7 113 0 52 7 30 0 88 7 117 0 89 7 121 0 91 7 30 0 92 7 30 0 93 7 30 0 94 7 30 0 113 4 25 0 115 4 29 0 118 4 33 0 123 1 185 0 130 6 29 0 139 7 133 0 170 7 133 0 176 7 133 0 238 7 133 0 239 7 141 0 240 7 133 0 241 7 133 0 242 7 133 0 254 7 133 0 255 7 133 1 0 7 133 1 1 7 133 1 2 7 133 1 3 7 133 1 5 7 133 1 6 7 133 1 7 7 133 1 9 7 193 1 10 7 133 1 11 7 201 1 32 7 133 1 40 7 209 1 41 7 133 1 43 7 217 1 44 7 133 1 47 4 57 1 48 7 133 1 49 4 65 1 50 7 133 1 52 7 133 1 53 7 133 1 55 4 77 1 56 7 133 1 57 4 85 1 58 7 133 1 60 7 133 1 61 7 133 1 63 8 1 1 64 7 133 1 69 4 101 1 70] 
#[1 7 34 0 3 7 34 0 24 7 101 0 26 4 5 0 27 7 105 0 28 7 109 0 32 7 34 0 40 7 113 0 52 7 34 0 88 7 117 0 89 7 121 0 91 7 34 0 92 7 34 0 93 7 34 0 94 7 34 0 113 4 25 0 115 4 29 0 118 4 33 0 123 1 185 0 130 6 29 0 139 7 133 0 170 7 133 0 176 7 133 0 238 7 133 0 239 7 141 0 240 7 133 0 241 7 133 0 242 7 133 0 254 7 133 0 255 7 133 1 0 7 133 1 1 7 133 1 2 7 133 1 3 7 133 1 5 7 133 1 6 7 133 1 7 7 133 1 9 7 193 1 10 7 133 1 11 7 201 1 32 7 133 1 40 7 209 1 41 7 133 1 43 7 217 1 44 7 133 1 47 4 57 1 48 7 133 1 49 4 65 1 50 7 133 1 52 7 133 1 53 7 133 1 55 4 77 1 56 7 133 1 57 4 85 1 58 7 133 1 60 7 133 1 61 7 133 1 63 8 1 1 64 7 133 1 69 4 101 1 70] 
#[1 7 38 0 3 7 38 0 24 7 101 0 26 4 5 0 27 7 105 0 28 7 109 0 32 7 38 0 40 7 113 0 52 7 38 0 88 7 117 0 89 7 121 0 91 7 38 0 92 7 38 0 93 7 38 0 94 7 38 0 113 4 25 0 115 4 29 0 118 4 33 0 123 1 185 0 130 6 29 0 139 7 133 0 170 7 133 0 176 7 133 0 238 7 133 0 239 7 141 0 240 7 133 0 241 7 133 0 242 7 133 0 254 7 133 0 255 7 133 1 0 7 133 1 1 7 133 1 2 7 133 1 3 7 133 1 5 7 133 1 6 7 133 1 7 7 133 1 9 7 193 1 10 7 133 1 11 7 201 1 32 7 133 1 40 7 209 1 41 7 133 1 43 7 217 1 44 7 133 1 47 4 57 1 48 7 133 1 49 4 65 1 50 7 133 1 52 7 133 1 53 7 133 1 55 4 77 1 56 7 133 1 57 4 85 1 58 7 133 1 60 7 133 1 61 7 133 1 63 8 1 1 64 7 133 1 69 4 101 1 70] 
#[1 7 42 0 3 7 42 0 24 7 101 0 26 4 5 0 27 7 105 0 28 7 109 0 32 7 42 0 40 7 113 0 52 7 42 0 88 7 117 0 89 7 121 0 91 7 42 0 92 7 42 0 93 7 42 0 94 7 42 0 113 4 25 0 115 4 29 0 118 4 33 0 123 1 185 0 130 6 29 0 139 7 133 0 170 7 133 0 176 7 133 0 238 7 133 0 239 7 141 0 240 7 133 0 241 7 133 0 242 7 133 0 254 7 133 0 255 7 133 1 0 7 133 1 1 7 133 1 2 7 133 1 3 7 133 1 5 7 133 1 6 7 133 1 7 7 133 1 9 7 193 1 10 7 133 1 11 7 201 1 32 7 133 1 40 7 209 1 41 7 133 1 43 7 217 1 44 7 133 1 47 4 57 1 48 7 133 1 49 4 65 1 50 7 133 1 52 7 133 1 53 7 133 1 55 4 77 1 56 7 133 1 57 4 85 1 58 7 133 1 60 7 133 1 61 7 133 1 63 8 1 1 64 7 133 1 69 4 101 1 70] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 12 181 0 237] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 40 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 12 185 0 237] 
#[1 2 41 0 2 5 113 0 6 0 50 0 137 12 189 0 196] 
#[1 11 233 0 2 5 113 0 6 5 198 0 137 12 193 1 45] 
#[1 2 41 0 2 5 113 0 6 0 50 0 9 0 50 0 137 12 197 0 196] 
#[0 12 201 0 137] 
#[0 12 205 0 3] 
#[0 12 209 0 137] 
#[0 12 213 0 139] 
#[0 12 217 0 139] 
#[1 4 157 0 27 4 157 0 81 4 157 0 123 1 54 0 131 1 58 0 139 12 221 1 29 4 149 1 30 4 153 1 31 4 157 1 34] 
#[1 4 161 0 9 1 62 0 30 1 62 0 33 1 62 0 57 1 62 0 59 1 62 0 74 1 62 0 96 1 62 0 97 1 62 0 112 1 62 0 127 1 62 0 128 1 62 0 137 12 225 1 8] 
#[1 3 157 0 16 12 229 0 31 12 229 0 87 3 161 0 130 1 22 0 137 12 229 0 193] 
#[1 7 46 0 3 11 97 0 17 11 97 0 22 7 46 0 23 7 46 0 24 11 97 0 25 7 46 0 26 7 46 0 27 7 46 0 28 11 1 0 31 7 46 0 32 11 5 0 33 11 97 0 38 7 46 0 40 11 97 0 42 7 46 0 43 6 81 0 44 11 97 0 45 11 97 0 47 7 46 0 48 6 85 0 51 7 46 0 52 7 46 0 61 11 97 0 62 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 7 46 0 88 7 46 0 89 7 46 0 91 7 46 0 92 7 46 0 93 7 46 0 94 11 97 0 100 11 97 0 101 7 46 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 46 0 113 7 46 0 115 7 46 0 118 11 97 0 120 7 46 0 123 11 97 0 124 7 46 0 130 7 46 0 139 11 85 1 25 11 85 1 26 11 85 1 27 11 97 1 28] 
#[1 7 50 0 3 11 97 0 17 11 97 0 22 7 50 0 23 7 50 0 24 11 97 0 25 7 50 0 26 7 50 0 27 7 50 0 28 11 1 0 31 7 50 0 32 11 5 0 33 11 97 0 38 7 50 0 40 11 97 0 42 7 50 0 43 6 81 0 44 11 97 0 45 11 97 0 47 7 50 0 48 6 85 0 51 7 50 0 52 7 50 0 61 11 97 0 62 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 7 50 0 88 7 50 0 89 7 50 0 91 7 50 0 92 7 50 0 93 7 50 0 94 11 97 0 100 11 97 0 101 7 50 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 50 0 113 7 50 0 115 7 50 0 118 11 97 0 120 7 50 0 123 11 97 0 124 7 50 0 130 7 50 0 139 11 85 1 25 11 85 1 26 11 85 1 27 11 97 1 28] 
#[1 7 54 0 3 11 97 0 17 11 97 0 22 7 54 0 23 7 54 0 24 11 97 0 25 7 54 0 26 7 54 0 27 7 54 0 28 11 1 0 31 7 54 0 32 11 5 0 33 11 97 0 38 7 54 0 40 11 97 0 42 7 54 0 43 6 81 0 44 11 97 0 45 11 97 0 47 7 54 0 48 6 85 0 51 7 54 0 52 7 54 0 61 11 97 0 62 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 7 54 0 88 7 54 0 89 7 54 0 91 7 54 0 92 7 54 0 93 7 54 0 94 11 97 0 100 11 97 0 101 7 54 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 54 0 113 7 54 0 115 7 54 0 118 11 97 0 120 7 54 0 123 11 97 0 124 7 54 0 130 7 54 0 139 11 85 1 25 11 85 1 26 11 85 1 27 11 97 1 28] 
#[0 7 58 0 31 0 87 0 137] 
#[0 7 62 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 12 233 0 50] 
#[0 7 66 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 70 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 38 0 26 2 38 0 27 2 38 0 28 7 74 0 31 2 38 0 32 2 38 0 40 2 38 0 52 7 74 0 87 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 7 74 0 137 2 38 0 139 12 237 0 227 5 137 0 237] 
#[0 0 198 0 3 0 5 0 6 0 11] 
#[1 7 78 0 3 7 78 0 5 3 125 0 6 0 142 0 11 3 129 0 188 3 1 0 189] 
#[1 12 241 0 3 12 245 0 5] 
#[1 2 254 0 40 2 254 0 88 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 113 12 249 0 228] 
#[0 7 82 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 7 86 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 12 253 0 213 12 253 1 114 1 177 1 119 1 181 1 130] 
#[1 7 90 0 26 7 90 0 40 7 90 0 52 7 90 0 89 7 90 0 91 13 1 0 252] 
#[0 7 94 0 5 0 137] 
#[1 7 98 0 40 7 98 0 48 7 98 0 61 4 117 0 137] 
#[0 7 102 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 106 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 110 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 114 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 118 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 1 91 0 31 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 13 5 0 87 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 1 22 0 137 13 5 0 193 3 153 1 124] 
#[1 6 94 0 3 6 94 0 17 6 94 0 21 6 94 0 22 6 94 0 23 6 94 0 24 6 94 0 25 6 94 0 26 6 94 0 27 6 94 0 28 6 94 0 31 6 94 0 32 6 94 0 33 6 94 0 38 6 94 0 40 6 94 0 42 6 94 0 44 6 94 0 45 6 94 0 47 6 94 0 48 6 94 0 51 6 94 0 52 6 94 0 56 6 94 0 61 6 94 0 62 6 94 0 65 6 94 0 67 6 94 0 70 6 94 0 73 6 94 0 82 6 94 0 83 6 94 0 86 6 94 0 87 6 94 0 88 6 94 0 89 6 94 0 91 6 94 0 92 6 94 0 93 6 94 0 94 6 94 0 100 6 94 0 101 6 94 0 104 6 94 0 105 6 94 0 110 6 94 0 111 6 94 0 113 6 94 0 115 6 94 0 118 6 94 0 120 6 94 0 123 6 94 0 124 6 94 0 130 6 94 0 139 13 9 1 24] 
#[1 7 122 0 3 11 97 0 17 7 122 0 21 11 97 0 22 7 122 0 23 7 122 0 24 11 97 0 25 7 122 0 26 7 122 0 27 7 122 0 28 11 1 0 31 7 122 0 32 11 5 0 33 11 97 0 38 7 122 0 40 11 97 0 42 7 122 0 44 11 97 0 45 11 97 0 47 7 122 0 48 7 122 0 51 7 122 0 52 7 122 0 56 7 122 0 61 11 97 0 62 7 122 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 7 122 0 88 7 122 0 89 7 122 0 91 7 122 0 92 7 122 0 93 7 122 0 94 11 97 0 100 11 97 0 101 7 122 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 122 0 113 7 122 0 115 7 122 0 118 11 97 0 120 7 122 0 123 11 97 0 124 7 122 0 130 7 122 0 139 13 13 1 26 11 97 1 28] 
#[0 7 126 0 137] 
#[0 13 17 0 137] 
#[1 12 153 0 14 6 242 0 137 13 21 1 33] 
#[0 13 25 0 137] 
#[0 13 29 0 137] 
#[0 13 33 0 137] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 13 37 0 137 3 153 1 124] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 13 41 0 137 3 153 1 124] 
#[0 7 130 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 14 0 61 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 14 0 121 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 13 45 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 13 45 1 102 13 45 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130 0 14 1 131] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 13 49 0 213 13 49 1 114 1 177 1 119 1 181 1 130] 
#[0 7 134 0 3 0 131 0 137] 
#[1 0 81 0 2 0 85 0 15 0 10 0 21 0 89 0 23 0 93 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 97 0 50 0 101 0 52 0 105 0 53 0 109 0 55 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 14 0 78 0 129 0 89 0 133 0 95 0 137 0 102 0 141 0 117 0 145 0 125 0 149 0 126 0 153 0 130 0 157 0 135 0 161 0 136 0 14 0 137 0 165 0 139 0 169 0 141 1 29 0 143 0 177 0 147 0 181 0 212 13 53 1 73 2 29 1 74 0 189 1 75 0 193 1 76 0 197 1 77 0 201 1 78 0 205 1 79 0 209 1 81 0 213 1 87 0 217 1 96 0 221 1 98 0 225 1 99 0 229 1 101 2 29 1 102 2 29 1 103 0 241 1 104 0 245 1 105 0 249 1 106 0 245 1 107 0 245 1 108 1 5 1 109 0 245 1 110 1 13 1 111 0 245 1 112 1 21 1 113 0 245 1 114 1 29 1 119 0 245 1 120 1 37 1 130] 
#[1 7 138 0 3 7 138 0 5 7 138 0 14 7 138 0 16 11 97 0 17 7 138 0 21 11 97 0 22 7 138 0 23 7 138 0 24 11 97 0 25 7 138 0 26 7 138 0 27 7 138 0 28 7 138 0 30 1 95 0 31 7 138 0 32 1 99 0 33 7 138 0 36 11 97 0 38 7 138 0 40 11 97 0 42 7 138 0 43 6 81 0 44 11 97 0 45 11 97 0 47 7 138 0 48 6 85 0 51 7 138 0 52 7 138 0 56 7 138 0 57 7 138 0 59 7 138 0 61 11 97 0 62 7 138 0 65 11 97 0 67 11 33 0 70 11 97 0 73 7 138 0 74 7 138 0 77 11 97 0 82 11 97 0 83 11 97 0 86 1 103 0 87 7 138 0 88 7 138 0 89 7 138 0 91 7 138 0 92 7 138 0 93 7 138 0 94 7 138 0 96 7 138 0 97 11 97 0 100 11 97 0 101 7 138 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 138 0 112 7 138 0 113 7 138 0 115 7 138 0 118 11 97 0 120 7 138 0 123 11 97 0 124 7 138 0 127 7 138 0 128 7 138 0 130 7 138 0 131 7 138 0 132 7 138 0 137 7 138 0 139 11 85 1 25 11 85 1 26 11 85 1 27 11 97 1 28 7 138 1 131] 
#[0 7 142 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 13 57 0 140] 
#[0 13 61 0 77] 
#[1 7 146 0 3 7 146 0 24 7 101 0 26 4 5 0 27 7 105 0 28 7 109 0 32 7 146 0 40 7 113 0 52 7 146 0 88 7 117 0 89 7 121 0 91 7 146 0 92 7 146 0 93 7 146 0 94 7 146 0 113 4 25 0 115 4 29 0 118 4 33 0 123 1 185 0 130 6 29 0 139 7 133 0 170 7 133 0 176 7 133 0 238 7 133 0 239 7 141 0 240 7 133 0 241 7 133 0 242 7 133 0 254 7 133 0 255 7 133 1 0 7 133 1 1 7 133 1 2 7 133 1 3 7 133 1 5 7 133 1 6 7 133 1 7 7 133 1 9 7 193 1 10 7 133 1 11 7 201 1 32 7 133 1 40 7 209 1 41 7 133 1 43 7 217 1 44 7 133 1 47 4 57 1 48 7 133 1 49 4 65 1 50 7 133 1 52 7 133 1 53 7 133 1 55 4 77 1 56 7 133 1 57 4 85 1 58 7 133 1 60 7 133 1 61 7 133 1 63 8 1 1 64 7 133 1 69 4 101 1 70] 
#[1 7 150 0 3 7 150 0 24 7 101 0 26 4 5 0 27 7 105 0 28 7 109 0 32 7 150 0 40 7 113 0 52 7 150 0 88 7 117 0 89 7 121 0 91 7 150 0 92 7 150 0 93 7 150 0 94 7 150 0 113 4 25 0 115 4 29 0 118 4 33 0 123 1 185 0 130 6 29 0 139 7 133 0 170 7 133 0 176 7 133 0 238 7 133 0 239 7 141 0 240 7 133 0 241 7 133 0 242 7 133 0 254 7 133 0 255 7 133 1 0 7 133 1 1 7 133 1 2 7 133 1 3 7 133 1 5 7 133 1 6 7 133 1 7 7 133 1 9 7 193 1 10 7 133 1 11 7 201 1 32 7 133 1 40 7 209 1 41 7 133 1 43 7 217 1 44 7 133 1 47 4 57 1 48 7 133 1 49 4 65 1 50 7 133 1 52 7 133 1 53 7 133 1 55 4 77 1 56 7 133 1 57 4 85 1 58 7 133 1 60 7 133 1 61 7 133 1 63 8 1 1 64 7 133 1 69 4 101 1 70] 
#[0 13 65 0 137] 
#[0 13 69 0 137] 
#[1 4 161 0 9 1 62 0 137 13 73 1 8] 
#[1 6 94 0 3 6 94 0 17 6 94 0 21 6 94 0 22 6 94 0 23 6 94 0 24 6 94 0 25 6 94 0 26 6 94 0 27 6 94 0 28 6 94 0 31 6 94 0 32 6 94 0 33 6 94 0 38 6 94 0 40 6 94 0 42 6 94 0 44 6 94 0 45 6 94 0 47 6 94 0 51 6 94 0 52 6 94 0 62 6 94 0 65 6 94 0 67 6 94 0 70 6 94 0 73 6 94 0 82 6 94 0 83 6 94 0 86 6 94 0 87 6 94 0 88 6 94 0 89 6 94 0 91 6 94 0 92 6 94 0 93 6 94 0 94 6 94 0 100 6 94 0 101 6 94 0 104 6 94 0 105 6 94 0 110 6 94 0 111 6 94 0 113 6 94 0 115 6 94 0 118 6 94 0 120 6 94 0 123 6 94 0 124 6 94 0 130 6 94 0 139 13 77 1 24] 
#[0 7 154 0 137] 
#[1 6 94 0 3 6 94 0 17 6 94 0 21 6 94 0 22 6 94 0 23 6 94 0 24 6 94 0 25 6 94 0 26 6 94 0 27 6 94 0 28 6 94 0 31 6 94 0 32 6 94 0 33 6 94 0 38 6 94 0 40 6 94 0 42 6 94 0 44 6 94 0 45 6 94 0 47 6 94 0 51 6 94 0 52 6 94 0 62 6 94 0 65 6 94 0 67 6 94 0 70 6 94 0 73 6 94 0 82 6 94 0 83 6 94 0 86 6 94 0 87 6 94 0 88 6 94 0 89 6 94 0 91 6 94 0 92 6 94 0 93 6 94 0 94 6 94 0 100 6 94 0 101 6 94 0 104 6 94 0 105 6 94 0 110 6 94 0 111 6 94 0 113 6 94 0 115 6 94 0 118 6 94 0 120 6 94 0 123 6 94 0 124 6 94 0 130 6 94 0 139 13 81 1 24] 
#[0 13 85 0 137] 
#[0 13 89 0 137] 
#[0 13 93 0 131] 
#[1 7 158 0 30 7 158 0 33 7 158 0 57 7 158 0 59 7 158 0 74 7 158 0 96 7 158 0 97 7 158 0 112 7 158 0 127 7 158 0 128 7 158 0 137 13 97 1 12] 
#[0 13 101 0 137] 
#[1 3 101 0 139 13 105 0 236] 
#[1 2 254 0 40 2 254 0 88 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 113 13 109 0 228] 
#[0 7 162 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 41 0 140 13 113 0 192] 
#[1 13 117 0 40 9 149 0 88 9 153 0 92 9 157 0 93 9 161 0 94 9 165 0 113 9 173 0 229 9 173 0 230 9 173 0 231 9 173 0 232 9 173 0 233] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 13 121 0 131 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 13 125 0 26 13 129 0 40 4 9 0 52 4 17 0 89 7 121 0 91 13 133 0 253 13 133 0 254 13 133 0 255 13 133 1 2 13 133 1 3 13 133 1 5 13 133 1 6 13 133 1 7 13 133 1 9 7 193 1 10 13 133 1 11 13 133 1 47 4 57 1 48 13 133 1 49 4 65 1 50 13 133 1 52 13 133 1 53 13 133 1 55 4 77 1 56 13 133 1 57 4 85 1 58 13 133 1 60 13 133 1 61 13 133 1 63 8 1 1 64] 
#[1 13 145 0 31 6 98 0 137 13 145 0 226] 
#[1 7 166 0 3 11 97 0 17 7 166 0 21 11 97 0 22 7 166 0 23 7 166 0 24 11 97 0 25 7 166 0 26 7 166 0 27 7 166 0 28 11 1 0 31 7 166 0 32 11 5 0 33 11 97 0 38 7 166 0 40 11 97 0 42 7 166 0 44 11 97 0 45 11 97 0 47 7 166 0 48 7 166 0 51 7 166 0 52 7 166 0 56 7 166 0 61 11 97 0 62 7 166 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 7 166 0 88 7 166 0 89 7 166 0 91 7 166 0 92 7 166 0 93 7 166 0 94 11 97 0 100 11 97 0 101 7 166 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 166 0 113 7 166 0 115 7 166 0 118 11 97 0 120 7 166 0 123 11 97 0 124 7 166 0 130 7 166 0 139 13 13 1 26 11 97 1 28] 
#[0 7 170 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139] 
#[0 7 174 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 13 149 0 137] 
#[0 7 178 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 182 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 186 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 190 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 194 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 198 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 3 145 0 2 7 202 0 3 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 7 202 0 131 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 7 202 0 137 3 153 1 124] 
#[1 7 206 0 39 7 206 0 40 7 206 0 49 7 206 0 78 4 117 0 137] 
#[0 7 210 0 3 0 5] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 13 153 0 206 13 157 0 207 13 161 0 208 13 165 0 209 1 153 0 212 13 169 0 213 13 169 1 114 1 177 1 119 1 181 1 130] 
#[1 6 94 0 3 6 94 0 17 6 94 0 21 6 94 0 22 6 94 0 23 6 94 0 24 6 94 0 25 6 94 0 26 6 94 0 27 6 94 0 28 6 94 0 31 6 94 0 32 6 94 0 33 6 94 0 38 6 94 0 40 6 94 0 42 6 94 0 44 6 94 0 45 6 94 0 47 6 94 0 51 6 94 0 52 6 94 0 62 6 94 0 65 6 94 0 67 6 94 0 70 6 94 0 73 6 94 0 82 6 94 0 83 6 94 0 86 6 94 0 87 6 94 0 88 6 94 0 89 6 94 0 91 6 94 0 92 6 94 0 93 6 94 0 94 6 94 0 100 6 94 0 101 6 94 0 104 6 94 0 105 6 94 0 110 6 94 0 111 6 94 0 113 6 94 0 115 6 94 0 118 6 94 0 120 6 94 0 123 6 94 0 124 6 94 0 130 6 94 0 139 13 173 1 24] 
#[1 6 94 0 3 6 94 0 17 6 94 0 21 6 94 0 22 6 94 0 23 6 94 0 24 6 94 0 25 6 94 0 26 6 94 0 27 6 94 0 28 6 94 0 31 6 94 0 32 6 94 0 33 6 94 0 38 6 94 0 40 6 94 0 42 6 94 0 44 6 94 0 45 6 94 0 47 6 94 0 51 6 94 0 52 6 94 0 62 6 94 0 65 6 94 0 67 6 94 0 70 6 94 0 73 6 94 0 82 6 94 0 83 6 94 0 86 6 94 0 87 6 94 0 88 6 94 0 89 6 94 0 91 6 94 0 92 6 94 0 93 6 94 0 94 6 94 0 100 6 94 0 101 6 94 0 104 6 94 0 105 6 94 0 110 6 94 0 111 6 94 0 113 6 94 0 115 6 94 0 118 6 94 0 120 6 94 0 123 6 94 0 124 6 94 0 130 6 94 0 139 13 177 1 24] 
#[0 13 181 0 137] 
#[1 7 214 0 3 11 97 0 17 7 214 0 21 11 97 0 22 7 214 0 23 7 214 0 24 11 97 0 25 7 214 0 26 7 214 0 27 7 214 0 28 11 1 0 31 7 214 0 32 11 5 0 33 11 97 0 38 7 214 0 40 11 97 0 42 7 214 0 44 11 97 0 45 11 97 0 47 7 214 0 51 7 214 0 52 11 97 0 62 7 214 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 7 214 0 88 7 214 0 89 7 214 0 91 7 214 0 92 7 214 0 93 7 214 0 94 11 97 0 100 11 97 0 101 7 214 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 214 0 113 7 214 0 115 7 214 0 118 11 97 0 120 7 214 0 123 11 97 0 124 7 214 0 130 7 214 0 139 13 13 1 26 11 97 1 28] 
#[1 7 218 0 3 11 97 0 17 7 218 0 21 11 97 0 22 7 218 0 23 7 218 0 24 11 97 0 25 7 218 0 26 7 218 0 27 7 218 0 28 11 1 0 31 7 218 0 32 11 5 0 33 11 97 0 38 7 218 0 40 11 97 0 42 7 218 0 44 11 97 0 45 11 97 0 47 7 218 0 51 7 218 0 52 11 97 0 62 7 218 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 7 218 0 88 7 218 0 89 7 218 0 91 7 218 0 92 7 218 0 93 7 218 0 94 11 97 0 100 11 97 0 101 7 218 0 104 11 97 0 105 11 97 0 110 11 97 0 111 7 218 0 113 7 218 0 115 7 218 0 118 11 97 0 120 7 218 0 123 11 97 0 124 7 218 0 130 7 218 0 139 13 13 1 26 11 97 1 28] 
#[0 7 222 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 226 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 7 230 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 185 0 30 13 189 0 33 13 193 0 57 13 197 0 59 13 201 0 74 13 205 0 96 13 209 0 97 13 213 0 112 13 217 0 127 13 221 0 128 13 225 0 137 13 229 1 14 13 233 1 15 13 237 1 16 13 241 1 17 13 245 1 18 13 249 1 19 13 253 1 21] 
#[0 7 234 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 10 61 0 2 5 113 0 6 4 194 0 26 4 194 0 27 4 194 0 28 4 194 0 31 4 194 0 32 4 194 0 40 4 194 0 52 4 194 0 87 4 194 0 88 4 194 0 89 4 194 0 91 4 194 0 92 4 194 0 93 4 194 0 94 4 194 0 113 4 194 0 115 4 194 0 118 4 194 0 123 4 194 0 130 4 194 0 137 4 194 0 139 14 1 0 234] 
#[1 14 5 0 40 9 149 0 88 9 153 0 92 9 157 0 93 9 161 0 94 9 165 0 113 9 173 0 229 9 173 0 230 9 173 0 231 9 173 0 232 9 173 0 233] 
#[1 7 238 0 3 7 238 0 5 3 125 0 6 0 142 0 11 3 129 0 188 3 1 0 189] 
#[0 7 242 0 31 0 87 0 137] 
#[0 7 246 0 26 0 40 0 52 0 89 0 91] 
#[1 4 9 0 52 9 201 0 79 4 17 0 89 7 121 0 91 9 205 1 10 9 209 1 48 9 213 1 50 9 217 1 56 9 221 1 58] 
#[0 7 250 0 31 0 87 0 137] 
#[0 7 254 0 26 0 40 0 52 0 89 0 91] 
#[0 8 2 0 26 0 40 0 52 0 89 0 91] 
#[0 8 6 0 26 0 40 0 52 0 89 0 91] 
#[0 14 9 0 137] 
#[0 8 10 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 1 246 0 3 1 246 0 40 14 13 0 137 14 17 1 88] 
#[0 8 14 0 3 0 40 0 137] 
#[1 14 21 0 5 14 25 0 9] 
#[0 8 18 0 5 0 9] 
#[1 3 145 0 2 3 153 0 4 8 22 0 5 3 149 0 6 3 153 0 8 8 22 0 9 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 3 153 0 35 3 153 0 58 3 153 0 64 3 153 0 71 3 153 0 80 3 153 0 108 3 153 0 109 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 3 153 1 124] 
#[1 8 26 0 3 11 97 0 17 8 26 0 21 11 97 0 22 8 26 0 23 8 26 0 24 11 97 0 25 8 26 0 26 8 26 0 27 8 26 0 28 11 1 0 31 8 26 0 32 11 5 0 33 11 97 0 38 8 26 0 40 11 97 0 42 8 26 0 44 11 97 0 45 11 97 0 47 8 26 0 51 8 26 0 52 11 97 0 62 8 26 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 8 26 0 88 8 26 0 89 8 26 0 91 8 26 0 92 8 26 0 93 8 26 0 94 11 97 0 100 11 97 0 101 8 26 0 104 11 97 0 105 11 97 0 110 11 97 0 111 8 26 0 113 8 26 0 115 8 26 0 118 11 97 0 120 8 26 0 123 11 97 0 124 8 26 0 130 8 26 0 139 13 13 1 26 11 97 1 28] 
#[1 8 30 0 3 11 97 0 17 8 30 0 21 11 97 0 22 8 30 0 23 8 30 0 24 11 97 0 25 8 30 0 26 8 30 0 27 8 30 0 28 11 1 0 31 8 30 0 32 11 5 0 33 11 97 0 38 8 30 0 40 11 97 0 42 8 30 0 44 11 97 0 45 11 97 0 47 8 30 0 51 8 30 0 52 11 97 0 62 8 30 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 8 30 0 88 8 30 0 89 8 30 0 91 8 30 0 92 8 30 0 93 8 30 0 94 11 97 0 100 11 97 0 101 8 30 0 104 11 97 0 105 11 97 0 110 11 97 0 111 8 30 0 113 8 30 0 115 8 30 0 118 11 97 0 120 8 30 0 123 11 97 0 124 8 30 0 130 8 30 0 139 13 13 1 26 11 97 1 28] 
#[1 6 94 0 3 6 94 0 17 6 94 0 21 6 94 0 22 6 94 0 23 6 94 0 24 6 94 0 25 6 94 0 26 6 94 0 27 6 94 0 28 6 94 0 31 6 94 0 32 6 94 0 33 6 94 0 38 6 94 0 40 6 94 0 42 6 94 0 44 6 94 0 45 6 94 0 47 6 94 0 51 6 94 0 52 6 94 0 62 6 94 0 65 6 94 0 67 6 94 0 70 6 94 0 73 6 94 0 82 6 94 0 83 6 94 0 86 6 94 0 87 6 94 0 88 6 94 0 89 6 94 0 91 6 94 0 92 6 94 0 93 6 94 0 94 6 94 0 100 6 94 0 101 6 94 0 104 6 94 0 105 6 94 0 110 6 94 0 111 6 94 0 113 6 94 0 115 6 94 0 118 6 94 0 120 6 94 0 123 6 94 0 124 6 94 0 130 6 94 0 139 14 29 1 24] 
#[1 3 17 0 2 1 45 0 15 8 34 0 30 8 34 0 33 8 34 0 57 8 34 0 59 8 34 0 74 1 57 0 75 8 34 0 96 8 34 0 97 8 34 0 112 8 34 0 127 8 34 0 128 0 153 0 130 1 85 0 135 1 89 0 136 8 34 0 137 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 14 33 0 213 14 33 1 114 1 177 1 119 1 181 1 130] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 14 37 0 213 14 37 1 114 1 177 1 119 1 181 1 130] 
#[1 14 41 0 139 14 45 1 20] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 14 49 0 213 14 49 1 114 1 177 1 119 1 181 1 130] 
#[0 8 38 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 14 53 1 105 0 249 1 106 14 53 1 107 14 53 1 108 1 5 1 109 14 53 1 110 1 13 1 111 14 53 1 112 1 21 1 113 14 53 1 114 1 29 1 119 14 53 1 120 1 37 1 130] 
#[0 14 57 0 33] 
#[0 14 61 0 139] 
#[1 0 81 0 2 0 85 0 15 0 101 0 52 0 113 0 60 0 117 0 68 0 121 0 69 0 125 0 75 0 129 0 89 0 153 0 130 0 157 0 135 0 161 0 136 2 13 0 139 0 181 0 141 1 29 0 143 0 177 0 147 0 181 0 212 14 65 1 105 0 249 1 106 14 65 1 107 14 65 1 108 1 5 1 109 14 65 1 110 1 13 1 111 14 65 1 112 1 21 1 113 14 65 1 114 1 29 1 119 14 65 1 120 1 37 1 130] 
#[0 14 69 0 33] 
#[1 8 42 0 3 8 42 0 24 8 42 0 26 8 42 0 27 8 42 0 28 14 73 0 30 8 42 0 32 8 42 0 40 8 42 0 52 8 42 0 88 8 42 0 89 8 42 0 91 8 42 0 92 8 42 0 93 8 42 0 94 8 42 0 113 8 42 0 115 8 42 0 118 8 42 0 123 8 42 0 130 8 42 0 139 14 77 1 22] 
#[0 8 46 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 50 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 54 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 58 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 62 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 66 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 8 70 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 38 0 26 2 38 0 27 2 38 0 28 8 74 0 31 2 38 0 32 2 38 0 40 2 38 0 52 8 74 0 87 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 8 74 0 137 2 38 0 139 14 81 0 227 5 137 0 237] 
#[0 8 78 0 31 0 87 0 137] 
#[0 8 82 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 3 17 0 2 2 230 0 3 1 45 0 15 2 230 0 40 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 14 85 0 207 13 161 0 208 13 165 0 209 1 153 0 212 13 169 0 213 13 169 1 114 1 177 1 119 1 181 1 130] 
#[0 8 86 0 3 0 40] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 14 89 0 209 1 153 0 212 13 169 0 213 13 169 1 114 1 177 1 119 1 181 1 130] 
#[0 14 93 0 2] 
#[1 8 90 0 3 11 97 0 17 8 90 0 21 11 97 0 22 8 90 0 23 8 90 0 24 11 97 0 25 8 90 0 26 8 90 0 27 8 90 0 28 11 1 0 31 8 90 0 32 11 5 0 33 11 97 0 38 8 90 0 40 11 97 0 42 8 90 0 44 11 97 0 45 11 97 0 47 8 90 0 51 8 90 0 52 11 97 0 62 8 90 0 65 11 97 0 67 11 33 0 70 11 97 0 73 11 97 0 82 11 97 0 83 11 97 0 86 11 97 0 87 8 90 0 88 8 90 0 89 8 90 0 91 8 90 0 92 8 90 0 93 8 90 0 94 11 97 0 100 11 97 0 101 8 90 0 104 11 97 0 105 11 97 0 110 11 97 0 111 8 90 0 113 8 90 0 115 8 90 0 118 11 97 0 120 8 90 0 123 11 97 0 124 8 90 0 130 8 90 0 139 13 13 1 26 11 97 1 28] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 8 94 0 30 8 94 0 33 3 153 0 35 8 94 0 57 3 153 0 58 8 94 0 59 3 153 0 64 3 153 0 71 8 94 0 74 3 153 0 80 8 94 0 96 8 94 0 97 3 153 0 108 3 153 0 109 8 94 0 112 8 94 0 127 8 94 0 128 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 8 94 0 137 3 153 1 124] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 8 98 0 30 8 98 0 33 3 153 0 35 8 98 0 57 3 153 0 58 8 98 0 59 3 153 0 64 3 153 0 71 8 98 0 74 3 153 0 80 8 98 0 96 8 98 0 97 3 153 0 108 3 153 0 109 8 98 0 112 8 98 0 127 8 98 0 128 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 8 98 0 137 3 153 1 124] 
#[0 8 102 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 97 0 5 8 106 0 30 8 106 0 33 8 106 0 57 8 106 0 59 8 106 0 74 8 106 0 96 8 106 0 97 8 106 0 112 8 106 0 127 8 106 0 128 8 106 0 137] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 8 110 0 30 8 110 0 33 3 153 0 35 8 110 0 57 3 153 0 58 8 110 0 59 3 153 0 64 3 153 0 71 8 110 0 74 3 153 0 80 8 110 0 96 8 110 0 97 3 153 0 108 3 153 0 109 8 110 0 112 8 110 0 127 8 110 0 128 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 8 110 0 137 3 153 1 124] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 8 114 0 30 8 114 0 33 2 245 0 35 8 114 0 57 2 245 0 58 8 114 0 59 2 245 0 64 2 245 0 71 8 114 0 74 2 245 0 80 8 114 0 96 8 114 0 97 2 245 0 108 2 245 0 109 8 114 0 112 8 114 0 127 8 114 0 128 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 8 114 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 14 101 0 213 14 101 1 114 1 177 1 119 1 181 1 130] 
#[0 8 118 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 2 141 0 2 2 245 0 4 2 149 0 6 2 245 0 8 2 157 0 10 2 245 0 11 2 245 0 12 2 245 0 13 2 245 0 14 2 245 0 18 2 245 0 20 8 122 0 30 8 122 0 33 2 245 0 35 8 122 0 57 2 245 0 58 8 122 0 59 2 245 0 64 2 245 0 71 8 122 0 74 2 245 0 80 8 122 0 96 8 122 0 97 2 245 0 108 2 245 0 109 8 122 0 112 8 122 0 127 8 122 0 128 2 245 0 129 2 217 0 130 2 245 0 132 2 245 0 133 2 245 0 135 2 245 0 136 8 122 0 137 2 237 0 138 2 241 1 117 2 245 1 123 2 245 1 124] 
#[1 3 17 0 2 1 45 0 15 1 57 0 75 0 153 0 130 1 85 0 135 1 89 0 136 3 65 0 140 1 153 0 141 1 177 0 143 1 105 0 147 1 153 0 212 14 105 0 213 14 105 1 114 1 177 1 119 1 181 1 130] 
#[0 14 109 0 137] 
#[0 8 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 2 254 0 40 2 254 0 88 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 113 14 113 0 228] 
#[0 8 130 0 3 0 40 0 137] 
#[0 8 134 0 5 0 9] 
#[1 2 38 0 3 2 38 0 24 2 38 0 26 2 38 0 27 2 38 0 28 2 38 0 32 2 38 0 52 2 38 0 88 2 38 0 89 2 38 0 91 2 38 0 92 2 38 0 93 2 38 0 94 2 38 0 113 2 38 0 115 2 38 0 118 2 38 0 123 2 38 0 130 2 38 0 139 14 117 0 203 5 133 0 227 5 137 0 237] 
#[0 14 121 0 139] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 8 138 0 30 8 138 0 33 3 153 0 35 8 138 0 57 3 153 0 58 8 138 0 59 3 153 0 64 3 153 0 71 8 138 0 74 3 153 0 80 8 138 0 96 8 138 0 97 3 153 0 108 3 153 0 109 8 138 0 112 8 138 0 127 8 138 0 128 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 8 138 0 137 3 153 1 124] 
#[1 3 145 0 2 3 153 0 4 3 149 0 6 3 153 0 8 3 153 0 11 3 153 0 12 3 153 0 13 3 153 0 18 3 153 0 20 8 142 0 30 8 142 0 33 3 153 0 35 8 142 0 57 3 153 0 58 8 142 0 59 3 153 0 64 3 153 0 71 8 142 0 74 3 153 0 80 8 142 0 96 8 142 0 97 3 153 0 108 3 153 0 109 8 142 0 112 8 142 0 127 8 142 0 128 3 153 0 129 3 153 0 132 3 153 0 133 3 153 0 135 3 153 0 136 8 142 0 137 3 153 1 124] 
#[0 8 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[1 14 125 0 40 9 149 0 88 9 153 0 92 9 157 0 93 9 161 0 94 9 165 0 113 9 173 0 229 9 173 0 230 9 173 0 231 9 173 0 232 9 173 0 233] 
#[0 14 129 0 3] 
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
