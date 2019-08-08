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
#[ 0 250 3 221] 
#[ 1 218 3 161] 
#[ 1 218 3 165] 
#[ 1 218 3 169] 
#[ 1 218 3 173] 
#[ 1 218 3 189] 
#[ 1 218 3 221] 
#[ 1 218 3 225] 
#[ 1 242 3 161] 
#[ 1 242 3 165] 
#[ 1 242 3 169] 
#[ 1 242 3 173] 
#[ 1 242 3 189] 
#[ 1 242 3 221] 
#[ 1 242 3 225] 
#[ 2 18 3 161] 
#[ 2 18 3 165] 
#[ 2 18 3 169] 
#[ 2 18 3 173] 
#[ 2 18 3 189] 
#[ 2 18 3 221] 
#[ 2 18 3 225] 
#[ 2 22 3 161] 
#[ 2 22 3 165] 
#[ 2 22 3 169] 
#[ 2 22 3 173] 
#[ 2 22 3 189] 
#[ 2 22 3 221] 
#[ 2 22 3 225] 
#[ 2 158 6 177] 
#[ 2 166 3 161] 
#[ 2 166 3 165] 
#[ 2 166 3 169] 
#[ 2 166 3 189] 
#[ 2 166 3 221] 
#[ 2 166 3 225] 
#[ 2 170 3 161] 
#[ 2 170 3 165] 
#[ 2 170 3 169] 
#[ 2 170 3 189] 
#[ 2 170 3 221] 
#[ 2 170 3 225] 
#[ 2 182 3 161] 
#[ 2 182 3 165] 
#[ 2 182 3 169] 
#[ 2 182 3 189] 
#[ 2 182 3 221] 
#[ 2 182 3 225] 
#[ 2 186 3 161] 
#[ 2 186 3 165] 
#[ 2 186 3 169] 
#[ 2 186 3 189] 
#[ 2 186 3 221] 
#[ 2 186 3 225] 
#[ 3 161 3 182] 
#[ 3 165 3 182] 
#[ 3 169 3 182] 
#[ 3 173 3 182] 
#[ 3 182 3 189] 
#[ 3 182 3 221] 
#[ 3 182 3 225] 
#[ 3 161 3 190] 
#[ 3 165 3 190] 
#[ 3 169 3 190] 
#[ 3 173 3 190] 
#[ 3 189 3 190] 
#[ 3 190 3 221] 
#[ 3 190 3 225] 
#[ 3 214 3 221] 
#[ 3 161 3 246] 
#[ 3 165 3 246] 
#[ 3 169 3 246] 
#[ 3 189 3 246] 
#[ 3 221 3 246] 
#[ 3 225 3 246] 
#[ 0 198 11 1] 
#[ 0 222 5 50] 
#[ 0 226 5 54] 
#[ 1 194 5 105] 
#[ 6 66 9 201] 
#[ 6 66 9 205] 
#[ 6 66 9 253] 
#[ 7 254 9 201] 
#[ 7 254 9 205] 
#[ 7 254 9 253]
	).
]

{ #category : #'generated-accessing' }
DelphiParser class >> cacheId [
	^'2019-08-08T06:16:42.378337-05:00'
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
	#(164 0 #reduceActionForUsesList1: 5805057 false ) 
	#(360 0 #reduceActionForBeforeAsm1: 32550913 false ) 
	#(330 0 #reduceActionForStatement14: 29070350 false ) 
	#(204 0 #nil 11536385 false ) 
	#(290 0 #nil 23843841 false ) 
	#(149 1 #reduceActionForFile2: 4260866 false ) 
	#(149 1 #reduceActionForFile3: 4260867 false ) 
	#(149 1 #reduceActionForFile4: 4260868 false ) 
	#(149 1 #reduceActionForFile1: 4260865 false ) 
	#(163 0 #nil 5690369 false ) 
	#(161 1 #reduceActionForUnitFile2: 5363714 false ) 
	#(322 0 #reduceActionForMethodVariables2: 28315650 false ) 
	#(196 0 #reduceActionForOptionalArguments1: 10428417 false ) 
	#(376 1 #reduceActionForInheritedFunctionCall4: 35559428 false ) 
	#(352 1 #reduceActionForRaiseStatement2: 31717378 false ) 
	#(369 1 #reduceActionForVariableExpression1: 34961409 false ) 
	#(212 1 #liftFirstValue: 12228609 false ) 
	#(375 1 #liftFirstValue: 35536897 false ) 
	#(361 1 #reduceActionForExpression9: 32668681 false ) 
	#(361 1 #reduceActionForExpression9: 32668679 false ) 
	#(330 1 #reduceActionForStatement13: 29070349 false ) 
	#(330 1 #reduceActionForStatement11: 29070347 false ) 
	#(330 1 #reduceActionForStatement2: 29070338 false ) 
	#(330 1 #reduceActionForStatement3: 29070339 false ) 
	#(330 1 #reduceActionForStatement4: 29070340 false ) 
	#(330 1 #reduceActionForStatement5: 29070341 false ) 
	#(330 1 #reduceActionForStatement6: 29070342 false ) 
	#(330 1 #reduceActionForStatement7: 29070343 false ) 
	#(330 1 #reduceActionForStatement8: 29070344 false ) 
	#(330 1 #reduceActionForStatement9: 29070345 false ) 
	#(330 1 #reduceActionForStatement10: 29070346 false ) 
	#(330 1 #liftFirstValue: 29070348 false ) 
	#(358 1 #liftFirstValue: 32371714 false ) 
	#(330 1 #liftFirstValue: 29070337 false ) 
	#(361 1 #liftFirstValue: 32668675 false ) 
	#(189 0 #reduceActionForInsideGeneric1: 9038849 true ) 
	#(361 1 #liftFirstValue: 32668674 false ) 
	#(361 1 #liftFirstValue: 32668695 false ) 
	#(361 1 #liftFirstValue: 32668694 false ) 
	#(361 1 #liftFirstValue: 32668693 false ) 
	#(361 1 #liftFirstValue: 32668673 false ) 
	#(361 1 #liftFirstValue: 32668690 false ) 
	#(361 1 #reduceActionForExpression9: 32668680 false ) 
	#(361 1 #liftFirstValue: 32668678 false ) 
	#(361 1 #reduceActionForExpression9: 32668692 false ) 
	#(214 0 #reduceActionForConstantArray2: 13310978 false ) 
	#(244 1 #reduceActionForFileType2: 17831938 false ) 
	#(204 1 #liftFirstValue: 11536386 false ) 
	#(213 1 #reduceActionForVariableExpression1: 12251139 false ) 
	#(192 1 #reduceActionForVariableExpression1: 9341953 false ) 
	#(213 1 #reduceActionForExpression9: 12251143 false ) 
	#(243 1 #liftFirstValue: 17737732 false ) 
	#(243 1 #liftFirstValue: 17737729 false ) 
	#(187 1 #reduceActionForSimpleDefinedType1: 8471553 false ) 
	#(243 1 #liftFirstValue: 17737730 false ) 
	#(243 1 #liftFirstValue: 17737731 false ) 
	#(187 1 #liftFirstValue: 8471561 false ) 
	#(187 1 #liftFirstValue: 8471556 false ) 
	#(187 1 #liftFirstValue: 8471557 false ) 
	#(187 1 #liftFirstValue: 8471562 false ) 
	#(213 1 #reduceActionForExpression9: 12251137 false ) 
	#(211 1 #liftFirstValue: 12165121 false ) 
	#(187 1 #liftFirstValue: 8471559 false ) 
	#(187 1 #liftFirstValue: 8471555 false ) 
	#(213 1 #liftFirstValue: 12251145 false ) 
	#(213 1 #reduceActionForExpression9: 12251142 false ) 
	#(213 1 #reduceActionForExpression9: 12251138 false ) 
	#(179 0 #reduceActionForOptionalArguments1: 7458817 false ) 
	#(264 0 #reduceActionForOptionalType1: 19784705 false ) 
	#(288 1 #reduceActionForVariableNames1: 23688193 false ) 
	#(290 1 #liftFirstValue: 23843843 false ) 
	#(290 1 #liftFirstValue: 23843844 false ) 
	#(290 1 #liftFirstValue: 23843842 false ) 
	#(238 1 #liftFirstValue: 16359436 false ) 
	#(238 1 #liftFirstValue: 16359437 false ) 
	#(238 1 #liftFirstValue: 16359432 false ) 
	#(238 1 #liftFirstValue: 16359434 false ) 
	#(238 1 #liftFirstValue: 16359435 false ) 
	#(238 1 #liftFirstValue: 16359433 false ) 
	#(239 1 #liftFirstValue: 16881670 false ) 
	#(238 1 #liftFirstValue: 16359428 false ) 
	#(238 1 #liftFirstValue: 16359430 false ) 
	#(255 1 #liftFirstValue: 18963457 false ) 
	#(255 1 #liftFirstValue: 18963458 false ) 
	#(255 1 #liftFirstValue: 18963459 false ) 
	#(255 1 #liftFirstValue: 18963460 false ) 
	#(255 1 #liftFirstValue: 18963461 false ) 
	#(254 1 #liftFirstValue: 18890753 false ) 
	#(265 1 #reduceActionForPropertyHeader1: 19832833 false ) 
	#(254 1 #liftFirstValue: 18890754 false ) 
	#(256 1 #liftFirstValue: 19101697 false ) 
	#(256 1 #liftFirstValue: 19101698 false ) 
	#(257 1 #liftFirstValue: 19185665 false ) 
	#(257 1 #liftFirstValue: 19185666 false ) 
	#(258 1 #liftFirstValue: 19266561 false ) 
	#(303 1 #reduceActionForExternalProcedureHeader1: 25768961 false ) 
	#(258 1 #liftFirstValue: 19266562 false ) 
	#(305 1 #reduceActionForExternalProcedureHeader1: 25966593 false ) 
	#(259 1 #liftFirstValue: 19344385 false ) 
	#(259 1 #liftFirstValue: 19344386 false ) 
	#(261 1 #liftFirstValue: 19529729 false ) 
	#(311 1 #reduceActionForExternalFunctionHeader1: 26806273 false ) 
	#(261 1 #liftFirstValue: 19529730 false ) 
	#(313 1 #reduceActionForExternalFunctionHeader1: 26998785 false ) 
	#(262 1 #liftFirstValue: 19604481 false ) 
	#(262 1 #liftFirstValue: 19604482 false ) 
	#(263 1 #liftFirstValue: 19694593 false ) 
	#(263 1 #liftFirstValue: 19694594 false ) 
	#(238 1 #liftFirstValue: 16359427 false ) 
	#(325 1 #reduceActionForVars1: 28625921 false ) 
	#(167 1 #reduceActionForFullModuleName1: 6072321 false ) 
	#(193 0 #nil 9683969 false ) 
	#(165 1 #reduceActionForUsesModuleList1: 5883905 false ) 
	#(166 1 #reduceActionForUsesModule1: 5958657 false ) 
	#(154 0 #reduceActionForMethodVariables2: 4819969 false ) 
	#(291 0 #nil 23930881 false ) 
	#(155 1 #reduceActionForMainMethod1: 4874241 false ) 
	#(361 2 #reduceActionForExpression14: 32668686 false ) 
	#(329 1 #reduceActionForVariableNames1: 28966913 false ) 
	#(285 0 #reduceActionForArgumentList1: 23419905 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29681665 false ) 
	#(332 2 #reduceActionForGotoStatement1: 29681666 false ) 
	#(376 2 #reduceActionForInheritedFunctionCall3: 35559427 false ) 
	#(361 2 #reduceActionForExpression15: 32668687 false ) 
	#(365 2 #reduceActionForAnonymousProcedureHeader1: 34370561 false ) 
	#(353 0 #reduceActionForOptionalType1: 31825921 false ) 
	#(338 0 #nil 30426113 false ) 
	#(336 1 #reduceActionForVariableNames1: 30220289 false ) 
	#(370 2 #reduceActionForSetConstructor2: 35031042 false ) 
	#(372 1 #reduceActionForSetValue1: 35261441 false ) 
	#(371 1 #reduceActionForVariableNames1: 35161089 false ) 
	#(361 2 #reduceActionForExpression16: 32668688 false ) 
	#(361 2 #reduceActionForExpression17: 32668689 false ) 
	#(380 1 #liftFirstValue: 36257799 false ) 
	#(380 1 #liftFirstValue: 36257800 false ) 
	#(380 1 #liftFirstValue: 36257807 false ) 
	#(380 1 #liftFirstValue: 36257808 false ) 
	#(380 1 #liftFirstValue: 36257796 false ) 
	#(379 1 #liftFirstValue: 36193281 false ) 
	#(380 1 #liftFirstValue: 36257793 false ) 
	#(380 1 #liftFirstValue: 36257805 false ) 
	#(380 1 #liftFirstValue: 36257797 false ) 
	#(380 1 #liftFirstValue: 36257810 false ) 
	#(380 1 #liftFirstValue: 36257811 false ) 
	#(380 1 #liftFirstValue: 36257798 false ) 
	#(380 1 #liftFirstValue: 36257794 false ) 
	#(380 1 #liftFirstValue: 36257803 false ) 
	#(380 1 #liftFirstValue: 36257804 false ) 
	#(380 1 #liftFirstValue: 36257795 false ) 
	#(380 1 #liftFirstValue: 36257806 false ) 
	#(380 1 #liftFirstValue: 36257809 false ) 
	#(380 1 #liftFirstValue: 36257802 false ) 
	#(380 1 #liftFirstValue: 36257801 false ) 
	#(361 2 #reduceActionForExpression19: 32668691 false ) 
	#(361 2 #reduceActionForExpression13: 32668685 false ) 
	#(379 1 #liftFirstValue: 36193282 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 34085889 false ) 
	#(364 2 #reduceActionForAnonymousProcedure1: 34258945 false ) 
	#(366 2 #reduceActionForAnonymousFunction1: 34470913 false ) 
	#(363 2 #reduceActionForInstantiatedGenericExpression1: 34085890 false ) 
	#(185 1 #reduceActionForEnumName1: 8250369 false ) 
	#(184 1 #reduceActionForVariableNames1: 8177665 false ) 
	#(216 1 #reduceActionForUsesModule1: 13538305 false ) 
	#(214 1 #reduceActionForConstantArray1: 13310977 false ) 
	#(215 1 #reduceActionForUsesModuleList1: 13358081 false ) 
	#(344 0 #nil 31017985 false ) 
	#(217 1 #reduceActionForConstantArray1: 13673473 false ) 
	#(218 1 #reduceActionForVariableNames1: 13716481 false ) 
	#(213 2 #reduceActionForExpression14: 12251151 false ) 
	#(213 2 #reduceActionForExpression15: 12251148 false ) 
	#(260 0 #reduceActionForOptionalType1: 19437569 false ) 
	#(187 2 #reduceActionForSimpleDefinedType11: 8471563 false ) 
	#(213 2 #reduceActionForExpression16: 12251149 false ) 
	#(213 2 #reduceActionForExpression17: 12251150 false ) 
	#(187 2 #reduceActionForSimpleDefinedType2: 8471554 false ) 
	#(192 2 #reduceActionForNamedType3: 9341955 false ) 
	#(246 0 #reduceActionForOptionalArguments1: 18154498 false ) 
	#(237 0 #reduceActionForMethodVariables2: 16279553 false ) 
	#(287 2 #reduceActionForArgument2: 23548930 false ) 
	#(267 2 #reduceActionForClassPropertyHeader1: 20090881 false ) 
	#(308 2 #reduceActionForExternalClassProcedureHeader1: 26415105 false ) 
	#(309 2 #reduceActionForExternalClassProcedureHeader1: 26526721 false ) 
	#(316 2 #reduceActionForExternalClassFunctionHeader1: 27448321 false ) 
	#(317 2 #reduceActionForExternalClassFunctionHeader1: 27556865 false ) 
	#(238 2 #reduceActionForNewClassComponent2: 16359426 false ) 
	#(170 2 #reduceActionForConstantValueList1: 6426625 false ) 
	#(171 1 #reduceActionForConstantValues1: 6505473 false ) 
	#(301 0 #reduceActionForOptionalType1: 25553921 false ) 
	#(269 0 #nil 20513793 false ) 
	#(326 2 #reduceActionForVarsVars2: 28655618 false ) 
	#(327 1 #reduceActionForConstantValues1: 28743681 false ) 
	#(176 2 #reduceActionForDefinedTypeList1: 7120897 false ) 
	#(177 1 #reduceActionForConstantValues1: 7201793 false ) 
	#(326 2 #reduceActionForVarsVars2: 28655617 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16359429 false ) 
	#(238 2 #reduceActionForNewClassComponent5: 16359431 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16881665 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16881666 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16881667 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16881668 false ) 
	#(239 2 #reduceActionForNewClassComponent5: 16881669 false ) 
	#(279 0 #reduceActionForMethodVariables2: 21806081 false ) 
	#(193 1 #liftFirstValue: 9683971 false ) 
	#(193 1 #liftFirstValue: 9683970 false ) 
	#(157 3 #reduceActionForPackageLine1: 4992001 false ) 
	#(164 3 #reduceActionForUsesList2: 5805058 false ) 
	#(159 1 #reduceActionForVariableNames1: 5171201 false ) 
	#(168 0 #reduceActionForMethodVariables2: 6197249 false ) 
	#(381 0 #nil 36444161 false ) 
	#(150 3 #reduceActionForProgramFile2: 4390914 false ) 
	#(323 1 #liftFirstValue: 28387331 false ) 
	#(323 1 #liftFirstValue: 28387335 false ) 
	#(323 1 #liftFirstValue: 28387330 false ) 
	#(323 1 #liftFirstValue: 28387332 false ) 
	#(302 1 #reduceActionForProcedureDefinition2: 25602050 false ) 
	#(323 1 #liftFirstValue: 28387333 false ) 
	#(310 1 #reduceActionForFunctionDefinition2: 26644482 false ) 
	#(322 2 #reduceActionForMethodVariables1: 28315649 false ) 
	#(323 1 #liftFirstValue: 28387334 false ) 
	#(323 1 #liftFirstValue: 28387329 false ) 
	#(361 3 #reduceActionForExpression11: 32668683 false ) 
	#(358 3 #reduceActionForStatementBlock1: 32371713 false ) 
	#(285 1 #reduceActionForConstantArray1: 23419906 false ) 
	#(286 1 #reduceActionForVariableNames1: 23453697 false ) 
	#(367 3 #reduceActionForAnonymousFunctionHeader1: 34579457 false ) 
	#(352 3 #reduceActionForRaiseStatement1: 31717377 false ) 
	#(342 0 #nil 30828545 false ) 
	#(370 3 #reduceActionForSetConstructor1: 35031041 false ) 
	#(331 3 #reduceActionForPackageLine1: 29546497 false ) 
	#(331 3 #reduceActionForPackageLine1: 29546498 false ) 
	#(359 3 #reduceActionForAsmBlock1: 32476161 false ) 
	#(361 3 #reduceActionForExpression5: 32668677 false ) 
	#(378 1 #liftFirstValue: 36059137 false ) 
	#(377 1 #reduceActionForVariableNames1: 35951617 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33931266 false ) 
	#(362 3 #reduceActionForPropertyExpression2: 33931265 false ) 
	#(361 3 #reduceActionForExpression12: 32668684 false ) 
	#(374 1 #reduceActionForVariableNames1: 35448833 false ) 
	#(361 3 #reduceActionForExpression10: 32668682 false ) 
	#(183 3 #reduceActionForEnumType1: 8124417 false ) 
	#(213 3 #reduceActionForConstantExpression11: 12251147 false ) 
	#(344 1 #liftFirstValue: 31017986 false ) 
	#(244 3 #reduceActionForFileType1: 17831937 false ) 
	#(197 3 #reduceActionForSetType2: 10492930 false ) 
	#(197 3 #reduceActionForSetType1: 10492929 false ) 
	#(236 2 #reduceActionForQualifiedName1: 16078849 false ) 
	#(192 3 #reduceActionForPropertyExpression2: 9341954 false ) 
	#(228 0 #reduceActionForMethodVariables2: 15145985 false ) 
	#(227 1 #reduceActionForImplicitClassSection1: 15073281 false ) 
	#(210 3 #reduceActionForRangeType1: 12075009 false ) 
	#(220 1 #reduceActionForVariableNames1: 13975553 false ) 
	#(213 3 #reduceActionForPropertyExpression2: 12251140 false ) 
	#(213 3 #reduceActionForExpression10: 12251141 false ) 
	#(187 3 #reduceActionForSimpleDefinedType8: 8471560 false ) 
	#(240 3 #reduceActionForAttribute1: 17274881 false ) 
	#(181 1 #reduceActionForGenericTypeArgument1: 7704577 false ) 
	#(180 1 #reduceActionForVariableNames1: 7546881 false ) 
	#(264 2 #reduceActionForGotoStatement1: 19784706 false ) 
	#(288 3 #reduceActionForVariableNames2: 23688194 false ) 
	#(171 2 #reduceActionForMethodVariables1: 6505474 false ) 
	#(327 2 #reduceActionForMethodVariables1: 28743682 false ) 
	#(177 2 #reduceActionForMethodVariables1: 7201794 false ) 
	#(283 2 #reduceActionForExternalMethodModifier1: 22476801 false ) 
	#(283 2 #reduceActionForExternalMethodModifier6: 22476806 false ) 
	#(296 3 #reduceActionForExternalConstructorHeader1: 24687617 false ) 
	#(299 3 #reduceActionForExternalConstructorHeader1: 25211905 false ) 
	#(304 3 #reduceActionForExternalProcedureHeaderVars1: 25848833 false ) 
	#(312 3 #reduceActionForExternalFunctionHeaderVars1: 26883073 false ) 
	#(319 3 #reduceActionForExternalConstructorHeader1: 27858945 false ) 
	#(167 3 #reduceActionForFullModuleName2: 6072322 false ) 
	#(153 4 #reduceActionForLibraryLine1: 4703233 false ) 
	#(151 4 #reduceActionForLibraryLine1: 4506625 false ) 
	#(162 4 #reduceActionForLibraryLine1: 5585921 false ) 
	#(165 3 #reduceActionForUsesModuleList2: 5883906 false ) 
	#(166 3 #reduceActionForPackageLine1: 5958658 false ) 
	#(150 4 #reduceActionForProgramFile1: 4390913 false ) 
	#(154 2 #reduceActionForMethodVariables1: 4819970 false ) 
	#(158 3 #reduceActionForRequires1: 5090305 false ) 
	#(156 4 #reduceActionForPackageFile1: 4934657 false ) 
	#(163 3 #reduceActionForInterfaceSection2: 5690370 false ) 
	#(293 0 #reduceActionForMethodVariables2: 24163329 false ) 
	#(382 0 #nil 36554753 false ) 
	#(173 2 #reduceActionForResourceStringList1: 6791169 false ) 
	#(174 1 #reduceActionForConstantValues1: 6890497 false ) 
	#(302 2 #reduceActionForProcedureDefinition1: 25602049 false ) 
	#(310 2 #reduceActionForFunctionDefinition1: 26644481 false ) 
	#(321 3 #reduceActionForMethodComponents1: 28227585 false ) 
	#(329 3 #reduceActionForVariableNames2: 28966914 false ) 
	#(350 1 #reduceActionForBaseCaseLabel1: 31505409 false ) 
	#(351 0 #reduceActionForElseCase1: 31667201 false ) 
	#(346 1 #reduceActionForVariableNames1: 31122433 false ) 
	#(349 1 #reduceActionForVariableNames1: 31416321 false ) 
	#(348 1 #liftFirstValue: 31310849 false ) 
	#(196 3 #reduceActionForRequires1: 10428418 false ) 
	#(334 4 #reduceActionForIfStatement1: 29886465 false ) 
	#(376 4 #reduceActionForInheritedFunctionCall2: 35559426 false ) 
	#(353 2 #reduceActionForGotoStatement1: 31825922 false ) 
	#(333 4 #reduceActionForRepeatStatement1: 29783041 false ) 
	#(341 0 #nil 30752769 false ) 
	#(339 1 #reduceActionForConstantValues1: 30585857 false ) 
	#(357 4 #reduceActionForLibraryLine1: 32266241 false ) 
	#(336 3 #reduceActionForVariableNames2: 30220290 false ) 
	#(335 4 #reduceActionForRepeatStatement1: 30126081 false ) 
	#(372 3 #reduceActionForSetValue2: 35261442 false ) 
	#(371 3 #reduceActionForVariableNames2: 35161090 false ) 
	#(361 4 #reduceActionForExpression4: 32668676 false ) 
	#(373 3 #reduceActionForRequires1: 35394561 false ) 
	#(191 1 #reduceActionForVariableNames1: 9179137 false ) 
	#(190 0 #reduceActionForOutsideGeneric1: 9108481 true ) 
	#(185 3 #reduceActionForEnumName2: 8250370 false ) 
	#(219 3 #reduceActionForConstantRecordField1: 13850625 false ) 
	#(184 3 #reduceActionForVariableNames2: 8177666 false ) 
	#(216 3 #reduceActionForPackageLine1: 13538306 false ) 
	#(215 3 #reduceActionForUsesModuleList2: 13358082 false ) 
	#(213 4 #reduceActionForConstantExpression10: 12251146 false ) 
	#(218 3 #reduceActionForVariableNames2: 13716482 false ) 
	#(260 2 #reduceActionForGotoStatement1: 19437570 false ) 
	#(248 1 #liftFirstValue: 18331650 false ) 
	#(248 1 #liftFirstValue: 18331649 false ) 
	#(247 1 #reduceActionForVariableNames1: 18220033 false ) 
	#(201 4 #reduceActionForRecordType1: 11126785 false ) 
	#(203 2 #reduceActionForRecordFieldList1: 11400193 false ) 
	#(237 2 #reduceActionForMethodVariables1: 16279554 false ) 
	#(213 4 #reduceActionForExpression4: 12251144 false ) 
	#(187 4 #reduceActionForSimpleDefinedType6: 8471558 false ) 
	#(179 3 #reduceActionForRequires1: 7458818 false ) 
	#(223 0 #reduceActionForMethodVariables2: 14743553 false ) 
	#(250 1 #liftFirstValue: 18582530 false ) 
	#(250 1 #liftFirstValue: 18582529 false ) 
	#(234 0 #reduceActionForOptionalArguments1: 15918081 false ) 
	#(178 4 #reduceActionForNamedDefinedType1: 7309313 false ) 
	#(182 1 #reduceActionForUsesModule1: 7853059 false ) 
	#(182 1 #reduceActionForUsesModule1: 7853060 false ) 
	#(186 1 #liftFirstValue: 8359940 false ) 
	#(186 1 #liftFirstValue: 8359937 false ) 
	#(186 1 #liftFirstValue: 8359941 false ) 
	#(186 1 #liftFirstValue: 8359938 false ) 
	#(186 1 #liftFirstValue: 8359939 false ) 
	#(249 1 #reduceActionForInterfaceType2: 18387970 false ) 
	#(289 0 #reduceActionForOptionalType1: 23779329 false ) 
	#(280 0 #reduceActionForMethodVariables2: 21876737 false ) 
	#(301 2 #reduceActionForGotoStatement1: 25553922 false ) 
	#(268 0 #reduceActionForPropertyValues1: 20183041 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22476804 false ) 
	#(283 3 #reduceActionForExternalMethodModifier4: 22476802 false ) 
	#(284 1 #liftFirstValue: 23131147 false ) 
	#(284 1 #liftFirstValue: 23131141 false ) 
	#(284 1 #liftFirstValue: 23131150 false ) 
	#(284 1 #liftFirstValue: 23131145 false ) 
	#(284 1 #liftFirstValue: 23131151 false ) 
	#(284 1 #liftFirstValue: 23131154 false ) 
	#(284 1 #liftFirstValue: 23131149 false ) 
	#(284 1 #liftFirstValue: 23131157 false ) 
	#(284 1 #liftFirstValue: 23131156 false ) 
	#(284 1 #liftFirstValue: 23131155 false ) 
	#(284 1 #liftFirstValue: 23131148 false ) 
	#(284 1 #liftFirstValue: 23131137 false ) 
	#(284 1 #liftFirstValue: 23131138 false ) 
	#(284 1 #liftFirstValue: 23131142 false ) 
	#(284 1 #liftFirstValue: 23131153 false ) 
	#(284 1 #liftFirstValue: 23131140 false ) 
	#(284 1 #liftFirstValue: 23131143 false ) 
	#(284 1 #liftFirstValue: 23131158 false ) 
	#(284 1 #liftFirstValue: 23131152 false ) 
	#(284 1 #liftFirstValue: 23131139 false ) 
	#(284 1 #liftFirstValue: 23131146 false ) 
	#(284 1 #liftFirstValue: 23131144 false ) 
	#(279 2 #reduceActionForMethodVariables1: 21806082 false ) 
	#(281 1 #liftFirstValue: 21980161 false ) 
	#(281 1 #liftFirstValue: 21980162 false ) 
	#(384 1 #reduceActionForVariableNames1: 36768769 false ) 
	#(152 5 #reduceActionForLibraryFile1: 4623361 false ) 
	#(159 3 #reduceActionForVariableNames2: 5171202 false ) 
	#(160 3 #reduceActionForUsesList2: 5280769 false ) 
	#(385 2 #reduceActionForGotoStatement1: 36859905 false ) 
	#(168 2 #reduceActionForMethodVariables1: 6197250 false ) 
	#(169 1 #liftFirstValue: 6291459 false ) 
	#(169 1 #liftFirstValue: 6291458 false ) 
	#(169 1 #liftFirstValue: 6291457 false ) 
	#(169 1 #liftFirstValue: 6291460 false ) 
	#(169 1 #liftFirstValue: 6291461 false ) 
	#(169 1 #liftFirstValue: 6291462 false ) 
	#(292 0 #nil 24077313 false ) 
	#(381 2 #reduceActionForInitializationSection2: 36444162 false ) 
	#(324 3 #reduceActionForLabels1: 28533761 false ) 
	#(174 2 #reduceActionForMethodVariables1: 6890498 false ) 
	#(345 2 #reduceActionForCaseOptionList1: 31070209 false ) 
	#(356 1 #liftFirstValue: 32233474 false ) 
	#(356 1 #liftFirstValue: 32233473 false ) 
	#(286 3 #reduceActionForVariableNames2: 23453698 false ) 
	#(376 5 #reduceActionForInheritedFunctionCall1: 35559425 false ) 
	#(338 3 #reduceActionForExcept3: 30426115 false ) 
	#(339 2 #reduceActionForMethodVariables1: 30585858 false ) 
	#(338 3 #reduceActionForExcept2: 30426114 false ) 
	#(342 2 #reduceActionForFinally2: 30828546 false ) 
	#(337 5 #reduceActionForTryStatement1: 30325761 false ) 
	#(377 3 #reduceActionForVariableNames2: 35951618 false ) 
	#(378 3 #reduceActionForMethodArgument2: 36059138 false ) 
	#(374 3 #reduceActionForVariableNames2: 35448834 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType1: 9760769 false ) 
	#(194 5 #reduceActionForAnonymousProcedureType2: 9760770 false ) 
	#(197 5 #reduceActionForSetType3: 10492931 false ) 
	#(236 4 #reduceActionForQualifiedName2: 16078850 false ) 
	#(246 3 #reduceActionForRequires1: 18154497 false ) 
	#(245 5 #reduceActionForArrayType2: 17943554 false ) 
	#(245 5 #reduceActionForArrayType1: 17943553 false ) 
	#(203 3 #reduceActionForRecordFieldList2: 11400194 false ) 
	#(228 2 #reduceActionForMethodVariables1: 15145986 false ) 
	#(229 1 #liftFirstValue: 15208449 false ) 
	#(229 1 #liftFirstValue: 15208450 false ) 
	#(229 1 #liftFirstValue: 15208451 false ) 
	#(229 1 #liftFirstValue: 15208452 false ) 
	#(220 3 #reduceActionForVariableNames2: 13975554 false ) 
	#(181 3 #reduceActionForGenericTypeArgument2: 7704578 false ) 
	#(180 3 #reduceActionForVariableNames2: 7546882 false ) 
	#(182 2 #reduceActionForDefinedType2: 7853058 false ) 
	#(251 0 #nil 18637825 false ) 
	#(178 5 #reduceActionForNamedDefinedType2: 7309314 false ) 
	#(226 0 #nil 15012865 false ) 
	#(287 5 #reduceActionForArgument1: 23548929 false ) 
	#(297 5 #reduceActionForNonExternalConstructorHeader1: 24823809 false ) 
	#(300 5 #reduceActionForNonExternalDestructorHeader1: 25345025 false ) 
	#(241 5 #reduceActionForInterfaceFunctionAssignment1: 17361921 false ) 
	#(242 5 #reduceActionForInterfaceProcedureAssignment1: 17545217 false ) 
	#(306 5 #reduceActionForNonExternalProcedureHeaderVars1: 26052609 false ) 
	#(269 3 #reduceActionForPropertyArrayAccessors2: 20513794 false ) 
	#(238 5 #reduceActionForNewClassComponent1: 16359425 false ) 
	#(282 2 #reduceActionForExternalMethodModifier6: 22054913 false ) 
	#(383 3 #reduceActionForExportsDefinition1: 36658177 false ) 
	#(294 1 #liftFirstValue: 24222730 false ) 
	#(294 1 #liftFirstValue: 24222731 false ) 
	#(294 1 #liftFirstValue: 24222728 false ) 
	#(291 4 #reduceActionForImplementationSection2: 23930882 false ) 
	#(293 2 #reduceActionForMethodVariables1: 24163330 false ) 
	#(294 1 #liftFirstValue: 24222721 false ) 
	#(295 1 #reduceActionForConstructorDefinition2: 24510466 false ) 
	#(294 1 #liftFirstValue: 24222722 false ) 
	#(298 1 #reduceActionForDestructorDefinition2: 25039874 false ) 
	#(294 1 #liftFirstValue: 24222723 false ) 
	#(294 1 #liftFirstValue: 24222724 false ) 
	#(307 1 #reduceActionForClassProcedureDefinition2: 26222594 false ) 
	#(294 1 #liftFirstValue: 24222725 false ) 
	#(294 1 #liftFirstValue: 24222726 false ) 
	#(315 1 #reduceActionForClassFunctionDefinition2: 27260930 false ) 
	#(294 1 #liftFirstValue: 24222727 false ) 
	#(318 1 #reduceActionForClassOperatorDefinition2: 27671554 false ) 
	#(294 1 #liftFirstValue: 24222729 false ) 
	#(294 1 #liftFirstValue: 24222732 false ) 
	#(382 2 #reduceActionForFinalizationSection2: 36554754 false ) 
	#(161 6 #reduceActionForUnitFile1: 5363713 false ) 
	#(350 3 #reduceActionForBaseCaseLabel2: 31505410 false ) 
	#(351 2 #reduceActionForElseCase2: 31667202 false ) 
	#(343 6 #reduceActionForCaseStatement1: 30896129 false ) 
	#(346 3 #reduceActionForVariableNames2: 31122434 false ) 
	#(347 3 #reduceActionForCaseOption1: 31224833 false ) 
	#(349 3 #reduceActionForVariableNames2: 31416322 false ) 
	#(348 3 #reduceActionForCaseLabel2: 31310850 false ) 
	#(355 6 #reduceActionForForInStatement1: 32087041 false ) 
	#(334 6 #reduceActionForForInStatement1: 29886466 false ) 
	#(368 6 #reduceActionForMemExpression1: 34689025 false ) 
	#(368 6 #reduceActionForMemExpression1: 34689026 false ) 
	#(341 2 #reduceActionForPossibleExceptElse2: 30752770 false ) 
	#(191 3 #reduceActionForVariableNames2: 9179138 false ) 
	#(188 5 #reduceActionForInstantiatedGenericTypeArguments1: 8907777 false ) 
	#(202 6 #reduceActionForRecordHelperType1: 11232257 false ) 
	#(199 1 #reduceActionForVariableNames1: 10927105 false ) 
	#(198 3 #reduceActionForTwoItemSetNameList1: 10770433 false ) 
	#(247 3 #reduceActionForVariableNames2: 18220034 false ) 
	#(230 2 #reduceActionForPrivateClassSection2: 15322114 false ) 
	#(231 2 #reduceActionForProtectedClassSection2: 15514626 false ) 
	#(232 2 #reduceActionForPublicClassSection1: 15721473 false ) 
	#(233 2 #reduceActionForPublishedClassSection1: 15813633 false ) 
	#(200 3 #reduceActionForMetaclassType1: 11030529 false ) 
	#(224 1 #liftFirstValue: 14818305 false ) 
	#(224 1 #liftFirstValue: 14818306 false ) 
	#(223 2 #reduceActionForMethodVariables1: 14743554 false ) 
	#(221 3 #reduceActionForNewClassType2: 14095362 false ) 
	#(235 1 #reduceActionForVariableNames1: 15979521 false ) 
	#(182 3 #reduceActionForPackageLine1: 7853061 false ) 
	#(182 3 #reduceActionForPackageLine1: 7853057 false ) 
	#(252 0 #reduceActionForMethodVariables2: 18713601 false ) 
	#(226 1 #liftFirstValue: 15012866 false ) 
	#(289 2 #reduceActionForGotoStatement1: 23779330 false ) 
	#(328 6 #reduceActionForVariable1: 28843009 false ) 
	#(297 6 #reduceActionForNonExternalConstructorHeader2: 24823810 false ) 
	#(300 6 #reduceActionForNonExternalDestructorHeader2: 25345026 false ) 
	#(280 2 #reduceActionForMethodVariables1: 21876738 false ) 
	#(314 6 #reduceActionForNonExternalFunctionHeaderVars1: 27081729 false ) 
	#(274 1 #reduceActionForPropertyDefault2: 21188610 false ) 
	#(274 1 #reduceActionForPropertyDefault3: 21188611 false ) 
	#(278 0 #nil 21705729 false ) 
	#(268 2 #reduceActionForPropertyValues2: 20183042 false ) 
	#(268 2 #reduceActionForCaseOptionList1: 20183043 false ) 
	#(268 2 #reduceActionForPropertyValues4: 20183044 false ) 
	#(268 2 #reduceActionForPropertyValues8: 20183048 false ) 
	#(268 2 #reduceActionForPropertyValues5: 20183045 false ) 
	#(268 2 #reduceActionForPropertyValues7: 20183047 false ) 
	#(268 2 #reduceActionForPropertyValues6: 20183046 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22476805 false ) 
	#(283 5 #reduceActionForExternalMethodModifier5: 22476803 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier2: 22054914 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22054916 false ) 
	#(282 3 #reduceActionForNonExternalMethodModifier4: 22054915 false ) 
	#(384 3 #reduceActionForVariableNames2: 36768770 false ) 
	#(292 2 #reduceActionForImplementationCode2: 24077314 false ) 
	#(295 2 #reduceActionForConstructorDefinition1: 24510465 false ) 
	#(298 2 #reduceActionForDestructorDefinition1: 25039873 false ) 
	#(307 2 #reduceActionForClassProcedureDefinition1: 26222593 false ) 
	#(315 2 #reduceActionForClassFunctionDefinition1: 27260929 false ) 
	#(318 2 #reduceActionForClassOperatorDefinition1: 27671553 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType1: 10073089 false ) 
	#(195 7 #reduceActionForAnonymousFunctionType2: 10073090 false ) 
	#(230 3 #reduceActionForPrivateClassSection1: 15322113 false ) 
	#(231 3 #reduceActionForProtectedClassSection1: 15514625 false ) 
	#(234 3 #reduceActionForRequires1: 15918082 false ) 
	#(172 7 #reduceActionForConstantValue1: 6600705 false ) 
	#(320 7 #reduceActionForNonExternalClassOperatorHeader1: 28001281 false ) 
	#(274 2 #reduceActionForPropertyDefault1: 21188609 false ) 
	#(273 2 #reduceActionForPropertyDispid1: 20876289 false ) 
	#(276 1 #reduceActionForVariableNames1: 21496833 false ) 
	#(275 2 #reduceActionForPropertyImplements1: 21392385 false ) 
	#(270 2 #reduceActionForPropertyIndex1: 20611073 false ) 
	#(271 2 #reduceActionForPropertyReader1: 20704257 false ) 
	#(277 2 #reduceActionForPropertyStored1: 21616641 false ) 
	#(272 2 #reduceActionForPropertyWriter1: 20789249 false ) 
	#(266 7 #reduceActionForPropertyHeaderVars1: 19893249 false ) 
	#(175 5 #reduceActionForResource1: 6965249 false ) 
	#(354 8 #reduceActionForForStatement1: 31893505 false ) 
	#(340 5 #reduceActionForOnDo1: 30650369 false ) 
	#(199 3 #reduceActionForVariableNames2: 10927106 false ) 
	#(235 3 #reduceActionForVariableNames2: 15979522 false ) 
	#(225 5 #reduceActionForOldClassType1: 14863361 false ) 
	#(251 3 #reduceActionForGuid2: 18637826 false ) 
	#(249 5 #reduceActionForInterfaceType1: 18387969 false ) 
	#(252 2 #reduceActionForMethodVariables1: 18713602 false ) 
	#(253 1 #liftFirstValue: 18805762 false ) 
	#(253 1 #liftFirstValue: 18805761 false ) 
	#(273 3 #reduceActionForPropertyDispid2: 20876290 false ) 
	#(273 3 #reduceActionForPropertyDispid3: 20876291 false ) 
	#(278 2 #reduceActionForPropertyModifiers2: 21705730 false ) 
	#(206 1 #reduceActionForVariableNames1: 11735041 false ) 
	#(208 1 #reduceActionForVariableNames1: 11950081 false ) 
	#(209 1 #liftFirstValue: 12037121 false ) 
	#(222 6 #reduceActionForClassHelperType2: 14327810 false ) 
	#(221 6 #reduceActionForNewClassType1: 14095361 false ) 
	#(276 3 #reduceActionForVariableNames2: 21496834 false ) 
	#(205 6 #reduceActionForVariantRecordPart1: 11585537 false ) 
	#(206 3 #reduceActionForVariableNames2: 11735042 false ) 
	#(208 3 #reduceActionForVariableNames2: 11950082 false ) 
	#(222 9 #reduceActionForClassHelperType1: 14327809 false ) 
	#(207 5 #reduceActionForVariantType1: 11849729 false )
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
	^ #('"&OPERATOR"' '"("' '")"' '"*"' '","' '"."' '".."' '"/"' '":"' '":="' '"<"' '"<="' '"<>"' '"="' '"@"' '"ABSOLUTE"' '"ABSTRACT"' '"AND"' '"ARRAY"' '"AS"' '"ASM"' '"ASSEMBLER"' '"BEGIN"' '"CASE"' '"CDECL"' '"CLASS"' '"CONST"' '"CONSTRUCTOR"' '"CONTAINS"' '"DEFAULT"' '"DEPRECATED"' '"DESTRUCTOR"' '"DISPID"' '"DISPINTERFACE"' '"DIV"' '"DO"' '"DOWNTO"' '"DYNAMIC"' '"ELSE"' '"END"' '"EXCEPT"' '"EXPORT"' '"EXPORTS"' '"EXTERNAL"' '"FAR"' '"FILE"' '"FINAL"' '"FINALIZATION"' '"FINALLY"' '"FOR"' '"FORWARD"' '"FUNCTION"' '"GOTO"' '"HELPER"' '"IF"' '"IMPLEMENTATION"' '"IMPLEMENTS"' '"IN"' '"INDEX"' '"INHERITED"' '"INITIALIZATION"' '"INLINE"' '"INTERFACE"' '"IS"' '"LABEL"' '"LIBRARY"' '"LOCAL"' '"MEM"' '"MEMW"' '"MESSAGE"' '"MOD"' '"NAME"' '"NEAR"' '"NODEFAULT"' '"NOT"' '"OBJECT"' '"OF"' '"ON"' '"OPERATOR"' '"OR"' '"OUT"' '"OVERLOAD"' '"OVERRIDE"' '"PACKAGE"' '"PACKED"' '"PASCAL"' '"PLATFORM"' '"PRIVATE"' '"PROCEDURE"' '"PROGRAM"' '"PROPERTY"' '"PROTECTED"' '"PUBLIC"' '"PUBLISHED"' '"RAISE"' '"READ"' '"READONLY"' '"RECORD"' '"REFERENCE"' '"REGISTER"' '"REINTRODUCE"' '"REPEAT"' '"REQUIRES"' '"RESOURCESTRING"' '"SAFECALL"' '"SEALED"' '"SET"' '"SHL"' '"SHR"' '"STATIC"' '"STDCALL"' '"STORED"' '"STRICT"' '"THEN"' '"THREADVAR"' '"TO"' '"TRY"' '"TYPE"' '"UNIT"' '"UNSAFE"' '"UNTIL"' '"USES"' '"VAR"' '"VIRTUAL"' '"WHILE"' '"WITH"' '"WRITE"' '"WRITEONLY"' '"XOR"' '"["' '"]"' '<gt>' '<gtEq>' '<at>' '<minus>' '<plus>' '<semicolon>' '<upArrow>' '<identifier>' '<constantIdentifier>' '<number>' '<integerWithRange>' '<string>' '<comment>' '<whitespace>' '<patternToken>' '<multiple_control_chars>' 'B e g i n' 'File' 'ProgramFile' 'ProgramLine' 'LibraryFile' 'LibraryLine' 'Exports' 'MainMethod' 'PackageFile' 'PackageLine' 'Requires' 'RequiresList' 'Contains' 'UnitFile' 'UnitLine' 'InterfaceSection' 'UsesList' 'UsesModuleList' 'UsesModule' 'FullModuleName' 'InterfaceSectionValueList' 'InterfaceSectionValue' 'ConstantValueList' 'ConstantValues' 'ConstantValue' 'ResourceStringList' 'Resources' 'Resource' 'DefinedTypeList' 'NamedDefinedTypes' 'NamedDefinedType' 'OptionalGenericTypeArguments' 'GenericTypeArgumentList' 'GenericTypeArgument' 'DefinedType' 'EnumType' 'EnumList' 'EnumName' 'ClassOrInterfaceType' 'SimpleDefinedType' 'InstantiatedGenericTypeArguments' 'InsideGeneric' 'OutsideGeneric' 'InstantiatedGenericTypeArgumentList' 'NamedType' 'OptionalPlatform' 'AnonymousProcedureType' 'AnonymousFunctionType' 'OptionalArguments' 'SetType' 'TwoItemSetNameList' 'SetNameList' 'MetaclassType' 'RecordType' 'RecordHelperType' 'RecordFieldList' 'OptionalPacked' 'VariantRecordPart' 'VariantTypes' 'VariantType' 'VariantNames' 'VariantName' 'RangeType' 'RangeValue' 'Number' 'ConstantExpression' 'ConstantArray' 'ConstantExpressionList' 'EnumExpression' 'ConstantRecord' 'ConstantRecordFields' 'ConstantRecordField' 'ConstantArguments' 'NewClassType' 'ClassHelperType' 'ClassAttributes' 'ClassAttribute' 'OldClassType' 'OptionalDeprecated' 'ImplicitClassSection' 'ClassSections' 'ClassSection' 'PrivateClassSection' 'ProtectedClassSection' 'PublicClassSection' 'PublishedClassSection' 'Superclass' 'SuperclassList' 'QualifiedName' 'NewClassComponents' 'NewClassComponent' 'NewClassMethodComponent' 'Attribute' 'InterfaceFunctionAssignment' 'InterfaceProcedureAssignment' 'Type' 'FileType' 'ArrayType' 'ArrayBounds' 'ArrayBoundsIndices' 'ArrayBoundsIndex' 'InterfaceType' 'InterfaceKeyword' 'Guid' 'NewInterfaceComponents' 'NewInterfaceComponent' 'InterfacePropertyComponent' 'InterfaceMethodComponent' 'ConstructorHeader' 'DestructorHeader' 'ProcedureHeader' 'ClassProcedureHeader' 'OptionalOfObject' 'FunctionHeader' 'ClassFunctionHeader' 'ClassOperatorHeader' 'OptionalType' 'PropertyHeader' 'PropertyHeaderVars' 'ClassPropertyHeader' 'PropertyValues' 'PropertyArrayAccessors' 'PropertyIndex' 'PropertyReader' 'PropertyWriter' 'PropertyDispid' 'PropertyDefault' 'PropertyImplements' 'PropertyImplementsList' 'PropertyStored' 'PropertyModifiers' 'MethodModifiers' 'NonExternalMethodModifiers' 'MethodModifier' 'NonExternalMethodModifier' 'ExternalMethodModifier' 'ModifierKeyword' 'ArgumentList' 'Arguments' 'Argument' 'VariableNames' 'OptionalValue' 'ArgumentType' 'ImplementationSection' 'ImplementationCode' 'Definitions' 'Definition' 'ConstructorDefinition' 'ExternalConstructorHeader' 'NonExternalConstructorHeader' 'DestructorDefinition' 'ExternalDestructorHeader' 'NonExternalDestructorHeader' 'OptionalParens' 'ProcedureDefinition' 'ExternalProcedureHeader' 'ExternalProcedureHeaderVars' 'NonExternalProcedureHeader' 'NonExternalProcedureHeaderVars' 'ClassProcedureDefinition' 'ExternalClassProcedureHeader' 'NonExternalClassProcedureHeader' 'FunctionDefinition' 'ExternalFunctionHeader' 'ExternalFunctionHeaderVars' 'NonExternalFunctionHeader' 'NonExternalFunctionHeaderVars' 'ClassFunctionDefinition' 'ExternalClassFunctionHeader' 'NonExternalClassFunctionHeader' 'ClassOperatorDefinition' 'ExternalClassOperatorHeader' 'NonExternalClassOperatorHeader' 'MethodComponents' 'MethodVariables' 'MethodVariable' 'Labels' 'Vars' 'VarsVars' 'VariablesList' 'Variable' 'Statements' 'Statement' 'LabeledStatement' 'GotoStatement' 'RepeatStatement' 'IfStatement' 'WithStatement' 'WithExpressions' 'TryStatement' 'Except' 'OnDos' 'OnDo' 'PossibleExceptElse' 'Finally' 'CaseStatement' 'OptionalSemicolon' 'CaseOptionList' 'CaseOptions' 'CaseOption' 'CaseLabel' 'CaseLabels' 'BaseCaseLabel' 'ElseCase' 'RaiseStatement' 'OptionalRaiseAt' 'ForStatement' 'ForInStatement' 'ToDownTo' 'WhileStatement' 'StatementBlock' 'AsmBlock' 'BeforeAsm' 'Expression' 'PropertyExpression' 'InstantiatedGenericExpression' 'AnonymousProcedure' 'AnonymousProcedureHeader' 'AnonymousFunction' 'AnonymousFunctionHeader' 'MemExpression' 'VariableExpression' 'SetConstructor' 'SetConstructorValues' 'SetValue' 'ArrayIndex' 'ArrayIndices' 'String' 'InheritedFunctionCall' 'MethodArguments' 'MethodArgument' 'Operator' 'ConstantOperator' 'InitializationSection' 'FinalizationSection' 'ExportsDefinition' 'ExportsList' 'EndFile' '<controlCharacter>' 'E O F' 'error')
]

{ #category : #generated }
DelphiParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #DelphiCompilationFileNode #DelphiCompilationFileNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiMainMethodDefinitionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiInterfaceSectionNode #OrderedCollection #OrderedCollection #OrderedCollection #DelphiModuleNameNode #OrderedCollection #DelphiProgramNode #DelphiConstantListNode #OrderedCollection #DelphiConstantDefinitionNode #DelphiResourceStringListNode #OrderedCollection #DelphiResourceStringDefinitionNode #DelphiDefinedTypeListNode #OrderedCollection #DelphiNamedDefinedTypeNode #OrderedCollection #OrderedCollection #DelphiTypeArgumentNode #OrderedCollection #DelphiEnumTypeNode #OrderedCollection #DelphiEnumNameNode #DelphiTypeNode #DelphiProgramNode #OrderedCollection nil nil #OrderedCollection #DelphiProgramNode #SmaCCToken #DelphiAnonymousProcedureTypeNode #DelphiAnonymousFunctionTypeNode #OrderedCollection #DelphiSetTypeNode #OrderedCollection #OrderedCollection #DelphiMetaclassTypeNode #DelphiRecordTypeNode #DelphiRecordHelperTypeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiVariantTypeNode #OrderedCollection #DelphiExpressionNode #DelphiRangeTypeNode #DelphiExpressionNode #SmaCCToken #DelphiExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiConstantRecordFieldNode #OrderedCollection #DelphiNewClassTypeNode #DelphiClassHelperTypeNode #OrderedCollection #SmaCCToken #DelphiOldClassTypeNode #SmaCCToken #DelphiImplicitClassSectionNode #OrderedCollection #DelphiClassSectionNode #DelphiPrivateClassSectionNode #DelphiProtectedClassSectionNode #DelphiPublicClassSectionNode #DelphiPublishedClassSectionNode #OrderedCollection #OrderedCollection #DelphiQualifiedNameNode #OrderedCollection #DelphiProgramNode #DelphiMethodHeaderNode #DelphiAttributeNode #DelphiInterfaceFunctionAssignmentNode #DelphiInterfaceProcedureAssignmentNode #DelphiProgramNode #DelphiFileTypeNode #DelphiArrayTypeNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiInterfaceTypeNode #SmaCCToken #DelphiGuidNode #OrderedCollection #DelphiProgramNode #DelphiPropertyHeaderNode #DelphiMethodHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorHeaderNode #DelphiProcedureHeaderNode #DelphiClassProcedureHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #DelphiPropertyHeaderNode #OrderedCollection #DelphiClassPropertyHeaderNode #OrderedCollection #DelphiPropertyArrayAccessorsNode #DelphiPropertyIndexNode #DelphiPropertyReaderNode #DelphiPropertyWriterNode #DelphiPropertyDispidNode #DelphiPropertyDefaultNode #DelphiPropertyImplementsNode #OrderedCollection #DelphiPropertyStoredNode #DelphiPropertyModifierNode #OrderedCollection #OrderedCollection #DelphiMethodModifierNode #DelphiMethodModifierNode #DelphiMethodModifierNode #SmaCCToken #OrderedCollection #OrderedCollection #DelphiArgumentNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiImplementationSectionNode #DelphiImplementationCodeNode #OrderedCollection #DelphiProgramNode #DelphiConstructorDefinitionNode #DelphiConstructorHeaderNode #DelphiConstructorHeaderNode #DelphiDestructorDefinitionNode #DelphiDestructorHeaderNode #DelphiDestructorHeaderNode #OrderedCollection #DelphiProcedureDefinitionNode #DelphiProcedureHeaderNode #OrderedCollection #DelphiProcedureHeaderNode #OrderedCollection #DelphiClassProcedureDefinitionNode #DelphiClassProcedureHeaderNode #DelphiClassProcedureHeaderNode #DelphiFunctionDefinitionNode #DelphiFunctionHeaderNode #OrderedCollection #DelphiFunctionHeaderNode #OrderedCollection #DelphiClassFunctionDefinitionNode #DelphiClassFunctionHeaderNode #DelphiClassFunctionHeaderNode #DelphiClassOperatorDefinitionNode #DelphiClassOperatorHeaderNode #DelphiClassOperatorHeaderNode #OrderedCollection #OrderedCollection #DelphiProgramNode #DelphiLabelVariableNode #DelphiVarsNode #OrderedCollection #OrderedCollection #DelphiVariableNode #OrderedCollection #DelphiStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #DelphiExceptNode #OrderedCollection #DelphiOnDoNode #DelphiExceptElseNode #DelphiFinallyNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #DelphiCaseOptionNode #DelphiProgramNode #OrderedCollection #DelphiProgramNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #DelphiStatementNode #DelphiAsmBlockNode nil #DelphiExpressionNode #DelphiPropertyExpressionNode #DelphiInstantiatedGenericExpressionNode #DelphiAnonymousProcedureDefinitionNode #DelphiProcedureHeaderNode #DelphiAnonymousFunctionDefinitionNode #DelphiFunctionHeaderNode #DelphiMemExpressionNode #DelphiVariableExpressionNode #DelphiSetExpressionNode #OrderedCollection #DelphiSetValueNode #OrderedCollection #OrderedCollection #SmaCCToken #DelphiInheritedFunctionCallNode #OrderedCollection #DelphiProgramNode #SmaCCToken #SmaCCToken #DelphiInitializationSectionNode #DelphiFinalizationSectionNode #DelphiExportsDefinitionNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
DelphiParser class >> transitionTable [
^#(
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 37 0 66 0 41 0 84 0 6 0 89 0 45 0 90 0 6 0 104 0 6 0 115 0 6 0 118 0 49 0 119 0 53 0 122 0 6 0 123 0 57 0 149 0 61 0 150 0 65 0 151 0 69 0 152 0 73 0 153 0 77 0 156 0 81 0 157 0 85 0 161 0 89 0 162 0 93 0 164] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 0 201 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 0 201 1 102 0 201 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 177 0 183 1 129 0 187 1 133 0 192 1 177 0 194 1 177 0 195 1 129 0 197 1 129 0 201 1 129 0 202 1 157 0 204 1 129 0 210 1 165 0 211 1 169 0 212 1 173 0 213 1 177 0 243 1 129 0 244 1 129 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 1 201 0 130 1 205 0 139 1 209 0 178 1 213 0 240] 
#[1 1 217 0 139 1 221 0 172] 
#[1 1 225 0 139 1 229 1 32 1 233 1 72] 
#[1 1 253 0 27 1 253 0 81 1 253 0 123 0 22 0 139 1 249 1 31 1 253 1 34] 
#[1 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 2 17 0 52 2 21 0 89 2 25 0 91 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 2 49 0 170 2 49 0 176 2 49 0 238 2 49 0 239 2 57 0 240 2 49 0 241 2 49 0 242 2 49 0 254 2 49 0 255 2 49 1 0 2 49 1 1 2 49 1 2 2 49 1 3 2 49 1 5 2 49 1 6 2 49 1 7 2 49 1 9 2 109 1 10 2 49 1 11 2 117 1 32 2 49 1 40 2 125 1 41 2 49 1 43 2 133 1 44 2 49 1 47 2 141 1 48 2 49 1 49 2 149 1 50 2 49 1 52 2 49 1 53 2 49 1 55 2 165 1 56 2 49 1 57 2 173 1 58 2 49 1 60 2 49 1 61 2 49 1 63 2 189 1 64 2 49 1 69 2 197 1 70] 
#[1 2 201 0 139 2 205 0 167] 
#[1 2 201 0 139 2 209 0 167] 
#[1 2 201 0 139 2 213 0 167] 
#[1 2 201 0 139 2 217 0 167] 
#[1 2 201 0 139 2 221 0 165 2 225 0 166 2 229 0 167] 
#[0 0 0 1 131] 
#[0 0 26 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 2 233 0 164] 
#[0 0 30 1 131] 
#[1 0 6 0 21 0 6 0 23 0 6 0 27 0 6 0 43 0 6 0 52 0 6 0 65 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 2 237 0 164] 
#[0 0 34 1 131] 
#[1 2 241 0 103 2 245 0 158] 
#[0 0 38 1 131] 
#[1 0 42 0 40 0 42 0 48 0 42 0 56 0 42 0 61 2 249 0 63 2 253 0 163 0 46 1 131] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 3 1 0 155 3 5 1 65 3 9 1 66] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 17 1 105 1 9 1 106 3 17 1 107 3 17 1 108 1 21 1 109 3 17 1 110 1 29 1 111 3 17 1 112 1 37 1 113 3 17 1 114 1 45 1 119 3 17 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 21 1 105 1 9 1 106 3 21 1 107 3 21 1 108 1 21 1 109 3 21 1 110 1 29 1 111 3 21 1 112 1 37 1 113 3 21 1 114 1 45 1 119 3 21 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 25 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 33 1 105 1 9 1 106 3 33 1 107 3 33 1 108 1 21 1 109 3 33 1 110 1 29 1 111 3 33 1 112 1 37 1 113 3 33 1 114 1 45 1 119 3 33 1 120 1 53 1 130] 
#[1 3 13 0 139 3 37 1 113] 
#[1 3 41 0 2 0 54 0 9 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 3 45 0 196] 
#[1 3 49 0 139 3 53 0 141] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 57 1 105 1 9 1 106 3 57 1 107 3 57 1 108 1 21 1 109 3 57 1 110 1 29 1 111 3 57 1 112 1 37 1 113 3 57 1 114 1 45 1 119 3 57 1 120 1 53 1 130] 
#[1 0 58 0 2 0 58 0 3 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 18 0 58 0 20 0 58 0 30 0 58 0 33 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 48 0 58 0 49 0 58 0 57 0 58 0 58 0 58 0 59 0 58 0 61 0 58 0 64 0 58 0 71 0 58 0 74 0 58 0 77 0 58 0 78 0 58 0 80 0 58 0 96 0 58 0 97 0 58 0 108 0 58 0 109 0 58 0 112 0 58 0 114 0 58 0 116 0 58 0 121 0 58 0 127 0 58 0 128 0 58 0 129 0 58 0 130 0 58 0 131 0 58 0 132 0 58 0 133 0 58 0 134 0 58 0 135 0 58 0 136 0 58 0 137 0 58 0 138 3 61 0 139 0 58 1 131] 
#[0 3 65 0 130] 
#[0 3 69 0 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 73 1 105 1 9 1 106 3 73 1 107 3 73 1 108 1 21 1 109 3 73 1 110 1 29 1 111 3 73 1 112 1 37 1 113 3 73 1 114 1 45 1 119 3 73 1 120 1 53 1 130] 
#[1 3 41 0 2 0 54 0 21 0 54 0 23 0 54 0 27 0 54 0 52 0 54 0 65 0 54 0 89 0 54 0 104 0 54 0 115 0 54 0 118 0 54 0 123 3 77 0 196] 
#[1 0 97 0 2 0 101 0 15 0 62 0 39 0 62 0 40 0 62 0 41 0 62 0 48 0 62 0 49 0 117 0 52 0 129 0 60 0 62 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 62 0 78 0 145 0 89 0 62 0 121 0 169 0 130 0 173 0 135 0 177 0 136 0 62 0 137 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 81 1 105 1 9 1 106 3 81 1 107 3 81 1 108 1 21 1 109 3 81 1 110 1 29 1 111 3 81 1 112 1 37 1 113 3 81 1 114 1 45 1 119 3 81 1 120 1 53 1 130 0 62 1 131] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 85 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 41 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 89 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 93 1 105 1 9 1 106 3 93 1 107 3 93 1 108 1 21 1 109 3 93 1 110 1 29 1 111 3 93 1 112 1 37 1 113 3 93 1 114 1 45 1 119 3 93 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 97 1 80 3 101 1 105 1 9 1 106 3 101 1 107 3 101 1 108 1 21 1 109 3 101 1 110 1 29 1 111 3 101 1 112 1 37 1 113 3 101 1 114 1 45 1 119 3 101 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 3 105 0 131 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 109 1 105 1 9 1 106 3 109 1 107 3 109 1 108 1 21 1 109 3 109 1 110 1 29 1 111 3 109 1 112 1 37 1 113 3 109 1 114 3 113 1 115 3 117 1 116 1 45 1 119 3 109 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 121 1 105 1 9 1 106 3 121 1 107 3 121 1 108 1 21 1 109 3 121 1 110 1 29 1 111 3 121 1 112 1 37 1 113 3 121 1 114 1 45 1 119 3 121 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 125 1 105 1 9 1 106 3 125 1 107 3 125 1 108 1 21 1 109 3 125 1 110 1 29 1 111 3 125 1 112 1 37 1 113 3 125 1 114 1 45 1 119 3 125 1 120 1 53 1 130] 
#[1 0 66 0 2 0 66 0 4 0 66 0 6 0 66 0 8 3 129 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 18 0 66 0 20 0 66 0 35 0 66 0 39 0 66 0 40 0 66 0 41 0 66 0 48 0 66 0 49 0 66 0 58 0 66 0 61 0 66 0 64 0 66 0 71 0 66 0 78 0 66 0 80 0 66 0 108 0 66 0 109 0 66 0 121 0 66 0 129 0 66 0 130 0 66 0 132 0 66 0 133 0 66 0 135 0 66 0 136 0 66 0 137 0 66 0 138 0 66 1 131] 
#[1 0 70 0 2 0 70 0 4 0 70 0 6 0 70 0 8 3 133 0 9 0 70 0 10 0 70 0 11 0 70 0 12 0 70 0 13 0 70 0 14 0 70 0 18 0 70 0 20 0 70 0 35 0 70 0 39 0 70 0 40 0 70 0 41 0 70 0 48 0 70 0 49 0 70 0 58 0 70 0 61 0 70 0 64 0 70 0 71 0 70 0 78 0 70 0 80 0 70 0 108 0 70 0 109 0 70 0 121 0 70 0 129 0 70 0 130 0 70 0 132 0 70 0 133 0 70 0 135 0 70 0 136 0 70 0 137 0 70 0 138 0 70 1 131] 
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
#[0 3 137 0 21] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 0 138 0 39 0 138 0 40 0 138 0 41 0 138 0 48 0 138 0 49 3 245 0 58 0 138 0 61 3 245 0 64 3 245 0 71 0 138 0 78 3 245 0 80 3 245 0 108 3 245 0 109 0 138 0 121 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 0 138 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 0 138 1 131] 
#[1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 8 0 142 0 9 0 142 0 10 0 11 0 11 0 142 0 12 0 142 0 13 0 142 0 14 0 142 0 18 0 142 0 20 0 142 0 30 0 142 0 33 0 142 0 35 0 142 0 36 0 142 0 37 0 142 0 39 0 142 0 40 0 142 0 41 0 142 0 48 0 142 0 49 0 142 0 57 0 142 0 58 0 142 0 59 0 142 0 61 0 142 0 64 0 142 0 71 0 142 0 74 0 142 0 77 0 142 0 78 0 142 0 80 0 142 0 96 0 142 0 97 0 142 0 108 0 142 0 109 0 142 0 112 0 142 0 114 0 142 0 116 0 142 0 121 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 132 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 137 0 142 0 138 3 253 0 188 4 1 0 189 0 142 1 131] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 4 5 1 65 3 9 1 66] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 4 9 1 65 3 9 1 66] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 15 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 18 0 166 0 20 0 166 0 30 0 166 0 33 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 48 0 166 0 49 0 166 0 57 0 166 0 58 0 166 0 59 0 166 0 61 0 166 0 64 0 166 0 71 0 166 0 74 0 166 0 77 0 166 0 78 0 166 0 80 0 166 0 96 0 166 0 97 0 166 0 108 0 166 0 109 0 166 0 112 0 166 0 114 0 166 0 116 0 166 0 121 0 166 0 127 0 166 0 128 0 166 0 129 0 166 0 130 0 166 0 131 0 166 0 132 0 166 0 133 0 166 0 134 0 166 0 135 0 166 0 136 0 166 0 137 0 166 0 138 4 13 0 188 4 1 0 189 0 166 1 131] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 4 17 0 2 0 186 0 3 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 21 0 139 4 25 0 140 1 169 0 141 1 193 0 143 1 121 0 147 4 29 0 184 4 33 0 185 1 169 0 212 4 37 0 213 4 41 0 214 4 45 0 215 4 49 0 216 4 53 0 217 4 57 0 218 4 61 0 219 4 37 1 114 1 193 1 119 1 197 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 69 0 213 4 69 1 114 1 193 1 119 1 197 1 130] 
#[1 0 190 0 3 0 190 0 5 0 190 0 14 0 190 0 16 0 190 0 21 0 190 0 23 0 190 0 27 0 190 0 30 0 190 0 31 0 190 0 33 0 190 0 36 0 190 0 52 0 190 0 57 0 190 0 59 0 190 0 65 0 190 0 74 4 73 0 77 0 190 0 87 0 190 0 89 0 190 0 96 0 190 0 97 0 190 0 104 0 190 0 112 0 190 0 115 0 190 0 118 0 190 0 123 0 190 0 127 0 190 0 128 0 190 0 130 0 190 0 131 0 190 0 132 0 190 0 137 0 190 1 131] 
#[1 3 41 0 2 0 54 0 9 4 77 0 196] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 81 0 213 4 81 1 114 1 193 1 119 1 197 1 130] 
#[0 0 194 0 19 0 98] 
#[1 3 41 0 2 0 54 0 77 0 54 0 137 4 85 0 196] 
#[0 4 89 0 54] 
#[0 4 93 0 116] 
#[0 4 97 0 77] 
#[1 4 101 0 139 4 105 0 236] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 109 0 213 4 109 1 114 1 193 1 119 1 197 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 113 0 213 4 113 1 114 1 193 1 119 1 197 1 130] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 4 121 0 183 4 121 0 187 1 133 0 192 4 121 0 194 4 121 0 195 4 121 0 197 4 121 0 201 4 121 0 202 1 157 0 204 4 121 0 210 1 165 0 211 1 169 0 212 1 173 0 213 4 121 0 243 4 121 0 244 4 121 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 0 198 0 2 0 202 0 3 0 198 0 4 0 202 0 5 0 19 0 6 0 198 0 7 0 198 0 8 0 19 0 11 0 198 0 12 0 198 0 13 0 202 0 14 0 202 0 16 0 198 0 18 0 198 0 20 0 202 0 21 0 202 0 23 0 202 0 27 0 202 0 30 0 202 0 31 0 202 0 33 0 198 0 35 0 202 0 36 0 202 0 52 0 202 0 57 0 198 0 58 0 202 0 59 0 198 0 64 0 202 0 65 0 198 0 71 0 202 0 74 0 202 0 77 0 198 0 80 0 202 0 87 0 202 0 89 0 202 0 96 0 202 0 97 0 202 0 104 0 198 0 108 0 198 0 109 0 202 0 112 0 202 0 115 0 202 0 118 0 202 0 123 0 202 0 127 0 202 0 128 0 198 0 129 0 202 0 130 0 202 0 131 0 19 0 132 0 198 0 133 0 198 0 135 0 198 0 136 0 202 0 137 0 202 1 131] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 0 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 0 214 0 16 0 214 0 130 0 0 1 131] 
#[1 0 218 0 3 0 218 0 5 4 125 0 6 0 146 0 11 0 218 0 14 0 218 0 16 0 218 0 21 0 218 0 23 0 218 0 27 0 218 0 30 0 218 0 31 0 218 0 33 0 218 0 36 0 218 0 52 0 218 0 57 0 218 0 59 0 218 0 65 0 218 0 74 0 218 0 77 0 218 0 87 0 218 0 89 0 218 0 96 0 218 0 97 0 218 0 104 0 218 0 112 0 218 0 115 0 218 0 118 0 218 0 123 0 218 0 127 0 218 0 128 0 218 0 130 0 218 0 131 0 218 0 132 0 218 0 137 4 129 0 188 4 1 0 189 0 218 1 131] 
#[0 0 222 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 226 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 230 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 0 238 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 133 0 19 4 137 0 98] 
#[0 0 242 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 4 141 0 7] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 4 145 0 2 0 250 0 3 4 153 0 4 0 250 0 5 4 149 0 6 0 250 0 7 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 0 250 0 14 0 250 0 16 4 153 0 18 4 153 0 20 0 250 0 21 0 250 0 23 0 250 0 27 0 250 0 30 0 250 0 31 0 250 0 33 4 153 0 35 0 250 0 36 0 250 0 52 0 250 0 57 4 153 0 58 0 250 0 59 4 153 0 64 0 250 0 65 4 153 0 71 0 250 0 74 0 250 0 77 4 153 0 80 0 250 0 87 0 250 0 89 0 250 0 96 0 250 0 97 0 250 0 104 4 153 0 108 4 153 0 109 0 250 0 112 0 250 0 115 0 250 0 118 0 250 0 123 0 250 0 127 0 250 0 128 4 153 0 129 0 250 0 130 0 250 0 131 0 23 0 132 4 153 0 133 4 153 0 135 4 153 0 136 0 250 0 137 4 153 1 124 0 250 1 131] 
#[1 4 157 0 16 4 161 0 130] 
#[0 0 254 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 1 2 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 165 0 213 4 165 1 114 1 193 1 119 1 197 1 130] 
#[1 4 169 0 11 1 18 0 14 4 173 0 179] 
#[0 0 0 1 131] 
#[0 4 177 0 139] 
#[1 4 181 0 9 1 22 0 14 4 185 1 8] 
#[0 0 0 1 131] 
#[0 1 26 0 3 0 5 0 9 0 131 0 137 1 131] 
#[1 4 189 0 5 4 193 0 9] 
#[0 0 0 1 131] 
#[0 1 30 0 139] 
#[0 1 34 0 139] 
#[0 1 38 0 139] 
#[0 0 0 1 131] 
#[1 1 225 0 139 4 197 1 32] 
#[1 4 201 0 28 4 205 0 32 4 209 0 52 4 213 0 79 4 217 0 89 2 25 0 91 2 29 0 115 2 37 0 123 4 221 1 10 4 225 1 48 4 229 1 50 4 233 1 56 4 237 1 58 4 241 1 70] 
#[1 1 217 0 139 4 245 0 171 4 249 0 172] 
#[1 4 101 0 139 4 253 0 236] 
#[1 4 101 0 139 5 1 0 236] 
#[1 4 101 0 139 5 5 0 236] 
#[1 4 101 0 139 5 9 0 236] 
#[0 5 13 0 139] 
#[1 1 225 0 139 1 229 1 32 5 17 1 71 5 21 1 72] 
#[1 1 201 0 130 1 205 0 139 5 25 0 177 5 29 0 178 1 213 0 240] 
#[1 1 225 0 139 1 229 1 32 5 33 1 71 5 21 1 72] 
#[0 1 42 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 46 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 0 0 1 131] 
#[0 1 50 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 5 37 0 26 2 9 0 28 2 13 0 32 4 209 0 52 4 217 0 89 5 41 1 0 5 45 1 1 5 49 1 2 5 53 1 3 5 57 1 5 5 61 1 6 5 65 1 7 5 41 1 40 2 125 1 41 5 45 1 43 2 133 1 44 5 49 1 47 2 141 1 48 5 49 1 49 2 149 1 50 5 53 1 52 5 53 1 53 5 57 1 55 2 165 1 56 5 57 1 57 2 173 1 58 5 61 1 60 5 61 1 61 5 65 1 63 2 189 1 64] 
#[0 1 54 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 62 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 66 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 70 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 74 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 78 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 82 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 86 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 90 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 94 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 98 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 102 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 106 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 4 189 0 5 5 69 0 9] 
#[0 1 110 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 1 114 0 3 1 114 0 24 1 114 0 26 1 114 0 27 1 114 0 28 1 114 0 32 1 114 0 40 5 73 0 44 5 77 0 51 1 114 0 52 1 114 0 88 1 114 0 89 1 114 0 91 1 114 0 92 1 114 0 93 1 114 0 94 1 114 0 113 1 114 0 115 1 114 0 118 1 114 0 123 1 114 0 130 1 114 0 139 5 81 1 27 1 114 1 131] 
#[0 1 118 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 1 122 0 3 1 122 0 24 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 32 1 122 0 40 5 73 0 44 5 77 0 51 1 122 0 52 1 122 0 88 1 122 0 89 1 122 0 91 1 122 0 92 1 122 0 93 1 122 0 94 1 122 0 113 1 122 0 115 1 122 0 118 1 122 0 123 1 122 0 130 1 122 0 139 5 85 1 27 1 122 1 131] 
#[0 1 126 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 134 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 1 138 0 3 1 138 0 21 1 138 0 23 1 138 0 24 1 138 0 26 1 138 0 27 1 138 0 28 1 138 0 32 1 138 0 40 5 73 0 44 1 138 0 48 5 77 0 51 1 138 0 52 1 138 0 56 1 138 0 61 1 138 0 65 1 138 0 88 1 138 0 89 1 138 0 91 1 138 0 92 1 138 0 93 1 138 0 94 1 138 0 104 1 138 0 113 1 138 0 115 1 138 0 118 1 138 0 123 1 138 0 130 1 138 0 139 5 89 1 27 1 138 1 131] 
#[0 1 142 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 146 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 150 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 154 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 48 0 52 0 56 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 1 162 0 3 1 162 0 21 1 162 0 23 1 162 0 24 1 162 0 26 1 162 0 27 1 162 0 28 1 162 0 32 1 162 0 40 5 73 0 44 1 162 0 48 5 77 0 51 1 162 0 52 1 162 0 56 1 162 0 61 1 162 0 65 1 162 0 88 1 162 0 89 1 162 0 91 1 162 0 92 1 162 0 93 1 162 0 94 1 162 0 104 1 162 0 113 1 162 0 115 1 162 0 118 1 162 0 123 1 162 0 130 1 162 0 139 5 93 1 27 1 162 1 131] 
#[0 1 166 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 170 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 174 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 1 178 0 3 1 178 0 24 1 178 0 26 1 178 0 27 1 178 0 28 1 178 0 32 1 178 0 40 5 73 0 44 5 77 0 51 1 178 0 52 1 178 0 88 1 178 0 89 1 178 0 91 1 178 0 92 1 178 0 93 1 178 0 94 1 178 0 113 1 178 0 115 1 178 0 118 1 178 0 123 1 178 0 130 1 178 0 139 5 97 1 27 1 178 1 131] 
#[0 1 182 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 186 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 1 190 0 5 0 6 0 31 0 58 0 87 0 137] 
#[1 5 101 0 6 5 113 0 31 5 113 0 87 1 194 0 137 5 113 0 193] 
#[1 5 101 0 6 5 117 0 137] 
#[1 5 101 0 6 5 121 0 31 5 121 0 87 1 194 0 137 5 121 0 193] 
#[1 5 101 0 6 5 125 0 31 5 125 0 87 1 194 0 137 5 125 0 193] 
#[1 5 129 0 5 5 133 0 137] 
#[0 1 198 0 5 0 137] 
#[1 1 202 0 5 5 101 0 6 5 137 0 58 1 202 0 137] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 141 0 155 3 5 1 65 3 9 1 66] 
#[1 1 206 0 21 1 206 0 23 1 206 0 27 1 206 0 43 1 206 0 52 1 206 0 65 1 206 0 89 1 206 0 104 1 206 0 115 1 206 0 118 1 206 0 123 5 145 0 154] 
#[1 2 201 0 139 5 149 0 159 5 153 0 167] 
#[1 5 157 0 29 5 161 0 160] 
#[1 0 6 0 27 0 6 0 40 0 6 0 48 0 6 0 52 0 6 0 56 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 5 165 0 164] 
#[1 1 210 0 40 1 210 0 48 5 169 0 56 1 210 0 61 5 173 1 35] 
#[0 5 177 0 6] 
#[0 1 214 0 6] 
#[1 0 10 0 21 0 105 0 23 2 5 0 27 4 209 0 52 5 181 0 65 4 217 0 89 5 185 0 104 2 29 0 115 2 33 0 118 2 37 0 123 5 225 0 170 5 225 0 173 5 225 0 176 5 225 1 46 5 205 1 47 2 141 1 48 5 209 1 49 2 149 1 50 5 225 1 54 5 217 1 55 2 165 1 56 5 221 1 57 2 173 1 58 5 225 1 67 5 225 1 68 5 225 1 69 2 197 1 70 5 237 1 102 5 237 1 103 1 1 1 104] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 141 0 2 5 241 0 3 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 3 141 0 2 1 218 0 3 1 218 0 4 1 218 0 5 3 149 0 6 1 218 0 7 1 218 0 8 1 218 0 9 1 218 0 10 0 27 0 11 0 31 0 12 0 35 0 13 0 39 0 14 1 218 0 18 1 218 0 20 1 218 0 30 1 218 0 33 1 218 0 35 1 218 0 36 1 218 0 37 1 218 0 39 1 218 0 40 1 218 0 41 1 218 0 48 1 218 0 49 1 218 0 57 0 43 0 58 1 218 0 59 1 218 0 61 1 218 0 64 1 218 0 71 1 218 0 74 1 218 0 77 1 218 0 78 1 218 0 80 1 218 0 96 1 218 0 97 1 218 0 108 1 218 0 109 1 218 0 112 1 218 0 114 1 218 0 116 1 218 0 121 1 218 0 127 1 218 0 128 1 218 0 129 3 217 0 130 1 218 0 131 0 47 0 132 0 51 0 133 1 218 0 134 1 218 0 135 1 218 0 136 1 218 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 1 218 1 131] 
#[1 5 245 0 40 5 249 0 137] 
#[0 1 222 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 5 253 0 77 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 6 1 0 10 6 5 0 58] 
#[1 1 226 0 3 1 253 0 27 1 253 0 81 1 253 0 123 0 22 0 139 6 9 1 29 6 13 1 30 6 17 1 31 1 253 1 34] 
#[1 4 181 0 9 1 22 0 21 1 22 0 23 1 22 0 27 1 22 0 52 1 22 0 65 1 22 0 89 1 22 0 104 1 22 0 115 1 22 0 118 1 22 0 123 6 21 1 8] 
#[0 1 230 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 1 234 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 6 25 0 114 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 6 29 0 2 1 238 0 3 1 238 0 4 1 238 0 5 1 238 0 6 1 238 0 7 1 238 0 8 1 238 0 9 1 238 0 10 1 238 0 11 1 238 0 12 1 238 0 13 1 238 0 14 1 238 0 18 1 238 0 20 1 238 0 30 1 238 0 33 1 238 0 35 1 238 0 36 1 238 0 37 1 238 0 39 1 238 0 40 1 238 0 41 1 238 0 48 1 238 0 49 1 238 0 57 1 238 0 58 1 238 0 59 1 238 0 61 1 238 0 64 1 238 0 71 1 238 0 74 1 238 0 77 1 238 0 78 1 238 0 80 1 238 0 96 1 238 0 97 1 238 0 108 1 238 0 109 1 238 0 112 1 238 0 114 1 238 0 116 1 238 0 121 1 238 0 127 1 238 0 128 1 238 0 129 1 238 0 130 1 238 0 131 1 238 0 132 1 238 0 133 1 238 0 134 1 238 0 135 1 238 0 136 1 238 0 137 1 238 0 138 1 238 1 131] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 33 1 105 1 9 1 106 6 33 1 107 6 33 1 108 1 21 1 109 6 33 1 110 1 29 1 111 6 33 1 112 1 37 1 113 6 33 1 114 1 45 1 119 6 33 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 37 1 105 1 9 1 106 6 37 1 107 6 37 1 108 1 21 1 109 6 37 1 110 1 29 1 111 6 37 1 112 1 37 1 113 6 37 1 114 1 45 1 119 6 37 1 120 1 53 1 130] 
#[1 3 141 0 2 1 242 0 3 3 245 0 4 1 242 0 5 3 149 0 6 1 242 0 7 3 245 0 8 1 242 0 9 3 157 0 10 0 55 0 11 0 59 0 12 0 63 0 13 0 67 0 14 3 245 0 18 3 245 0 20 1 242 0 30 1 242 0 33 3 245 0 35 1 242 0 36 1 242 0 37 1 242 0 39 1 242 0 40 1 242 0 41 1 242 0 48 1 242 0 49 1 242 0 57 0 71 0 58 1 242 0 59 1 242 0 61 3 245 0 64 3 245 0 71 1 242 0 74 1 242 0 77 1 242 0 78 3 245 0 80 1 242 0 96 1 242 0 97 3 245 0 108 3 245 0 109 1 242 0 112 1 242 0 114 1 242 0 116 1 242 0 121 1 242 0 127 1 242 0 128 3 245 0 129 3 217 0 130 1 242 0 131 0 75 0 132 0 79 0 133 1 242 0 134 3 245 0 135 3 245 0 136 1 242 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 1 242 1 131] 
#[0 1 246 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 1 250 0 39 1 250 0 40 1 250 0 41 1 250 0 48 1 250 0 49 3 245 0 58 1 250 0 61 3 245 0 64 3 245 0 71 1 250 0 78 3 245 0 80 3 245 0 108 3 245 0 109 1 250 0 121 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 6 41 0 134 3 245 0 135 3 245 0 136 1 250 0 137 3 237 0 138 6 45 1 97 3 241 1 117 3 245 1 123 3 245 1 124 1 250 1 131] 
#[1 6 49 0 121 5 249 0 137] 
#[1 1 254 0 40 6 53 0 41 1 254 0 49 5 249 0 137 6 57 1 82] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 6 61 0 36 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 6 65 0 5 6 69 0 36] 
#[1 3 141 0 2 3 245 0 4 2 2 0 5 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 2 2 0 36 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[0 2 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 141 0 2 3 245 0 4 2 10 0 5 3 149 0 6 6 73 0 7 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 2 10 0 131 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 6 77 0 5 6 81 0 131] 
#[0 2 14 0 5 0 131] 
#[1 3 141 0 2 2 18 0 3 3 245 0 4 2 18 0 5 3 149 0 6 2 18 0 7 3 245 0 8 2 18 0 9 2 18 0 10 0 83 0 11 0 87 0 12 0 91 0 13 0 95 0 14 2 18 0 18 2 18 0 20 2 18 0 30 2 18 0 33 3 245 0 35 2 18 0 36 2 18 0 37 2 18 0 39 2 18 0 40 2 18 0 41 2 18 0 48 2 18 0 49 2 18 0 57 0 99 0 58 2 18 0 59 2 18 0 61 2 18 0 64 3 245 0 71 2 18 0 74 2 18 0 77 2 18 0 78 2 18 0 80 2 18 0 96 2 18 0 97 3 245 0 108 3 245 0 109 2 18 0 112 2 18 0 114 2 18 0 116 2 18 0 121 2 18 0 127 2 18 0 128 2 18 0 129 3 217 0 130 2 18 0 131 0 103 0 132 0 107 0 133 2 18 0 134 2 18 0 135 2 18 0 136 2 18 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 2 18 1 131] 
#[1 3 141 0 2 2 22 0 3 3 245 0 4 2 22 0 5 3 149 0 6 2 22 0 7 3 245 0 8 2 22 0 9 2 22 0 10 0 111 0 11 0 115 0 12 0 119 0 13 0 123 0 14 2 22 0 18 2 22 0 20 2 22 0 30 2 22 0 33 3 245 0 35 2 22 0 36 2 22 0 37 2 22 0 39 2 22 0 40 2 22 0 41 2 22 0 48 2 22 0 49 2 22 0 57 0 127 0 58 2 22 0 59 2 22 0 61 2 22 0 64 3 245 0 71 2 22 0 74 2 22 0 77 2 22 0 78 2 22 0 80 2 22 0 96 2 22 0 97 3 245 0 108 3 245 0 109 2 22 0 112 2 22 0 114 2 22 0 116 2 22 0 121 2 22 0 127 2 22 0 128 2 22 0 129 3 217 0 130 2 22 0 131 0 131 0 132 0 135 0 133 2 22 0 134 2 22 0 135 2 22 0 136 2 22 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 2 22 1 131] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 85 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 6 85 1 102 6 85 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 89 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 6 89 1 102 6 89 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[0 6 93 0 40] 
#[1 0 97 0 2 6 97 0 3 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 101 1 105 1 9 1 106 6 101 1 107 6 101 1 108 1 21 1 109 6 101 1 110 1 29 1 111 6 101 1 112 1 37 1 113 6 101 1 114 1 45 1 119 6 101 1 120 6 105 1 121 6 109 1 122 1 53 1 130] 
#[0 2 26 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 6 113 0 1 6 117 0 139] 
#[0 2 30 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 121 1 105 1 9 1 106 6 121 1 107 6 121 1 108 1 21 1 109 6 121 1 110 1 29 1 111 6 121 1 112 1 37 1 113 6 121 1 114 1 45 1 119 6 121 1 120 1 53 1 130] 
#[0 2 34 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 38 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 42 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 46 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 2 50 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 54 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 58 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 62 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 66 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 70 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 74 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 78 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 82 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 86 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 125 1 105 1 9 1 106 6 125 1 107 6 125 1 108 1 21 1 109 6 125 1 110 1 29 1 111 6 125 1 112 1 37 1 113 6 125 1 114 6 129 1 118 1 45 1 119 6 125 1 120 1 53 1 130] 
#[0 2 90 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 94 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 98 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 102 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 140 0 141 0 143 0 147 1 130] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 133 1 105 1 9 1 106 6 133 1 107 6 133 1 108 1 21 1 109 6 133 1 110 1 29 1 111 6 133 1 112 1 37 1 113 6 133 1 114 1 45 1 119 6 133 1 120 1 53 1 130] 
#[0 2 114 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 6 137 0 11] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 4 17 0 2 0 186 0 3 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 25 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 37 0 213 4 41 0 214 4 45 0 215 4 49 0 216 4 53 0 217 4 57 0 218 4 61 0 219 4 37 1 114 1 193 1 119 1 197 1 130] 
#[1 2 134 0 3 2 134 0 5 6 141 0 14] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 0 198 0 5 0 198 0 6 0 198 0 8 6 145 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[1 6 149 0 3 6 153 0 5] 
#[0 2 138 0 3 0 5] 
#[1 4 145 0 2 2 142 0 3 4 153 0 4 2 142 0 5 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 6 157 0 14 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[0 6 161 0 3] 
#[1 2 146 0 3 6 165 0 5] 
#[0 2 150 0 3 0 5] 
#[1 2 154 0 3 6 173 0 137 6 173 1 88] 
#[1 2 158 0 3 0 139 0 137] 
#[0 2 162 0 3 0 137] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 4 145 0 2 2 166 0 3 2 166 0 4 2 166 0 5 4 149 0 6 2 166 0 7 2 166 0 8 2 166 0 9 0 143 0 11 0 147 0 12 0 151 0 13 2 166 0 14 2 166 0 16 2 166 0 18 2 166 0 20 2 166 0 21 2 166 0 23 2 166 0 27 2 166 0 30 2 166 0 31 2 166 0 33 2 166 0 35 2 166 0 36 2 166 0 52 2 166 0 57 0 155 0 58 2 166 0 59 2 166 0 64 2 166 0 65 2 166 0 71 2 166 0 74 2 166 0 77 2 166 0 80 2 166 0 87 2 166 0 89 2 166 0 96 2 166 0 97 2 166 0 104 2 166 0 108 2 166 0 109 2 166 0 112 2 166 0 115 2 166 0 118 2 166 0 123 2 166 0 127 2 166 0 128 2 166 0 129 2 166 0 130 2 166 0 131 0 159 0 132 0 163 0 133 2 166 0 135 2 166 0 136 2 166 0 137 4 153 1 124 2 166 1 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 6 181 0 183 6 181 0 187 1 133 0 192 6 181 0 194 6 181 0 195 6 181 0 197 6 181 0 201 6 181 0 202 1 157 0 204 6 181 0 210 1 165 0 211 1 169 0 212 1 173 0 213 6 181 0 243 6 181 0 244 6 181 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[0 6 185 0 9] 
#[1 4 145 0 2 2 170 0 3 4 153 0 4 2 170 0 5 4 149 0 6 2 170 0 7 4 153 0 8 2 170 0 9 0 167 0 11 0 171 0 12 0 175 0 13 2 170 0 14 2 170 0 16 4 153 0 18 4 153 0 20 2 170 0 21 2 170 0 23 2 170 0 27 2 170 0 30 2 170 0 31 2 170 0 33 4 153 0 35 2 170 0 36 2 170 0 52 2 170 0 57 0 179 0 58 2 170 0 59 4 153 0 64 2 170 0 65 4 153 0 71 2 170 0 74 2 170 0 77 4 153 0 80 2 170 0 87 2 170 0 89 2 170 0 96 2 170 0 97 2 170 0 104 4 153 0 108 4 153 0 109 2 170 0 112 2 170 0 115 2 170 0 118 2 170 0 123 2 170 0 127 2 170 0 128 4 153 0 129 2 170 0 130 2 170 0 131 0 183 0 132 0 187 0 133 4 153 0 135 4 153 0 136 2 170 0 137 4 153 1 124 2 170 1 131] 
#[1 6 189 0 77 2 174 0 137 6 193 1 4] 
#[0 6 197 0 50] 
#[1 6 201 0 52 6 205 0 89] 
#[1 6 209 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 6 213 0 210 1 165 0 211 1 169 0 212 6 217 0 213 6 217 1 114 1 193 1 119 1 197 1 130] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 4 169 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 6 221 0 179 1 18 1 131] 
#[1 2 178 0 3 2 178 0 5 6 225 0 6 2 178 0 14 2 178 0 16 2 178 0 21 2 178 0 23 2 178 0 27 2 178 0 30 2 178 0 31 2 178 0 33 2 178 0 36 2 178 0 52 2 178 0 57 2 178 0 59 2 178 0 65 2 178 0 74 2 178 0 77 2 178 0 87 2 178 0 89 2 178 0 96 2 178 0 97 2 178 0 104 2 178 0 112 2 178 0 115 2 178 0 118 2 178 0 123 2 178 0 127 2 178 0 128 2 178 0 130 2 178 0 131 2 178 0 132 2 178 0 137 2 178 1 131] 
#[1 4 145 0 2 2 182 0 3 4 153 0 4 2 182 0 5 4 149 0 6 2 182 0 7 4 153 0 8 2 182 0 9 0 191 0 11 0 195 0 12 0 199 0 13 2 182 0 14 2 182 0 16 2 182 0 18 2 182 0 20 2 182 0 21 2 182 0 23 2 182 0 27 2 182 0 30 2 182 0 31 2 182 0 33 4 153 0 35 2 182 0 36 2 182 0 52 2 182 0 57 0 203 0 58 2 182 0 59 2 182 0 64 2 182 0 65 4 153 0 71 2 182 0 74 2 182 0 77 2 182 0 80 2 182 0 87 2 182 0 89 2 182 0 96 2 182 0 97 2 182 0 104 4 153 0 108 4 153 0 109 2 182 0 112 2 182 0 115 2 182 0 118 2 182 0 123 2 182 0 127 2 182 0 128 2 182 0 129 2 182 0 130 2 182 0 131 0 207 0 132 0 211 0 133 2 182 0 135 2 182 0 136 2 182 0 137 4 153 1 124 2 182 1 131] 
#[1 4 145 0 2 2 186 0 3 4 153 0 4 2 186 0 5 4 149 0 6 2 186 0 7 4 153 0 8 2 186 0 9 0 215 0 11 0 219 0 12 0 223 0 13 2 186 0 14 2 186 0 16 2 186 0 18 2 186 0 20 2 186 0 21 2 186 0 23 2 186 0 27 2 186 0 30 2 186 0 31 2 186 0 33 4 153 0 35 2 186 0 36 2 186 0 52 2 186 0 57 0 227 0 58 2 186 0 59 2 186 0 64 2 186 0 65 4 153 0 71 2 186 0 74 2 186 0 77 2 186 0 80 2 186 0 87 2 186 0 89 2 186 0 96 2 186 0 97 2 186 0 104 4 153 0 108 4 153 0 109 2 186 0 112 2 186 0 115 2 186 0 118 2 186 0 123 2 186 0 127 2 186 0 128 2 186 0 129 2 186 0 130 2 186 0 131 0 231 0 132 0 235 0 133 2 186 0 135 2 186 0 136 2 186 0 137 4 153 1 124 2 186 1 131] 
#[0 0 214 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 190 0 3 2 190 0 5 2 190 0 14 2 190 0 16 2 190 0 21 2 190 0 23 2 190 0 27 2 190 0 30 2 190 0 31 2 190 0 33 2 190 0 36 2 190 0 52 2 190 0 57 2 190 0 59 2 190 0 65 2 190 0 74 2 190 0 77 2 190 0 87 2 190 0 89 2 190 0 96 2 190 0 97 2 190 0 104 2 190 0 112 2 190 0 115 2 190 0 118 2 190 0 123 2 190 0 127 2 190 0 128 4 161 0 130 2 190 0 131 2 190 0 132 2 190 0 137 2 190 1 131] 
#[0 6 229 0 140] 
#[0 2 194 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 2 198 0 77 6 233 0 130 6 237 0 246] 
#[1 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 6 241 0 203 6 245 0 227 6 249 0 237] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 6 253 0 211 1 169 0 212 1 173 0 213 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 7 1 0 213 7 5 0 220 7 1 1 114 1 193 1 119 1 197 1 130] 
#[0 7 9 0 140] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 7 13 0 213 7 13 1 114 1 193 1 119 1 197 1 130] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 17 0 183 7 17 0 187 1 133 0 192 7 17 0 194 7 17 0 195 7 17 0 197 7 17 0 201 7 17 0 202 1 157 0 204 7 17 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 17 0 243 7 17 0 244 7 17 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 7 21 0 213 7 21 1 114 1 193 1 119 1 197 1 130] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 7 25 0 131 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 7 29 0 139 7 33 0 180 7 37 0 181] 
#[0 7 41 0 14] 
#[1 4 169 0 11 1 18 0 14 7 45 0 179] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 49 0 183 7 49 0 187 1 133 0 192 7 49 0 194 7 49 0 195 7 49 0 197 7 49 0 201 7 49 0 202 1 157 0 204 7 49 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 49 0 243 7 49 0 244 7 49 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[0 7 53 0 14] 
#[0 7 57 0 139] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 61 0 183 7 61 0 187 1 133 0 192 7 61 0 194 7 61 0 195 7 61 0 197 7 61 0 201 7 61 0 202 1 157 0 204 7 61 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 61 0 243 7 61 0 244 7 61 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 2 206 0 3 4 189 0 5 7 65 0 9 2 206 0 131 2 206 0 137 2 206 1 131] 
#[1 4 101 0 139 7 69 0 236] 
#[1 4 101 0 139 7 73 0 236] 
#[1 4 101 0 139 7 77 0 236] 
#[1 4 101 0 139 7 81 0 236] 
#[1 4 101 0 139 7 85 0 236] 
#[0 2 210 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 2 214 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 2 218 0 3 2 218 0 21 2 218 0 23 2 218 0 24 2 218 0 26 2 218 0 27 2 218 0 28 2 218 0 32 2 218 0 40 5 73 0 44 5 77 0 51 2 218 0 52 2 218 0 65 2 218 0 88 2 218 0 89 2 218 0 91 2 218 0 92 2 218 0 93 2 218 0 94 2 218 0 104 2 218 0 113 2 218 0 115 2 218 0 118 2 218 0 123 2 218 0 130 2 218 0 139 5 89 1 27 2 218 1 131] 
#[0 2 222 0 3 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 2 226 0 3 2 226 0 21 2 226 0 23 2 226 0 24 2 226 0 26 2 226 0 27 2 226 0 28 2 226 0 32 2 226 0 40 5 73 0 44 5 77 0 51 2 226 0 52 2 226 0 65 2 226 0 88 2 226 0 89 2 226 0 91 2 226 0 92 2 226 0 93 2 226 0 94 2 226 0 104 2 226 0 113 2 226 0 115 2 226 0 118 2 226 0 123 2 226 0 130 2 226 0 139 5 93 1 27 2 226 1 131] 
#[0 2 230 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 2 234 0 3 2 234 0 21 2 234 0 23 2 234 0 24 2 234 0 26 2 234 0 27 2 234 0 28 2 234 0 32 2 234 0 40 2 234 0 43 2 234 0 48 2 234 0 52 2 234 0 56 2 234 0 61 2 234 0 65 2 234 0 88 2 234 0 89 2 234 0 91 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 104 2 234 0 113 2 234 0 115 2 234 0 118 2 234 0 123 2 234 0 130 1 217 0 139 7 89 0 172 2 234 1 131] 
#[0 2 238 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 3 41 0 2 6 225 0 6 0 54 0 137 7 93 0 196] 
#[1 7 97 0 2 6 225 0 6 2 242 0 137 7 101 1 45] 
#[1 3 41 0 2 6 225 0 6 0 54 0 9 7 105 0 14 0 54 0 137 7 109 0 196] 
#[1 3 41 0 2 6 225 0 6 7 113 0 14 0 54 0 137 7 117 0 196] 
#[1 2 246 0 9 2 246 0 30 2 246 0 33 2 246 0 57 2 246 0 59 2 246 0 74 2 246 0 96 2 246 0 97 2 246 0 112 2 246 0 127 2 246 0 128 7 121 0 130 2 246 0 137 7 125 1 13] 
#[1 2 250 0 3 2 250 0 21 2 250 0 23 2 250 0 24 2 250 0 26 2 250 0 27 2 250 0 28 2 250 0 32 2 250 0 40 2 250 0 43 2 250 0 48 2 250 0 52 2 250 0 56 2 250 0 61 2 250 0 65 2 250 0 88 2 250 0 89 2 250 0 91 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 104 2 250 0 113 2 250 0 115 2 250 0 118 2 250 0 123 2 250 0 130 1 225 0 139 1 229 1 32 7 129 1 72 2 250 1 131] 
#[0 2 254 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 3 2 0 3 3 2 0 21 3 2 0 23 3 2 0 24 3 2 0 26 3 2 0 27 3 2 0 28 3 2 0 32 3 2 0 40 3 2 0 43 3 2 0 48 3 2 0 52 3 2 0 56 3 2 0 61 3 2 0 65 3 2 0 88 3 2 0 89 3 2 0 91 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 104 3 2 0 113 3 2 0 115 3 2 0 118 3 2 0 123 1 201 0 130 1 205 0 139 7 133 0 178 1 213 0 240 3 2 1 131] 
#[0 3 6 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 3 10 0 3 3 10 0 21 3 10 0 23 3 10 0 24 3 10 0 26 3 10 0 27 3 10 0 28 3 10 0 32 3 10 0 40 3 10 0 43 3 10 0 48 3 10 0 52 3 10 0 56 3 10 0 61 3 10 0 65 3 10 0 88 3 10 0 89 3 10 0 91 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 104 3 10 0 113 3 10 0 115 3 10 0 118 3 10 0 123 3 10 0 130 1 225 0 139 1 229 1 32 7 129 1 72 3 10 1 131] 
#[1 4 201 0 28 4 205 0 32 4 209 0 52 4 213 0 79 4 217 0 89 4 225 1 48 4 229 1 50 4 233 1 56 4 237 1 58] 
#[0 3 14 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 3 18 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 3 22 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 3 26 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 3 30 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 3 34 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 3 38 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 7 137 0 183 7 137 0 187 1 133 0 192 7 137 0 194 7 137 0 195 7 137 0 197 7 137 0 201 7 137 0 202 1 157 0 204 7 137 0 210 1 165 0 211 1 169 0 212 1 173 0 213 7 137 0 243 7 137 0 244 7 137 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 7 141 0 137 7 145 0 139 7 149 0 143] 
#[0 7 153 0 137] 
#[1 3 42 0 3 3 42 0 17 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 27 3 42 0 28 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 38 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 47 3 42 0 48 3 42 0 51 3 42 0 52 3 42 0 61 3 42 0 62 3 42 0 67 3 42 0 70 3 42 0 73 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 92 3 42 0 93 3 42 0 94 3 42 0 100 3 42 0 101 3 42 0 104 3 42 0 105 3 42 0 110 3 42 0 111 3 42 0 113 3 42 0 115 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 124 3 42 0 130 3 42 0 139 7 157 1 23 3 42 1 131] 
#[1 3 42 0 3 3 42 0 17 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 27 3 42 0 28 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 38 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 47 3 42 0 48 3 42 0 51 3 42 0 52 3 42 0 61 3 42 0 62 3 42 0 67 3 42 0 70 3 42 0 73 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 92 3 42 0 93 3 42 0 94 3 42 0 100 3 42 0 101 3 42 0 104 3 42 0 105 3 42 0 110 3 42 0 111 3 42 0 113 3 42 0 115 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 124 3 42 0 130 3 42 0 139 7 161 1 23 3 42 1 131] 
#[1 3 42 0 3 3 42 0 17 3 42 0 21 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 27 3 42 0 28 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 38 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 47 3 42 0 48 3 42 0 51 3 42 0 52 3 42 0 56 3 42 0 61 3 42 0 62 3 42 0 65 3 42 0 67 3 42 0 70 3 42 0 73 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 92 3 42 0 93 3 42 0 94 3 42 0 100 3 42 0 101 3 42 0 104 3 42 0 105 3 42 0 110 3 42 0 111 3 42 0 113 3 42 0 115 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 124 3 42 0 130 3 42 0 139 7 165 1 23 3 42 1 131] 
#[1 3 42 0 3 3 42 0 17 3 42 0 21 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 27 3 42 0 28 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 38 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 47 3 42 0 48 3 42 0 51 3 42 0 52 3 42 0 56 3 42 0 61 3 42 0 62 3 42 0 65 3 42 0 67 3 42 0 70 3 42 0 73 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 92 3 42 0 93 3 42 0 94 3 42 0 100 3 42 0 101 3 42 0 104 3 42 0 105 3 42 0 110 3 42 0 111 3 42 0 113 3 42 0 115 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 124 3 42 0 130 3 42 0 139 7 169 1 23 3 42 1 131] 
#[1 3 42 0 3 3 42 0 17 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 27 3 42 0 28 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 38 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 47 3 42 0 48 3 42 0 51 3 42 0 52 3 42 0 61 3 42 0 62 3 42 0 67 3 42 0 70 3 42 0 73 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 92 3 42 0 93 3 42 0 94 3 42 0 100 3 42 0 101 3 42 0 104 3 42 0 105 3 42 0 110 3 42 0 111 3 42 0 113 3 42 0 115 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 124 3 42 0 130 3 42 0 139 7 173 1 23 3 42 1 131] 
#[0 7 177 0 139] 
#[0 3 46 0 14 0 31 0 137] 
#[0 3 50 0 14 0 31 0 137] 
#[0 7 181 0 137] 
#[0 3 54 0 103] 
#[0 7 185 0 137] 
#[0 7 189 0 137] 
#[1 2 201 0 139 7 193 0 166 2 229 0 167] 
#[0 3 58 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 7 197 0 143] 
#[0 7 201 0 6] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 7 205 0 43 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 7 209 0 155 3 5 1 65 3 9 1 66 7 213 1 127] 
#[1 7 217 0 5 7 221 0 137] 
#[1 3 62 0 5 5 101 0 6 3 62 0 137] 
#[1 2 201 0 139 7 225 0 165 2 225 0 166 2 229 0 167] 
#[1 7 229 0 40 7 233 1 129] 
#[1 3 66 0 27 3 66 0 40 3 66 0 48 3 66 0 52 3 66 0 56 3 66 0 61 3 66 0 89 3 66 0 104 3 66 0 115 3 66 0 118 3 66 0 123 7 237 0 168] 
#[1 0 6 0 23 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 32 0 6 0 40 0 6 0 43 0 6 0 48 0 6 0 52 0 6 0 61 0 6 0 89 0 6 0 104 0 6 0 115 0 6 0 118 0 53 0 122 0 6 0 123 7 241 0 164] 
#[1 3 70 0 40 3 70 0 48 7 245 0 61 7 249 1 125] 
#[0 3 74 1 131] 
#[1 1 225 0 139 7 253 1 32] 
#[1 8 1 0 139 8 5 0 174 8 9 0 175] 
#[0 3 78 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 82 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 86 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 90 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 94 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 8 13 1 65 3 9 1 66] 
#[0 3 98 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 102 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 8 17 1 65 3 9 1 66] 
#[0 3 106 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 110 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 3 114 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 8 21 0 137] 
#[0 3 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 3 122 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 25 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 8 25 1 102 8 25 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 29 0 213 8 33 1 89 8 37 1 90 8 41 1 91 8 45 1 92 8 49 1 93 8 53 1 94 8 29 1 114 1 193 1 119 1 197 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 57 1 105 1 9 1 106 8 57 1 107 8 57 1 108 1 21 1 109 8 57 1 110 1 29 1 111 8 57 1 112 1 37 1 113 8 57 1 114 1 45 1 119 8 57 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 61 1 105 1 9 1 106 8 61 1 107 8 61 1 108 1 21 1 109 8 61 1 110 1 29 1 111 8 61 1 112 1 37 1 113 8 61 1 114 1 45 1 119 8 61 1 120 1 53 1 130] 
#[0 8 65 0 3] 
#[1 3 126 0 3 3 126 0 131 8 69 0 137] 
#[0 3 130 0 3 0 131 0 137] 
#[0 3 134 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 73 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 8 73 1 102 8 73 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[1 0 97 0 2 8 77 0 3 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 101 1 105 1 9 1 106 6 101 1 107 6 101 1 108 1 21 1 109 6 101 1 110 1 29 1 111 6 101 1 112 1 37 1 113 6 101 1 114 1 45 1 119 6 101 1 120 8 81 1 121 6 109 1 122 1 53 1 130] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 8 85 0 9 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 8 89 0 9 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 4 101 0 139 8 93 0 236] 
#[0 3 138 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 97 1 105 1 9 1 106 8 97 1 107 8 97 1 108 1 21 1 109 8 97 1 110 1 29 1 111 8 97 1 112 1 37 1 113 8 97 1 114 1 45 1 119 8 97 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 8 101 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 105 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 8 109 1 83 8 113 1 84 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 3 142 0 40 8 117 0 49 8 121 1 86] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 125 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 8 125 1 102 8 125 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 129 1 105 1 9 1 106 8 129 1 107 8 129 1 108 1 21 1 109 8 129 1 110 1 29 1 111 8 129 1 112 1 37 1 113 8 129 1 114 1 45 1 119 8 129 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 133 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 8 133 1 102 8 133 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 8 137 1 105 1 9 1 106 8 137 1 107 8 137 1 108 1 21 1 109 8 137 1 110 1 29 1 111 8 137 1 112 1 37 1 113 8 137 1 114 1 45 1 119 8 137 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 3 109 1 105 1 9 1 106 3 109 1 107 3 109 1 108 1 21 1 109 3 109 1 110 1 29 1 111 3 109 1 112 1 37 1 113 3 109 1 114 8 141 1 116 1 45 1 119 3 109 1 120 1 53 1 130] 
#[0 3 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 3 150 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 3 154 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 3 158 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 3 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 141 0 2 3 166 0 3 3 245 0 4 3 166 0 5 3 149 0 6 3 245 0 8 3 166 0 9 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 8 145 0 3 8 149 0 5] 
#[1 3 170 0 3 3 170 0 5 8 153 0 9] 
#[0 3 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 141 0 2 3 182 0 3 3 245 0 4 3 182 0 5 3 149 0 6 3 182 0 7 3 245 0 8 3 182 0 9 3 157 0 10 0 239 0 11 0 243 0 12 0 247 0 13 0 251 0 14 3 245 0 18 3 245 0 20 3 182 0 30 3 182 0 33 3 245 0 35 3 182 0 36 3 182 0 37 3 182 0 39 3 182 0 40 3 182 0 41 3 182 0 48 3 182 0 49 3 182 0 57 0 255 0 58 3 182 0 59 3 182 0 61 3 245 0 64 3 245 0 71 3 182 0 74 3 182 0 77 3 182 0 78 3 245 0 80 3 182 0 96 3 182 0 97 3 245 0 108 3 245 0 109 3 182 0 112 3 182 0 114 3 182 0 116 3 182 0 121 3 182 0 127 3 182 0 128 3 245 0 129 3 217 0 130 3 182 0 131 1 3 0 132 1 7 0 133 3 182 0 134 3 245 0 135 3 245 0 136 3 182 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 3 182 1 131] 
#[1 3 141 0 2 3 245 0 4 3 186 0 5 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 186 0 131 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 8 157 0 5 8 161 0 131] 
#[1 3 141 0 2 3 190 0 3 3 245 0 4 3 190 0 5 3 149 0 6 3 190 0 7 3 245 0 8 3 190 0 9 3 157 0 10 1 11 0 11 1 15 0 12 1 19 0 13 1 23 0 14 3 245 0 18 3 245 0 20 3 190 0 30 3 190 0 33 3 245 0 35 3 190 0 36 3 190 0 37 3 190 0 39 3 190 0 40 3 190 0 41 3 190 0 48 3 190 0 49 3 190 0 57 1 27 0 58 3 190 0 59 3 190 0 61 3 245 0 64 3 245 0 71 3 190 0 74 3 190 0 77 3 190 0 78 3 245 0 80 3 190 0 96 3 190 0 97 3 245 0 108 3 245 0 109 3 190 0 112 3 190 0 114 3 190 0 116 3 190 0 121 3 190 0 127 3 190 0 128 3 245 0 129 3 217 0 130 3 190 0 131 1 31 0 132 1 35 0 133 3 190 0 134 3 245 0 135 3 245 0 136 3 190 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 3 190 1 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 177 0 183 8 165 0 187 8 169 0 191 1 133 0 192 1 177 0 194 1 177 0 195 8 165 0 197 8 165 0 201 8 165 0 202 1 157 0 204 8 165 0 210 1 165 0 211 1 169 0 212 1 173 0 213 1 177 0 243 8 165 0 244 8 165 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 173 0 213 8 173 1 114 1 193 1 119 1 197 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 177 0 213 8 177 1 114 1 193 1 119 1 197 1 130] 
#[0 3 194 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 21 0 139 8 181 0 185] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 185 0 213 8 185 1 114 1 193 1 119 1 197 1 130] 
#[0 3 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 4 37 0 213 8 189 0 216 4 37 1 114 1 193 1 119 1 197 1 130] 
#[0 3 202 0 3] 
#[0 8 193 0 3] 
#[1 8 197 0 140 8 201 0 219] 
#[1 3 206 0 3 3 206 0 5 3 206 0 14 4 157 0 16 3 206 0 21 3 206 0 23 3 206 0 27 3 206 0 30 3 206 0 31 3 206 0 33 3 206 0 36 3 206 0 52 3 206 0 57 3 206 0 59 3 206 0 65 3 206 0 74 3 206 0 77 3 206 0 87 3 206 0 89 3 206 0 96 3 206 0 97 3 206 0 104 3 206 0 112 3 206 0 115 3 206 0 118 3 206 0 123 3 206 0 127 3 206 0 128 4 161 0 130 3 206 0 131 3 206 0 132 3 206 0 137 3 206 1 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 8 205 0 183 8 205 0 187 1 133 0 192 8 205 0 194 8 205 0 195 8 205 0 197 8 205 0 201 8 205 0 202 1 157 0 204 8 205 0 210 1 165 0 211 1 169 0 212 1 173 0 213 8 205 0 243 8 205 0 244 8 205 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[0 8 209 0 76] 
#[0 8 213 0 137] 
#[1 4 101 0 139 8 217 0 236] 
#[1 3 41 0 2 0 54 0 9 8 221 0 196] 
#[1 3 41 0 2 0 54 0 137 8 225 0 196] 
#[1 4 17 0 2 0 186 0 3 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 8 229 0 140 1 169 0 141 1 193 0 143 1 121 0 147 8 233 0 198 1 169 0 212 4 37 0 213 4 41 0 214 4 45 0 215 4 49 0 216 4 53 0 217 4 57 0 218 4 61 0 219 4 37 1 114 1 193 1 119 1 197 1 130] 
#[0 3 210 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 145 0 2 3 214 0 3 4 153 0 4 3 214 0 5 4 149 0 6 0 250 0 7 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 3 214 0 14 3 214 0 16 4 153 0 18 4 153 0 20 3 214 0 21 3 214 0 23 3 214 0 27 3 214 0 30 3 214 0 31 3 214 0 33 4 153 0 35 3 214 0 36 3 214 0 52 3 214 0 57 4 153 0 58 3 214 0 59 4 153 0 64 3 214 0 65 4 153 0 71 3 214 0 74 3 214 0 77 4 153 0 80 3 214 0 87 3 214 0 89 3 214 0 96 3 214 0 97 3 214 0 104 4 153 0 108 4 153 0 109 3 214 0 112 3 214 0 115 3 214 0 118 3 214 0 123 3 214 0 127 3 214 0 128 4 153 0 129 3 214 0 130 3 214 0 131 1 39 0 132 4 153 0 133 4 153 0 135 4 153 0 136 3 214 0 137 4 153 1 124 3 214 1 131] 
#[0 3 218 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 8 237 0 139] 
#[0 3 222 0 3 0 5 0 6 0 11 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 8 253 0 210 1 165 0 211 1 169 0 212 8 245 0 213 8 249 0 247 8 253 0 248 8 245 1 114 1 193 1 119 1 197 1 130] 
#[0 9 1 0 77] 
#[0 9 5 0 40] 
#[1 3 226 0 3 3 226 0 24 3 226 0 40 3 226 0 88 3 226 0 92 3 226 0 93 3 226 0 94 3 226 0 113 9 9 0 228] 
#[1 3 230 0 3 3 230 0 24 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 3 230 0 40 2 17 0 52 3 230 0 88 2 21 0 89 2 25 0 91 3 230 0 92 3 230 0 93 3 230 0 94 3 230 0 113 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 9 13 0 170 9 13 0 176 9 13 0 238 9 13 0 239 2 57 0 240 9 13 0 241 9 13 0 242 9 13 0 254 9 13 0 255 9 13 1 0 9 13 1 1 9 13 1 2 9 13 1 3 9 13 1 5 9 13 1 6 9 13 1 7 9 13 1 9 2 109 1 10 9 13 1 11 2 117 1 32 9 13 1 40 2 125 1 41 9 13 1 43 2 133 1 44 9 13 1 47 2 141 1 48 9 13 1 49 2 149 1 50 9 13 1 52 9 13 1 53 9 13 1 55 2 165 1 56 9 13 1 57 2 173 1 58 9 13 1 60 9 13 1 61 9 13 1 63 2 189 1 64 9 13 1 69 2 197 1 70] 
#[0 3 234 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 145 0 2 3 238 0 3 4 153 0 4 3 238 0 5 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 9 17 0 3 9 21 0 5] 
#[0 3 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 4 145 0 2 3 246 0 3 4 153 0 4 3 246 0 5 4 149 0 6 3 246 0 7 4 153 0 8 3 246 0 9 1 43 0 11 1 47 0 12 1 51 0 13 3 246 0 14 3 246 0 16 4 153 0 18 4 153 0 20 3 246 0 21 3 246 0 23 3 246 0 27 3 246 0 30 3 246 0 31 3 246 0 33 4 153 0 35 3 246 0 36 3 246 0 52 3 246 0 57 1 55 0 58 3 246 0 59 4 153 0 64 3 246 0 65 4 153 0 71 3 246 0 74 3 246 0 77 4 153 0 80 3 246 0 87 3 246 0 89 3 246 0 96 3 246 0 97 3 246 0 104 4 153 0 108 4 153 0 109 3 246 0 112 3 246 0 115 3 246 0 118 3 246 0 123 3 246 0 127 3 246 0 128 4 153 0 129 3 246 0 130 3 246 0 131 1 59 0 132 1 63 0 133 4 153 0 135 4 153 0 136 3 246 0 137 4 153 1 124 3 246 1 131] 
#[1 3 250 0 3 3 250 0 5 3 250 0 14 3 250 0 21 3 250 0 23 3 250 0 27 3 250 0 30 3 250 0 31 3 250 0 33 3 250 0 36 3 250 0 52 3 250 0 57 3 250 0 59 3 250 0 65 3 250 0 74 3 250 0 77 3 250 0 87 3 250 0 89 3 250 0 96 3 250 0 97 3 250 0 104 3 250 0 112 3 250 0 115 3 250 0 118 3 250 0 123 3 250 0 127 3 250 0 128 4 161 0 130 3 250 0 131 3 250 0 132 3 250 0 137 3 250 1 131] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 9 25 0 131 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[0 3 254 0 26 0 28 0 32 0 52 0 89 0 139] 
#[1 4 2 0 5 9 29 0 9 4 2 0 132] 
#[1 9 33 0 5 9 37 0 132] 
#[0 4 6 0 5 0 132] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 9 41 0 26 9 101 0 34 1 65 0 46 1 69 0 52 9 101 0 63 1 73 0 75 9 53 0 76 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 9 57 0 182 9 61 0 183 9 65 0 186 9 69 0 187 1 133 0 192 9 73 0 194 9 77 0 195 9 69 0 197 9 65 0 200 9 69 0 201 9 69 0 202 1 157 0 204 9 69 0 210 1 165 0 211 1 169 0 212 1 173 0 213 9 65 0 221 9 65 0 222 9 65 0 225 1 177 0 243 9 69 0 244 9 69 0 245 9 65 0 249 9 101 0 250 1 173 1 114 1 193 1 119 1 197 1 130] 
#[0 9 105 0 14] 
#[1 4 10 0 14 4 157 0 16 4 10 0 21 4 10 0 23 4 10 0 27 4 10 0 30 4 10 0 33 4 10 0 36 4 10 0 52 4 10 0 57 4 10 0 59 4 10 0 65 4 10 0 74 4 10 0 77 4 10 0 89 4 10 0 96 4 10 0 97 4 10 0 104 4 10 0 112 4 10 0 115 4 10 0 118 4 10 0 123 4 10 0 127 4 10 0 128 4 161 0 130 4 10 0 137] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 9 109 0 213 9 109 1 114 1 193 1 119 1 197 1 130] 
#[0 4 14 0 3 0 5 0 9 0 131 0 137 1 131] 
#[1 1 194 0 14 4 157 0 16 9 113 0 31 9 113 0 87 4 161 0 130 1 194 0 137 9 113 0 193] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 9 117 0 183 9 117 0 187 1 133 0 192 9 117 0 194 9 117 0 195 9 117 0 197 9 117 0 201 9 117 0 202 1 157 0 204 9 117 0 210 1 165 0 211 1 169 0 212 1 173 0 213 9 117 0 243 9 117 0 244 9 117 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 3 41 0 2 6 225 0 6 0 54 0 137 9 121 0 196] 
#[1 7 97 0 2 6 225 0 6 2 242 0 137 9 125 1 45] 
#[1 3 41 0 2 6 225 0 6 0 54 0 9 0 54 0 137 7 109 0 196] 
#[1 3 41 0 2 6 225 0 6 0 54 0 9 0 54 0 137 9 129 0 196] 
#[1 3 41 0 2 6 225 0 6 0 54 0 137 7 117 0 196] 
#[0 4 18 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 9 133 0 137] 
#[0 9 137 0 3] 
#[0 9 141 0 137] 
#[0 9 145 0 139] 
#[1 4 181 0 9 1 22 0 137 9 149 1 8] 
#[0 9 153 0 139] 
#[0 9 157 0 137] 
#[1 1 253 0 27 1 253 0 81 1 253 0 123 1 226 0 131 0 22 0 139 9 161 1 29 6 13 1 30 6 17 1 31 1 253 1 34] 
#[1 4 181 0 9 1 22 0 30 1 22 0 33 1 22 0 57 1 22 0 59 1 22 0 74 1 22 0 96 1 22 0 97 1 22 0 112 1 22 0 127 1 22 0 128 1 22 0 137 9 165 1 8] 
#[0 4 22 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 4 26 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 4 157 0 16 9 169 0 31 9 169 0 87 4 161 0 130 1 194 0 137 9 169 0 193] 
#[0 4 30 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 9 173 0 72 9 177 0 137] 
#[1 9 181 0 72 9 185 0 137] 
#[0 4 34 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 4 38 0 3 10 41 0 17 10 41 0 22 4 38 0 23 4 38 0 24 10 41 0 25 4 38 0 26 4 38 0 27 4 38 0 28 9 201 0 31 4 38 0 32 9 205 0 33 10 41 0 38 4 38 0 40 10 41 0 42 4 38 0 43 5 73 0 44 10 41 0 45 10 41 0 47 4 38 0 48 5 77 0 51 4 38 0 52 4 38 0 61 10 41 0 62 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 4 38 0 88 4 38 0 89 4 38 0 91 4 38 0 92 4 38 0 93 4 38 0 94 10 41 0 100 10 41 0 101 4 38 0 104 10 41 0 105 10 41 0 110 10 41 0 111 4 38 0 113 4 38 0 115 4 38 0 118 10 41 0 120 4 38 0 123 10 41 0 124 4 38 0 130 4 38 0 139 10 29 1 25 10 29 1 26 10 29 1 27 10 41 1 28 4 38 1 131] 
#[1 4 42 0 3 10 41 0 17 10 41 0 22 4 42 0 23 4 42 0 24 10 41 0 25 4 42 0 26 4 42 0 27 4 42 0 28 9 201 0 31 4 42 0 32 9 205 0 33 10 41 0 38 4 42 0 40 10 41 0 42 4 42 0 43 5 73 0 44 10 41 0 45 10 41 0 47 4 42 0 48 5 77 0 51 4 42 0 52 4 42 0 61 10 41 0 62 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 4 42 0 88 4 42 0 89 4 42 0 91 4 42 0 92 4 42 0 93 4 42 0 94 10 41 0 100 10 41 0 101 4 42 0 104 10 41 0 105 10 41 0 110 10 41 0 111 4 42 0 113 4 42 0 115 4 42 0 118 10 41 0 120 4 42 0 123 10 41 0 124 4 42 0 130 4 42 0 139 10 29 1 25 10 29 1 26 10 29 1 27 10 41 1 28 4 42 1 131] 
#[1 4 46 0 3 10 41 0 17 4 46 0 21 10 41 0 22 4 46 0 23 4 46 0 24 10 41 0 25 4 46 0 26 4 46 0 27 4 46 0 28 9 201 0 31 4 46 0 32 9 205 0 33 10 41 0 38 4 46 0 40 10 41 0 42 4 46 0 43 5 73 0 44 10 41 0 45 10 41 0 47 4 46 0 48 5 77 0 51 4 46 0 52 4 46 0 56 4 46 0 61 10 41 0 62 4 46 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 4 46 0 88 4 46 0 89 4 46 0 91 4 46 0 92 4 46 0 93 4 46 0 94 10 41 0 100 10 41 0 101 4 46 0 104 10 41 0 105 10 41 0 110 10 41 0 111 4 46 0 113 4 46 0 115 4 46 0 118 10 41 0 120 4 46 0 123 10 41 0 124 4 46 0 130 4 46 0 139 10 29 1 25 10 29 1 26 10 29 1 27 10 41 1 28 4 46 1 131] 
#[1 4 50 0 3 10 41 0 17 4 50 0 21 10 41 0 22 4 50 0 23 4 50 0 24 10 41 0 25 4 50 0 26 4 50 0 27 4 50 0 28 9 201 0 31 4 50 0 32 9 205 0 33 10 41 0 38 4 50 0 40 10 41 0 42 4 50 0 43 5 73 0 44 10 41 0 45 10 41 0 47 4 50 0 48 5 77 0 51 4 50 0 52 4 50 0 56 4 50 0 61 10 41 0 62 4 50 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 4 50 0 88 4 50 0 89 4 50 0 91 4 50 0 92 4 50 0 93 4 50 0 94 10 41 0 100 10 41 0 101 4 50 0 104 10 41 0 105 10 41 0 110 10 41 0 111 4 50 0 113 4 50 0 115 4 50 0 118 10 41 0 120 4 50 0 123 10 41 0 124 4 50 0 130 4 50 0 139 10 29 1 25 10 29 1 26 10 29 1 27 10 41 1 28 4 50 1 131] 
#[1 4 54 0 3 10 41 0 17 10 41 0 22 4 54 0 23 4 54 0 24 10 41 0 25 4 54 0 26 4 54 0 27 4 54 0 28 9 201 0 31 4 54 0 32 9 205 0 33 10 41 0 38 4 54 0 40 10 41 0 42 4 54 0 43 5 73 0 44 10 41 0 45 10 41 0 47 4 54 0 48 5 77 0 51 4 54 0 52 4 54 0 61 10 41 0 62 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 4 54 0 88 4 54 0 89 4 54 0 91 4 54 0 92 4 54 0 93 4 54 0 94 10 41 0 100 10 41 0 101 4 54 0 104 10 41 0 105 10 41 0 110 10 41 0 111 4 54 0 113 4 54 0 115 4 54 0 118 10 41 0 120 4 54 0 123 10 41 0 124 4 54 0 130 4 54 0 139 10 29 1 25 10 29 1 26 10 29 1 27 10 41 1 28 4 54 1 131] 
#[0 4 58 0 5 0 6 0 31 0 58 0 87 0 137] 
#[0 4 62 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 4 66 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 122 0 123] 
#[0 4 70 0 40 0 48 0 56 0 61 0 63 1 131] 
#[0 4 74 0 5 0 137] 
#[0 4 78 0 5 0 137] 
#[0 4 82 1 131] 
#[1 10 45 0 139 10 49 1 128] 
#[0 10 53 0 6] 
#[0 4 86 0 21 0 23 0 27 0 43 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 2 201 0 139 10 57 0 167] 
#[0 4 90 0 29] 
#[1 5 129 0 5 10 61 0 137] 
#[0 10 65 0 6] 
#[0 4 94 1 131] 
#[1 2 5 0 27 4 98 0 40 4 98 0 48 4 209 0 52 4 98 0 56 4 98 0 61 4 217 0 89 5 185 0 104 2 29 0 115 2 33 0 118 2 37 0 123 10 69 0 169 10 69 0 170 10 69 0 173 10 69 0 176 10 69 1 2 10 69 1 5 10 69 1 47 2 141 1 48 10 69 1 49 2 149 1 50 10 69 1 55 2 165 1 56 10 69 1 57 2 173 1 58 10 69 1 69 2 197 1 70] 
#[1 4 102 0 23 4 102 0 26 4 102 0 27 4 102 0 28 4 102 0 32 4 102 0 40 4 102 0 43 4 102 0 48 4 102 0 52 4 102 0 61 4 102 0 89 4 102 0 104 4 102 0 115 4 102 0 118 4 102 0 123 10 97 1 37] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 48 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 101 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 4 106 0 40 10 105 0 48 10 109 1 126] 
#[1 4 189 0 5 10 113 0 137] 
#[0 10 117 0 14] 
#[1 4 110 0 21 4 110 0 23 4 110 0 26 4 110 0 27 4 110 0 28 4 110 0 32 4 110 0 40 4 110 0 43 4 110 0 48 4 110 0 52 4 110 0 56 4 110 0 61 4 110 0 65 4 110 0 89 4 110 0 104 4 110 0 115 4 110 0 118 4 110 0 123 8 1 0 139 10 121 0 175] 
#[0 4 114 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 4 118 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 4 122 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[0 4 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 21 0 23 0 26 0 27 0 28 0 30 0 32 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 43 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 4 130 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137] 
#[1 4 145 0 2 4 153 0 4 4 134 0 5 4 149 0 6 10 125 0 7 4 153 0 8 4 134 0 9 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 10 129 0 39 4 138 0 40 10 133 1 95] 
#[1 2 154 0 39 2 154 0 40 10 137 0 137 10 141 1 88] 
#[0 4 142 0 39 0 40 0 137] 
#[0 10 145 0 9] 
#[0 10 149 0 5] 
#[1 4 146 0 5 4 150 0 9] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 10 161 0 37 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 10 161 0 116 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 10 161 1 100 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 10 165 0 36 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[0 4 154 0 9 0 21 0 23 0 27 0 52 0 65 0 77 0 89 0 104 0 115 0 118 0 123 0 137] 
#[1 1 253 0 27 1 253 0 81 1 253 0 123 0 22 0 139 10 169 1 31 1 253 1 34] 
#[1 10 173 0 39 4 158 0 40 4 158 0 41 4 158 0 48 4 158 0 49 4 158 0 61 4 158 0 78 4 158 0 121 4 158 0 137 4 158 1 131] 
#[0 4 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 10 177 0 3 8 149 0 5] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 181 1 105 1 9 1 106 10 181 1 107 10 181 1 108 1 21 1 109 10 181 1 110 1 29 1 111 10 181 1 112 1 37 1 113 10 181 1 114 1 45 1 119 10 181 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 185 1 105 1 9 1 106 10 185 1 107 10 185 1 108 1 21 1 109 10 185 1 110 1 29 1 111 10 185 1 112 1 37 1 113 10 185 1 114 1 45 1 119 10 185 1 120 1 53 1 130] 
#[1 6 225 0 6 4 166 0 39 4 166 0 40 4 166 0 41 4 166 0 48 4 166 0 49 4 166 0 61 4 166 0 78 4 166 0 121 4 166 0 137 4 166 1 131] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 4 170 0 39 4 170 0 40 4 170 0 41 4 170 0 48 4 170 0 49 3 245 0 58 4 170 0 61 3 245 0 64 3 245 0 71 4 170 0 78 3 245 0 80 3 245 0 108 3 245 0 109 4 170 0 121 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 4 170 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124 4 170 1 131] 
#[1 4 101 0 139 10 189 0 236] 
#[1 10 193 0 39 4 174 0 40 4 174 0 49 5 249 0 137 10 197 1 85] 
#[1 10 193 0 39 4 174 0 40 4 174 0 49 8 101 0 78 10 201 1 84 10 205 1 85] 
#[0 4 178 0 39 0 40 0 49 0 78] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 209 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[0 10 213 0 40] 
#[0 4 182 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 3 141 0 2 3 245 0 4 4 186 0 5 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 4 186 0 36 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[0 4 190 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 3 141 0 2 3 245 0 4 4 194 0 5 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 4 194 0 131 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[0 4 198 0 5 0 131] 
#[0 4 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 6 101 1 105 1 9 1 106 6 101 1 107 6 101 1 108 1 21 1 109 6 101 1 110 1 29 1 111 6 101 1 112 1 37 1 113 6 101 1 114 1 45 1 119 6 101 1 120 10 217 1 122 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 221 1 105 1 9 1 106 10 221 1 107 10 221 1 108 1 21 1 109 10 221 1 110 1 29 1 111 10 221 1 112 1 37 1 113 10 221 1 114 1 45 1 119 10 221 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 10 225 1 105 1 9 1 106 10 225 1 107 10 225 1 108 1 21 1 109 10 225 1 110 1 29 1 111 10 225 1 112 1 37 1 113 10 225 1 114 1 45 1 119 10 225 1 120 1 53 1 130] 
#[0 4 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 4 210 0 5 0 214 0 16 0 214 0 130 4 210 0 132] 
#[1 10 229 0 5 4 214 0 132 10 233 0 190] 
#[1 4 145 0 2 4 218 0 3 4 153 0 4 4 218 0 5 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 4 145 0 2 4 222 0 3 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 222 0 137 4 153 1 124] 
#[0 4 226 0 3 0 5] 
#[1 4 145 0 2 4 230 0 3 4 153 0 4 4 230 0 5 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[0 4 234 0 3 0 5] 
#[0 4 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[0 6 145 0 9] 
#[0 4 242 0 3 0 137] 
#[1 4 157 0 16 6 189 0 77 4 161 0 130 2 174 0 137 10 237 1 4] 
#[0 4 246 0 137] 
#[1 3 42 0 3 3 42 0 5 3 42 0 14 3 42 0 16 3 42 0 17 3 42 0 21 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 27 3 42 0 28 3 42 0 30 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 36 3 42 0 38 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 47 3 42 0 48 3 42 0 51 3 42 0 52 3 42 0 56 3 42 0 57 3 42 0 59 3 42 0 61 3 42 0 62 3 42 0 65 3 42 0 67 3 42 0 70 3 42 0 73 3 42 0 74 3 42 0 77 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 92 3 42 0 93 3 42 0 94 3 42 0 96 3 42 0 97 3 42 0 100 3 42 0 101 3 42 0 104 3 42 0 105 3 42 0 110 3 42 0 111 3 42 0 112 3 42 0 113 3 42 0 115 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 124 3 42 0 127 3 42 0 128 3 42 0 130 3 42 0 131 3 42 0 132 3 42 0 137 3 42 0 139 10 241 1 23 3 42 1 131] 
#[1 6 225 0 6 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 10 245 0 203 6 245 0 227 6 249 0 237] 
#[0 10 249 0 9] 
#[0 10 253 0 137] 
#[1 0 198 0 2 0 198 0 3 0 198 0 4 1 67 0 5 0 198 0 6 0 198 0 8 6 145 0 9 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 18 0 198 0 20 0 198 0 35 0 198 0 58 0 198 0 64 0 198 0 71 0 198 0 80 0 198 0 108 0 198 0 109 0 198 0 129 0 198 0 132 0 198 0 133 0 198 0 135 0 198 0 136] 
#[0 11 5 0 3] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 1 18 0 6 1 18 0 9 4 169 0 11 1 18 0 14 1 18 0 16 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 48 1 18 0 49 1 18 0 52 1 18 0 57 1 18 0 59 1 18 0 61 1 18 0 65 1 18 0 74 1 18 0 77 1 18 0 78 1 18 0 87 1 18 0 88 1 18 0 89 1 18 0 91 1 18 0 92 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 104 1 18 0 112 1 18 0 113 1 18 0 115 1 18 0 118 1 18 0 121 1 18 0 123 1 18 0 127 1 18 0 128 1 18 0 130 1 18 0 131 1 18 0 132 1 18 0 137 1 18 0 139 11 9 0 179 1 18 1 131] 
#[0 4 250 0 5 0 131] 
#[1 4 145 0 2 4 153 0 4 4 254 0 5 4 149 0 6 0 250 0 7 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 254 0 131 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 11 13 0 5 11 17 0 131] 
#[0 5 2 0 5 0 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 11 21 0 27 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 11 25 0 183 11 25 0 187 1 133 0 192 11 25 0 194 11 25 0 195 11 25 0 197 11 25 0 201 11 25 0 202 1 157 0 204 11 25 0 210 1 165 0 211 1 169 0 212 1 173 0 213 11 25 0 243 11 25 0 244 11 25 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[0 5 6 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 5 10 0 3 11 29 0 24 5 10 0 40 11 33 0 88 11 37 0 92 11 41 0 93 11 45 0 94 11 49 0 113 11 53 0 205 11 57 0 229 11 57 0 230 11 57 0 231 11 57 0 232 11 57 0 233] 
#[0 5 14 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139] 
#[0 5 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 52 0 57 0 58 0 59 0 64 0 65 0 71 0 74 0 77 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 115 0 118 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 135 0 136 0 137 1 131] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 11 77 0 213 11 77 1 114 1 193 1 119 1 197 1 130] 
#[0 5 22 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 11 81 0 183 11 81 0 187 1 133 0 192 11 81 0 194 11 81 0 195 11 81 0 197 11 81 0 201 11 81 0 202 1 157 0 204 11 81 0 210 1 165 0 211 1 169 0 212 1 173 0 213 11 81 0 243 11 81 0 244 11 81 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 7 29 0 139 11 85 0 181] 
#[0 5 26 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 5 30 0 2 5 30 0 17 5 30 0 26 5 30 0 27 5 30 0 28 5 30 0 31 5 30 0 32 5 30 0 40 5 30 0 52 5 30 0 54 11 89 0 77 5 30 0 87 5 30 0 88 5 30 0 89 5 30 0 91 5 30 0 92 5 30 0 93 5 30 0 94 5 30 0 106 5 30 0 113 5 30 0 115 5 30 0 118 5 30 0 123 5 30 0 130 5 30 0 137 5 30 0 139 11 93 0 223] 
#[0 5 34 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[0 5 38 0 2 0 26 0 31 0 40 0 52 0 87 0 89 0 91 0 130 0 137] 
#[1 11 97 0 2 5 42 0 26 5 42 0 27 5 42 0 28 5 42 0 32 5 42 0 40 5 42 0 52 5 42 0 88 5 42 0 89 5 42 0 91 5 42 0 92 5 42 0 93 5 42 0 94 5 42 0 113 5 42 0 115 5 42 0 118 5 42 0 123 5 42 0 130 5 42 0 139 11 101 0 234] 
#[0 5 46 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 0 210 0 16 0 210 0 130 11 105 0 137] 
#[1 11 109 0 31 11 109 0 87 1 194 0 137 11 109 0 193] 
#[1 0 214 0 16 11 113 0 31 11 113 0 87 0 214 0 130 1 194 0 137 11 113 0 193] 
#[1 5 50 0 3 0 222 0 16 5 50 0 21 5 50 0 23 5 50 0 24 5 50 0 26 5 50 0 27 5 50 0 28 5 50 0 32 5 50 0 40 5 50 0 43 5 50 0 48 5 50 0 52 5 50 0 56 5 50 0 61 5 50 0 65 5 50 0 88 5 50 0 89 5 50 0 91 5 50 0 92 5 50 0 93 5 50 0 94 5 50 0 104 5 50 0 113 5 50 0 115 5 50 0 118 5 50 0 123 1 71 0 130 5 50 0 139 5 50 1 131] 
#[1 5 54 0 3 0 226 0 16 5 54 0 21 5 54 0 23 5 54 0 24 5 54 0 26 5 54 0 27 5 54 0 28 5 54 0 32 5 54 0 40 5 54 0 43 5 54 0 48 5 54 0 52 5 54 0 56 5 54 0 61 5 54 0 65 5 54 0 88 5 54 0 89 5 54 0 91 5 54 0 92 5 54 0 93 5 54 0 94 5 54 0 104 5 54 0 113 5 54 0 115 5 54 0 118 5 54 0 123 1 75 0 130 5 54 0 139 5 54 1 131] 
#[0 5 58 0 31 0 87 0 137] 
#[0 5 62 0 31 0 87 0 137] 
#[0 5 66 0 31 0 87 0 137] 
#[0 5 70 0 31 0 87 0 137] 
#[0 5 74 0 31 0 87 0 137] 
#[1 11 97 0 2 5 42 0 26 5 78 0 31 5 42 0 40 5 42 0 52 5 78 0 87 5 42 0 89 5 42 0 91 5 42 0 130 5 78 0 137 11 117 0 234] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 9 41 0 26 9 101 0 34 1 65 0 46 1 69 0 52 9 101 0 63 1 73 0 75 9 53 0 76 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 11 121 0 182 9 61 0 183 9 65 0 186 9 69 0 187 1 133 0 192 9 73 0 194 9 77 0 195 9 69 0 197 9 65 0 200 9 69 0 201 9 69 0 202 1 157 0 204 9 69 0 210 1 165 0 211 1 169 0 212 1 173 0 213 9 65 0 221 9 65 0 222 9 65 0 225 1 177 0 243 9 69 0 244 9 69 0 245 9 65 0 249 9 101 0 250 1 173 1 114 1 193 1 119 1 197 1 130] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 1 79 0 31 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 11 125 0 87 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 1 194 0 137 11 125 0 193 4 153 1 124] 
#[1 11 129 0 14 5 82 0 137 11 133 1 33] 
#[1 5 82 0 3 11 129 0 14 4 157 0 16 4 161 0 130 5 82 0 131 5 82 0 137 11 137 1 33 5 82 1 131] 
#[0 11 141 0 137] 
#[0 11 145 0 137] 
#[1 4 181 0 9 1 22 0 137 11 149 1 8] 
#[1 5 86 0 3 5 86 0 17 5 86 0 21 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 38 5 86 0 40 5 86 0 42 5 86 0 44 5 86 0 45 5 86 0 47 5 86 0 51 5 86 0 52 5 86 0 62 5 86 0 65 5 86 0 67 5 86 0 70 5 86 0 73 5 86 0 82 5 86 0 83 5 86 0 86 5 86 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 100 5 86 0 101 5 86 0 104 5 86 0 105 5 86 0 110 5 86 0 111 5 86 0 113 5 86 0 115 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 124 5 86 0 130 5 86 0 139 11 153 1 24 5 86 1 131] 
#[0 5 90 0 137] 
#[1 5 86 0 3 5 86 0 17 5 86 0 21 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 38 5 86 0 40 5 86 0 42 5 86 0 44 5 86 0 45 5 86 0 47 5 86 0 51 5 86 0 52 5 86 0 62 5 86 0 65 5 86 0 67 5 86 0 70 5 86 0 73 5 86 0 82 5 86 0 83 5 86 0 86 5 86 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 100 5 86 0 101 5 86 0 104 5 86 0 105 5 86 0 110 5 86 0 111 5 86 0 113 5 86 0 115 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 124 5 86 0 130 5 86 0 139 11 157 1 24 5 86 1 131] 
#[0 11 161 0 137] 
#[0 11 165 0 137] 
#[0 11 169 0 137] 
#[1 5 86 0 3 5 86 0 17 5 86 0 21 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 38 5 86 0 40 5 86 0 42 5 86 0 44 5 86 0 45 5 86 0 47 5 86 0 48 5 86 0 51 5 86 0 52 5 86 0 56 5 86 0 61 5 86 0 62 5 86 0 65 5 86 0 67 5 86 0 70 5 86 0 73 5 86 0 82 5 86 0 83 5 86 0 86 5 86 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 100 5 86 0 101 5 86 0 104 5 86 0 105 5 86 0 110 5 86 0 111 5 86 0 113 5 86 0 115 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 124 5 86 0 130 5 86 0 139 11 173 1 24 5 86 1 131] 
#[0 11 177 0 131] 
#[1 5 94 0 30 5 94 0 33 5 94 0 57 5 94 0 59 5 94 0 74 5 94 0 96 5 94 0 97 5 94 0 112 5 94 0 127 5 94 0 128 5 94 0 137 11 181 1 12] 
#[0 11 185 0 137] 
#[0 11 189 0 143] 
#[0 5 98 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 11 193 0 143] 
#[0 5 102 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 5 106 0 137] 
#[0 5 110 0 137] 
#[0 5 114 0 137] 
#[1 5 118 0 137 11 197 0 143] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 11 201 0 213 11 201 1 114 1 193 1 119 1 197 1 130] 
#[0 5 122 0 137] 
#[0 5 126 0 137] 
#[0 5 130 0 137] 
#[0 5 134 0 137] 
#[0 5 138 0 137] 
#[0 5 142 0 137] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 11 205 0 213 11 205 1 114 1 193 1 119 1 197 1 130] 
#[0 5 146 0 137] 
#[0 5 150 0 137] 
#[0 5 154 0 137] 
#[0 5 158 0 137] 
#[0 5 162 0 137] 
#[0 5 166 0 137] 
#[0 5 170 0 137] 
#[0 5 174 0 137] 
#[0 5 178 0 137] 
#[0 5 182 0 137] 
#[0 5 186 0 137] 
#[0 5 190 0 137] 
#[0 5 194 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 5 198 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 5 202 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 11 209 0 137] 
#[0 5 206 0 5 0 137] 
#[1 11 213 0 5 11 217 0 137] 
#[0 5 210 1 131] 
#[1 5 214 0 5 5 101 0 6 5 214 0 137] 
#[0 5 218 0 40] 
#[0 5 222 1 131] 
#[0 5 226 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 230 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 234 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 238 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 242 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 246 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 5 250 0 27 0 40 0 48 0 52 0 56 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 11 221 0 23 5 37 0 26 2 5 0 27 2 9 0 28 2 13 0 32 5 254 0 40 7 205 0 43 5 254 0 48 4 209 0 52 5 254 0 61 4 217 0 89 5 185 0 104 2 29 0 115 2 33 0 118 2 37 0 123 11 241 0 170 11 241 0 173 11 241 0 176 11 237 1 36 11 241 1 38 11 241 1 39 11 249 1 40 11 253 1 41 11 241 1 42 12 5 1 43 12 9 1 44 11 241 1 46 5 205 1 47 2 141 1 48 5 209 1 49 2 149 1 50 11 241 1 51 12 21 1 52 12 25 1 53 11 241 1 54 5 217 1 55 2 165 1 56 5 221 1 57 2 173 1 58 11 241 1 59 12 37 1 60 12 41 1 61 11 241 1 62 12 49 1 63 12 53 1 64 11 241 1 69 2 197 1 70 11 241 1 127] 
#[1 6 2 0 40 6 2 0 48 5 249 0 137] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 65 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 7 229 0 40 12 69 1 129] 
#[0 6 6 0 21 0 23 0 27 0 52 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 12 73 0 213 12 73 1 114 1 193 1 119 1 197 1 130] 
#[0 6 10 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 12 77 0 213 12 77 1 114 1 193 1 119 1 197 1 130] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 81 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[0 12 85 0 40] 
#[1 4 17 0 2 1 61 0 15 3 202 0 39 3 202 0 40 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 29 0 213 12 89 1 91 8 45 1 92 8 49 1 93 8 53 1 94 8 29 1 114 1 193 1 119 1 197 1 130] 
#[0 6 14 0 39 0 40] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 93 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 12 93 1 102 12 93 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 8 29 0 213 12 97 1 94 8 29 1 114 1 193 1 119 1 197 1 130] 
#[0 6 18 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[0 6 22 0 2 0 15 0 52 0 60 0 68 0 69 0 75 0 89 0 130 0 135 0 136 0 139 0 141 0 143 0 147 1 130] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 101 1 105 1 9 1 106 12 101 1 107 12 101 1 108 1 21 1 109 12 101 1 110 1 29 1 111 12 101 1 112 1 37 1 113 12 101 1 114 1 45 1 119 12 101 1 120 1 53 1 130] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 105 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 12 105 1 102 12 105 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[0 6 26 0 3 0 131 0 137] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 109 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 12 109 1 102 12 109 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[0 6 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 12 113 0 131 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 12 117 0 131 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 6 225 0 6 4 181 0 9 1 22 0 36 12 121 1 8] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 12 125 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[0 6 34 0 40 0 49] 
#[0 6 38 0 39 0 40 0 49 0 78] 
#[0 6 42 0 40 0 49] 
#[1 6 46 0 40 5 249 0 137] 
#[0 6 50 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 6 54 0 3 6 54 0 5 8 153 0 9] 
#[1 3 141 0 2 6 58 0 3 3 245 0 4 6 58 0 5 3 149 0 6 3 245 0 8 6 58 0 9 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 3 141 0 2 3 245 0 4 6 62 0 5 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 6 62 0 131 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 177 0 183 12 129 0 187 1 133 0 192 1 177 0 194 1 177 0 195 12 129 0 197 12 129 0 201 12 129 0 202 1 157 0 204 12 129 0 210 1 165 0 211 1 169 0 212 1 173 0 213 1 177 0 243 12 129 0 244 12 129 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[0 12 133 0 132] 
#[0 12 137 0 137] 
#[1 6 66 0 3 6 66 0 5 6 66 0 14 6 66 0 16 10 41 0 17 6 66 0 21 10 41 0 22 6 66 0 23 6 66 0 24 10 41 0 25 6 66 0 26 6 66 0 27 6 66 0 28 6 66 0 30 1 83 0 31 6 66 0 32 1 87 0 33 6 66 0 36 10 41 0 38 6 66 0 40 10 41 0 42 6 66 0 43 5 73 0 44 10 41 0 45 10 41 0 47 6 66 0 48 5 77 0 51 6 66 0 52 6 66 0 56 6 66 0 57 6 66 0 59 6 66 0 61 10 41 0 62 6 66 0 65 10 41 0 67 9 233 0 70 10 41 0 73 6 66 0 74 6 66 0 77 10 41 0 82 10 41 0 83 10 41 0 86 1 91 0 87 6 66 0 88 6 66 0 89 6 66 0 91 6 66 0 92 6 66 0 93 6 66 0 94 6 66 0 96 6 66 0 97 10 41 0 100 10 41 0 101 6 66 0 104 10 41 0 105 10 41 0 110 10 41 0 111 6 66 0 112 6 66 0 113 6 66 0 115 6 66 0 118 10 41 0 120 6 66 0 123 10 41 0 124 6 66 0 127 6 66 0 128 6 66 0 130 6 66 0 131 6 66 0 132 6 66 0 137 6 66 0 139 10 29 1 25 10 29 1 26 10 29 1 27 10 41 1 28 6 66 1 131] 
#[0 12 141 0 40] 
#[1 1 57 0 2 1 61 0 15 0 18 0 19 1 65 0 46 1 69 0 52 1 73 0 75 1 157 0 85 1 81 0 89 0 7 0 98 1 89 0 99 1 93 0 107 1 97 0 118 0 169 0 130 1 101 0 135 1 105 0 136 1 109 0 138 1 113 0 140 1 169 0 141 1 193 0 143 1 121 0 147 12 145 0 183 12 145 0 187 1 133 0 192 12 145 0 194 12 145 0 195 12 145 0 197 12 145 0 201 12 145 0 202 1 157 0 204 12 145 0 210 1 165 0 211 1 169 0 212 1 173 0 213 12 145 0 243 12 145 0 244 12 145 0 245 1 173 1 114 1 193 1 119 1 197 1 130] 
#[0 6 70 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 12 149 0 140 12 153 0 199] 
#[0 6 74 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[0 6 78 0 2 0 3 0 5 0 6 0 9 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 59 0 61 0 65 0 74 0 77 0 78 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 121 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 12 157 0 210 1 165 0 211 1 169 0 212 8 245 0 213 12 157 0 248 8 245 1 114 1 193 1 119 1 197 1 130] 
#[0 6 82 0 77] 
#[0 6 86 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 6 90 0 3 6 90 0 5 6 90 0 14 4 157 0 16 6 90 0 21 6 90 0 23 6 90 0 27 6 90 0 30 6 90 0 31 6 90 0 33 6 90 0 36 6 90 0 52 6 90 0 57 6 90 0 59 6 90 0 65 6 90 0 74 6 90 0 77 6 90 0 87 6 90 0 89 6 90 0 96 6 90 0 97 6 90 0 104 6 90 0 112 6 90 0 115 6 90 0 118 6 90 0 123 6 90 0 127 6 90 0 128 4 161 0 130 6 90 0 131 6 90 0 132 6 90 0 137 6 90 1 131] 
#[0 12 161 0 139] 
#[1 2 202 0 3 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 12 165 0 237] 
#[1 2 202 0 3 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 12 169 0 237] 
#[1 2 202 0 3 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 12 173 0 237] 
#[1 2 202 0 3 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 12 177 0 237] 
#[1 12 181 0 88 12 185 0 92] 
#[0 6 94 0 3 0 40] 
#[0 6 98 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 102 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 106 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 110 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[0 6 114 0 3 0 24 0 40 0 88 0 92 0 93 0 94 0 113] 
#[1 4 145 0 2 6 118 0 3 4 153 0 4 6 118 0 5 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 6 122 0 5 4 157 0 16 4 161 0 130 6 122 0 132] 
#[0 6 126 0 5 0 132] 
#[0 12 189 0 139] 
#[1 11 97 0 2 12 205 0 17 5 42 0 26 5 42 0 27 5 42 0 28 5 42 0 31 5 42 0 32 5 42 0 40 5 42 0 52 12 197 0 54 5 42 0 87 5 42 0 88 5 42 0 89 5 42 0 91 5 42 0 92 5 42 0 93 5 42 0 94 12 205 0 106 5 42 0 113 5 42 0 115 5 42 0 118 5 42 0 123 5 42 0 130 5 42 0 137 5 42 0 139 12 205 0 224 12 209 0 234] 
#[1 12 213 0 140 12 217 0 192 12 221 0 235] 
#[1 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 12 225 0 227 6 249 0 237] 
#[0 6 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 12 229 0 137] 
#[0 12 233 0 137] 
#[1 6 134 0 26 6 134 0 40 6 134 0 52 6 134 0 89 6 134 0 91 12 237 0 130 12 241 0 251] 
#[0 6 138 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 12 249 0 31 6 142 0 137 12 249 0 226] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 12 253 0 213 12 253 1 114 1 193 1 119 1 197 1 130] 
#[0 13 1 0 137] 
#[0 6 146 0 3 0 131 0 137 1 131] 
#[1 5 86 0 3 5 86 0 17 5 86 0 21 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 38 5 86 0 40 5 86 0 42 5 86 0 44 5 86 0 45 5 86 0 47 5 86 0 51 5 86 0 52 5 86 0 62 5 86 0 65 5 86 0 67 5 86 0 70 5 86 0 73 5 86 0 82 5 86 0 83 5 86 0 86 5 86 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 100 5 86 0 101 5 86 0 104 5 86 0 105 5 86 0 110 5 86 0 111 5 86 0 113 5 86 0 115 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 124 5 86 0 130 5 86 0 139 13 5 1 24 5 86 1 131] 
#[1 5 86 0 3 5 86 0 17 5 86 0 21 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 38 5 86 0 40 5 86 0 42 5 86 0 44 5 86 0 45 5 86 0 47 5 86 0 51 5 86 0 52 5 86 0 62 5 86 0 65 5 86 0 67 5 86 0 70 5 86 0 73 5 86 0 82 5 86 0 83 5 86 0 86 5 86 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 100 5 86 0 101 5 86 0 104 5 86 0 105 5 86 0 110 5 86 0 111 5 86 0 113 5 86 0 115 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 124 5 86 0 130 5 86 0 139 13 9 1 24 5 86 1 131] 
#[0 13 13 0 137] 
#[1 6 150 0 3 10 41 0 17 6 150 0 21 10 41 0 22 6 150 0 23 6 150 0 24 10 41 0 25 6 150 0 26 6 150 0 27 6 150 0 28 9 201 0 31 6 150 0 32 9 205 0 33 10 41 0 38 6 150 0 40 10 41 0 42 6 150 0 44 10 41 0 45 10 41 0 47 6 150 0 51 6 150 0 52 10 41 0 62 6 150 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 6 150 0 88 6 150 0 89 6 150 0 91 6 150 0 92 6 150 0 93 6 150 0 94 10 41 0 100 10 41 0 101 6 150 0 104 10 41 0 105 10 41 0 110 10 41 0 111 6 150 0 113 6 150 0 115 6 150 0 118 10 41 0 120 6 150 0 123 10 41 0 124 6 150 0 130 6 150 0 139 13 17 1 26 10 41 1 28 6 150 1 131] 
#[1 6 154 0 3 10 41 0 17 6 154 0 21 10 41 0 22 6 154 0 23 6 154 0 24 10 41 0 25 6 154 0 26 6 154 0 27 6 154 0 28 9 201 0 31 6 154 0 32 9 205 0 33 10 41 0 38 6 154 0 40 10 41 0 42 6 154 0 44 10 41 0 45 10 41 0 47 6 154 0 51 6 154 0 52 10 41 0 62 6 154 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 6 154 0 88 6 154 0 89 6 154 0 91 6 154 0 92 6 154 0 93 6 154 0 94 10 41 0 100 10 41 0 101 6 154 0 104 10 41 0 105 10 41 0 110 10 41 0 111 6 154 0 113 6 154 0 115 6 154 0 118 10 41 0 120 6 154 0 123 10 41 0 124 6 154 0 130 6 154 0 139 13 17 1 26 10 41 1 28 6 154 1 131] 
#[0 6 158 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 5 86 0 3 5 86 0 17 5 86 0 21 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 38 5 86 0 40 5 86 0 42 5 86 0 44 5 86 0 45 5 86 0 47 5 86 0 48 5 86 0 51 5 86 0 52 5 86 0 56 5 86 0 61 5 86 0 62 5 86 0 65 5 86 0 67 5 86 0 70 5 86 0 73 5 86 0 82 5 86 0 83 5 86 0 86 5 86 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 100 5 86 0 101 5 86 0 104 5 86 0 105 5 86 0 110 5 86 0 111 5 86 0 113 5 86 0 115 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 124 5 86 0 130 5 86 0 139 13 21 1 24 5 86 1 131] 
#[0 6 162 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 6 166 0 3 10 41 0 17 6 166 0 21 10 41 0 22 6 166 0 23 6 166 0 24 10 41 0 25 6 166 0 26 6 166 0 27 6 166 0 28 9 201 0 31 6 166 0 32 9 205 0 33 10 41 0 38 6 166 0 40 10 41 0 42 6 166 0 44 10 41 0 45 10 41 0 47 6 166 0 48 6 166 0 51 6 166 0 52 6 166 0 56 6 166 0 61 10 41 0 62 6 166 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 6 166 0 88 6 166 0 89 6 166 0 91 6 166 0 92 6 166 0 93 6 166 0 94 10 41 0 100 10 41 0 101 6 166 0 104 10 41 0 105 10 41 0 110 10 41 0 111 6 166 0 113 6 166 0 115 6 166 0 118 10 41 0 120 6 166 0 123 10 41 0 124 6 166 0 130 6 166 0 139 13 17 1 26 10 41 1 28 6 166 1 131] 
#[0 6 170 0 9 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 13 25 0 30 13 29 0 33 13 33 0 57 13 37 0 59 13 41 0 74 13 45 0 96 13 49 0 97 13 53 0 112 13 57 0 127 13 61 0 128 13 65 0 137 13 69 1 14 13 73 1 15 13 77 1 16 13 81 1 17 13 85 1 18 13 89 1 19 13 93 1 21] 
#[0 6 174 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 13 97 0 137] 
#[0 13 101 0 137] 
#[0 13 105 0 137] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 13 109 0 137 4 153 1 124] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 13 113 0 137 4 153 1 124] 
#[0 6 178 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 13 117 0 139] 
#[0 6 182 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 65 0 89 0 104 0 115 0 118 0 123] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 40 0 14 0 48 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 13 121 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[0 6 186 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 190 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 194 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 198 0 40 0 48 0 61] 
#[0 6 202 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 206 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 210 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 73 0 44 5 77 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 81 1 27 13 125 1 65 3 9 1 66] 
#[0 6 214 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 218 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 73 0 44 5 77 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 85 1 27 13 129 1 65 3 9 1 66] 
#[0 6 222 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 226 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 230 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 13 133 1 65 3 9 1 66] 
#[0 6 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 238 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 13 137 1 65 3 9 1 66] 
#[0 6 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 6 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 0 50 0 21 0 50 0 23 0 50 0 27 5 73 0 44 5 77 0 51 0 50 0 52 0 50 0 65 0 50 0 89 0 50 0 104 0 50 0 115 0 50 0 118 0 50 0 123 5 97 1 27 13 141 1 65 3 9 1 66] 
#[0 6 254 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 2 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[1 7 6 0 40 5 249 0 137] 
#[0 7 10 1 131] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 13 145 0 31 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 6 142 0 137 13 145 0 226 4 153 1 124] 
#[1 4 145 0 2 4 153 0 4 7 14 0 5 4 149 0 6 4 153 0 8 7 14 0 9 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 7 18 0 40 5 249 0 137] 
#[0 7 22 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 7 26 0 39 0 40 0 137] 
#[0 7 30 0 39 0 40 0 137] 
#[1 7 34 0 5 7 38 0 9] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 3 245 0 35 13 149 0 36 3 245 0 58 3 245 0 64 3 245 0 71 3 245 0 80 3 245 0 108 3 245 0 109 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[0 7 42 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 7 46 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[0 7 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 7 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 18 0 20 0 30 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 57 0 58 0 59 0 61 0 64 0 71 0 74 0 77 0 78 0 80 0 96 0 97 0 108 0 109 0 112 0 114 0 116 0 121 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[0 13 153 0 36] 
#[1 7 58 0 40 7 58 0 49 5 249 0 137] 
#[1 7 62 0 5 0 214 0 16 0 214 0 130 7 62 0 132] 
#[0 7 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 16 0 18 0 20 0 21 0 23 0 27 0 30 0 31 0 33 0 35 0 36 0 37 0 39 0 40 0 41 0 48 0 49 0 52 0 57 0 58 0 59 0 61 0 64 0 65 0 71 0 74 0 77 0 78 0 80 0 87 0 89 0 96 0 97 0 104 0 108 0 109 0 112 0 114 0 115 0 116 0 118 0 121 0 123 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 131] 
#[1 3 42 0 3 3 42 0 5 3 42 0 14 3 42 0 16 3 42 0 17 3 42 0 21 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 27 3 42 0 28 3 42 0 30 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 36 3 42 0 38 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 47 3 42 0 48 3 42 0 51 3 42 0 52 3 42 0 56 3 42 0 57 3 42 0 59 3 42 0 61 3 42 0 62 3 42 0 65 3 42 0 67 3 42 0 70 3 42 0 73 3 42 0 74 3 42 0 77 3 42 0 82 3 42 0 83 3 42 0 86 3 42 0 87 3 42 0 88 3 42 0 89 3 42 0 91 3 42 0 92 3 42 0 93 3 42 0 94 3 42 0 96 3 42 0 97 3 42 0 100 3 42 0 101 3 42 0 104 3 42 0 105 3 42 0 110 3 42 0 111 3 42 0 112 3 42 0 113 3 42 0 115 3 42 0 118 3 42 0 120 3 42 0 123 3 42 0 124 3 42 0 127 3 42 0 128 3 42 0 130 3 42 0 131 3 42 0 132 3 42 0 137 3 42 0 139 13 157 1 23 3 42 1 131] 
#[0 7 70 0 3 0 5 0 14 0 16 0 21 0 23 0 27 0 30 0 31 0 33 0 36 0 52 0 57 0 59 0 65 0 74 0 77 0 87 0 89 0 96 0 97 0 104 0 112 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 1 131] 
#[1 4 157 0 16 4 161 0 130 13 161 0 137] 
#[0 7 74 0 3 0 5] 
#[1 7 78 0 3 13 165 0 5] 
#[0 7 82 0 5 0 131] 
#[1 4 181 0 9 1 22 0 77 13 169 1 8] 
#[1 7 86 0 3 7 86 0 24 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 7 86 0 40 2 17 0 52 7 86 0 88 2 21 0 89 2 25 0 91 7 86 0 92 7 86 0 93 7 86 0 94 7 86 0 113 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 9 13 0 170 9 13 0 176 9 13 0 238 9 13 0 239 2 57 0 240 9 13 0 241 9 13 0 242 9 13 0 254 9 13 0 255 9 13 1 0 9 13 1 1 9 13 1 2 9 13 1 3 9 13 1 5 9 13 1 6 9 13 1 7 9 13 1 9 2 109 1 10 9 13 1 11 2 117 1 32 9 13 1 40 2 125 1 41 9 13 1 43 2 133 1 44 9 13 1 47 2 141 1 48 9 13 1 49 2 149 1 50 9 13 1 52 9 13 1 53 9 13 1 55 2 165 1 56 9 13 1 57 2 173 1 58 9 13 1 60 9 13 1 61 9 13 1 63 2 189 1 64 9 13 1 69 2 197 1 70] 
#[1 7 90 0 3 7 90 0 24 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 7 90 0 40 2 17 0 52 7 90 0 88 2 21 0 89 2 25 0 91 7 90 0 92 7 90 0 93 7 90 0 94 7 90 0 113 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 9 13 0 170 9 13 0 176 9 13 0 238 9 13 0 239 2 57 0 240 9 13 0 241 9 13 0 242 9 13 0 254 9 13 0 255 9 13 1 0 9 13 1 1 9 13 1 2 9 13 1 3 9 13 1 5 9 13 1 6 9 13 1 7 9 13 1 9 2 109 1 10 9 13 1 11 2 117 1 32 9 13 1 40 2 125 1 41 9 13 1 43 2 133 1 44 9 13 1 47 2 141 1 48 9 13 1 49 2 149 1 50 9 13 1 52 9 13 1 53 9 13 1 55 2 165 1 56 9 13 1 57 2 173 1 58 9 13 1 60 9 13 1 61 9 13 1 63 2 189 1 64 9 13 1 69 2 197 1 70] 
#[1 7 94 0 3 7 94 0 24 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 7 94 0 40 2 17 0 52 7 94 0 88 2 21 0 89 2 25 0 91 7 94 0 92 7 94 0 93 7 94 0 94 7 94 0 113 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 9 13 0 170 9 13 0 176 9 13 0 238 9 13 0 239 2 57 0 240 9 13 0 241 9 13 0 242 9 13 0 254 9 13 0 255 9 13 1 0 9 13 1 1 9 13 1 2 9 13 1 3 9 13 1 5 9 13 1 6 9 13 1 7 9 13 1 9 2 109 1 10 9 13 1 11 2 117 1 32 9 13 1 40 2 125 1 41 9 13 1 43 2 133 1 44 9 13 1 47 2 141 1 48 9 13 1 49 2 149 1 50 9 13 1 52 9 13 1 53 9 13 1 55 2 165 1 56 9 13 1 57 2 173 1 58 9 13 1 60 9 13 1 61 9 13 1 63 2 189 1 64 9 13 1 69 2 197 1 70] 
#[1 7 98 0 3 7 98 0 24 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 7 98 0 40 2 17 0 52 7 98 0 88 2 21 0 89 2 25 0 91 7 98 0 92 7 98 0 93 7 98 0 94 7 98 0 113 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 9 13 0 170 9 13 0 176 9 13 0 238 9 13 0 239 2 57 0 240 9 13 0 241 9 13 0 242 9 13 0 254 9 13 0 255 9 13 1 0 9 13 1 1 9 13 1 2 9 13 1 3 9 13 1 5 9 13 1 6 9 13 1 7 9 13 1 9 2 109 1 10 9 13 1 11 2 117 1 32 9 13 1 40 2 125 1 41 9 13 1 43 2 133 1 44 9 13 1 47 2 141 1 48 9 13 1 49 2 149 1 50 9 13 1 52 9 13 1 53 9 13 1 55 2 165 1 56 9 13 1 57 2 173 1 58 9 13 1 60 9 13 1 61 9 13 1 63 2 189 1 64 9 13 1 69 2 197 1 70] 
#[1 2 202 0 3 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 13 173 0 237] 
#[1 2 202 0 3 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 40 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 13 177 0 237] 
#[0 7 102 0 31 0 87 0 137] 
#[0 7 106 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 13 181 0 50] 
#[0 7 110 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[0 7 114 0 2 0 17 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 54 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 106 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 2 202 0 26 2 202 0 27 2 202 0 28 7 118 0 31 2 202 0 32 2 202 0 40 2 202 0 52 7 118 0 87 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 7 118 0 137 2 202 0 139 13 185 0 227 6 249 0 237] 
#[0 0 202 0 3 0 5 0 6 0 11] 
#[1 7 122 0 3 7 122 0 5 4 125 0 6 0 146 0 11 4 129 0 188 4 1 0 189] 
#[1 13 189 0 3 13 193 0 5] 
#[1 3 226 0 40 3 226 0 88 3 226 0 92 3 226 0 93 3 226 0 94 3 226 0 113 13 197 0 228] 
#[0 7 126 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 7 130 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 201 0 213 13 201 1 114 1 193 1 119 1 197 1 130] 
#[1 7 134 0 26 7 134 0 40 7 134 0 52 7 134 0 89 7 134 0 91 13 205 0 252] 
#[0 7 138 0 137] 
#[0 13 209 0 137] 
#[1 4 145 0 2 7 142 0 3 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 7 142 0 131 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 7 142 0 137 4 153 1 124 7 142 1 131] 
#[0 7 146 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 7 150 0 3 10 41 0 17 7 150 0 21 10 41 0 22 7 150 0 23 7 150 0 24 10 41 0 25 7 150 0 26 7 150 0 27 7 150 0 28 9 201 0 31 7 150 0 32 9 205 0 33 10 41 0 38 7 150 0 40 10 41 0 42 7 150 0 44 10 41 0 45 10 41 0 47 7 150 0 51 7 150 0 52 10 41 0 62 7 150 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 7 150 0 88 7 150 0 89 7 150 0 91 7 150 0 92 7 150 0 93 7 150 0 94 10 41 0 100 10 41 0 101 7 150 0 104 10 41 0 105 10 41 0 110 10 41 0 111 7 150 0 113 7 150 0 115 7 150 0 118 10 41 0 120 7 150 0 123 10 41 0 124 7 150 0 130 7 150 0 139 13 17 1 26 10 41 1 28 7 150 1 131] 
#[1 7 154 0 3 10 41 0 17 7 154 0 21 10 41 0 22 7 154 0 23 7 154 0 24 10 41 0 25 7 154 0 26 7 154 0 27 7 154 0 28 9 201 0 31 7 154 0 32 9 205 0 33 10 41 0 38 7 154 0 40 10 41 0 42 7 154 0 44 10 41 0 45 10 41 0 47 7 154 0 51 7 154 0 52 10 41 0 62 7 154 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 7 154 0 88 7 154 0 89 7 154 0 91 7 154 0 92 7 154 0 93 7 154 0 94 10 41 0 100 10 41 0 101 7 154 0 104 10 41 0 105 10 41 0 110 10 41 0 111 7 154 0 113 7 154 0 115 7 154 0 118 10 41 0 120 7 154 0 123 10 41 0 124 7 154 0 130 7 154 0 139 13 17 1 26 10 41 1 28 7 154 1 131] 
#[1 5 86 0 3 5 86 0 17 5 86 0 21 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 5 86 0 27 5 86 0 28 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 38 5 86 0 40 5 86 0 42 5 86 0 44 5 86 0 45 5 86 0 47 5 86 0 51 5 86 0 52 5 86 0 62 5 86 0 65 5 86 0 67 5 86 0 70 5 86 0 73 5 86 0 82 5 86 0 83 5 86 0 86 5 86 0 87 5 86 0 88 5 86 0 89 5 86 0 91 5 86 0 92 5 86 0 93 5 86 0 94 5 86 0 100 5 86 0 101 5 86 0 104 5 86 0 105 5 86 0 110 5 86 0 111 5 86 0 113 5 86 0 115 5 86 0 118 5 86 0 120 5 86 0 123 5 86 0 124 5 86 0 130 5 86 0 139 13 213 1 24 5 86 1 131] 
#[0 7 158 0 3 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 31 0 32 0 33 0 38 0 40 0 42 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 61 0 62 0 65 0 67 0 70 0 73 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 100 0 101 0 104 0 105 0 110 0 111 0 113 0 115 0 118 0 120 0 123 0 124 0 130 0 139 1 131] 
#[1 7 162 0 3 10 41 0 17 7 162 0 21 10 41 0 22 7 162 0 23 7 162 0 24 10 41 0 25 7 162 0 26 7 162 0 27 7 162 0 28 9 201 0 31 7 162 0 32 9 205 0 33 10 41 0 38 7 162 0 40 10 41 0 42 7 162 0 44 10 41 0 45 10 41 0 47 7 162 0 48 7 162 0 51 7 162 0 52 7 162 0 56 7 162 0 61 10 41 0 62 7 162 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 7 162 0 88 7 162 0 89 7 162 0 91 7 162 0 92 7 162 0 93 7 162 0 94 10 41 0 100 10 41 0 101 7 162 0 104 10 41 0 105 10 41 0 110 10 41 0 111 7 162 0 113 7 162 0 115 7 162 0 118 10 41 0 120 7 162 0 123 10 41 0 124 7 162 0 130 7 162 0 139 13 17 1 26 10 41 1 28 7 162 1 131] 
#[1 4 17 0 2 1 61 0 15 7 166 0 30 7 166 0 33 7 166 0 57 7 166 0 59 7 166 0 74 1 73 0 75 7 166 0 96 7 166 0 97 7 166 0 112 7 166 0 127 7 166 0 128 0 169 0 130 1 101 0 135 1 105 0 136 7 166 0 137 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 217 0 213 13 217 1 114 1 193 1 119 1 197 1 130] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 221 0 213 13 221 1 114 1 193 1 119 1 197 1 130] 
#[1 13 225 0 139 13 229 1 20] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 13 233 0 213 13 233 1 114 1 193 1 119 1 197 1 130] 
#[0 7 170 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 13 237 1 105 1 9 1 106 13 237 1 107 13 237 1 108 1 21 1 109 13 237 1 110 1 29 1 111 13 237 1 112 1 37 1 113 13 237 1 114 1 45 1 119 13 237 1 120 1 53 1 130] 
#[0 13 241 0 33] 
#[0 13 245 0 139] 
#[1 0 97 0 2 0 101 0 15 0 117 0 52 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 145 0 89 0 169 0 130 0 173 0 135 0 177 0 136 3 13 0 139 0 197 0 141 1 45 0 143 0 193 0 147 0 197 0 212 13 249 1 105 1 9 1 106 13 249 1 107 13 249 1 108 1 21 1 109 13 249 1 110 1 29 1 111 13 249 1 112 1 37 1 113 13 249 1 114 1 45 1 119 13 249 1 120 1 53 1 130] 
#[0 13 253 0 33] 
#[1 7 174 0 3 7 174 0 24 7 174 0 26 7 174 0 27 7 174 0 28 14 1 0 30 7 174 0 32 7 174 0 40 7 174 0 52 7 174 0 88 7 174 0 89 7 174 0 91 7 174 0 92 7 174 0 93 7 174 0 94 7 174 0 113 7 174 0 115 7 174 0 118 7 174 0 123 7 174 0 130 7 174 0 139 14 5 1 22 7 174 1 131] 
#[0 7 178 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 182 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 186 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 190 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 194 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 198 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 202 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[0 7 206 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 210 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 214 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 218 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 222 0 3 0 5 0 14 0 16 0 17 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 40 0 42 0 43 0 44 0 45 0 47 0 48 0 51 0 52 0 56 0 57 0 59 0 61 0 62 0 65 0 67 0 70 0 73 0 74 0 77 0 82 0 83 0 86 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 100 0 101 0 104 0 105 0 110 0 111 0 112 0 113 0 115 0 118 0 120 0 123 0 124 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 7 226 0 5 0 137] 
#[1 7 230 0 40 7 230 0 48 7 230 0 61 5 249 0 137] 
#[0 7 234 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 238 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 242 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 246 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 7 250 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 61 0 89 0 104 0 115 0 118 0 123] 
#[0 14 9 0 137] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 48 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 14 0 61 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 14 0 121 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 14 13 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 14 13 1 102 14 13 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130 0 14 1 131] 
#[1 0 97 0 2 0 101 0 15 0 10 0 21 0 105 0 23 0 109 0 24 0 14 0 39 0 14 0 40 0 14 0 49 0 113 0 50 0 117 0 52 0 121 0 53 0 125 0 55 0 129 0 60 0 133 0 68 0 137 0 69 0 141 0 75 0 14 0 78 0 145 0 89 0 149 0 95 0 153 0 102 0 157 0 117 0 161 0 125 0 165 0 126 0 169 0 130 0 173 0 135 0 177 0 136 0 14 0 137 0 181 0 139 0 185 0 141 1 45 0 143 0 193 0 147 0 197 0 212 14 17 1 73 3 29 1 74 0 205 1 75 0 209 1 76 0 213 1 77 0 217 1 78 0 221 1 79 0 225 1 81 0 229 1 87 0 233 1 96 0 237 1 98 0 241 1 99 0 245 1 101 3 29 1 102 3 29 1 103 1 1 1 104 1 5 1 105 1 9 1 106 1 5 1 107 1 5 1 108 1 21 1 109 1 5 1 110 1 29 1 111 1 5 1 112 1 37 1 113 1 5 1 114 1 45 1 119 1 5 1 120 1 53 1 130] 
#[1 7 254 0 3 7 254 0 5 7 254 0 14 7 254 0 16 10 41 0 17 7 254 0 21 10 41 0 22 7 254 0 23 7 254 0 24 10 41 0 25 7 254 0 26 7 254 0 27 7 254 0 28 7 254 0 30 1 95 0 31 7 254 0 32 1 99 0 33 7 254 0 36 10 41 0 38 7 254 0 40 10 41 0 42 7 254 0 43 5 73 0 44 10 41 0 45 10 41 0 47 7 254 0 48 5 77 0 51 7 254 0 52 7 254 0 56 7 254 0 57 7 254 0 59 7 254 0 61 10 41 0 62 7 254 0 65 10 41 0 67 9 233 0 70 10 41 0 73 7 254 0 74 7 254 0 77 10 41 0 82 10 41 0 83 10 41 0 86 1 103 0 87 7 254 0 88 7 254 0 89 7 254 0 91 7 254 0 92 7 254 0 93 7 254 0 94 7 254 0 96 7 254 0 97 10 41 0 100 10 41 0 101 7 254 0 104 10 41 0 105 10 41 0 110 10 41 0 111 7 254 0 112 7 254 0 113 7 254 0 115 7 254 0 118 10 41 0 120 7 254 0 123 10 41 0 124 7 254 0 127 7 254 0 128 7 254 0 130 7 254 0 131 7 254 0 132 7 254 0 137 7 254 0 139 10 29 1 25 10 29 1 26 10 29 1 27 10 41 1 28 7 254 1 131] 
#[0 8 2 0 3 0 5 0 14 0 16 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 40 0 43 0 48 0 52 0 56 0 57 0 59 0 61 0 65 0 74 0 77 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 96 0 97 0 104 0 112 0 113 0 115 0 118 0 123 0 127 0 128 0 130 0 131 0 132 0 137 0 139 1 131] 
#[0 14 21 0 140] 
#[0 14 25 0 77] 
#[1 8 6 0 3 8 6 0 24 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 8 6 0 40 2 17 0 52 8 6 0 88 2 21 0 89 2 25 0 91 8 6 0 92 8 6 0 93 8 6 0 94 8 6 0 113 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 9 13 0 170 9 13 0 176 9 13 0 238 9 13 0 239 2 57 0 240 9 13 0 241 9 13 0 242 9 13 0 254 9 13 0 255 9 13 1 0 9 13 1 1 9 13 1 2 9 13 1 3 9 13 1 5 9 13 1 6 9 13 1 7 9 13 1 9 2 109 1 10 9 13 1 11 2 117 1 32 9 13 1 40 2 125 1 41 9 13 1 43 2 133 1 44 9 13 1 47 2 141 1 48 9 13 1 49 2 149 1 50 9 13 1 52 9 13 1 53 9 13 1 55 2 165 1 56 9 13 1 57 2 173 1 58 9 13 1 60 9 13 1 61 9 13 1 63 2 189 1 64 9 13 1 69 2 197 1 70] 
#[1 8 10 0 3 8 10 0 24 2 1 0 26 2 5 0 27 2 9 0 28 2 13 0 32 8 10 0 40 2 17 0 52 8 10 0 88 2 21 0 89 2 25 0 91 8 10 0 92 8 10 0 93 8 10 0 94 8 10 0 113 2 29 0 115 2 33 0 118 2 37 0 123 1 201 0 130 1 225 0 139 9 13 0 170 9 13 0 176 9 13 0 238 9 13 0 239 2 57 0 240 9 13 0 241 9 13 0 242 9 13 0 254 9 13 0 255 9 13 1 0 9 13 1 1 9 13 1 2 9 13 1 3 9 13 1 5 9 13 1 6 9 13 1 7 9 13 1 9 2 109 1 10 9 13 1 11 2 117 1 32 9 13 1 40 2 125 1 41 9 13 1 43 2 133 1 44 9 13 1 47 2 141 1 48 9 13 1 49 2 149 1 50 9 13 1 52 9 13 1 53 9 13 1 55 2 165 1 56 9 13 1 57 2 173 1 58 9 13 1 60 9 13 1 61 9 13 1 63 2 189 1 64 9 13 1 69 2 197 1 70] 
#[1 4 101 0 139 14 29 0 236] 
#[1 3 226 0 40 3 226 0 88 3 226 0 92 3 226 0 93 3 226 0 94 3 226 0 113 14 33 0 228] 
#[0 8 14 0 26 0 27 0 28 0 31 0 32 0 40 0 52 0 87 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 137 0 139] 
#[1 12 213 0 140 14 37 0 192] 
#[1 14 41 0 40 11 33 0 88 11 37 0 92 11 41 0 93 11 45 0 94 11 49 0 113 11 57 0 229 11 57 0 230 11 57 0 231 11 57 0 232 11 57 0 233] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 14 45 0 131 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 14 49 0 26 14 53 0 40 4 209 0 52 4 217 0 89 2 25 0 91 14 57 0 253 14 57 0 254 14 57 0 255 14 57 1 2 14 57 1 3 14 57 1 5 14 57 1 6 14 57 1 7 14 57 1 9 2 109 1 10 14 57 1 11 14 57 1 47 2 141 1 48 14 57 1 49 2 149 1 50 14 57 1 52 14 57 1 53 14 57 1 55 2 165 1 56 14 57 1 57 2 173 1 58 14 57 1 60 14 57 1 61 14 57 1 63 2 189 1 64] 
#[0 8 18 0 3 0 21 0 23 0 24 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 88 0 89 0 91 0 92 0 93 0 94 0 104 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 8 22 0 3 10 41 0 17 8 22 0 21 10 41 0 22 8 22 0 23 8 22 0 24 10 41 0 25 8 22 0 26 8 22 0 27 8 22 0 28 9 201 0 31 8 22 0 32 9 205 0 33 10 41 0 38 8 22 0 40 10 41 0 42 8 22 0 44 10 41 0 45 10 41 0 47 8 22 0 51 8 22 0 52 10 41 0 62 8 22 0 65 10 41 0 67 9 233 0 70 10 41 0 73 10 41 0 82 10 41 0 83 10 41 0 86 10 41 0 87 8 22 0 88 8 22 0 89 8 22 0 91 8 22 0 92 8 22 0 93 8 22 0 94 10 41 0 100 10 41 0 101 8 22 0 104 10 41 0 105 10 41 0 110 10 41 0 111 8 22 0 113 8 22 0 115 8 22 0 118 10 41 0 120 8 22 0 123 10 41 0 124 8 22 0 130 8 22 0 139 13 17 1 26 10 41 1 28 8 22 1 131] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 8 26 0 30 8 26 0 33 4 153 0 35 8 26 0 57 4 153 0 58 8 26 0 59 4 153 0 64 4 153 0 71 8 26 0 74 4 153 0 80 8 26 0 96 8 26 0 97 4 153 0 108 4 153 0 109 8 26 0 112 8 26 0 127 8 26 0 128 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 8 26 0 137 4 153 1 124] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 8 30 0 30 8 30 0 33 4 153 0 35 8 30 0 57 4 153 0 58 8 30 0 59 4 153 0 64 4 153 0 71 8 30 0 74 4 153 0 80 8 30 0 96 8 30 0 97 4 153 0 108 4 153 0 109 8 30 0 112 8 30 0 127 8 30 0 128 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 8 30 0 137 4 153 1 124] 
#[0 8 34 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 14 69 0 5 8 38 0 30 8 38 0 33 8 38 0 57 8 38 0 59 8 38 0 74 8 38 0 96 8 38 0 97 8 38 0 112 8 38 0 127 8 38 0 128 8 38 0 137] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 8 42 0 30 8 42 0 33 4 153 0 35 8 42 0 57 4 153 0 58 8 42 0 59 4 153 0 64 4 153 0 71 8 42 0 74 4 153 0 80 8 42 0 96 8 42 0 97 4 153 0 108 4 153 0 109 8 42 0 112 8 42 0 127 8 42 0 128 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 8 42 0 137 4 153 1 124] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 8 46 0 30 8 46 0 33 3 245 0 35 8 46 0 57 3 245 0 58 8 46 0 59 3 245 0 64 3 245 0 71 8 46 0 74 3 245 0 80 8 46 0 96 8 46 0 97 3 245 0 108 3 245 0 109 8 46 0 112 8 46 0 127 8 46 0 128 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 8 46 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 14 73 0 213 14 73 1 114 1 193 1 119 1 197 1 130] 
#[0 8 50 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 3 141 0 2 3 245 0 4 3 149 0 6 3 245 0 8 3 157 0 10 3 245 0 11 3 245 0 12 3 245 0 13 3 245 0 14 3 245 0 18 3 245 0 20 8 54 0 30 8 54 0 33 3 245 0 35 8 54 0 57 3 245 0 58 8 54 0 59 3 245 0 64 3 245 0 71 8 54 0 74 3 245 0 80 8 54 0 96 8 54 0 97 3 245 0 108 3 245 0 109 8 54 0 112 8 54 0 127 8 54 0 128 3 245 0 129 3 217 0 130 3 245 0 132 3 245 0 133 3 245 0 135 3 245 0 136 8 54 0 137 3 237 0 138 3 241 1 117 3 245 1 123 3 245 1 124] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 1 169 0 212 14 77 0 213 14 77 1 114 1 193 1 119 1 197 1 130] 
#[0 14 81 0 137] 
#[0 8 58 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[0 8 62 0 21 0 23 0 26 0 27 0 28 0 32 0 40 0 43 0 48 0 52 0 56 0 61 0 65 0 89 0 104 0 115 0 118 0 123 0 139] 
#[0 8 66 0 39 0 40 0 41 0 48 0 49 0 61 0 78 0 121 0 137 1 131] 
#[1 8 70 0 39 8 70 0 40 8 70 0 49 8 70 0 78 5 249 0 137] 
#[0 8 74 0 3 0 5] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 14 85 0 206 14 89 0 207 14 93 0 208 14 97 0 209 1 169 0 212 14 101 0 213 14 101 1 114 1 193 1 119 1 197 1 130] 
#[1 11 97 0 2 6 225 0 6 5 42 0 26 5 42 0 27 5 42 0 28 5 42 0 31 5 42 0 32 5 42 0 40 5 42 0 52 5 42 0 87 5 42 0 88 5 42 0 89 5 42 0 91 5 42 0 92 5 42 0 93 5 42 0 94 5 42 0 113 5 42 0 115 5 42 0 118 5 42 0 123 5 42 0 130 5 42 0 137 5 42 0 139 14 105 0 234] 
#[1 14 109 0 40 11 33 0 88 11 37 0 92 11 41 0 93 11 45 0 94 11 49 0 113 11 57 0 229 11 57 0 230 11 57 0 231 11 57 0 232 11 57 0 233] 
#[1 8 78 0 3 8 78 0 5 4 125 0 6 0 146 0 11 4 129 0 188 4 1 0 189] 
#[0 8 82 0 31 0 87 0 137] 
#[0 8 86 0 26 0 40 0 52 0 89 0 91] 
#[1 4 209 0 52 4 213 0 79 4 217 0 89 2 25 0 91 4 221 1 10 4 225 1 48 4 229 1 50 4 233 1 56 4 237 1 58] 
#[0 8 90 0 31 0 87 0 137] 
#[0 8 94 0 26 0 40 0 52 0 89 0 91] 
#[0 8 98 0 26 0 40 0 52 0 89 0 91] 
#[0 8 102 0 26 0 40 0 52 0 89 0 91] 
#[0 14 113 0 139] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 8 106 0 30 8 106 0 33 4 153 0 35 8 106 0 57 4 153 0 58 8 106 0 59 4 153 0 64 4 153 0 71 8 106 0 74 4 153 0 80 8 106 0 96 8 106 0 97 4 153 0 108 4 153 0 109 8 106 0 112 8 106 0 127 8 106 0 128 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 8 106 0 137 4 153 1 124] 
#[1 4 145 0 2 4 153 0 4 4 149 0 6 4 153 0 8 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 8 110 0 30 8 110 0 33 4 153 0 35 8 110 0 57 4 153 0 58 8 110 0 59 4 153 0 64 4 153 0 71 8 110 0 74 4 153 0 80 8 110 0 96 8 110 0 97 4 153 0 108 4 153 0 109 8 110 0 112 8 110 0 127 8 110 0 128 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 8 110 0 137 4 153 1 124] 
#[0 8 114 0 3 0 24 0 26 0 27 0 28 0 32 0 40 0 52 0 88 0 89 0 91 0 92 0 93 0 94 0 113 0 115 0 118 0 123 0 130 0 139 1 131] 
#[1 2 154 0 3 2 154 0 40 14 117 0 137 14 121 1 88] 
#[0 8 118 0 3 0 40 0 137] 
#[1 14 125 0 5 14 129 0 9] 
#[0 8 122 0 5 0 9] 
#[1 4 145 0 2 4 153 0 4 8 126 0 5 4 149 0 6 4 153 0 8 8 126 0 9 4 153 0 11 4 153 0 12 4 153 0 13 4 153 0 18 4 153 0 20 4 153 0 35 4 153 0 58 4 153 0 64 4 153 0 71 4 153 0 80 4 153 0 108 4 153 0 109 4 153 0 129 4 153 0 132 4 153 0 133 4 153 0 135 4 153 0 136 4 153 1 124] 
#[1 2 202 0 26 2 202 0 27 2 202 0 28 8 130 0 31 2 202 0 32 2 202 0 40 2 202 0 52 8 130 0 87 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 8 130 0 137 2 202 0 139 14 133 0 227 6 249 0 237] 
#[0 8 134 0 31 0 87 0 137] 
#[0 8 138 0 5 0 30 0 33 0 57 0 59 0 74 0 96 0 97 0 112 0 127 0 128 0 137] 
#[1 4 17 0 2 3 202 0 3 1 61 0 15 3 202 0 40 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 14 137 0 207 14 93 0 208 14 97 0 209 1 169 0 212 14 101 0 213 14 101 1 114 1 193 1 119 1 197 1 130] 
#[0 8 142 0 3 0 40] 
#[1 4 17 0 2 1 61 0 15 1 73 0 75 0 169 0 130 1 101 0 135 1 105 0 136 4 65 0 140 1 169 0 141 1 193 0 143 1 121 0 147 14 141 0 209 1 169 0 212 14 101 0 213 14 101 1 114 1 193 1 119 1 197 1 130] 
#[0 14 145 0 2] 
#[1 3 226 0 40 3 226 0 88 3 226 0 92 3 226 0 93 3 226 0 94 3 226 0 113 14 149 0 228] 
#[0 8 146 0 3 0 40 0 137] 
#[0 8 150 0 5 0 9] 
#[1 2 202 0 3 2 202 0 24 2 202 0 26 2 202 0 27 2 202 0 28 2 202 0 32 2 202 0 52 2 202 0 88 2 202 0 89 2 202 0 91 2 202 0 92 2 202 0 93 2 202 0 94 2 202 0 113 2 202 0 115 2 202 0 118 2 202 0 123 2 202 0 130 2 202 0 139 14 153 0 203 6 245 0 227 6 249 0 237] 
#[1 14 157 0 40 11 33 0 88 11 37 0 92 11 41 0 93 11 45 0 94 11 49 0 113 11 57 0 229 11 57 0 230 11 57 0 231 11 57 0 232 11 57 0 233] 
#[0 14 161 0 3] 
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
