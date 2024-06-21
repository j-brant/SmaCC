Class {
	#name : #CSharpParser,
	#superclass : #SmaCCGLRParser,
	#classInstVars : [
		'keywords'
	],
	#category : #'SmaCC_CSharp'
}

{ #category : #generated }
CSharpParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 29] 
#[ 0 14 0 113] 
#[ 0 14 0 141] 
#[ 0 14 0 153] 
#[ 0 14 0 161] 
#[ 0 14 0 165] 
#[ 0 14 0 181] 
#[ 0 14 0 197] 
#[ 0 14 0 201] 
#[ 0 14 0 213] 
#[ 0 14 0 233] 
#[ 0 14 0 241] 
#[ 0 14 0 253] 
#[ 0 18 1 1] 
#[ 0 14 1 9] 
#[ 0 14 1 13] 
#[ 0 14 0 18] 
#[ 0 14 1 25] 
#[ 0 14 1 53] 
#[ 0 14 1 57] 
#[ 0 14 0 18 1 65] 
#[ 0 14 1 69] 
#[ 0 14 1 81] 
#[ 0 14 1 101] 
#[ 0 29 0 34] 
#[ 0 126 5 109] 
#[ 1 6 1 10] 
#[ 1 42 1 46] 
#[ 1 50 1 54] 
#[ 1 58 6 65] 
#[ 1 62 6 81] 
#[ 1 98 6 89] 
#[ 1 118 6 101] 
#[ 1 118 6 105] 
#[ 1 118 6 109] 
#[ 1 118 6 121] 
#[ 1 122 6 125] 
#[ 1 242 6 197] 
#[ 1 250 6 201] 
#[ 2 202 3 57] 
#[ 0 153 2 202] 
#[ 0 161 2 202] 
#[ 0 165 2 202] 
#[ 0 181 2 202] 
#[ 0 197 2 202] 
#[ 0 201 2 202] 
#[ 0 213 2 202] 
#[ 0 233 2 202] 
#[ 0 241 2 202] 
#[ 0 253 2 202] 
#[ 1 9 2 202] 
#[ 1 13 2 202] 
#[ 1 25 2 202] 
#[ 1 53 2 202] 
#[ 1 57 2 202] 
#[ 1 69 2 202] 
#[ 1 81 2 202] 
#[ 2 202 4 217] 
#[ 2 210 5 93] 
#[ 1 6 1 10 6 53] 
#[ 2 226 7 129] 
#[ 2 230 7 137] 
#[ 2 230 7 141] 
#[ 2 238 7 153] 
#[ 2 238 7 157] 
#[ 2 238 7 161] 
#[ 2 238 7 165] 
#[ 2 238 7 169] 
#[ 2 238 7 173] 
#[ 2 242 7 177] 
#[ 2 242 7 181] 
#[ 2 246 7 185] 
#[ 2 250 7 189] 
#[ 2 254 7 193] 
#[ 3 2 7 197] 
#[ 3 6 7 201] 
#[ 3 6 7 205] 
#[ 3 10 7 209] 
#[ 0 74 8 53] 
#[ 0 74 8 57] 
#[ 0 74 8 61] 
#[ 0 74 8 65] 
#[ 0 74 8 69] 
#[ 0 74 8 73] 
#[ 0 74 8 77] 
#[ 0 74 8 81] 
#[ 0 74 8 85] 
#[ 0 74 8 89] 
#[ 0 74 8 93] 
#[ 0 74 8 97] 
#[ 0 74 3 102 6 221] 
#[ 0 74 8 101] 
#[ 0 74 8 105] 
#[ 3 110 8 153] 
#[ 1 6 6 53] 
#[ 1 6 1 10 2 214] 
#[ 2 218 9 5] 
#[ 1 50 1 54 3 250] 
#[ 1 114 10 5] 
#[ 4 18 10 53] 
#[ 4 46 4 50] 
#[ 4 70 10 173] 
#[ 4 86 10 181] 
#[ 4 218 10 173] 
#[ 2 202 7 101] 
#[ 5 74 12 49] 
#[ 5 74 5 78 6 221] 
#[ 5 114 12 57] 
#[ 5 114 6 221] 
#[ 5 114 5 118] 
#[ 3 174 5 29] 
#[ 3 174 5 33] 
#[ 3 174 5 37] 
#[ 3 174 5 41] 
#[ 3 174 5 45] 
#[ 3 174 5 49] 
#[ 0 201 3 174] 
#[ 3 174 5 53] 
#[ 3 174 5 57] 
#[ 3 174 5 61] 
#[ 3 174 5 65] 
#[ 3 174 5 69] 
#[ 3 174 5 73] 
#[ 3 174 5 77] 
#[ 3 174 5 81] 
#[ 3 174 5 85] 
#[ 3 174 5 89] 
#[ 1 81 3 174] 
#[ 3 174 12 77] 
#[ 5 130 12 145] 
#[ 5 130 12 149] 
#[ 5 150 8 153] 
#[ 1 6 1 10 6 114] 
#[ 1 6 6 114] 
#[ 2 218 6 69] 
#[ 3 58 7 33] 
#[ 6 246 7 129] 
#[ 6 250 7 129] 
#[ 6 254 7 137] 
#[ 6 254 7 141] 
#[ 7 2 7 137] 
#[ 7 2 7 141] 
#[ 2 218 7 22 15 25] 
#[ 3 58 15 25] 
#[ 7 50 7 153] 
#[ 7 50 7 157] 
#[ 7 50 7 161] 
#[ 7 50 7 165] 
#[ 7 50 7 169] 
#[ 7 50 7 173] 
#[ 7 54 7 153] 
#[ 7 54 7 157] 
#[ 7 54 7 161] 
#[ 7 54 7 165] 
#[ 7 54 7 169] 
#[ 7 54 7 173] 
#[ 7 58 7 177] 
#[ 7 58 7 181] 
#[ 7 62 7 185] 
#[ 7 66 7 189] 
#[ 7 70 7 193] 
#[ 7 78 7 197] 
#[ 7 118 15 93] 
#[ 4 86 16 49] 
#[ 5 78 9 90] 
#[ 6 198 18 25] 
#[ 5 78 9 146] 
#[ 9 226 19 85] 
#[ 9 245 9 250] 
#[ 10 18 19 161] 
#[ 8 66 10 66] 
#[ 6 53 9 102] 
#[ 10 230 10 234] 
#[ 10 242 10 246] 
#[ 10 5 11 186] 
#[ 11 242 21 221] 
#[ 11 242 21 225] 
#[ 11 242 21 229] 
#[ 2 222 3 186] 
#[ 3 186 6 149] 
#[ 3 186 6 153] 
#[ 3 186 6 157] 
#[ 3 186 6 161] 
#[ 3 186 6 165] 
#[ 3 186 6 169] 
#[ 3 186 6 173] 
#[ 3 186 6 177] 
#[ 3 186 6 181] 
#[ 3 186 6 185] 
#[ 3 186 6 189] 
#[ 2 218 15 25] 
#[ 0 185 12 234] 
#[ 0 74 14 110] 
#[ 0 74 25 153] 
#[ 0 74 25 173] 
#[ 0 74 6 221] 
#[ 1 54 9 106] 
#[ 5 74 6 221] 
#[ 5 130 25 237]
	).
]

{ #category : #'generated-accessing' }
CSharpParser class >> cacheId [
	^'2024-06-21T07:12:51.429516-05:00'
]

{ #category : #generated }
CSharpParser class >> definitionComment [
"%glr;
%id <Identifier> <gt> <gtgt> <rightBrace>;

%scopes default interpolatedString interpolatedVerbatimString;

%start compilation_unit namespace_member_declaration statement expression block class_member_declaration;

%ignore_variables commaToken _leftParen _rightParen semicolonToken;

%root Program;
%prefix CS;
%suffix Node;

%annotate_tokens;

%hierarchy TypeParameterList (
	VariantTypeParameterList
);
%hierarchy UsingDirective (
	UsingAliasDirective
	UsingNamespaceDirective
	UsingStaticDirective
);
%hierarchy Declaration (
	ClassDeclaration
	ConstantDeclaration
	ConstructorDeclaration
	DelegateDeclaration
	EnumDeclaration
	EventDeclaration
	FieldDeclaration
	FixedSizeBufferDeclaration
	IndexerDeclaration
	InterfaceDeclaration
	InterfaceEventDeclaration
	InterfaceMethodDeclaration
	LocalConstantDeclaration
	LocalVariableDeclaration
	MethodDeclaration
	NamespaceDeclaration
	OperatorDeclaration
	PropertyDeclaration
	StaticConstructorDeclaration
	StructDeclaration
);
%hierarchy Statement (
	BlockStatement
	BreakStatement
	CheckedStatement
	ContinueStatement
	DeclarationStatement
	DoStatement
	EmptyStatement
	ExpressionStatement
	FixedStatement
	ForeachStatement
	ForStatement
	GotoStatement
	IfStatement
	LabeledStatement
	LocalFunctionDeclarationStatement
	LockStatement
	ReturnStatement
	SwitchStatement
	ThrowStatement
	TryStatement
	UncheckedStatement
	UnsafeStatement
	UsingStatement
	WhileStatement
	YieldStatement
);
%hierarchy Expression (
	AnonymousMethodExpression
	AnonymousObjectCreationExpression
	ArrayCreationExpression
	Assignment
	AwaitExpression
	BaseAccess
	BaseExpression
	BinaryExpression
	CastExpression
	CheckedExpression
	ConditionalExpression
	DeclarationExpression
	DeconstructionExpression
	DefaultValueExpression
	DelegateCreationExpression
	ElementAccess
	InterpolatedStringExpression
	InvocationExpression
	LambdaExpression
	LiteralExpression
	MemberAccess
	NamedEntity
	NameofExpression
	ObjectCreationExpression
	PrefixExpression
	PointerMemberAccess
	PostExpression
	QueryExpression
	RefExpression
	SimpleName
	SizeofExpression
	StackallocExpression
	ThisAccess
	ThrowExpression
	TupleExpression
	TypeExpression
	TypeofExpression
	UncheckedExpression
);

%hierarchy LiteralExpression (
	BooleanLiteralExpression
 	IntegerLiteralExpression
	RealLiteralExpression
	CharacterLiteralExpression
	StringLiteralExpression
	NullLiteralExpression
);

%hierarchy MemberAccess (
	NullConditionalMemberAccess
);
%hierarchy Type (
	ArrayType
	NullableType
	PointerType
	QualifiedAliasMember
	SimpleType
	TupleType
	TypeName
	VarType
	VoidType
);

default <gt>
	: \>
	;
default <gtgt>
	: <gt> <gt>
	;
default <rightBrace>
	: \}
	;
<LineTerminator>
	: \r
	| \n
	| \r\n
#	| \x85
#	| \x2028
#	| \x2029
	;
default <comment>
	: \/\/ [^\r\n]*
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<Identifier>
	: (<isLetter> | _ | <UnicodeCharacterEscapeSequence>) (<isLetter> | <isDigit> | _ | <UnicodeCharacterEscapeSequence>)*
	| \@ (<isLetter> | _ | <UnicodeCharacterEscapeSequence>) (<isLetter> | <isDigit> | _ | <UnicodeCharacterEscapeSequence>)*
	;
<IntegerSuffix>
	: [Uu]
	| [Ll]
	| [Uu][Ll]
	| [Ll][Uu]
	;
default <IntegerLiteral>
	: <decimalInteger> <IntegerSuffix>?
	| 0[Xx] (_* [0-9A-Fa-f])+ <IntegerSuffix>?
	| 0[bB] (_* [0-1])+ <IntegerSuffix>?
	;
<ExponentPart>
	: [Ee] [\+\-]? <decimalInteger>
	;
<RealSuffix>
	: [Ff]
	| [Dd]
	| [Mm]
	;
default <RealLiteral>
	: <decimalInteger>? \. <decimalInteger> <ExponentPart>? <RealSuffix>?
	| <decimalInteger> <ExponentPart> <RealSuffix>?
	| <decimalInteger> <RealSuffix>
	;
<SimpleEscapeSequence>
	: \\\'
	| \\\""
	| \\\\
	| \\0
	| \\a
	| \\b
	| \\f
	| \\n
	| \\r
	| \\t
	| \\v
	;
<HexadecimalEscapeSequence>
	: \\x [0-9A-Fa-f]{1,4}
	;
<UnicodeCharacterEscapeSequence>
	: \\u ([0-9A-Fa-f]{4,4})
	| \\U ([0-9A-Fa-f]{8,8})
	;
<Character>
	: [^\'\\\n]
	| <SimpleEscapeSequence>
	| <HexadecimalEscapeSequence>
	| <UnicodeCharacterEscapeSequence>
	;
default <CharacterLiteral>
	: \' <Character> \'
	;
<SingleRegularStringLiteralCharacter>
	: [^\""\\\n\r\x85\x2028\x2029]
	;
<RegularStringLiteralCharacter>
	: <SingleRegularStringLiteralCharacter>
	| <SimpleEscapeSequence>
	| <HexadecimalEscapeSequence>
	| <UnicodeCharacterEscapeSequence>
	;
<RegularStringLiteral>
	: \"" <RegularStringLiteralCharacter>* \""
	;
<InterpolatedSingleRegularStringLiteralCharacter>
	: [^\""\\\n\{]
	;
<InterpolatedRegularStringLiteralCharacter>
	: <InterpolatedSingleRegularStringLiteralCharacter>
	| <SimpleEscapeSequence>
	| <HexadecimalEscapeSequence>
	| <UnicodeCharacterEscapeSequence>
	| \{ \{
	;
default <InterpolatedRegularStringWhole>
	: \$\"" <InterpolatedRegularStringLiteralCharacter>* \""
	;
default <InterpolatedRegularStringStart>
	: \$\"" <InterpolatedRegularStringLiteralCharacter>* \{ 
	;
interpolatedString <InterpolatedRegularStringEnd>
	: \} <InterpolatedRegularStringLiteralCharacter>* \""
	;
interpolatedString <InterpolatedRegularStringMid>
	: \} <InterpolatedRegularStringLiteralCharacter>* \{
	;
<VerbatimStringLiteralCharacter>
	: [^\""]
	| \""\""
	;
<VerbatimStringLiteral>
	: \@\"" <VerbatimStringLiteralCharacter>* \""
	;
<InterpolatedVerbatimStringLiteralCharacter>
	: [^\""\{]
	| \""\""
	| \{ \{
	;
default <InterpolatedVerbatimStringLiteral>
	: \$\@\"" <InterpolatedVerbatimStringLiteralCharacter>* \""
	;
default <InterpolatedVerbatimStringStart>
	: (\$\@ | \@\$) \"" <InterpolatedVerbatimStringLiteralCharacter>* \{
	;
interpolatedVerbatimString <InterpolatedVerbatimStringEnd>
	: \} <InterpolatedVerbatimStringLiteralCharacter>* \""
	;
interpolatedVerbatimString <InterpolatedVerbatimStringMid>
	: \} <InterpolatedVerbatimStringLiteralCharacter>* \{
	;
default <StringLiteral>
	: <RegularStringLiteral>
	| <VerbatimStringLiteral>
	;
default <NullLiteral>
	: null
	;
default <whitespace>
	: (\s|\xA0)+
	;
default <preprocessorDirective>
	: \# [^\r\n]*
	;


<patternToken>
	: (\`  [^\`]* \`)+
	;
<decimalInteger>
	: \d (_* \d)*
	;

# B.2

# B.2.6 Namespaces
compilation_unit
	: _extern_alias_directives _using_directives _global_attributes _namespace_member_declarations {{}}
	;
namespace_declaration
	: ""namespace"" qualified_identifier 'identifier' namespace_body _semicolon {{}}
	;
qualified_identifier
	: <Identifier> 'name' {{}}
	| qualified_identifier ""."" <Identifier> 'name' {{}}
	;
namespace_body
	: ""{"" _extern_alias_directives _using_directives _namespace_member_declarations <rightBrace>
	;
_extern_alias_directives
	:
	| extern_alias_directives
	;
extern_alias_directives
	: extern_alias_directive 'directive'
	| extern_alias_directives extern_alias_directive 'directive'
	;
extern_alias_directive
	: ""extern"" ""alias"" <Identifier> "";"" {{}}
	;
_using_directives
	:
	| using_directives
	;
using_directives
	: using_directive 'directive'
	| using_directives using_directive 'directive'
	;
using_directive
	: using_alias_directive
	| using_namespace_directive
	| using_static_directive
	;
using_alias_directive
	: ""using"" <Identifier> 'name' ""="" namespace_or_type_name 'namespace' "";"" {{}}
	;
using_namespace_directive
	: ""using"" namespace_name 'namespace' "";"" {{}}
	;
using_static_directive
	: ""using"" ""static"" type_name 'namespace' "";"" {{}}
	;
_namespace_member_declarations
	: 
	| namespace_member_declarations
	;
namespace_member_declarations
	: namespace_member_declaration 'declaration'
	| namespace_member_declarations namespace_member_declaration 'declaration'
	;
namespace_member_declaration
	: namespace_declaration
	| type_declaration
	;
type_declaration
	: class_declaration
	| struct_declaration
	| interface_declaration
	| enum_declaration
	| delegate_declaration
	;
qualified_alias_member
	: <Identifier> 'global' ""::"" <Identifier> 'name' _type_argument_list 'typeArguments' {{}}
	;

# B.2.1
namespace_name
	: namespace_or_type_name
	;
type_name
	: namespace_or_type_name
	;
namespace_or_type_name
	: <Identifier> 'name' _type_argument_list 'typeArguments' {{TypeName}}
	| namespace_or_type_name 'namespace' ""."" <Identifier> 'name' _type_argument_list 'typeArguments' {{TypeName}}
	| qualified_alias_member 
	;

# B.2.2
_type
	:
	| type 'type'
	;
type
	: value_type
	| reference_type
	| type_parameter
	;
value_type
	: non_nullable_value_type
	| nullable_value_type
	;
nullable_value_type
	: non_nullable_value_type 'type' ""?"" {{NullableType}}
	;
struct_type
	: type_name
	| simple_type
	| tuple_type
	;
tuple_type
	: ""("" 'leftParen' tuple_type_element 'element' ("","" tuple_type_element 'element')+ "")"" 'rightParen' {{}}
	;
tuple_type_element
	: type 'type' <Identifier> 'name'? {{}}
	;
simple_type
	: numeric_type 'token' {{}}
	| ""bool"" 'token' {{}}
	;
numeric_type
	: integral_type
	| floating_point_type
	| ""decimal""
	;
integral_type
	: ""sbyte""
	| ""byte""
	| ""short""
	| ""ushort""
	| ""int""
	| ""uint""
	| ""long""
	| ""ulong""
	| ""char""
	;
floating_point_type
	: ""float""
	| ""double""
	;
non_nullable_value_type
	: struct_type
#	| enum_type	# handled by struct_type
	;
/*enum_type
	: type_name
	;*/
reference_type
	: class_type
#	| interface_type	## handled by class_type
	| array_type
#	| delegate_type	## handled by class_type
	| ""dynamic"" 'token' {{SimpleType}}
	;
class_type
	: type_name
	| ""object"" 'token' {{SimpleType}}
	| ""string"" 'token' {{SimpleType}}
	;
interface_type
	: type_name
	;
array_type
	: non_array_type 'type' rank_specifiers {{}}
	;
non_array_type
	: value_type
	| class_type
#	| interface_type	## handled by class_type
#	| delegate_type	## handled by class_type
	| ""dynamic"" 'token' {{SimpleType}}
	| type_parameter
	| pointer_type	# unsafe
	;
_rank_specifiers
	: 
	| rank_specifiers
	;
rank_specifiers
	: rank_specifier 'rankSpecifier'
	| rank_specifiers rank_specifier 'rankSpecifier'
	;
rank_specifier
	: ""["" _dim_separators ""]"" {{}}
	;
_dim_separators
	: 
	| dim_separators
	;
dim_separators
	: "",""
	| dim_separators "",""
	;
delegate_type
	: type_name
	;
type_argument_list
	: ""<"" type_arguments <gt> 'greaterThanToken' {{}}
	;
type_arguments
	: type_argument 'type'
	| type_arguments "","" type_argument 'type'
	;
type_argument
	: type
	;

# B.2.3 Variables
variable_reference
	: expression
	;
pattern
	: declaration_pattern
	| constant_pattern
	| var_pattern
	;
var_pattern
	: VarType 'type' designation {{DeclarationExpression}}
	;
designation
	: simple_designation
	;
constant_pattern
	: constant_expression
	;
declaration_pattern
	: type 'type' simple_designation {{DeclarationExpression}}
	;
simple_designation
	: single_variable_designation
	;
single_variable_designation
	: <Identifier> 'name'
	;

# B.2.4 Expressions
_argument_list
	:
	| argument_list
	;

# B.2.4
argument_list
	: argument 'argument'
	| argument_list "","" argument 'argument'
	;
argument
	: _argument_name argument_value {{}}
	;
_argument_name
	:
	| argument_name
	;
argument_name
	: <Identifier> 'identifier' "":""
	;
argument_value
	: expression 'expression' 
	| ""in"" variable_reference 'expression' 
	| ""ref"" variable_reference 'expression' 
	| ""out"" variable_reference 'expression'
	;
primary_expression
	: primary_no_array_creation_expression
	| array_creation_expression
	;
primary_no_array_creation_expression
	: literal 
	| interpolated_string_expression
	| simple_name 
	| parenthesized_expression 
	| tuple_expression
	| member_access 
	| null_conditional_member_access
	| invocation_expression 
	| element_access 
	| null_conditional_element_access
	| this_access 
	| base_access 
	| post_increment_expression 
	| post_decrement_expression 
	| object_creation_expression 
	| delegate_creation_expression 
	| anonymous_object_creation_expression 
	| typeof_expression 
	| sizeof_expression
	| checked_expression 
	| unchecked_expression 
	| default_value_expression 
	| nameof_expression
	| anonymous_method_expression 
	| stackalloc_expression
	;
interpolated_string_expression
	: interpolated_regular_string {{}}
	| interpolated_verbatim_string {{}}
	;
interpolated_regular_string
	: <InterpolatedRegularStringWhole> 'stringPart'
	| StartInterpolatedString <InterpolatedRegularStringStart> 'stringPart' interpolated_regular_string_body <InterpolatedRegularStringEnd> 'stringPart'
	;
StartInterpolatedString
	: [#interpolatedString]
	;
interpolated_regular_string_body
	: interpolation 'interpolation'
	| interpolated_regular_string_body <InterpolatedRegularStringMid> 'stringPart' interpolation 'interpolation'
	;
interpolation
	: expression 'expression' ("","" constant_expression 'constant')? Regular_Interpolation_Format? {{}}
	;
Regular_Interpolation_Format
	: ScanFormat 'format' "":"" 'colon' 
	;
ScanFormat
	: [self scanFormat]
	;
interpolated_verbatim_string
	: <InterpolatedVerbatimStringLiteral> 'stringPart'
	| StartInterpolatedVerbatimString <InterpolatedVerbatimStringStart> 'stringPart' interpolated_verbatim_string_body <InterpolatedVerbatimStringEnd> 'stringPart'
	;
StartInterpolatedVerbatimString
	: [#interpolatedVerbatimString]
	;
interpolated_verbatim_string_body
	: interpolation 'interpolation'
	| interpolated_verbatim_string_body <InterpolatedVerbatimStringMid> 'stringPart' interpolation 'interpolation'
	;
simple_name
	: <Identifier> _type_argument_list 'typeArguments' {{}}
	;
_type_argument_list
	: 
	| type_argument_list
	;
parenthesized_expression
	: ""("" '_leftParen' expression "")"" '_rightParen' {{Expression}}
	;
tuple_expression
	: ""("" 'leftParen' tuple_element 'element' ("","" tuple_element 'element')+ "")"" 'rightParen' {{}}
	| deconstruction_expression
	;
tuple_element
	: (<Identifier> 'name' "":"" 'colon')? expression 'value' {{}}
	;
deconstruction_expression
	: VarType 'type' deconstruction_tuple 'tuple' {{}}
	;
deconstruction_tuple
	: ""("" 'leftParen' deconstruction_element 'element' ("","" deconstruction_element 'element')+ "")"" 'rightParen' {{}}
	;
deconstruction_element
	: deconstruction_tuple
	| <Identifier> 'name' {{VariableDeclarator}}
	;
member_access
	: primary_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| predefined_type_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| qualified_alias_member_expression 'expression' ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	;
qualified_alias_member_expression
	: qualified_alias_member 'type' {{TypeExpression}}
	;
predefined_type_expression
	: predefined_type 'type' {{TypeExpression}}
	;
predefined_type
	: ""bool"" 'token' {{SimpleType}}
	| ""byte"" 'token' {{SimpleType}}
	| ""char"" 'token' {{SimpleType}}
	| ""decimal"" 'token' {{SimpleType}}
	| ""double"" 'token' {{SimpleType}}
	| ""float"" 'token' {{SimpleType}}
	| ""int"" 'token' {{SimpleType}}
	| ""long"" 'token' {{SimpleType}}
	| ""object"" 'token' {{SimpleType}}
	| ""sbyte"" 'token' {{SimpleType}}
	| ""short"" 'token' {{SimpleType}}
	| ""string"" 'token' {{SimpleType}}
	| ""uint"" 'token' {{SimpleType}}
	| ""ulong"" 'token' {{SimpleType}}
	| ""ushort"" 'token' {{SimpleType}}
	;
invocation_expression
	: primary_expression 'expression' ""("" _argument_list "")"" {{}}
	;
element_access
	: primary_no_array_creation_expression 'baseExpression' ""["" expression_list ""]"" {{}}
	;
expression_list
	: expression 'expression'
	| expression_list	"","" expression 'expression'
	;
this_access
	: ""this"" {{}}
	;
base_access
	: ""base"" ""."" <Identifier> 'identifier' _type_argument_list 'typeArguments' {{}}
	| ""base"" ""["" expression_list ""]"" {{}}
	;
post_increment_expression
	: primary_expression 'expression' ""++"" 'operator' {{PostExpression}}
	;
post_decrement_expression
	: primary_expression 'expression' ""--"" 'operator' {{PostExpression}}
	;
object_creation_expression
	: ""new"" type 'type' ""("" _argument_list "")"" _object_or_collection_initializer 'initializer' {{}}
	| ""new"" type 'type' object_or_collection_initializer 'initializer' {{}}
	;
_object_or_collection_initializer
	:
	| object_or_collection_initializer
	;
object_or_collection_initializer
	: object_initializer
	| collection_initializer
	;
object_initializer
	: ""{"" _member_initializer_list <rightBrace> {{}}
	| ""{"" member_initializer_list "","" <rightBrace> {{}}
	;
_member_initializer_list
	: 
	| member_initializer_list
	;
member_initializer_list
	: member_initializer 'initializer'
	| member_initializer_list "","" member_initializer 'initializer'
	;
member_initializer
	: initializer_target ""="" initializer_value 'value' {{}}
	;
initializer_target
	: <Identifier> 'identifier'
	| ""["" argument_list ""]""
	;
initializer_value
	: expression
	| object_or_collection_initializer
	;
collection_initializer
	: ""{"" element_initializer_list <rightBrace> {{}}
	| ""{"" element_initializer_list "","" <rightBrace> {{}}
	;
element_initializer_list
	: element_initializer 'initializer'
	| element_initializer_list "","" element_initializer 'initializer'
	;
element_initializer
	: non_assignment_expression 'expression' {{}}
	| ""{"" expression_list <rightBrace> {{}}
	;
array_creation_expression
	: ""new"" non_array_type 'type' ""["" expression_list ""]"" _rank_specifiers _array_initializer 'arrayInitializer' {{}}
	| ""new"" array_type 'type' array_initializer 'arrayInitializer' {{}}
	| ""new"" rank_specifier 'rankSpecifier' array_initializer 'arrayInitializer' {{}}
	;
delegate_creation_expression
	: ""new"" delegate_type 'type' ""("" expression 'expression' "")"" {{}}
	;
anonymous_object_creation_expression
	: ""new"" anonymous_object_initializer {{}}
	;
anonymous_object_initializer
	: ""{"" _member_declarator_list <rightBrace>
	| ""{"" member_declarator_list "","" <rightBrace>
	;
_member_declarator_list
	: 
	| member_declarator_list
	;
member_declarator_list
	: member_declarator 'declarator'
	| member_declarator_list "","" member_declarator 'declarator'
	;
member_declarator
	: simple_name 'name' {{}}
	| member_access 'access' {{}}
	| null_conditional_projection_initializer 'access' {{}}
	| base_access 'access' {{}}
	| <Identifier> ""="" expression 'value' {{}}
	;
typeof_expression
	: ""typeof"" ""("" type 'type' "")"" {{}}
	| ""typeof"" ""("" unbound_type_name 'type' "")"" {{}}
	| ""typeof"" ""("" void_type 'type' "")"" {{}}
	;
unbound_type_name
	: <Identifier> _generic_dimension_specifier {{}}
	| <Identifier> ""::"" <Identifier> _generic_dimension_specifier {{}}
	| unbound_type_name 'type' ""."" <Identifier> _generic_dimension_specifier {{}}
	;
_generic_dimension_specifier
	: 
	| generic_dimension_specifier
	;
generic_dimension_specifier
	: ""<"" _commas <gt>
	;
_commas
	: 
	| commas
	;
commas
	: "","" 'comma'
	| commas "","" 'comma'
	;
checked_expression
	: ""checked"" ""("" expression 'expression' "")"" {{}}
	;
unchecked_expression
	: ""unchecked"" ""("" expression 'expression' "")"" {{}}
	;
default_value_expression
	: ""default"" (""("" type 'type' "")"")? {{}}
	;
stackalloc_expression
	: ""stackalloc"" unmanaged_type 'type' ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' {{}}
	| ""stackalloc"" unmanaged_type 'type' ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' stackalloc_initializer {{}}
	;
nameof_expression
	: ""nameof"" ""("" named_entity 'name' "")"" {{}}
	;
named_entity
	: named_entity_target 'target' (""."" <Identifier> _type_argument_list 'typeArguments')* {{}}
	;
named_entity_target 
	: simple_name
	| ""this"" {{ThisAccess}}
	| ""base"" {{BaseExpression}}
	| predefined_type_expression
	| qualified_alias_member_expression
	;
unary_expression
	: primary_expression
	| ""+"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""-"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""!"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| ""~"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	| pre_increment_expression
	| pre_decrement_expression
	| cast_expression
	| await_expression
	;
null_conditional_member_access
	: primary_expression 'expression' ""?"" ""."" <Identifier> _type_argument_list 'typeArguments' dependent_access 'access'* {{}}
	;
dependent_access
	: ""."" <Identifier> 'name' _type_argument_list 'typeArguments' {{MemberAccess}}
	| ""["" 'leftBracket' argument_list ""]"" 'rightBracket' {{ElementAccess}}
	| ""("" 'leftParen' _argument_list "")"" 'rightParen' {{InvocationAccess}}
	;
null_conditional_projection_initializer
	: primary_expression 'expression' ""?"" ""."" <Identifier> _type_argument_list 'typeArguments' {{NullConditionalMemberAccess}}
	;
null_conditional_invocation_expression
	: null_conditional_member_access 'expression' ""("" _argument_list "")"" {{InvocationExpression}}
	| null_conditional_element_access 'expression' ""("" _argument_list "")"" {{InvocationExpression}}
	;
null_conditional_element_access
	: primary_no_array_creation_expression 'baseExpression' ""?"" ""["" expression_list ""]"" {{ElementAccess}}
	;
pre_increment_expression
	: ""++"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
pre_decrement_expression
	: ""--"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
cast_expression
	: ""("" type 'type' "")"" unary_expression 'expression' {{}}
	;
await_expression
	: ""await"" unary_expression 'expression' {{}}
	;
multiplicative_expression
	: unary_expression
	| multiplicative_expression 'left' ""*"" 'operator' unary_expression 'right' {{BinaryExpression}}
	| multiplicative_expression 'left' ""/"" 'operator' unary_expression 'right' {{BinaryExpression}}
	| multiplicative_expression 'left' ""%"" 'operator' unary_expression 'right' {{BinaryExpression}}
	;
additive_expression
	: multiplicative_expression
	| additive_expression 'left' ""+"" 'operator' multiplicative_expression 'right' {{BinaryExpression}}
	| additive_expression 'left' ""-"" 'operator' multiplicative_expression 'right' {{BinaryExpression}}
	;
shift_expression
	: additive_expression
	| shift_expression 'left' ""<<"" 'operator' additive_expression 'right' {{BinaryExpression}}
	| shift_expression 'left' <gtgt> 'operator' additive_expression 'right' {{BinaryExpression}}
	;
relational_expression
	: shift_expression
	| relational_expression 'left' ""<"" 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' <gt> 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' ""<="" 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' "">="" 'operator' shift_expression 'right' {{BinaryExpression}}
	| relational_expression 'left' ""is"" 'operator' type 'right' {{BinaryExpression}}
	| relational_expression 'left' ""is"" 'operator' pattern 'right' {{BinaryExpression}}
	| relational_expression 'left' ""as"" 'operator' type 'right' {{BinaryExpression}}
	;
equality_expression
	: relational_expression
	| equality_expression 'left' ""=="" 'operator' relational_expression 'right' {{BinaryExpression}}
	| equality_expression 'left' ""!="" 'operator' relational_expression 'right' {{BinaryExpression}}
	;
and_expression
	: equality_expression
	| and_expression 'left' ""&"" 'operator' equality_expression 'right' {{BinaryExpression}}
	;
exclusive_or_expression
	: and_expression
	| exclusive_or_expression 'left' ""^"" 'operator' and_expression 'right' {{BinaryExpression}}
	;
inclusive_or_expression
	: exclusive_or_expression
	| inclusive_or_expression 'left' ""|"" 'operator' exclusive_or_expression 'right' {{BinaryExpression}}
	;
conditional_and_expression
	: inclusive_or_expression
	| conditional_and_expression 'left' ""&&"" 'operator' inclusive_or_expression 'right' {{BinaryExpression}}
	;
conditional_or_expression
	: conditional_and_expression
	| conditional_or_expression 'left' ""||"" 'operator' conditional_and_expression 'right' {{BinaryExpression}}
	;
null_coalescing_expression
	: conditional_or_expression
	| conditional_or_expression 'left' ""??"" 'operator' null_coalescing_expression 'right' {{BinaryExpression}}
	| throw_expression
	;
throw_expression
	: ""throw"" null_coalescing_expression 'expression' {{}}
	;
declaration_expression
	: local_variable_type 'type' <Identifier> 'name' {{}}
	;
conditional_expression
	: null_coalescing_expression
	| null_coalescing_expression 'booleanExpression' ""?"" expression 'trueExpression' "":"" expression 'falseExpression' {{}}
	| null_coalescing_expression 'booleanExpression' ""?"" RefExpression 'trueExpression' "":"" RefExpression 'falseExpression' {{}}
	;
lambda_expression
	: ""async""? anonymous_function_signature ""=>"" anonymous_function_body 'body' {{}}
	;
anonymous_method_expression
	: ""async""? ""delegate"" _explicit_anonymous_function_signature 'signature' block 'block' {{}}
	;
anonymous_function_signature
	: explicit_anonymous_function_signature
	| implicit_anonymous_function_signature
	;
_explicit_anonymous_function_signature
	:
	| explicit_anonymous_function_signature
	;
explicit_anonymous_function_signature
	: ""("" _explicit_anonymous_function_paramenter_list "")""
	;
_explicit_anonymous_function_paramenter_list
	: 
	| explicit_anonymous_function_paramenter_list
	;
explicit_anonymous_function_paramenter_list
	: explicit_anonymous_function_paramenter 'parameter'
	| explicit_anonymous_function_paramenter_list "","" explicit_anonymous_function_paramenter 'parameter'
	;
explicit_anonymous_function_paramenter
	: _anonymous_function_parameter_modifier type 'type' <Identifier> 'name' {{AnonymousFunctionParameter}}
	;
_anonymous_function_parameter_modifier
	: 
	| anonymous_function_parameter_modifier 'modifier'
	;
anonymous_function_parameter_modifier
	: ""ref""
	| ""out""
	| ""in""
	;
implicit_anonymous_function_signature
	: ""("" implicit_anonymous_function_parameter_list "")""
	| implicit_anonymous_function_parameter 'parameter'
	;
implicit_anonymous_function_parameter_list
	: implicit_anonymous_function_parameter 'parameter'
	| implicit_anonymous_function_parameter_list "","" implicit_anonymous_function_parameter 'parameter'
	;
implicit_anonymous_function_parameter
	: <Identifier> 'name' {{AnonymousFunctionParameter}}
	;
anonymous_function_body
	: null_conditional_invocation_expression
	| expression
	| RefExpression 
	| block
	;
RefExpression
	: ""ref"" variable_reference 'expression' {{}}
	;
query_expression
	: from_clause query_body {{}}
	;
from_clause
	: ""from"" _type <Identifier> ""in"" expression 'expression'
	;
query_body
	: _query_body_clauses select_or_group_clause _query_continuation
	;
_query_body_clauses
	: 
	| query_body_clauses
	;
query_body_clauses
	: query_body_clause
	| query_body_clauses query_body_clause
	;
query_body_clause
	: from_clause
	| let_clause
	| where_clause
	| join_clause
	| join_into_clause
	| orderby_clause
	;
let_clause
	: ""let"" <Identifier> ""="" expression 'expression'
	;
where_clause
	: ""where"" boolean_expression 'expression'
	;
join_clause
	: ""join"" _type <Identifier> ""in"" expression 'joinInExpression'""on"" expression 'joinOnExpression' ""equals"" expression 'joinEqualsExpression'
	;
join_into_clause
	: ""join"" _type <Identifier> ""in"" expression 'joinInExpression' ""on"" expression 'joinOnExpression' ""equals"" expression 'joinEqualsExpression' ""into"" <Identifier>
	;
orderby_clause
	: ""orderby"" orderings
	;
orderings
	: ordering
	| orderings "","" ordering
	;
ordering
	: expression 'expression' _ordering_direction
	;
_ordering_direction
	: 
	| ordering_direction
	;
ordering_direction
	: ""ascending""
	| ""descending""
	;
select_or_group_clause
	: select_clause
	| group_clause
	;
select_clause
	: ""select"" expression 'expression'
	;
group_clause
	: ""group"" expression 'groupExpression' ""by"" expression 'groupByExpression'
	;
_query_continuation
	: 
	| query_continuation
	;
query_continuation
	: ""into"" <Identifier> query_body
	;
assignment
	: unary_expression 'lhs' assignment_operator expression 'rhs' {{}}
	;
assignment_operator
	: ""="" 'operator' ""ref""?
	| ""+="" 'operator'
	| ""-="" 'operator'
	| ""*="" 'operator'
	| ""/="" 'operator'
	| ""%="" 'operator'
	| ""&="" 'operator'
	| ""|="" 'operator'
	| ""^="" 'operator'
	| ""<<="" 'operator'
	| "">>="" 'operator'
	;
_expression
	:
	| expression 'expression'
	;
expression
	: non_assignment_expression 
	| assignment 
	;
non_assignment_expression
	: declaration_expression
	| conditional_expression 
	| lambda_expression 
	| query_expression 
	;
constant_expression
	: expression
	;
boolean_expression
	: expression
	;

# B.2.5 Statements
statement
	: labeled_statement
	| declaration_statement
	| embedded_statement
	;
embedded_statement
	: block
	| empty_statement
	| expression_statement
	| selection_statement
	| iteration_statement
	| jump_statement
	| try_statement
	| checked_statement
	| unchecked_statement
	| lock_statement
	| using_statement
	| yield_statement
	;
block
	: ""{"" _statement_list <rightBrace> {{BlockStatement}}
	;
_statement_list
	: 
	| statement_list
	;
statement_list
	: statement 'statement'
	| statement_list statement 'statement'
	;
empty_statement
	: "";"" {{}}
	;
labeled_statement
	: <Identifier> "":"" statement 'statement' {{}}
	;
declaration_statement
	: local_variable_declaration 'declaration' "";"" {{}}
	| local_constant_declaration 'declaration' "";"" {{}}
	| local_function_declaration
	;
local_function_declaration
	: LocalFunctionHeader 'header'
      local_function_body 'body' {{LocalFunctionDeclarationStatement}}
    | RefLocalFunctionHeader 'header' ref_local_function_body 'body' {{LocalFunctionDeclarationStatement}}
	;
RefLocalFunctionHeader
	: ref_local_function_modifier* ref_kind ref_return_type 'returnType'
      local_function_header {{MethodHeader}}
	;
LocalFunctionHeader
	: local_function_modifier* return_type 'returnType' local_function_header {{MethodHeader}}
	;
local_function_header
	: <Identifier> 'name' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' {{MethodHeader}}
	| <Identifier> 'name' type_parameter_list 'typeParameters' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses {{MethodHeader}}
	;
local_function_modifier
	: ref_local_function_modifier
	| ""async"" 'modifier'
	;
ref_local_function_modifier
	: ""static"" 'modifier'
	| unsafe_modifier
	;
local_function_body
	: block 'block' {{MethodBody}}
	| ""=>"" null_conditional_invocation_expression 'expression' "";"" {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	;
ref_local_function_body
	: block 'block' {{MethodBody}}
	| ""=>"" ""ref"" variable_reference 'expression' "";"" 'semicolon' {{MethodBody}}
	;
local_variable_declaration
	: implicitly_typed_local_variable_declaration {{}}
    | explicitly_typed_local_variable_declaration
    | ref_local_variable_declaration {{}}
	;
implicitly_typed_local_variable_declaration
	: VarType 'type' implicitly_typed_local_variable_declarator 'declarator'
    | ref_kind VarType 'type' ref_local_variable_declarator 'declarator'
	;
ref_local_variable_declarator
	: <Identifier> 'name' ""="" ""ref"" variable_reference 'expression' {{LocalVariableDeclarator}}
	;
ref_kind
	: ""ref""
	| ""ref"" ""readonly""
	;
implicitly_typed_local_variable_declarator
	: <Identifier> 'name' ""="" expression 'expression' {{LocalVariableDeclarator}}
	;
explicitly_typed_local_variable_declaration
	: type 'type' explicitly_typed_local_variable_declarators {{LocalVariableDeclarator}}
	;
explicitly_typed_local_variable_declarators
	: explicitly_typed_local_variable_declarator 'declarator' ("","" explicitly_typed_local_variable_declarator 'declarator')*
	;
explicitly_typed_local_variable_declarator
	: <Identifier> 'name' (""="" local_variable_initializer 'expression')? {{LocalVariableDeclarator}}
	;
ref_local_variable_declaration
	: ref_kind type 'type' ref_local_variable_declarators
	;
ref_local_variable_declarators
	: ref_local_variable_declarator 'declarator' ("","" ref_local_variable_declarator 'declarator')*
	;
local_variable_type
	: type
	| VarType
	;
VarType
	: ""var"" {{}}
	;
/*local_variable_declarator
#	: <Identifier> 'name' {{}}
#	| <Identifier> 'name' ""="" local_variable_initializer 'expression' {{}}
	: _local_variable_declarator_name 'name' {{}}
	| _local_variable_declarator_name 'name' ""="" local_variable_initializer 'expression' {{}}
	;
_local_variable_declarator_name	# Here to create a parse node
	: <Identifier> {{SimpleName}}
	;*/
local_variable_initializer
	: expression
	| array_initializer
	;
local_constant_declaration
	: ""const"" type 'type' const_declarators {{}}
	;
const_declarators
	: const_declarator 'declarator' 
	| const_declarators "","" const_declarator 'declarator'
	;
const_declarator
	: <Identifier> 'name' ""="" constant_expression 'expression' {{ConstantDeclarator}}
	;
expression_statement
	: statement_expression 'expression' "";"" {{}}
	;
statement_expression
	: null_conditional_invocation_expression
	| invocation_expression
	| object_creation_expression
	| assignment
	| post_increment_expression
	| post_decrement_expression
	| pre_increment_expression
	| pre_decrement_expression
	| await_expression
	;
selection_statement
	: if_statement
	| switch_statement
	;
if_statement
	: ""if"" ""("" boolean_expression 'expression' "")"" embedded_statement 'thenStatement' {{}}
	| ""if"" ""("" boolean_expression 'expression' "")"" embedded_statement 'thenStatement' ""else"" embedded_statement 'elseStatement' {{}}
	;
switch_statement
	: ""switch"" ""("" expression 'expression' "")"" switch_block {{}}
	;
switch_block
	: ""{"" _switch_sections <rightBrace>
	;
_switch_sections
	:
	| switch_sections
	;
switch_sections
	: switch_section 'section'
	| switch_sections switch_section 'section'
	;
switch_section
	: switch_labels statement_list {{}}
	;
switch_labels
	: switch_label 'label'
	| switch_labels switch_label 'label'
	;
switch_label
	: ""case"" pattern 'expression' case_guard? "":"" {{}}
	| ""default"" "":"" {{}}
	;
case_guard
	: ""when"" expression 'whenExpression'
	;
iteration_statement
	: while_statement
	| do_statement
	| for_statement
	| foreach_statement
	;
while_statement
	: ""while"" ""("" boolean_expression 'expression' "")"" embedded_statement 'statement' {{}}
	;
do_statement
	: ""do"" embedded_statement 'statement' ""while"" ""("" boolean_expression 'expression' "")"" "";"" {{}}
	;
for_statement
	: ""for"" ""("" _for_initializer "";"" _for_condition "";"" _for_iterator "")"" embedded_statement 'statement' {{}}
	;
_for_initializer
	: 
	| for_initializer 'initializer'
	;
for_initializer
	: local_variable_declaration
	| statement_expression_list {{StatementList}}
	;
_for_condition
	:
	| for_condition 'condition'
	;
for_condition
	: boolean_expression
	;
_for_iterator
	: 
	| for_iterator 'iterator'
	;
for_iterator
	: statement_expression_list {{StatementList}}
	;
statement_expression_list
	: statement_expression 'expression'
	| statement_expression_list "","" statement_expression 'expression'
	;
foreach_statement
	: ""foreach"" ""("" ref_kind? local_variable_type 'type' <Identifier> 'name' ""in"" expression 'expression' "")"" embedded_statement 'statement' {{}}
	;
jump_statement
	: break_statement
	| continue_statement
	| goto_statement
	| return_statement
	| throw_statement
	;
break_statement
	: ""break"" "";"" {{}}
	;
continue_statement
	: ""continue"" "";"" {{}}
	;
goto_statement
	: ""goto"" <Identifier> "";"" {{}}
	| ""goto"" ""case"" constant_expression 'expression' "";"" {{}}
	| ""goto"" ""default"" "";"" {{}}
	;
return_statement
	: ""return"" _expression "";"" {{}}
	| ""return"" ""ref"" variable_reference 'expression' {{}}
	;
throw_statement
	: ""throw"" _expression "";"" {{}}
	;
try_statement
	: ""try"" block 'block' catch_clauses {{}}
	| ""try"" block 'block' finally_clause 'finally' {{}}
	| ""try"" block 'block' catch_clauses finally_clause 'finally' {{}}
	;
catch_clauses
	: specific_catch_clause 'clause'+
    | specific_catch_clause 'clause'* general_catch_clause 'clause'
	;
specific_catch_clause
	: ""catch"" exception_specifier _exception_filter block 'block' {{CatchClause}}
	| ""catch"" exception_filter 'filter' block 'block' {{CatchClause}}
	;
exception_specifier
	: ""("" type 'type' _identifier "")""
	;
_exception_filter
	:
	| exception_filter 'filter'
	;
exception_filter
	: ""when"" ""("" boolean_expression 'expression' "")"" {{}}
	;
general_catch_clause
	: ""catch"" block 'block' {{CatchClause}}
	;
finally_clause
	: ""finally"" block 'block' {{}}
	;
checked_statement
	: ""checked"" block 'block' {{}}
	;
unchecked_statement
	: ""unchecked"" block 'block' {{}}
	;
lock_statement
	: ""lock"" ""("" expression 'expression' "")"" embedded_statement 'statement' {{}}
	;
using_statement
	: ""using"" ""("" resource_acquisition 'expression' "")"" embedded_statement 'statement' {{}}
	;
resource_acquisition
	: local_variable_declaration
	| expression
	;
yield_statement
	: ""yield"" ""return"" expression 'expression' "";"" {{}}
	| ""yield"" ""break"" "";"" {{}}
	;


# B.2.7 Classes
class_declaration
	: _attributes /*_class_modifiers*/ any_modifier 'modifier'* _partial ""class"" <Identifier> 'name' _type_parameter_list _class_base _type_parameter_constraints_clauses class_body _semicolon {{}}
	;
/*class_modifier
	: ""new"" 
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""abstract""
	| ""sealed""
	| ""static""
	| unsafe_modifier
	;*/
_type_parameter_list
	: 
	| type_parameter_list 'typeParameters'
	;
type_parameter_list
	: ""<"" 'lessThan' type_parameters <gt> 'greaterThan' {{}}
	;
type_parameters
	: _attributes type_parameter 'parameter'
	| type_parameters "","" _attributes type_parameter 'parameter'
	;
type_parameter
	: <Identifier> 'name'  {{TypeName}}
	;
_class_base
	: 
	| class_base
	;
class_base
	: "":"" class_type 'supertype'
#	| "":"" interface_type_list	# handled by one below
	| "":"" class_type 'supertype' "","" interface_type_list
	;
interface_type_list
	: interface_type 'supertype'
	| interface_type_list "","" 'comma' interface_type 'supertype'
	;
_type_parameter_constraints_clauses
	: 
	| type_parameter_constraints_clauses
	;
type_parameter_constraints_clauses
	: type_parameter_constraints_clause 'constraintClause'
	| type_parameter_constraints_clauses type_parameter_constraints_clause 'constraintClause'
	;
type_parameter_constraints_clause
	: ""where"" 'whereToken' type_parameter 'parameter' "":"" 'colon' type_parameter_constraints {{}}
	;
type_parameter_constraints
	: primary_constraint  'constraint'
	| secondary_constraints
	| constructor_constraint 'constraint'
	| primary_constraint 'constraint' "","" secondary_constraints
	| primary_constraint 'constraint' "","" constructor_constraint 'constraint'
	| secondary_constraints "","" constructor_constraint 'constraint'
	| primary_constraint 'constraint' "","" secondary_constraints "","" constructor_constraint 'constraint'
	;
primary_constraint
	: class_type 'type' {{TypeConstraint}}
	| ""class"" {{}}
	| ""struct"" {{}}
	| ""unmanaged"" {{}}
	;
secondary_constraints
	: interface_type_constraint 'constraint'
	| type_parameter 'constraint'
	| secondary_constraints "","" interface_type_constraint 'constraint'
	| secondary_constraints "","" type_parameter 'constraint'
	;
## added Interface_type_constraint
interface_type_constraint
	: interface_type 'type' {{TypeConstraint}}
	;
constructor_constraint
	: ""new"" ""("" "")"" {{}}
	;
class_body
	: ""{"" _class_member_declarations <rightBrace>
	;
_class_member_declarations
	: 
	| class_member_declarations
	;
class_member_declarations
	: class_member_declaration 'declaration'
	| class_member_declarations class_member_declaration 'declaration'
	;
class_member_declaration
	: constant_declaration
	| field_declaration
	| method_declaration
	| property_declaration
	| event_declaration
	| indexer_declaration
	| operator_declaration
	| constructor_declaration
	| finalizer_declaration
	| static_constructor_declaration
	| type_declaration
	;
constant_declaration
	: _attributes /*_constant_modifiers*/ any_modifier 'modifier'* ""const"" type 'type' constant_declarators "";"" {{}}
	;
/*constant_modifer
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;*/
constant_declarators
	: constant_declarator 'declarator'
	| constant_declarators "","" constant_declarator 'declarator'
	;
constant_declarator
	: <Identifier> ""="" constant_expression 'expression' {{}}
	;
field_declaration
	: _attributes /*_field_modifiers*/ any_modifier 'modifier'* type 'type' variable_declarators "";"" {{}}
	;
/*field_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""readonly""
	| ""volatile""
	| unsafe_modifier
	;*/
variable_declarators
	: variable_declarator 'declarator'
	| variable_declarators "","" variable_declarator 'declarator'
	;
variable_declarator
	: <Identifier> {{}}
	| <Identifier> ""="" variable_initializer 'initializer' {{}}
	;
variable_initializer
	: expression
	| array_initializer
	;
method_declaration
	: method_header 'header' method_body 'body' {{}}
	| RefMethodHeader 'header' ref_method_body 'body' {{}}
	;
RefMethodHeader
	: _attributes /*ref_method_modifier*/ any_modifier 'modifier'* ref_kind ref_return_type 'returnType' member_name _type_parameter_list ""("" _formal_parameters_list "")"" _type_parameter_constraints_clauses {{MethodHeader}}
	;
method_header
	: _attributes /*_method_modifiers*/ any_modifier 'modifier'* _partial return_type 'returnType' member_name _type_parameter_list ""("" _formal_parameters_list "")"" _type_parameter_constraints_clauses {{}}
	;
/*ref_method_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	;*/
return_type
	: type
	| void_type
	;
ref_return_type
	: type
	;
member_name
	: <Identifier> 'name'
	| interface_type 'interface' ""."" <Identifier> 'name'
	;
method_body
	: block 'block' {{}}
	| ""=>"" null_conditional_invocation_expression 'expression' "";"" {{}}
	| ""=>"" expression 'expression' "";"" {{}}
	| "";"" {{}}
	;
ref_method_body
	: block 'block' {{MethodBody}}
	| ""=>"" ""ref"" variable_reference 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
_formal_parameters_list
	: 
	| formal_parameters_list
	;
formal_parameters_list
	: fixed_parameters
	| fixed_parameters "","" 'comma' parameter_array 'parameter'
	| parameter_array 'parameter'
	;
fixed_parameters
	: fixed_parameter 'parameter'
	| fixed_parameters "","" 'comma' fixed_parameter 'parameter'
	;
fixed_parameter
	: _attributes _parameter_modifier type 'type' <Identifier> 'name' _default_argument {{FixedParameter}}
	;
_default_argument
	:
	| default_argument
	;
default_argument
	: ""="" expression 'expression'
	;
_parameter_modifier
	:
	| parameter_modifier 'modifier'
	;
parameter_modifier
	: parameter_mode_modifier
	| ""this""
	;
parameter_mode_modifier
	: ""ref"" 
	| ""out""
	| ""in""
	;
parameter_array
	: _attributes ""params"" 'paramsToken' array_type 'type' <Identifier> 'name' {{ArrayParameter}}
	;
property_declaration
	: _attributes /*_property_modifiers*/ any_modifier 'modifier'* type 'type' member_name property_body {{}}
	| _attributes /*_property_modifiers*/ any_modifier 'modifier'* ref_kind type 'type' member_name ref_property_body {{}}
	;
/*property_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	| unsafe_modifier
	;*/
property_body
	: ""{"" accessor_declarations <rightBrace> _property_initializer
	| ""=>"" expression 'expression' "";"" 'semicolon'
	;
_property_initializer
	:
	| property_initializer
	;
property_initializer
	: ""="" variable_initializer 'initializer' "";"" 'semicolon'
	;
ref_property_body
	: ""{"" ref_get_accessor_declaration 'getAccessor' <rightBrace> _property_initializer
	| ""=>"" ""ref"" variable_reference'expression' "";"" 'semicolon'
	;
accessor_declarations
	: get_accessor_declaration 'getAccessor' _set_accessor_declaration 'setAccessor'
	| set_accessor_declaration 'setAccessor' _get_accessor_declaration 'getAccessor'
	;
_get_accessor_declaration
	:
	| get_accessor_declaration
	;
get_accessor_declaration
	: _attributes _accessor_modifiers ""get"" accessor_body {{}}
	;
_set_accessor_declaration
	:
	| set_accessor_declaration
	;
set_accessor_declaration
	: _attributes _accessor_modifiers ""set"" accessor_body {{}}
	;
_accessor_modifiers
	:
	| accessor_modifiers
	;
accessor_modifiers
	: ""protected"" 'modifier'
	| ""internal"" 'modifier'
	| ""private"" 'modifier'
	| ""protected"" 'modifier' ""internal"" 'modifier'
	| ""internal"" 'modifier' ""protected"" 'modifier'
	| ""protected"" 'modifier' ""private"" 'modifier'
	| ""private"" 'modifier' ""protected"" 'modifier'
	;
accessor_body
	: block 'body'
	| ""=>"" expression 'expression' "";""
	| "";""
	;
ref_get_accessor_declaration
	: _attributes _accessor_modifiers ""get"" ref_accessor_body {{GetAccessorDeclaration}}
	;
ref_accessor_body
	: block 'body'
	| ""=>"" ""ref"" variable_reference 'expression' "";"" 
	| "";""
	;
event_declaration
	: _attributes /*_event_modifiers*/ any_modifier 'modifier'* ""event"" type 'type' variable_declarators "";"" {{}}
	| _attributes /*_event_modifiers*/ any_modifier 'modifier'* ""event"" type 'type' member_name ""{"" event_accessor_declarations <rightBrace> {{}}
	;
/*event_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""static""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	| unsafe_modifier
	;*/
event_accessor_declarations
	: add_accessor_declaration 'addDeclaration' remove_accessor_declaration 'removeDeclaration'
	| remove_accessor_declaration 'removeDeclaration' add_accessor_declaration 'addDeclaration'
	;
add_accessor_declaration
	: _attributes ""add"" block 'block' {{}}
	;
remove_accessor_declaration
	: _attributes ""remove"" block 'block' {{}}
	;
indexer_declaration
	: _attributes /*_indexer_modifiers*/ any_modifier 'modifier'* indexer_declarator indexer_body {{}}
	| _attributes /*_indexer_modifiers*/ any_modifier 'modifier'* ref_kind indexer_declarator ref_indexer_body {{}}
	;
/*indexer_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""abstract""
	| ""extern""
	| unsafe_modifier
	;*/
indexer_declarator
	: type 'returnType' ""this"" ""["" formal_parameters_list ""]""
	| type 'returnType' interface_type 'type' ""."" ""this"" ""["" formal_parameters_list ""]""
	;
indexer_body
	: ""{"" accessor_declarations <rightBrace>
	| ""=>"" expression 'expression' "";""
	;
ref_indexer_body
	: ""{"" ref_get_accessor_declaration 'getAccessor' <rightBrace>
	| ""=>"" ""ref"" variable_reference 'expression' "";""
	;
operator_declaration
	: _attributes /*operator_modifiers*/ any_modifier 'modifier'+ operator_declarator operator_body 'body' {{}}
	;
/*operator_modifier
	: ""public""
	| ""static""
	| ""extern""
	| unsafe_modifier
	;*/
operator_declarator
	: unary_operator_declarator
	| binary_operator_declarator
	| conversion_operator_declarator
	;
unary_operator_declarator
	: type 'returnType' ""operator"" overloadable_unary_operator 'operator' ""("" fixed_parameter 'parameter' "")""
	;
overloadable_unary_operator
	: ""+""
	| ""-""
	| ""!""
	| ""~""
	| ""++""
	| ""--""
	| ""true""
	| ""false""
	;
binary_operator_declarator
	: type 'returnType' ""operator"" overloadable_binary_operator 'operator' ""("" fixed_parameter 'parameter' "","" fixed_parameter 'parameter' "")""
	;
overloadable_binary_operator
	: ""+""
	| ""-""
	| ""*""
	| ""/""
	| ""%""
	| ""&""
	| ""|""
	| ""^""
	| ""<<""
	| <gtgt>
	| ""==""
	| ""!=""
	| <gt>
	| ""<""
	| "">=""
	| ""<=""
	;
conversion_operator_declarator
	: ""implicit"" ""operator"" type 'returnType' ""("" fixed_parameter 'parameter' "")""
	| ""explicit"" ""operator"" type 'returnType' ""("" fixed_parameter 'parameter' "")""
	;
operator_body
	: block 'block' {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
constructor_declaration
	: _attributes /*_constructor_modifiers*/ any_modifier 'modifier'* constructor_declarator constructor_body 'body' {{}}
	;
/*constructor_modifier
	: ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""extern""
	| unsafe_modifier
	;*/
constructor_declarator
	: <Identifier> ""("" _formal_parameters_list "")"" _constructor_initializer
	;
_constructor_initializer
	: 
	| constructor_initializer 'initializer'
	;
constructor_initializer
	: "":"" ""base"" ""("" _argument_list "")"" {{}}
	| "":"" ""this"" ""("" _argument_list "")"" {{}}
	;
constructor_body
	: block 'block' {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
static_constructor_declaration
	: _attributes static_constructor_modifiers <Identifier> ""("" "")"" static_constructor_body {{}}
	;
# redefined in the unsafe section
static_constructor_modifiers
	: ""static""
	| ""static"" ""extern"" 'modifier' unsafe_modifier?
	| ""static"" unsafe_modifier ""extern"" 'modifier'
	| ""extern"" 'modifier' ""static"" unsafe_modifier?
	| ""extern"" 'modifier' unsafe_modifier ""static""
	| unsafe_modifier ""static"" ""extern"" 'modifier'
	| unsafe_modifier ""extern"" 'modifier' ""static""
	;
static_constructor_body
	: block 'block'
	| ""=>"" expression 'expression' "";""
	| "";""
	;
# redefined in the unsafe section
#destructor_declaration
#	: _attributes _extern ""~"" <Identifier> ""("" "")"" destructor_body
#	;
#destructor_body
#	: block
#	| "";""
#	;

# B.2.8 Structs
struct_declaration
	: _attributes /*_struct_modifiers*/ any_modifier 'modifier'* ""ref""? _partial ""struct"" <Identifier> _type_parameter_list _struct_interfaces _type_parameter_constraints_clauses struct_body _semicolon {{}}
	;
/*struct_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""readonly""
	| unsafe_modifier
	;*/
_struct_interfaces
	:
	| struct_interfaces
	;
struct_interfaces
	: "":"" interface_type_list
	;
struct_body
	: ""{"" _struct_member_declarations <rightBrace>
	;
_struct_member_declarations
	: 
	| struct_member_declarations
	;
struct_member_declarations
	: struct_member_declaration 'declaration'
	| struct_member_declarations struct_member_declaration 'declaration'
	;
struct_member_declaration
	: constant_declaration
	| field_declaration
	| method_declaration
	| property_declaration
	| event_declaration
	| indexer_declaration
	| operator_declaration
	| constructor_declaration
	| static_constructor_declaration
	| type_declaration
	| fixed_size_buffer_declaration
	;

# B.2.9 Arrays
_array_initializer
	:
	| array_initializer
	;
array_initializer
	: ""{"" _variable_initializer_list <rightBrace> {{}}
	| ""{"" variable_initializer_list "","" <rightBrace> {{}}
	;
_variable_initializer_list
	:
	| variable_initializer_list
	;
variable_initializer_list
	: variable_initializer 'initializer'
	| variable_initializer_list "","" variable_initializer 'initializer'
	;
variable_initializer
	: expression
	| array_initializer
	;

# B.2.10 Interfaces
interface_declaration
	: _attributes /*_interface_modifiers*/ any_modifier 'modifier'* _partial ""interface"" 'interfaceToken' <Identifier> 'name' _variant_type_parameter_list _interface_base _type_parameter_constraints_clauses interface_body _semicolon {{}}
	;
/*interface_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| unsafe_modifier
	;*/
_variant_type_parameter_list
	:
	| variant_type_parameter_list 'typeParameters'
	;
variant_type_parameter_list
	: ""<"" 'lessThan' variant_type_parameters <gt> 'greaterThan' {{}}
	;
variant_type_parameters
	: _attributes _variance_annotation type_parameter 'parameter'
	| variant_type_parameters "","" _attributes _variance_annotation type_parameter 'parameter'
	;
_variance_annotation
	:
	| variance_annotation 'annotation'
	;
variance_annotation
	: ""in""
	| ""out""
	;
_interface_base
	: 
	| interface_base
	;
interface_base
	: "":"" 'colon' interface_type_list
	;
interface_body
	: ""{"" 'leftBrace' _interface_member_declarations <rightBrace> 'rightBrace'
	;
_interface_member_declarations
	:
	| interface_member_declarations
	;
interface_member_declarations
	: interface_member_declaration 'declaration'
	| interface_member_declarations interface_member_declaration 'declaration'
	;
interface_member_declaration
	: interface_method_declaration
	| property_declaration	## changed from antlr
	| interface_event_declaration
	| indexer_declaration	## changed from antlr
	;
interface_method_declaration
	: _attributes _new 'modifier' return_type 'type' interface_method_header {{}}
	| _attributes _new 'modifier' ref_kind ref_return_type 'type' interface_method_header {{}}
	;
interface_method_header
	: <Identifier> 'name' _type_parameter_list ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses method_body 'body'	## method_body?
	;
/*interface_property_declaration
	: _attributes _new 'modifier' type 'type' <Identifier> 'name' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' #{{}}
	| _attributes _new 'modifier' ref_kind type 'type' <Identifier> 'name' ""{"" 'leftBrace' ref_interface_accessor <rightBrace> 'rightBrace' #{{}}
	;
interface_accessors	#This was changed to use the interface_(g/s)et_accessor
	: interface_get_accessor 'getAccessor'
	| interface_set_accessor 'setAccessor'
	| interface_get_accessor 'getAccessor' interface_set_accessor 'setAccessor'
	| interface_set_accessor 'setAccessor' interface_get_accessor 'getAccessor'
	;
ref_interface_accessor
	: interface_get_accessor 'getAccessor'
	;
interface_get_accessor
	: _attributes ""get"" 'accessorType' "";"" 'semicolon' {{InterfacePropertyAccessor}}
	;
interface_set_accessor
	: _attributes ""set"" 'accessorType' "";"" 'semicolon' {{InterfacePropertyAccessor}}
	;*/
interface_event_declaration
	: _attributes _new 'modifier' ""event"" 'eventToken' type 'type' <Identifier> 'name' "";"" 'semicolon' {{}}
	;
/*interface_indexer_declaration
	: _attributes _new 'modifier' type 'type' ""this"" 'thisToken' ""["" 'leftBracket' formal_parameters_list ""]"" 'rightBracket' ""{"" 'leftBrace' interface_accessors <rightBrace> 'rightBrace' #{{}}
	| _attributes _new 'modifier' ref_kind type 'type' ""this"" 'thisToken' ""["" 'leftBracket' formal_parameters_list ""]"" 'rightBracket' ""{"" 'leftBrace' ref_interface_accessor <rightBrace> 'rightBrace' #{{}}
	;*/

# B.2.11 Enums
enum_declaration
	: _attributes /*_enum_modifers*/ any_modifier 'modifier'* ""enum"" 'enumToken' <Identifier> 'name' _enum_base enum_body _semicolon {{}}
	;
_enum_base
	:
	| enum_base
	;
enum_base
	: "":"" integral_type 'typeToken'
	| "":"" integral_type_name 'typeToken'
	;
integral_type_name
	: type_name
	;
enum_body
	: ""{"" 'leftBrace' _enum_member_declarations <rightBrace> 'rightBrace'
	| ""{"" 'leftBrace' enum_member_declarations "","" 'comma' <rightBrace> 'rightBrace'
	;
/*enum_modifer
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	;*/
_enum_member_declarations
	:
	| enum_member_declarations
	;
enum_member_declarations
	: enum_member_declaration 'declaration'
	| enum_member_declarations "","" 'comma' enum_member_declaration 'declaration'
	;
enum_member_declaration
	: _attributes <Identifier> 'name' (""="" 'equal' constant_expression 'value')? {{EnumDeclaration}}
	;

# B.2.12 Delegates
delegate_declaration
	: _attributes /*_delegate_modifiers*/ any_modifier 'modifier'* ""delegate"" 'delegateToken' return_type 'type' delegate_header {{}}
	| _attributes /*_delegate_modifiers*/ any_modifier 'modifier'* ""delegate"" 'delegateToken' ref_kind ref_return_type 'type' delegate_header {{}}
	;
delegate_header
	: <Identifier> 'name' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' "";"" 'semicolon'
	| <Identifier> 'name' variant_type_parameter_list 'typeParameters' ""("" 'leftParen' _formal_parameters_list "")"" 'rightParen' _type_parameter_constraints_clauses "";"" 'semicolon'
	;
/*delegate_modifier
	: ""new""
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| unsafe_modifier
	;*/

# B.2.13 Attributes
_global_attributes
	:
	| global_attributes
	;
global_attributes
	: global_attribute_sections
	;
global_attribute_sections
	: global_attribute_section 'attribute'
	| global_attribute_sections global_attribute_section 'attribute'
	;
global_attribute_section
	: ""["" 'leftBracket' global_attribute_target_specifier attribute_list ""]"" 'rightBracket' {{Attribute}}
	| ""["" 'leftBracket' global_attribute_target_specifier attribute_list "","" 'comma' ""]"" 'rightBracket' {{Attribute}}
	;
global_attribute_target_specifier
	: global_attribute_target 'target' "":"" 'colon'
	;
global_attribute_target
	: <Identifier>
	;
_attributes
	:
	| attributes
	;
attributes
	: attribute_sections
	;
attribute_sections
	: attribute_section 'attribute'
	| attribute_sections attribute_section 'attribute'
	;
attribute_section
	: ""["" 'leftBracket' _attribute_target_specifier attribute_list ""]"" 'rightBracket' {{Attribute}}
	| ""["" 'leftBracket' _attribute_target_specifier attribute_list "","" 'comma' ""]"" 'rightBracket' {{Attribute}}
	;
_attribute_target_specifier
	: 
	| attribute_target_specifier
	;
attribute_target_specifier
	: attribute_target 'target' "":"" 'colon'
	;
attribute_target	# changed from antlr definition
	: ""field""
	| ""event""
	| ""method""
	| ""param""
	| ""property""
	| ""return""
	| ""type""
	;
attribute_list
	: attribute 'attributeValue'
	| attribute_list "","" 'comma' attribute 'attributeValue'
	;
attribute
	: attribute_name 'name' _attribute_arguments {{AttributeValue}}
	;
attribute_name
	: type_name
	;
_attribute_arguments
	: 
	| attribute_arguments
	;
attribute_arguments
	: ""("" 'leftParen' _positional_argument_list "")"" 'rightParen'
	| ""("" 'leftParen' positional_argument_list "","" 'comma' named_argument_list "")"" 'rightParen'
	| ""("" 'leftParen' named_argument_list "")"" 'rightParen'
	;
_positional_argument_list
	:
	| positional_argument_list
	;
positional_argument_list
	: positional_argument 'argument'
	| positional_argument_list "","" 'comma' positional_argument 'argument'
	;
positional_argument
	: _argument_name attribute_argument_expression 'expression' {{Argument}}
	;
named_argument_list
	: named_argument 'argument'
	| named_argument_list "","" 'comma' named_argument 'argument'
	;
named_argument
	: <Identifier> 'name' ""="" 'equal' attribute_argument_expression 'value' {{NamedArgument}}
	;
attribute_argument_expression
	: expression
	;

# B.1.8 Literals
literal
	: boolean_literal 'token' {{BooleanLiteralExpression}}
	| <IntegerLiteral> 'token' {{IntegerLiteralExpression}}
	| <RealLiteral> 'token' {{RealLiteralExpression}}
	| <CharacterLiteral> 'token' {{CharacterLiteralExpression}}
	| <StringLiteral> 'token' {{StringLiteralExpression}}
	| <NullLiteral> 'token' {{NullLiteralExpression}}
	;
boolean_literal
	: ""true""
	| ""false""
	;

# Misc
_semicolon
	:
	| "";"" 'semicolon'
	;
_new
	:
	| ""new""
	;
_partial
	:
	| ""partial"" 'partialToken'
	;
_extern
	:
	| ""extern"" 'modifier'
	;
_identifier
	:
	| <Identifier> 'name'
	;

# B.3 Unsafe code
/*class_modifier
	: ""unsafe""
	;
struct_modifier
	: ""unsafe""
	;
interface_modifier
	: ""unsafe""
	;
delegate_modifier
	: ""unsafe""
	;
field_modifier
	: ""unsafe""
	;
method_modifier
	: ""unsafe""
	;
property_modifier
	: ""unsafe""
	;
event_modifier
	: ""unsafe""
	;
indexer_modifier
	: ""unsafe""
	;
operator_modifier
	: ""unsafe""
	;
constructor_modifier
	: ""unsafe""
	;*/
finalizer_declaration	# Changed from destructor_body to method_body since they are the same
	: _attributes _extern unsafe_modifier? ""~"" <Identifier> ""("" "")"" finalizer_body 'body' {{}}
	| _attributes unsafe_modifier _extern ""~"" <Identifier> ""("" "")"" finalizer_body 'body' {{}}
	;
finalizer_body
	: block 'block' {{MethodBody}}
	| ""=>"" expression 'expression' "";"" {{MethodBody}}
	| "";"" {{MethodBody}}
	;
unsafe_modifier
	: ""unsafe"" 'modifier'
	;
static_constructor_modifiers
	: ""static""
	| ""static"" ""extern"" 'modifier' unsafe_modifier?
	| ""static"" unsafe_modifier _extern
	| ""extern"" 'modifier' ""static"" unsafe_modifier?
	| ""extern"" 'modifier' unsafe_modifier ""static""
	| unsafe_modifier ""static"" _extern
	| unsafe_modifier ""extern"" 'modifier' ""static""
	;
embedded_statement
	: unsafe_statement
	;
unsafe_statement
	: ""unsafe"" block 'block' {{UnsafeStatement}}
	;
type
	: pointer_type
	;
pointer_type
	: value_type 'type' ""*""+ {{}}
	| void_type 'type' ""*""+ {{}}
	;
unmanaged_type
	: value_type
	| pointer_type
	;
primary_no_array_creation_expression
	: pointer_member_access
#	| pointer_element_access	# handled by element_access
	;
unary_expression
	: pointer_indirection_expression
	| addressof_expression
	;
pointer_indirection_expression
	: ""*"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
pointer_member_access
	: primary_expression 'expression' ""->"" 'arrowToken' <Identifier> 'name' _type_argument_list 'typeArguments' {{}}
	;
/*pointer_element_access
	: primary_no_array_creation_expression 'expression' ""["" expression 'indexExpression' ""]"" {{}}
	;*/
addressof_expression
	: ""&"" 'operator' unary_expression 'expression' {{PrefixExpression}}
	;
sizeof_expression
	: ""sizeof"" ""("" unmanaged_type 'type' "")"" {{}}
	;
embedded_statement
	: fixed_statement
	;
fixed_statement
	: ""fixed"" ""("" pointer_type 'type' fixed_pointer_declarators "")"" embedded_statement 'statement' {{}}
	;
fixed_pointer_declarators
	: fixed_pointer_declarator 'declarator'
	| fixed_pointer_declarators "","" fixed_pointer_declarator 'declarator'
	;
fixed_pointer_declarator
	: <Identifier> ""="" fixed_pointer_initializer {{}}
	;
fixed_pointer_initializer
	: ""&"" variable_reference 'expression'
	| expression 'expression'
	;
struct_member_declaration
	: fixed_size_buffer_declaration
	;
fixed_size_buffer_declaration
	: _attributes /*_fixed_size_buffer_modifiers*/ any_modifier 'modifier'* ""fixed"" buffer_element_type 'type' fixed_size_buffer_declarators "";"" {{}}
	;
/*fixed_size_buffer_modifier
	: ""new""
	| ""public""
	| ""internal""
	| ""private""
	| ""unsafe""
	;*/
buffer_element_type
	: type
	;
fixed_size_buffer_declarators
	: fixed_size_buffer_declarator 'declarator'
	| fixed_size_buffer_declarators fixed_size_buffer_declarator 'declarator'
	;
fixed_size_buffer_declarator
	: <Identifier> 'name' ""["" constant_expression 'expression' ""]"" {{}}
	;
local_variable_initializer
	: stackalloc_initializer
	;
stackalloc_initializer
	: ""{"" 'leftBrace' stackalloc_initializer_element_list <rightBrace> 'rightBrace'
	;
stackalloc_initializer_element_list
	: stackalloc_element_initializer ("","" stackalloc_element_initializer)*
	;
stackalloc_element_initializer
	: expression 'initializer'
	;
# Additions
void_type
	: ""void"" {{}}
	;
any_modifier
	: ""new"" 
	| ""public""
	| ""protected""
	| ""internal""
	| ""private""
	| ""abstract""
	| ""sealed""
	| ""static""
	| ""readonly""
	| ""volatile""
	| ""async""
	| ""virtual""
	| ""sealed""
	| ""override""
	| ""extern""
	| unsafe_modifier
	;"
]

{ #category : #'file types' }
CSharpParser class >> fileExtension [
	^ '.cs'
]

{ #category : #'file types' }
CSharpParser class >> fileExtensionType [
	^ 'C# files'
]

{ #category : #private }
CSharpParser class >> keywords [
	^ keywords
		ifNil:
			[ keywords := #('abstract' 'as' 'base' 'bool' 'break' 'byte' 'case' 'catch' 'char' 'checked' 'class' 'const' 'continue' 'decimal' 'default' 'delegate' 'do' 'double' 'else' 'enum' 'event' 'explicit' 'extern' 'false' 'finally' 'fixed' 'float' 'for' 'foreach' 'goto' 'if' 'implicit' 'in' 'int' 'interface' 'internal' 'is' 'lock' 'long' 'namespace' 'new' 'null' 'object' 'operator' 'out' 'override' 'params' 'private' 'protected' 'public' 'readonly' 'ref' 'return' 'sbyte' 'sealed' 'short' 'sizeof' 'stackalloc' 'static' 'string' 'struct' 'switch' 'this' 'throw' 'true' 'try' 'typeof' 'uint' 'ulong' 'unchecked' 'unsafe' 'ushort' 'using' 'virtual' 'void' 'volatile' 'while')
				asSet ]
]

{ #category : #accessing }
CSharpParser class >> parseBlock: aString onError: aBlock [
	^ self
		parse: aString
		startingAt: self startingStateForblock
		onError: aBlock
]

{ #category : #generated }
CSharpParser class >> reduceTable [
^#(
	#(180 0 #reduceActionFor_extern_alias_directives1: 6529025 false) 
	#(587 0 #reduceActionFor_extern_alias_directives1: 56316929 false) 
	#(387 0 #reduceActionFor_extern_alias_directives1: 29580289 false) 
	#(385 0 #reduceActionFor_extern_alias_directives1: 29438977 false) 
	#(243 0 #reduceActionForStartInterpolatedString1: 12269569 true) 
	#(249 0 #reduceActionForStartInterpolatedVerbatimString1: 12982273 true) 
	#(183 0 #reduceActionFor_extern_alias_directives1: 6788097 false) 
	#(180 1 #reduceActionFor_extern_alias_directives2: 6529026 false) 
	#(181 1 #reduceActionForextern_alias_directives1: 6588417 false) 
	#(591 0 #reduceActionFor_attribute_target_specifier1: 56728577 false) 
	#(191 1 #liftFirstValue: 7530497 false) 
	#(191 1 #liftFirstValue: 7530498 false) 
	#(192 1 #liftFirstValue: 7609345 false) 
	#(192 1 #liftFirstValue: 7609346 false) 
	#(192 1 #liftFirstValue: 7609347 false) 
	#(192 1 #liftFirstValue: 7609348 false) 
	#(192 1 #liftFirstValue: 7609349 false) 
	#(460 0 #reduceActionFor_extern_alias_directives1: 36809729 false) 
	#(587 1 #reduceActionFor_extern_alias_directives2: 56316930 false) 
	#(588 1 #reduceActionFor_extern_alias_directives2: 56349697 false) 
	#(589 1 #reduceActionForextern_alias_directives1: 56386561 false) 
	#(380 1 #reduceActionForempty_statement1: 28900353 false) 
	#(206 1 #reduceActionForsimple_type2: 8687618 false) 
	#(266 1 #reduceActionForsimple_type2: 14542849 false) 
	#(208 1 #liftFirstValue: 8826882 false) 
	#(266 1 #reduceActionForsimple_type2: 14542850 false) 
	#(208 1 #liftFirstValue: 8826889 false) 
	#(266 1 #reduceActionForsimple_type2: 14542851 false) 
	#(207 1 #liftFirstValue: 8756227 false) 
	#(266 1 #reduceActionForsimple_type2: 14542852 false) 
	#(301 1 #reduceActionFordefault_value_expression1: 18780161 false) 
	#(336 0 #nil 24744961 false) 
	#(209 1 #liftFirstValue: 8940546 false) 
	#(266 1 #reduceActionForsimple_type2: 14542853 false) 
	#(211 1 #reduceActionForsimple_type2: 9101315 false) 
	#(215 1 #reduceActionForsimple_type2: 9466883 false) 
	#(606 1 #liftFirstValue: 58456066 false) 
	#(209 1 #liftFirstValue: 8940545 false) 
	#(266 1 #reduceActionForsimple_type2: 14542854 false) 
	#(208 1 #liftFirstValue: 8826885 false) 
	#(266 1 #reduceActionForsimple_type2: 14542855 false) 
	#(208 1 #liftFirstValue: 8826887 false) 
	#(266 1 #reduceActionForsimple_type2: 14542856 false) 
	#(212 1 #reduceActionForsimple_type2: 9274370 false) 
	#(266 1 #reduceActionForsimple_type2: 14542857 false) 
	#(396 1 #reduceActionForref_kind1: 30964737 false) 
	#(370 0 #nil 28034049 false) 
	#(208 1 #liftFirstValue: 8826881 false) 
	#(266 1 #reduceActionForsimple_type2: 14542858 false) 
	#(208 1 #liftFirstValue: 8826883 false) 
	#(266 1 #reduceActionForsimple_type2: 14542859 false) 
	#(212 1 #reduceActionForsimple_type2: 9274371 false) 
	#(266 1 #reduceActionForsimple_type2: 14542860 false) 
	#(270 1 #reduceActionForthis_access1: 15375361 false) 
	#(606 1 #liftFirstValue: 58456065 false) 
	#(208 1 #liftFirstValue: 8826886 false) 
	#(266 1 #reduceActionForsimple_type2: 14542861 false) 
	#(208 1 #liftFirstValue: 8826888 false) 
	#(266 1 #reduceActionForsimple_type2: 14542862 false) 
	#(208 1 #liftFirstValue: 8826884 false) 
	#(266 1 #reduceActionForsimple_type2: 14542863 false) 
	#(408 1 #reduceActionForVarType1: 31859713 false) 
	#(636 1 #reduceActionForvoid_type1: 62328833 false) 
	#(378 0 #reduceActionFor_extern_alias_directives1: 28773377 false) 
	#(252 0 #nil 13312001 false) 
	#(464 1 #reduceActionFortype_parameter1: 37399553 false) 
	#(605 1 #reduceActionForliteral2: 58105858 false) 
	#(605 1 #reduceActionForliteral3: 58105859 false) 
	#(605 1 #reduceActionForliteral4: 58105860 false) 
	#(242 1 #reduceActionForinterpolated_regular_string1: 12034049 false) 
	#(248 1 #reduceActionForinterpolated_regular_string1: 12731393 false) 
	#(605 1 #reduceActionForliteral5: 58105861 false) 
	#(605 1 #reduceActionForliteral6: 58105862 false) 
	#(196 1 #liftFirstValue: 7958531 false) 
	#(264 1 #reduceActionForqualified_alias_member_expression1: 14374913 false) 
	#(201 1 #liftFirstValue: 8441857 false) 
	#(212 1 #liftFirstValue: 9274369 false) 
	#(195 1 #liftFirstValue: 7918593 false) 
	#(198 1 #liftFirstValue: 8237057 false) 
	#(215 1 #liftFirstValue: 9466881 false) 
	#(199 1 #liftFirstValue: 8296450 false) 
	#(210 1 #liftFirstValue: 8987649 false) 
	#(201 1 #liftFirstValue: 8441859 false) 
	#(201 1 #liftFirstValue: 8441858 false) 
	#(206 1 #reduceActionForsimple_type2: 8687617 false) 
	#(207 1 #liftFirstValue: 8756225 false) 
	#(207 1 #liftFirstValue: 8756226 false) 
	#(199 1 #liftFirstValue: 8296449 false) 
	#(198 1 #liftFirstValue: 8237058 false) 
	#(211 1 #liftFirstValue: 9101313 false) 
	#(215 1 #liftFirstValue: 9466882 false) 
	#(211 1 #liftFirstValue: 9101314 false) 
	#(308 1 #liftFirstValue: 19456001 false) 
	#(239 1 #liftFirstValue: 11137025 false) 
	#(240 1 #liftFirstValue: 11230210 false) 
	#(241 1 #reduceActionForinterpolated_string_expression1: 11924481 false) 
	#(241 1 #reduceActionForinterpolated_string_expression1: 11924482 false) 
	#(240 1 #liftFirstValue: 11230211 false) 
	#(240 1 #liftFirstValue: 11230212 false) 
	#(240 1 #liftFirstValue: 11230213 false) 
	#(254 1 #liftFirstValue: 13456386 false) 
	#(240 1 #liftFirstValue: 11230214 false) 
	#(265 1 #reduceActionForqualified_alias_member_expression1: 14466049 false) 
	#(240 1 #liftFirstValue: 11230216 false) 
	#(414 1 #liftFirstValue: 32697346 false) 
	#(240 1 #liftFirstValue: 11230217 false) 
	#(240 1 #liftFirstValue: 11230219 false) 
	#(240 1 #liftFirstValue: 11230220 false) 
	#(240 1 #liftFirstValue: 11230221 false) 
	#(414 1 #liftFirstValue: 32697349 false) 
	#(240 1 #liftFirstValue: 11230222 false) 
	#(414 1 #liftFirstValue: 32697350 false) 
	#(240 1 #liftFirstValue: 11230223 false) 
	#(414 1 #liftFirstValue: 32697347 false) 
	#(239 1 #liftFirstValue: 11137026 false) 
	#(240 1 #liftFirstValue: 11230224 false) 
	#(240 1 #liftFirstValue: 11230225 false) 
	#(240 1 #liftFirstValue: 11230226 false) 
	#(240 1 #liftFirstValue: 11230228 false) 
	#(240 1 #liftFirstValue: 11230229 false) 
	#(240 1 #liftFirstValue: 11230230 false) 
	#(240 1 #liftFirstValue: 11230233 false) 
	#(240 1 #liftFirstValue: 11230231 false) 
	#(240 1 #liftFirstValue: 11230215 false) 
	#(414 1 #liftFirstValue: 32697345 false) 
	#(240 1 #liftFirstValue: 11230218 false) 
	#(308 1 #liftFirstValue: 19456006 false) 
	#(414 1 #liftFirstValue: 32697351 false) 
	#(308 1 #liftFirstValue: 19456007 false) 
	#(414 1 #liftFirstValue: 32697352 false) 
	#(308 1 #liftFirstValue: 19456008 false) 
	#(308 1 #liftFirstValue: 19456009 false) 
	#(414 1 #liftFirstValue: 32697353 false) 
	#(240 1 #liftFirstValue: 11230232 false) 
	#(414 1 #liftFirstValue: 32697348 false) 
	#(375 1 #liftFirstValue: 28363779 false) 
	#(376 1 #liftFirstValue: 28446721 false) 
	#(376 1 #liftFirstValue: 28446722 false) 
	#(375 1 #liftFirstValue: 28363777 false) 
	#(375 1 #liftFirstValue: 28363778 false) 
	#(382 1 #liftFirstValue: 29001731 false) 
	#(393 1 #reduceActionForlocal_variable_declaration1: 30458881 false) 
	#(393 1 #liftFirstValue: 30458882 false) 
	#(393 1 #reduceActionForlocal_variable_declaration3: 30458883 false) 
	#(376 1 #liftFirstValue: 28446723 false) 
	#(376 1 #liftFirstValue: 28446724 false) 
	#(415 1 #liftFirstValue: 32972801 false) 
	#(415 1 #liftFirstValue: 32972802 false) 
	#(376 1 #liftFirstValue: 28446725 false) 
	#(425 1 #liftFirstValue: 33829889 false) 
	#(425 1 #liftFirstValue: 33829890 false) 
	#(425 1 #liftFirstValue: 33829891 false) 
	#(425 1 #liftFirstValue: 33829892 false) 
	#(376 1 #liftFirstValue: 28446726 false) 
	#(437 1 #liftFirstValue: 34944001 false) 
	#(437 1 #liftFirstValue: 34944002 false) 
	#(437 1 #liftFirstValue: 34944003 false) 
	#(437 1 #liftFirstValue: 34944004 false) 
	#(437 1 #liftFirstValue: 34944005 false) 
	#(376 1 #liftFirstValue: 28446727 false) 
	#(376 1 #liftFirstValue: 28446728 false) 
	#(376 1 #liftFirstValue: 28446729 false) 
	#(376 1 #liftFirstValue: 28446730 false) 
	#(376 1 #liftFirstValue: 28446731 false) 
	#(376 1 #liftFirstValue: 28446732 false) 
	#(198 1 #liftFirstValue: 8237059 false) 
	#(215 1 #liftFirstValue: 9466884 false) 
	#(240 1 #liftFirstValue: 11230209 false) 
	#(605 1 #reduceActionForliteral1: 58105857 false) 
	#(376 1 #liftFirstValue: 28446733 false) 
	#(198 1 #liftFirstValue: 8237060 false) 
	#(215 1 #liftFirstValue: 9466885 false) 
	#(308 1 #liftFirstValue: 19456010 false) 
	#(240 1 #liftFirstValue: 11230234 false) 
	#(308 1 #liftFirstValue: 19456011 false) 
	#(240 1 #liftFirstValue: 11230227 false) 
	#(376 1 #liftFirstValue: 28446734 false) 
	#(341 0 #nil 25392129 false) 
	#(338 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 24932353 false) 
	#(197 0 #nil 8209409 false) 
	#(345 1 #reduceActionForimplicit_anonymous_function_parameter1: 25916417 false) 
	#(407 1 #liftFirstValue: 31816705 false) 
	#(319 1 #liftFirstValue: 21188609 false) 
	#(320 1 #liftFirstValue: 21536769 false) 
	#(321 1 #liftFirstValue: 21794817 false) 
	#(322 1 #liftFirstValue: 22029313 false) 
	#(323 1 #liftFirstValue: 22714369 false) 
	#(324 1 #liftFirstValue: 22962177 false) 
	#(325 1 #liftFirstValue: 23095297 false) 
	#(326 1 #liftFirstValue: 23236609 false) 
	#(327 1 #liftFirstValue: 23396353 false) 
	#(328 1 #liftFirstValue: 23563265 false) 
	#(329 1 #liftFirstValue: 23734273 false) 
	#(332 1 #liftFirstValue: 24086529 false) 
	#(329 1 #liftFirstValue: 23734275 false) 
	#(372 1 #liftFirstValue: 28140545 false) 
	#(372 1 #liftFirstValue: 28140546 false) 
	#(372 1 #liftFirstValue: 28140547 false) 
	#(335 1 #reduceActionFor_extern_alias_directives2: 24628225 false) 
	#(335 1 #reduceActionFor_extern_alias_directives2: 24628226 false) 
	#(343 1 #reduceActionForimplicit_anonymous_function_signature2: 25561090 false) 
	#(372 1 #liftFirstValue: 28140548 false) 
	#(351 0 #reduceActionFor_query_body_clauses1: 26399745 false) 
	#(371 1 #liftFirstValue: 28080130 false) 
	#(371 1 #liftFirstValue: 28080129 false) 
	#(407 1 #liftFirstValue: 31816706 false) 
	#(479 1 #liftFirstValue: 39385099 false) 
	#(479 1 #liftFirstValue: 39385089 false) 
	#(479 1 #liftFirstValue: 39385090 false) 
	#(479 1 #liftFirstValue: 39385091 false) 
	#(479 1 #liftFirstValue: 39385092 false) 
	#(479 1 #liftFirstValue: 39385093 false) 
	#(479 1 #liftFirstValue: 39385094 false) 
	#(479 1 #liftFirstValue: 39385095 false) 
	#(479 1 #liftFirstValue: 39385096 false) 
	#(479 1 #liftFirstValue: 39385098 false) 
	#(610 0 #nil 58606593 false) 
	#(479 1 #liftFirstValue: 39385097 false) 
	#(581 0 #reduceActionFor_extern_alias_directives1: 55697409 false) 
	#(183 1 #reduceActionFor_extern_alias_directives2: 6788098 false) 
	#(184 1 #reduceActionForextern_alias_directives1: 6833153 false) 
	#(185 1 #liftFirstValue: 6934529 false) 
	#(185 1 #liftFirstValue: 6934530 false) 
	#(185 1 #liftFirstValue: 6934531 false) 
	#(181 2 #reduceActionForextern_alias_directives2: 6588418 false) 
	#(593 1 #liftFirstValue: 56867842 false) 
	#(593 1 #liftFirstValue: 56867841 false) 
	#(593 1 #liftFirstValue: 56867843 false) 
	#(593 1 #liftFirstValue: 56867844 false) 
	#(593 1 #liftFirstValue: 56867845 false) 
	#(593 1 #liftFirstValue: 56867846 false) 
	#(593 1 #liftFirstValue: 56867847 false) 
	#(591 1 #reduceActionFor_extern_alias_directives2: 56728578 false) 
	#(178 1 #reduceActionForqualified_identifier1: 6306817 false) 
	#(609 0 #nil 58562561 false) 
	#(589 2 #reduceActionForextern_alias_directives2: 56386562 false) 
	#(308 2 #reduceActionForunary_expression4: 19456004 false) 
	#(621 2 #reduceActionForunary_expression4: 60684289 false) 
	#(205 1 #reduceActionFortuple_type_element1: 8623105 false) 
	#(257 1 #reduceActionFortuple_element1: 13604865 false) 
	#(619 2 #reduceActionForunary_expression4: 60308481 false) 
	#(308 2 #reduceActionForunary_expression4: 19456002 false) 
	#(315 2 #reduceActionForunary_expression4: 20841473 false) 
	#(308 2 #reduceActionForunary_expression4: 19456003 false) 
	#(316 2 #reduceActionForunary_expression4: 20941825 false) 
	#(318 2 #reduceActionForawait_expression1: 21121025 false) 
	#(438 2 #reduceActionForbreak_statement1: 35062785 false) 
	#(453 2 #reduceActionForchecked_statement1: 36242433 false) 
	#(439 2 #reduceActionForcontinue_statement1: 35102721 false) 
	#(336 1 #liftFirstValue: 24744962 false) 
	#(429 0 #nil 34278401 false) 
	#(219 0 #reduceActionFor_extern_alias_directives1: 9884673 false) 
	#(290 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 17660929 false) 
	#(221 1 #liftFirstValue: 9974785 false) 
	#(288 2 #reduceActionForanonymous_object_creation_expression1: 17449985 false) 
	#(396 2 #reduceActionForref_kind2: 30964738 false) 
	#(370 1 #liftFirstValue: 28034050 false) 
	#(618 1 #liftFirstValue: 60056577 false) 
	#(618 1 #liftFirstValue: 60056578 false) 
	#(446 0 #reduceActionFor_extern_alias_directives1: 35692545 false) 
	#(454 2 #reduceActionForunchecked_statement1: 36296705 false) 
	#(615 2 #reduceActionForunsafe_statement1: 59885569 false) 
	#(379 1 #reduceActionForextern_alias_directives1: 28815361 false) 
	#(378 1 #reduceActionFor_extern_alias_directives2: 28773378 false) 
	#(308 2 #reduceActionForunary_expression4: 19456005 false) 
	#(252 1 #liftFirstValue: 13312002 false) 
	#(196 2 #reduceActionFornamespace_or_type_name1: 7958529 false) 
	#(251 2 #reduceActionForsimple_name1: 13238273 false) 
	#(402 1 #reduceActionForexplicitly_typed_local_variable_declarator1: 31444993 false) 
	#(398 2 #reduceActionForexplicitly_typed_local_variable_declaration1: 31134721 false) 
	#(401 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 31377409 false) 
	#(617 1 #reduceActionForextern_alias_directives1: 60012545 false) 
	#(616 2 #reduceActionForpointer_type1: 59977729 false) 
	#(200 2 #reduceActionFornullable_value_type1: 8361985 false) 
	#(214 2 #reduceActionForarray_type1: 9405441 false) 
	#(217 1 #reduceActionForextern_alias_directives1: 9728001 false) 
	#(236 0 #reduceActionFor_attribute_target_specifier1: 10872833 false) 
	#(233 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 10690561 false) 
	#(272 2 #reduceActionForpost_increment_expression1: 15544321 false) 
	#(273 2 #reduceActionForpost_increment_expression1: 15645697 false) 
	#(369 1 #reduceActionForref_kind1: 27788295 false) 
	#(369 1 #reduceActionForref_kind1: 27788296 false) 
	#(369 1 #reduceActionForref_kind1: 27788293 false) 
	#(369 1 #reduceActionForref_kind1: 27788291 false) 
	#(369 1 #reduceActionForref_kind1: 27788292 false) 
	#(369 1 #reduceActionForref_kind1: 27788294 false) 
	#(369 1 #reduceActionForref_kind1: 27788299 false) 
	#(369 1 #reduceActionForref_kind1: 27788289 false) 
	#(369 1 #reduceActionForref_kind1: 27788300 false) 
	#(369 1 #reduceActionForref_kind1: 27788298 false) 
	#(369 1 #reduceActionForref_kind1: 27788297 false) 
	#(392 1 #reduceActionForref_local_function_body1: 30319617 false) 
	#(383 2 #reduceActionForlocal_function_declaration2: 29166594 false) 
	#(390 1 #liftFirstValue: 30055425 false) 
	#(614 1 #liftFirstValue: 59482113 false) 
	#(385 2 #reduceActionForextern_alias_directives2: 29438978 false) 
	#(390 1 #liftFirstValue: 30055426 false) 
	#(391 1 #reduceActionForref_local_function_body1: 30130177 false) 
	#(383 2 #reduceActionForlocal_function_declaration2: 29166593 false) 
	#(389 1 #liftFirstValue: 29973506 false) 
	#(490 1 #liftFirstValue: 41458689 false) 
	#(387 2 #reduceActionForextern_alias_directives2: 29580290 false) 
	#(389 1 #liftFirstValue: 29973505 false) 
	#(490 1 #liftFirstValue: 41458690 false) 
	#(382 2 #reduceActionFordeclaration_statement1: 29001729 false) 
	#(258 2 #reduceActionFordeconstruction_expression1: 13685761 false) 
	#(394 2 #reduceActionForimplicitly_typed_local_variable_declaration1: 30637057 false) 
	#(382 2 #reduceActionFordeclaration_statement1: 29001730 false) 
	#(413 2 #reduceActionForexpression_statement1: 32625665 false) 
	#(616 2 #reduceActionForpointer_type1: 59977730 false) 
	#(342 1 #liftFirstValue: 25492483 false) 
	#(342 1 #liftFirstValue: 25492482 false) 
	#(342 1 #liftFirstValue: 25492481 false) 
	#(338 1 #reduceActionFor_extern_alias_directives2: 24932354 false) 
	#(339 1 #reduceActionForinterpolated_regular_string1: 25033729 false) 
	#(341 1 #liftFirstValue: 25392130 false) 
	#(344 1 #reduceActionForinterpolated_regular_string1: 25712641 false) 
	#(197 1 #liftFirstValue: 8209410 false) 
	#(330 2 #reduceActionForthrow_expression1: 23925761 false) 
	#(353 1 #reduceActionForquery_body_clause1: 26534913 false) 
	#(348 2 #reduceActionForquery_expression1: 26190849 false) 
	#(351 1 #reduceActionFor_extern_alias_directives2: 26399746 false) 
	#(352 1 #reduceActionForquery_body_clauses1: 26449921 false) 
	#(353 1 #reduceActionForquery_body_clause2: 26534914 false) 
	#(353 1 #reduceActionForquery_body_clause3: 26534915 false) 
	#(353 1 #reduceActionForquery_body_clause4: 26534916 false) 
	#(353 1 #reduceActionForquery_body_clause5: 26534917 false) 
	#(353 1 #reduceActionForquery_body_clause6: 26534918 false) 
	#(331 2 #reduceActionFordeclaration_expression1: 24003585 false) 
	#(494 1 #reduceActionForref_method_body3: 41780227 false) 
	#(494 1 #reduceActionForref_local_function_body1: 41780225 false) 
	#(487 2 #reduceActionFormethod_declaration2: 40687618 false) 
	#(493 1 #reduceActionForref_method_body3: 41617412 false) 
	#(493 1 #reduceActionForref_local_function_body1: 41617409 false) 
	#(487 2 #reduceActionFormethod_declaration2: 40687617 false) 
	#(637 1 #liftFirstValue: 62357510 false) 
	#(637 1 #liftFirstValue: 62357515 false) 
	#(637 1 #liftFirstValue: 62357519 false) 
	#(610 1 #liftFirstValue: 58606594 false) 
	#(637 1 #liftFirstValue: 62357508 false) 
	#(637 1 #liftFirstValue: 62357505 false) 
	#(637 1 #liftFirstValue: 62357518 false) 
	#(637 1 #liftFirstValue: 62357509 false) 
	#(637 1 #liftFirstValue: 62357507 false) 
	#(637 1 #liftFirstValue: 62357506 false) 
	#(637 1 #liftFirstValue: 62357513 false) 
	#(637 1 #liftFirstValue: 62357511 false) 
	#(637 1 #liftFirstValue: 62357512 false) 
	#(543 1 #reduceActionForstatic_constructor_modifiers1: 48500737 false) 
	#(637 1 #liftFirstValue: 62357516 false) 
	#(637 1 #liftFirstValue: 62357514 false) 
	#(637 1 #liftFirstValue: 62357520 false) 
	#(529 1 #reduceActionForextern_alias_directives1: 46485505 false) 
	#(194 1 #liftFirstValue: 7873537 false) 
	#(189 0 #reduceActionFor_extern_alias_directives1: 7299073 false) 
	#(581 1 #reduceActionFor_extern_alias_directives2: 55697410 false) 
	#(582 1 #reduceActionFor_extern_alias_directives2: 55744513 false) 
	#(583 1 #reduceActionForextern_alias_directives1: 55795713 false) 
	#(184 2 #reduceActionForextern_alias_directives2: 6833154 false) 
	#(596 1 #liftFirstValue: 57191425 false) 
	#(594 1 #reduceActionForinterpolated_regular_string1: 57004033 false) 
	#(597 0 #reduceActionFor_attribute_arguments1: 57223169 false) 
	#(592 2 #reduceActionForref_kind2: 56795137 false) 
	#(607 0 #nil 58505217 false) 
	#(609 1 #liftFirstValue: 58562562 false) 
	#(460 2 #reduceActionForextern_alias_directives2: 36809730 false) 
	#(205 2 #reduceActionFortuple_type_element2: 8623106 false) 
	#(204 1 #reduceActionFor_____tuple_type_element__element___1: 8560641 false) 
	#(256 1 #reduceActionFor_____tuple_type_element__element___1: 13517825 false) 
	#(253 3 #reduceActionForparenthesized_expression1: 13362177 false) 
	#(269 1 #reduceActionForinterpolated_regular_string1: 15280129 false) 
	#(410 3 #reduceActionForlocal_constant_declaration1: 32329729 false) 
	#(411 1 #reduceActionForinterpolated_regular_string1: 32407553 false) 
	#(334 3 #reduceActionForanonymous_method_expression1: 24501249 false) 
	#(430 1 #liftFirstValue: 34336769 false) 
	#(435 1 #reduceActionForinterpolated_regular_string1: 34639873 false) 
	#(429 1 #liftFirstValue: 34278402 false) 
	#(430 1 #reduceActionForfor_initializer2: 34336770 false) 
	#(373 1 #liftFirstValue: 28268545 false) 
	#(440 3 #reduceActionForgoto_statement3: 35148803 false) 
	#(440 3 #reduceActionForgoto_statement1: 35148801 false) 
	#(374 1 #liftFirstValue: 28306433 false) 
	#(307 1 #reduceActionFornamed_entity_target3: 19292163 false) 
	#(307 1 #reduceActionForthis_access1: 19292162 false) 
	#(307 1 #liftFirstValue: 19292161 false) 
	#(307 1 #liftFirstValue: 19292165 false) 
	#(307 1 #liftFirstValue: 19292164 false) 
	#(306 0 #reduceActionFor______Identifier___type_argument_list__typeArguments___1: 19226625 false) 
	#(220 1 #reduceActionForextern_alias_directives1: 9926657 false) 
	#(219 1 #reduceActionFor_extern_alias_directives2: 9884674 false) 
	#(292 1 #reduceActionFormember_declarator1: 17843201 false) 
	#(292 1 #reduceActionFormember_declarator2: 17843202 false) 
	#(292 1 #reduceActionFormember_declarator2: 17843204 false) 
	#(290 1 #reduceActionFor_extern_alias_directives2: 17660930 false) 
	#(291 1 #reduceActionForinterpolated_regular_string1: 17719297 false) 
	#(292 1 #reduceActionFormember_declarator2: 17843203 false) 
	#(278 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 16243713 false) 
	#(274 3 #reduceActionForobject_creation_expression2: 15747074 false) 
	#(276 1 #liftFirstValue: 16029697 false) 
	#(276 1 #liftFirstValue: 16029698 false) 
	#(554 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 50350081 false) 
	#(286 3 #reduceActionForarray_creation_expression2: 17046530 false) 
	#(286 3 #reduceActionForarray_creation_expression3: 17046531 false) 
	#(441 3 #reduceActionForreturn_statement2: 35290114 false) 
	#(225 1 #liftFirstValue: 10212353 false) 
	#(441 3 #reduceActionForreturn_statement1: 35290113 false) 
	#(442 3 #reduceActionForthrow_statement1: 35400705 false) 
	#(443 3 #reduceActionFortry_statement1: 35452929 false) 
	#(444 1 #reduceActionFor_extern_alias_directives2: 35636225 false) 
	#(445 1 #reduceActionForextern_alias_directives1: 35653633 false) 
	#(443 3 #reduceActionFortry_statement2: 35452930 false) 
	#(295 0 #reduceActionFor_generic_dimension_specifier1: 18434049 false) 
	#(457 1 #liftFirstValue: 36563970 false) 
	#(457 1 #liftFirstValue: 36563969 false) 
	#(458 3 #reduceActionForyield_statement2: 36633602 false) 
	#(377 3 #reduceActionForblock1: 28707841 false) 
	#(379 2 #reduceActionForextern_alias_directives2: 28815362 false) 
	#(381 3 #reduceActionForlabeled_statement1: 28932097 false) 
	#(224 1 #liftFirstValue: 10167297 false) 
	#(223 1 #reduceActionForinterpolated_regular_string1: 10080257 false) 
	#(399 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31271937 false) 
	#(617 2 #reduceActionForextern_alias_directives2: 60012546 false) 
	#(217 2 #reduceActionForextern_alias_directives2: 9728002 false) 
	#(233 1 #reduceActionFor_extern_alias_directives2: 10690562 false) 
	#(234 1 #reduceActionForinterpolated_regular_string1: 10738689 false) 
	#(236 1 #reduceActionFor_extern_alias_directives2: 10872834 false) 
	#(244 1 #reduceActionForinterpolated_regular_string1: 12322817 false) 
	#(247 0 #reduceActionForScanFormat1: 12695553 true) 
	#(245 1 #reduceActionForinterpolation1: 12506113 false) 
	#(250 1 #reduceActionForinterpolated_regular_string1: 13051905 false) 
	#(369 2 #reduceActionForref_kind2: 27788290 false) 
	#(368 3 #reduceActionForassignment1: 27704321 false) 
	#(491 1 #liftFirstValue: 41495553 false) 
	#(386 3 #reduceActionForLocalFunctionHeader1: 29556737 false) 
	#(406 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 31762433 false) 
	#(403 3 #reduceActionForref_local_variable_declaration1: 31592449 false) 
	#(394 3 #reduceActionForimplicitly_typed_local_variable_declaration2: 30637058 false) 
	#(262 1 #reduceActionFordeconstruction_element2: 13910018 false) 
	#(262 1 #liftFirstValue: 13910017 false) 
	#(337 3 #reduceActionForexplicit_anonymous_function_signature1: 24833025 false) 
	#(343 3 #reduceActionForexplicit_anonymous_function_signature1: 25561089 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 21188612 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 21188610 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 21188611 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 21536770 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 21536771 false) 
	#(321 3 #reduceActionFormultiplicative_expression4: 21794818 false) 
	#(321 3 #reduceActionFormultiplicative_expression4: 21794819 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22029314 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22029316 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22029317 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22029320 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22029318 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22029319 false) 
	#(226 1 #liftFirstValue: 10249219 false) 
	#(226 1 #liftFirstValue: 10249218 false) 
	#(226 1 #liftFirstValue: 10249217 false) 
	#(229 1 #liftFirstValue: 10430465 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22029315 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22714371 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22714370 false) 
	#(324 3 #reduceActionFormultiplicative_expression4: 22962178 false) 
	#(325 3 #reduceActionFormultiplicative_expression4: 23095298 false) 
	#(326 3 #reduceActionFormultiplicative_expression4: 23236610 false) 
	#(327 3 #reduceActionFormultiplicative_expression4: 23396354 false) 
	#(329 3 #reduceActionFormultiplicative_expression4: 23734274 false) 
	#(328 3 #reduceActionFormultiplicative_expression4: 23563266 false) 
	#(346 1 #liftFirstValue: 26013697 false) 
	#(333 3 #reduceActionForlambda_expression1: 24395777 false) 
	#(346 1 #liftFirstValue: 26013699 false) 
	#(346 1 #liftFirstValue: 26013698 false) 
	#(346 1 #liftFirstValue: 26013700 false) 
	#(358 2 #reduceActionFororderby_clause1: 27128833 false) 
	#(359 1 #reduceActionFororderings1: 27170817 false) 
	#(361 0 #reduceActionFor_attribute_target_specifier1: 27283457 false) 
	#(355 2 #reduceActionForref_kind2: 26722305 false) 
	#(366 0 #reduceActionFor_query_continuation1: 27596801 false) 
	#(363 1 #reduceActionForselect_or_group_clause1: 27387905 false) 
	#(363 1 #reduceActionForselect_or_group_clause2: 27387906 false) 
	#(352 2 #reduceActionForquery_body_clauses2: 26449922 false) 
	#(543 2 #reduceActionForstatic_constructor_modifiers5: 48500741 false) 
	#(543 2 #reduceActionForstatic_constructor_modifiers2: 48500738 false) 
	#(530 1 #reduceActionForoperator_declarator1: 46643201 false) 
	#(530 1 #reduceActionForoperator_declarator2: 46643202 false) 
	#(530 1 #reduceActionForoperator_declarator3: 46643203 false) 
	#(529 2 #reduceActionForextern_alias_directives2: 46485506 false) 
	#(182 4 #reduceActionForextern_alias_directive1: 6718465 false) 
	#(187 3 #reduceActionForusing_namespace_directive1: 7142401 false) 
	#(586 1 #liftFirstValue: 56272897 false) 
	#(176 4 #reduceActionForcompilation_unit1: 6075393 false) 
	#(189 1 #reduceActionFor_extern_alias_directives2: 7299074 false) 
	#(190 1 #reduceActionForextern_alias_directives1: 7371777 false) 
	#(583 2 #reduceActionForextern_alias_directives2: 55795714 false) 
	#(590 4 #reduceActionForattribute_section1: 56496129 false) 
	#(599 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 57515009 false) 
	#(595 2 #reduceActionForattribute1: 57111553 false) 
	#(597 1 #reduceActionFor_attribute_arguments2: 57223170 false) 
	#(178 3 #reduceActionForqualified_identifier2: 6306818 false) 
	#(607 1 #liftFirstValue: 58505218 false) 
	#(177 4 #reduceActionFornamespace_declaration1: 6199297 false) 
	#(572 0 #reduceActionFor_attribute_target_specifier1: 54193153 false) 
	#(257 3 #reduceActionFortuple_element2: 13604866 false) 
	#(317 4 #reduceActionForcast_expression1: 21042177 false) 
	#(203 2 #reduceActionForref_kind2: 8560641 false) 
	#(202 4 #reduceActionFortuple_type1: 8500225 false) 
	#(204 2 #reduceActionFor_____tuple_type_element__element___2: 8560642 false) 
	#(255 2 #reduceActionForref_kind2: 13517825 false) 
	#(254 4 #reduceActionFortuple_expression1: 13456385 false) 
	#(256 2 #reduceActionFor_____tuple_type_element__element___2: 13517826 false) 
	#(334 4 #reduceActionForanonymous_method_expression2: 24501250 false) 
	#(271 4 #reduceActionForbase_access1: 15406081 false) 
	#(271 4 #reduceActionForbase_access2: 15406082 false) 
	#(299 4 #reduceActionForchecked_expression1: 18628609 false) 
	#(301 4 #reduceActionFordefault_value_expression2: 18780162 false) 
	#(624 1 #reduceActionForinterpolated_regular_string1: 61014017 false) 
	#(431 0 #nil 34435073 false) 
	#(440 4 #reduceActionForgoto_statement2: 35148802 false) 
	#(303 4 #reduceActionFornameof_expression1: 19112961 false) 
	#(304 2 #reduceActionFornamed_entity1: 19180545 false) 
	#(218 3 #reduceActionForrank_specifier1: 9833473 false) 
	#(220 2 #reduceActionForextern_alias_directives2: 9926658 false) 
	#(289 3 #reduceActionForexplicit_anonymous_function_signature1: 17534977 false) 
	#(281 1 #reduceActionForinitializer_target1: 16515073 false) 
	#(278 1 #reduceActionFor_extern_alias_directives2: 16243714 false) 
	#(279 1 #reduceActionForinterpolated_regular_string1: 16304129 false) 
	#(284 1 #reduceActionForinterpolated_regular_string1: 16798721 false) 
	#(285 1 #reduceActionForelement_initializer1: 16932865 false) 
	#(486 1 #liftFirstValue: 40627201 false) 
	#(555 1 #reduceActionForinterpolated_regular_string1: 50413569 false) 
	#(486 1 #liftFirstValue: 40627202 false) 
	#(554 1 #reduceActionFor_extern_alias_directives2: 50350082 false) 
	#(622 4 #reduceActionForsizeof_expression1: 60779521 false) 
	#(449 0 #nil 35993601 false) 
	#(452 2 #reduceActionForfinally_clause1: 36191233 false) 
	#(443 4 #reduceActionFortry_statement3: 35452931 false) 
	#(445 2 #reduceActionForextern_alias_directives2: 35653634 false) 
	#(446 2 #reduceActionForextern_alias_directives2: 35692546 false) 
	#(444 2 #reduceActionForextern_alias_directives2: 35636226 false) 
	#(297 0 #reduceActionFor_extern_alias_directives1: 18554881 false) 
	#(294 2 #reduceActionForunbound_type_name1: 18210817 false) 
	#(295 1 #reduceActionFor_extern_alias_directives2: 18434050 false) 
	#(293 4 #reduceActionFortypeof_expression1: 18057217 false) 
	#(293 4 #reduceActionFortypeof_expression1: 18057218 false) 
	#(293 4 #reduceActionFortypeof_expression1: 18057219 false) 
	#(300 4 #reduceActionForunchecked_expression1: 18702337 false) 
	#(458 4 #reduceActionForyield_statement1: 36633601 false) 
	#(193 4 #reduceActionForqualified_alias_member1: 7744513 false) 
	#(222 3 #reduceActionFortype_argument_list1: 10005505 false) 
	#(196 4 #reduceActionFornamespace_or_type_name2: 7958530 false) 
	#(409 1 #liftFirstValue: 32263169 false) 
	#(402 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31444994 false) 
	#(409 1 #liftFirstValue: 32263170 false) 
	#(409 1 #liftFirstValue: 32263171 false) 
	#(401 2 #reduceActionFor_____tuple_type_element__element___2: 31377410 false) 
	#(237 2 #reduceActionForref_kind2: 10911745 false) 
	#(267 4 #reduceActionForinvocation_expression1: 15083521 false) 
	#(235 2 #reduceActionForargument1: 10821633 false) 
	#(238 1 #reduceActionForargument_value1: 10962945 false) 
	#(620 4 #reduceActionForpointer_member_access1: 60413953 false) 
	#(263 4 #reduceActionFormember_access1: 14008321 false) 
	#(268 4 #reduceActionForelement_access1: 15173633 false) 
	#(242 4 #reduceActionForinterpolated_regular_string2: 12034050 false) 
	#(245 2 #reduceActionForinterpolation2: 12506114 false) 
	#(248 4 #reduceActionForinterpolated_regular_string2: 12731394 false) 
	#(263 4 #reduceActionFormember_access1: 14008323 false) 
	#(263 4 #reduceActionFormember_access1: 14008322 false) 
	#(313 4 #reduceActionForinvocation_expression1: 20461569 false) 
	#(313 4 #reduceActionForinvocation_expression1: 20461570 false) 
	#(384 4 #reduceActionForRefLocalFunctionHeader1: 29412353 false) 
	#(391 3 #reduceActionForlocal_function_body2: 30130178 false) 
	#(391 3 #reduceActionForlocal_function_body2: 30130179 false) 
	#(495 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 41921537 false) 
	#(404 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31683585 false) 
	#(261 1 #reduceActionFor_____tuple_type_element__element___1: 13843457 false) 
	#(397 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31006721 false) 
	#(339 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25033730 false) 
	#(340 3 #reduceActionForexplicit_anonymous_function_paramenter1: 25241601 false) 
	#(344 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25712642 false) 
	#(333 4 #reduceActionForlambda_expression2: 24395778 false) 
	#(232 1 #liftFirstValue: 10613761 false) 
	#(230 2 #reduceActionFordeclaration_expression1: 10474497 false) 
	#(231 1 #liftFirstValue: 10559489 false) 
	#(227 2 #reduceActionFordeclaration_expression1: 10319873 false) 
	#(228 1 #liftFirstValue: 10392577 false) 
	#(347 2 #reduceActionForRefExpression1: 26126337 false) 
	#(362 1 #reduceActionForref_kind1: 27333633 false) 
	#(362 1 #reduceActionForordering_direction2: 27333634 false) 
	#(360 2 #reduceActionForordering1: 27223041 false) 
	#(361 1 #reduceActionFor_extern_alias_directives2: 27283458 false) 
	#(364 2 #reduceActionForref_kind2: 27448321 false) 
	#(350 3 #reduceActionForquery_body1: 26317825 false) 
	#(366 1 #reduceActionFor_extern_alias_directives2: 27596802 false) 
	#(493 3 #reduceActionForlocal_function_body2: 41617410 false) 
	#(493 3 #reduceActionForlocal_function_body2: 41617411 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers6: 48500742 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers7: 48500743 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers3: 48500739 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers3: 48500740 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers3: 48500749 false) 
	#(485 1 #reduceActionForvariable_declarator1: 40520705 false) 
	#(492 1 #reduceActionFormember_name1: 41523201 false) 
	#(213 1 #liftFirstValue: 9373697 false) 
	#(484 1 #reduceActionForinterpolated_regular_string1: 40396801 false) 
	#(524 4 #reduceActionForindexer_declaration1: 45605889 false) 
	#(541 1 #reduceActionForref_method_body3: 48206851 false) 
	#(541 1 #reduceActionForref_local_function_body1: 48206849 false) 
	#(537 4 #reduceActionForconstructor_declaration1: 47651841 false) 
	#(536 1 #reduceActionForref_method_body3: 47526915 false) 
	#(536 1 #reduceActionForref_local_function_body1: 47526913 false) 
	#(528 4 #reduceActionForoperator_declaration1: 46425089 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers7: 48500745 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers6: 48500744 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers6: 48500753 false) 
	#(188 4 #reduceActionForusing_static_directive1: 7220225 false) 
	#(585 2 #reduceActionForref_kind2: 56185857 false) 
	#(190 2 #reduceActionForextern_alias_directives2: 7371778 false) 
	#(590 5 #reduceActionForattribute_section2: 56496130 false) 
	#(594 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 57004034 false) 
	#(599 1 #reduceActionFor_extern_alias_directives2: 57515010 false) 
	#(600 1 #reduceActionForinterpolated_regular_string1: 57576449 false) 
	#(602 1 #reduceActionForinterpolated_regular_string1: 57811969 false) 
	#(579 5 #reduceActionFordelegate_declaration1: 54961153 false) 
	#(572 1 #reduceActionFor_extern_alias_directives2: 54193154 false) 
	#(461 0 #nil 37121025 false) 
	#(557 0 #nil 51010561 false) 
	#(269 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 15280130 false) 
	#(412 3 #reduceActionForconst_declarator1: 32520193 false) 
	#(411 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 32407554 false) 
	#(432 1 #liftFirstValue: 34486273 false) 
	#(431 1 #liftFirstValue: 34435074 false) 
	#(435 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 34639874 false) 
	#(416 5 #reduceActionForif_statement1: 33033217 false) 
	#(455 5 #reduceActionForlock_statement1: 36355073 false) 
	#(306 2 #reduceActionFor______Identifier___type_argument_list__typeArguments___2: 19226626 false) 
	#(292 3 #reduceActionFormember_declarator5: 17843205 false) 
	#(289 4 #reduceActionForanonymous_object_initializer2: 17534978 false) 
	#(291 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 17719298 false) 
	#(275 0 #nil 15951873 false) 
	#(277 3 #reduceActionForobject_initializer1: 16115713 false) 
	#(283 3 #reduceActionForcollection_initializer1: 16665601 false) 
	#(553 3 #reduceActionForarray_initializer1: 50219009 false) 
	#(216 0 #reduceActionFor_extern_alias_directives1: 9683969 false) 
	#(287 5 #reduceActionFordelegate_creation_expression1: 17348609 false) 
	#(302 5 #reduceActionForstackalloc_expression1: 18850817 false) 
	#(419 0 #reduceActionFor_extern_alias_directives1: 33411073 false) 
	#(417 5 #reduceActionForswitch_statement1: 33272833 false) 
	#(611 0 #nil 58644481 false) 
	#(449 1 #liftFirstValue: 35993602 false) 
	#(447 3 #reduceActionForspecific_catch_clause2: 35759106 false) 
	#(451 2 #reduceActionForgeneral_catch_clause1: 36124673 false) 
	#(298 1 #reduceActionForextern_alias_directives1: 18580481 false) 
	#(297 1 #reduceActionFor_extern_alias_directives2: 18554882 false) 
	#(456 5 #reduceActionForusing_statement1: 36453377 false) 
	#(426 5 #reduceActionForwhile_statement1: 33928193 false) 
	#(223 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 10080258 false) 
	#(635 1 #liftFirstValue: 62253057 false) 
	#(634 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 62211073 false) 
	#(400 2 #reduceActionForref_kind2: 31377409 false) 
	#(234 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 10738690 false) 
	#(238 2 #reduceActionForargument_value2: 10962946 false) 
	#(238 2 #reduceActionForargument_value4: 10962948 false) 
	#(238 2 #reduceActionForargument_value3: 10962947 false) 
	#(310 0 #reduceActionFor_extern_alias_directives1: 20004865 false) 
	#(314 5 #reduceActionFornull_conditional_element_access1: 20700161 false) 
	#(244 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 12322818 false) 
	#(245 3 #reduceActionForinterpolation3: 12506115 false) 
	#(246 2 #reduceActionForref_kind2: 12625921 false) 
	#(250 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 13051906 false) 
	#(392 4 #reduceActionForref_local_function_body2: 30319618 false) 
	#(495 1 #reduceActionFor_extern_alias_directives2: 41921538 false) 
	#(496 1 #reduceActionFor_extern_alias_directives2: 41979905 false) 
	#(497 1 #reduceActionForinterpolated_regular_string1: 42120193 false) 
	#(496 1 #reduceActionForinterpolated_regular_string1: 41979907 false) 
	#(501 0 #nil 42457089 false) 
	#(406 2 #reduceActionFor_____tuple_type_element__element___2: 31762434 false) 
	#(260 2 #reduceActionForref_kind2: 13843457 false) 
	#(259 4 #reduceActionFordeconstruction_tuple1: 13768705 false) 
	#(261 2 #reduceActionFor_____tuple_type_element__element___2: 13843458 false) 
	#(349 5 #reduceActionForfrom_clause1: 26243073 false) 
	#(332 5 #reduceActionForconditional_expression3: 24086531 false) 
	#(332 5 #reduceActionForconditional_expression3: 24086530 false) 
	#(354 4 #reduceActionForlet_clause1: 26656769 false) 
	#(359 3 #reduceActionFororderings2: 27170818 false) 
	#(494 4 #reduceActionForref_method_body2: 41780226 false) 
	#(481 1 #reduceActionForinterpolated_regular_string1: 39915521 false) 
	#(483 5 #reduceActionForfield_declaration1: 40122369 false) 
	#(505 5 #reduceActionForproperty_declaration1: 42749953 false) 
	#(524 5 #reduceActionForindexer_declaration2: 45605890 false) 
	#(513 0 #nil 43980801 false) 
	#(511 0 #nil 43829249 false) 
	#(515 0 #reduceActionFor_extern_alias_directives1: 44132353 false) 
	#(532 1 #liftFirstValue: 46901251 false) 
	#(534 1 #liftFirstValue: 47173644 false) 
	#(534 1 #liftFirstValue: 47173637 false) 
	#(534 1 #liftFirstValue: 47173638 false) 
	#(534 1 #liftFirstValue: 47173635 false) 
	#(534 1 #liftFirstValue: 47173633 false) 
	#(532 1 #liftFirstValue: 46901249 false) 
	#(532 1 #liftFirstValue: 46901253 false) 
	#(532 1 #liftFirstValue: 46901250 false) 
	#(534 1 #liftFirstValue: 47173634 false) 
	#(532 1 #liftFirstValue: 46901254 false) 
	#(534 1 #liftFirstValue: 47173636 false) 
	#(534 1 #liftFirstValue: 47173646 false) 
	#(534 1 #liftFirstValue: 47173641 false) 
	#(534 1 #liftFirstValue: 47173648 false) 
	#(534 1 #liftFirstValue: 47173643 false) 
	#(534 1 #liftFirstValue: 47173647 false) 
	#(534 1 #liftFirstValue: 47173640 false) 
	#(532 1 #liftFirstValue: 46901256 false) 
	#(532 1 #liftFirstValue: 46901255 false) 
	#(534 1 #liftFirstValue: 47173639 false) 
	#(532 1 #liftFirstValue: 46901252 false) 
	#(534 1 #liftFirstValue: 47173645 false) 
	#(534 1 #liftFirstValue: 47173642 false) 
	#(186 5 #reduceActionForusing_alias_directive1: 7035905 false) 
	#(584 4 #reduceActionForattribute_section1: 55933953 false) 
	#(604 1 #liftFirstValue: 58039297 false) 
	#(601 2 #reduceActionForpositional_argument1: 57712641 false) 
	#(598 3 #reduceActionForexplicit_anonymous_function_signature1: 57275393 false) 
	#(598 3 #reduceActionForexplicit_anonymous_function_signature1: 57275395 false) 
	#(579 6 #reduceActionFordelegate_declaration2: 54961154 false) 
	#(574 1 #liftFirstValue: 54309889 false) 
	#(573 2 #reduceActionForref_kind2: 54223873 false) 
	#(573 2 #reduceActionForref_kind2: 54223874 false) 
	#(576 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 54600705 false) 
	#(465 0 #reduceActionFor_class_base1: 37455873 false) 
	#(461 1 #liftFirstValue: 37121026 false) 
	#(562 0 #reduceActionFor_interface_base1: 51485697 false) 
	#(557 1 #liftFirstValue: 51010562 false) 
	#(546 0 #reduceActionFor_interface_base1: 49472513 false) 
	#(626 1 #reduceActionForordering_direction2: 61239298 false) 
	#(625 3 #reduceActionForfixed_pointer_declarator1: 61158401 false) 
	#(623 6 #reduceActionForfixed_statement1: 60891137 false) 
	#(624 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 61014018 false) 
	#(433 0 #nil 34526209 false) 
	#(274 6 #reduceActionForobject_creation_expression1: 15747073 false) 
	#(275 1 #liftFirstValue: 15951874 false) 
	#(281 3 #reduceActionForinitializer_target2: 16515074 false) 
	#(285 3 #reduceActionForelement_initializer2: 16932866 false) 
	#(277 4 #reduceActionForobject_initializer2: 16115714 false) 
	#(279 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 16304130 false) 
	#(282 1 #liftFirstValue: 16592898 false) 
	#(280 3 #reduceActionFormember_initializer1: 16434177 false) 
	#(282 1 #liftFirstValue: 16592897 false) 
	#(283 4 #reduceActionForcollection_initializer2: 16665602 false) 
	#(284 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 16798722 false) 
	#(553 4 #reduceActionForarray_initializer2: 50219010 false) 
	#(555 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 50413570 false) 
	#(552 0 #nil 50171905 false) 
	#(216 1 #reduceActionFor_extern_alias_directives2: 9683970 false) 
	#(302 6 #reduceActionForstackalloc_expression2: 18850818 false) 
	#(419 1 #reduceActionFor_extern_alias_directives2: 33411074 false) 
	#(420 1 #reduceActionForextern_alias_directives1: 33454081 false) 
	#(422 1 #reduceActionForextern_alias_directives1: 33603585 false) 
	#(611 1 #liftFirstValue: 58644482 false) 
	#(447 4 #reduceActionForspecific_catch_clause1: 35759105 false) 
	#(294 4 #reduceActionForunbound_type_name2: 18210818 false) 
	#(296 3 #reduceActionForgeneric_dimension_specifier1: 18502657 false) 
	#(298 2 #reduceActionForextern_alias_directives2: 18580482 false) 
	#(294 4 #reduceActionForunbound_type_name3: 18210819 false) 
	#(631 3 #reduceActionForexplicit_anonymous_function_signature1: 62029825 false) 
	#(632 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 62139393 false) 
	#(309 6 #reduceActionFornull_conditional_member_access1: 19878913 false) 
	#(245 4 #reduceActionForinterpolation4: 12506116 false) 
	#(388 4 #reduceActionForlocal_function_header1: 29674497 false) 
	#(503 1 #liftFirstValue: 42577923 false) 
	#(503 1 #liftFirstValue: 42577922 false) 
	#(503 1 #liftFirstValue: 42577921 false) 
	#(502 1 #liftFirstValue: 42517506 false) 
	#(501 1 #liftFirstValue: 42457090 false) 
	#(502 1 #liftFirstValue: 42517505 false) 
	#(462 3 #reduceActionFortype_parameter_list1: 37190657 false) 
	#(463 2 #reduceActionFortype_parameters1: 37273601 false) 
	#(395 4 #reduceActionForref_local_variable_declarator1: 30835713 false) 
	#(405 2 #reduceActionForref_kind2: 31762433 false) 
	#(365 4 #reduceActionForlet_clause1: 27502593 false) 
	#(367 3 #reduceActionForquery_continuation1: 27646977 false) 
	#(480 6 #reduceActionForconstant_declaration1: 39685121 false) 
	#(520 6 #reduceActionForevent_declaration1: 44771329 false) 
	#(539 0 #nil 48018433 false) 
	#(485 3 #reduceActionForvariable_declarator2: 40520706 false) 
	#(492 3 #reduceActionFormember_name2: 41523202 false) 
	#(484 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 40396802 false) 
	#(505 6 #reduceActionForproperty_declaration2: 42749954 false) 
	#(526 3 #reduceActionForindexer_body2: 46192642 false) 
	#(526 3 #reduceActionForindexer_body1: 46192641 false) 
	#(510 2 #reduceActionForref_kind2: 43635713 false) 
	#(513 1 #liftFirstValue: 43980802 false) 
	#(510 2 #reduceActionForaccessor_declarations2: 43635714 false) 
	#(511 1 #liftFirstValue: 43829250 false) 
	#(516 1 #reduceActionForextern_alias_directives1: 44181506 false) 
	#(516 1 #reduceActionForextern_alias_directives1: 44181507 false) 
	#(516 1 #reduceActionForextern_alias_directives1: 44181505 false) 
	#(515 1 #reduceActionFor_extern_alias_directives2: 44132354 false) 
	#(541 3 #reduceActionForlocal_function_body2: 48206850 false) 
	#(536 3 #reduceActionForlocal_function_body2: 47526914 false) 
	#(544 1 #reduceActionForstatic_constructor_body3: 48842755 false) 
	#(544 1 #reduceActionForargument_value1: 48842753 false) 
	#(542 6 #reduceActionForstatic_constructor_declaration1: 48334849 false) 
	#(584 5 #reduceActionForattribute_section2: 55933954 false) 
	#(603 3 #reduceActionFornamed_argument1: 57927681 false) 
	#(600 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 57576450 false) 
	#(602 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 57811970 false) 
	#(179 5 #reduceActionFornamespace_body1: 6414337 false) 
	#(560 0 #nil 51380225 false) 
	#(576 1 #reduceActionFor_extern_alias_directives2: 54600706 false) 
	#(577 1 #reduceActionForinterpolated_regular_string1: 54662145 false) 
	#(571 7 #reduceActionForenum_declaration1: 54034433 false) 
	#(468 0 #reduceActionFor_extern_alias_directives1: 37760001 false) 
	#(465 1 #reduceActionFor_extern_alias_directives2: 37455874 false) 
	#(562 1 #reduceActionFor_extern_alias_directives2: 51485698 false) 
	#(546 1 #reduceActionFor_extern_alias_directives2: 49472514 false) 
	#(427 7 #reduceActionFordo_statement1: 34036737 false) 
	#(626 2 #reduceActionForref_kind2: 61239297 false) 
	#(433 1 #liftFirstValue: 34526210 false) 
	#(434 1 #reduceActionForfor_initializer2: 34575361 false) 
	#(416 7 #reduceActionForif_statement2: 33033218 false) 
	#(305 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 19226625 false) 
	#(312 5 #reduceActionFornull_conditional_projection_initializer1: 20290561 false) 
	#(286 7 #reduceActionForarray_creation_expression1: 17046529 false) 
	#(552 1 #liftFirstValue: 50171906 false) 
	#(423 2 #reduceActionForswitch_label3: 33684483 false) 
	#(418 3 #reduceActionForgeneric_dimension_specifier1: 33356801 false) 
	#(420 2 #reduceActionForextern_alias_directives2: 33454082 false) 
	#(421 2 #reduceActionForswitch_section1: 33547265 false) 
	#(422 2 #reduceActionForextern_alias_directives2: 33603586 false) 
	#(448 4 #reduceActionForlet_clause1: 35934209 false) 
	#(450 4 #reduceActionForexception_filter1: 36047873 false) 
	#(634 2 #reduceActionFor_____tuple_type_element__element___2: 62211074 false) 
	#(310 2 #reduceActionForextern_alias_directives2: 20004866 false) 
	#(497 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 42120194 false) 
	#(496 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 41979906 false) 
	#(482 3 #reduceActionForconstant_declarator1: 40039425 false) 
	#(481 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 39915522 false) 
	#(538 5 #reduceActionForconstructor_declarator1: 47917057 false) 
	#(539 1 #liftFirstValue: 48018434 false) 
	#(525 5 #reduceActionForindexer_declarator1: 46022657 false) 
	#(506 3 #reduceActionForproperty_body2: 43195394 false) 
	#(507 0 #reduceActionFor_property_initializer1: 43327489 false) 
	#(527 3 #reduceActionForref_indexer_body1: 46288897 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44181509 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44181511 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44181508 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44181510 false) 
	#(613 1 #reduceActionForref_method_body3: 59356163 false) 
	#(613 1 #reduceActionForref_local_function_body1: 59356161 false) 
	#(612 7 #reduceActionForfinalizer_declaration1: 59071489 false) 
	#(598 5 #reduceActionForattribute_arguments2: 57275394 false) 
	#(558 3 #reduceActionForvariant_type_parameter_list1: 51095553 false) 
	#(561 1 #liftFirstValue: 51444737 false) 
	#(561 1 #liftFirstValue: 51444738 false) 
	#(560 1 #liftFirstValue: 51380226 false) 
	#(575 3 #reduceActionForexplicit_anonymous_function_signature1: 54345729 false) 
	#(578 2 #reduceActionForenum_member_declaration1: 54812673 false) 
	#(466 2 #reduceActionForclass_base1: 37489665 false) 
	#(468 1 #reduceActionFor_extern_alias_directives2: 37760002 false) 
	#(469 1 #reduceActionForextern_alias_directives1: 37842945 false) 
	#(467 1 #reduceActionForinterpolated_regular_string1: 37642241 false) 
	#(563 2 #reduceActionForinterface_base1: 51527681 false) 
	#(547 2 #reduceActionForinterface_base1: 49519617 false) 
	#(436 8 #reduceActionForforeach_statement1: 34776065 false) 
	#(423 3 #reduceActionForswitch_label1: 33684481 false) 
	#(633 2 #reduceActionForref_kind2: 62211073 false) 
	#(504 4 #reduceActionForparameter_array1: 42633217 false) 
	#(499 0 #reduceActionFor_attribute_target_specifier1: 42359809 false) 
	#(463 4 #reduceActionFortype_parameters2: 37273602 false) 
	#(388 6 #reduceActionForlocal_function_header2: 29674498 false) 
	#(520 8 #reduceActionForevent_declaration2: 44771330 false) 
	#(521 2 #reduceActionForref_kind2: 45238273 false) 
	#(521 2 #reduceActionForaccessor_declarations2: 45238274 false) 
	#(506 4 #reduceActionForproperty_body1: 43195393 false) 
	#(507 1 #reduceActionFor_extern_alias_directives2: 43327490 false) 
	#(527 4 #reduceActionForref_indexer_body2: 46288898 false) 
	#(517 1 #reduceActionForstatic_constructor_body3: 44475395 false) 
	#(517 1 #reduceActionForargument_value1: 44475393 false) 
	#(512 4 #reduceActionForget_accessor_declaration1: 43890689 false) 
	#(514 4 #reduceActionForset_accessor_declaration1: 44042241 false) 
	#(535 6 #reduceActionForconversion_operator_declarator2: 47330306 false) 
	#(535 6 #reduceActionForconversion_operator_declarator1: 47330305 false) 
	#(531 6 #reduceActionForunary_operator_declarator1: 46761985 false) 
	#(544 3 #reduceActionForstatic_constructor_body2: 48842754 false) 
	#(612 8 #reduceActionForfinalizer_declaration2: 59071490 false) 
	#(612 8 #reduceActionForfinalizer_declaration2: 59071491 false) 
	#(580 5 #reduceActionFordelegate_header1: 55267329 false) 
	#(559 3 #reduceActionForvariant_type_parameters1: 51194881 false) 
	#(575 4 #reduceActionForanonymous_object_initializer2: 54345730 false) 
	#(577 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 54662146 false) 
	#(477 0 #reduceActionFor_extern_alias_directives1: 39178241 false) 
	#(469 2 #reduceActionForextern_alias_directives2: 37842946 false) 
	#(565 0 #reduceActionFor_extern_alias_directives1: 51678209 false) 
	#(549 0 #reduceActionFor_extern_alias_directives1: 49633281 false) 
	#(428 9 #reduceActionForfor_statement1: 34151425 false) 
	#(436 9 #reduceActionForforeach_statement2: 34776066 false) 
	#(424 2 #reduceActionForref_kind2: 33776641 false) 
	#(423 4 #reduceActionForswitch_label2: 33684482 false) 
	#(311 3 #reduceActionFordependent_access3: 20040707 false) 
	#(311 3 #reduceActionFordependent_access1: 20040705 false) 
	#(311 3 #reduceActionFordependent_access2: 20040706 false) 
	#(498 5 #reduceActionForfixed_parameter1: 42233857 false) 
	#(499 1 #reduceActionFor_extern_alias_directives2: 42359810 false) 
	#(522 3 #reduceActionForadd_accessor_declaration1: 45460481 false) 
	#(523 3 #reduceActionForremove_accessor_declaration1: 45530113 false) 
	#(525 7 #reduceActionForindexer_declarator2: 46022658 false) 
	#(509 4 #reduceActionForref_property_body2: 43464706 false) 
	#(509 4 #reduceActionForref_property_body1: 43464705 false) 
	#(519 1 #reduceActionForref_accessor_body3: 44674051 false) 
	#(519 1 #reduceActionForref_accessor_body1: 44674049 false) 
	#(518 4 #reduceActionForref_get_accessor_declaration1: 44553217 false) 
	#(613 3 #reduceActionForlocal_function_body2: 59356162 false) 
	#(578 4 #reduceActionForenum_member_declaration2: 54812674 false) 
	#(466 4 #reduceActionForclass_base2: 37489666 false) 
	#(477 1 #reduceActionFor_extern_alias_directives2: 39178242 false) 
	#(478 1 #reduceActionForextern_alias_directives1: 39242753 false) 
	#(459 10 #reduceActionForclass_declaration1: 36754433 false) 
	#(467 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 37642242 false) 
	#(567 1 #liftFirstValue: 51908610 false) 
	#(567 1 #liftFirstValue: 51908612 false) 
	#(565 1 #reduceActionFor_extern_alias_directives2: 51678210 false) 
	#(566 1 #reduceActionForextern_alias_directives1: 51749889 false) 
	#(567 1 #liftFirstValue: 51908609 false) 
	#(567 1 #liftFirstValue: 51908611 false) 
	#(608 0 #nil 58542081 false) 
	#(556 10 #reduceActionForinterface_declaration1: 50633729 false) 
	#(551 1 #liftFirstValue: 49846282 false) 
	#(551 1 #liftFirstValue: 49846273 false) 
	#(551 1 #liftFirstValue: 49846274 false) 
	#(551 1 #liftFirstValue: 49846275 false) 
	#(551 1 #liftFirstValue: 49846276 false) 
	#(551 1 #liftFirstValue: 49846277 false) 
	#(551 1 #liftFirstValue: 49846278 false) 
	#(551 1 #liftFirstValue: 49846279 false) 
	#(551 1 #liftFirstValue: 49846280 false) 
	#(551 1 #liftFirstValue: 49846281 false) 
	#(549 1 #reduceActionFor_extern_alias_directives2: 49633282 false) 
	#(550 1 #reduceActionForextern_alias_directives1: 49699841 false) 
	#(551 1 #liftFirstValue: 49846283 false) 
	#(545 10 #reduceActionForstruct_declaration1: 49119233 false) 
	#(500 2 #reduceActionForref_kind2: 42404865 false) 
	#(356 9 #reduceActionForjoin_clause1: 26782721 false) 
	#(508 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 43380737 false) 
	#(488 10 #reduceActionForRefMethodHeader1: 40818689 false) 
	#(517 3 #reduceActionForstatic_constructor_body2: 44475394 false) 
	#(489 10 #reduceActionFormethod_header1: 41063425 false) 
	#(533 8 #reduceActionForbinary_operator_declarator1: 46999553 false) 
	#(559 5 #reduceActionForvariant_type_parameters2: 51194882 false) 
	#(580 7 #reduceActionFordelegate_header2: 55267330 false) 
	#(545 11 #reduceActionForstruct_declaration2: 49119234 false) 
	#(472 1 #reduceActionForprimary_constraint2: 38609922 false) 
	#(472 1 #reduceActionForprimary_constraint3: 38609923 false) 
	#(472 1 #reduceActionForprimary_constraint4: 38609924 false) 
	#(472 1 #reduceActionForprimary_constraint1: 38609921 false) 
	#(474 1 #reduceActionForprimary_constraint1: 38991873 false) 
	#(473 1 #reduceActionForinterpolated_regular_string1: 38727682 false) 
	#(470 4 #reduceActionFortype_parameter_constraints_clause1: 38032385 false) 
	#(471 1 #reduceActionForinterpolated_regular_string1: 38167553 false) 
	#(471 1 #reduceActionFor_extern_alias_directives2: 38167554 false) 
	#(473 1 #reduceActionForinterpolated_regular_string1: 38727681 false) 
	#(471 1 #reduceActionForinterpolated_regular_string1: 38167555 false) 
	#(476 3 #reduceActionForgeneric_dimension_specifier1: 39115777 false) 
	#(478 2 #reduceActionForextern_alias_directives2: 39242754 false) 
	#(564 3 #reduceActionForgeneric_dimension_specifier1: 51581953 false) 
	#(566 2 #reduceActionForextern_alias_directives2: 51749890 false) 
	#(608 1 #liftFirstValue: 58542082 false) 
	#(548 3 #reduceActionForgeneric_dimension_specifier1: 49568769 false) 
	#(550 2 #reduceActionForextern_alias_directives2: 49699842 false) 
	#(540 5 #reduceActionForconstructor_initializer1: 48093185 false) 
	#(540 5 #reduceActionForconstructor_initializer2: 48093186 false) 
	#(357 11 #reduceActionForjoin_into_clause1: 26942465 false) 
	#(519 4 #reduceActionForref_accessor_body2: 44674050 false) 
	#(475 3 #reduceActionForconstructor_constraint1: 39066625 false) 
	#(471 3 #reduceActionFortype_parameter_constraints4: 38167556 false) 
	#(471 3 #reduceActionFortype_parameter_constraints5: 38167557 false) 
	#(473 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38727684 false) 
	#(473 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38727683 false) 
	#(471 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38167558 false) 
	#(568 4 #reduceActionForinterface_method_declaration1: 52099073 false) 
	#(628 1 #liftFirstValue: 61680641 false) 
	#(568 5 #reduceActionForinterface_method_declaration2: 52099074 false) 
	#(629 1 #reduceActionForextern_alias_directives1: 61712385 false) 
	#(471 5 #reduceActionFortype_parameter_constraints7: 38167559 false) 
	#(570 6 #reduceActionForinterface_event_declaration1: 53439489 false) 
	#(627 6 #reduceActionForfixed_size_buffer_declaration1: 61400065 false) 
	#(629 2 #reduceActionForextern_alias_directives2: 61712386 false) 
	#(630 4 #reduceActionForfixed_size_buffer_declarator1: 61869057 false) 
	#(569 7 #reduceActionForinterface_method_header1: 52306945 false)
	).
]

{ #category : #'generated-accessing' }
CSharpParser class >> scannerClass [
	^CSharpScanner
]

{ #category : #generated }
CSharpParser class >> startingStateForblock [
	^ 5
]

{ #category : #generated }
CSharpParser class >> startingStateForclass_member_declaration [
	^ 6
]

{ #category : #generated }
CSharpParser class >> startingStateForcompilation_unit [
	^ 1
]

{ #category : #generated }
CSharpParser class >> startingStateForexpression [
	^ 4
]

{ #category : #generated }
CSharpParser class >> startingStateFornamespace_member_declaration [
	^ 2
]

{ #category : #generated }
CSharpParser class >> startingStateForstatement [
	^ 3
]

{ #category : #generated }
CSharpParser class >> symbolNames [
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>="' '"?"' '"??"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"add"' '"alias"' '"as"' '"ascending"' '"async"' '"await"' '"base"' '"bool"' '"break"' '"by"' '"byte"' '"case"' '"catch"' '"char"' '"checked"' '"class"' '"const"' '"continue"' '"decimal"' '"default"' '"delegate"' '"descending"' '"do"' '"double"' '"dynamic"' '"else"' '"enum"' '"equals"' '"event"' '"explicit"' '"extern"' '"false"' '"field"' '"finally"' '"fixed"' '"float"' '"for"' '"foreach"' '"from"' '"get"' '"goto"' '"group"' '"if"' '"implicit"' '"in"' '"int"' '"interface"' '"internal"' '"into"' '"is"' '"join"' '"let"' '"lock"' '"long"' '"method"' '"nameof"' '"namespace"' '"new"' '"object"' '"on"' '"operator"' '"orderby"' '"out"' '"override"' '"param"' '"params"' '"partial"' '"private"' '"property"' '"protected"' '"public"' '"readonly"' '"ref"' '"remove"' '"return"' '"sbyte"' '"sealed"' '"select"' '"set"' '"short"' '"sizeof"' '"stackalloc"' '"static"' '"string"' '"struct"' '"switch"' '"this"' '"throw"' '"true"' '"try"' '"type"' '"typeof"' '"uint"' '"ulong"' '"unchecked"' '"unmanaged"' '"unsafe"' '"ushort"' '"using"' '"var"' '"virtual"' '"void"' '"volatile"' '"when"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"~"' '<gt>' '<gtgt>' '<rightBrace>' '<comment>' '<Identifier>' '<IntegerLiteral>' '<RealLiteral>' '<CharacterLiteral>' '<InterpolatedRegularStringWhole>' '<InterpolatedRegularStringStart>' '<InterpolatedRegularStringEnd>' '<InterpolatedRegularStringMid>' '<InterpolatedVerbatimStringLiteral>' '<InterpolatedVerbatimStringStart>' '<InterpolatedVerbatimStringEnd>' '<InterpolatedVerbatimStringMid>' '<StringLiteral>' '<NullLiteral>' '<whitespace>' '<preprocessorDirective>' '<patternToken>' 'B e g i n' 'compilation_unit' 'namespace_declaration' 'qualified_identifier' 'namespace_body' '_extern_alias_directives' 'extern_alias_directives' 'extern_alias_directive' '_using_directives' 'using_directives' 'using_directive' 'using_alias_directive' 'using_namespace_directive' 'using_static_directive' '_namespace_member_declarations' 'namespace_member_declarations' 'namespace_member_declaration' 'type_declaration' 'qualified_alias_member' 'namespace_name' 'type_name' 'namespace_or_type_name' '_type' 'type' 'value_type' 'nullable_value_type' 'struct_type' 'tuple_type' '("," tuple_type_element ''element'')' '("," tuple_type_element ''element'')+' 'tuple_type_element' 'simple_type' 'numeric_type' 'integral_type' 'floating_point_type' 'non_nullable_value_type' 'reference_type' 'class_type' 'interface_type' 'array_type' 'non_array_type' '_rank_specifiers' 'rank_specifiers' 'rank_specifier' '_dim_separators' 'dim_separators' 'delegate_type' 'type_argument_list' 'type_arguments' 'type_argument' 'variable_reference' 'pattern' 'var_pattern' 'designation' 'constant_pattern' 'declaration_pattern' 'simple_designation' 'single_variable_designation' '_argument_list' 'argument_list' 'argument' '_argument_name' 'argument_name' 'argument_value' 'primary_expression' 'primary_no_array_creation_expression' 'interpolated_string_expression' 'interpolated_regular_string' 'StartInterpolatedString' 'interpolated_regular_string_body' 'interpolation' 'Regular_Interpolation_Format' 'ScanFormat' 'interpolated_verbatim_string' 'StartInterpolatedVerbatimString' 'interpolated_verbatim_string_body' 'simple_name' '_type_argument_list' 'parenthesized_expression' 'tuple_expression' '("," tuple_element ''element'')' '("," tuple_element ''element'')+' 'tuple_element' 'deconstruction_expression' 'deconstruction_tuple' '("," deconstruction_element ''element'')' '("," deconstruction_element ''element'')+' 'deconstruction_element' 'member_access' 'qualified_alias_member_expression' 'predefined_type_expression' 'predefined_type' 'invocation_expression' 'element_access' 'expression_list' 'this_access' 'base_access' 'post_increment_expression' 'post_decrement_expression' 'object_creation_expression' '_object_or_collection_initializer' 'object_or_collection_initializer' 'object_initializer' '_member_initializer_list' 'member_initializer_list' 'member_initializer' 'initializer_target' 'initializer_value' 'collection_initializer' 'element_initializer_list' 'element_initializer' 'array_creation_expression' 'delegate_creation_expression' 'anonymous_object_creation_expression' 'anonymous_object_initializer' '_member_declarator_list' 'member_declarator_list' 'member_declarator' 'typeof_expression' 'unbound_type_name' '_generic_dimension_specifier' 'generic_dimension_specifier' '_commas' 'commas' 'checked_expression' 'unchecked_expression' 'default_value_expression' 'stackalloc_expression' 'nameof_expression' 'named_entity' '("." <Identifier> _type_argument_list ''typeArguments'')' '("." <Identifier> _type_argument_list ''typeArguments'')*' 'named_entity_target' 'unary_expression' 'null_conditional_member_access' 'dependent_access ''access''*' 'dependent_access' 'null_conditional_projection_initializer' 'null_conditional_invocation_expression' 'null_conditional_element_access' 'pre_increment_expression' 'pre_decrement_expression' 'cast_expression' 'await_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'null_coalescing_expression' 'throw_expression' 'declaration_expression' 'conditional_expression' 'lambda_expression' 'anonymous_method_expression' 'anonymous_function_signature' '_explicit_anonymous_function_signature' 'explicit_anonymous_function_signature' '_explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter' '_anonymous_function_parameter_modifier' 'anonymous_function_parameter_modifier' 'implicit_anonymous_function_signature' 'implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter' 'anonymous_function_body' 'RefExpression' 'query_expression' 'from_clause' 'query_body' '_query_body_clauses' 'query_body_clauses' 'query_body_clause' 'let_clause' 'where_clause' 'join_clause' 'join_into_clause' 'orderby_clause' 'orderings' 'ordering' '_ordering_direction' 'ordering_direction' 'select_or_group_clause' 'select_clause' 'group_clause' '_query_continuation' 'query_continuation' 'assignment' 'assignment_operator' '_expression' 'expression' 'non_assignment_expression' 'constant_expression' 'boolean_expression' 'statement' 'embedded_statement' 'block' '_statement_list' 'statement_list' 'empty_statement' 'labeled_statement' 'declaration_statement' 'local_function_declaration' 'RefLocalFunctionHeader' 'ref_local_function_modifier*' 'LocalFunctionHeader' 'local_function_modifier*' 'local_function_header' 'local_function_modifier' 'ref_local_function_modifier' 'local_function_body' 'ref_local_function_body' 'local_variable_declaration' 'implicitly_typed_local_variable_declaration' 'ref_local_variable_declarator' 'ref_kind' 'implicitly_typed_local_variable_declarator' 'explicitly_typed_local_variable_declaration' 'explicitly_typed_local_variable_declarators' '("," explicitly_typed_local_variable_declarator ''declarator'')' '("," explicitly_typed_local_variable_declarator ''declarator'')*' 'explicitly_typed_local_variable_declarator' 'ref_local_variable_declaration' 'ref_local_variable_declarators' '("," ref_local_variable_declarator ''declarator'')' '("," ref_local_variable_declarator ''declarator'')*' 'local_variable_type' 'VarType' 'local_variable_initializer' 'local_constant_declaration' 'const_declarators' 'const_declarator' 'expression_statement' 'statement_expression' 'selection_statement' 'if_statement' 'switch_statement' 'switch_block' '_switch_sections' 'switch_sections' 'switch_section' 'switch_labels' 'switch_label' 'case_guard' 'iteration_statement' 'while_statement' 'do_statement' 'for_statement' '_for_initializer' 'for_initializer' '_for_condition' 'for_condition' '_for_iterator' 'for_iterator' 'statement_expression_list' 'foreach_statement' 'jump_statement' 'break_statement' 'continue_statement' 'goto_statement' 'return_statement' 'throw_statement' 'try_statement' 'catch_clauses' 'specific_catch_clause ''clause''+' 'specific_catch_clause ''clause''*' 'specific_catch_clause' 'exception_specifier' '_exception_filter' 'exception_filter' 'general_catch_clause' 'finally_clause' 'checked_statement' 'unchecked_statement' 'lock_statement' 'using_statement' 'resource_acquisition' 'yield_statement' 'class_declaration' 'any_modifier ''modifier''*' '_type_parameter_list' 'type_parameter_list' 'type_parameters' 'type_parameter' '_class_base' 'class_base' 'interface_type_list' '_type_parameter_constraints_clauses' 'type_parameter_constraints_clauses' 'type_parameter_constraints_clause' 'type_parameter_constraints' 'primary_constraint' 'secondary_constraints' 'interface_type_constraint' 'constructor_constraint' 'class_body' '_class_member_declarations' 'class_member_declarations' 'class_member_declaration' 'constant_declaration' 'constant_declarators' 'constant_declarator' 'field_declaration' 'variable_declarators' 'variable_declarator' 'variable_initializer' 'method_declaration' 'RefMethodHeader' 'method_header' 'return_type' 'ref_return_type' 'member_name' 'method_body' 'ref_method_body' '_formal_parameters_list' 'formal_parameters_list' 'fixed_parameters' 'fixed_parameter' '_default_argument' 'default_argument' '_parameter_modifier' 'parameter_modifier' 'parameter_mode_modifier' 'parameter_array' 'property_declaration' 'property_body' '_property_initializer' 'property_initializer' 'ref_property_body' 'accessor_declarations' '_get_accessor_declaration' 'get_accessor_declaration' '_set_accessor_declaration' 'set_accessor_declaration' '_accessor_modifiers' 'accessor_modifiers' 'accessor_body' 'ref_get_accessor_declaration' 'ref_accessor_body' 'event_declaration' 'event_accessor_declarations' 'add_accessor_declaration' 'remove_accessor_declaration' 'indexer_declaration' 'indexer_declarator' 'indexer_body' 'ref_indexer_body' 'operator_declaration' 'any_modifier ''modifier''+' 'operator_declarator' 'unary_operator_declarator' 'overloadable_unary_operator' 'binary_operator_declarator' 'overloadable_binary_operator' 'conversion_operator_declarator' 'operator_body' 'constructor_declaration' 'constructor_declarator' '_constructor_initializer' 'constructor_initializer' 'constructor_body' 'static_constructor_declaration' 'static_constructor_modifiers' 'static_constructor_body' 'struct_declaration' '_struct_interfaces' 'struct_interfaces' 'struct_body' '_struct_member_declarations' 'struct_member_declarations' 'struct_member_declaration' '_array_initializer' 'array_initializer' '_variable_initializer_list' 'variable_initializer_list' 'interface_declaration' '_variant_type_parameter_list' 'variant_type_parameter_list' 'variant_type_parameters' '_variance_annotation' 'variance_annotation' '_interface_base' 'interface_base' 'interface_body' '_interface_member_declarations' 'interface_member_declarations' 'interface_member_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_event_declaration' 'enum_declaration' '_enum_base' 'enum_base' 'integral_type_name' 'enum_body' '_enum_member_declarations' 'enum_member_declarations' 'enum_member_declaration' 'delegate_declaration' 'delegate_header' '_global_attributes' 'global_attributes' 'global_attribute_sections' 'global_attribute_section' 'global_attribute_target_specifier' 'global_attribute_target' '_attributes' 'attributes' 'attribute_sections' 'attribute_section' '_attribute_target_specifier' 'attribute_target_specifier' 'attribute_target' 'attribute_list' 'attribute' 'attribute_name' '_attribute_arguments' 'attribute_arguments' '_positional_argument_list' 'positional_argument_list' 'positional_argument' 'named_argument_list' 'named_argument' 'attribute_argument_expression' 'literal' 'boolean_literal' '_semicolon' '_new' '_partial' '_extern' '_identifier' 'finalizer_declaration' 'finalizer_body' 'unsafe_modifier' 'unsafe_statement' 'pointer_type' '"*"+' 'unmanaged_type' 'pointer_indirection_expression' 'pointer_member_access' 'addressof_expression' 'sizeof_expression' 'fixed_statement' 'fixed_pointer_declarators' 'fixed_pointer_declarator' 'fixed_pointer_initializer' 'fixed_size_buffer_declaration' 'buffer_element_type' 'fixed_size_buffer_declarators' 'fixed_size_buffer_declarator' 'stackalloc_initializer' 'stackalloc_initializer_element_list' '("," stackalloc_element_initializer)' '("," stackalloc_element_initializer)*' 'stackalloc_element_initializer' 'void_type' 'any_modifier' 'E O F' 'error')
]

{ #category : #generated }
CSharpParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSCompilationUnitNode #CSCompilationUnitNode #CSNamespaceDeclarationNode #CSQualifiedIdentifierNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExternAliasDirectiveNode #OrderedCollection #OrderedCollection #CSUsingDirectiveNode #CSUsingAliasDirectiveNode #CSUsingNamespaceDirectiveNode #CSUsingStaticDirectiveNode #OrderedCollection #OrderedCollection #CSDeclarationNode #CSDeclarationNode #CSQualifiedAliasMemberNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSNullableTypeNode #CSTypeNode #CSTupleTypeNode #OrderedCollection #OrderedCollection #CSTupleTypeElementNode #CSSimpleTypeNode #SmaCCToken #SmaCCToken #SmaCCToken #CSTypeNode #CSTypeNode #CSTypeNode #CSTypeNode #CSArrayTypeNode #CSTypeNode #OrderedCollection #OrderedCollection #CSRankSpecifierNode #OrderedCollection #OrderedCollection #CSTypeNode #CSTypeArgumentListNode #OrderedCollection #CSTypeNode #CSExpressionNode #CSExpressionNode #CSDeclarationExpressionNode #SmaCCToken #CSExpressionNode #CSDeclarationExpressionNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #CSArgumentNode #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #CSExpressionNode #CSInterpolatedStringExpressionNode #OrderedCollection #ByteSymbol #OrderedCollection #CSInterpolationNode #OrderedCollection #Object #OrderedCollection #ByteSymbol #OrderedCollection #CSSimpleNameNode #CSTypeArgumentListNode #CSExpressionNode #CSExpressionNode #OrderedCollection #OrderedCollection #CSTupleElementNode #CSDeconstructionExpressionNode #CSDeconstructionTupleNode #OrderedCollection #OrderedCollection #CSProgramNode #CSMemberAccessNode #CSTypeExpressionNode #CSTypeExpressionNode #CSSimpleTypeNode #CSInvocationExpressionNode #CSElementAccessNode #OrderedCollection #CSThisAccessNode #CSBaseAccessNode #CSPostExpressionNode #CSPostExpressionNode #CSObjectCreationExpressionNode #CSProgramNode #CSProgramNode #CSObjectInitializerNode #OrderedCollection #OrderedCollection #CSMemberInitializerNode #OrderedCollection #CSProgramNode #CSCollectionInitializerNode #OrderedCollection #CSElementInitializerNode #CSArrayCreationExpressionNode #CSDelegateCreationExpressionNode #CSAnonymousObjectCreationExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #CSMemberDeclaratorNode #CSTypeofExpressionNode #CSUnboundTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSCheckedExpressionNode #CSUncheckedExpressionNode #CSDefaultValueExpressionNode #CSStackallocExpressionNode #CSNameofExpressionNode #CSNamedEntityNode #OrderedCollection #OrderedCollection #CSExpressionNode #CSExpressionNode #CSNullConditionalMemberAccessNode #OrderedCollection #CSProgramNode #CSNullConditionalMemberAccessNode #CSInvocationExpressionNode #CSElementAccessNode #CSPrefixExpressionNode #CSPrefixExpressionNode #CSCastExpressionNode #CSAwaitExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSThrowExpressionNode #CSDeclarationExpressionNode #CSExpressionNode #CSLambdaExpressionNode #CSAnonymousMethodExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSAnonymousFunctionParameterNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #CSAnonymousFunctionParameterNode #CSProgramNode #CSRefExpressionNode #CSQueryExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSAssignmentNode #OrderedCollection #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSExpressionNode #CSStatementNode #CSStatementNode #CSBlockStatementNode #OrderedCollection #OrderedCollection #CSEmptyStatementNode #CSLabeledStatementNode #CSStatementNode #CSLocalFunctionDeclarationStatementNode #CSMethodHeaderNode #OrderedCollection #CSMethodHeaderNode #OrderedCollection #CSMethodHeaderNode #SmaCCToken #SmaCCToken #CSMethodBodyNode #CSMethodBodyNode #CSProgramNode #OrderedCollection #CSLocalVariableDeclaratorNode #OrderedCollection #CSLocalVariableDeclaratorNode #CSLocalVariableDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #CSLocalVariableDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSTypeNode #CSVarTypeNode #Object #CSLocalConstantDeclarationNode #OrderedCollection #CSConstantDeclaratorNode #CSExpressionStatementNode #CSExpressionNode #CSStatementNode #CSIfStatementNode #CSSwitchStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #CSSwitchSectionNode #OrderedCollection #CSSwitchLabelNode #OrderedCollection #CSStatementNode #CSWhileStatementNode #CSDoStatementNode #CSForStatementNode #CSProgramNode #CSProgramNode #CSExpressionNode #CSExpressionNode #CSStatementListNode #CSStatementListNode #OrderedCollection #CSForeachStatementNode #CSStatementNode #CSBreakStatementNode #CSContinueStatementNode #CSGotoStatementNode #CSReturnStatementNode #CSThrowStatementNode #CSTryStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #CSCatchClauseNode #OrderedCollection #CSExceptionFilterNode #CSExceptionFilterNode #CSCatchClauseNode #CSFinallyClauseNode #CSCheckedStatementNode #CSUncheckedStatementNode #CSLockStatementNode #CSUsingStatementNode #CSProgramNode #CSYieldStatementNode #CSClassDeclarationNode #OrderedCollection #CSTypeParameterListNode #CSTypeParameterListNode #OrderedCollection #CSTypeNameNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSTypeParameterConstraintsClauseNode #OrderedCollection #CSProgramNode #OrderedCollection #CSTypeConstraintNode #CSConstructorConstraintNode #OrderedCollection #OrderedCollection #OrderedCollection #CSProgramNode #CSConstantDeclarationNode #OrderedCollection #CSConstantDeclaratorNode #CSFieldDeclarationNode #OrderedCollection #CSVariableDeclaratorNode #CSProgramNode #CSMethodDeclarationNode #CSMethodHeaderNode #CSMethodHeaderNode #CSTypeNode #CSTypeNode #OrderedCollection #CSMethodBodyNode #CSMethodBodyNode #OrderedCollection #OrderedCollection #OrderedCollection #CSFixedParameterNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #CSArrayParameterNode #CSPropertyDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSGetAccessorDeclarationNode #CSGetAccessorDeclarationNode #CSSetAccessorDeclarationNode #CSSetAccessorDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CSGetAccessorDeclarationNode #OrderedCollection #CSEventDeclarationNode #OrderedCollection #CSAddAccessorDeclarationNode #CSRemoveAccessorDeclarationNode #CSIndexerDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CSOperatorDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #SmaCCToken #OrderedCollection #CSMethodBodyNode #CSConstructorDeclarationNode #OrderedCollection #CSConstructorInitializerNode #CSConstructorInitializerNode #CSMethodBodyNode #CSStaticConstructorDeclarationNode #OrderedCollection #OrderedCollection #CSStructDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSArrayInitializerNode #CSArrayInitializerNode #OrderedCollection #OrderedCollection #CSInterfaceDeclarationNode #CSVariantTypeParameterListNode #CSVariantTypeParameterListNode #OrderedCollection #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSDeclarationNode #CSInterfaceMethodDeclarationNode #OrderedCollection #CSInterfaceEventDeclarationNode #CSEnumDeclarationNode #OrderedCollection #OrderedCollection #CSTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #CSEnumDeclarationNode #CSDelegateDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #CSAttributeNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CSAttributeValueNode #CSTypeNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSArgumentNode #OrderedCollection #CSNamedArgumentNode #CSExpressionNode #CSLiteralExpressionNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CSFinalizerDeclarationNode #CSMethodBodyNode #SmaCCToken #CSUnsafeStatementNode #CSPointerTypeNode #OrderedCollection #CSTypeNode #CSPrefixExpressionNode #CSPointerMemberAccessNode #CSPrefixExpressionNode #CSSizeofExpressionNode #CSFixedStatementNode #OrderedCollection #CSFixedPointerDeclaratorNode #OrderedCollection #CSFixedSizeBufferDeclarationNode #CSTypeNode #OrderedCollection #CSFixedSizeBufferDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #CSExpressionNode #CSVoidTypeNode #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
CSharpParser class >> transitionTable [
^#(
#[1 0 6 0 37 0 6 0 41 0 6 0 46 0 6 0 57 0 6 0 62 0 6 0 68 0 7 0 72 0 6 0 88 0 6 0 89 0 6 0 98 0 6 0 99 0 6 0 105 0 6 0 108 0 6 0 109 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 118 0 6 0 124 0 6 0 126 0 6 0 138 0 6 0 140 0 6 0 142 0 6 0 144 0 33 0 176 0 37 0 180 0 41 0 181 0 45 0 182 0 6 2 126] 
#[1 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 72 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 10 0 142 0 10 0 144 0 61 0 177 0 61 0 191 0 61 0 192 0 61 1 203 0 61 2 33 0 61 2 44 0 61 2 59 0 61 2 67 0 89 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 105 0 1 0 109 0 5 0 11 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 15 0 46 0 145 0 47 0 149 0 48 0 19 0 49 0 157 0 50 0 23 0 52 0 27 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 31 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 35 0 65 0 39 0 66 3 21 0 73 0 209 0 76 0 43 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 47 0 87 0 237 0 94 0 51 0 95 0 245 0 97 0 249 0 99 0 55 0 100 0 59 0 114 1 5 0 116 0 63 0 117 0 67 0 121 1 17 0 122 1 21 0 123 0 71 0 124 0 75 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 0 79 0 134 0 83 0 135 1 61 0 136 0 87 0 138 0 91 0 139 1 73 0 140 1 77 0 141 0 95 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 0 99 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 211 1 189 0 212 1 145 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 2 109 1 119 2 109 1 120 2 109 1 121 2 109 1 124 2 109 1 125 2 109 1 126 2 109 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 137 2 157 1 138 2 161 1 140 2 153 1 142 2 169 1 147 2 173 1 152 2 177 1 154 2 109 1 157 2 185 1 158 2 109 1 159 2 109 1 160 2 109 1 161 2 109 1 169 2 109 1 170 2 109 1 171 2 109 1 172 2 109 1 180 2 109 1 181 2 109 1 182 2 109 1 183 2 109 1 184 2 109 1 185 2 109 1 186 2 109 1 187 2 109 1 197 2 109 1 198 2 109 1 199 2 109 1 200 2 109 1 202 3 13 1 208 1 205 2 93 3 21 2 94 2 109 2 103 3 29 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 2 109 2 111 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 3 217 1 75 3 217 1 76 3 217 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 3 217 1 92 3 209 1 93 3 217 1 112 3 217 1 115 3 217 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 1 93 0 149 3 233 1 121] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 0 10 0 158 3 241 0 192 3 241 1 203 3 241 1 223 3 241 1 224 3 241 1 227 3 241 1 231 4 1 1 232 4 5 1 233 3 241 1 249 3 241 2 8 3 241 2 12 3 241 2 16 3 241 2 25 3 241 2 30 3 241 2 33 3 241 2 44 3 241 2 59 3 241 2 67 4 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78 3 241 2 100] 
#[0 4 41 0 43] 
#[0 0 0 2 126] 
#[1 0 30 0 37 0 30 0 41 0 30 0 46 0 30 0 57 0 30 0 62 0 30 0 68 0 30 0 72 0 30 0 88 0 30 0 89 0 30 0 98 0 30 0 99 0 30 0 105 0 30 0 108 0 30 0 109 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 118 0 30 0 124 0 30 0 126 0 30 0 138 4 45 0 140 0 30 0 142 0 30 0 144 4 49 0 183 4 53 0 184 4 57 0 185 4 57 0 186 4 57 0 187 4 57 0 188 0 30 2 126] 
#[1 0 34 0 37 0 34 0 41 0 34 0 46 0 34 0 57 0 34 0 62 0 34 0 68 0 103 0 72 0 34 0 88 0 34 0 89 0 34 0 98 0 34 0 99 0 34 0 105 0 34 0 108 0 34 0 109 0 34 0 111 0 34 0 112 0 34 0 113 0 34 0 114 0 34 0 118 0 34 0 124 0 34 0 126 0 34 0 138 0 34 0 140 0 34 0 142 0 34 0 144 0 34 0 156 4 73 0 182 0 34 2 126] 
#[0 0 38 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[1 4 113 0 70 4 113 0 74 4 113 0 96 4 113 0 106 4 113 0 110 4 113 0 116 4 113 0 132 0 42 0 158 4 105 2 79 4 109 2 80 4 113 2 81] 
#[1 4 117 0 158 4 121 0 178] 
#[0 0 46 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 0 0 2 126] 
#[0 0 50 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 0 54 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 74 0 41 0 74 0 46 0 74 0 57 0 74 0 62 0 74 0 68 0 74 0 72 0 74 0 88 0 74 0 89 0 74 0 99 0 74 0 105 0 74 0 108 0 74 0 109 0 74 0 111 0 74 0 112 0 74 0 113 0 74 0 114 0 74 0 118 0 74 0 124 0 74 0 126 0 74 0 138 0 74 0 142 0 74 0 144 4 125 1 204] 
#[0 0 78 0 8 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 82 0 8 0 49 0 37 0 82 0 41 0 82 0 42 0 82 0 46 0 82 0 49 0 82 0 52 0 82 0 55 0 82 0 57 0 82 0 58 0 82 0 60 0 82 0 62 0 82 0 65 0 82 0 66 0 82 0 68 0 82 0 70 0 82 0 72 0 82 0 76 0 82 0 77 0 82 0 81 0 82 0 86 0 82 0 87 0 82 0 88 0 82 0 89 0 82 0 95 0 82 0 99 0 82 0 100 0 82 0 104 0 82 0 105 0 82 0 107 0 82 0 108 0 82 0 109 0 82 0 111 0 82 0 112 0 82 0 113 0 82 0 114 0 82 0 115 0 82 0 117 0 82 0 118 0 82 0 120 0 82 0 121 0 82 0 124 0 82 0 125 0 82 0 126 0 82 0 128 0 82 0 134 0 82 0 135 0 82 0 138 0 82 0 139 0 82 0 142 0 82 0 143 0 82 0 144 0 82 0 153 0 82 0 158 4 129 2 78] 
#[0 0 86 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 205 1 52 1 205 1 53 1 205 1 58 4 205 1 59 4 205 1 60 4 205 1 61 4 205 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 4 205 2 107 1 205 2 108 4 205 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 213 1 52 1 205 1 53 1 205 1 58 4 213 1 59 4 213 1 60 4 213 1 61 4 213 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 4 213 2 107 1 205 2 108 4 213 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 4 217 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 4 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 4 225 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 4 221 0 211 1 189 0 212 4 221 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 229 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 4 233 1 75 4 233 1 76 4 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 4 233 1 92 3 209 1 93 4 233 1 112 4 233 1 115 4 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 237 1 52 1 205 1 53 1 205 1 58 4 237 1 59 4 237 1 60 4 237 1 61 4 237 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 4 237 2 107 1 205 2 108 4 237 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 241 1 52 1 205 1 53 1 205 1 58 4 241 1 59 4 241 1 60 4 241 1 61 4 241 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 4 241 2 107 1 205 2 108 4 241 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 245 1 52 1 205 1 53 1 205 1 58 4 245 1 59 4 245 1 60 4 245 1 61 4 245 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 4 245 2 107 1 205 2 108 4 245 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 249 1 52 1 205 1 53 1 205 1 58 4 249 1 59 4 249 1 60 4 249 1 61 4 249 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 4 249 2 107 1 205 2 108 4 249 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 253 1 52 1 205 1 53 1 205 1 58 4 253 1 59 4 253 1 60 4 253 1 61 4 253 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 4 253 2 107 1 205 2 108 4 253 2 109 1 205 2 110] 
#[0 0 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 5 1 0 62] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 5 5 1 52 1 205 1 53 1 205 1 58 5 5 1 59 5 5 1 60 5 5 1 61 5 5 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 5 5 2 107 1 205 2 108 5 5 2 109 1 205 2 110] 
#[1 5 9 0 20 5 13 0 37] 
#[1 0 94 0 1 0 94 0 2 0 94 0 5 0 94 0 6 0 94 0 8 0 94 0 9 0 94 0 10 0 94 0 12 0 94 0 13 0 94 0 15 0 94 0 16 0 94 0 17 0 98 0 20 0 94 0 23 0 94 0 25 0 94 0 26 0 94 0 29 0 94 0 31 0 94 0 33 0 94 0 35 0 94 0 36 0 94 0 37 0 94 0 38 0 94 0 39 0 94 0 44 0 94 0 45 0 94 0 46 0 94 0 47 0 94 0 48 0 94 0 49 0 94 0 50 0 94 0 51 0 94 0 52 0 94 0 53 0 94 0 55 0 94 0 56 0 94 0 58 0 94 0 59 0 94 0 60 0 94 0 61 0 94 0 62 0 94 0 63 0 94 0 64 0 94 0 65 0 94 0 66 0 94 0 67 0 94 0 69 0 94 0 73 0 94 0 76 0 94 0 77 0 94 0 78 0 94 0 79 0 94 0 80 0 94 0 82 0 94 0 83 0 94 0 84 0 94 0 87 0 94 0 90 0 94 0 91 0 94 0 92 0 94 0 93 0 94 0 94 0 94 0 95 0 94 0 97 0 94 0 99 0 94 0 100 0 94 0 101 0 94 0 103 0 94 0 114 0 94 0 116 0 94 0 117 0 94 0 119 0 94 0 121 0 94 0 122 0 94 0 123 0 94 0 124 0 94 0 125 0 94 0 127 0 94 0 128 0 94 0 129 0 94 0 130 0 94 0 131 0 94 0 133 0 94 0 134 0 94 0 135 0 94 0 136 0 94 0 138 0 94 0 139 0 94 0 140 0 94 0 141 0 94 0 143 0 94 0 145 0 94 0 146 0 94 0 147 0 94 0 148 0 94 0 149 0 94 0 150 0 94 0 152 0 94 0 153 0 94 0 154 0 94 0 156 0 94 0 158 0 94 0 159 0 94 0 160 0 94 0 161 0 94 0 162 0 94 0 163 0 94 0 164 0 94 0 165 0 94 0 166 0 94 0 167 0 94 0 168 0 94 0 169 0 94 0 170 0 94 0 171 0 94 2 126] 
#[0 5 17 0 25] 
#[1 0 102 0 1 0 102 0 2 0 102 0 5 0 102 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 12 0 102 0 13 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 20 0 102 0 23 0 102 0 25 0 102 0 26 0 102 0 29 0 102 0 31 0 102 0 33 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 38 0 102 0 39 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 52 0 102 0 53 0 102 0 55 0 102 0 56 0 102 0 58 0 102 0 59 0 102 0 60 0 102 0 61 0 102 0 62 0 102 0 63 0 102 0 64 0 102 0 65 0 102 0 66 0 102 0 67 0 102 0 69 0 102 0 73 0 102 0 76 0 102 0 77 0 102 0 78 0 102 0 79 0 102 0 80 0 102 0 82 0 102 0 83 0 102 0 84 0 102 0 87 0 102 0 90 0 102 0 91 0 102 0 92 0 102 0 93 0 102 0 94 0 102 0 95 0 102 0 97 0 102 0 99 0 102 0 100 0 102 0 101 0 102 0 103 0 102 0 114 0 102 0 116 0 102 0 117 0 102 0 119 0 102 0 121 0 102 0 122 0 102 0 123 0 102 0 124 0 102 0 125 0 102 0 127 0 102 0 128 0 102 0 129 0 102 0 130 0 102 0 131 0 102 0 133 0 102 0 134 0 102 0 135 0 102 0 136 0 102 0 138 0 102 0 139 0 102 0 140 0 102 0 141 0 102 0 143 0 102 0 145 0 102 0 146 0 102 0 147 0 102 0 148 0 102 0 149 0 102 0 150 0 102 0 152 0 102 0 153 0 102 0 154 0 102 0 156 0 102 0 158 0 102 0 159 0 102 0 160 0 102 0 161 0 102 0 162 0 102 0 163 0 102 0 164 0 102 0 165 0 102 0 166 0 102 0 167 0 102 0 168 0 102 0 169 0 102 0 170 0 102 0 171 0 102 2 126] 
#[1 0 110 0 1 0 110 0 2 0 110 0 5 0 110 0 6 0 110 0 8 0 110 0 9 0 110 0 10 0 110 0 12 0 110 0 13 0 110 0 15 0 110 0 16 0 110 0 17 0 114 0 20 0 110 0 23 0 110 0 25 0 110 0 26 0 110 0 29 0 110 0 31 0 110 0 33 0 110 0 35 0 110 0 36 0 110 0 37 0 110 0 38 0 110 0 39 0 110 0 44 0 110 0 45 0 110 0 46 0 110 0 47 0 110 0 48 0 110 0 49 0 110 0 50 0 110 0 51 0 110 0 52 0 110 0 53 0 110 0 55 0 110 0 56 0 110 0 58 0 110 0 59 0 110 0 60 0 110 0 61 0 110 0 62 0 110 0 63 0 110 0 64 0 110 0 65 0 110 0 66 0 110 0 67 0 110 0 69 0 110 0 73 0 110 0 76 0 110 0 77 0 110 0 78 0 110 0 79 0 110 0 80 0 110 0 82 0 110 0 83 0 110 0 84 0 110 0 87 0 110 0 90 0 110 0 91 0 110 0 92 0 110 0 93 0 110 0 94 0 110 0 95 0 110 0 97 0 110 0 99 0 110 0 100 0 110 0 101 0 110 0 103 0 110 0 114 0 110 0 116 0 110 0 117 0 110 0 119 0 110 0 121 0 110 0 122 0 110 0 123 0 110 0 124 0 110 0 125 0 110 0 127 0 110 0 128 0 110 0 129 0 110 0 130 0 110 0 131 0 110 0 133 0 110 0 134 0 110 0 135 0 110 0 136 0 110 0 138 0 110 0 139 0 110 0 140 0 110 0 141 0 110 0 143 0 110 0 145 0 110 0 146 0 110 0 147 0 110 0 148 0 110 0 149 0 110 0 150 0 110 0 152 0 110 0 153 0 110 0 154 0 110 0 156 0 110 0 158 0 110 0 159 0 110 0 160 0 110 0 161 0 110 0 162 0 110 0 163 0 110 0 164 0 110 0 165 0 110 0 166 0 110 0 167 0 110 0 168 0 110 0 169 0 110 0 170 0 110 0 171 0 110 2 126] 
#[1 5 21 0 8 1 93 0 149 5 25 1 121] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 5 101 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 5 101 0 211 1 189 0 212 5 101 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 5 105 0 25] 
#[1 0 118 0 1 0 118 0 2 0 118 0 5 0 118 0 6 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 12 0 118 0 13 0 118 0 15 0 118 0 16 0 118 0 17 0 122 0 20 0 118 0 23 0 118 0 25 0 118 0 26 0 118 0 29 0 118 0 31 0 118 0 33 0 118 0 35 0 118 0 36 0 118 0 37 0 118 0 38 0 118 0 39 0 118 0 44 0 118 0 45 0 118 0 46 0 118 0 47 0 118 0 48 0 118 0 49 0 118 0 50 0 118 0 51 0 118 0 52 0 118 0 53 0 118 0 55 0 118 0 56 0 118 0 58 0 118 0 59 0 118 0 60 0 118 0 61 0 118 0 62 0 118 0 63 0 118 0 64 0 118 0 65 0 118 0 66 0 118 0 67 0 118 0 69 0 118 0 73 0 118 0 76 0 118 0 77 0 118 0 78 0 118 0 79 0 118 0 80 0 118 0 82 0 118 0 83 0 118 0 84 0 118 0 87 0 118 0 90 0 118 0 91 0 118 0 92 0 118 0 93 0 118 0 94 0 118 0 95 0 118 0 97 0 118 0 99 0 118 0 100 0 118 0 101 0 118 0 103 0 118 0 114 0 118 0 116 0 118 0 117 0 118 0 119 0 118 0 121 0 118 0 122 0 118 0 123 0 118 0 124 0 118 0 125 0 118 0 127 0 118 0 128 0 118 0 129 0 118 0 130 0 118 0 131 0 118 0 133 0 118 0 134 0 118 0 135 0 118 0 136 0 118 0 138 0 118 0 139 0 118 0 140 0 118 0 141 0 118 0 143 0 118 0 145 0 118 0 146 0 118 0 147 0 118 0 148 0 118 0 149 0 118 0 150 0 118 0 152 0 118 0 153 0 118 0 154 0 118 0 156 0 118 0 158 0 118 0 159 0 118 0 160 0 118 0 161 0 118 0 162 0 118 0 163 0 118 0 164 0 118 0 165 0 118 0 166 0 118 0 167 0 118 0 168 0 118 0 169 0 118 0 170 0 118 0 171 0 118 2 126] 
#[1 0 126 0 1 0 126 0 2 0 126 0 3 0 126 0 4 0 126 0 5 0 126 0 6 0 126 0 7 0 107 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 126 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 39 0 126 0 40 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 52 0 126 0 53 0 126 0 55 0 126 0 56 0 126 0 58 0 126 0 59 0 126 0 60 0 126 0 61 0 126 0 62 0 126 0 63 0 126 0 64 0 126 0 65 0 126 0 66 0 126 0 67 0 126 0 69 0 126 0 73 0 126 0 76 0 126 0 77 0 126 0 78 0 126 0 79 0 126 0 80 0 126 0 82 0 126 0 83 0 126 0 84 0 126 0 87 0 126 0 90 0 126 0 91 0 126 0 92 0 126 0 93 0 126 0 94 0 126 0 95 0 126 0 97 0 126 0 99 0 126 0 100 0 126 0 101 0 126 0 103 0 126 0 114 0 126 0 116 0 126 0 117 0 126 0 119 0 126 0 121 0 126 0 122 0 126 0 123 0 126 0 124 0 126 0 125 0 126 0 127 0 126 0 128 0 126 0 129 0 126 0 130 0 126 0 131 0 126 0 133 0 126 0 134 0 126 0 135 0 126 0 136 0 126 0 138 0 126 0 139 0 126 0 140 0 126 0 141 0 126 0 143 0 126 0 145 0 126 0 146 0 126 0 147 0 126 0 148 0 126 0 149 0 126 0 150 0 126 0 151 0 126 0 152 0 126 0 153 0 126 0 154 0 126 0 155 0 126 0 156 0 126 0 158 0 126 0 159 0 126 0 160 0 126 0 161 0 126 0 162 0 126 0 163 0 126 0 164 0 126 0 165 0 126 0 166 0 126 0 167 0 126 0 168 0 126 0 169 0 126 0 170 0 126 0 171 0 126 2 126] 
#[1 5 113 0 8 0 130 0 149 5 117 1 80 5 117 1 81] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 5 125 1 120 5 125 1 121 5 125 1 124 4 209 1 152 5 125 1 157 2 185 1 158 5 125 1 159 5 125 1 160 5 125 1 161 5 125 1 169 5 125 1 170 5 125 1 171 5 125 1 172 5 125 1 180 5 125 1 181 5 125 1 182 5 125 1 183 5 125 1 184 5 125 1 185 5 125 1 186 5 125 1 187 5 125 1 197 5 125 1 198 5 125 1 199 5 125 1 200 5 125 1 202 1 205 2 93 3 21 2 94 5 125 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 5 125 2 111] 
#[1 0 134 0 1 0 134 0 2 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 12 0 134 0 13 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 20 0 134 0 23 0 134 0 25 0 134 0 26 0 134 0 29 0 134 0 31 0 134 0 33 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 39 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 53 0 134 0 55 0 134 0 56 0 134 0 58 0 134 0 59 0 134 0 60 0 134 0 61 0 134 0 62 0 134 0 63 0 134 0 64 0 134 0 65 0 134 0 66 0 134 0 67 0 134 0 69 0 134 0 73 0 134 0 76 0 134 0 77 0 134 0 78 0 134 0 79 0 134 0 80 0 134 0 82 0 134 0 83 0 134 0 84 0 134 0 87 0 134 0 90 0 134 0 91 0 134 0 92 0 134 0 93 0 134 0 94 0 134 0 95 0 134 0 97 0 134 0 99 0 134 0 100 0 134 0 101 0 134 0 103 0 134 0 114 0 134 0 116 0 134 0 117 0 134 0 119 0 134 0 121 0 134 0 122 0 134 0 123 0 134 0 124 0 134 0 125 0 134 0 127 0 134 0 128 0 134 0 129 0 134 0 130 0 134 0 131 0 134 0 133 0 134 0 134 0 134 0 135 0 134 0 136 0 134 0 138 0 134 0 139 0 134 0 140 0 134 0 141 0 134 0 143 0 134 0 145 0 134 0 146 0 134 0 147 0 134 0 148 0 134 0 149 0 134 0 150 0 134 0 152 0 134 0 153 0 134 0 154 0 134 0 156 0 134 0 158 0 134 0 159 0 134 0 160 0 134 0 161 0 134 0 162 0 134 0 163 0 134 0 164 0 134 0 165 0 134 0 166 0 134 0 167 0 134 0 168 0 134 0 169 0 134 0 170 0 134 0 171 0 134 2 126] 
#[1 0 142 0 1 0 142 0 2 0 142 0 5 0 142 0 6 0 142 0 8 0 142 0 9 0 142 0 10 0 142 0 12 0 142 0 13 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 23 0 142 0 25 0 142 0 26 0 142 0 29 0 142 0 31 0 142 0 33 0 142 0 35 0 142 0 36 0 146 0 37 0 142 0 38 0 142 0 39 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 52 0 142 0 53 0 142 0 55 0 142 0 56 0 142 0 58 0 142 0 59 0 142 0 60 0 142 0 61 0 142 0 62 0 142 0 63 0 142 0 64 0 142 0 65 0 142 0 66 0 142 0 67 0 142 0 69 0 142 0 73 0 142 0 76 0 142 0 77 0 142 0 78 0 142 0 79 0 142 0 80 0 142 0 82 0 142 0 83 0 142 0 84 0 142 0 87 0 142 0 90 0 142 0 91 0 142 0 92 0 142 0 93 0 142 0 94 0 142 0 95 0 142 0 97 0 142 0 99 0 142 0 100 0 142 0 101 0 142 0 102 0 142 0 103 0 142 0 114 0 142 0 116 0 142 0 117 0 142 0 119 0 142 0 121 0 142 0 122 0 142 0 123 0 142 0 124 0 142 0 125 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 138 0 142 0 139 0 142 0 140 0 142 0 141 0 142 0 143 0 142 0 145 0 142 0 146 0 142 0 147 0 142 0 148 0 142 0 149 0 142 0 150 0 142 0 152 0 142 0 153 0 142 0 154 0 142 0 156 0 142 0 158 0 142 0 159 0 142 0 160 0 142 0 161 0 142 0 162 0 142 0 163 0 142 0 164 0 142 0 165 0 142 0 166 0 142 0 167 0 142 0 168 0 142 0 169 0 142 0 170 0 142 0 171 0 142 2 126] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 5 129 0 8] 
#[1 0 154 0 1 0 154 0 2 0 154 0 5 0 154 0 6 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 12 0 154 0 13 0 154 0 15 0 154 0 16 0 154 0 17 0 158 0 20 0 154 0 23 0 154 0 25 0 154 0 26 0 154 0 29 0 154 0 31 0 154 0 33 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 47 0 154 0 48 0 154 0 49 0 154 0 50 0 154 0 51 0 154 0 52 0 154 0 53 0 154 0 55 0 154 0 56 0 154 0 58 0 154 0 59 0 154 0 60 0 154 0 61 0 154 0 62 0 154 0 63 0 154 0 64 0 154 0 65 0 154 0 66 0 154 0 67 0 154 0 69 0 154 0 73 0 154 0 76 0 154 0 77 0 154 0 78 0 154 0 79 0 154 0 80 0 154 0 82 0 154 0 83 0 154 0 84 0 154 0 87 0 154 0 90 0 154 0 91 0 154 0 92 0 154 0 93 0 154 0 94 0 154 0 95 0 154 0 97 0 154 0 99 0 154 0 100 0 154 0 101 0 154 0 103 0 154 0 114 0 154 0 116 0 154 0 117 0 154 0 119 0 154 0 121 0 154 0 122 0 154 0 123 0 154 0 124 0 154 0 125 0 154 0 127 0 154 0 128 0 154 0 129 0 154 0 130 0 154 0 131 0 154 0 133 0 154 0 134 0 154 0 135 0 154 0 136 0 154 0 138 0 154 0 139 0 154 0 140 0 154 0 141 0 154 0 143 0 154 0 145 0 154 0 146 0 154 0 147 0 154 0 148 0 154 0 149 0 154 0 150 0 154 0 152 0 154 0 153 0 154 0 154 0 154 0 156 0 154 0 158 0 154 0 159 0 154 0 160 0 154 0 161 0 154 0 162 0 154 0 163 0 154 0 164 0 154 0 165 0 154 0 166 0 154 0 167 0 154 0 168 0 154 0 169 0 154 0 170 0 154 0 171 0 154 2 126] 
#[0 5 133 0 8] 
#[0 5 137 0 8] 
#[1 5 141 0 53 5 145 0 61 5 149 0 158] 
#[0 5 153 0 8] 
#[1 0 162 0 1 0 162 0 2 0 162 0 5 0 162 0 6 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 12 0 162 0 13 0 162 0 15 0 162 0 16 0 162 0 17 0 166 0 20 0 162 0 23 0 162 0 25 0 162 0 26 0 162 0 29 0 162 0 31 0 162 0 33 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 52 0 162 0 53 0 162 0 55 0 162 0 56 0 162 0 58 0 162 0 59 0 162 0 60 0 162 0 61 0 162 0 62 0 162 0 63 0 162 0 64 0 162 0 65 0 162 0 66 0 162 0 67 0 162 0 69 0 162 0 73 0 162 0 76 0 162 0 77 0 162 0 78 0 162 0 79 0 162 0 80 0 162 0 82 0 162 0 83 0 162 0 84 0 162 0 87 0 162 0 90 0 162 0 91 0 162 0 92 0 162 0 93 0 162 0 94 0 162 0 95 0 162 0 97 0 162 0 99 0 162 0 100 0 162 0 101 0 162 0 103 0 162 0 114 0 162 0 116 0 162 0 117 0 162 0 119 0 162 0 121 0 162 0 122 0 162 0 123 0 162 0 124 0 162 0 125 0 162 0 127 0 162 0 128 0 162 0 129 0 162 0 130 0 162 0 131 0 162 0 133 0 162 0 134 0 162 0 135 0 162 0 136 0 162 0 138 0 162 0 139 0 162 0 140 0 162 0 141 0 162 0 143 0 162 0 145 0 162 0 146 0 162 0 147 0 162 0 148 0 162 0 149 0 162 0 150 0 162 0 152 0 162 0 153 0 162 0 154 0 162 0 156 0 162 0 158 0 162 0 159 0 162 0 160 0 162 0 161 0 162 0 162 0 162 0 163 0 162 0 164 0 162 0 165 0 162 0 166 0 162 0 167 0 162 0 168 0 162 0 169 0 162 0 170 0 162 0 171 0 162 2 126] 
#[0 5 157 0 8] 
#[1 0 170 0 1 0 170 0 2 0 170 0 5 0 170 0 6 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 12 0 170 0 13 0 170 0 15 0 170 0 16 0 170 0 17 0 174 0 20 0 170 0 23 0 170 0 25 0 170 0 26 0 170 0 29 0 170 0 31 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 48 0 170 0 49 0 170 0 50 0 170 0 51 0 170 0 52 0 170 0 53 0 170 0 55 0 170 0 56 0 170 0 58 0 170 0 59 0 170 0 60 0 170 0 61 0 170 0 62 0 170 0 63 0 170 0 64 0 170 0 65 0 170 0 66 0 170 0 67 0 170 0 69 0 170 0 73 0 170 0 76 0 170 0 77 0 170 0 78 0 170 0 79 0 170 0 80 0 170 0 82 0 170 0 83 0 170 0 84 0 170 0 87 0 170 0 90 0 170 0 91 0 170 0 92 0 170 0 93 0 170 0 94 0 170 0 95 0 170 0 97 0 170 0 99 0 170 0 100 0 170 0 101 0 170 0 103 0 170 0 114 0 170 0 116 0 170 0 117 0 170 0 119 0 170 0 121 0 170 0 122 0 170 0 123 0 170 0 124 0 170 0 125 0 170 0 127 0 170 0 128 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 138 0 170 0 139 0 170 0 140 0 170 0 141 0 170 0 143 0 170 0 145 0 170 0 146 0 170 0 147 0 170 0 148 0 170 0 149 0 170 0 150 0 170 0 152 0 170 0 153 0 170 0 154 0 170 0 156 0 170 0 158 0 170 0 159 0 170 0 160 0 170 0 161 0 170 0 162 0 170 0 163 0 170 0 164 0 170 0 165 0 170 0 166 0 170 0 167 0 170 0 168 0 170 0 169 0 170 0 170 0 170 0 171 0 170 2 126] 
#[0 5 161 0 8] 
#[1 5 29 0 8 5 165 0 37 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 169 0 149 5 93 0 158 1 141 0 193 5 173 0 195 1 141 0 196 5 177 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 5 177 0 211 1 189 0 212 5 181 0 214 5 185 0 215 5 189 0 218 5 193 0 221 5 197 1 33 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 0 178 0 1 0 178 0 2 0 178 0 5 0 178 0 6 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 12 0 178 0 13 0 178 0 15 0 178 0 16 0 178 0 17 0 182 0 20 0 178 0 23 0 178 0 25 0 178 0 26 0 178 0 29 0 178 0 31 0 178 0 33 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 47 0 178 0 48 0 178 0 49 0 178 0 50 0 178 0 51 0 178 0 52 0 178 0 53 0 178 0 55 0 178 0 56 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 63 0 178 0 64 0 178 0 65 0 178 0 66 0 178 0 67 0 178 0 69 0 178 0 73 0 178 0 76 0 178 0 77 0 178 0 78 0 178 0 79 0 178 0 80 0 178 0 82 0 178 0 83 0 178 0 84 0 178 0 87 0 178 0 90 0 178 0 91 0 178 0 92 0 178 0 93 0 178 0 94 0 178 0 95 0 178 0 97 0 178 0 99 0 178 0 100 0 178 0 101 0 178 0 103 0 178 0 114 0 178 0 116 0 178 0 117 0 178 0 119 0 178 0 121 0 178 0 122 0 178 0 123 0 178 0 124 0 178 0 125 0 178 0 127 0 178 0 128 0 178 0 129 0 178 0 130 0 178 0 131 0 178 0 133 0 178 0 134 0 178 0 135 0 178 0 136 0 178 0 138 0 178 0 139 0 178 0 140 0 178 0 141 0 178 0 143 0 178 0 145 0 178 0 146 0 178 0 147 0 178 0 148 0 178 0 149 0 178 0 150 0 178 0 152 0 178 0 153 0 178 0 154 0 178 0 156 0 178 0 158 0 178 0 159 0 178 0 160 0 178 0 161 0 178 0 162 0 178 0 163 0 178 0 164 0 178 0 165 0 178 0 166 0 178 0 167 0 178 0 168 0 178 0 169 0 178 0 170 0 178 0 171 0 178 2 126] 
#[1 0 186 0 8 0 186 0 49 0 186 0 52 0 186 0 55 0 186 0 60 0 186 0 65 0 186 0 66 0 186 0 77 0 186 0 87 0 186 0 95 0 186 0 100 5 201 0 113 0 186 0 117 0 186 0 121 0 186 0 125 0 186 0 134 0 186 0 135 0 186 0 139 0 186 0 141 0 186 0 143 0 186 0 158] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 190 0 25 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 5 205 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 5 209 1 75 5 209 1 76 5 209 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 5 209 1 92 3 209 1 93 5 209 1 112 5 209 1 114 5 209 1 115 5 209 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 194 0 1 0 194 0 2 0 194 0 5 0 194 0 6 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 12 0 194 0 13 0 194 0 15 0 194 0 16 0 194 0 17 0 198 0 20 0 194 0 23 0 194 0 25 0 194 0 26 0 194 0 29 0 194 0 31 0 194 0 33 0 194 0 35 0 194 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 48 0 194 0 49 0 194 0 50 0 194 0 51 0 194 0 52 0 194 0 53 0 194 0 55 0 194 0 56 0 194 0 58 0 194 0 59 0 194 0 60 0 194 0 61 0 194 0 62 0 194 0 63 0 194 0 64 0 194 0 65 0 194 0 66 0 194 0 67 0 194 0 69 0 194 0 73 0 194 0 76 0 194 0 77 0 194 0 78 0 194 0 79 0 194 0 80 0 194 0 82 0 194 0 83 0 194 0 84 0 194 0 87 0 194 0 90 0 194 0 91 0 194 0 92 0 194 0 93 0 194 0 94 0 194 0 95 0 194 0 97 0 194 0 99 0 194 0 100 0 194 0 101 0 194 0 103 0 194 0 114 0 194 0 116 0 194 0 117 0 194 0 119 0 194 0 121 0 194 0 122 0 194 0 123 0 194 0 124 0 194 0 125 0 194 0 127 0 194 0 128 0 194 0 129 0 194 0 130 0 194 0 131 0 194 0 133 0 194 0 134 0 194 0 135 0 194 0 136 0 194 0 138 0 194 0 139 0 194 0 140 0 194 0 141 0 194 0 143 0 194 0 145 0 194 0 146 0 194 0 147 0 194 0 148 0 194 0 149 0 194 0 150 0 194 0 152 0 194 0 153 0 194 0 154 0 194 0 156 0 194 0 158 0 194 0 159 0 194 0 160 0 194 0 161 0 194 0 162 0 194 0 163 0 194 0 164 0 194 0 165 0 194 0 166 0 194 0 167 0 194 0 168 0 194 0 169 0 194 0 170 0 194 0 171 0 194 2 126] 
#[1 0 202 0 1 0 202 0 2 0 202 0 5 0 202 0 6 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 12 0 202 0 13 0 202 0 15 0 202 0 16 0 202 0 17 0 206 0 20 0 202 0 23 0 202 0 25 0 202 0 26 0 202 0 29 0 202 0 31 0 202 0 33 0 202 0 35 0 202 0 36 0 202 0 37 0 202 0 38 0 202 0 39 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 202 0 49 0 202 0 50 0 202 0 51 0 202 0 52 0 202 0 53 0 202 0 55 0 202 0 56 0 202 0 58 0 202 0 59 0 202 0 60 0 202 0 61 0 202 0 62 0 202 0 63 0 202 0 64 0 202 0 65 0 202 0 66 0 202 0 67 0 202 0 69 0 202 0 73 0 202 0 76 0 202 0 77 0 202 0 78 0 202 0 79 0 202 0 80 0 202 0 82 0 202 0 83 0 202 0 84 0 202 0 87 0 202 0 90 0 202 0 91 0 202 0 92 0 202 0 93 0 202 0 94 0 202 0 95 0 202 0 97 0 202 0 99 0 202 0 100 0 202 0 101 0 202 0 103 0 202 0 114 0 202 0 116 0 202 0 117 0 202 0 119 0 202 0 121 0 202 0 122 0 202 0 123 0 202 0 124 0 202 0 125 0 202 0 127 0 202 0 128 0 202 0 129 0 202 0 130 0 202 0 131 0 202 0 133 0 202 0 134 0 202 0 135 0 202 0 136 0 202 0 138 0 202 0 139 0 202 0 140 0 202 0 141 0 202 0 143 0 202 0 145 0 202 0 146 0 202 0 147 0 202 0 148 0 202 0 149 0 202 0 150 0 202 0 152 0 202 0 153 0 202 0 154 0 202 0 156 0 202 0 158 0 202 0 159 0 202 0 160 0 202 0 161 0 202 0 162 0 202 0 163 0 202 0 164 0 202 0 165 0 202 0 166 0 202 0 167 0 202 0 168 0 202 0 169 0 202 0 170 0 202 0 171 0 202 2 126] 
#[0 5 217 0 8] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 77 1 169 0 87 1 169 0 95 1 169 0 117 1 169 0 121 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 221 0 158 1 141 0 193 1 181 0 195 1 141 0 196 5 229 0 199 5 229 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 5 237 2 104 5 237 2 106 3 53 2 124] 
#[1 0 210 0 1 0 210 0 2 0 210 0 5 0 210 0 6 0 210 0 8 0 210 0 9 0 210 0 10 0 210 0 12 0 210 0 13 0 210 0 15 0 210 0 16 0 210 0 17 0 214 0 20 0 210 0 23 0 210 0 25 0 210 0 26 0 210 0 29 0 210 0 31 0 210 0 33 0 210 0 35 0 210 0 36 0 210 0 37 0 210 0 38 0 210 0 39 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 47 0 210 0 48 0 210 0 49 0 210 0 50 0 210 0 51 0 210 0 52 0 210 0 53 0 210 0 55 0 210 0 56 0 210 0 58 0 210 0 59 0 210 0 60 0 210 0 61 0 210 0 62 0 210 0 63 0 210 0 64 0 210 0 65 0 210 0 66 0 210 0 67 0 210 0 69 0 210 0 73 0 210 0 76 0 210 0 77 0 210 0 78 0 210 0 79 0 210 0 80 0 210 0 82 0 210 0 83 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 91 0 210 0 92 0 210 0 93 0 210 0 94 0 210 0 95 0 210 0 97 0 210 0 99 0 210 0 100 0 210 0 101 0 210 0 103 0 210 0 114 0 210 0 116 0 210 0 117 0 210 0 119 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 124 0 210 0 125 0 210 0 127 0 210 0 128 0 210 0 129 0 210 0 130 0 210 0 131 0 210 0 133 0 210 0 134 0 210 0 135 0 210 0 136 0 210 0 138 0 210 0 139 0 210 0 140 0 210 0 141 0 210 0 143 0 210 0 145 0 210 0 146 0 210 0 147 0 210 0 148 0 210 0 149 0 210 0 150 0 210 0 152 0 210 0 153 0 210 0 154 0 210 0 156 0 210 0 158 0 210 0 159 0 210 0 160 0 210 0 161 0 210 0 162 0 210 0 163 0 210 0 164 0 210 0 165 0 210 0 166 0 210 0 167 0 210 0 168 0 210 0 169 0 210 0 170 0 210 0 171 0 210 2 126] 
#[0 5 241 0 8] 
#[0 0 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 190 0 25 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 5 245 1 75 5 245 1 76 5 245 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 5 245 1 92 3 209 1 93 5 245 1 112 5 245 1 114 5 245 1 115 5 245 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 0 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 93 0 149 5 249 1 121] 
#[0 5 253 0 8] 
#[1 0 226 0 1 0 226 0 2 0 226 0 5 0 226 0 6 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 12 0 226 0 13 0 226 0 15 0 226 0 16 0 226 0 17 0 230 0 20 0 226 0 23 0 226 0 25 0 226 0 26 0 226 0 29 0 226 0 31 0 226 0 33 0 226 0 35 0 226 0 36 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 47 0 226 0 48 0 226 0 49 0 226 0 50 0 226 0 51 0 226 0 52 0 226 0 53 0 226 0 55 0 226 0 56 0 226 0 58 0 226 0 59 0 226 0 60 0 226 0 61 0 226 0 62 0 226 0 63 0 226 0 64 0 226 0 65 0 226 0 66 0 226 0 67 0 226 0 69 0 226 0 73 0 226 0 76 0 226 0 77 0 226 0 78 0 226 0 79 0 226 0 80 0 226 0 82 0 226 0 83 0 226 0 84 0 226 0 87 0 226 0 90 0 226 0 91 0 226 0 92 0 226 0 93 0 226 0 94 0 226 0 95 0 226 0 97 0 226 0 99 0 226 0 100 0 226 0 101 0 226 0 103 0 226 0 114 0 226 0 116 0 226 0 117 0 226 0 119 0 226 0 121 0 226 0 122 0 226 0 123 0 226 0 124 0 226 0 125 0 226 0 127 0 226 0 128 0 226 0 129 0 226 0 130 0 226 0 131 0 226 0 133 0 226 0 134 0 226 0 135 0 226 0 136 0 226 0 138 0 226 0 139 0 226 0 140 0 226 0 141 0 226 0 143 0 226 0 145 0 226 0 146 0 226 0 147 0 226 0 148 0 226 0 149 0 226 0 150 0 226 0 152 0 226 0 153 0 226 0 154 0 226 0 156 0 226 0 158 0 226 0 159 0 226 0 160 0 226 0 161 0 226 0 162 0 226 0 163 0 226 0 164 0 226 0 165 0 226 0 166 0 226 0 167 0 226 0 168 0 226 0 169 0 226 0 170 0 226 0 171 0 226 2 126] 
#[1 0 234 0 1 0 234 0 2 0 234 0 5 0 234 0 6 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 12 0 234 0 13 0 234 0 15 0 234 0 16 0 234 0 17 0 238 0 20 0 234 0 23 0 234 0 25 0 234 0 26 0 234 0 29 0 234 0 31 0 234 0 33 0 234 0 35 0 234 0 36 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 44 0 234 0 45 0 234 0 46 0 234 0 47 0 234 0 48 0 234 0 49 0 234 0 50 0 234 0 51 0 234 0 52 0 234 0 53 0 234 0 55 0 234 0 56 0 234 0 58 0 234 0 59 0 234 0 60 0 234 0 61 0 234 0 62 0 234 0 63 0 234 0 64 0 234 0 65 0 234 0 66 0 234 0 67 0 234 0 69 0 234 0 73 0 234 0 76 0 234 0 77 0 234 0 78 0 234 0 79 0 234 0 80 0 234 0 82 0 234 0 83 0 234 0 84 0 234 0 87 0 234 0 90 0 234 0 91 0 234 0 92 0 234 0 93 0 234 0 94 0 234 0 95 0 234 0 97 0 234 0 99 0 234 0 100 0 234 0 101 0 234 0 103 0 234 0 114 0 234 0 116 0 234 0 117 0 234 0 119 0 234 0 121 0 234 0 122 0 234 0 123 0 234 0 124 0 234 0 125 0 234 0 127 0 234 0 128 0 234 0 129 0 234 0 130 0 234 0 131 0 234 0 133 0 234 0 134 0 234 0 135 0 234 0 136 0 234 0 138 0 234 0 139 0 234 0 140 0 234 0 141 0 234 0 143 0 234 0 145 0 234 0 146 0 234 0 147 0 234 0 148 0 234 0 149 0 234 0 150 0 234 0 152 0 234 0 153 0 234 0 154 0 234 0 156 0 234 0 158 0 234 0 159 0 234 0 160 0 234 0 161 0 234 0 162 0 234 0 163 0 234 0 164 0 234 0 165 0 234 0 166 0 234 0 167 0 234 0 168 0 234 0 169 0 234 0 170 0 234 0 171 0 234 2 126] 
#[1 6 1 0 8 1 93 0 149 6 5 1 121] 
#[1 1 93 0 149 6 9 1 121] 
#[1 0 242 0 1 0 242 0 2 0 242 0 5 0 242 0 6 0 242 0 8 0 242 0 9 0 242 0 10 0 242 0 12 0 242 0 13 0 242 0 15 0 242 0 16 0 242 0 17 0 246 0 20 0 242 0 23 0 242 0 25 0 242 0 26 0 242 0 29 0 242 0 31 0 242 0 33 0 242 0 35 0 242 0 36 0 242 0 37 0 242 0 38 0 242 0 39 0 242 0 44 0 242 0 45 0 242 0 46 0 242 0 47 0 242 0 48 0 242 0 49 0 242 0 50 0 242 0 51 0 242 0 52 0 242 0 53 0 242 0 55 0 242 0 56 0 242 0 58 0 242 0 59 0 242 0 60 0 242 0 61 0 242 0 62 0 242 0 63 0 242 0 64 0 242 0 65 0 242 0 66 0 242 0 67 0 242 0 69 0 242 0 73 0 242 0 76 0 242 0 77 0 242 0 78 0 242 0 79 0 242 0 80 0 242 0 82 0 242 0 83 0 242 0 84 0 242 0 87 0 242 0 90 0 242 0 91 0 242 0 92 0 242 0 93 0 242 0 94 0 242 0 95 0 242 0 97 0 242 0 99 0 242 0 100 0 242 0 101 0 242 0 103 0 242 0 114 0 242 0 116 0 242 0 117 0 242 0 119 0 242 0 121 0 242 0 122 0 242 0 123 0 242 0 124 0 242 0 125 0 242 0 127 0 242 0 128 0 242 0 129 0 242 0 130 0 242 0 131 0 242 0 133 0 242 0 134 0 242 0 135 0 242 0 136 0 242 0 138 0 242 0 139 0 242 0 140 0 242 0 141 0 242 0 143 0 242 0 145 0 242 0 146 0 242 0 147 0 242 0 148 0 242 0 149 0 242 0 150 0 242 0 152 0 242 0 153 0 242 0 154 0 242 0 156 0 242 0 158 0 242 0 159 0 242 0 160 0 242 0 161 0 242 0 162 0 242 0 163 0 242 0 164 0 242 0 165 0 242 0 166 0 242 0 167 0 242 0 168 0 242 0 169 0 242 0 170 0 242 0 171 0 242 2 126] 
#[0 6 13 0 8] 
#[0 0 250 0 8 0 158] 
#[0 0 254 0 9 0 10 0 158] 
#[0 6 17 0 8] 
#[1 6 21 0 50 6 25 0 116] 
#[1 0 105 0 1 0 109 0 5 0 11 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 15 0 46 0 145 0 47 0 149 0 48 0 19 0 49 0 157 0 50 0 23 0 52 0 27 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 31 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 35 0 65 0 39 0 66 3 21 0 73 0 209 0 76 0 43 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 47 0 87 0 237 0 94 0 51 0 95 0 245 0 97 0 249 0 99 0 55 0 100 0 59 0 114 1 5 0 116 0 63 0 117 0 67 0 121 1 17 0 122 1 21 0 123 0 71 0 124 0 75 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 0 79 0 134 0 83 0 135 1 61 0 136 0 87 0 138 0 91 0 139 1 73 0 140 1 77 0 141 0 95 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 1 2 0 156 0 99 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 211 1 189 0 212 1 145 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 6 29 1 119 6 29 1 120 6 29 1 121 6 33 1 122 6 37 1 123 6 29 1 124 6 29 1 125 6 29 1 126 6 29 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 137 2 157 1 138 2 161 1 140 2 153 1 142 2 169 1 147 2 173 1 152 2 177 1 154 6 29 1 157 2 185 1 158 6 29 1 159 6 29 1 160 6 29 1 161 6 29 1 169 6 29 1 170 6 29 1 171 6 29 1 172 6 29 1 180 6 29 1 181 6 29 1 182 6 29 1 183 6 29 1 184 6 29 1 185 6 29 1 186 6 29 1 187 6 29 1 197 6 29 1 198 6 29 1 199 6 29 1 200 6 29 1 202 3 13 1 208 1 205 2 93 3 21 2 94 6 29 2 103 3 29 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 6 29 2 111 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 6 41 1 52 1 205 1 53 1 205 1 58 6 41 1 59 6 41 1 60 6 41 1 61 6 41 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 6 41 2 107 1 205 2 108 6 41 2 109 1 205 2 110] 
#[1 1 6 0 4 1 6 0 7 1 6 0 8 1 6 0 10 1 6 0 11 1 6 0 13 1 6 0 14 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 22 6 45 0 23 6 49 0 24 6 53 0 26 1 6 0 28 1 6 0 30 1 6 0 34 1 6 0 35 0 111 0 37 1 6 0 40 1 6 0 151 0 111 0 158 6 61 0 222 6 61 0 252] 
#[0 1 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 42 0 1 1 42 0 2 1 42 0 5 1 42 0 6 1 42 0 8 1 42 0 9 1 42 0 10 1 42 0 12 1 42 0 13 1 42 0 15 1 42 0 16 1 42 0 17 0 115 0 20 1 42 0 23 1 42 0 25 1 42 0 26 1 42 0 29 1 42 0 31 1 42 0 33 1 42 0 35 1 42 0 36 1 42 0 37 1 42 0 38 1 42 0 39 1 42 0 44 1 42 0 45 1 42 0 46 1 42 0 47 1 42 0 48 1 42 0 49 1 42 0 50 1 42 0 51 1 42 0 52 1 42 0 53 1 42 0 55 1 42 0 56 1 42 0 58 1 42 0 59 1 42 0 60 1 42 0 61 1 42 0 62 1 42 0 63 1 42 0 64 1 42 0 65 1 42 0 66 1 42 0 67 1 42 0 69 1 42 0 73 1 42 0 76 1 42 0 77 1 42 0 78 1 42 0 79 1 42 0 80 1 42 0 82 1 42 0 83 1 42 0 84 1 42 0 87 1 42 0 90 1 42 0 91 1 42 0 92 1 42 0 93 1 42 0 94 1 42 0 95 1 42 0 97 1 42 0 99 1 42 0 100 1 42 0 101 1 42 0 103 1 42 0 114 1 42 0 116 1 42 0 117 1 42 0 119 1 42 0 121 1 42 0 122 1 42 0 123 1 42 0 124 1 42 0 125 1 42 0 127 1 42 0 128 1 42 0 129 1 42 0 130 1 42 0 131 1 42 0 133 1 42 0 134 1 42 0 135 1 42 0 136 1 42 0 138 1 42 0 139 1 42 0 140 1 42 0 141 1 42 0 143 1 42 0 145 1 42 0 146 1 42 0 147 1 42 0 148 1 42 0 149 1 42 0 150 1 42 0 152 1 42 0 153 1 42 0 154 1 42 0 156 1 42 0 158 1 42 0 159 1 42 0 160 1 42 0 161 1 42 0 162 1 42 0 163 1 42 0 164 1 42 0 165 1 42 0 166 1 42 0 167 1 42 0 168 1 42 0 169 1 42 0 170 1 42 0 171 1 42 2 126] 
#[0 0 119 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 58 0 1 1 58 0 2 1 58 0 5 1 58 0 6 1 58 0 8 1 58 0 9 1 58 0 10 1 58 0 12 1 58 0 13 1 58 0 15 1 58 0 16 1 58 0 17 0 123 0 20 1 58 0 23 1 58 0 25 1 58 0 26 1 58 0 29 1 58 0 31 1 58 0 32 1 58 0 33 1 58 0 35 1 58 0 36 1 58 0 37 1 58 0 38 1 58 0 39 1 58 0 44 1 58 0 45 1 58 0 46 1 58 0 47 1 58 0 48 1 58 0 49 1 58 0 50 1 58 0 51 1 58 0 52 1 58 0 53 1 58 0 55 1 58 0 56 1 58 0 58 1 58 0 59 1 58 0 60 1 58 0 61 1 58 0 62 1 58 0 63 1 58 0 64 1 58 0 65 1 58 0 66 1 58 0 67 1 58 0 69 1 58 0 73 1 58 0 76 1 58 0 77 1 58 0 78 1 58 0 79 1 58 0 80 1 58 0 82 1 58 0 83 1 58 0 84 1 58 0 87 1 58 0 90 1 58 0 91 1 58 0 92 1 58 0 93 1 58 0 94 1 58 0 95 1 58 0 97 1 58 0 99 1 58 0 100 1 58 0 101 1 58 0 102 1 58 0 103 1 58 0 114 1 58 0 116 1 58 0 117 1 58 0 119 1 58 0 121 1 58 0 122 1 58 0 123 1 58 0 124 1 58 0 125 1 58 0 127 1 58 0 128 1 58 0 129 1 58 0 130 1 58 0 131 1 58 0 133 1 58 0 134 1 58 0 135 1 58 0 136 1 58 0 138 1 58 0 139 1 58 0 140 1 58 0 141 1 58 0 143 1 58 0 145 1 58 0 146 1 58 0 147 1 58 0 148 1 58 0 149 1 58 0 150 1 58 0 152 1 58 0 153 1 58 0 154 1 58 0 156 1 58 0 158 1 58 0 159 1 58 0 160 1 58 0 161 1 58 0 162 1 58 0 163 1 58 0 164 1 58 0 165 1 58 0 166 1 58 0 167 1 58 0 168 1 58 0 169 1 58 0 170 1 58 0 171 1 58 2 126] 
#[1 6 69 0 158 6 73 1 143 6 77 1 146] 
#[1 1 62 0 1 1 62 0 2 1 62 0 5 1 62 0 6 1 62 0 8 1 62 0 9 0 127 0 10 1 62 0 12 1 62 0 13 1 62 0 15 1 62 0 16 1 62 0 17 1 62 0 23 1 62 0 25 1 62 0 26 1 62 0 29 1 62 0 31 1 62 0 33 1 62 0 35 1 62 0 36 1 66 0 37 1 62 0 38 1 62 0 39 1 62 0 44 1 62 0 45 1 62 0 46 1 62 0 47 1 62 0 48 1 62 0 49 1 62 0 50 1 62 0 51 1 62 0 52 1 62 0 53 1 62 0 55 1 62 0 56 1 62 0 58 1 62 0 59 1 62 0 60 1 62 0 61 1 62 0 62 1 62 0 63 1 62 0 64 1 62 0 65 1 62 0 66 1 62 0 67 1 62 0 69 1 62 0 73 1 62 0 76 1 62 0 77 1 62 0 78 1 62 0 79 1 62 0 80 1 62 0 82 1 62 0 83 1 62 0 84 1 62 0 87 1 62 0 90 1 62 0 91 1 62 0 92 1 62 0 93 1 62 0 94 1 62 0 95 1 62 0 97 1 62 0 99 1 62 0 100 1 62 0 101 1 62 0 102 1 62 0 103 1 62 0 114 1 62 0 116 1 62 0 117 1 62 0 119 1 62 0 121 1 62 0 122 1 62 0 123 1 62 0 124 1 62 0 125 1 62 0 127 1 62 0 128 1 62 0 129 1 62 0 130 1 62 0 131 1 62 0 133 1 62 0 134 1 62 0 135 1 62 0 136 1 62 0 138 1 62 0 139 1 62 0 140 1 62 0 141 1 62 0 143 1 62 0 145 1 62 0 146 1 62 0 147 1 62 0 148 1 62 0 149 1 62 0 150 1 62 0 152 1 62 0 153 1 62 0 154 1 62 0 156 1 62 0 158 1 62 0 159 1 62 0 160 1 62 0 161 1 62 0 162 1 62 0 163 1 62 0 164 1 62 0 165 1 62 0 166 1 62 0 167 1 62 0 168 1 62 0 169 1 62 0 170 1 62 0 171 6 85 2 105 1 62 2 126] 
#[0 1 70 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 78 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 82 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 98 0 1 1 98 0 2 1 98 0 5 1 98 0 6 1 98 0 8 1 98 0 9 1 98 0 10 1 98 0 12 1 98 0 13 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 23 1 98 0 25 1 98 0 26 1 98 0 29 1 98 0 31 1 98 0 33 0 131 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 44 1 98 0 45 1 98 0 46 1 98 0 47 1 98 0 48 1 98 0 49 1 98 0 50 1 98 0 51 1 98 0 52 1 98 0 53 1 98 0 55 1 98 0 56 1 98 0 58 1 98 0 59 1 98 0 60 1 98 0 61 1 98 0 62 1 98 0 63 1 98 0 64 1 98 0 65 1 98 0 66 1 98 0 67 1 98 0 69 1 98 0 73 1 98 0 76 1 98 0 77 1 98 0 78 1 98 0 79 1 98 0 80 1 98 0 82 1 98 0 83 1 98 0 84 1 98 0 87 1 98 0 90 1 98 0 91 1 98 0 92 1 98 0 93 1 98 0 94 1 98 0 95 1 98 0 97 1 98 0 99 1 98 0 100 1 98 0 101 1 98 0 102 1 98 0 103 1 98 0 114 1 98 0 116 1 98 0 117 1 98 0 119 1 98 0 121 1 98 0 122 1 98 0 123 1 98 0 124 1 98 0 125 1 98 0 127 1 98 0 128 1 98 0 129 1 98 0 130 1 98 0 131 1 98 0 133 1 98 0 134 1 98 0 135 1 98 0 136 1 98 0 138 1 98 0 139 1 98 0 140 1 98 0 141 1 98 0 143 1 98 0 145 1 98 0 146 1 98 0 147 1 98 0 148 1 98 0 149 1 98 0 150 1 98 0 152 1 98 0 153 1 98 0 154 1 98 0 156 1 98 0 158 1 98 0 159 1 98 0 160 1 98 0 161 1 98 0 162 1 98 0 163 1 98 0 164 1 98 0 165 1 98 0 166 1 98 0 167 1 98 0 168 1 98 0 169 1 98 0 170 1 98 0 171 1 98 2 126] 
#[0 1 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 106 0 1 1 106 0 2 1 106 0 5 1 106 0 6 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 16 1 106 0 17 1 106 0 23 1 106 0 25 1 106 0 26 1 106 0 29 1 106 0 31 1 106 0 33 1 106 0 35 1 106 0 36 1 110 0 37 1 106 0 38 1 106 0 39 1 106 0 44 1 106 0 45 1 106 0 46 1 106 0 47 1 106 0 48 1 106 0 49 1 106 0 50 1 106 0 51 1 106 0 52 1 106 0 53 1 106 0 55 1 106 0 56 1 106 0 58 1 106 0 59 1 106 0 60 1 106 0 61 1 106 0 62 1 106 0 63 1 106 0 64 1 106 0 65 1 106 0 66 1 106 0 67 1 106 0 69 1 106 0 73 1 106 0 76 1 106 0 77 1 106 0 78 1 106 0 79 1 106 0 80 1 106 0 82 1 106 0 83 1 106 0 84 1 106 0 87 1 106 0 90 1 106 0 91 1 106 0 92 1 106 0 93 1 106 0 94 1 106 0 95 1 106 0 97 1 106 0 99 1 106 0 100 1 106 0 101 1 106 0 102 1 106 0 103 1 106 0 114 1 106 0 116 1 106 0 117 1 106 0 119 1 106 0 121 1 106 0 122 1 106 0 123 1 106 0 124 1 106 0 125 1 106 0 127 1 106 0 128 1 106 0 129 1 106 0 130 1 106 0 131 1 106 0 133 1 106 0 134 1 106 0 135 1 106 0 136 1 106 0 138 1 106 0 139 1 106 0 140 1 106 0 141 1 106 0 143 1 106 0 145 1 106 0 146 1 106 0 147 1 106 0 148 1 106 0 149 1 106 0 150 1 106 0 152 1 106 0 153 1 106 0 154 1 106 0 156 1 106 0 158 1 106 0 159 1 106 0 160 1 106 0 161 1 106 0 162 1 106 0 163 1 106 0 164 1 106 0 165 1 106 0 166 1 106 0 167 1 106 0 168 1 106 0 169 1 106 0 170 1 106 0 171 1 106 2 126] 
#[0 1 114 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 5 165 0 37 6 93 0 217 6 97 0 218] 
#[1 1 118 0 1 1 118 0 2 1 118 0 3 1 118 0 4 1 118 0 5 1 118 0 6 1 118 0 7 0 135 0 8 1 118 0 9 1 118 0 10 1 118 0 11 1 118 0 12 0 139 0 13 1 118 0 14 1 118 0 15 1 118 0 16 0 143 0 17 1 118 0 18 6 113 0 19 6 117 0 20 1 118 0 21 1 118 0 22 1 118 0 23 1 118 0 25 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 33 1 118 0 34 0 147 0 35 1 118 0 36 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 44 1 118 0 45 1 118 0 46 1 118 0 47 1 118 0 48 1 118 0 49 1 118 0 50 1 118 0 51 1 118 0 52 1 118 0 53 1 118 0 55 1 118 0 56 1 118 0 58 1 118 0 59 1 118 0 60 1 118 0 61 1 118 0 62 1 118 0 63 1 118 0 64 1 118 0 65 1 118 0 66 1 118 0 67 1 118 0 69 1 118 0 73 1 118 0 76 1 118 0 77 1 118 0 78 1 118 0 79 1 118 0 80 1 118 0 82 1 118 0 83 1 118 0 84 1 118 0 87 1 118 0 90 1 118 0 91 1 118 0 92 1 118 0 93 1 118 0 94 1 118 0 95 1 118 0 97 1 118 0 99 1 118 0 100 1 118 0 101 1 118 0 103 1 118 0 114 1 118 0 116 1 118 0 117 1 118 0 119 1 118 0 121 1 118 0 122 1 118 0 123 1 118 0 124 1 118 0 125 1 118 0 127 1 118 0 128 1 118 0 129 1 118 0 130 1 118 0 131 1 118 0 133 1 118 0 134 1 118 0 135 1 118 0 136 1 118 0 138 1 118 0 139 1 118 0 140 1 118 0 141 1 118 0 143 1 118 0 145 1 118 0 146 1 118 0 147 1 118 0 148 1 118 0 149 1 118 0 150 1 118 0 151 1 118 0 152 1 118 0 153 1 118 0 154 1 118 0 155 1 118 0 156 1 118 0 158 1 118 0 159 1 118 0 160 1 118 0 161 1 118 0 162 1 118 0 163 1 118 0 164 1 118 0 165 1 118 0 166 1 118 0 167 1 118 0 168 1 118 0 169 1 118 0 170 1 118 0 171 1 118 2 126] 
#[1 1 122 0 1 1 122 0 2 1 122 0 3 1 122 0 4 1 122 0 5 1 122 0 6 1 122 0 7 1 122 0 8 1 122 0 9 1 122 0 10 1 122 0 11 1 122 0 12 1 122 0 13 1 122 0 14 1 122 0 15 1 122 0 16 1 122 0 17 1 122 0 18 1 122 0 19 1 122 0 20 1 122 0 21 1 122 0 22 1 122 0 23 1 122 0 25 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 33 1 122 0 34 0 151 0 35 1 122 0 36 6 129 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 48 1 122 0 49 1 122 0 50 1 122 0 51 1 122 0 52 1 122 0 53 1 122 0 55 1 122 0 56 1 122 0 58 1 122 0 59 1 122 0 60 1 122 0 61 1 122 0 62 1 122 0 63 1 122 0 64 1 122 0 65 1 122 0 66 1 122 0 67 1 122 0 69 1 122 0 73 1 122 0 76 1 122 0 77 1 122 0 78 1 122 0 79 1 122 0 80 1 122 0 82 1 122 0 83 1 122 0 84 1 122 0 87 1 122 0 90 1 122 0 91 1 122 0 92 1 122 0 93 1 122 0 94 1 122 0 95 1 122 0 97 1 122 0 99 1 122 0 100 1 122 0 101 1 122 0 103 1 122 0 114 1 122 0 116 1 122 0 117 1 122 0 119 1 122 0 121 1 122 0 122 1 122 0 123 1 122 0 124 1 122 0 125 1 122 0 127 1 122 0 128 1 122 0 129 1 122 0 130 1 122 0 131 1 122 0 133 1 122 0 134 1 122 0 135 1 122 0 136 1 122 0 138 1 122 0 139 1 122 0 140 1 122 0 141 1 122 0 143 1 122 0 145 1 122 0 146 1 122 0 147 1 122 0 148 1 122 0 149 1 122 0 150 1 122 0 151 1 122 0 152 1 122 0 153 1 122 0 154 1 122 0 155 1 122 0 156 1 122 0 158 1 122 0 159 1 122 0 160 1 122 0 161 1 122 0 162 1 122 0 163 1 122 0 164 1 122 0 165 1 122 0 166 1 122 0 167 1 122 0 168 1 122 0 169 1 122 0 170 1 122 0 171 1 122 2 126] 
#[0 1 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 133 0 163] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 137 0 167] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 141 0 20] 
#[0 6 145 0 20] 
#[0 1 158 0 9 0 20] 
#[1 1 162 0 4 1 162 0 7 1 162 0 8 1 166 0 9 1 162 0 11 1 162 0 13 1 162 0 14 1 166 0 15 1 162 0 17 1 162 0 18 1 162 0 19 1 162 0 20 1 162 0 22 1 166 0 25 1 162 0 28 1 162 0 30 1 162 0 34 1 162 0 35 1 162 0 37 1 162 0 40 1 162 0 151] 
#[0 1 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 182 0 4 1 182 0 7 1 182 0 8 1 186 0 9 1 182 0 11 1 182 0 13 1 182 0 14 1 186 0 15 1 182 0 17 1 182 0 18 1 182 0 19 1 182 0 20 1 182 0 22 1 186 0 25 1 182 0 28 1 182 0 30 1 182 0 34 1 182 0 35 1 182 0 37 1 182 0 40 1 182 0 151] 
#[1 1 190 0 4 1 190 0 7 1 190 0 8 1 194 0 9 1 190 0 11 1 190 0 13 1 190 0 14 1 194 0 15 1 190 0 17 1 190 0 18 1 190 0 19 1 190 0 20 1 190 0 22 1 194 0 25 1 190 0 28 1 190 0 30 1 190 0 34 1 190 0 35 1 190 0 37 1 190 0 40 1 190 0 151] 
#[1 1 198 0 4 1 198 0 7 1 198 0 8 1 202 0 9 1 198 0 11 1 198 0 13 1 198 0 14 1 202 0 15 1 198 0 17 1 198 0 18 1 198 0 19 1 198 0 20 1 198 0 22 1 202 0 25 1 198 0 28 1 198 0 30 1 198 0 34 1 198 0 35 1 198 0 37 1 198 0 40 1 198 0 151] 
#[0 1 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 6 149 0 4 6 153 0 7 6 157 0 11 6 161 0 14 6 165 0 18 6 169 0 22 6 173 0 28 6 177 0 30 6 181 0 34 6 185 0 40 6 189 0 151 6 193 1 113] 
#[1 1 242 0 1 1 242 0 2 1 242 0 3 1 242 0 4 1 242 0 5 1 242 0 6 1 242 0 7 0 155 0 8 1 242 0 9 1 242 0 10 1 242 0 11 1 242 0 12 1 242 0 13 1 242 0 14 1 242 0 15 1 242 0 16 1 242 0 17 1 242 0 18 1 242 0 19 1 242 0 20 1 242 0 21 1 242 0 22 1 242 0 23 1 242 0 25 1 242 0 26 1 242 0 27 1 242 0 28 1 242 0 29 1 242 0 30 1 242 0 31 1 242 0 33 1 242 0 34 1 242 0 35 1 242 0 36 1 242 0 37 1 242 0 38 1 242 0 39 1 242 0 40 1 242 0 44 1 242 0 45 1 242 0 46 1 242 0 47 1 242 0 48 1 242 0 49 1 242 0 50 1 242 0 51 1 242 0 52 1 242 0 53 1 242 0 55 1 242 0 56 1 242 0 58 1 242 0 59 1 242 0 60 1 242 0 61 1 242 0 62 1 242 0 63 1 242 0 64 1 242 0 65 1 242 0 66 1 242 0 67 1 242 0 69 1 242 0 73 1 242 0 76 1 242 0 77 1 242 0 78 1 242 0 79 1 242 0 80 1 242 0 82 1 242 0 83 1 242 0 84 1 242 0 87 1 242 0 90 1 242 0 91 1 242 0 92 1 242 0 93 1 242 0 94 1 242 0 95 1 242 0 97 1 242 0 99 1 242 0 100 1 242 0 101 1 242 0 103 1 242 0 114 1 242 0 116 1 242 0 117 1 242 0 119 1 242 0 121 1 242 0 122 1 242 0 123 1 242 0 124 1 242 0 125 1 242 0 127 1 242 0 128 1 242 0 129 1 242 0 130 1 242 0 131 1 242 0 133 1 242 0 134 1 242 0 135 1 242 0 136 1 242 0 138 1 242 0 139 1 242 0 140 1 242 0 141 1 242 0 143 1 242 0 145 1 242 0 146 1 242 0 147 1 242 0 148 1 242 0 149 1 242 0 150 1 242 0 151 1 242 0 152 1 242 0 153 1 242 0 154 1 242 0 155 1 242 0 156 1 242 0 158 1 242 0 159 1 242 0 160 1 242 0 161 1 242 0 162 1 242 0 163 1 242 0 164 1 242 0 165 1 242 0 166 1 242 0 167 1 242 0 168 1 242 0 169 1 242 0 170 1 242 0 171 1 242 2 126] 
#[0 1 246 0 9 0 15 0 25] 
#[1 1 250 0 1 1 250 0 2 1 250 0 3 1 250 0 4 1 250 0 5 1 250 0 6 1 250 0 7 0 159 0 8 1 250 0 9 1 250 0 10 1 250 0 11 1 250 0 12 1 250 0 13 1 250 0 14 1 250 0 15 1 250 0 16 1 250 0 17 1 250 0 18 1 250 0 19 1 250 0 20 1 250 0 21 1 250 0 22 1 250 0 23 1 250 0 25 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 31 1 250 0 33 1 250 0 34 1 250 0 35 1 250 0 36 1 250 0 37 1 250 0 38 1 250 0 39 1 250 0 40 1 250 0 44 1 250 0 45 1 250 0 46 1 250 0 47 1 250 0 48 1 250 0 49 1 250 0 50 1 250 0 51 1 250 0 52 1 250 0 53 1 250 0 55 1 250 0 56 1 250 0 58 1 250 0 59 1 250 0 60 1 250 0 61 1 250 0 62 1 250 0 63 1 250 0 64 1 250 0 65 1 250 0 66 1 250 0 67 1 250 0 69 1 250 0 73 1 250 0 76 1 250 0 77 1 250 0 78 1 250 0 79 1 250 0 80 1 250 0 82 1 250 0 83 1 250 0 84 1 250 0 87 1 250 0 90 1 250 0 91 1 250 0 92 1 250 0 93 1 250 0 94 1 250 0 95 1 250 0 97 1 250 0 99 1 250 0 100 1 250 0 101 1 250 0 103 1 250 0 114 1 250 0 116 1 250 0 117 1 250 0 119 1 250 0 121 1 250 0 122 1 250 0 123 1 250 0 124 1 250 0 125 1 250 0 127 1 250 0 128 1 250 0 129 1 250 0 130 1 250 0 131 1 250 0 133 1 250 0 134 1 250 0 135 1 250 0 136 1 250 0 138 1 250 0 139 1 250 0 140 1 250 0 141 1 250 0 143 1 250 0 145 1 250 0 146 1 250 0 147 1 250 0 148 1 250 0 149 1 250 0 150 1 250 0 151 1 250 0 152 1 250 0 153 1 250 0 154 1 250 0 155 1 250 0 156 1 250 0 158 1 250 0 159 1 250 0 160 1 250 0 161 1 250 0 162 1 250 0 163 1 250 0 164 1 250 0 165 1 250 0 166 1 250 0 167 1 250 0 168 1 250 0 169 1 250 0 170 1 250 0 171 1 250 2 126] 
#[1 1 254 0 4 1 254 0 7 2 2 0 9 1 254 0 11 1 254 0 14 2 2 0 15 1 254 0 18 1 254 0 22 2 2 0 25 1 254 0 28 1 254 0 30 1 254 0 34 1 254 0 40 1 254 0 151] 
#[1 2 6 0 4 2 6 0 7 2 10 0 9 2 6 0 11 2 6 0 14 2 10 0 15 2 6 0 18 2 6 0 22 2 10 0 25 2 6 0 28 2 6 0 30 2 6 0 34 2 6 0 40 2 6 0 151] 
#[0 2 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 2 18 0 4 2 18 0 7 2 22 0 9 2 18 0 11 2 18 0 14 2 22 0 15 2 18 0 18 2 18 0 22 2 22 0 25 2 18 0 28 2 18 0 30 2 18 0 34 2 18 0 40 2 18 0 151] 
#[0 2 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 30 0 9 0 15 0 25] 
#[0 0 0 2 126] 
#[0 2 34 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 38 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 54 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 6 205 0 32 1 93 0 149 6 209 1 121 6 213 1 136] 
#[1 1 1 0 114 6 225 0 124 6 225 0 138 6 225 1 134 6 229 1 140 6 225 2 102] 
#[1 6 237 0 32 1 93 0 149 6 241 1 121 6 245 1 135] 
#[1 5 29 0 8 7 1 0 46 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 7 1 0 124 5 77 0 125 1 169 0 134 1 169 0 135 7 1 0 138 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 7 9 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 7 9 0 211 1 189 0 212 7 9 0 214 1 197 0 215 7 1 1 133 7 1 1 134 3 13 1 208 7 9 1 234 7 1 2 102 3 29 2 104 7 13 2 124] 
#[0 7 17 0 25] 
#[0 2 58 0 9 0 25] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 77 0 141 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 7 21 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 7 21 0 211 1 189 0 212 7 21 0 214 1 197 0 215 7 25 1 152 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 2 62 0 9 0 25] 
#[0 2 66 0 9 0 25] 
#[1 7 29 0 8 7 33 0 158 7 37 1 3 7 41 1 141] 
#[0 7 45 0 25] 
#[0 2 70 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 7 49 0 25] 
#[0 2 74 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 2 154 0 1 2 154 0 2 2 154 0 5 2 154 0 6 2 154 0 8 2 154 0 9 2 154 0 10 2 154 0 12 2 154 0 13 2 154 0 15 2 154 0 16 2 154 0 17 2 154 0 23 2 154 0 25 2 154 0 26 2 154 0 29 2 154 0 31 2 154 0 33 2 154 0 35 2 154 0 36 2 158 0 37 2 154 0 38 2 154 0 39 2 154 0 44 2 154 0 45 2 154 0 46 2 154 0 47 2 154 0 48 2 154 0 49 2 154 0 50 2 154 0 51 2 154 0 52 2 154 0 53 2 154 0 55 2 154 0 56 2 154 0 58 2 154 0 59 2 154 0 60 2 154 0 61 2 154 0 62 2 154 0 63 2 154 0 64 2 154 0 65 2 154 0 66 2 154 0 67 2 154 0 69 2 154 0 73 2 154 0 76 2 154 0 77 2 154 0 78 2 154 0 79 2 154 0 80 2 154 0 82 2 154 0 83 2 154 0 84 2 154 0 87 2 154 0 90 2 154 0 91 2 154 0 92 2 154 0 93 2 154 0 94 2 154 0 95 2 154 0 97 2 154 0 99 2 154 0 100 2 154 0 101 2 154 0 102 2 154 0 103 2 154 0 114 2 154 0 116 2 154 0 117 2 154 0 119 2 154 0 121 2 154 0 122 2 154 0 123 2 154 0 124 2 154 0 125 2 154 0 127 2 154 0 128 2 154 0 129 2 154 0 130 2 154 0 131 2 154 0 133 2 154 0 134 2 154 0 135 2 154 0 136 2 154 0 138 2 154 0 139 2 154 0 140 2 154 0 141 2 154 0 143 2 154 0 145 2 154 0 146 2 154 0 147 2 154 0 148 2 154 0 149 2 154 0 150 2 154 0 152 2 154 0 153 2 154 0 154 2 154 0 156 2 154 0 158 2 154 0 159 2 154 0 160 2 154 0 161 2 154 0 162 2 154 0 163 2 154 0 164 2 154 0 165 2 154 0 166 2 154 0 167 2 154 0 168 2 154 0 169 2 154 0 170 2 154 0 171 2 154 2 126] 
#[0 2 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 170 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 2 174 0 1 2 174 0 2 2 174 0 5 2 174 0 6 2 174 0 8 2 174 0 9 2 174 0 10 2 174 0 12 2 174 0 13 2 174 0 15 2 174 0 16 2 174 0 17 2 174 0 23 2 174 0 25 2 174 0 26 2 174 0 29 2 174 0 31 2 174 0 33 2 174 0 35 2 174 0 36 2 178 0 37 2 174 0 38 2 174 0 39 2 174 0 44 2 174 0 45 2 174 0 46 2 174 0 47 2 174 0 48 2 174 0 49 2 174 0 50 2 174 0 51 2 174 0 52 2 174 0 53 2 174 0 55 2 174 0 56 2 174 0 58 2 174 0 59 2 174 0 60 2 174 0 61 2 174 0 62 2 174 0 63 2 174 0 64 2 174 0 65 2 174 0 66 2 174 0 67 2 174 0 69 2 174 0 73 2 174 0 76 2 174 0 77 2 174 0 78 2 174 0 79 2 174 0 80 2 174 0 82 2 174 0 83 2 174 0 84 2 174 0 87 2 174 0 90 2 174 0 91 2 174 0 92 2 174 0 93 2 174 0 94 2 174 0 95 2 174 0 97 2 174 0 99 2 174 0 100 2 174 0 101 2 174 0 102 2 174 0 103 2 174 0 114 2 174 0 116 2 174 0 117 2 174 0 119 2 174 0 121 2 174 0 122 2 174 0 123 2 174 0 124 2 174 0 125 2 174 0 127 2 174 0 128 2 174 0 129 2 174 0 130 2 174 0 131 2 174 0 133 2 174 0 134 2 174 0 135 2 174 0 136 2 174 0 138 2 174 0 139 2 174 0 140 2 174 0 141 2 174 0 143 2 174 0 145 2 174 0 146 2 174 0 147 2 174 0 148 2 174 0 149 2 174 0 150 2 174 0 152 2 174 0 153 2 174 0 154 2 174 0 156 2 174 0 158 2 174 0 159 2 174 0 160 2 174 0 161 2 174 0 162 2 174 0 163 2 174 0 164 2 174 0 165 2 174 0 166 2 174 0 167 2 174 0 168 2 174 0 169 2 174 0 170 2 174 0 171 2 174 2 126] 
#[0 2 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 198 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 6 81 0 10 7 53 2 105] 
#[1 0 105 0 1 0 109 0 5 0 163 0 8 2 206 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 167 0 49 0 171 0 52 0 175 0 55 3 65 0 56 0 179 0 60 0 185 0 61 0 189 0 62 0 183 0 65 0 187 0 66 3 21 0 73 0 191 0 77 3 69 0 80 7 81 0 86 0 195 0 87 0 199 0 95 0 245 0 97 0 249 0 99 0 203 0 100 7 81 0 104 7 81 0 114 0 207 0 117 0 211 0 121 1 17 0 122 1 21 0 123 0 215 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 0 219 0 134 0 223 0 135 3 77 0 136 0 227 0 139 1 77 0 141 0 231 0 143 1 97 0 153 0 235 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 4 221 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 4 225 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 4 221 0 211 1 189 0 212 4 221 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 229 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 4 233 1 75 4 233 1 76 4 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 7 69 1 82 7 73 1 83 7 77 1 84 7 81 1 85 7 81 1 86 3 197 1 87 7 89 1 88 7 93 1 89 4 233 1 92 3 209 1 93 4 233 1 112 4 233 1 115 4 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 7 97 0 8 5 1 0 62 7 101 0 158 7 105 1 79 3 193 1 81 3 197 1 87 3 201 1 89] 
#[0 5 21 0 8] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 0 239 0 158 1 141 0 193 1 137 0 195 1 141 0 196 7 109 0 197 7 109 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 7 109 0 211 1 189 0 212 7 109 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 7 121 1 73 7 121 1 74 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[0 6 1 0 8] 
#[1 0 111 0 1 0 111 0 2 1 6 0 3 1 6 0 4 0 111 0 5 0 111 0 6 1 6 0 7 0 111 0 8 0 111 0 9 0 111 0 10 1 6 0 11 0 111 0 12 0 111 0 13 1 6 0 14 0 111 0 15 0 111 0 16 0 111 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 0 111 0 23 6 49 0 24 0 111 0 25 0 243 0 26 1 6 0 27 1 6 0 28 0 111 0 29 1 6 0 30 0 111 0 31 2 214 0 32 0 111 0 33 1 6 0 34 0 111 0 35 0 111 0 36 0 111 0 37 0 111 0 38 0 111 0 39 1 6 0 40 0 111 0 44 0 111 0 45 0 111 0 46 0 111 0 47 0 111 0 48 0 111 0 49 0 111 0 50 0 111 0 51 0 111 0 52 0 111 0 53 0 111 0 55 0 111 0 56 0 111 0 58 0 111 0 59 0 111 0 60 0 111 0 61 0 111 0 62 0 111 0 63 0 111 0 64 0 111 0 65 0 111 0 66 0 111 0 67 0 111 0 69 0 111 0 73 0 111 0 76 0 111 0 77 0 111 0 78 0 111 0 79 0 111 0 80 0 111 0 82 0 111 0 83 0 111 0 84 0 111 0 87 0 111 0 90 0 111 0 91 0 111 0 92 0 111 0 93 0 111 0 94 0 111 0 95 0 111 0 97 0 111 0 99 0 111 0 100 0 111 0 101 0 111 0 103 0 111 0 114 0 111 0 116 0 111 0 117 0 111 0 119 0 111 0 121 0 111 0 122 0 111 0 123 0 111 0 124 0 111 0 125 0 111 0 127 0 111 0 128 0 111 0 129 0 111 0 130 0 111 0 131 0 111 0 133 0 111 0 134 0 111 0 135 0 111 0 136 0 111 0 138 0 111 0 139 0 111 0 140 0 111 0 141 0 111 0 143 0 111 0 145 0 111 0 146 0 111 0 147 0 111 0 148 0 111 0 149 0 111 0 150 1 6 0 151 0 111 0 152 0 111 0 153 0 111 0 154 1 6 0 155 0 111 0 156 0 111 0 158 0 111 0 159 0 111 0 160 0 111 0 161 0 111 0 162 0 111 0 163 0 111 0 164 0 111 0 165 0 111 0 166 0 111 0 167 0 111 0 168 0 111 0 169 0 111 0 170 0 111 0 171 6 61 0 222 6 61 0 252 0 111 2 126] 
#[0 2 218 0 158] 
#[0 1 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 2 222 0 1 2 222 0 2 2 222 0 3 6 149 0 4 2 222 0 5 2 222 0 6 6 153 0 7 2 222 0 8 2 222 0 9 2 222 0 10 6 157 0 11 2 222 0 12 2 222 0 13 6 161 0 14 2 222 0 15 2 222 0 16 2 222 0 17 6 165 0 18 2 222 0 21 6 169 0 22 2 222 0 23 2 222 0 25 2 222 0 26 2 222 0 27 6 173 0 28 2 222 0 29 6 177 0 30 2 222 0 31 2 222 0 33 6 181 0 34 2 222 0 35 2 222 0 36 2 222 0 38 2 222 0 39 6 185 0 40 2 222 0 44 2 222 0 45 2 222 0 46 2 222 0 47 2 222 0 48 2 222 0 49 2 222 0 50 2 222 0 51 2 222 0 52 2 222 0 53 2 222 0 55 2 222 0 56 2 222 0 58 2 222 0 59 2 222 0 60 2 222 0 61 2 222 0 62 2 222 0 63 2 222 0 64 2 222 0 65 2 222 0 66 2 222 0 67 2 222 0 69 2 222 0 73 2 222 0 76 2 222 0 77 2 222 0 78 2 222 0 79 2 222 0 80 2 222 0 82 2 222 0 83 2 222 0 84 2 222 0 87 2 222 0 90 2 222 0 91 2 222 0 92 2 222 0 93 2 222 0 94 2 222 0 95 2 222 0 97 2 222 0 99 2 222 0 100 2 222 0 101 2 222 0 103 2 222 0 114 2 222 0 116 2 222 0 117 2 222 0 119 2 222 0 121 2 222 0 122 2 222 0 123 2 222 0 124 2 222 0 125 2 222 0 127 2 222 0 128 2 222 0 129 2 222 0 130 2 222 0 131 2 222 0 133 2 222 0 134 2 222 0 135 2 222 0 136 2 222 0 138 2 222 0 139 2 222 0 140 2 222 0 141 2 222 0 143 2 222 0 145 2 222 0 146 2 222 0 147 2 222 0 148 2 222 0 149 2 222 0 150 6 189 0 151 2 222 0 152 2 222 0 153 2 222 0 154 2 222 0 155 2 222 0 156 2 222 0 158 2 222 0 159 2 222 0 160 2 222 0 161 2 222 0 162 2 222 0 163 2 222 0 164 2 222 0 165 2 222 0 166 2 222 0 167 2 222 0 168 2 222 0 169 2 222 0 170 2 222 0 171 6 193 1 113 2 222 2 126] 
#[0 1 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 2 226 0 1 2 226 0 2 7 125 0 3 2 226 0 5 2 226 0 6 2 226 0 8 2 226 0 9 0 247 0 10 2 226 0 12 2 226 0 13 2 226 0 15 2 226 0 16 2 226 0 17 7 133 0 21 2 226 0 23 2 226 0 25 2 226 0 26 2 226 0 27 2 226 0 29 2 226 0 31 2 226 0 33 2 226 0 35 2 226 0 36 2 226 0 38 2 226 0 39 2 226 0 44 2 226 0 45 2 226 0 46 2 226 0 47 2 226 0 48 2 226 0 49 2 226 0 50 2 226 0 51 2 226 0 52 2 226 0 53 2 226 0 55 2 226 0 56 2 226 0 58 2 226 0 59 2 226 0 60 2 226 0 61 2 226 0 62 2 226 0 63 2 226 0 64 2 226 0 65 2 226 0 66 2 226 0 67 2 226 0 69 2 226 0 73 2 226 0 76 2 226 0 77 2 226 0 78 2 226 0 79 2 226 0 80 2 226 0 82 2 226 0 83 2 226 0 84 2 226 0 87 2 226 0 90 2 226 0 91 2 226 0 92 2 226 0 93 2 226 0 94 2 226 0 95 2 226 0 97 2 226 0 99 2 226 0 100 2 226 0 101 2 226 0 103 2 226 0 114 2 226 0 116 2 226 0 117 2 226 0 119 2 226 0 121 2 226 0 122 2 226 0 123 2 226 0 124 2 226 0 125 2 226 0 127 2 226 0 128 2 226 0 129 2 226 0 130 2 226 0 131 2 226 0 133 2 226 0 134 2 226 0 135 2 226 0 136 2 226 0 138 2 226 0 139 2 226 0 140 2 226 0 141 2 226 0 143 2 226 0 145 2 226 0 146 2 226 0 147 2 226 0 148 2 226 0 149 2 226 0 150 2 226 0 152 2 226 0 153 2 226 0 154 2 226 0 155 2 226 0 156 2 226 0 158 2 226 0 159 2 226 0 160 2 226 0 161 2 226 0 162 2 226 0 163 2 226 0 164 2 226 0 165 2 226 0 166 2 226 0 167 2 226 0 168 2 226 0 169 2 226 0 170 2 226 0 171 2 226 2 126] 
#[1 2 230 0 1 2 230 0 2 2 230 0 5 2 230 0 6 2 230 0 8 2 230 0 9 2 230 0 10 0 251 0 12 2 230 0 13 2 230 0 15 0 255 0 16 2 230 0 17 2 230 0 23 2 230 0 25 2 230 0 26 2 230 0 27 2 230 0 29 2 230 0 31 2 230 0 33 2 230 0 35 2 230 0 36 2 230 0 38 2 230 0 39 2 230 0 44 2 230 0 45 2 230 0 46 2 230 0 47 2 230 0 48 2 230 0 49 2 230 0 50 2 230 0 51 2 230 0 52 2 230 0 53 2 230 0 55 2 230 0 56 2 230 0 58 2 230 0 59 2 230 0 60 2 230 0 61 2 230 0 62 2 230 0 63 2 230 0 64 2 230 0 65 2 230 0 66 2 230 0 67 2 230 0 69 2 230 0 73 2 230 0 76 2 230 0 77 2 230 0 78 2 230 0 79 2 230 0 80 2 230 0 82 2 230 0 83 2 230 0 84 2 230 0 87 2 230 0 90 2 230 0 91 2 230 0 92 2 230 0 93 2 230 0 94 2 230 0 95 2 230 0 97 2 230 0 99 2 230 0 100 2 230 0 101 2 230 0 103 2 230 0 114 2 230 0 116 2 230 0 117 2 230 0 119 2 230 0 121 2 230 0 122 2 230 0 123 2 230 0 124 2 230 0 125 2 230 0 127 2 230 0 128 2 230 0 129 2 230 0 130 2 230 0 131 2 230 0 133 2 230 0 134 2 230 0 135 2 230 0 136 2 230 0 138 2 230 0 139 2 230 0 140 2 230 0 141 2 230 0 143 2 230 0 145 2 230 0 146 2 230 0 147 2 230 0 148 2 230 0 149 2 230 0 150 2 230 0 152 2 230 0 153 2 230 0 154 2 230 0 155 2 230 0 156 2 230 0 158 2 230 0 159 2 230 0 160 2 230 0 161 2 230 0 162 2 230 0 163 2 230 0 164 2 230 0 165 2 230 0 166 2 230 0 167 2 230 0 168 2 230 0 169 2 230 0 170 2 230 0 171 2 230 2 126] 
#[1 2 234 0 1 2 234 0 2 2 234 0 5 2 234 0 6 2 234 0 8 2 234 0 9 2 234 0 10 2 234 0 12 2 234 0 13 2 234 0 15 2 234 0 16 2 234 0 17 2 234 0 23 2 234 0 25 2 234 0 26 7 145 0 27 2 234 0 29 2 234 0 31 2 234 0 33 2 234 0 35 2 234 0 36 2 234 0 38 2 234 0 39 2 234 0 44 2 234 0 45 2 234 0 46 2 234 0 47 2 234 0 48 2 234 0 49 2 234 0 50 2 234 0 51 2 234 0 52 2 234 0 53 2 234 0 55 2 234 0 56 2 234 0 58 2 234 0 59 2 234 0 60 2 234 0 61 2 234 0 62 2 234 0 63 2 234 0 64 2 234 0 65 2 234 0 66 2 234 0 67 2 234 0 69 2 234 0 73 2 234 0 76 2 234 0 77 2 234 0 78 2 234 0 79 2 234 0 80 2 234 0 82 2 234 0 83 2 234 0 84 2 234 0 87 2 234 0 90 2 234 0 91 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 95 2 234 0 97 2 234 0 99 2 234 0 100 2 234 0 101 2 234 0 103 2 234 0 114 2 234 0 116 2 234 0 117 2 234 0 119 2 234 0 121 2 234 0 122 2 234 0 123 2 234 0 124 2 234 0 125 2 234 0 127 2 234 0 128 2 234 0 129 2 234 0 130 2 234 0 131 2 234 0 133 2 234 0 134 2 234 0 135 2 234 0 136 2 234 0 138 2 234 0 139 2 234 0 140 2 234 0 141 2 234 0 143 2 234 0 145 2 234 0 146 2 234 0 147 2 234 0 148 2 234 0 149 2 234 0 150 2 234 0 152 2 234 0 153 2 234 0 154 7 149 0 155 2 234 0 156 2 234 0 158 2 234 0 159 2 234 0 160 2 234 0 161 2 234 0 162 2 234 0 163 2 234 0 164 2 234 0 165 2 234 0 166 2 234 0 167 2 234 0 168 2 234 0 169 2 234 0 170 2 234 0 171 2 234 2 126] 
#[1 2 238 0 1 2 238 0 2 2 238 0 5 2 238 0 6 2 238 0 8 2 238 0 9 2 238 0 10 2 238 0 12 2 238 0 13 2 238 0 15 2 238 0 16 2 238 0 17 2 238 0 23 2 238 0 25 1 3 0 26 1 7 0 29 2 238 0 31 1 11 0 33 2 238 0 35 2 238 0 36 2 238 0 38 2 238 0 39 1 15 0 44 2 238 0 45 2 238 0 46 2 238 0 47 2 238 0 48 2 238 0 49 2 238 0 50 2 238 0 51 2 238 0 52 2 238 0 53 2 238 0 55 2 238 0 56 2 238 0 58 2 238 0 59 2 238 0 60 2 238 0 61 2 238 0 62 2 238 0 63 2 238 0 64 2 238 0 65 2 238 0 66 2 238 0 67 2 238 0 69 2 238 0 73 2 238 0 76 2 238 0 77 2 238 0 78 2 238 0 79 2 238 0 80 2 238 0 82 2 238 0 83 2 238 0 84 2 238 0 87 2 238 0 90 1 19 0 91 2 238 0 92 2 238 0 93 2 238 0 94 2 238 0 95 2 238 0 97 2 238 0 99 2 238 0 100 2 238 0 101 2 238 0 103 2 238 0 114 2 238 0 116 2 238 0 117 2 238 0 119 2 238 0 121 2 238 0 122 2 238 0 123 2 238 0 124 2 238 0 125 2 238 0 127 2 238 0 128 2 238 0 129 2 238 0 130 2 238 0 131 2 238 0 133 2 238 0 134 2 238 0 135 2 238 0 136 2 238 0 138 2 238 0 139 2 238 0 140 2 238 0 141 2 238 0 143 2 238 0 145 2 238 0 146 2 238 0 147 2 238 0 148 2 238 0 149 2 238 0 150 2 238 0 152 2 238 0 153 1 23 0 154 2 238 0 156 2 238 0 158 2 238 0 159 2 238 0 160 2 238 0 161 2 238 0 162 2 238 0 163 2 238 0 164 2 238 0 165 2 238 0 166 2 238 0 167 2 238 0 168 2 238 0 169 2 238 0 170 2 238 0 171 2 238 2 126] 
#[1 2 242 0 1 1 27 0 2 2 242 0 5 2 242 0 6 2 242 0 8 2 242 0 9 2 242 0 10 2 242 0 12 2 242 0 13 2 242 0 15 2 242 0 16 2 242 0 17 2 242 0 23 2 242 0 25 2 242 0 26 2 242 0 29 1 31 0 31 2 242 0 33 2 242 0 35 2 242 0 36 2 242 0 38 2 242 0 39 2 242 0 44 2 242 0 45 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 49 2 242 0 50 2 242 0 51 2 242 0 52 2 242 0 53 2 242 0 55 2 242 0 56 2 242 0 58 2 242 0 59 2 242 0 60 2 242 0 61 2 242 0 62 2 242 0 63 2 242 0 64 2 242 0 65 2 242 0 66 2 242 0 67 2 242 0 69 2 242 0 73 2 242 0 76 2 242 0 77 2 242 0 78 2 242 0 79 2 242 0 80 2 242 0 82 2 242 0 83 2 242 0 84 2 242 0 87 2 242 0 90 2 242 0 91 2 242 0 92 2 242 0 93 2 242 0 94 2 242 0 95 2 242 0 97 2 242 0 99 2 242 0 100 2 242 0 101 2 242 0 103 2 242 0 114 2 242 0 116 2 242 0 117 2 242 0 119 2 242 0 121 2 242 0 122 2 242 0 123 2 242 0 124 2 242 0 125 2 242 0 127 2 242 0 128 2 242 0 129 2 242 0 130 2 242 0 131 2 242 0 133 2 242 0 134 2 242 0 135 2 242 0 136 2 242 0 138 2 242 0 139 2 242 0 140 2 242 0 141 2 242 0 143 2 242 0 145 2 242 0 146 2 242 0 147 2 242 0 148 2 242 0 149 2 242 0 150 2 242 0 152 2 242 0 153 2 242 0 154 2 242 0 156 2 242 0 158 2 242 0 159 2 242 0 160 2 242 0 161 2 242 0 162 2 242 0 163 2 242 0 164 2 242 0 165 2 242 0 166 2 242 0 167 2 242 0 168 2 242 0 169 2 242 0 170 2 242 0 171 2 242 2 126] 
#[1 2 246 0 1 2 246 0 2 1 35 0 5 2 246 0 6 2 246 0 8 2 246 0 9 2 246 0 10 2 246 0 12 2 246 0 13 2 246 0 15 2 246 0 16 2 246 0 17 2 246 0 23 2 246 0 25 2 246 0 26 2 246 0 29 2 246 0 31 2 246 0 33 2 246 0 35 2 246 0 36 2 246 0 38 2 246 0 39 2 246 0 44 2 246 0 45 2 246 0 46 2 246 0 47 2 246 0 48 2 246 0 49 2 246 0 50 2 246 0 51 2 246 0 52 2 246 0 53 2 246 0 55 2 246 0 56 2 246 0 58 2 246 0 59 2 246 0 60 2 246 0 61 2 246 0 62 2 246 0 63 2 246 0 64 2 246 0 65 2 246 0 66 2 246 0 67 2 246 0 69 2 246 0 73 2 246 0 76 2 246 0 77 2 246 0 78 2 246 0 79 2 246 0 80 2 246 0 82 2 246 0 83 2 246 0 84 2 246 0 87 2 246 0 90 2 246 0 91 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 95 2 246 0 97 2 246 0 99 2 246 0 100 2 246 0 101 2 246 0 103 2 246 0 114 2 246 0 116 2 246 0 117 2 246 0 119 2 246 0 121 2 246 0 122 2 246 0 123 2 246 0 124 2 246 0 125 2 246 0 127 2 246 0 128 2 246 0 129 2 246 0 130 2 246 0 131 2 246 0 133 2 246 0 134 2 246 0 135 2 246 0 136 2 246 0 138 2 246 0 139 2 246 0 140 2 246 0 141 2 246 0 143 2 246 0 145 2 246 0 146 2 246 0 147 2 246 0 148 2 246 0 149 2 246 0 150 2 246 0 152 2 246 0 153 2 246 0 154 2 246 0 156 2 246 0 158 2 246 0 159 2 246 0 160 2 246 0 161 2 246 0 162 2 246 0 163 2 246 0 164 2 246 0 165 2 246 0 166 2 246 0 167 2 246 0 168 2 246 0 169 2 246 0 170 2 246 0 171 2 246 2 126] 
#[1 2 250 0 1 2 250 0 2 2 250 0 5 2 250 0 6 2 250 0 8 2 250 0 9 2 250 0 10 2 250 0 12 2 250 0 13 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 23 2 250 0 25 2 250 0 26 2 250 0 29 2 250 0 31 2 250 0 33 2 250 0 35 2 250 0 36 2 250 0 38 1 39 0 39 2 250 0 44 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 52 2 250 0 53 2 250 0 55 2 250 0 56 2 250 0 58 2 250 0 59 2 250 0 60 2 250 0 61 2 250 0 62 2 250 0 63 2 250 0 64 2 250 0 65 2 250 0 66 2 250 0 67 2 250 0 69 2 250 0 73 2 250 0 76 2 250 0 77 2 250 0 78 2 250 0 79 2 250 0 80 2 250 0 82 2 250 0 83 2 250 0 84 2 250 0 87 2 250 0 90 2 250 0 91 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 95 2 250 0 97 2 250 0 99 2 250 0 100 2 250 0 101 2 250 0 103 2 250 0 114 2 250 0 116 2 250 0 117 2 250 0 119 2 250 0 121 2 250 0 122 2 250 0 123 2 250 0 124 2 250 0 125 2 250 0 127 2 250 0 128 2 250 0 129 2 250 0 130 2 250 0 131 2 250 0 133 2 250 0 134 2 250 0 135 2 250 0 136 2 250 0 138 2 250 0 139 2 250 0 140 2 250 0 141 2 250 0 143 2 250 0 145 2 250 0 146 2 250 0 147 2 250 0 148 2 250 0 149 2 250 0 150 2 250 0 152 2 250 0 153 2 250 0 154 2 250 0 156 2 250 0 158 2 250 0 159 2 250 0 160 2 250 0 161 2 250 0 162 2 250 0 163 2 250 0 164 2 250 0 165 2 250 0 166 2 250 0 167 2 250 0 168 2 250 0 169 2 250 0 170 2 250 0 171 2 250 2 126] 
#[1 2 254 0 1 2 254 0 2 2 254 0 5 2 254 0 6 2 254 0 8 2 254 0 9 2 254 0 10 2 254 0 12 2 254 0 13 2 254 0 15 2 254 0 16 2 254 0 17 2 254 0 23 2 254 0 25 2 254 0 26 2 254 0 29 2 254 0 31 2 254 0 33 2 254 0 35 2 254 0 36 2 254 0 38 2 254 0 39 2 254 0 44 2 254 0 45 2 254 0 46 2 254 0 47 2 254 0 48 2 254 0 49 2 254 0 50 2 254 0 51 2 254 0 52 2 254 0 53 2 254 0 55 2 254 0 56 2 254 0 58 2 254 0 59 2 254 0 60 2 254 0 61 2 254 0 62 2 254 0 63 2 254 0 64 2 254 0 65 2 254 0 66 2 254 0 67 2 254 0 69 2 254 0 73 2 254 0 76 2 254 0 77 2 254 0 78 2 254 0 79 2 254 0 80 2 254 0 82 2 254 0 83 2 254 0 84 2 254 0 87 2 254 0 90 2 254 0 91 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 95 2 254 0 97 2 254 0 99 2 254 0 100 2 254 0 101 2 254 0 103 2 254 0 114 2 254 0 116 2 254 0 117 2 254 0 119 2 254 0 121 2 254 0 122 2 254 0 123 2 254 0 124 2 254 0 125 2 254 0 127 2 254 0 128 2 254 0 129 2 254 0 130 2 254 0 131 2 254 0 133 2 254 0 134 2 254 0 135 2 254 0 136 2 254 0 138 2 254 0 139 2 254 0 140 2 254 0 141 2 254 0 143 2 254 0 145 2 254 0 146 2 254 0 147 2 254 0 148 2 254 0 149 1 43 0 150 2 254 0 152 2 254 0 153 2 254 0 154 2 254 0 156 2 254 0 158 2 254 0 159 2 254 0 160 2 254 0 161 2 254 0 162 2 254 0 163 2 254 0 164 2 254 0 165 2 254 0 166 2 254 0 167 2 254 0 168 2 254 0 169 2 254 0 170 2 254 0 171 2 254 2 126] 
#[1 3 2 0 1 3 2 0 2 3 2 0 5 1 47 0 6 3 2 0 8 3 2 0 9 3 2 0 10 3 2 0 12 3 2 0 13 3 2 0 15 3 2 0 16 3 2 0 17 3 2 0 23 3 2 0 25 3 2 0 26 3 2 0 29 3 2 0 31 3 2 0 33 3 2 0 35 3 2 0 36 3 2 0 38 3 2 0 39 3 2 0 44 3 2 0 45 3 2 0 46 3 2 0 47 3 2 0 48 3 2 0 49 3 2 0 50 3 2 0 51 3 2 0 52 3 2 0 53 3 2 0 55 3 2 0 56 3 2 0 58 3 2 0 59 3 2 0 60 3 2 0 61 3 2 0 62 3 2 0 63 3 2 0 64 3 2 0 65 3 2 0 66 3 2 0 67 3 2 0 69 3 2 0 73 3 2 0 76 3 2 0 77 3 2 0 78 3 2 0 79 3 2 0 80 3 2 0 82 3 2 0 83 3 2 0 84 3 2 0 87 3 2 0 90 3 2 0 91 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 95 3 2 0 97 3 2 0 99 3 2 0 100 3 2 0 101 3 2 0 103 3 2 0 114 3 2 0 116 3 2 0 117 3 2 0 119 3 2 0 121 3 2 0 122 3 2 0 123 3 2 0 124 3 2 0 125 3 2 0 127 3 2 0 128 3 2 0 129 3 2 0 130 3 2 0 131 3 2 0 133 3 2 0 134 3 2 0 135 3 2 0 136 3 2 0 138 3 2 0 139 3 2 0 140 3 2 0 141 3 2 0 143 3 2 0 145 3 2 0 146 3 2 0 147 3 2 0 148 3 2 0 149 3 2 0 150 3 2 0 152 3 2 0 153 3 2 0 154 3 2 0 156 3 2 0 158 3 2 0 159 3 2 0 160 3 2 0 161 3 2 0 162 3 2 0 163 3 2 0 164 3 2 0 165 3 2 0 166 3 2 0 167 3 2 0 168 3 2 0 169 3 2 0 170 3 2 0 171 3 2 2 126] 
#[1 3 6 0 1 3 6 0 2 3 6 0 5 3 6 0 6 3 6 0 8 3 6 0 9 3 6 0 10 3 6 0 12 3 6 0 13 3 6 0 15 3 6 0 16 3 6 0 17 3 6 0 23 3 6 0 25 3 6 0 26 3 6 0 29 3 6 0 31 3 6 0 33 3 6 0 35 1 51 0 36 3 6 0 38 3 6 0 39 3 6 0 44 3 6 0 45 3 6 0 46 3 6 0 47 3 6 0 48 3 6 0 49 3 6 0 50 3 6 0 51 3 6 0 52 3 6 0 53 3 6 0 55 3 6 0 56 3 6 0 58 3 6 0 59 3 6 0 60 3 6 0 61 3 6 0 62 3 6 0 63 3 6 0 64 3 6 0 65 3 6 0 66 3 6 0 67 3 6 0 69 3 6 0 73 3 6 0 76 3 6 0 77 3 6 0 78 3 6 0 79 3 6 0 80 3 6 0 82 3 6 0 83 3 6 0 84 3 6 0 87 3 6 0 90 3 6 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 95 3 6 0 97 3 6 0 99 3 6 0 100 3 6 0 101 3 6 0 103 3 6 0 114 3 6 0 116 3 6 0 117 3 6 0 119 3 6 0 121 3 6 0 122 3 6 0 123 3 6 0 124 3 6 0 125 3 6 0 127 3 6 0 128 3 6 0 129 3 6 0 130 3 6 0 131 3 6 0 133 3 6 0 134 3 6 0 135 3 6 0 136 3 6 0 138 3 6 0 139 3 6 0 140 3 6 0 141 3 6 0 143 3 6 0 145 3 6 0 146 3 6 0 147 3 6 0 148 3 6 0 149 3 6 0 150 1 55 0 152 3 6 0 153 3 6 0 154 3 6 0 156 3 6 0 158 3 6 0 159 3 6 0 160 3 6 0 161 3 6 0 162 3 6 0 163 3 6 0 164 3 6 0 165 3 6 0 166 3 6 0 167 3 6 0 168 3 6 0 169 3 6 0 170 3 6 0 171 3 6 2 126] 
#[1 3 10 0 1 3 10 0 2 3 10 0 5 3 10 0 6 3 10 0 8 3 10 0 9 3 10 0 10 3 10 0 12 3 10 0 13 3 10 0 15 3 10 0 16 3 10 0 17 3 10 0 23 3 10 0 25 3 10 0 26 3 10 0 29 3 10 0 31 3 10 0 33 1 59 0 35 3 10 0 36 3 10 0 38 3 10 0 39 3 10 0 44 3 10 0 45 3 10 0 46 3 10 0 47 3 10 0 48 3 10 0 49 3 10 0 50 3 10 0 51 3 10 0 52 3 10 0 53 3 10 0 55 3 10 0 56 3 10 0 58 3 10 0 59 3 10 0 60 3 10 0 61 3 10 0 62 3 10 0 63 3 10 0 64 3 10 0 65 3 10 0 66 3 10 0 67 3 10 0 69 3 10 0 73 3 10 0 76 3 10 0 77 3 10 0 78 3 10 0 79 3 10 0 80 3 10 0 82 3 10 0 83 3 10 0 84 3 10 0 87 3 10 0 90 3 10 0 91 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 95 3 10 0 97 3 10 0 99 3 10 0 100 3 10 0 101 3 10 0 103 3 10 0 114 3 10 0 116 3 10 0 117 3 10 0 119 3 10 0 121 3 10 0 122 3 10 0 123 3 10 0 124 3 10 0 125 3 10 0 127 3 10 0 128 3 10 0 129 3 10 0 130 3 10 0 131 3 10 0 133 3 10 0 134 3 10 0 135 3 10 0 136 3 10 0 138 3 10 0 139 3 10 0 140 3 10 0 141 3 10 0 143 3 10 0 145 3 10 0 146 3 10 0 147 3 10 0 148 3 10 0 149 3 10 0 150 3 10 0 152 3 10 0 153 3 10 0 154 3 10 0 156 3 10 0 158 3 10 0 159 3 10 0 160 3 10 0 161 3 10 0 162 3 10 0 163 3 10 0 164 3 10 0 165 3 10 0 166 3 10 0 167 3 10 0 168 3 10 0 169 3 10 0 170 3 10 0 171 3 10 2 126] 
#[0 3 14 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 18 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 22 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 213 0 32] 
#[0 3 30 0 32] 
#[0 3 34 0 32] 
#[0 3 38 0 32] 
#[0 3 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 3 69 0 80 3 46 0 83 7 217 0 92 7 221 0 93 7 225 0 103 3 46 0 119 7 229 0 146 7 233 1 93 7 237 1 94 7 241 1 95 7 245 1 96 7 249 1 97 7 253 1 98 8 1 1 99 8 5 1 100 8 9 1 101 8 13 1 102] 
#[0 3 50 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 0 2 126] 
#[0 3 54 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 17 0 158] 
#[1 7 29 0 8 3 58 0 158 7 37 1 3] 
#[0 0 0 2 126] 
#[0 3 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 0 2 126] 
#[0 3 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 8 21 0 25 8 25 0 32 1 93 0 149 8 29 1 121 8 33 1 238] 
#[1 8 37 0 25 8 41 0 32 1 93 0 149 8 45 1 121 8 49 1 237] 
#[0 3 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 90 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 74 0 8 1 63 0 41 1 67 0 46 0 74 0 49 0 74 0 52 0 74 0 55 0 74 0 57 0 74 0 58 0 74 0 60 0 74 0 62 0 74 0 65 0 74 0 66 0 74 0 68 0 74 0 70 1 71 0 72 0 74 0 77 0 74 0 87 0 74 0 88 1 75 0 89 0 74 0 95 1 79 0 99 0 74 0 100 1 83 0 105 0 74 0 108 1 87 0 109 1 91 0 111 1 95 0 112 1 99 0 113 0 74 0 114 0 74 0 117 1 103 0 118 0 74 0 121 1 107 0 124 0 74 0 125 0 74 0 126 0 74 0 134 0 74 0 135 1 111 0 138 0 74 0 139 1 115 0 142 0 74 0 143 1 119 0 144 3 102 0 153 0 74 0 158 8 109 1 204 8 113 2 17 8 117 2 31 8 121 2 98 8 125 2 102 8 129 2 125] 
#[0 3 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 8 133 0 158] 
#[1 8 137 0 124 8 141 0 158 8 149 0 193 8 145 0 194 8 149 0 196] 
#[1 1 123 0 37 3 110 0 41 3 110 0 46 3 110 0 57 3 110 0 62 3 110 0 68 3 110 0 72 3 110 0 88 3 110 0 89 3 110 0 98 3 110 0 99 3 110 0 105 3 110 0 108 3 110 0 109 3 110 0 111 3 110 0 112 3 110 0 113 3 110 0 114 3 110 0 118 3 110 0 124 3 110 0 126 3 110 0 138 3 110 0 142 3 110 0 144 8 157 2 69 8 161 2 70 8 165 2 71 8 169 2 72 3 110 2 126] 
#[1 3 114 0 37 3 114 0 41 3 114 0 46 3 114 0 57 3 114 0 62 3 114 0 68 3 114 0 72 3 114 0 88 3 114 0 89 3 114 0 98 3 114 0 99 3 114 0 105 3 114 0 108 3 114 0 109 3 114 0 111 3 114 0 112 3 114 0 113 3 114 0 114 3 114 0 118 3 114 0 124 3 114 0 126 3 114 0 138 4 45 0 140 3 114 0 142 3 114 0 144 3 114 0 156 8 173 0 185 8 173 0 186 8 173 0 187 8 173 0 188 3 114 2 126] 
#[0 3 118 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 122 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 126 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 130 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 134 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 138 0 23] 
#[0 3 142 0 23] 
#[0 3 146 0 23] 
#[0 3 150 0 23] 
#[0 3 154 0 23] 
#[0 3 158 0 23] 
#[0 3 162 0 23] 
#[1 5 221 0 158 1 141 0 193 8 189 0 195 1 141 0 196 8 181 2 82 8 185 2 83 8 189 2 84] 
#[0 3 166 0 158] 
#[0 8 193 0 23] 
#[0 3 170 0 20 0 149] 
#[1 8 197 0 20 8 201 0 149 8 205 0 179] 
#[1 8 241 0 41 8 241 0 46 3 174 0 57 8 209 0 62 8 213 0 68 8 241 0 72 3 174 0 88 8 241 0 89 8 241 0 99 8 241 0 105 8 233 0 108 8 241 0 109 8 241 0 111 8 241 0 112 8 241 0 113 8 225 0 114 8 241 0 118 8 241 0 124 3 174 0 126 8 241 0 138 8 241 0 142 8 241 0 144 8 233 2 97 8 241 2 102 8 241 2 125] 
#[0 3 178 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 4 217 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 8 245 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 8 245 0 211 1 189 0 212 8 245 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 229 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 4 233 1 75 4 233 1 76 4 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 4 233 1 92 3 209 1 93 4 233 1 112 4 233 1 115 4 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 0 98 0 9 0 20] 
#[0 0 106 0 9 0 20] 
#[0 0 114 0 9 0 20] 
#[0 0 122 0 9 0 20] 
#[0 0 138 0 9 0 20] 
#[0 0 158 0 9 0 20] 
#[0 0 166 0 9 0 20] 
#[0 0 174 0 9 0 20] 
#[0 0 182 0 9 0 20] 
#[0 0 198 0 9 0 20] 
#[0 0 206 0 9 0 20] 
#[0 0 214 0 9 0 20] 
#[0 0 230 0 9 0 20] 
#[0 0 238 0 9 0 20] 
#[0 0 246 0 9 0 20] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 6 49 0 24 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 8 249 0 222 8 249 0 252 1 6 2 126] 
#[0 1 46 0 9 0 20] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 29 0 8 7 37 1 3] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 131 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 131 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 8 253 0 23 6 49 0 24 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 2 214 0 32 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 0 111 0 37 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 91 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 154 1 6 0 155 0 111 0 158 6 61 0 222 6 61 0 252] 
#[1 9 1 0 9 3 190 0 15 1 135 0 158] 
#[1 9 9 0 15 9 13 0 203 9 17 0 204] 
#[1 9 21 0 15 9 25 0 255 9 29 1 0] 
#[1 9 33 0 9 3 194 0 15] 
#[0 3 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 5 113 0 8 0 130 0 149 9 37 1 80 9 37 1 81] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 41 0 158] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 9 45 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 49 1 75 9 49 1 76 9 49 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 49 1 92 3 209 1 93 9 49 1 112 9 49 1 115 9 49 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 3 222 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 53 1 75 9 53 1 76 9 53 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 53 1 92 3 209 1 93 9 53 1 112 9 53 1 115 9 53 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 3 226 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 9 57 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 4 225 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 9 57 0 211 1 189 0 212 9 57 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 0 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 134 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 154 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 162 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 170 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 178 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 194 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 202 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 210 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 226 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 234 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 242 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 111 0 1 0 111 0 2 0 111 0 5 0 111 0 6 0 111 0 8 0 111 0 9 0 111 0 10 0 111 0 12 0 111 0 13 0 111 0 15 0 111 0 16 0 111 0 17 1 6 0 20 0 111 0 23 6 49 0 24 0 111 0 25 0 243 0 26 0 111 0 29 0 111 0 31 0 111 0 32 0 111 0 33 0 111 0 35 0 111 0 36 0 111 0 37 0 111 0 38 0 111 0 39 0 111 0 44 0 111 0 45 0 111 0 46 0 111 0 47 0 111 0 48 0 111 0 49 0 111 0 50 0 111 0 51 0 111 0 52 0 111 0 53 0 111 0 55 0 111 0 56 0 111 0 58 0 111 0 59 0 111 0 60 0 111 0 61 0 111 0 62 0 111 0 63 0 111 0 64 0 111 0 65 0 111 0 66 0 111 0 67 0 111 0 69 0 111 0 73 0 111 0 76 0 111 0 77 0 111 0 78 0 111 0 79 0 111 0 80 0 111 0 82 0 111 0 83 0 111 0 84 0 111 0 87 0 111 0 90 0 111 0 91 0 111 0 92 0 111 0 93 0 111 0 94 0 111 0 95 0 111 0 97 0 111 0 99 0 111 0 100 0 111 0 101 0 111 0 102 0 111 0 103 0 111 0 114 0 111 0 116 0 111 0 117 0 111 0 119 0 111 0 121 0 111 0 122 0 111 0 123 0 111 0 124 0 111 0 125 0 111 0 127 0 111 0 128 0 111 0 129 0 111 0 130 0 111 0 131 0 111 0 133 0 111 0 134 0 111 0 135 0 111 0 136 0 111 0 138 0 111 0 139 0 111 0 140 0 111 0 141 0 111 0 143 0 111 0 145 0 111 0 146 0 111 0 147 0 111 0 148 0 111 0 149 0 111 0 150 0 111 0 152 0 111 0 153 0 111 0 154 0 111 0 156 0 111 0 158 0 111 0 159 0 111 0 160 0 111 0 161 0 111 0 162 0 111 0 163 0 111 0 164 0 111 0 165 0 111 0 166 0 111 0 167 0 111 0 168 0 111 0 169 0 111 0 170 0 111 0 171 9 61 0 222 9 61 0 252 0 111 2 126] 
#[0 1 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 9 65 0 158 9 69 1 155 9 73 1 156] 
#[0 3 230 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 9 77 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 9 77 0 211 1 189 0 212 9 77 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 2 202 0 8 2 206 0 9 2 202 0 49 2 202 0 52 2 202 0 55 2 202 0 60 2 202 0 65 2 202 0 66 2 202 0 77 7 81 0 86 2 202 0 87 2 202 0 95 2 202 0 100 7 81 0 104 7 81 0 114 2 202 0 117 2 202 0 121 2 202 0 125 2 202 0 134 2 202 0 135 2 202 0 139 2 202 0 143 2 202 0 158 7 69 1 82 7 73 1 83 7 77 1 84 7 81 1 85 7 81 1 86] 
#[1 1 93 0 149 9 81 1 121] 
#[0 3 234 0 149] 
#[0 9 85 0 147] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 77 1 169 0 87 1 169 0 95 1 169 0 117 1 169 0 121 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 221 0 158 1 141 0 193 1 181 0 195 1 141 0 196 9 89 0 199 9 89 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 9 93 2 104 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 238 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 1 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 9 97 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 211 1 189 0 212 1 145 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 9 105 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 9 105 1 112 9 109 1 137 2 157 1 138 2 161 1 140 9 109 1 142 2 169 1 147 2 173 1 152 9 105 1 158 9 109 1 173 9 109 1 174 9 117 1 179 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 3 53 2 124] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 77 0 141 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 9 125 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 9 125 0 211 1 189 0 212 9 125 0 214 1 197 0 215 9 121 1 140 9 125 1 151 9 125 1 152 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 137 1 75 9 137 1 76 9 137 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 137 1 92 3 209 1 93 9 137 1 112 9 137 1 115 9 137 1 116 9 137 1 117 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 9 141 0 25] 
#[0 9 145 0 25] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 153 1 75 9 153 1 76 9 153 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 153 1 92 3 209 1 93 9 153 1 112 9 153 1 115 9 153 1 116 9 153 1 118 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 157 1 75 9 157 1 76 9 157 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 157 1 92 3 209 1 93 9 157 1 112 9 157 1 115 9 157 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 9 161 0 48 4 137 0 49 4 141 0 52 4 145 0 55 4 149 0 60 4 153 0 65 4 157 0 77 4 161 0 87 4 165 0 95 4 169 0 100 4 173 0 117 4 177 0 121 4 181 0 125 9 165 0 128 4 185 0 134 4 189 0 135 4 193 0 139 4 197 0 158 4 201 0 193 9 185 0 251 9 185 1 8 9 185 1 9 2 1 1 10 9 181 1 48 9 185 1 51] 
#[1 9 189 0 15 3 242 0 38 9 193 0 219 9 197 0 220] 
#[1 9 201 0 8 0 141 0 46 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 3 246 0 156 9 205 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 9 209 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 9 213 0 251 1 205 0 253 1 205 0 254 1 205 1 2 9 217 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 9 221 1 15 1 205 1 16 1 205 1 17 1 205 1 18 9 209 1 30 1 205 1 31 1 205 1 32 9 225 1 34 9 229 1 35 9 233 1 36 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 53 9 237 1 56 1 205 1 58 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 1 205 2 108 1 205 2 110] 
#[1 1 139 0 8 1 50 0 10 1 50 0 35 0 119 0 37 0 119 0 149] 
#[1 9 241 0 8 9 245 0 149 9 249 1 20 9 249 1 21 9 249 1 27] 
#[1 1 114 0 8 1 143 0 149 10 9 2 41] 
#[1 10 13 0 37 6 93 0 217 6 97 0 218] 
#[1 10 5 0 149 10 17 2 41] 
#[0 10 21 0 8] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 2 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 141 0 143 0 158] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 10 25 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 25 1 75 10 25 1 76 10 25 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 25 1 92 3 209 1 93 10 25 1 112 10 25 1 115 10 25 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 10 33 0 25] 
#[0 4 6 0 25] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 1 169 0 77 1 169 0 87 1 169 0 95 1 169 0 117 1 169 0 121 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 221 0 158 1 141 0 193 1 181 0 195 1 141 0 196 5 229 0 199 5 229 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 37 2 104 10 37 2 106 3 53 2 124] 
#[1 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 15 1 6 0 20 6 49 0 24 1 6 0 25 6 53 0 26 1 6 0 35 1 6 0 37 1 6 0 38 1 6 0 146 1 6 0 149 9 61 0 222 9 61 0 252] 
#[0 1 50 0 9 0 10 0 35 0 37] 
#[1 4 10 0 9 6 81 0 10 4 10 0 37 6 85 2 105] 
#[0 4 14 0 9 0 37] 
#[0 10 41 0 37] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 45 1 75 10 45 1 76 10 45 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 45 1 92 3 209 1 93 10 45 1 112 10 45 1 115 10 45 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 10 49 0 25] 
#[1 1 147 0 54 10 57 0 75 10 61 1 188 10 65 1 189 10 69 1 190 10 73 1 191 10 77 1 196] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 10 81 0 158 1 141 0 193 1 137 0 195 1 141 0 196 10 85 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 85 0 211 1 189 0 212 10 85 0 214 1 197 0 215 10 89 1 38 3 13 1 208 3 29 2 104 10 93 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 97 1 75 10 97 1 76 10 97 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 97 1 92 3 209 1 93 10 97 1 112 10 97 1 115 10 97 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 4 22 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 1 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 10 101 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 101 0 211 1 189 0 212 10 101 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 117 1 75 10 117 1 76 10 117 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 117 1 92 3 209 1 93 10 117 1 112 10 117 1 115 10 117 1 116 10 117 1 137 2 157 1 138 2 161 1 140 10 117 1 142 2 169 1 147 3 225 1 151 10 113 1 152 10 117 1 201 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 121 1 75 10 121 1 76 10 121 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 121 1 92 3 209 1 93 10 121 1 112 10 121 1 115 10 121 1 116 10 121 1 118 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 10 125 0 25] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 129 1 75 10 129 1 76 10 129 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 129 1 92 3 209 1 93 10 129 1 112 10 129 1 115 10 129 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 4 30 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 10 133 0 156] 
#[1 0 105 0 1 0 109 0 5 0 11 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 15 0 46 0 145 0 47 0 149 0 48 0 19 0 49 0 157 0 50 0 23 0 52 0 27 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 31 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 35 0 65 0 39 0 66 3 21 0 73 0 209 0 76 0 43 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 47 0 87 0 237 0 94 0 51 0 95 0 245 0 97 0 249 0 99 0 55 0 100 0 59 0 114 1 5 0 116 0 63 0 117 0 67 0 121 1 17 0 122 1 21 0 123 0 71 0 124 0 75 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 0 79 0 134 0 83 0 135 1 61 0 136 0 87 0 138 0 91 0 139 1 73 0 140 1 77 0 141 0 95 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 34 0 156 0 99 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 211 1 189 0 212 1 145 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 10 137 1 119 10 137 1 120 10 137 1 121 10 137 1 124 10 137 1 125 10 137 1 126 10 137 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 137 2 157 1 138 2 161 1 140 2 153 1 142 2 169 1 147 2 173 1 152 2 177 1 154 10 137 1 157 2 185 1 158 10 137 1 159 10 137 1 160 10 137 1 161 10 137 1 169 10 137 1 170 10 137 1 171 10 137 1 172 10 137 1 180 10 137 1 181 10 137 1 182 10 137 1 183 10 137 1 184 10 137 1 185 10 137 1 186 10 137 1 187 10 137 1 197 10 137 1 198 10 137 1 199 10 137 1 200 10 137 1 202 3 13 1 208 1 205 2 93 3 21 2 94 10 137 2 103 3 29 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 10 137 2 111 3 53 2 124] 
#[0 4 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 0 11 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 15 0 46 0 145 0 47 0 149 0 48 0 19 0 49 0 157 0 50 0 23 0 52 0 27 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 31 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 35 0 65 0 39 0 66 3 21 0 73 0 209 0 76 0 43 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 47 0 87 0 237 0 94 0 51 0 95 0 245 0 97 0 249 0 99 0 55 0 100 0 59 0 114 1 5 0 116 0 63 0 117 0 67 0 121 1 17 0 122 1 21 0 123 0 71 0 124 0 75 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 0 79 0 134 0 83 0 135 1 61 0 136 0 87 0 138 0 91 0 139 1 73 0 140 1 77 0 141 0 95 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 0 99 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 211 1 189 0 212 1 145 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 10 141 1 119 10 141 1 120 10 141 1 121 10 141 1 124 10 141 1 125 10 141 1 126 10 141 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 137 2 157 1 138 2 161 1 140 2 153 1 142 2 169 1 147 2 173 1 152 2 177 1 154 10 141 1 157 2 185 1 158 10 141 1 159 10 141 1 160 10 141 1 161 10 141 1 169 10 141 1 170 10 141 1 171 10 141 1 172 10 141 1 180 10 141 1 181 10 141 1 182 10 141 1 183 10 141 1 184 10 141 1 185 10 141 1 186 10 141 1 187 10 141 1 197 10 141 1 198 10 141 1 199 10 141 1 200 10 141 1 202 3 13 1 208 1 205 2 93 3 21 2 94 10 141 2 103 3 29 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 10 141 2 111 3 53 2 124] 
#[0 10 145 0 158] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 10 157 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 157 0 211 1 189 0 212 10 157 0 214 1 197 0 215 10 153 0 223 10 157 0 224 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 4 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 151 0 1 1 151 0 2 4 50 0 3 4 50 0 4 1 151 0 5 1 151 0 6 4 50 0 7 1 151 0 8 1 151 0 9 1 151 0 10 4 50 0 11 1 151 0 12 1 151 0 13 4 50 0 14 1 151 0 15 1 151 0 16 1 151 0 17 4 50 0 18 4 50 0 19 1 151 0 20 4 50 0 21 4 50 0 22 1 151 0 23 1 151 0 25 1 151 0 26 4 50 0 27 4 50 0 28 1 151 0 29 4 50 0 30 1 151 0 31 1 151 0 33 4 50 0 34 1 151 0 35 1 151 0 36 1 151 0 37 1 151 0 38 1 151 0 39 4 50 0 40 1 151 0 44 1 151 0 45 1 151 0 46 1 151 0 47 1 151 0 48 1 151 0 49 1 151 0 50 1 151 0 51 1 151 0 52 1 151 0 53 1 151 0 55 1 151 0 56 1 151 0 58 1 151 0 59 1 151 0 60 1 151 0 61 1 151 0 62 1 151 0 63 1 151 0 64 1 151 0 65 1 151 0 66 1 151 0 67 1 151 0 69 1 151 0 73 1 151 0 76 1 151 0 77 1 151 0 78 1 151 0 79 1 151 0 80 1 151 0 82 1 151 0 83 1 151 0 84 1 151 0 87 1 151 0 90 1 151 0 91 1 151 0 92 1 151 0 93 1 151 0 94 1 151 0 95 1 151 0 97 1 151 0 99 1 151 0 100 1 151 0 101 1 151 0 103 1 151 0 114 1 151 0 116 1 151 0 117 1 151 0 119 1 151 0 121 1 151 0 122 1 151 0 123 1 151 0 124 1 151 0 125 1 151 0 127 1 151 0 128 1 151 0 129 1 151 0 130 1 151 0 131 1 151 0 133 1 151 0 134 1 151 0 135 1 151 0 136 1 151 0 138 1 151 0 139 1 151 0 140 1 151 0 141 1 151 0 143 1 151 0 145 1 151 0 146 1 151 0 147 1 151 0 148 1 151 0 149 1 151 0 150 4 50 0 151 1 151 0 152 1 151 0 153 1 151 0 154 4 50 0 155 1 151 0 156 1 151 0 158 1 151 0 159 1 151 0 160 1 151 0 161 1 151 0 162 1 151 0 163 1 151 0 164 1 151 0 165 1 151 0 166 1 151 0 167 1 151 0 168 1 151 0 169 1 151 0 170 1 151 0 171 1 151 2 126] 
#[0 10 161 0 158] 
#[1 4 54 0 9 4 54 0 15 4 54 0 25 10 165 0 30] 
#[0 4 58 0 9 0 25] 
#[1 4 62 0 9 4 62 0 15 4 62 0 25 10 169 1 145] 
#[0 4 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 70 0 1 4 70 0 2 4 70 0 5 4 70 0 6 4 70 0 8 4 70 0 9 1 155 0 10 4 70 0 12 4 70 0 13 4 70 0 15 4 70 0 16 4 70 0 17 4 70 0 23 4 70 0 25 4 70 0 26 4 70 0 29 4 70 0 31 4 70 0 33 4 70 0 35 4 70 0 36 4 70 0 37 4 70 0 38 4 70 0 39 4 70 0 44 4 70 0 45 4 70 0 46 4 70 0 47 4 70 0 48 4 70 0 49 4 70 0 50 4 70 0 51 4 70 0 52 4 70 0 53 4 70 0 55 4 70 0 56 4 70 0 58 4 70 0 59 4 70 0 60 4 70 0 61 4 70 0 62 4 70 0 63 4 70 0 64 4 70 0 65 4 70 0 66 4 70 0 67 4 70 0 69 4 70 0 73 4 70 0 76 4 70 0 77 4 70 0 78 4 70 0 79 4 70 0 80 4 70 0 82 4 70 0 83 4 70 0 84 4 70 0 87 4 70 0 90 4 70 0 91 4 70 0 92 4 70 0 93 4 70 0 94 4 70 0 95 4 70 0 97 4 70 0 99 4 70 0 100 4 70 0 101 4 70 0 102 4 70 0 103 4 70 0 114 4 70 0 116 4 70 0 117 4 70 0 119 4 70 0 121 4 70 0 122 4 70 0 123 4 70 0 124 4 70 0 125 4 70 0 127 4 70 0 128 4 70 0 129 4 70 0 130 4 70 0 131 4 70 0 133 4 70 0 134 4 70 0 135 4 70 0 136 4 70 0 138 4 70 0 139 4 70 0 140 4 70 0 141 4 70 0 143 4 70 0 145 4 70 0 146 4 70 0 147 4 70 0 148 4 70 0 149 4 70 0 150 4 70 0 152 4 70 0 153 4 70 0 154 4 70 0 156 4 70 0 158 4 70 0 159 4 70 0 160 4 70 0 161 4 70 0 162 4 70 0 163 4 70 0 164 4 70 0 165 4 70 0 166 4 70 0 167 4 70 0 168 4 70 0 169 4 70 0 170 4 70 0 171 4 70 2 126] 
#[0 4 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 78 0 1 4 78 0 2 4 78 0 5 4 78 0 6 4 78 0 8 4 78 0 9 4 78 0 10 4 78 0 12 4 78 0 13 4 78 0 15 4 78 0 16 4 78 0 17 4 78 0 23 4 78 0 25 4 78 0 26 4 78 0 29 4 78 0 31 4 78 0 33 4 78 0 35 4 78 0 36 5 165 0 37 4 78 0 38 4 78 0 39 4 78 0 44 4 78 0 45 4 78 0 46 4 78 0 47 4 78 0 48 4 78 0 49 4 78 0 50 4 78 0 51 4 78 0 52 4 78 0 53 4 78 0 55 4 78 0 56 4 78 0 58 4 78 0 59 4 78 0 60 4 78 0 61 4 78 0 62 4 78 0 63 4 78 0 64 4 78 0 65 4 78 0 66 4 78 0 67 4 78 0 69 4 78 0 73 4 78 0 76 4 78 0 77 4 78 0 78 4 78 0 79 4 78 0 80 4 78 0 82 4 78 0 83 4 78 0 84 4 78 0 87 4 78 0 90 4 78 0 91 4 78 0 92 4 78 0 93 4 78 0 94 4 78 0 95 4 78 0 97 4 78 0 99 4 78 0 100 4 78 0 101 4 78 0 102 4 78 0 103 4 78 0 114 4 78 0 116 4 78 0 117 4 78 0 119 4 78 0 121 4 78 0 122 4 78 0 123 4 78 0 124 4 78 0 125 4 78 0 127 4 78 0 128 4 78 0 129 4 78 0 130 4 78 0 131 4 78 0 133 4 78 0 134 4 78 0 135 4 78 0 136 4 78 0 138 4 78 0 139 4 78 0 140 4 78 0 141 4 78 0 143 4 78 0 145 4 78 0 146 4 78 0 147 4 78 0 148 4 78 0 149 4 78 0 150 4 78 0 152 4 78 0 153 4 78 0 154 4 78 0 156 4 78 0 158 4 78 0 159 4 78 0 160 4 78 0 161 4 78 0 162 4 78 0 163 4 78 0 164 4 78 0 165 4 78 0 166 4 78 0 167 4 78 0 168 4 78 0 169 4 78 0 170 4 78 0 171 10 177 0 218 4 78 2 126] 
#[0 4 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 90 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 10 185 0 233 10 189 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[0 4 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 205 0 158] 
#[0 10 209 0 158] 
#[0 10 213 0 20] 
#[0 10 217 0 37] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 10 221 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 49 1 75 9 49 1 76 9 49 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 49 1 92 3 209 1 93 9 49 1 112 9 49 1 115 9 49 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 10 225 0 244 10 229 0 245 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 233 1 75 10 233 1 76 10 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 233 1 92 3 209 1 93 10 233 1 112 10 233 1 115 10 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 10 237 0 245 1 221 0 248 1 225 0 249 10 241 0 250 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 233 1 75 10 233 1 76 10 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 233 1 92 3 209 1 93 10 233 1 112 10 233 1 115 10 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 10 245 0 158] 
#[0 10 249 0 158] 
#[0 4 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 4 130 0 1 4 130 0 5 4 130 0 8 4 130 0 10 4 130 0 12 4 130 0 13 4 130 0 16 4 130 0 17 4 130 0 46 4 130 0 47 4 130 0 48 4 130 0 49 4 130 0 52 4 130 0 55 4 130 0 56 4 130 0 60 4 130 0 61 4 130 0 62 4 130 0 65 4 130 0 66 4 130 0 73 4 130 0 77 4 130 0 80 4 130 0 87 4 130 0 95 4 130 0 97 4 130 0 99 4 130 0 100 10 253 0 114 4 130 0 117 4 130 0 121 4 130 0 122 4 130 0 123 4 130 0 125 4 130 0 128 4 130 0 129 4 130 0 130 4 130 0 133 4 130 0 134 4 130 0 135 4 130 0 136 4 130 0 139 4 130 0 141 4 130 0 143 4 130 0 153 4 130 0 158 4 130 0 159 4 130 0 160 4 130 0 161 4 130 0 162 4 130 0 163 4 130 0 166 4 130 0 167 4 130 0 170 4 130 0 171] 
#[0 4 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 11 1 1 75 11 1 1 76 11 1 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 11 1 1 92 3 209 1 93 11 1 1 112 11 1 1 115 11 1 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 90 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 11 5 0 233 10 189 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 90 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 11 9 0 233 10 189 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[0 11 13 0 114] 
#[0 4 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 154 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 4 158 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[0 4 162 0 114 0 124 0 138] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 11 21 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 21 0 211 1 189 0 212 11 21 0 214 1 197 0 215 3 13 1 208 11 21 1 235 3 29 2 104 3 53 2 124] 
#[0 4 166 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 2 73 1 53 11 25 1 57 2 81 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 11 29 1 75 11 29 1 76 11 29 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 11 29 1 92 3 209 1 93 11 29 1 112 11 29 1 115 11 29 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 4 170 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 174 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 178 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 4 182 0 158] 
#[0 4 186 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 4 190 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 11 33 0 158 11 37 1 132] 
#[1 6 81 0 10 4 194 0 158 7 53 2 105] 
#[0 4 198 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 11 41 0 158 11 45 1 139 11 49 1 148] 
#[1 11 41 0 158 11 53 1 139] 
#[1 7 29 0 8 11 57 0 158 11 65 1 3 11 65 1 6] 
#[0 11 69 0 30] 
#[0 4 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 206 0 9 0 25] 
#[0 4 210 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 214 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 4 218 0 1 4 218 0 2 4 218 0 5 4 218 0 6 4 218 0 8 4 218 0 9 1 163 0 10 4 218 0 12 4 218 0 13 4 218 0 15 4 218 0 16 4 218 0 17 4 218 0 23 4 218 0 25 4 218 0 26 4 218 0 29 4 218 0 31 4 218 0 33 4 218 0 35 4 218 0 36 4 218 0 37 4 218 0 38 4 218 0 39 4 218 0 44 4 218 0 45 4 218 0 46 4 218 0 47 4 218 0 48 4 218 0 49 4 218 0 50 4 218 0 51 4 218 0 52 4 218 0 53 4 218 0 55 4 218 0 56 4 218 0 58 4 218 0 59 4 218 0 60 4 218 0 61 4 218 0 62 4 218 0 63 4 218 0 64 4 218 0 65 4 218 0 66 4 218 0 67 4 218 0 69 4 218 0 73 4 218 0 76 4 218 0 77 4 218 0 78 4 218 0 79 4 218 0 80 4 218 0 82 4 218 0 83 4 218 0 84 4 218 0 87 4 218 0 90 4 218 0 91 4 218 0 92 4 218 0 93 4 218 0 94 4 218 0 95 4 218 0 97 4 218 0 99 4 218 0 100 4 218 0 101 4 218 0 102 4 218 0 103 4 218 0 114 4 218 0 116 4 218 0 117 4 218 0 119 4 218 0 121 4 218 0 122 4 218 0 123 4 218 0 124 4 218 0 125 4 218 0 127 4 218 0 128 4 218 0 129 4 218 0 130 4 218 0 131 4 218 0 133 4 218 0 134 4 218 0 135 4 218 0 136 4 218 0 138 4 218 0 139 4 218 0 140 4 218 0 141 4 218 0 143 4 218 0 145 4 218 0 146 4 218 0 147 4 218 0 148 4 218 0 149 4 218 0 150 4 218 0 152 4 218 0 153 4 218 0 154 4 218 0 156 4 218 0 158 4 218 0 159 4 218 0 160 4 218 0 161 4 218 0 162 4 218 0 163 4 218 0 164 4 218 0 165 4 218 0 166 4 218 0 167 4 218 0 168 4 218 0 169 4 218 0 170 4 218 0 171 4 218 2 126] 
#[0 4 222 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 4 226 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 4 230 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 11 73 0 9] 
#[1 4 234 0 9 11 77 0 15] 
#[0 4 238 0 9 0 15] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 11 81 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 81 0 211 1 189 0 212 11 81 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 4 242 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 11 85 0 9 11 89 0 15] 
#[1 4 246 0 9 4 246 0 15 3 38 0 32] 
#[1 2 202 0 8 2 206 0 9 2 202 0 49 2 202 0 52 2 202 0 55 2 202 0 60 2 202 0 65 2 202 0 66 2 202 0 77 7 81 0 86 2 202 0 87 2 202 0 95 2 202 0 100 7 81 0 104 7 81 0 114 2 202 0 117 2 202 0 121 2 202 0 125 2 202 0 134 2 202 0 135 2 202 0 139 2 202 0 143 1 167 0 158 7 69 1 82 7 73 1 83 7 77 1 84 7 81 1 85 7 81 1 86 7 89 1 88 11 93 1 89] 
#[0 2 214 0 9 0 15 0 32] 
#[0 11 97 0 32] 
#[0 11 101 0 158] 
#[0 4 250 0 158] 
#[0 2 222 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 254 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 105 1 52 1 205 1 53 1 205 1 58 11 105 1 59 11 105 1 60 11 105 1 61 11 105 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 11 105 2 107 1 205 2 108 11 105 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 109 1 52 1 205 1 53 1 205 1 58 11 109 1 59 11 109 1 60 11 109 1 61 11 109 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 11 109 2 107 1 205 2 108 11 109 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 113 1 52 1 205 1 53 1 205 1 58 11 113 1 59 11 113 1 60 11 113 1 61 11 113 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 11 113 2 107 1 205 2 108 11 113 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 117 1 52 1 205 1 53 1 205 1 58 11 117 1 59 11 117 1 60 11 117 1 61 11 117 1 62 11 117 1 63 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 11 117 2 107 1 205 2 108 11 117 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 121 1 52 1 205 1 53 1 205 1 58 11 121 1 59 11 121 1 60 11 121 1 61 11 121 1 62 11 121 1 63 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 11 121 2 107 1 205 2 108 11 121 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 11 125 1 64 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 11 129 1 64 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 11 133 1 65 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 11 137 1 65 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 11 141 1 65 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 11 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 145 0 211 1 189 0 212 11 145 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 11 149 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 149 0 211 1 189 0 212 11 149 0 214 1 197 0 215 11 153 0 226 11 153 0 227 11 153 0 229 11 153 0 230 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 11 153 1 75 11 153 1 76 11 153 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 11 153 1 92 3 209 1 93 11 153 1 112 11 153 1 115 11 153 1 116 11 153 1 117 3 225 1 151 11 173 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 11 177 1 65 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 11 181 1 66 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 11 185 1 66 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 11 189 1 67 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 11 193 1 68 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 11 197 1 69 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 11 201 1 70 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 11 205 1 73 11 205 1 74 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 11 209 1 71 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 11 213 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 11 221 1 75 11 221 1 76 11 221 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 11 217 1 91 11 221 1 92 3 209 1 93 11 221 1 112 11 221 1 115 11 221 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 11 213 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 93 0 149 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 2 73 1 53 11 229 1 57 2 81 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 11 229 1 75 11 229 1 76 11 229 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 11 229 1 90 11 229 1 91 11 229 1 92 3 209 1 93 11 229 1 112 11 229 1 115 11 229 1 116 11 229 1 121 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 0 239 0 158 1 141 0 193 1 137 0 195 1 141 0 196 11 245 0 197 11 245 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 11 245 0 211 1 189 0 212 11 245 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 11 249 0 158] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 12 5 1 75 12 5 1 76 12 5 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 12 5 1 92 3 209 1 93 11 253 1 103 12 1 1 104 12 5 1 112 12 5 1 115 12 5 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 12 9 1 75 12 9 1 76 12 9 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 12 9 1 92 3 209 1 93 12 9 1 112 12 9 1 115 12 9 1 116 12 9 1 118 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 5 2 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 6 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 12 13 0 83 12 17 0 119 12 21 1 107 12 25 1 108 12 29 1 109] 
#[1 3 69 0 80 5 10 0 83 7 217 0 92 7 221 0 93 7 225 0 103 5 10 0 119 7 229 0 146 7 233 1 93 12 33 1 97 7 253 1 98 8 1 1 99 8 5 1 100 8 9 1 101 8 13 1 102] 
#[0 5 14 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 18 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 22 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 26 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 30 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 34 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 5 42 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 37 0 114] 
#[0 5 46 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 50 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 54 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 2 73 1 53 12 41 1 57 2 81 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 12 45 1 75 12 45 1 76 12 45 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 12 45 1 92 3 209 1 93 12 45 1 112 12 45 1 115 12 45 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 5 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 66 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 70 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 5 74 0 8 5 74 0 41 5 74 0 46 5 74 0 49 5 74 0 52 5 74 0 55 5 74 0 60 5 74 0 65 5 74 0 66 5 74 0 71 5 74 0 72 5 74 0 77 5 74 0 85 5 74 0 87 5 74 0 89 5 74 0 95 5 74 0 99 5 74 0 100 5 74 0 105 5 74 0 109 5 74 0 111 5 74 0 112 5 74 0 113 5 74 0 117 5 74 0 118 5 74 0 121 1 171 0 124 5 74 0 125 5 74 0 134 5 74 0 135 1 175 0 138 5 74 0 139 5 74 0 142 5 74 0 143 5 74 0 144 5 78 0 153 5 74 0 158 12 53 2 102] 
#[0 5 82 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 86 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 90 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 94 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 98 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 102 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 106 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 110 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 5 114 0 8 5 114 0 41 5 114 0 46 5 114 0 49 5 114 0 52 5 114 0 55 5 114 0 60 5 114 0 65 5 114 0 66 5 114 0 71 1 179 0 72 5 114 0 77 5 114 0 85 5 114 0 87 5 114 0 89 5 114 0 95 5 114 0 99 5 114 0 100 5 114 0 105 5 114 0 109 5 114 0 111 5 114 0 112 5 114 0 113 5 114 0 117 5 114 0 118 5 114 0 121 5 114 0 124 5 114 0 125 5 114 0 134 5 114 0 135 1 183 0 138 5 114 0 139 5 114 0 142 5 114 0 143 5 114 0 144 1 187 0 158 12 61 2 102] 
#[0 5 122 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 126 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 1 191 0 8 8 241 0 41 8 241 0 46 1 195 0 49 1 199 0 52 1 203 0 55 3 174 0 57 12 65 0 58 1 207 0 60 8 209 0 62 1 211 0 65 1 215 0 66 8 213 0 68 12 69 0 70 8 241 0 72 1 219 0 77 1 223 0 87 3 174 0 88 8 241 0 89 1 227 0 95 8 241 0 99 1 231 0 100 8 241 0 105 12 97 0 108 8 241 0 109 8 241 0 111 8 241 0 112 8 241 0 113 12 73 0 114 1 235 0 117 8 241 0 118 1 239 0 121 8 241 0 124 1 243 0 125 3 174 0 126 1 247 0 134 1 251 0 135 8 241 0 138 1 255 0 139 8 241 0 142 2 3 0 143 8 241 0 144 2 7 0 158 1 141 0 193 1 137 0 195 1 141 0 196 12 81 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 81 0 211 1 189 0 212 12 81 0 214 1 197 0 215 12 85 1 140 3 13 1 208 12 89 2 13 12 93 2 26 12 97 2 97 8 241 2 102 3 29 2 104 3 53 2 124 8 241 2 125] 
#[1 5 29 0 8 12 129 0 41 12 129 0 46 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 12 101 0 71 12 129 0 72 1 169 0 77 12 105 0 85 1 169 0 87 12 129 0 89 1 169 0 95 12 129 0 99 5 65 0 100 12 129 0 105 12 129 0 109 12 129 0 111 12 129 0 112 12 129 0 113 1 169 0 117 12 129 0 118 1 169 0 121 12 129 0 124 5 77 0 125 1 169 0 134 1 169 0 135 12 129 0 138 1 169 0 139 12 129 0 142 1 81 0 143 12 129 0 144 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 12 109 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 109 0 211 1 189 0 212 12 109 0 214 1 197 0 215 3 13 1 208 12 113 2 18 12 117 2 19 12 121 2 21 12 125 2 23 12 129 2 102 3 29 2 104 3 53 2 124 12 129 2 125] 
#[0 12 133 0 158] 
#[1 12 141 0 138 12 137 0 153 12 141 2 102] 
#[1 5 130 0 8 5 130 0 41 5 130 0 46 5 130 0 49 5 130 0 52 5 130 0 55 5 130 0 60 5 130 0 65 5 130 0 66 5 130 0 71 2 11 0 72 5 130 0 77 5 130 0 85 5 130 0 87 5 130 0 89 5 130 0 95 5 130 0 99 5 130 0 100 5 130 0 105 5 130 0 109 5 130 0 111 5 130 0 112 5 130 0 113 5 130 0 117 5 130 0 118 5 130 0 121 2 15 0 124 5 130 0 125 5 130 0 134 5 130 0 135 5 130 0 138 5 130 0 139 5 130 0 142 5 130 0 143 5 130 0 144 3 102 0 153 5 130 0 158 12 153 2 98] 
#[0 5 134 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 12 157 0 25] 
#[1 5 221 0 158 1 141 0 193 12 161 0 195 1 141 0 196] 
#[1 1 6 0 20 6 49 0 24 1 6 0 25 6 53 0 26 12 165 0 30 9 61 0 222 9 61 0 252] 
#[0 12 169 0 25] 
#[1 6 65 0 20 5 138 0 25] 
#[1 12 181 0 158 12 177 2 73 12 181 2 74] 
#[1 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 72 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 10 0 142 0 10 0 144 12 193 0 177 12 185 0 189 12 189 0 190 12 193 0 191 12 193 0 192 12 193 1 203 12 193 2 33 12 193 2 44 12 193 2 59 12 193 2 67 0 89 2 75 0 93 2 76 0 97 2 77 0 101 2 78 5 142 2 126] 
#[0 5 146 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[1 2 19 0 37 5 150 0 41 5 150 0 46 5 150 0 57 5 150 0 62 5 150 0 68 5 150 0 72 5 150 0 88 5 150 0 89 5 150 0 98 5 150 0 99 5 150 0 105 5 150 0 108 5 150 0 109 5 150 0 111 5 150 0 112 5 150 0 113 5 150 0 114 5 150 0 118 5 150 0 124 5 150 0 126 5 150 0 138 5 150 0 142 5 150 0 144 12 197 2 72 5 150 2 126] 
#[0 5 154 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[0 5 158 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 5 162 0 8 0 15 0 38] 
#[1 12 201 0 15 12 205 0 38] 
#[0 5 166 0 15 0 38] 
#[1 12 209 0 8 5 170 0 15 5 170 0 38 12 213 2 85 12 217 2 86] 
#[0 5 174 0 158] 
#[0 12 221 0 158] 
#[1 0 6 0 37 0 6 0 41 0 6 0 46 0 6 0 57 0 6 0 62 0 6 0 68 0 7 0 72 0 6 0 88 0 6 0 89 0 6 0 98 0 6 0 99 0 6 0 105 0 6 0 108 0 6 0 109 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 118 0 6 0 124 0 6 0 126 0 6 0 138 0 6 0 140 0 6 0 142 0 6 0 144 0 6 0 156 12 225 0 180 0 41 0 181 0 45 0 182] 
#[1 12 233 0 25 5 178 0 37 5 178 0 41 5 178 0 46 5 178 0 57 5 178 0 62 5 178 0 68 5 178 0 72 5 178 0 88 5 178 0 89 5 178 0 98 5 178 0 99 5 178 0 105 5 178 0 108 5 178 0 109 5 178 0 111 5 178 0 112 5 178 0 113 5 178 0 114 5 178 0 118 5 178 0 124 5 178 0 126 5 178 0 138 5 178 0 142 5 178 0 144 5 178 0 156 12 233 2 95 5 178 2 126] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 12 241 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 241 0 211 1 189 0 212 12 241 0 214 1 197 0 215 12 237 1 140 3 13 1 208 12 241 1 234 3 29 2 104 7 13 2 124] 
#[0 12 245 0 158] 
#[0 5 74 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 182 0 8 0 49 0 52 0 55 0 57 0 60 0 65 0 66 0 77 0 87 0 88 0 95 0 100 0 117 0 121 0 125 0 126 0 134 0 135 0 139 0 143 0 158] 
#[1 12 249 0 108 3 174 0 126 12 249 2 97] 
#[0 5 114 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 12 253 0 57 13 1 0 88 13 5 0 126] 
#[0 5 130 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 186 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 9 1 0 9 2 218 0 158] 
#[0 4 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 13 9 1 75 13 9 1 76 13 9 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 13 9 1 92 3 209 1 93 13 9 1 112 13 9 1 115 13 9 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 13 13 1 52 1 205 1 53 1 205 1 58 13 13 1 59 13 13 1 60 13 13 1 61 13 13 1 62 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 13 13 2 107 1 205 2 108 13 13 2 109 1 205 2 110] 
#[0 5 190 0 9 0 15] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 9 57 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 13 17 0 205 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 9 57 0 211 1 189 0 212 9 57 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 5 194 0 9 0 15] 
#[1 13 21 0 9 9 9 0 15 13 25 0 203] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 4 217 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 13 29 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 13 33 1 75 13 33 1 76 13 33 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 13 33 1 92 3 209 1 93 13 33 1 112 13 33 1 115 13 33 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 5 198 0 9 0 15] 
#[1 13 37 0 9 9 21 0 15 13 41 0 255] 
#[0 5 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 93 0 149 13 45 1 121] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 13 49 0 222 13 49 0 252 1 6 2 126] 
#[1 13 53 0 15 13 57 0 38] 
#[0 5 206 0 15 0 38 0 156] 
#[0 13 61 0 9] 
#[1 3 190 0 9 3 190 0 15 9 5 0 158] 
#[0 4 46 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 65 0 30] 
#[1 13 69 0 15 5 210 0 25] 
#[0 5 214 0 15 0 25] 
#[0 13 73 0 9] 
#[0 5 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 77 0 8] 
#[1 6 81 0 10 6 85 2 105] 
#[1 13 81 0 158 13 85 2 112 13 89 2 113] 
#[1 1 6 0 4 1 6 0 7 1 6 0 8 1 6 0 10 1 6 0 11 1 6 0 13 1 6 0 14 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 22 6 49 0 24 6 53 0 26 1 6 0 28 1 6 0 30 1 6 0 34 1 6 0 35 0 111 0 37 1 6 0 40 1 6 0 151 0 111 0 158 6 61 0 222 6 61 0 252] 
#[0 5 222 0 25] 
#[0 5 226 0 9 0 15 0 25] 
#[0 13 93 0 25] 
#[0 5 230 0 25] 
#[1 13 97 0 15 5 234 0 25] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 77 0 141 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 13 101 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 13 101 0 211 1 189 0 212 13 101 0 214 1 197 0 215 13 101 1 151 13 101 1 152 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 13 105 0 158] 
#[0 3 58 0 158] 
#[0 5 238 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 109 0 25] 
#[0 5 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 5 246 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 5 250 0 9 0 25 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 13 113 0 9] 
#[0 13 117 0 9] 
#[0 5 254 0 9 0 20] 
#[0 6 2 0 9 0 20] 
#[0 6 6 0 9 0 20] 
#[0 6 10 0 9 0 20] 
#[0 6 14 0 9 0 20] 
#[0 13 121 0 9] 
#[1 6 18 0 9 6 18 0 20 13 125 1 50] 
#[0 6 22 0 15 0 38] 
#[0 13 129 0 38] 
#[1 13 133 0 15 6 26 0 38] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 4 217 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 229 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 4 233 1 75 4 233 1 76 4 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 4 233 1 92 3 209 1 93 4 233 1 112 4 233 1 115 4 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 1 6 0 8 1 6 0 13 1 6 0 15 1 6 0 17 1 6 0 19 1 6 0 20 6 49 0 24 6 53 0 26 13 137 0 30 1 6 0 35 1 6 0 37 1 6 0 156 8 249 0 222 8 249 0 252] 
#[1 6 101 0 8 6 105 0 13 6 109 0 17 6 113 0 19 6 117 0 20 13 141 0 35] 
#[1 1 138 0 8 1 138 0 13 6 30 0 15 1 138 0 17 1 138 0 19 1 138 0 20 1 138 0 35 1 138 0 37 6 30 0 156] 
#[1 1 154 0 8 1 154 0 13 6 34 0 15 1 154 0 17 1 154 0 19 1 154 0 20 1 154 0 35 1 154 0 37 6 34 0 156] 
#[1 1 178 0 8 1 178 0 13 6 38 0 15 1 178 0 17 1 178 0 19 1 178 0 20 1 178 0 35 1 178 0 37 6 38 0 156] 
#[0 13 145 0 156] 
#[1 13 149 0 15 6 42 0 156] 
#[0 6 46 0 15 0 156] 
#[0 6 50 0 15 0 156] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 90 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 13 153 0 233 10 189 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 13 157 0 37 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 13 161 0 149 1 97 0 153 6 54 0 156 13 165 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 13 169 1 22 13 173 1 23 13 177 1 24 13 181 1 25 13 185 1 28 13 189 1 29 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 13 193 1 75 13 193 1 76 13 193 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 13 193 1 92 3 209 1 93 13 193 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110 3 53 2 124] 
#[0 6 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 10 5 0 149 1 97 0 153 6 70 0 156 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 13 201 1 75 13 201 1 76 13 201 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 13 201 1 92 3 209 1 93 13 201 1 112 13 201 1 115 13 201 1 116 3 225 1 151 3 229 1 152 3 13 1 208 13 201 1 230 13 201 2 41 13 209 2 42 13 213 2 43 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 6 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 9 189 0 15 0 129 0 16 0 133 0 17 3 242 0 38 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 9 193 0 219 9 197 0 220 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 13 217 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 49 1 75 9 49 1 76 9 49 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 49 1 92 3 209 1 93 9 49 1 112 9 49 1 115 9 49 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 6 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 13 221 1 75 13 221 1 76 13 221 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 13 221 1 92 3 209 1 93 13 221 1 112 13 221 1 115 13 221 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 6 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 6 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 13 225 0 9] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 13 229 1 75 13 229 1 76 13 229 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 13 229 1 92 3 209 1 93 13 229 1 112 13 229 1 115 13 229 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 13 233 0 9] 
#[0 6 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 13 237 0 8 13 241 0 145 13 245 1 192 13 249 1 194] 
#[1 1 93 0 149 13 253 1 121] 
#[1 6 98 0 1 6 98 0 5 6 98 0 8 6 98 0 10 6 98 0 12 6 98 0 13 6 98 0 16 6 98 0 17 6 98 0 25 6 98 0 46 6 98 0 47 6 98 0 48 6 98 0 49 6 98 0 50 6 98 0 52 6 98 0 53 6 98 0 55 6 98 0 56 6 98 0 58 6 98 0 59 6 98 0 60 6 98 0 61 6 98 0 62 6 98 0 64 6 98 0 65 6 98 0 66 6 98 0 67 6 98 0 73 10 57 0 75 6 98 0 76 6 98 0 77 6 98 0 78 6 98 0 79 6 98 0 82 6 98 0 84 6 98 0 87 6 98 0 94 6 98 0 95 6 98 0 97 6 98 0 99 6 98 0 100 6 98 0 114 6 98 0 116 6 98 0 117 6 98 0 121 6 98 0 122 6 98 0 123 6 98 0 124 6 98 0 125 6 98 0 127 6 98 0 128 6 98 0 129 6 98 0 130 6 98 0 131 6 98 0 133 6 98 0 134 6 98 0 135 6 98 0 136 6 98 0 138 6 98 0 139 6 98 0 140 6 98 0 141 6 98 0 143 6 98 0 147 6 98 0 148 6 98 0 149 6 98 0 153 6 98 0 156 6 98 0 158 6 98 0 159 6 98 0 160 6 98 0 161 6 98 0 162 6 98 0 163 6 98 0 166 6 98 0 167 6 98 0 170 6 98 0 171 14 1 1 196 6 98 2 126] 
#[1 6 102 0 1 6 102 0 5 6 102 0 8 6 102 0 10 6 102 0 12 6 102 0 13 6 102 0 16 6 102 0 17 6 102 0 25 6 102 0 46 6 102 0 47 6 102 0 48 6 102 0 49 6 102 0 50 6 102 0 52 6 102 0 53 10 53 0 54 6 102 0 55 6 102 0 56 6 102 0 58 6 102 0 59 6 102 0 60 6 102 0 61 6 102 0 62 6 102 0 64 6 102 0 65 6 102 0 66 6 102 0 67 6 102 0 73 6 102 0 75 6 102 0 76 6 102 0 77 6 102 0 78 6 102 0 79 6 102 0 82 6 102 0 84 6 102 0 87 6 102 0 94 6 102 0 95 6 102 0 97 6 102 0 99 6 102 0 100 6 102 0 114 6 102 0 116 6 102 0 117 6 102 0 121 6 102 0 122 6 102 0 123 6 102 0 124 6 102 0 125 6 102 0 127 6 102 0 128 6 102 0 129 6 102 0 130 6 102 0 131 6 102 0 133 6 102 0 134 6 102 0 135 6 102 0 136 6 102 0 138 6 102 0 139 6 102 0 140 6 102 0 141 6 102 0 143 6 102 0 147 6 102 0 148 6 102 0 149 6 102 0 153 6 102 0 156 6 102 0 158 6 102 0 159 6 102 0 160 6 102 0 161 6 102 0 162 6 102 0 163 6 102 0 166 6 102 0 167 6 102 0 170 6 102 0 171 14 5 1 191 6 102 2 126] 
#[1 14 9 0 54 14 13 1 191 14 17 1 195] 
#[0 6 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 6 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 2 23 0 9 1 6 0 10 2 27 0 20 14 21 0 24 14 25 0 26 1 6 0 35 0 111 0 37 9 61 0 222 9 61 0 252 14 29 1 39 14 33 1 40] 
#[0 14 37 0 9] 
#[1 14 41 0 9 14 45 0 20] 
#[1 14 49 0 9 6 81 0 10 7 53 2 105] 
#[0 14 53 0 9] 
#[1 2 31 0 158 6 73 1 143 6 77 1 146] 
#[0 6 118 0 9] 
#[0 6 122 0 9] 
#[1 7 29 0 8 2 35 0 158 7 37 1 3 7 41 1 141] 
#[0 14 57 0 9] 
#[0 14 61 0 9] 
#[0 6 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 14 65 0 25] 
#[0 6 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 6 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 1 6 0 1 1 6 0 2 1 6 0 5 1 6 0 6 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 12 1 6 0 13 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 20 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 29 1 6 0 31 1 6 0 32 1 6 0 33 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 102 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 14 69 0 222 14 69 0 252 1 6 2 126] 
#[0 6 142 0 15 0 154] 
#[1 14 73 0 15 14 77 0 154] 
#[0 6 146 0 15 0 154] 
#[1 1 6 0 1 1 6 0 2 1 6 0 5 1 6 0 6 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 12 1 6 0 13 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 20 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 29 1 6 0 31 1 6 0 32 1 6 0 33 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 102 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 14 81 0 222 14 81 0 252 1 6 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 14 85 0 149 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 14 93 1 75 14 93 1 76 14 93 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 14 93 1 92 3 209 1 93 14 93 1 112 14 93 1 115 14 93 1 116 3 225 1 151 3 229 1 152 14 93 1 153 3 13 1 208 14 93 2 41 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 14 93 2 119 3 53 2 124] 
#[1 6 150 0 9 14 105 0 15 6 150 0 25 14 109 1 144] 
#[0 6 154 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 113 0 23] 
#[0 14 117 0 9] 
#[1 6 162 0 9 14 121 0 15] 
#[0 6 166 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 14 125 0 86 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 14 129 0 104 14 133 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 14 137 0 238 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 14 141 1 75 14 141 1 76 14 141 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 14 141 1 92 3 209 1 93 14 141 1 112 14 141 1 115 14 141 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 6 170 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 86 0 87 0 95 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 14 145 0 222 14 145 0 252 1 6 2 126] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 14 149 0 222 14 149 0 252 1 6 2 126] 
#[0 14 153 0 158] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 14 157 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 49 1 75 9 49 1 76 9 49 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 49 1 92 3 209 1 93 9 49 1 112 9 49 1 115 9 49 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 13 53 0 15 14 161 0 38] 
#[1 14 165 0 164 14 169 0 165] 
#[0 6 174 0 164 0 165] 
#[1 14 173 0 15 6 178 0 23 6 182 0 164 6 182 0 165 6 182 0 168 6 182 0 169 14 177 0 246 14 181 0 247] 
#[0 6 186 0 168 0 169] 
#[1 14 185 0 168 14 189 0 169] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 14 193 0 222 14 193 0 252 1 6 2 126] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 14 197 0 222 14 197 0 252 1 6 2 126] 
#[0 6 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 6 194 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 201 0 9] 
#[0 14 205 0 9] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 14 209 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 14 209 1 75 14 209 1 76 14 209 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 14 209 1 92 3 209 1 93 14 209 1 112 14 209 1 115 14 209 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 6 198 0 158] 
#[1 11 33 0 158 14 213 1 132] 
#[0 14 217 0 25] 
#[0 14 221 0 25] 
#[1 14 225 0 8 14 229 0 26 14 233 1 206] 
#[0 6 202 0 32 0 149] 
#[0 14 237 0 30] 
#[1 6 206 0 9 6 206 0 15 6 206 0 25 14 241 1 150] 
#[0 6 210 0 9 0 25] 
#[0 6 214 0 9 0 25] 
#[0 6 218 0 9 0 15] 
#[0 6 222 0 9 0 15] 
#[1 14 245 0 15 14 249 1 4 14 253 1 5] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 15 1 1 75 15 1 1 76 15 1 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 15 1 1 92 3 209 1 93 15 1 1 112 15 1 1 115 15 1 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 6 226 0 32 0 149] 
#[1 2 202 0 8 2 202 0 49 2 202 0 52 2 202 0 55 2 202 0 60 2 202 0 65 2 202 0 66 2 202 0 77 7 81 0 86 2 202 0 87 2 202 0 95 2 202 0 100 7 81 0 104 7 81 0 114 2 202 0 117 2 202 0 121 2 202 0 125 2 202 0 134 2 202 0 135 2 202 0 139 2 202 0 143 2 202 0 158 15 5 1 84 7 81 1 85 7 81 1 86] 
#[0 15 9 0 158] 
#[0 6 230 0 32] 
#[1 7 101 0 158 15 13 1 89] 
#[0 4 246 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 11 213 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 93 0 149 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 2 73 1 53 15 17 1 57 2 81 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 15 17 1 75 15 17 1 76 15 17 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 15 17 1 90 15 17 1 91 15 17 1 92 3 209 1 93 15 17 1 112 15 17 1 115 15 17 1 116 15 17 1 121 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 15 21 0 86] 
#[0 6 234 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 238 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 242 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 6 246 0 1 6 246 0 2 7 125 0 3 6 246 0 5 6 246 0 6 6 246 0 8 6 246 0 9 2 39 0 10 6 246 0 12 6 246 0 13 6 246 0 15 6 246 0 16 6 246 0 17 7 133 0 21 6 246 0 23 6 246 0 25 6 246 0 26 6 246 0 27 6 246 0 29 6 246 0 31 6 246 0 33 6 246 0 35 6 246 0 36 6 246 0 38 6 246 0 39 6 246 0 44 6 246 0 45 6 246 0 46 6 246 0 47 6 246 0 48 6 246 0 49 6 246 0 50 6 246 0 51 6 246 0 52 6 246 0 53 6 246 0 55 6 246 0 56 6 246 0 58 6 246 0 59 6 246 0 60 6 246 0 61 6 246 0 62 6 246 0 63 6 246 0 64 6 246 0 65 6 246 0 66 6 246 0 67 6 246 0 69 6 246 0 73 6 246 0 76 6 246 0 77 6 246 0 78 6 246 0 79 6 246 0 80 6 246 0 82 6 246 0 83 6 246 0 84 6 246 0 87 6 246 0 90 6 246 0 91 6 246 0 92 6 246 0 93 6 246 0 94 6 246 0 95 6 246 0 97 6 246 0 99 6 246 0 100 6 246 0 101 6 246 0 103 6 246 0 114 6 246 0 116 6 246 0 117 6 246 0 119 6 246 0 121 6 246 0 122 6 246 0 123 6 246 0 124 6 246 0 125 6 246 0 127 6 246 0 128 6 246 0 129 6 246 0 130 6 246 0 131 6 246 0 133 6 246 0 134 6 246 0 135 6 246 0 136 6 246 0 138 6 246 0 139 6 246 0 140 6 246 0 141 6 246 0 143 6 246 0 145 6 246 0 146 6 246 0 147 6 246 0 148 6 246 0 149 6 246 0 150 6 246 0 152 6 246 0 153 6 246 0 154 6 246 0 155 6 246 0 156 6 246 0 158 6 246 0 159 6 246 0 160 6 246 0 161 6 246 0 162 6 246 0 163 6 246 0 164 6 246 0 165 6 246 0 166 6 246 0 167 6 246 0 168 6 246 0 169 6 246 0 170 6 246 0 171 6 246 2 126] 
#[1 6 250 0 1 6 250 0 2 7 125 0 3 6 250 0 5 6 250 0 6 6 250 0 8 6 250 0 9 2 43 0 10 6 250 0 12 6 250 0 13 6 250 0 15 6 250 0 16 6 250 0 17 7 133 0 21 6 250 0 23 6 250 0 25 6 250 0 26 6 250 0 27 6 250 0 29 6 250 0 31 6 250 0 33 6 250 0 35 6 250 0 36 6 250 0 38 6 250 0 39 6 250 0 44 6 250 0 45 6 250 0 46 6 250 0 47 6 250 0 48 6 250 0 49 6 250 0 50 6 250 0 51 6 250 0 52 6 250 0 53 6 250 0 55 6 250 0 56 6 250 0 58 6 250 0 59 6 250 0 60 6 250 0 61 6 250 0 62 6 250 0 63 6 250 0 64 6 250 0 65 6 250 0 66 6 250 0 67 6 250 0 69 6 250 0 73 6 250 0 76 6 250 0 77 6 250 0 78 6 250 0 79 6 250 0 80 6 250 0 82 6 250 0 83 6 250 0 84 6 250 0 87 6 250 0 90 6 250 0 91 6 250 0 92 6 250 0 93 6 250 0 94 6 250 0 95 6 250 0 97 6 250 0 99 6 250 0 100 6 250 0 101 6 250 0 103 6 250 0 114 6 250 0 116 6 250 0 117 6 250 0 119 6 250 0 121 6 250 0 122 6 250 0 123 6 250 0 124 6 250 0 125 6 250 0 127 6 250 0 128 6 250 0 129 6 250 0 130 6 250 0 131 6 250 0 133 6 250 0 134 6 250 0 135 6 250 0 136 6 250 0 138 6 250 0 139 6 250 0 140 6 250 0 141 6 250 0 143 6 250 0 145 6 250 0 146 6 250 0 147 6 250 0 148 6 250 0 149 6 250 0 150 6 250 0 152 6 250 0 153 6 250 0 154 6 250 0 155 6 250 0 156 6 250 0 158 6 250 0 159 6 250 0 160 6 250 0 161 6 250 0 162 6 250 0 163 6 250 0 164 6 250 0 165 6 250 0 166 6 250 0 167 6 250 0 168 6 250 0 169 6 250 0 170 6 250 0 171 6 250 2 126] 
#[1 6 254 0 1 6 254 0 2 6 254 0 5 6 254 0 6 6 254 0 8 6 254 0 9 6 254 0 10 2 47 0 12 6 254 0 13 6 254 0 15 2 51 0 16 6 254 0 17 6 254 0 23 6 254 0 25 6 254 0 26 6 254 0 27 6 254 0 29 6 254 0 31 6 254 0 33 6 254 0 35 6 254 0 36 6 254 0 38 6 254 0 39 6 254 0 44 6 254 0 45 6 254 0 46 6 254 0 47 6 254 0 48 6 254 0 49 6 254 0 50 6 254 0 51 6 254 0 52 6 254 0 53 6 254 0 55 6 254 0 56 6 254 0 58 6 254 0 59 6 254 0 60 6 254 0 61 6 254 0 62 6 254 0 63 6 254 0 64 6 254 0 65 6 254 0 66 6 254 0 67 6 254 0 69 6 254 0 73 6 254 0 76 6 254 0 77 6 254 0 78 6 254 0 79 6 254 0 80 6 254 0 82 6 254 0 83 6 254 0 84 6 254 0 87 6 254 0 90 6 254 0 91 6 254 0 92 6 254 0 93 6 254 0 94 6 254 0 95 6 254 0 97 6 254 0 99 6 254 0 100 6 254 0 101 6 254 0 103 6 254 0 114 6 254 0 116 6 254 0 117 6 254 0 119 6 254 0 121 6 254 0 122 6 254 0 123 6 254 0 124 6 254 0 125 6 254 0 127 6 254 0 128 6 254 0 129 6 254 0 130 6 254 0 131 6 254 0 133 6 254 0 134 6 254 0 135 6 254 0 136 6 254 0 138 6 254 0 139 6 254 0 140 6 254 0 141 6 254 0 143 6 254 0 145 6 254 0 146 6 254 0 147 6 254 0 148 6 254 0 149 6 254 0 150 6 254 0 152 6 254 0 153 6 254 0 154 6 254 0 155 6 254 0 156 6 254 0 158 6 254 0 159 6 254 0 160 6 254 0 161 6 254 0 162 6 254 0 163 6 254 0 164 6 254 0 165 6 254 0 166 6 254 0 167 6 254 0 168 6 254 0 169 6 254 0 170 6 254 0 171 6 254 2 126] 
#[1 7 2 0 1 7 2 0 2 7 2 0 5 7 2 0 6 7 2 0 8 7 2 0 9 7 2 0 10 2 55 0 12 7 2 0 13 7 2 0 15 2 59 0 16 7 2 0 17 7 2 0 23 7 2 0 25 7 2 0 26 7 2 0 27 7 2 0 29 7 2 0 31 7 2 0 33 7 2 0 35 7 2 0 36 7 2 0 38 7 2 0 39 7 2 0 44 7 2 0 45 7 2 0 46 7 2 0 47 7 2 0 48 7 2 0 49 7 2 0 50 7 2 0 51 7 2 0 52 7 2 0 53 7 2 0 55 7 2 0 56 7 2 0 58 7 2 0 59 7 2 0 60 7 2 0 61 7 2 0 62 7 2 0 63 7 2 0 64 7 2 0 65 7 2 0 66 7 2 0 67 7 2 0 69 7 2 0 73 7 2 0 76 7 2 0 77 7 2 0 78 7 2 0 79 7 2 0 80 7 2 0 82 7 2 0 83 7 2 0 84 7 2 0 87 7 2 0 90 7 2 0 91 7 2 0 92 7 2 0 93 7 2 0 94 7 2 0 95 7 2 0 97 7 2 0 99 7 2 0 100 7 2 0 101 7 2 0 103 7 2 0 114 7 2 0 116 7 2 0 117 7 2 0 119 7 2 0 121 7 2 0 122 7 2 0 123 7 2 0 124 7 2 0 125 7 2 0 127 7 2 0 128 7 2 0 129 7 2 0 130 7 2 0 131 7 2 0 133 7 2 0 134 7 2 0 135 7 2 0 136 7 2 0 138 7 2 0 139 7 2 0 140 7 2 0 141 7 2 0 143 7 2 0 145 7 2 0 146 7 2 0 147 7 2 0 148 7 2 0 149 7 2 0 150 7 2 0 152 7 2 0 153 7 2 0 154 7 2 0 155 7 2 0 156 7 2 0 158 7 2 0 159 7 2 0 160 7 2 0 161 7 2 0 162 7 2 0 163 7 2 0 164 7 2 0 165 7 2 0 166 7 2 0 167 7 2 0 168 7 2 0 169 7 2 0 170 7 2 0 171 7 2 2 126] 
#[1 7 6 0 1 7 6 0 2 7 6 0 5 7 6 0 6 7 6 0 8 7 6 0 9 7 6 0 10 7 6 0 12 7 6 0 13 7 6 0 15 7 6 0 16 7 6 0 17 7 6 0 23 7 6 0 25 7 6 0 26 7 145 0 27 7 6 0 29 7 6 0 31 7 6 0 33 7 6 0 35 7 6 0 36 7 6 0 38 7 6 0 39 7 6 0 44 7 6 0 45 7 6 0 46 7 6 0 47 7 6 0 48 7 6 0 49 7 6 0 50 7 6 0 51 7 6 0 52 7 6 0 53 7 6 0 55 7 6 0 56 7 6 0 58 7 6 0 59 7 6 0 60 7 6 0 61 7 6 0 62 7 6 0 63 7 6 0 64 7 6 0 65 7 6 0 66 7 6 0 67 7 6 0 69 7 6 0 73 7 6 0 76 7 6 0 77 7 6 0 78 7 6 0 79 7 6 0 80 7 6 0 82 7 6 0 83 7 6 0 84 7 6 0 87 7 6 0 90 7 6 0 91 7 6 0 92 7 6 0 93 7 6 0 94 7 6 0 95 7 6 0 97 7 6 0 99 7 6 0 100 7 6 0 101 7 6 0 103 7 6 0 114 7 6 0 116 7 6 0 117 7 6 0 119 7 6 0 121 7 6 0 122 7 6 0 123 7 6 0 124 7 6 0 125 7 6 0 127 7 6 0 128 7 6 0 129 7 6 0 130 7 6 0 131 7 6 0 133 7 6 0 134 7 6 0 135 7 6 0 136 7 6 0 138 7 6 0 139 7 6 0 140 7 6 0 141 7 6 0 143 7 6 0 145 7 6 0 146 7 6 0 147 7 6 0 148 7 6 0 149 7 6 0 150 7 6 0 152 7 6 0 153 7 6 0 154 7 149 0 155 7 6 0 156 7 6 0 158 7 6 0 159 7 6 0 160 7 6 0 161 7 6 0 162 7 6 0 163 7 6 0 164 7 6 0 165 7 6 0 166 7 6 0 167 7 6 0 168 7 6 0 169 7 6 0 170 7 6 0 171 7 6 2 126] 
#[1 7 10 0 1 7 10 0 2 7 10 0 5 7 10 0 6 7 10 0 8 7 10 0 9 7 10 0 10 7 10 0 12 7 10 0 13 7 10 0 15 7 10 0 16 7 10 0 17 7 10 0 23 7 10 0 25 7 10 0 26 7 145 0 27 7 10 0 29 7 10 0 31 7 10 0 33 7 10 0 35 7 10 0 36 7 10 0 38 7 10 0 39 7 10 0 44 7 10 0 45 7 10 0 46 7 10 0 47 7 10 0 48 7 10 0 49 7 10 0 50 7 10 0 51 7 10 0 52 7 10 0 53 7 10 0 55 7 10 0 56 7 10 0 58 7 10 0 59 7 10 0 60 7 10 0 61 7 10 0 62 7 10 0 63 7 10 0 64 7 10 0 65 7 10 0 66 7 10 0 67 7 10 0 69 7 10 0 73 7 10 0 76 7 10 0 77 7 10 0 78 7 10 0 79 7 10 0 80 7 10 0 82 7 10 0 83 7 10 0 84 7 10 0 87 7 10 0 90 7 10 0 91 7 10 0 92 7 10 0 93 7 10 0 94 7 10 0 95 7 10 0 97 7 10 0 99 7 10 0 100 7 10 0 101 7 10 0 103 7 10 0 114 7 10 0 116 7 10 0 117 7 10 0 119 7 10 0 121 7 10 0 122 7 10 0 123 7 10 0 124 7 10 0 125 7 10 0 127 7 10 0 128 7 10 0 129 7 10 0 130 7 10 0 131 7 10 0 133 7 10 0 134 7 10 0 135 7 10 0 136 7 10 0 138 7 10 0 139 7 10 0 140 7 10 0 141 7 10 0 143 7 10 0 145 7 10 0 146 7 10 0 147 7 10 0 148 7 10 0 149 7 10 0 150 7 10 0 152 7 10 0 153 7 10 0 154 7 149 0 155 7 10 0 156 7 10 0 158 7 10 0 159 7 10 0 160 7 10 0 161 7 10 0 162 7 10 0 163 7 10 0 164 7 10 0 165 7 10 0 166 7 10 0 167 7 10 0 168 7 10 0 169 7 10 0 170 7 10 0 171 7 10 2 126] 
#[1 7 14 0 1 7 14 0 2 7 14 0 5 7 14 0 6 7 14 0 8 7 14 0 9 7 14 0 10 7 14 0 12 7 14 0 13 7 14 0 15 7 14 0 16 7 14 0 17 7 14 0 23 7 14 0 25 7 14 0 26 7 145 0 27 7 14 0 29 7 14 0 31 7 14 0 33 7 14 0 35 7 14 0 36 7 14 0 38 7 14 0 39 7 14 0 44 7 14 0 45 7 14 0 46 7 14 0 47 7 14 0 48 7 14 0 49 7 14 0 50 7 14 0 51 7 14 0 52 7 14 0 53 7 14 0 55 7 14 0 56 7 14 0 58 7 14 0 59 7 14 0 60 7 14 0 61 7 14 0 62 7 14 0 63 7 14 0 64 7 14 0 65 7 14 0 66 7 14 0 67 7 14 0 69 7 14 0 73 7 14 0 76 7 14 0 77 7 14 0 78 7 14 0 79 7 14 0 80 7 14 0 82 7 14 0 83 7 14 0 84 7 14 0 87 7 14 0 90 7 14 0 91 7 14 0 92 7 14 0 93 7 14 0 94 7 14 0 95 7 14 0 97 7 14 0 99 7 14 0 100 7 14 0 101 7 14 0 103 7 14 0 114 7 14 0 116 7 14 0 117 7 14 0 119 7 14 0 121 7 14 0 122 7 14 0 123 7 14 0 124 7 14 0 125 7 14 0 127 7 14 0 128 7 14 0 129 7 14 0 130 7 14 0 131 7 14 0 133 7 14 0 134 7 14 0 135 7 14 0 136 7 14 0 138 7 14 0 139 7 14 0 140 7 14 0 141 7 14 0 143 7 14 0 145 7 14 0 146 7 14 0 147 7 14 0 148 7 14 0 149 7 14 0 150 7 14 0 152 7 14 0 153 7 14 0 154 7 149 0 155 7 14 0 156 7 14 0 158 7 14 0 159 7 14 0 160 7 14 0 161 7 14 0 162 7 14 0 163 7 14 0 164 7 14 0 165 7 14 0 166 7 14 0 167 7 14 0 168 7 14 0 169 7 14 0 170 7 14 0 171 7 14 2 126] 
#[0 7 18 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 22 0 1 7 22 0 2 7 22 0 5 7 22 0 6 7 22 0 8 7 22 0 9 7 22 0 10 7 22 0 12 7 22 0 13 7 22 0 15 7 22 0 16 7 22 0 17 7 22 0 23 7 22 0 25 7 22 0 26 7 22 0 29 7 22 0 31 7 22 0 33 7 22 0 35 7 22 0 36 7 22 0 38 7 22 0 39 7 22 0 44 7 22 0 45 7 22 0 46 7 22 0 47 7 22 0 48 7 22 0 49 7 22 0 50 7 22 0 51 7 22 0 52 7 22 0 53 7 22 0 55 7 22 0 56 7 22 0 58 7 22 0 59 7 22 0 60 7 22 0 61 7 22 0 62 7 22 0 63 7 22 0 64 7 22 0 65 7 22 0 66 7 22 0 67 7 22 0 69 7 22 0 73 7 22 0 76 7 22 0 77 7 22 0 78 7 22 0 79 7 22 0 80 7 22 0 82 7 22 0 83 7 22 0 84 7 22 0 87 7 22 0 90 7 22 0 91 7 22 0 92 7 22 0 93 7 22 0 94 7 22 0 95 7 22 0 97 7 22 0 99 7 22 0 100 7 22 0 101 7 22 0 103 7 22 0 114 7 22 0 116 7 22 0 117 7 22 0 119 7 22 0 121 7 22 0 122 7 22 0 123 7 22 0 124 7 22 0 125 7 22 0 127 7 22 0 128 7 22 0 129 7 22 0 130 7 22 0 131 7 22 0 133 7 22 0 134 7 22 0 135 7 22 0 136 7 22 0 138 7 22 0 139 7 22 0 140 7 22 0 141 7 22 0 143 7 22 0 145 7 22 0 146 7 22 0 147 7 22 0 148 7 22 0 149 7 22 0 150 7 22 0 152 7 22 0 153 7 22 0 154 7 22 0 156 2 63 0 158 7 22 0 159 7 22 0 160 7 22 0 161 7 22 0 162 7 22 0 163 7 22 0 164 7 22 0 165 7 22 0 166 7 22 0 167 7 22 0 168 7 22 0 169 7 22 0 170 7 22 0 171 15 29 0 231 15 29 0 232 7 22 2 126] 
#[0 7 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 30 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 29 0 8 2 67 0 158 15 37 0 228 15 37 0 231 15 37 0 232 7 37 1 3] 
#[1 7 46 0 1 7 46 0 2 7 46 0 5 7 46 0 6 7 46 0 8 7 46 0 9 7 46 0 10 7 46 0 12 7 46 0 13 7 46 0 15 7 46 0 16 7 46 0 17 7 46 0 23 7 46 0 25 7 46 0 26 7 145 0 27 7 46 0 29 7 46 0 31 7 46 0 33 7 46 0 35 7 46 0 36 7 46 0 38 7 46 0 39 7 46 0 44 7 46 0 45 7 46 0 46 7 46 0 47 7 46 0 48 7 46 0 49 7 46 0 50 7 46 0 51 7 46 0 52 7 46 0 53 7 46 0 55 7 46 0 56 7 46 0 58 7 46 0 59 7 46 0 60 7 46 0 61 7 46 0 62 7 46 0 63 7 46 0 64 7 46 0 65 7 46 0 66 7 46 0 67 7 46 0 69 7 46 0 73 7 46 0 76 7 46 0 77 7 46 0 78 7 46 0 79 7 46 0 80 7 46 0 82 7 46 0 83 7 46 0 84 7 46 0 87 7 46 0 90 7 46 0 91 7 46 0 92 7 46 0 93 7 46 0 94 7 46 0 95 7 46 0 97 7 46 0 99 7 46 0 100 7 46 0 101 7 46 0 103 7 46 0 114 7 46 0 116 7 46 0 117 7 46 0 119 7 46 0 121 7 46 0 122 7 46 0 123 7 46 0 124 7 46 0 125 7 46 0 127 7 46 0 128 7 46 0 129 7 46 0 130 7 46 0 131 7 46 0 133 7 46 0 134 7 46 0 135 7 46 0 136 7 46 0 138 7 46 0 139 7 46 0 140 7 46 0 141 7 46 0 143 7 46 0 145 7 46 0 146 7 46 0 147 7 46 0 148 7 46 0 149 7 46 0 150 7 46 0 152 7 46 0 153 7 46 0 154 7 149 0 155 7 46 0 156 7 46 0 158 7 46 0 159 7 46 0 160 7 46 0 161 7 46 0 162 7 46 0 163 7 46 0 164 7 46 0 165 7 46 0 166 7 46 0 167 7 46 0 168 7 46 0 169 7 46 0 170 7 46 0 171 7 46 2 126] 
#[1 7 50 0 1 7 50 0 2 7 50 0 5 7 50 0 6 7 50 0 8 7 50 0 9 7 50 0 10 7 50 0 12 7 50 0 13 7 50 0 15 7 50 0 16 7 50 0 17 7 50 0 23 7 50 0 25 2 71 0 26 2 75 0 29 7 50 0 31 2 79 0 33 7 50 0 35 7 50 0 36 7 50 0 38 7 50 0 39 2 83 0 44 7 50 0 45 7 50 0 46 7 50 0 47 7 50 0 48 7 50 0 49 7 50 0 50 7 50 0 51 7 50 0 52 7 50 0 53 7 50 0 55 7 50 0 56 7 50 0 58 7 50 0 59 7 50 0 60 7 50 0 61 7 50 0 62 7 50 0 63 7 50 0 64 7 50 0 65 7 50 0 66 7 50 0 67 7 50 0 69 7 50 0 73 7 50 0 76 7 50 0 77 7 50 0 78 7 50 0 79 7 50 0 80 7 50 0 82 7 50 0 83 7 50 0 84 7 50 0 87 7 50 0 90 2 87 0 91 7 50 0 92 7 50 0 93 7 50 0 94 7 50 0 95 7 50 0 97 7 50 0 99 7 50 0 100 7 50 0 101 7 50 0 103 7 50 0 114 7 50 0 116 7 50 0 117 7 50 0 119 7 50 0 121 7 50 0 122 7 50 0 123 7 50 0 124 7 50 0 125 7 50 0 127 7 50 0 128 7 50 0 129 7 50 0 130 7 50 0 131 7 50 0 133 7 50 0 134 7 50 0 135 7 50 0 136 7 50 0 138 7 50 0 139 7 50 0 140 7 50 0 141 7 50 0 143 7 50 0 145 7 50 0 146 7 50 0 147 7 50 0 148 7 50 0 149 7 50 0 150 7 50 0 152 7 50 0 153 2 91 0 154 7 50 0 156 7 50 0 158 7 50 0 159 7 50 0 160 7 50 0 161 7 50 0 162 7 50 0 163 7 50 0 164 7 50 0 165 7 50 0 166 7 50 0 167 7 50 0 168 7 50 0 169 7 50 0 170 7 50 0 171 7 50 2 126] 
#[1 7 54 0 1 7 54 0 2 7 54 0 5 7 54 0 6 7 54 0 8 7 54 0 9 7 54 0 10 7 54 0 12 7 54 0 13 7 54 0 15 7 54 0 16 7 54 0 17 7 54 0 23 7 54 0 25 2 95 0 26 2 99 0 29 7 54 0 31 2 103 0 33 7 54 0 35 7 54 0 36 7 54 0 38 7 54 0 39 2 107 0 44 7 54 0 45 7 54 0 46 7 54 0 47 7 54 0 48 7 54 0 49 7 54 0 50 7 54 0 51 7 54 0 52 7 54 0 53 7 54 0 55 7 54 0 56 7 54 0 58 7 54 0 59 7 54 0 60 7 54 0 61 7 54 0 62 7 54 0 63 7 54 0 64 7 54 0 65 7 54 0 66 7 54 0 67 7 54 0 69 7 54 0 73 7 54 0 76 7 54 0 77 7 54 0 78 7 54 0 79 7 54 0 80 7 54 0 82 7 54 0 83 7 54 0 84 7 54 0 87 7 54 0 90 2 111 0 91 7 54 0 92 7 54 0 93 7 54 0 94 7 54 0 95 7 54 0 97 7 54 0 99 7 54 0 100 7 54 0 101 7 54 0 103 7 54 0 114 7 54 0 116 7 54 0 117 7 54 0 119 7 54 0 121 7 54 0 122 7 54 0 123 7 54 0 124 7 54 0 125 7 54 0 127 7 54 0 128 7 54 0 129 7 54 0 130 7 54 0 131 7 54 0 133 7 54 0 134 7 54 0 135 7 54 0 136 7 54 0 138 7 54 0 139 7 54 0 140 7 54 0 141 7 54 0 143 7 54 0 145 7 54 0 146 7 54 0 147 7 54 0 148 7 54 0 149 7 54 0 150 7 54 0 152 7 54 0 153 2 115 0 154 7 54 0 156 7 54 0 158 7 54 0 159 7 54 0 160 7 54 0 161 7 54 0 162 7 54 0 163 7 54 0 164 7 54 0 165 7 54 0 166 7 54 0 167 7 54 0 168 7 54 0 169 7 54 0 170 7 54 0 171 7 54 2 126] 
#[1 7 58 0 1 2 119 0 2 7 58 0 5 7 58 0 6 7 58 0 8 7 58 0 9 7 58 0 10 7 58 0 12 7 58 0 13 7 58 0 15 7 58 0 16 7 58 0 17 7 58 0 23 7 58 0 25 7 58 0 26 7 58 0 29 2 123 0 31 7 58 0 33 7 58 0 35 7 58 0 36 7 58 0 38 7 58 0 39 7 58 0 44 7 58 0 45 7 58 0 46 7 58 0 47 7 58 0 48 7 58 0 49 7 58 0 50 7 58 0 51 7 58 0 52 7 58 0 53 7 58 0 55 7 58 0 56 7 58 0 58 7 58 0 59 7 58 0 60 7 58 0 61 7 58 0 62 7 58 0 63 7 58 0 64 7 58 0 65 7 58 0 66 7 58 0 67 7 58 0 69 7 58 0 73 7 58 0 76 7 58 0 77 7 58 0 78 7 58 0 79 7 58 0 80 7 58 0 82 7 58 0 83 7 58 0 84 7 58 0 87 7 58 0 90 7 58 0 91 7 58 0 92 7 58 0 93 7 58 0 94 7 58 0 95 7 58 0 97 7 58 0 99 7 58 0 100 7 58 0 101 7 58 0 103 7 58 0 114 7 58 0 116 7 58 0 117 7 58 0 119 7 58 0 121 7 58 0 122 7 58 0 123 7 58 0 124 7 58 0 125 7 58 0 127 7 58 0 128 7 58 0 129 7 58 0 130 7 58 0 131 7 58 0 133 7 58 0 134 7 58 0 135 7 58 0 136 7 58 0 138 7 58 0 139 7 58 0 140 7 58 0 141 7 58 0 143 7 58 0 145 7 58 0 146 7 58 0 147 7 58 0 148 7 58 0 149 7 58 0 150 7 58 0 152 7 58 0 153 7 58 0 154 7 58 0 156 7 58 0 158 7 58 0 159 7 58 0 160 7 58 0 161 7 58 0 162 7 58 0 163 7 58 0 164 7 58 0 165 7 58 0 166 7 58 0 167 7 58 0 168 7 58 0 169 7 58 0 170 7 58 0 171 7 58 2 126] 
#[1 7 62 0 1 7 62 0 2 2 127 0 5 7 62 0 6 7 62 0 8 7 62 0 9 7 62 0 10 7 62 0 12 7 62 0 13 7 62 0 15 7 62 0 16 7 62 0 17 7 62 0 23 7 62 0 25 7 62 0 26 7 62 0 29 7 62 0 31 7 62 0 33 7 62 0 35 7 62 0 36 7 62 0 38 7 62 0 39 7 62 0 44 7 62 0 45 7 62 0 46 7 62 0 47 7 62 0 48 7 62 0 49 7 62 0 50 7 62 0 51 7 62 0 52 7 62 0 53 7 62 0 55 7 62 0 56 7 62 0 58 7 62 0 59 7 62 0 60 7 62 0 61 7 62 0 62 7 62 0 63 7 62 0 64 7 62 0 65 7 62 0 66 7 62 0 67 7 62 0 69 7 62 0 73 7 62 0 76 7 62 0 77 7 62 0 78 7 62 0 79 7 62 0 80 7 62 0 82 7 62 0 83 7 62 0 84 7 62 0 87 7 62 0 90 7 62 0 91 7 62 0 92 7 62 0 93 7 62 0 94 7 62 0 95 7 62 0 97 7 62 0 99 7 62 0 100 7 62 0 101 7 62 0 103 7 62 0 114 7 62 0 116 7 62 0 117 7 62 0 119 7 62 0 121 7 62 0 122 7 62 0 123 7 62 0 124 7 62 0 125 7 62 0 127 7 62 0 128 7 62 0 129 7 62 0 130 7 62 0 131 7 62 0 133 7 62 0 134 7 62 0 135 7 62 0 136 7 62 0 138 7 62 0 139 7 62 0 140 7 62 0 141 7 62 0 143 7 62 0 145 7 62 0 146 7 62 0 147 7 62 0 148 7 62 0 149 7 62 0 150 7 62 0 152 7 62 0 153 7 62 0 154 7 62 0 156 7 62 0 158 7 62 0 159 7 62 0 160 7 62 0 161 7 62 0 162 7 62 0 163 7 62 0 164 7 62 0 165 7 62 0 166 7 62 0 167 7 62 0 168 7 62 0 169 7 62 0 170 7 62 0 171 7 62 2 126] 
#[1 7 66 0 1 7 66 0 2 7 66 0 5 7 66 0 6 7 66 0 8 7 66 0 9 7 66 0 10 7 66 0 12 7 66 0 13 7 66 0 15 7 66 0 16 7 66 0 17 7 66 0 23 7 66 0 25 7 66 0 26 7 66 0 29 7 66 0 31 7 66 0 33 7 66 0 35 7 66 0 36 7 66 0 38 2 131 0 39 7 66 0 44 7 66 0 45 7 66 0 46 7 66 0 47 7 66 0 48 7 66 0 49 7 66 0 50 7 66 0 51 7 66 0 52 7 66 0 53 7 66 0 55 7 66 0 56 7 66 0 58 7 66 0 59 7 66 0 60 7 66 0 61 7 66 0 62 7 66 0 63 7 66 0 64 7 66 0 65 7 66 0 66 7 66 0 67 7 66 0 69 7 66 0 73 7 66 0 76 7 66 0 77 7 66 0 78 7 66 0 79 7 66 0 80 7 66 0 82 7 66 0 83 7 66 0 84 7 66 0 87 7 66 0 90 7 66 0 91 7 66 0 92 7 66 0 93 7 66 0 94 7 66 0 95 7 66 0 97 7 66 0 99 7 66 0 100 7 66 0 101 7 66 0 103 7 66 0 114 7 66 0 116 7 66 0 117 7 66 0 119 7 66 0 121 7 66 0 122 7 66 0 123 7 66 0 124 7 66 0 125 7 66 0 127 7 66 0 128 7 66 0 129 7 66 0 130 7 66 0 131 7 66 0 133 7 66 0 134 7 66 0 135 7 66 0 136 7 66 0 138 7 66 0 139 7 66 0 140 7 66 0 141 7 66 0 143 7 66 0 145 7 66 0 146 7 66 0 147 7 66 0 148 7 66 0 149 7 66 0 150 7 66 0 152 7 66 0 153 7 66 0 154 7 66 0 156 7 66 0 158 7 66 0 159 7 66 0 160 7 66 0 161 7 66 0 162 7 66 0 163 7 66 0 164 7 66 0 165 7 66 0 166 7 66 0 167 7 66 0 168 7 66 0 169 7 66 0 170 7 66 0 171 7 66 2 126] 
#[1 7 70 0 1 7 70 0 2 7 70 0 5 7 70 0 6 7 70 0 8 7 70 0 9 7 70 0 10 7 70 0 12 7 70 0 13 7 70 0 15 7 70 0 16 7 70 0 17 7 70 0 23 7 70 0 25 7 70 0 26 7 70 0 29 7 70 0 31 7 70 0 33 7 70 0 35 7 70 0 36 7 70 0 38 7 70 0 39 7 70 0 44 7 70 0 45 7 70 0 46 7 70 0 47 7 70 0 48 7 70 0 49 7 70 0 50 7 70 0 51 7 70 0 52 7 70 0 53 7 70 0 55 7 70 0 56 7 70 0 58 7 70 0 59 7 70 0 60 7 70 0 61 7 70 0 62 7 70 0 63 7 70 0 64 7 70 0 65 7 70 0 66 7 70 0 67 7 70 0 69 7 70 0 73 7 70 0 76 7 70 0 77 7 70 0 78 7 70 0 79 7 70 0 80 7 70 0 82 7 70 0 83 7 70 0 84 7 70 0 87 7 70 0 90 7 70 0 91 7 70 0 92 7 70 0 93 7 70 0 94 7 70 0 95 7 70 0 97 7 70 0 99 7 70 0 100 7 70 0 101 7 70 0 103 7 70 0 114 7 70 0 116 7 70 0 117 7 70 0 119 7 70 0 121 7 70 0 122 7 70 0 123 7 70 0 124 7 70 0 125 7 70 0 127 7 70 0 128 7 70 0 129 7 70 0 130 7 70 0 131 7 70 0 133 7 70 0 134 7 70 0 135 7 70 0 136 7 70 0 138 7 70 0 139 7 70 0 140 7 70 0 141 7 70 0 143 7 70 0 145 7 70 0 146 7 70 0 147 7 70 0 148 7 70 0 149 2 135 0 150 7 70 0 152 7 70 0 153 7 70 0 154 7 70 0 156 7 70 0 158 7 70 0 159 7 70 0 160 7 70 0 161 7 70 0 162 7 70 0 163 7 70 0 164 7 70 0 165 7 70 0 166 7 70 0 167 7 70 0 168 7 70 0 169 7 70 0 170 7 70 0 171 7 70 2 126] 
#[0 7 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 78 0 1 7 78 0 2 7 78 0 5 2 139 0 6 7 78 0 8 7 78 0 9 7 78 0 10 7 78 0 12 7 78 0 13 7 78 0 15 7 78 0 16 7 78 0 17 7 78 0 23 7 78 0 25 7 78 0 26 7 78 0 29 7 78 0 31 7 78 0 33 7 78 0 35 7 78 0 36 7 78 0 38 7 78 0 39 7 78 0 44 7 78 0 45 7 78 0 46 7 78 0 47 7 78 0 48 7 78 0 49 7 78 0 50 7 78 0 51 7 78 0 52 7 78 0 53 7 78 0 55 7 78 0 56 7 78 0 58 7 78 0 59 7 78 0 60 7 78 0 61 7 78 0 62 7 78 0 63 7 78 0 64 7 78 0 65 7 78 0 66 7 78 0 67 7 78 0 69 7 78 0 73 7 78 0 76 7 78 0 77 7 78 0 78 7 78 0 79 7 78 0 80 7 78 0 82 7 78 0 83 7 78 0 84 7 78 0 87 7 78 0 90 7 78 0 91 7 78 0 92 7 78 0 93 7 78 0 94 7 78 0 95 7 78 0 97 7 78 0 99 7 78 0 100 7 78 0 101 7 78 0 103 7 78 0 114 7 78 0 116 7 78 0 117 7 78 0 119 7 78 0 121 7 78 0 122 7 78 0 123 7 78 0 124 7 78 0 125 7 78 0 127 7 78 0 128 7 78 0 129 7 78 0 130 7 78 0 131 7 78 0 133 7 78 0 134 7 78 0 135 7 78 0 136 7 78 0 138 7 78 0 139 7 78 0 140 7 78 0 141 7 78 0 143 7 78 0 145 7 78 0 146 7 78 0 147 7 78 0 148 7 78 0 149 7 78 0 150 7 78 0 152 7 78 0 153 7 78 0 154 7 78 0 156 7 78 0 158 7 78 0 159 7 78 0 160 7 78 0 161 7 78 0 162 7 78 0 163 7 78 0 164 7 78 0 165 7 78 0 166 7 78 0 167 7 78 0 168 7 78 0 169 7 78 0 170 7 78 0 171 7 78 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 15 45 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 15 45 1 75 15 45 1 76 15 45 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 15 45 1 92 3 209 1 93 15 45 1 112 15 45 1 115 15 45 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 15 49 0 23] 
#[0 15 53 0 23] 
#[0 7 82 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 98 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 15 57 0 158] 
#[0 15 61 0 30] 
#[1 15 65 0 15 7 102 0 80 7 102 0 83 7 102 0 92 7 102 0 93 7 102 0 103 7 102 0 119 7 102 0 146] 
#[0 7 106 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 7 110 0 15 15 69 0 45 15 73 0 63 7 110 0 80 7 110 0 83 7 110 0 92 7 110 0 93 7 110 0 103 7 110 0 119 7 110 0 146 15 77 1 105 15 81 1 106] 
#[0 7 114 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 15 85 1 75 15 85 1 76 15 85 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 15 85 1 92 3 209 1 93 15 85 1 112 15 85 1 115 15 85 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 15 89 1 75 15 89 1 76 15 89 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 15 89 1 92 3 209 1 93 15 89 1 112 15 89 1 115 15 89 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 7 118 0 1 7 118 0 2 7 118 0 5 7 118 0 6 7 118 0 8 7 118 0 9 7 118 0 10 7 118 0 12 7 118 0 13 7 118 0 15 7 118 0 16 7 118 0 17 7 118 0 23 7 118 0 25 7 118 0 26 7 118 0 29 7 118 0 31 7 118 0 33 7 118 0 35 7 118 0 36 7 118 0 38 7 118 0 39 7 118 0 44 7 118 0 45 7 118 0 46 7 118 0 47 7 118 0 48 7 118 0 49 7 118 0 50 7 118 0 51 7 118 0 52 7 118 0 53 7 118 0 55 7 118 0 56 7 118 0 58 7 118 0 59 7 118 0 60 7 118 0 61 7 118 0 62 7 118 0 63 7 118 0 64 7 118 0 65 7 118 0 66 7 118 0 67 7 118 0 69 7 118 0 73 7 118 0 76 7 118 0 77 7 118 0 78 7 118 0 79 7 118 0 80 7 118 0 82 7 118 0 83 7 118 0 84 7 118 0 87 2 143 0 90 7 118 0 91 7 118 0 92 7 118 0 93 7 118 0 94 7 118 0 95 7 118 0 97 7 118 0 99 7 118 0 100 7 118 0 101 7 118 0 103 7 118 0 114 7 118 0 116 7 118 0 117 7 118 0 119 7 118 0 121 7 118 0 122 7 118 0 123 7 118 0 124 7 118 0 125 7 118 0 127 7 118 0 128 7 118 0 129 7 118 0 130 7 118 0 131 7 118 0 133 7 118 0 134 7 118 0 135 7 118 0 136 7 118 0 138 7 118 0 139 7 118 0 140 7 118 0 141 7 118 0 143 7 118 0 145 7 118 0 146 7 118 0 147 7 118 0 148 7 118 0 149 7 118 0 150 7 118 0 152 7 118 0 153 7 118 0 154 7 118 0 156 7 118 0 158 7 118 0 159 7 118 0 160 7 118 0 161 7 118 0 162 7 118 0 163 7 118 0 164 7 118 0 165 7 118 0 166 7 118 0 167 7 118 0 168 7 118 0 169 7 118 0 170 7 118 0 171 15 97 1 110 15 101 1 111 7 118 2 126] 
#[0 7 122 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 126 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 130 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 15 105 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 15 105 1 75 15 105 1 76 15 105 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 15 105 1 92 3 209 1 93 15 105 1 112 15 105 1 115 15 105 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 15 109 0 25] 
#[0 15 113 0 25] 
#[1 15 117 0 138 7 134 0 158 15 117 2 102] 
#[0 15 121 0 124] 
#[1 15 125 0 138 7 138 0 158 15 125 2 102] 
#[1 15 129 0 72 3 102 0 158 15 133 2 98] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 15 137 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 15 137 0 211 1 189 0 212 15 137 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 15 141 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 15 141 0 211 1 189 0 212 15 141 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 0 186 0 8 0 186 0 49 0 186 0 52 0 186 0 55 0 186 0 60 0 186 0 65 0 186 0 66 0 186 0 77 0 186 0 87 0 186 0 95 0 186 0 100 12 249 0 108 5 201 0 113 0 186 0 117 0 186 0 121 0 186 0 125 3 174 0 126 0 186 0 134 0 186 0 135 0 186 0 139 0 186 0 143 0 186 0 158 12 249 2 97] 
#[1 15 145 0 8 1 6 0 10 1 6 0 20 6 49 0 24 6 53 0 26 1 6 0 35 0 111 0 37 0 111 0 128 0 111 0 158 9 61 0 222 9 61 0 252] 
#[1 15 149 0 128 15 153 0 158 1 141 0 193 15 161 0 195 1 141 0 196 15 161 0 213 15 165 1 228 15 169 1 229 15 173 1 236] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 15 177 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 15 177 0 211 1 189 0 212 15 177 0 214 1 197 0 215 3 13 1 208 15 181 1 235 15 185 2 13 3 29 2 104 3 53 2 124] 
#[1 15 189 0 32 15 193 0 149 15 197 2 14] 
#[1 15 201 0 25 15 205 0 32 1 93 0 149 15 209 1 121 15 213 2 29] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 12 253 0 57 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 13 1 0 88 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 13 5 0 126 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 15 217 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 15 217 0 211 1 189 0 212 15 217 0 214 1 197 0 215 3 13 1 208 15 217 1 234 3 29 2 104 7 13 2 124] 
#[0 15 221 0 102] 
#[0 15 225 0 102] 
#[0 15 229 0 102] 
#[1 15 233 0 25 15 237 0 32 1 93 0 149 15 241 1 121 15 245 2 24] 
#[0 7 142 0 25 0 32 0 149] 
#[0 7 146 0 25 0 32 0 149] 
#[0 7 150 0 25 0 32 0 149] 
#[0 7 154 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 15 249 0 8] 
#[0 15 253 0 158] 
#[0 16 1 0 153] 
#[1 16 5 0 124 5 78 0 153] 
#[1 16 9 0 72 3 102 0 158 16 13 2 98] 
#[0 16 17 0 153] 
#[0 7 158 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 16 21 0 25] 
#[1 5 221 0 158 16 25 0 193 16 25 0 196] 
#[0 7 162 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 7 166 0 23] 
#[1 5 221 0 158 1 141 0 193 8 189 0 195 1 141 0 196 16 29 2 82 8 185 2 83 8 189 2 84] 
#[0 16 33 0 23] 
#[0 7 170 2 126] 
#[1 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 72 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 10 0 142 0 10 0 144 7 174 0 156 16 37 0 177 16 37 0 191 16 37 0 192 16 37 1 203 16 37 2 33 16 37 2 44 16 37 2 59 16 37 2 67 0 89 2 75 0 93 2 76 0 97 2 77 0 101 2 78 7 174 2 126] 
#[0 7 178 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 7 182 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[1 16 41 0 38 5 221 0 158 1 141 0 193 8 189 0 195 1 141 0 196 16 45 2 83 8 189 2 84] 
#[0 7 186 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 7 190 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 2 147 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 16 53 0 236 10 201 0 237 16 57 2 87 16 61 2 88 16 65 2 89 16 69 2 90 16 73 2 91] 
#[0 7 194 0 15 0 38] 
#[0 7 198 0 15 0 38] 
#[0 7 202 0 20 0 149] 
#[1 0 30 0 37 0 30 0 41 0 30 0 46 0 30 0 57 0 30 0 62 0 30 0 68 0 30 0 72 0 30 0 88 0 30 0 89 0 30 0 98 0 30 0 99 0 30 0 105 0 30 0 108 0 30 0 109 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 118 0 30 0 124 0 30 0 126 0 30 0 138 4 45 0 140 0 30 0 142 0 30 0 144 0 30 0 156 16 77 0 183 4 53 0 184 4 57 0 185 4 57 0 186 4 57 0 187 4 57 0 188] 
#[0 7 206 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 7 210 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 16 81 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 16 81 0 211 1 189 0 212 16 81 0 214 1 197 0 215 3 13 1 208 16 81 1 235 3 29 2 104 3 53 2 124] 
#[1 16 85 0 158 16 89 2 68] 
#[1 16 93 0 23 7 214 0 149 16 97 2 60 16 101 2 61] 
#[0 16 105 0 126] 
#[0 16 109 0 158] 
#[0 16 113 0 158] 
#[0 16 117 0 158] 
#[0 7 218 0 9 0 15] 
#[0 7 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 226 0 9 0 15] 
#[0 7 230 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 234 0 9 0 15] 
#[0 7 238 0 9 0 15] 
#[0 3 194 0 9 0 15] 
#[0 7 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 246 0 9 0 15] 
#[0 7 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 16 121 1 75 16 121 1 76 16 121 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 16 121 1 92 3 209 1 93 16 121 1 112 16 121 1 115 16 121 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 8 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 16 125 1 75 16 125 1 76 16 125 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 16 125 1 92 3 209 1 93 16 125 1 112 16 125 1 115 16 125 1 116 16 125 1 117 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 9 65 0 158 16 129 1 156] 
#[0 8 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 16 133 1 75 16 133 1 76 16 133 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 16 133 1 92 3 209 1 93 16 133 1 112 16 133 1 115 16 133 1 116 16 133 1 118 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 16 137 0 30] 
#[1 16 141 0 9 16 145 0 15] 
#[0 8 14 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 8 18 0 25 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 16 153 1 75 16 153 1 76 16 153 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 16 153 1 92 3 209 1 93 16 153 1 112 16 153 1 115 16 153 1 116 16 153 1 118 3 225 1 151 3 229 1 152 16 153 1 175 16 153 1 176 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 16 161 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 16 161 1 112 4 209 1 152 16 161 1 158 1 205 2 93 3 21 2 94 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110] 
#[0 16 165 0 158] 
#[0 16 169 0 86] 
#[0 8 22 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 16 173 1 120 16 173 1 121 16 173 1 124 4 209 1 152 16 173 1 157 2 185 1 158 16 173 1 159 16 173 1 160 16 173 1 161 16 173 1 169 16 173 1 170 16 173 1 171 16 173 1 172 16 173 1 180 16 173 1 181 16 173 1 182 16 173 1 183 16 173 1 184 16 173 1 185 16 173 1 186 16 173 1 187 16 173 1 197 16 173 1 198 16 173 1 199 16 173 1 200 16 173 1 202 1 205 2 93 3 21 2 94 16 173 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 16 173 2 111] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 16 177 1 120 16 177 1 121 16 177 1 124 4 209 1 152 16 177 1 157 2 185 1 158 16 177 1 159 16 177 1 160 16 177 1 161 16 177 1 169 16 177 1 170 16 177 1 171 16 177 1 172 16 177 1 180 16 177 1 181 16 177 1 182 16 177 1 183 16 177 1 184 16 177 1 185 16 177 1 186 16 177 1 187 16 177 1 197 16 177 1 198 16 177 1 199 16 177 1 200 16 177 1 202 1 205 2 93 3 21 2 94 16 177 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 16 177 2 111] 
#[0 8 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 8 30 0 9 16 181 0 20 16 185 1 49] 
#[0 8 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 38 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 16 189 1 75 16 189 1 76 16 189 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 16 189 1 92 3 209 1 93 16 189 1 112 16 189 1 115 16 189 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 16 193 0 20] 
#[0 8 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 9 201 0 8 0 141 0 46 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 16 197 0 156 9 205 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 9 209 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 9 213 0 251 1 205 0 253 1 205 0 254 1 205 1 2 9 217 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 9 221 1 15 1 205 1 16 1 205 1 17 1 205 1 18 9 209 1 30 1 205 1 31 1 205 1 32 16 201 1 36 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 53 9 237 1 56 1 205 1 58 1 205 1 78 4 209 1 152 1 205 2 93 3 21 2 94 1 205 2 108 1 205 2 110] 
#[0 16 205 0 9] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 16 209 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 16 213 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 9 49 1 75 9 49 1 76 9 49 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 9 49 1 92 3 209 1 93 9 49 1 112 9 49 1 115 9 49 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 1 6 0 2 1 6 0 3 1 6 0 5 1 6 0 6 1 6 0 8 1 6 0 10 1 6 0 12 1 6 0 13 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 19 1 6 0 20 1 6 0 21 6 49 0 24 1 127 0 26 1 6 0 27 1 6 0 29 8 46 0 30 1 6 0 31 2 214 0 32 1 6 0 33 1 6 0 35 1 6 0 36 0 111 0 37 1 6 0 39 1 6 0 44 1 6 0 91 1 6 0 150 1 6 0 152 1 6 0 154 1 6 0 155 1 6 0 156 0 111 0 158 6 61 0 222 6 61 0 252] 
#[0 16 217 0 156] 
#[1 16 221 0 15 8 50 0 156] 
#[0 8 54 0 15 0 156] 
#[0 16 225 0 30] 
#[1 16 229 0 15 16 233 0 156] 
#[0 8 58 0 15 0 156] 
#[0 8 62 0 15 0 156] 
#[0 8 66 0 15 0 25 0 156] 
#[0 8 70 0 15 0 156] 
#[0 8 74 0 15 0 25 0 156] 
#[0 16 237 0 156] 
#[1 16 241 0 15 8 78 0 156] 
#[1 13 53 0 15 16 245 0 38] 
#[0 16 249 0 9] 
#[0 8 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 16 253 0 38] 
#[1 17 1 0 149 17 5 1 162] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 17 9 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 17 9 0 211 1 189 0 212 17 9 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 17 13 0 8] 
#[1 13 241 0 145 8 86 0 149 17 17 1 193 17 17 1 194] 
#[1 1 93 0 149 17 25 1 121] 
#[0 8 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 13 237 0 8 13 241 0 145 1 93 0 149 17 29 1 121 13 245 1 192 13 249 1 194] 
#[0 8 102 0 54] 
#[0 8 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 17 33 0 158] 
#[1 5 29 0 8 17 37 0 15 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 8 110 0 154 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 10 157 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 10 157 0 211 1 189 0 212 10 157 0 214 1 197 0 215 10 153 0 223 10 157 0 224 17 41 1 41 17 45 1 42 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 8 114 0 9 0 20] 
#[0 8 118 0 9 0 20] 
#[0 8 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 17 49 0 158] 
#[0 8 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 17 53 1 120 17 53 1 121 17 53 1 124 4 209 1 152 17 53 1 157 2 185 1 158 17 53 1 159 17 53 1 160 17 53 1 161 17 53 1 169 17 53 1 170 17 53 1 171 17 53 1 172 17 53 1 180 17 53 1 181 17 53 1 182 17 53 1 183 17 53 1 184 17 53 1 185 17 53 1 186 17 53 1 187 17 53 1 197 17 53 1 198 17 53 1 199 17 53 1 200 17 53 1 202 1 205 2 93 3 21 2 94 17 53 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 17 53 2 111] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 17 57 1 120 17 57 1 121 17 57 1 124 4 209 1 152 17 57 1 157 2 185 1 158 17 57 1 159 17 57 1 160 17 57 1 161 17 57 1 169 17 57 1 170 17 57 1 171 17 57 1 172 17 57 1 180 17 57 1 181 17 57 1 182 17 57 1 183 17 57 1 184 17 57 1 185 17 57 1 186 17 57 1 187 17 57 1 197 17 57 1 198 17 57 1 199 17 57 1 200 17 57 1 202 1 205 2 93 3 21 2 94 17 57 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 17 57 2 111] 
#[0 8 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 142 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 17 61 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 17 61 0 211 1 189 0 212 17 61 0 214 1 197 0 215 17 61 0 224 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 8 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 150 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 10 5 0 149 1 97 0 153 6 70 0 156 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 65 1 75 17 65 1 76 17 65 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 65 1 92 3 209 1 93 17 65 1 112 17 65 1 115 17 65 1 116 3 225 1 151 3 229 1 152 3 13 1 208 13 201 1 230 13 201 2 41 13 209 2 42 13 213 2 43 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 17 69 2 120 17 73 2 123 3 53 2 124] 
#[0 8 154 0 9 0 15 0 25] 
#[0 8 158 0 9 0 15 0 25] 
#[0 8 162 0 9 0 15 0 25] 
#[0 8 166 0 9 0 15 0 25] 
#[1 6 69 0 158 17 77 1 146] 
#[0 8 170 0 9 0 15 0 25] 
#[0 8 174 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 86 0 87 0 95 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 8 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 17 81 0 235 10 197 0 236 10 201 0 237] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 17 85 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 85 1 75 17 85 1 76 17 85 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 85 1 92 3 209 1 93 17 85 1 112 17 85 1 115 17 85 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 17 89 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 89 1 75 17 89 1 76 17 89 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 89 1 92 3 209 1 93 17 89 1 112 17 89 1 115 17 89 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 17 93 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 93 1 75 17 93 1 76 17 93 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 93 1 92 3 209 1 93 17 93 1 112 17 93 1 115 17 93 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 8 182 0 9 0 15 0 38] 
#[0 8 186 0 9 0 15 0 38] 
#[0 8 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 17 97 0 222 17 97 0 252 1 6 2 126] 
#[1 13 53 0 15 17 101 0 38] 
#[0 8 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 17 105 0 245 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 233 1 75 10 233 1 76 10 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 233 1 92 3 209 1 93 10 233 1 112 10 233 1 115 10 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 109 1 75 17 109 1 76 17 109 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 109 1 92 3 209 1 93 17 109 1 112 17 109 1 115 17 109 1 116 17 109 1 117 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 8 206 0 164 0 165 0 168 0 169] 
#[0 17 113 0 23] 
#[0 8 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 17 117 0 245 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 10 233 1 75 10 233 1 76 10 233 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 10 233 1 92 3 209 1 93 10 233 1 112 10 233 1 115 10 233 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 8 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 222 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 226 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 17 121 0 25] 
#[0 8 230 0 32 0 149] 
#[0 8 234 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 17 125 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 158 17 149 1 207 17 153 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 17 157 0 8] 
#[0 17 161 0 114] 
#[1 8 246 0 9 17 165 0 15 8 246 0 25 17 169 1 149] 
#[1 7 29 0 8 11 57 0 158 17 173 1 3 17 173 1 6] 
#[0 8 250 0 9 0 15] 
#[1 17 177 0 9 14 245 0 15 17 181 1 4] 
#[0 8 254 0 9 0 25] 
#[0 9 2 0 9 0 15] 
#[0 9 6 0 9 0 15] 
#[0 9 10 0 9 0 15] 
#[0 9 14 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 185 1 75 17 185 1 76 17 185 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 185 1 92 3 209 1 93 17 185 1 112 17 185 1 115 17 185 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 9 18 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 22 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 30 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 11 213 0 114 17 189 1 91] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 193 1 75 17 193 1 76 17 193 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 193 1 92 3 209 1 93 17 193 1 112 17 193 1 115 17 193 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 17 197 0 86] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 201 1 75 17 201 1 76 17 201 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 201 1 92 3 209 1 93 17 201 1 112 17 201 1 115 17 201 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 12 5 1 75 12 5 1 76 12 5 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 12 5 1 92 3 209 1 93 17 205 1 104 12 5 1 112 12 5 1 115 12 5 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 9 42 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 9 46 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 9 50 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 9 54 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 17 209 0 51] 
#[0 9 58 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 17 213 0 158] 
#[0 9 62 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 17 217 0 25] 
#[0 9 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 78 0 158] 
#[0 9 82 0 158] 
#[0 9 86 0 158] 
#[0 2 151 0 158] 
#[0 9 94 0 158] 
#[1 17 221 0 158 17 225 1 225 17 229 1 226] 
#[1 15 153 0 158 1 141 0 193 17 233 0 195 1 141 0 196 17 233 0 213 17 237 1 228 15 169 1 229 17 241 1 236] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 17 245 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 17 249 0 37] 
#[1 9 98 0 15 1 6 0 20 6 49 0 24 9 98 0 25 6 53 0 26 17 253 0 30 9 102 0 32 9 102 0 149 9 61 0 222 9 61 0 252] 
#[0 9 106 0 15 0 20 0 25 0 32 0 146 0 149] 
#[0 18 1 0 20] 
#[1 18 5 0 15 18 9 0 25] 
#[0 9 110 0 15 0 25] 
#[1 18 13 0 32 18 17 0 149 18 21 1 250] 
#[1 15 149 0 128 2 155 0 158 1 141 0 193 15 161 0 195 1 141 0 196 15 161 0 213 18 29 1 236] 
#[1 18 25 0 158 1 141 0 193 17 233 0 195 1 141 0 196 17 233 0 213 18 33 1 236] 
#[1 18 37 0 32 18 41 0 149 18 45 2 15] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 18 49 1 75 18 49 1 76 18 49 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 18 49 1 92 3 209 1 93 18 49 1 112 18 49 1 115 18 49 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 18 53 1 254 18 57 2 0 18 61 2 2 18 65 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 9 114 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 118 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 18 69 1 75 18 69 1 76 18 69 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 18 69 1 92 3 209 1 93 18 69 1 112 18 69 1 115 18 69 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 9 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 18 25 0 158 1 141 0 193 17 233 0 195 1 141 0 196 17 233 0 213 18 73 1 236] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 77 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 77 0 211 1 189 0 212 18 77 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 18 81 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 18 81 0 211 1 189 0 212 18 81 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 18 173 0 1 18 177 0 2 18 177 0 3 18 177 0 5 18 177 0 10 18 105 0 12 18 173 0 13 18 113 0 16 18 173 0 17 18 177 0 21 18 177 0 26 18 177 0 27 18 177 0 29 18 177 0 31 18 177 0 33 18 177 0 39 18 173 0 73 18 173 0 130 18 177 0 150 18 173 0 153 18 177 0 154 18 177 0 155 18 173 2 20 18 177 2 22] 
#[0 9 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 18 181 1 75 18 181 1 76 18 181 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 18 181 1 92 3 209 1 93 18 181 1 112 18 181 1 115 18 181 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 9 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 138 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 18 185 0 9] 
#[0 18 189 0 8] 
#[0 18 193 0 158] 
#[0 9 142 0 158] 
#[0 2 159 0 158] 
#[0 9 150 0 158] 
#[0 18 197 0 158] 
#[0 9 154 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[1 6 65 0 20 18 201 0 25] 
#[1 18 205 0 15 18 209 0 38] 
#[0 9 158 0 158] 
#[0 9 162 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 9 166 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[0 9 170 0 15 0 38] 
#[1 14 113 0 23 18 213 0 30] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 18 221 1 75 18 221 1 76 18 221 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 18 221 1 92 3 209 1 93 18 221 1 112 18 221 1 115 18 221 1 116 3 225 1 151 3 229 1 152 3 13 1 208 18 221 2 92 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 18 225 0 9] 
#[1 9 174 0 9 18 229 0 15] 
#[0 9 178 0 9 0 15] 
#[1 18 233 0 9 18 237 0 15] 
#[0 9 182 0 9 0 15] 
#[1 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 72 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 10 0 142 0 10 0 144 5 142 0 156 12 193 0 177 18 241 0 189 12 189 0 190 12 193 0 191 12 193 0 192 12 193 1 203 12 193 2 33 12 193 2 44 12 193 2 59 12 193 2 67 0 89 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 16 85 0 158 18 245 2 68] 
#[1 18 249 0 8 18 253 0 26 19 1 2 46] 
#[0 9 186 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 19 9 0 52 19 9 0 55 19 9 0 87 19 9 0 95 19 9 0 117 19 9 0 121 19 9 0 134 19 9 0 135 19 9 0 139 5 221 0 158 1 141 0 193 19 13 0 195 1 141 0 196 19 9 0 208 19 13 2 62] 
#[1 19 17 0 149 19 21 2 63] 
#[0 9 190 0 149] 
#[0 19 25 0 158] 
#[1 9 194 0 23 14 229 0 26 9 194 0 146 9 194 0 149 19 29 1 205 19 29 1 206] 
#[1 9 198 0 23 18 253 0 26 9 198 0 146 9 198 0 149 19 37 2 45 19 37 2 46] 
#[1 9 194 0 23 14 229 0 26 9 194 0 146 9 194 0 149 19 45 1 205 19 45 1 206] 
#[0 9 202 0 15 0 38 0 156] 
#[0 9 206 0 15 0 25] 
#[0 9 210 0 15 0 25] 
#[0 19 49 0 9] 
#[1 0 105 0 1 19 53 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 19 57 1 75 19 57 1 76 19 57 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 19 57 1 92 3 209 1 93 19 57 1 112 19 57 1 115 19 57 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 19 61 2 114 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 19 65 1 120 19 65 1 121 19 65 1 124 4 209 1 152 19 65 1 157 2 185 1 158 19 65 1 159 19 65 1 160 19 65 1 161 19 65 1 169 19 65 1 170 19 65 1 171 19 65 1 172 19 65 1 180 19 65 1 181 19 65 1 182 19 65 1 183 19 65 1 184 19 65 1 185 19 65 1 186 19 65 1 187 19 65 1 197 19 65 1 198 19 65 1 199 19 65 1 200 19 65 1 202 1 205 2 93 3 21 2 94 19 65 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 19 65 2 111] 
#[1 13 81 0 158 19 69 2 113] 
#[0 9 214 0 25] 
#[0 19 73 0 25] 
#[0 9 218 0 25] 
#[0 9 222 0 9 0 15 0 25] 
#[0 19 77 0 86] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 19 81 1 75 19 81 1 76 19 81 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 19 81 1 92 3 209 1 93 19 81 1 112 19 81 1 115 19 81 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 9 226 0 1 9 226 0 5 9 226 0 8 9 226 0 10 9 226 0 12 9 226 0 13 9 226 0 16 9 226 0 17 9 226 0 25 9 226 0 46 9 226 0 47 9 226 0 48 9 226 0 49 9 226 0 50 9 226 0 52 9 226 0 53 9 226 0 55 9 226 0 56 9 226 0 58 9 226 0 59 9 226 0 60 9 226 0 61 9 226 0 62 9 226 0 64 9 226 0 65 9 226 0 66 2 163 0 67 9 226 0 73 9 226 0 76 9 226 0 77 9 226 0 78 9 226 0 79 9 226 0 82 9 226 0 84 9 226 0 87 9 226 0 94 9 226 0 95 9 226 0 97 9 226 0 99 9 226 0 100 9 226 0 114 9 226 0 116 9 226 0 117 9 226 0 121 9 226 0 122 9 226 0 123 9 226 0 124 9 226 0 125 9 226 0 127 9 226 0 128 9 226 0 129 9 226 0 130 9 226 0 131 9 226 0 133 9 226 0 134 9 226 0 135 9 226 0 136 9 226 0 138 9 226 0 139 9 226 0 140 9 226 0 141 9 226 0 143 9 226 0 147 9 226 0 148 9 226 0 149 9 226 0 153 9 226 0 156 9 226 0 158 9 226 0 159 9 226 0 160 9 226 0 161 9 226 0 162 9 226 0 163 9 226 0 166 9 226 0 167 9 226 0 170 9 226 0 171 9 226 2 126] 
#[0 9 230 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 19 89 0 158] 
#[0 9 234 0 9 0 20] 
#[0 9 238 0 15 0 156] 
#[0 19 93 0 158] 
#[0 9 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 246 0 15 0 156] 
#[1 9 250 0 1 9 250 0 2 9 250 0 3 9 250 0 4 9 250 0 5 9 250 0 6 9 250 0 7 9 250 0 8 9 250 0 9 9 250 0 10 9 250 0 11 9 250 0 12 9 250 0 13 9 250 0 14 9 250 0 15 9 250 0 16 9 250 0 17 9 250 0 18 9 250 0 19 9 250 0 20 9 250 0 21 9 250 0 22 9 250 0 23 9 250 0 25 9 250 0 26 9 250 0 27 9 250 0 28 9 250 0 29 9 250 0 30 9 250 0 31 9 250 0 33 9 250 0 34 9 250 0 35 9 250 0 36 9 250 0 37 9 250 0 38 9 250 0 39 9 250 0 40 9 250 0 44 9 250 0 45 9 250 0 46 9 250 0 47 9 250 0 48 9 250 0 49 9 250 0 50 9 250 0 51 9 250 0 52 9 250 0 53 9 250 0 55 9 250 0 56 9 250 0 58 9 250 0 59 9 250 0 60 9 250 0 61 9 250 0 62 9 250 0 63 9 250 0 64 9 250 0 65 9 250 0 66 9 250 0 67 9 250 0 69 9 250 0 73 9 250 0 76 9 250 0 77 9 250 0 78 9 250 0 79 9 250 0 80 9 250 0 82 9 250 0 83 9 250 0 84 9 250 0 87 9 250 0 90 9 250 0 91 9 250 0 92 9 250 0 93 9 250 0 94 9 250 0 95 9 250 0 97 9 250 0 99 9 250 0 100 9 250 0 101 9 250 0 103 9 250 0 114 9 250 0 116 9 250 0 117 9 250 0 119 9 250 0 121 9 250 0 122 9 250 0 123 9 250 0 124 9 250 0 125 9 250 0 127 9 250 0 128 9 250 0 129 9 250 0 130 9 250 0 131 9 250 0 133 9 250 0 134 9 250 0 135 9 250 0 136 9 250 0 138 9 250 0 139 9 250 0 140 9 250 0 141 9 250 0 143 9 250 0 145 9 250 0 146 9 250 0 147 9 250 0 148 2 167 0 149 9 250 0 150 9 250 0 151 9 250 0 152 9 250 0 153 9 250 0 154 9 250 0 155 9 250 0 156 9 250 0 158 9 250 0 159 9 250 0 160 9 250 0 161 9 250 0 162 9 250 0 163 9 250 0 164 9 250 0 165 9 250 0 166 9 250 0 167 9 250 0 168 9 250 0 169 9 250 0 170 9 250 0 171 19 97 1 19 19 97 1 20 19 97 1 21 19 97 1 27 9 250 2 126] 
#[1 14 121 0 15 19 105 0 38] 
#[1 13 53 0 15 19 109 0 156] 
#[0 9 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 13 157 0 37 19 113 0 156 19 117 0 158 19 121 1 24 13 181 1 25] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 9 245 0 149 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 19 129 1 20 19 129 1 21 19 129 1 26 19 129 1 27 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 19 129 1 75 19 129 1 76 19 129 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 19 129 1 92 3 209 1 93 19 129 1 112 19 129 1 115 19 129 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 13 161 0 149 1 97 0 153 19 137 0 156 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 19 141 1 29 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 129 1 52 1 205 1 53 1 205 1 58 3 129 1 59 3 129 1 60 3 129 1 61 3 129 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 13 193 1 75 13 193 1 76 13 193 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 13 193 1 92 3 209 1 93 13 193 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 129 2 107 1 205 2 108 3 129 2 109 1 205 2 110 3 53 2 124] 
#[0 10 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 10 5 0 149 1 97 0 153 19 145 0 156 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 19 149 1 75 19 149 1 76 19 149 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 19 149 1 92 3 209 1 93 19 149 1 112 19 149 1 115 19 149 1 116 3 225 1 151 3 229 1 152 3 13 1 208 19 149 1 230 19 149 2 41 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 10 10 0 1 10 10 0 2 10 10 0 3 10 10 0 4 10 10 0 5 10 10 0 6 10 10 0 7 10 10 0 8 10 10 0 9 10 10 0 10 10 10 0 11 10 10 0 12 10 10 0 13 10 10 0 14 10 10 0 15 10 10 0 16 10 10 0 17 10 10 0 18 10 10 0 19 10 10 0 20 10 10 0 21 10 10 0 22 10 10 0 23 10 10 0 25 10 10 0 26 10 10 0 27 10 10 0 28 10 10 0 29 10 10 0 30 10 10 0 31 10 10 0 33 10 10 0 34 10 10 0 35 10 10 0 36 5 165 0 37 10 10 0 38 10 10 0 39 10 10 0 40 10 10 0 44 10 10 0 45 10 10 0 46 10 10 0 47 10 10 0 48 10 10 0 49 10 10 0 50 10 10 0 51 10 10 0 52 10 10 0 53 10 10 0 55 10 10 0 56 10 10 0 58 10 10 0 59 10 10 0 60 10 10 0 61 10 10 0 62 10 10 0 63 10 10 0 64 10 10 0 65 10 10 0 66 10 10 0 67 10 10 0 69 10 10 0 73 10 10 0 76 10 10 0 77 10 10 0 78 10 10 0 79 10 10 0 80 10 10 0 82 10 10 0 83 10 10 0 84 10 10 0 87 10 10 0 90 10 10 0 91 10 10 0 92 10 10 0 93 10 10 0 94 10 10 0 95 10 10 0 97 10 10 0 99 10 10 0 100 10 10 0 101 10 10 0 103 10 10 0 114 10 10 0 116 10 10 0 117 10 10 0 119 10 10 0 121 10 10 0 122 10 10 0 123 10 10 0 124 10 10 0 125 10 10 0 127 10 10 0 128 10 10 0 129 10 10 0 130 10 10 0 131 10 10 0 133 10 10 0 134 10 10 0 135 10 10 0 136 10 10 0 138 10 10 0 139 10 10 0 140 10 10 0 141 10 10 0 143 10 10 0 145 10 10 0 146 10 10 0 147 10 10 0 148 10 10 0 149 10 10 0 150 10 10 0 151 10 10 0 152 10 10 0 153 10 10 0 154 10 10 0 155 10 10 0 156 10 10 0 158 10 10 0 159 10 10 0 160 10 10 0 161 10 10 0 162 10 10 0 163 10 10 0 164 10 10 0 165 10 10 0 166 10 10 0 167 10 10 0 168 10 10 0 169 10 10 0 170 10 10 0 171 19 153 0 216 19 157 0 217 6 97 0 218 10 10 2 126] 
#[0 10 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 10 18 0 1 10 18 0 2 10 18 0 3 10 18 0 4 10 18 0 5 10 18 0 6 10 18 0 7 10 18 0 8 10 18 0 9 10 18 0 10 10 18 0 11 10 18 0 12 10 18 0 13 10 18 0 14 10 18 0 15 10 18 0 16 10 18 0 17 10 18 0 18 10 18 0 19 10 18 0 20 10 18 0 21 10 18 0 22 10 18 0 23 10 18 0 25 10 18 0 26 10 18 0 27 10 18 0 28 10 18 0 29 10 18 0 30 10 18 0 31 10 18 0 33 10 18 0 34 10 18 0 35 10 18 0 36 10 18 0 37 10 18 0 38 10 18 0 39 10 18 0 40 10 18 0 44 10 18 0 45 10 18 0 46 10 18 0 47 10 18 0 48 10 18 0 49 10 18 0 50 10 18 0 51 10 18 0 52 10 18 0 53 10 18 0 55 10 18 0 56 10 18 0 58 10 18 0 59 10 18 0 60 10 18 0 61 10 18 0 62 10 18 0 63 10 18 0 64 10 18 0 65 10 18 0 66 10 18 0 67 10 18 0 69 10 18 0 73 10 18 0 76 10 18 0 77 10 18 0 78 10 18 0 79 10 18 0 80 10 18 0 82 10 18 0 83 10 18 0 84 10 18 0 87 10 18 0 90 10 18 0 91 10 18 0 92 10 18 0 93 10 18 0 94 10 18 0 95 10 18 0 97 10 18 0 99 10 18 0 100 10 18 0 101 10 18 0 103 10 18 0 114 10 18 0 116 10 18 0 117 10 18 0 119 10 18 0 121 10 18 0 122 10 18 0 123 10 18 0 124 10 18 0 125 10 18 0 127 10 18 0 128 10 18 0 129 10 18 0 130 10 18 0 131 10 18 0 133 10 18 0 134 10 18 0 135 10 18 0 136 10 18 0 138 10 18 0 139 10 18 0 140 10 18 0 141 10 18 0 143 10 18 0 145 10 18 0 146 10 18 0 147 10 18 0 148 2 171 0 149 10 18 0 150 10 18 0 151 10 18 0 152 10 18 0 153 10 18 0 154 10 18 0 155 10 18 0 156 10 18 0 158 10 18 0 159 10 18 0 160 10 18 0 161 10 18 0 162 10 18 0 163 10 18 0 164 10 18 0 165 10 18 0 166 10 18 0 167 10 18 0 168 10 18 0 169 10 18 0 170 10 18 0 171 19 165 2 119 10 18 2 126] 
#[1 19 169 0 53 19 173 0 61 10 22 0 156 19 177 1 163 19 181 1 164 19 185 1 165 19 189 1 166 19 193 1 167] 
#[0 10 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 10 30 0 9 19 201 0 158 19 201 2 99] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 19 205 1 75 19 205 1 76 19 205 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 19 205 1 92 3 209 1 93 19 205 1 112 19 205 1 115 19 205 1 116 19 205 1 118 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 1 93 0 149 19 209 1 121] 
#[0 10 34 0 149] 
#[0 10 38 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 10 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 2 27 0 9 1 6 0 10 2 27 0 20 14 25 0 26 1 6 0 35 1 6 0 37 14 69 0 222 14 69 0 252 19 213 1 39 14 33 1 40] 
#[0 10 46 0 15 0 154] 
#[0 19 217 0 154] 
#[1 19 221 0 15 10 50 0 154] 
#[1 6 114 0 9 6 114 0 20 19 225 0 26 19 229 1 39 14 33 1 40] 
#[0 10 54 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 10 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 10 62 0 15 0 154] 
#[0 2 175 0 15 0 156] 
#[0 19 233 0 156] 
#[1 10 70 0 15 10 70 0 156 19 237 2 122] 
#[0 10 74 0 9 0 15 0 25] 
#[0 10 78 0 9 0 15 0 38] 
#[0 10 82 0 9 0 15 0 38] 
#[0 10 86 0 9 0 15 0 38] 
#[0 10 90 0 9 0 15 0 38] 
#[1 10 94 0 1 10 94 0 2 10 94 0 3 10 94 0 4 10 94 0 5 10 94 0 6 10 94 0 7 10 94 0 8 10 94 0 9 10 94 0 10 10 94 0 11 10 94 0 12 10 94 0 13 10 94 0 14 10 94 0 15 10 94 0 16 10 94 0 17 10 94 0 18 10 94 0 19 10 94 0 20 10 94 0 21 10 94 0 22 10 94 0 23 10 94 0 25 10 94 0 26 10 94 0 27 10 94 0 28 10 94 0 29 10 94 0 30 10 94 0 31 10 94 0 33 10 94 0 34 10 94 0 35 10 94 0 36 10 94 0 37 10 94 0 38 10 94 0 39 10 94 0 40 10 94 0 44 10 94 0 45 10 94 0 46 10 94 0 47 10 94 0 48 10 94 0 49 10 94 0 50 10 94 0 51 10 94 0 52 10 94 0 53 10 94 0 55 10 94 0 56 10 94 0 58 10 94 0 59 10 94 0 60 10 94 0 61 10 94 0 62 10 94 0 63 10 94 0 64 10 94 0 65 10 94 0 66 10 94 0 67 10 94 0 69 10 94 0 73 10 94 0 76 10 94 0 77 10 94 0 78 10 94 0 79 10 94 0 80 10 94 0 82 10 94 0 83 10 94 0 84 10 94 0 87 10 94 0 90 10 94 0 91 10 94 0 92 10 94 0 93 10 94 0 94 10 94 0 95 10 94 0 97 10 94 0 99 10 94 0 100 10 94 0 101 10 94 0 103 10 94 0 114 10 94 0 116 10 94 0 117 10 94 0 119 10 94 0 121 10 94 0 122 10 94 0 123 10 94 0 124 10 94 0 125 10 94 0 127 10 94 0 128 10 94 0 129 10 94 0 130 10 94 0 131 10 94 0 133 10 94 0 134 10 94 0 135 10 94 0 136 10 94 0 138 10 94 0 139 10 94 0 140 10 94 0 141 10 94 0 143 10 94 0 145 10 94 0 146 10 94 0 147 10 94 0 148 10 94 0 149 10 94 0 150 10 94 0 151 10 94 0 152 10 94 0 153 10 94 0 154 10 94 0 155 10 94 0 156 10 94 0 158 10 94 0 159 10 94 0 160 10 94 0 161 10 94 0 162 10 94 0 163 10 94 0 164 10 94 0 165 10 94 0 166 10 94 0 167 10 94 0 168 10 94 0 169 10 94 0 170 10 94 0 171 19 241 1 54 10 94 2 126] 
#[0 10 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 102 0 164 0 165] 
#[1 6 178 0 23 10 106 0 164 10 106 0 165 10 106 0 168 10 106 0 169 19 245 0 246 14 181 0 247] 
#[0 10 110 0 164 0 165 0 168 0 169] 
#[0 10 114 0 168 0 169] 
#[0 10 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 19 249 0 9] 
#[0 10 122 0 9] 
#[1 10 126 0 9 19 253 0 15 10 126 0 38] 
#[0 10 130 0 9 0 15 0 38] 
#[0 10 134 0 9 0 38] 
#[1 10 138 0 8 10 138 0 49 10 138 0 52 10 138 0 55 10 138 0 60 10 138 0 65 10 138 0 66 10 138 0 77 20 21 0 86 10 138 0 87 10 138 0 95 10 138 0 100 20 21 0 104 20 9 0 107 20 21 0 114 10 138 0 117 10 138 0 121 10 138 0 125 20 21 0 128 10 138 0 134 10 138 0 135 10 138 0 139 10 138 0 143 10 138 0 158 20 21 1 245 20 21 1 246 20 21 1 247] 
#[1 20 33 0 15 20 37 0 154] 
#[1 20 41 0 158 20 45 1 208] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 20 49 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 20 53 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 20 53 1 75 20 53 1 76 20 53 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 20 53 1 92 3 209 1 93 20 53 1 112 20 53 1 115 20 53 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 11 41 0 158 20 57 1 139] 
#[0 10 142 0 9 0 15 0 25] 
#[0 10 146 0 9 0 15] 
#[0 10 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 154 0 9 0 15] 
#[0 10 158 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 10 162 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 166 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 20 61 1 75 20 61 1 76 20 61 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 20 61 1 92 3 209 1 93 20 61 1 112 20 61 1 115 20 61 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 10 170 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 10 174 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 20 65 1 75 20 65 1 76 20 65 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 20 65 1 92 3 209 1 93 20 65 1 112 20 65 1 115 20 65 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 3 69 0 80 3 46 0 83 7 217 0 92 7 221 0 93 7 225 0 103 3 46 0 119 7 229 0 146 7 233 1 93 20 69 1 94 7 241 1 95 7 245 1 96 7 249 1 97 7 253 1 98 8 1 1 99 8 5 1 100 8 9 1 101 8 13 1 102] 
#[0 10 178 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 20 73 0 30] 
#[1 20 77 0 15 20 81 0 25] 
#[0 10 182 0 15 0 25] 
#[0 20 85 0 20] 
#[1 18 5 0 15 20 89 0 25] 
#[0 20 93 0 149] 
#[0 20 97 0 9] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 20 101 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 10 5 0 149 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 20 105 1 75 20 105 1 76 20 105 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 20 105 1 92 3 209 1 93 20 105 1 112 20 105 1 115 20 105 1 116 3 225 1 151 3 229 1 152 3 13 1 208 20 105 1 230 20 105 2 41 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 20 109 0 128 20 113 0 158] 
#[1 20 117 0 158 20 121 1 229] 
#[0 10 186 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 20 125 1 75 20 125 1 76 20 125 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 20 125 1 92 3 209 1 93 20 125 1 112 20 125 1 115 20 125 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 20 129 1 254 18 57 2 0 18 61 2 2 18 65 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 10 190 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 9 102 0 8 1 6 0 20 6 49 0 24 2 179 0 26 9 102 0 32 9 102 0 149 9 61 0 222 9 61 0 252] 
#[1 20 133 0 32 20 137 0 149 20 141 1 253] 
#[1 9 194 0 8 14 229 0 26 20 145 1 205 20 145 1 206] 
#[0 20 149 0 114] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 20 153 2 6 20 157 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 10 194 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 20 161 0 25] 
#[0 20 165 0 156] 
#[1 0 49 0 37 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 10 198 0 156 20 169 2 1 20 169 2 2 20 177 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 10 202 0 156 20 181 1 255 20 181 2 0 20 189 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 10 206 0 81 20 193 0 89 20 197 0 109 20 201 0 111 10 206 0 120 20 205 2 3 20 209 2 4] 
#[0 20 213 0 25] 
#[1 9 194 0 8 14 229 0 26 20 217 1 205 20 217 1 206] 
#[0 20 221 0 8] 
#[0 20 225 0 8] 
#[0 10 210 0 8] 
#[0 10 214 0 8] 
#[0 10 218 0 8] 
#[0 10 222 0 8] 
#[0 10 226 0 8] 
#[0 2 183 0 8] 
#[0 10 238 0 8] 
#[0 2 187 0 8] 
#[0 10 250 0 8] 
#[0 10 254 0 8] 
#[0 11 2 0 8] 
#[0 11 6 0 8] 
#[0 11 10 0 8] 
#[0 11 14 0 8] 
#[0 11 18 0 8] 
#[0 11 22 0 8] 
#[0 11 26 0 8] 
#[0 11 30 0 8] 
#[0 11 34 0 8] 
#[0 11 38 0 8] 
#[0 11 42 0 8] 
#[0 11 46 0 8] 
#[0 20 229 0 8] 
#[0 20 233 0 8] 
#[0 20 237 0 25] 
#[1 20 241 0 25 20 245 0 32 1 93 0 149 20 249 1 121 20 253 2 32] 
#[0 21 1 0 9] 
#[0 21 5 0 8] 
#[0 21 9 0 8] 
#[0 11 50 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[1 21 13 0 38 5 221 0 158 1 141 0 193 8 189 0 195 1 141 0 196 16 45 2 83 8 189 2 84] 
#[0 11 54 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 21 17 1 75 21 17 1 76 21 17 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 21 17 1 92 3 209 1 93 21 17 1 112 21 17 1 115 21 17 1 116 3 225 1 151 3 229 1 152 3 13 1 208 21 17 2 92 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 11 58 0 9 0 15] 
#[0 11 62 0 9 0 15] 
#[0 11 66 0 15 0 38] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 2 147 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 16 53 0 236 10 201 0 237 21 21 2 89 21 25 2 90 16 73 2 91] 
#[0 11 70 0 15 0 38] 
#[1 21 29 0 158 21 33 2 91] 
#[0 21 37 0 156] 
#[0 11 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 21 41 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 86 0 10 0 104 0 10 0 158 21 45 2 47 21 49 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 21 53 0 8] 
#[0 11 78 0 149] 
#[0 11 82 0 149] 
#[0 11 86 0 149] 
#[1 0 49 0 37 11 90 0 156 0 10 0 158 21 57 2 64 21 61 2 65 21 65 2 66 21 69 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 5 178 0 8 21 73 0 25 5 178 0 37 5 178 0 41 5 178 0 46 5 178 0 49 5 178 0 52 5 178 0 55 5 178 0 57 5 178 0 58 5 178 0 60 5 178 0 62 5 178 0 65 5 178 0 66 5 178 0 68 5 178 0 70 5 178 0 72 5 178 0 76 5 178 0 77 5 178 0 87 5 178 0 88 5 178 0 89 5 178 0 95 5 178 0 98 5 178 0 99 5 178 0 100 5 178 0 105 5 178 0 108 5 178 0 109 5 178 0 111 5 178 0 112 5 178 0 113 5 178 0 114 5 178 0 117 5 178 0 118 5 178 0 121 5 178 0 124 5 178 0 125 5 178 0 126 5 178 0 134 5 178 0 135 5 178 0 138 5 178 0 139 5 178 0 142 5 178 0 143 5 178 0 144 5 178 0 153 5 178 0 156 5 178 0 158 21 73 2 95 5 178 2 126] 
#[1 9 194 0 23 14 229 0 26 9 194 0 146 9 194 0 149 21 77 1 205 21 77 1 206] 
#[1 21 81 0 23 11 94 0 146 11 94 0 149 21 85 1 209 21 89 1 210] 
#[0 11 98 0 8 0 23 0 146 0 149] 
#[1 21 93 0 23 11 102 0 146 11 102 0 149 21 97 2 50 21 101 2 51] 
#[0 11 106 0 23 0 146 0 149] 
#[1 21 105 0 23 11 110 0 146 11 110 0 149 21 109 2 34 21 113 2 35] 
#[0 21 117 0 25] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 21 121 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 21 125 1 52 1 205 1 53 1 205 1 58 21 125 1 59 21 125 1 60 21 125 1 61 21 125 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 21 121 1 75 21 121 1 76 21 121 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 21 121 1 92 3 209 1 93 21 121 1 112 21 121 1 115 21 121 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 21 125 2 107 1 205 2 108 21 125 2 109 1 205 2 110 3 53 2 124] 
#[0 11 114 0 9 0 15] 
#[0 11 118 0 9 0 15] 
#[0 11 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 11 126 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 11 130 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 4 141 0 52 4 145 0 55 3 65 0 56 4 149 0 60 0 185 0 61 0 189 0 62 4 153 0 65 3 21 0 73 4 157 0 77 4 161 0 87 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 33 0 128 3 21 0 130 1 49 0 133 4 185 0 134 4 189 0 135 3 77 0 136 4 193 0 139 1 77 0 141 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 9 105 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 9 105 1 112 4 209 1 152 9 105 1 158 21 129 1 177 21 129 1 178 21 137 1 179 1 205 2 93 3 21 2 94 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 21 141 1 75 21 141 1 76 21 141 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 21 141 1 92 3 209 1 93 21 141 1 112 21 141 1 115 21 141 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 21 145 0 9] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 21 149 1 120 21 149 1 121 21 149 1 124 4 209 1 152 21 149 1 157 2 185 1 158 21 149 1 159 21 149 1 160 21 149 1 161 21 149 1 169 21 149 1 170 21 149 1 171 21 149 1 172 21 149 1 180 21 149 1 181 21 149 1 182 21 149 1 183 21 149 1 184 21 149 1 185 21 149 1 186 21 149 1 187 21 149 1 197 21 149 1 198 21 149 1 199 21 149 1 200 21 149 1 202 1 205 2 93 3 21 2 94 21 149 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 21 149 2 111] 
#[1 1 6 0 9 1 6 0 20 6 53 0 26 21 153 0 222 21 153 0 252] 
#[1 1 6 0 8 1 6 0 13 1 6 0 15 1 6 0 17 1 6 0 19 1 6 0 20 6 53 0 26 1 6 0 35 1 6 0 37 1 6 0 156 21 157 0 222 21 157 0 252] 
#[0 11 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 142 0 30] 
#[0 11 146 0 15 0 156] 
#[0 11 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 46 0 30] 
#[0 11 154 0 15 0 156] 
#[0 11 158 0 15 0 156] 
#[0 11 162 0 15 0 156] 
#[0 11 166 0 15 0 156] 
#[0 11 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 174 0 15 0 156] 
#[0 11 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 182 0 15 0 156] 
#[1 11 186 0 1 11 186 0 2 11 186 0 3 11 186 0 4 11 186 0 5 11 186 0 6 11 186 0 7 11 186 0 8 11 186 0 9 11 186 0 10 11 186 0 11 11 186 0 12 11 186 0 13 11 186 0 14 11 186 0 15 11 186 0 16 11 186 0 17 11 186 0 18 11 186 0 19 11 186 0 20 11 186 0 21 11 186 0 22 11 186 0 23 11 186 0 25 11 186 0 26 11 186 0 27 11 186 0 28 11 186 0 29 11 186 0 30 11 186 0 31 11 186 0 33 11 186 0 34 11 186 0 35 11 186 0 36 11 186 0 38 11 186 0 39 11 186 0 40 11 186 0 44 11 186 0 45 11 186 0 46 11 186 0 47 11 186 0 48 11 186 0 49 11 186 0 50 11 186 0 51 11 186 0 52 11 186 0 53 11 186 0 55 11 186 0 56 11 186 0 58 11 186 0 59 11 186 0 60 11 186 0 61 11 186 0 62 11 186 0 63 11 186 0 64 11 186 0 65 11 186 0 66 11 186 0 67 11 186 0 69 11 186 0 73 11 186 0 76 11 186 0 77 11 186 0 78 11 186 0 79 11 186 0 80 11 186 0 82 11 186 0 83 11 186 0 84 11 186 0 87 11 186 0 90 11 186 0 91 11 186 0 92 11 186 0 93 11 186 0 94 11 186 0 95 11 186 0 97 11 186 0 99 11 186 0 100 11 186 0 101 11 186 0 103 11 186 0 114 11 186 0 116 11 186 0 117 11 186 0 119 11 186 0 121 11 186 0 122 11 186 0 123 11 186 0 124 11 186 0 125 11 186 0 127 11 186 0 128 11 186 0 129 11 186 0 130 11 186 0 131 11 186 0 133 11 186 0 134 11 186 0 135 11 186 0 136 11 186 0 138 11 186 0 139 11 186 0 140 11 186 0 141 11 186 0 143 11 186 0 145 11 186 0 146 11 186 0 147 11 186 0 148 2 191 0 149 11 186 0 150 11 186 0 151 11 186 0 152 11 186 0 153 11 186 0 154 11 186 0 155 11 186 0 156 11 186 0 158 11 186 0 159 11 186 0 160 11 186 0 161 11 186 0 162 11 186 0 163 11 186 0 164 11 186 0 165 11 186 0 166 11 186 0 167 11 186 0 168 11 186 0 169 11 186 0 170 11 186 0 171 21 161 2 40 21 161 2 41 11 186 2 126] 
#[1 11 190 0 1 11 190 0 2 11 190 0 3 11 190 0 4 11 190 0 5 11 190 0 6 11 190 0 7 11 190 0 8 11 190 0 9 11 190 0 10 11 190 0 11 11 190 0 12 11 190 0 13 11 190 0 14 11 190 0 15 11 190 0 16 11 190 0 17 11 190 0 18 11 190 0 19 11 190 0 20 11 190 0 21 11 190 0 22 11 190 0 23 11 190 0 25 11 190 0 26 11 190 0 27 11 190 0 28 11 190 0 29 11 190 0 30 11 190 0 31 11 190 0 33 11 190 0 34 11 190 0 35 11 190 0 36 5 165 0 37 11 190 0 38 11 190 0 39 11 190 0 40 11 190 0 44 11 190 0 45 11 190 0 46 11 190 0 47 11 190 0 48 11 190 0 49 11 190 0 50 11 190 0 51 11 190 0 52 11 190 0 53 11 190 0 55 11 190 0 56 11 190 0 58 11 190 0 59 11 190 0 60 11 190 0 61 11 190 0 62 11 190 0 63 11 190 0 64 11 190 0 65 11 190 0 66 11 190 0 67 11 190 0 69 11 190 0 73 11 190 0 76 11 190 0 77 11 190 0 78 11 190 0 79 11 190 0 80 11 190 0 82 11 190 0 83 11 190 0 84 11 190 0 87 11 190 0 90 11 190 0 91 11 190 0 92 11 190 0 93 11 190 0 94 11 190 0 95 11 190 0 97 11 190 0 99 11 190 0 100 11 190 0 101 11 190 0 103 11 190 0 114 11 190 0 116 11 190 0 117 11 190 0 119 11 190 0 121 11 190 0 122 11 190 0 123 11 190 0 124 11 190 0 125 11 190 0 127 11 190 0 128 11 190 0 129 11 190 0 130 11 190 0 131 11 190 0 133 11 190 0 134 11 190 0 135 11 190 0 136 11 190 0 138 11 190 0 139 11 190 0 140 11 190 0 141 11 190 0 143 11 190 0 145 11 190 0 146 11 190 0 147 11 190 0 148 11 190 0 149 11 190 0 150 11 190 0 151 11 190 0 152 11 190 0 153 11 190 0 154 11 190 0 155 11 190 0 156 11 190 0 158 11 190 0 159 11 190 0 160 11 190 0 161 11 190 0 162 11 190 0 163 11 190 0 164 11 190 0 165 11 190 0 166 11 190 0 167 11 190 0 168 11 190 0 169 11 190 0 170 11 190 0 171 10 177 0 218 11 190 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 17 73 1 75 17 73 1 76 17 73 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 17 73 1 92 3 209 1 93 17 73 1 112 17 73 1 115 17 73 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 17 69 2 120 17 73 2 123 3 53 2 124] 
#[0 11 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 21 173 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 21 173 0 211 1 189 0 212 21 173 0 214 1 197 0 215 21 177 0 226 21 177 0 227 21 177 0 229 21 177 0 230 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 21 177 1 75 21 177 1 76 21 177 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 21 177 1 92 3 209 1 93 21 177 1 112 21 177 1 115 21 177 1 116 21 177 1 117 3 225 1 151 11 173 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 21 181 0 23] 
#[0 21 185 0 156] 
#[1 19 169 0 53 19 173 0 61 11 198 0 156 21 189 1 165 19 189 1 166 19 193 1 167] 
#[0 11 202 0 53 0 61 0 156] 
#[1 0 105 0 1 0 109 0 5 0 11 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 15 0 46 0 145 0 47 0 149 0 48 0 19 0 49 0 157 0 50 0 23 0 52 19 169 0 53 0 27 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 31 0 60 21 193 0 61 0 189 0 62 0 193 0 64 0 35 0 65 0 39 0 66 3 21 0 73 0 209 0 76 0 43 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 47 0 87 0 237 0 94 0 51 0 95 0 245 0 97 0 249 0 99 0 55 0 100 0 59 0 114 1 5 0 116 0 63 0 117 0 67 0 121 1 17 0 122 1 21 0 123 0 71 0 124 0 75 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 0 79 0 134 0 83 0 135 1 61 0 136 0 87 0 138 0 91 0 139 1 73 0 140 1 77 0 141 0 95 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 0 99 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 211 1 189 0 212 1 145 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 6 29 1 119 6 29 1 120 6 29 1 121 21 197 1 123 6 29 1 124 6 29 1 125 6 29 1 126 6 29 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 137 2 157 1 138 2 161 1 140 2 153 1 142 2 169 1 147 2 173 1 152 2 177 1 154 6 29 1 157 2 185 1 158 6 29 1 159 6 29 1 160 6 29 1 161 21 201 1 167 6 29 1 169 6 29 1 170 6 29 1 171 6 29 1 172 6 29 1 180 6 29 1 181 6 29 1 182 6 29 1 183 6 29 1 184 6 29 1 185 6 29 1 186 6 29 1 187 6 29 1 197 6 29 1 198 6 29 1 199 6 29 1 200 6 29 1 202 3 13 1 208 1 205 2 93 3 21 2 94 6 29 2 103 3 29 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 6 29 2 111 3 53 2 124] 
#[0 11 206 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 11 210 0 9] 
#[0 21 205 0 9] 
#[0 21 209 0 9] 
#[0 11 214 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 11 218 0 9 0 20] 
#[0 11 222 0 9 0 20] 
#[0 11 226 0 15 0 154] 
#[1 17 37 0 15 8 110 0 154 17 41 1 41 17 45 1 42] 
#[0 11 230 0 9 0 20] 
#[0 11 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 21 213 0 15 11 238 0 156 21 217 2 121] 
#[1 11 242 0 1 11 242 0 2 11 242 0 3 11 242 0 4 11 242 0 5 11 242 0 6 11 242 0 7 2 195 0 8 11 242 0 9 11 242 0 10 11 242 0 11 11 242 0 12 11 242 0 13 11 242 0 14 11 242 0 15 11 242 0 16 11 242 0 17 11 242 0 18 11 242 0 19 2 199 0 20 11 242 0 21 11 242 0 22 11 242 0 23 11 242 0 25 11 242 0 26 11 242 0 27 11 242 0 28 11 242 0 29 11 242 0 30 11 242 0 31 11 242 0 33 11 242 0 34 11 242 0 35 11 242 0 36 2 203 0 37 11 242 0 38 11 242 0 39 11 242 0 40 11 242 0 44 11 242 0 45 11 242 0 46 11 242 0 47 11 242 0 48 11 242 0 49 11 242 0 50 11 242 0 51 11 242 0 52 11 242 0 53 11 242 0 55 11 242 0 56 11 242 0 58 11 242 0 59 11 242 0 60 11 242 0 61 11 242 0 62 11 242 0 63 11 242 0 64 11 242 0 65 11 242 0 66 11 242 0 67 11 242 0 69 11 242 0 73 11 242 0 76 11 242 0 77 11 242 0 78 11 242 0 79 11 242 0 80 11 242 0 82 11 242 0 83 11 242 0 84 11 242 0 87 11 242 0 90 11 242 0 91 11 242 0 92 11 242 0 93 11 242 0 94 11 242 0 95 11 242 0 97 11 242 0 99 11 242 0 100 11 242 0 101 11 242 0 103 11 242 0 114 11 242 0 116 11 242 0 117 11 242 0 119 11 242 0 121 11 242 0 122 11 242 0 123 11 242 0 124 11 242 0 125 11 242 0 127 11 242 0 128 11 242 0 129 11 242 0 130 11 242 0 131 11 242 0 133 11 242 0 134 11 242 0 135 11 242 0 136 11 242 0 138 11 242 0 139 11 242 0 140 11 242 0 141 11 242 0 143 11 242 0 145 11 242 0 146 11 242 0 147 11 242 0 148 11 242 0 149 11 242 0 150 11 242 0 151 11 242 0 152 11 242 0 153 11 242 0 154 11 242 0 155 11 242 0 156 11 242 0 158 11 242 0 159 11 242 0 160 11 242 0 161 11 242 0 162 11 242 0 163 11 242 0 164 11 242 0 165 11 242 0 166 11 242 0 167 11 242 0 168 11 242 0 169 11 242 0 170 11 242 0 171 21 233 1 55 11 242 2 126] 
#[0 11 246 0 164 0 165 0 168 0 169] 
#[0 11 250 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 21 237 1 242 21 241 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 11 254 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 12 2 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 21 245 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 21 249 0 199 21 249 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 197 0 212 22 1 0 214 1 197 0 215 1 197 1 208 1 197 2 104 3 53 2 124] 
#[0 12 6 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 12 10 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 22 13 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 22 13 0 211 1 189 0 212 22 13 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[0 12 14 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 12 18 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 0 49 0 37 0 10 0 158 22 17 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 12 22 0 8 0 23 0 146 0 149] 
#[0 1 10 0 15 0 23 0 154] 
#[0 12 26 0 15 0 154] 
#[0 22 21 0 9] 
#[0 12 30 0 9 0 15 0 25] 
#[0 12 34 0 9 0 15 0 25] 
#[0 22 25 0 101] 
#[0 12 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 12 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 22 29 1 75 22 29 1 76 22 29 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 22 29 1 92 3 209 1 93 22 29 1 112 22 29 1 115 22 29 1 116 22 29 1 117 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 17 221 0 158 22 33 1 226] 
#[0 12 46 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 20 113 0 158] 
#[0 12 50 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 49 0 37 0 10 0 42 0 10 0 115 22 37 2 9 22 41 2 10 22 45 2 11 22 49 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 22 53 0 23 12 54 0 25 12 54 0 32 12 54 0 149 22 57 2 27 22 57 2 28] 
#[0 22 65 0 38] 
#[0 12 58 0 15 0 25] 
#[0 22 69 0 37] 
#[0 12 62 0 8 0 26 0 32 0 149] 
#[1 9 98 0 15 9 98 0 25 17 253 0 30] 
#[0 12 66 0 15 0 25] 
#[0 22 73 0 25] 
#[0 22 77 0 156] 
#[0 22 81 0 114] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 22 85 2 6 20 157 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 12 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 22 89 0 8] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 22 93 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 22 93 1 75 22 93 1 76 22 93 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 22 93 1 92 3 209 1 93 22 93 1 112 22 93 1 115 22 93 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 22 97 0 156] 
#[1 10 206 0 81 20 193 0 89 20 197 0 109 20 201 0 111 22 101 2 3 20 209 2 4] 
#[0 12 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 82 0 156] 
#[0 12 86 0 156] 
#[1 20 193 0 89 20 197 0 109 20 201 0 111 10 206 0 120 22 105 2 3 20 209 2 4] 
#[0 12 90 0 156] 
#[0 12 94 0 156] 
#[1 10 206 0 81 20 193 0 89 20 197 0 109 20 201 0 111 22 109 2 3 20 209 2 4] 
#[1 12 98 0 81 22 113 0 111 12 98 0 120] 
#[1 12 102 0 81 22 117 0 111 12 102 0 120] 
#[1 12 106 0 81 22 121 0 89 22 125 0 109 12 106 0 120] 
#[1 22 129 0 81 22 133 0 120] 
#[0 12 110 0 81 0 120] 
#[0 12 114 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 22 137 0 8] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 141 1 242 22 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 149 1 242 22 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 153 1 242 22 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 157 1 242 22 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 12 118 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 22 161 1 75 22 161 1 76 22 161 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 22 161 1 92 3 209 1 93 22 161 1 112 22 161 1 115 22 161 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 12 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 22 165 0 25 22 169 0 32 1 93 0 149 22 173 1 121 22 177 2 101] 
#[0 22 181 0 9] 
#[0 22 185 0 9] 
#[0 12 134 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[0 12 138 0 9 0 15] 
#[0 12 142 0 9 0 15] 
#[1 22 189 0 9 18 237 0 15] 
#[0 18 213 0 30] 
#[0 12 146 0 9 0 15] 
#[0 12 150 0 25 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 22 193 0 9] 
#[1 22 197 0 15 22 201 0 154] 
#[1 22 213 0 86 22 213 0 104 12 154 0 158 22 213 2 48 22 213 2 49] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 221 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 22 225 0 156] 
#[1 22 229 0 15 12 158 0 156] 
#[0 12 162 0 15 0 156] 
#[0 22 233 0 158] 
#[0 12 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 21 105 0 23 11 110 0 146 11 110 0 149 22 237 2 34 21 113 2 35] 
#[1 5 65 0 100 5 77 0 125 5 221 0 158 1 141 0 193 22 245 0 195 1 141 0 196 22 245 0 212] 
#[1 22 249 0 146 12 170 0 149 22 253 1 212 23 1 1 213 23 5 1 214] 
#[0 12 174 0 146 0 149] 
#[1 5 221 0 158 1 141 0 193 23 9 0 195 1 141 0 196 23 9 0 213 23 13 1 211] 
#[1 22 249 0 146 12 170 0 149 23 17 1 212 23 1 1 213 23 5 1 214] 
#[0 12 178 0 146 0 149] 
#[1 5 221 0 158 1 141 0 193 23 9 0 195 1 141 0 196 23 9 0 213 23 21 1 211] 
#[1 22 249 0 146 12 170 0 149 23 25 1 212 23 1 1 213 23 5 1 214] 
#[0 12 182 0 146 0 149] 
#[0 12 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 12 190 0 9 0 15] 
#[1 2 207 0 2 2 207 0 3 2 211 0 4 2 207 0 5 2 207 0 6 2 215 0 7 2 207 0 9 2 207 0 10 2 219 0 11 2 207 0 12 2 223 0 14 2 207 0 15 2 207 0 16 2 227 0 18 2 207 0 21 2 231 0 22 2 207 0 26 2 207 0 27 2 235 0 28 2 207 0 29 2 239 0 30 2 207 0 31 2 207 0 33 2 243 0 34 2 207 0 35 2 207 0 36 2 207 0 39 2 247 0 40 2 207 0 44 2 207 0 91 2 207 0 150 2 251 0 151 2 207 0 152 2 207 0 154 2 207 0 155 6 193 1 113] 
#[0 23 29 0 9] 
#[0 12 194 0 9] 
#[1 12 198 0 9 13 97 0 15] 
#[0 23 33 0 9] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 23 37 1 120 23 37 1 121 23 37 1 124 4 209 1 152 23 37 1 157 2 185 1 158 23 37 1 159 23 37 1 160 23 37 1 161 23 37 1 169 23 37 1 170 23 37 1 171 23 37 1 172 23 37 1 180 23 37 1 181 23 37 1 182 23 37 1 183 23 37 1 184 23 37 1 185 23 37 1 186 23 37 1 187 23 37 1 197 23 37 1 198 23 37 1 199 23 37 1 200 23 37 1 202 1 205 2 93 3 21 2 94 23 37 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 23 37 2 111] 
#[0 12 202 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 12 206 0 9 0 20] 
#[1 10 94 0 8 10 94 0 13 12 210 0 15 10 94 0 17 10 94 0 19 10 94 0 20 10 94 0 35 10 94 0 37 12 210 0 156 19 241 1 54] 
#[0 12 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 12 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 66 0 15 0 156] 
#[1 2 255 0 158 15 29 0 231 15 29 0 232] 
#[1 23 41 0 23 23 45 0 145 23 49 1 168] 
#[0 12 222 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 12 226 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 12 230 0 53 0 61 0 156] 
#[1 0 126 0 4 0 126 0 7 0 107 0 8 0 126 0 11 0 126 0 13 0 126 0 14 0 126 0 17 0 126 0 18 0 126 0 19 0 126 0 20 0 126 0 22 21 181 0 23 0 126 0 28 0 126 0 30 0 126 0 34 0 126 0 35 0 126 0 37 0 126 0 40 0 126 0 151] 
#[1 0 105 0 1 0 109 0 5 0 11 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 15 0 46 0 145 0 47 0 149 0 48 0 19 0 49 0 157 0 50 0 23 0 52 12 234 0 53 0 27 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 31 0 60 3 3 0 61 0 189 0 62 0 193 0 64 0 35 0 65 0 39 0 66 3 21 0 73 0 209 0 76 0 43 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 47 0 87 0 237 0 94 0 51 0 95 0 245 0 97 0 249 0 99 0 55 0 100 0 59 0 114 1 5 0 116 0 63 0 117 0 67 0 121 1 17 0 122 1 21 0 123 0 71 0 124 0 75 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 0 79 0 134 0 83 0 135 1 61 0 136 0 87 0 138 0 91 0 139 1 73 0 140 1 77 0 141 0 95 0 143 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 12 234 0 156 0 99 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 1 145 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 1 145 0 211 1 189 0 212 1 145 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 10 137 1 119 10 137 1 120 10 137 1 121 10 137 1 124 10 137 1 125 10 137 1 126 10 137 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 137 2 157 1 138 2 161 1 140 2 153 1 142 2 169 1 147 2 173 1 152 2 177 1 154 10 137 1 157 2 185 1 158 10 137 1 159 10 137 1 160 10 137 1 161 10 137 1 169 10 137 1 170 10 137 1 171 10 137 1 172 10 137 1 180 10 137 1 181 10 137 1 182 10 137 1 183 10 137 1 184 10 137 1 185 10 137 1 186 10 137 1 187 10 137 1 197 10 137 1 198 10 137 1 199 10 137 1 200 10 137 1 202 3 13 1 208 1 205 2 93 3 21 2 94 10 137 2 103 3 29 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 10 137 2 111 3 53 2 124] 
#[0 12 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 12 242 0 145 0 149] 
#[0 12 246 0 149] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 23 53 1 75 23 53 1 76 23 53 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 23 53 1 92 3 209 1 93 23 53 1 112 23 53 1 115 23 53 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 23 53 2 123 3 53 2 124] 
#[0 12 250 0 15 0 156] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 90 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 23 57 0 233 10 189 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[0 23 61 0 158] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 23 65 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[0 12 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 2 0 9 0 15 0 38] 
#[0 13 6 0 9 0 38] 
#[0 0 146 0 37] 
#[1 6 81 0 10 1 66 0 37 6 85 2 105] 
#[0 1 110 0 37] 
#[0 23 69 0 158] 
#[0 2 158 0 37] 
#[0 2 178 0 37] 
#[0 23 73 0 158] 
#[1 20 41 0 158 23 77 1 208] 
#[1 12 170 0 32 22 249 0 146 12 170 0 149 23 81 1 212 23 1 1 213 23 5 1 214] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 23 85 1 75 23 85 1 76 23 85 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 23 85 1 92 3 209 1 93 23 85 1 112 23 85 1 115 23 85 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 13 10 0 15 0 25] 
#[0 13 14 0 15 0 25] 
#[0 23 89 0 156] 
#[1 0 49 0 37 0 10 0 115 23 93 2 11 23 97 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 42 23 101 2 10 23 105 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 23 109 0 42 23 113 0 115] 
#[1 23 117 0 48 23 121 0 128] 
#[0 13 18 0 25 0 32 0 149] 
#[0 13 22 0 25 0 32 0 149] 
#[0 13 26 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 125 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 13 30 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 13 34 0 8 23 129 0 30 13 34 0 37 13 34 0 41 13 34 0 46 13 34 0 49 13 34 0 52 13 34 0 55 13 34 0 57 13 34 0 58 13 34 0 60 13 34 0 62 13 34 0 65 13 34 0 66 13 34 0 68 13 34 0 70 13 34 0 72 13 34 0 76 13 34 0 77 13 34 0 87 13 34 0 88 13 34 0 89 13 34 0 95 13 34 0 99 13 34 0 100 13 34 0 105 13 34 0 108 13 34 0 109 13 34 0 111 13 34 0 112 13 34 0 113 13 34 0 114 13 34 0 117 13 34 0 118 13 34 0 121 13 34 0 124 13 34 0 125 13 34 0 126 13 34 0 134 13 34 0 135 13 34 0 138 13 34 0 139 13 34 0 142 13 34 0 143 13 34 0 144 13 34 0 153 13 34 0 156 13 34 0 158 23 133 1 251 23 137 1 252 13 34 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 23 141 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 23 141 1 75 23 141 1 76 23 141 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 23 141 1 92 3 209 1 93 23 141 1 112 23 141 1 115 23 141 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 23 145 0 156] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 149 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 23 153 0 25] 
#[0 13 38 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 23 157 0 81] 
#[0 22 133 0 120] 
#[0 22 129 0 81] 
#[0 13 42 0 81 0 120] 
#[0 13 46 0 81 0 120] 
#[0 13 50 0 81 0 120] 
#[0 13 54 0 81 0 120] 
#[1 23 161 0 25 23 165 0 32 1 93 0 149 23 169 1 121 23 173 2 5] 
#[1 23 161 0 25 23 165 0 32 1 93 0 149 23 169 1 121 23 177 2 5] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 181 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 23 185 0 9] 
#[1 10 138 0 8 10 138 0 49 10 138 0 52 10 138 0 55 10 138 0 60 10 138 0 65 10 138 0 66 10 138 0 77 20 21 0 86 10 138 0 87 10 138 0 95 10 138 0 100 20 21 0 104 20 21 0 114 10 138 0 117 10 138 0 121 10 138 0 125 20 21 0 128 10 138 0 134 10 138 0 135 10 138 0 139 10 138 0 143 10 138 0 158 20 21 1 245 20 21 1 246 20 21 1 247] 
#[0 23 189 0 9] 
#[0 23 193 0 9] 
#[0 23 197 0 15] 
#[0 23 201 0 25] 
#[0 13 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 23 205 1 75 23 205 1 76 23 205 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 23 205 1 92 3 209 1 93 23 205 1 112 23 205 1 115 23 205 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 13 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 22 165 0 25 22 169 0 32 1 93 0 149 22 173 1 121 23 209 2 101] 
#[1 22 165 0 25 22 169 0 32 1 93 0 149 22 173 1 121 23 213 2 101] 
#[0 13 70 0 15 0 38] 
#[0 23 217 0 25] 
#[1 0 49 0 37 0 10 0 86 0 10 0 104 0 10 0 158 23 221 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 13 74 0 8 0 23 0 146 0 149] 
#[0 13 78 0 158] 
#[0 13 82 0 158] 
#[1 20 41 0 158 23 225 1 208] 
#[0 13 86 0 158] 
#[0 23 229 0 9] 
#[0 13 90 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 49 0 37 23 233 0 156 0 10 0 158 23 237 2 66 21 69 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 13 94 0 15 23 241 0 30 13 94 0 156] 
#[1 22 249 0 146 12 170 0 149 23 245 1 212 23 1 1 213 23 5 1 214] 
#[0 1 54 0 15 0 146 0 149] 
#[1 23 249 0 15 13 98 0 146 13 98 0 149] 
#[1 20 41 0 158 23 253 1 208] 
#[1 24 1 0 149 24 5 1 220] 
#[1 13 102 0 25 13 102 0 32 22 249 0 146 13 102 0 149 24 9 1 214] 
#[0 13 106 0 25 0 32 0 146 0 149] 
#[0 13 110 0 15 0 146 0 149] 
#[1 24 13 0 15 13 114 0 146 13 114 0 149] 
#[1 24 17 0 149 24 21 2 52] 
#[1 24 13 0 15 13 118 0 146 13 118 0 149] 
#[1 24 25 0 149 24 29 2 36] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 24 33 1 120 24 33 1 121 24 33 1 124 4 209 1 152 24 33 1 157 2 185 1 158 24 33 1 159 24 33 1 160 24 33 1 161 24 33 1 169 24 33 1 170 24 33 1 171 24 33 1 172 24 33 1 180 24 33 1 181 24 33 1 182 24 33 1 183 24 33 1 184 24 33 1 185 24 33 1 186 24 33 1 187 24 33 1 197 24 33 1 198 24 33 1 199 24 33 1 200 24 33 1 202 1 205 2 93 3 21 2 94 24 33 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 24 33 2 111] 
#[1 0 105 0 1 0 109 0 5 4 133 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 4 137 0 49 0 157 0 50 4 141 0 52 4 145 0 55 0 169 0 56 0 177 0 59 4 149 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 153 0 65 3 21 0 73 0 209 0 76 4 157 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 161 0 87 0 237 0 94 4 165 0 95 0 245 0 97 0 249 0 99 4 169 0 100 1 5 0 116 4 173 0 117 4 177 0 121 1 17 0 122 1 21 0 123 4 181 0 125 1 29 0 127 1 33 0 128 1 37 0 129 3 21 0 130 1 45 0 131 1 49 0 133 4 185 0 134 4 189 0 135 1 61 0 136 1 65 0 138 4 193 0 139 1 73 0 140 1 77 0 141 1 85 0 147 1 89 0 148 1 93 0 149 1 97 0 153 4 197 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 4 201 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 185 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 185 1 112 24 37 1 120 24 37 1 121 24 37 1 124 4 209 1 152 24 37 1 157 2 185 1 158 24 37 1 159 24 37 1 160 24 37 1 161 24 37 1 169 24 37 1 170 24 37 1 171 24 37 1 172 24 37 1 180 24 37 1 181 24 37 1 182 24 37 1 183 24 37 1 184 24 37 1 185 24 37 1 186 24 37 1 187 24 37 1 197 24 37 1 198 24 37 1 199 24 37 1 200 24 37 1 202 1 205 2 93 3 21 2 94 24 37 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 24 37 2 111] 
#[0 13 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 13 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 24 41 1 75 24 41 1 76 24 41 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 24 41 1 92 3 209 1 93 24 41 1 112 24 41 1 115 24 41 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 24 45 0 23] 
#[0 13 130 0 15 0 156] 
#[0 24 49 0 9] 
#[1 1 6 0 1 1 6 0 2 1 6 0 3 1 6 0 4 1 6 0 5 1 6 0 6 1 6 0 7 1 6 0 8 1 6 0 9 1 6 0 10 1 6 0 11 1 6 0 12 1 6 0 13 1 6 0 14 1 6 0 15 1 6 0 16 1 6 0 17 1 6 0 18 1 6 0 19 1 6 0 20 1 6 0 21 1 6 0 22 1 6 0 23 1 6 0 25 1 127 0 26 1 6 0 27 1 6 0 28 1 6 0 29 1 6 0 30 1 6 0 31 1 6 0 33 1 6 0 34 1 6 0 35 1 6 0 36 1 6 0 37 1 6 0 38 1 6 0 39 1 6 0 40 1 6 0 44 1 6 0 45 1 6 0 46 1 6 0 47 1 6 0 48 1 6 0 49 1 6 0 50 1 6 0 51 1 6 0 52 1 6 0 53 1 6 0 55 1 6 0 56 1 6 0 58 1 6 0 59 1 6 0 60 1 6 0 61 1 6 0 62 1 6 0 63 1 6 0 64 1 6 0 65 1 6 0 66 1 6 0 67 1 6 0 69 1 6 0 73 1 6 0 76 1 6 0 77 1 6 0 78 1 6 0 79 1 6 0 80 1 6 0 82 1 6 0 83 1 6 0 84 1 6 0 87 1 6 0 90 1 6 0 91 1 6 0 92 1 6 0 93 1 6 0 94 1 6 0 95 1 6 0 97 1 6 0 99 1 6 0 100 1 6 0 101 1 6 0 103 1 6 0 114 1 6 0 116 1 6 0 117 1 6 0 119 1 6 0 121 1 6 0 122 1 6 0 123 1 6 0 124 1 6 0 125 1 6 0 127 1 6 0 128 1 6 0 129 1 6 0 130 1 6 0 131 1 6 0 133 1 6 0 134 1 6 0 135 1 6 0 136 1 6 0 138 1 6 0 139 1 6 0 140 1 6 0 141 1 6 0 143 1 6 0 145 1 6 0 146 1 6 0 147 1 6 0 148 1 6 0 149 1 6 0 150 1 6 0 151 1 6 0 152 1 6 0 153 1 6 0 154 1 6 0 155 1 6 0 156 1 6 0 158 1 6 0 159 1 6 0 160 1 6 0 161 1 6 0 162 1 6 0 163 1 6 0 164 1 6 0 165 1 6 0 166 1 6 0 167 1 6 0 168 1 6 0 169 1 6 0 170 1 6 0 171 24 53 0 222 24 53 0 252 1 6 2 126] 
#[1 14 121 0 15 24 57 0 38] 
#[0 13 134 0 9 0 38] 
#[1 13 138 0 9 13 138 0 15 24 61 0 30 13 138 0 38 24 65 1 243 24 69 1 244] 
#[0 13 142 0 15 0 154] 
#[0 13 146 0 32 0 149] 
#[0 24 73 0 69] 
#[0 13 150 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 154 0 156] 
#[0 23 113 0 115] 
#[0 13 158 0 156] 
#[0 23 109 0 42] 
#[1 1 93 0 149 24 77 1 121] 
#[1 1 93 0 149 24 81 1 121] 
#[0 24 85 0 8] 
#[0 24 89 0 8] 
#[0 24 93 0 38] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 10 5 0 149 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 24 97 1 75 24 97 1 76 24 97 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 24 97 1 92 3 209 1 93 24 97 1 112 24 97 1 115 24 97 1 116 3 225 1 151 3 229 1 152 3 13 1 208 24 97 1 230 24 97 2 41 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 13 162 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 24 101 0 25] 
#[1 13 34 0 8 23 129 0 30 13 34 0 37 13 34 0 41 13 34 0 46 13 34 0 49 13 34 0 52 13 34 0 55 13 34 0 57 13 34 0 58 13 34 0 60 13 34 0 62 13 34 0 65 13 34 0 66 13 34 0 68 13 34 0 70 13 34 0 72 13 34 0 76 13 34 0 77 13 34 0 87 13 34 0 88 13 34 0 89 13 34 0 95 13 34 0 99 13 34 0 100 13 34 0 105 13 34 0 108 13 34 0 109 13 34 0 111 13 34 0 112 13 34 0 113 13 34 0 114 13 34 0 117 13 34 0 118 13 34 0 121 13 34 0 124 13 34 0 125 13 34 0 126 13 34 0 134 13 34 0 135 13 34 0 138 13 34 0 139 13 34 0 142 13 34 0 143 13 34 0 144 13 34 0 153 13 34 0 156 13 34 0 158 24 105 1 251 23 137 1 252 13 34 2 126] 
#[0 24 109 0 9] 
#[0 13 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 24 113 0 25 24 117 0 32 1 93 0 149 24 121 1 121 24 125 2 7] 
#[0 13 174 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 24 129 1 75 24 129 1 76 24 129 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 24 129 1 92 3 209 1 93 24 129 1 112 24 129 1 115 24 129 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 13 178 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[0 13 182 0 37 0 89 0 109 0 111 0 120 0 156] 
#[0 13 186 0 37 0 81 0 89 0 109 0 111 0 156] 
#[0 24 133 0 9] 
#[0 13 190 0 25 0 32 0 149] 
#[0 13 194 0 25 0 32 0 149] 
#[0 13 198 0 25 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 24 137 1 242 22 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 13 202 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 24 141 0 25] 
#[0 13 206 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 210 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 214 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 24 145 0 86 24 145 0 104 12 154 0 158 24 145 2 48 24 145 2 49] 
#[0 13 218 0 15 0 154] 
#[1 12 170 0 25 22 249 0 146 24 149 1 212 23 1 1 213 23 5 1 214] 
#[0 13 222 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 226 0 15 0 156] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 24 153 1 75 24 153 1 76 24 153 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 24 153 1 92 3 209 1 93 24 153 1 112 24 153 1 115 24 153 1 116 24 153 1 117 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[1 24 25 0 149 24 157 2 36] 
#[1 5 221 0 158 1 141 0 193 23 9 0 195 1 141 0 196 23 9 0 213 24 161 1 211] 
#[0 24 165 0 23] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 13 230 0 156 0 10 0 158 24 177 0 192 24 177 1 203 24 169 1 221 24 173 1 222 24 177 1 223 24 177 1 224 24 177 1 227 24 177 1 231 4 1 1 232 4 5 1 233 24 177 1 249 24 177 2 8 24 177 2 12 24 177 2 16 24 177 2 25 24 177 2 30 24 177 2 33 24 177 2 44 24 177 2 59 24 177 2 67 4 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78 24 177 2 100] 
#[1 5 178 0 8 24 181 0 25 5 178 0 37 5 178 0 41 5 178 0 46 5 178 0 49 5 178 0 52 5 178 0 55 5 178 0 57 5 178 0 58 5 178 0 60 5 178 0 62 5 178 0 65 5 178 0 66 5 178 0 68 5 178 0 70 5 178 0 72 5 178 0 76 5 178 0 77 5 178 0 87 5 178 0 88 5 178 0 89 5 178 0 95 5 178 0 98 5 178 0 99 5 178 0 100 5 178 0 105 5 178 0 108 5 178 0 109 5 178 0 111 5 178 0 112 5 178 0 113 5 178 0 114 5 178 0 117 5 178 0 118 5 178 0 121 5 178 0 124 5 178 0 125 5 178 0 126 5 178 0 134 5 178 0 135 5 178 0 138 5 178 0 139 5 178 0 142 5 178 0 143 5 178 0 144 5 178 0 153 5 178 0 156 5 178 0 158 24 181 2 95 5 178 2 126] 
#[0 13 234 0 25 0 32 0 146 0 149] 
#[1 5 221 0 158 1 141 0 193 24 185 0 195 1 141 0 196 24 185 0 213] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 13 238 0 156 0 10 0 158 24 205 1 249 24 205 2 12 24 197 2 53 24 201 2 54 24 205 2 55 24 205 2 56 24 205 2 58 24 217 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 5 178 0 8 24 221 0 25 5 178 0 37 5 178 0 41 5 178 0 46 5 178 0 49 5 178 0 52 5 178 0 55 5 178 0 57 5 178 0 58 5 178 0 60 5 178 0 62 5 178 0 65 5 178 0 66 5 178 0 68 5 178 0 70 5 178 0 72 5 178 0 76 5 178 0 77 5 178 0 87 5 178 0 88 5 178 0 89 5 178 0 95 5 178 0 98 5 178 0 99 5 178 0 100 5 178 0 105 5 178 0 108 5 178 0 109 5 178 0 111 5 178 0 112 5 178 0 113 5 178 0 114 5 178 0 117 5 178 0 118 5 178 0 121 5 178 0 124 5 178 0 125 5 178 0 126 5 178 0 134 5 178 0 135 5 178 0 138 5 178 0 139 5 178 0 142 5 178 0 143 5 178 0 144 5 178 0 153 5 178 0 156 5 178 0 158 24 221 2 95 5 178 2 126] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 13 242 0 156 0 10 0 158 25 17 0 192 25 17 1 203 25 17 1 224 25 17 1 227 25 17 1 231 4 1 1 232 4 5 1 233 25 17 1 249 25 17 2 8 25 17 2 12 25 17 2 16 25 17 2 25 25 17 2 30 25 17 2 33 25 9 2 37 25 13 2 38 25 17 2 39 25 17 2 44 25 17 2 59 25 17 2 67 25 21 2 75 0 93 2 76 0 97 2 77 0 101 2 78 25 17 2 115] 
#[1 5 178 0 8 25 29 0 25 5 178 0 37 5 178 0 41 5 178 0 46 5 178 0 49 5 178 0 52 5 178 0 55 5 178 0 57 5 178 0 58 5 178 0 60 5 178 0 62 5 178 0 65 5 178 0 66 5 178 0 68 5 178 0 70 5 178 0 72 5 178 0 76 5 178 0 77 5 178 0 87 5 178 0 88 5 178 0 89 5 178 0 95 5 178 0 98 5 178 0 99 5 178 0 100 5 178 0 105 5 178 0 108 5 178 0 109 5 178 0 111 5 178 0 112 5 178 0 113 5 178 0 114 5 178 0 117 5 178 0 118 5 178 0 121 5 178 0 124 5 178 0 125 5 178 0 126 5 178 0 134 5 178 0 135 5 178 0 138 5 178 0 139 5 178 0 142 5 178 0 143 5 178 0 144 5 178 0 153 5 178 0 156 5 178 0 158 25 29 2 95 5 178 2 126] 
#[0 13 246 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 13 250 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 13 254 0 23] 
#[0 14 2 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 14 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 25 33 1 75 25 33 1 76 25 33 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 25 33 1 92 3 209 1 93 25 33 1 112 25 33 1 115 25 33 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 14 18 0 9 0 15 0 38] 
#[0 14 22 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 25 37 1 75 25 37 1 76 25 37 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 25 37 1 92 3 209 1 93 25 37 1 112 25 37 1 115 25 37 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 14 26 0 37 0 115 0 156] 
#[0 14 30 0 37 0 42 0 156] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 90 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 25 41 0 233 10 189 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[1 4 86 0 1 4 86 0 5 4 86 0 8 4 90 0 9 4 86 0 10 4 86 0 12 4 86 0 13 4 86 0 16 4 86 0 17 4 86 0 46 4 86 0 47 4 86 0 48 4 86 0 49 4 86 0 52 4 86 0 55 4 86 0 56 4 86 0 60 4 86 0 61 4 86 0 62 4 86 0 65 4 86 0 66 4 86 0 73 4 86 0 77 4 86 0 80 4 86 0 86 4 86 0 87 4 86 0 95 4 86 0 97 4 86 0 99 4 86 0 100 4 86 0 104 4 86 0 114 4 86 0 117 4 86 0 121 4 86 0 122 4 86 0 123 4 86 0 125 4 86 0 128 4 86 0 129 4 86 0 130 4 86 0 133 4 86 0 134 4 86 0 135 4 86 0 136 4 86 0 139 4 86 0 141 4 86 0 143 4 86 0 153 1 159 0 158 4 86 0 159 4 86 0 160 4 86 0 161 4 86 0 162 4 86 0 163 4 86 0 166 4 86 0 167 4 86 0 170 4 86 0 171 25 45 0 233 10 189 0 234 10 193 0 235 10 197 0 236 10 201 0 237] 
#[0 14 34 0 32 0 149] 
#[0 25 49 0 25] 
#[0 14 38 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 42 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 12 170 0 25 12 170 0 32 22 249 0 146 12 170 0 149 25 53 1 212 23 1 1 213 23 5 1 214] 
#[0 14 46 0 156] 
#[0 25 57 0 114] 
#[0 14 50 0 156] 
#[0 14 54 0 156] 
#[0 25 61 0 25] 
#[1 12 170 0 25 12 170 0 32 22 249 0 146 12 170 0 149 25 65 1 212 23 1 1 213 23 5 1 214] 
#[0 25 69 0 9] 
#[0 14 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 20 41 0 158 25 73 1 208] 
#[0 25 77 0 25] 
#[0 14 62 0 15 0 156] 
#[1 5 178 0 8 25 81 0 25 5 178 0 37 5 178 0 41 5 178 0 46 5 178 0 49 5 178 0 52 5 178 0 55 5 178 0 57 5 178 0 58 5 178 0 60 5 178 0 62 5 178 0 65 5 178 0 66 5 178 0 68 5 178 0 70 5 178 0 72 5 178 0 76 5 178 0 77 5 178 0 87 5 178 0 88 5 178 0 89 5 178 0 95 5 178 0 98 5 178 0 99 5 178 0 100 5 178 0 105 5 178 0 108 5 178 0 109 5 178 0 111 5 178 0 112 5 178 0 113 5 178 0 114 5 178 0 117 5 178 0 118 5 178 0 121 5 178 0 124 5 178 0 125 5 178 0 126 5 178 0 134 5 178 0 135 5 178 0 138 5 178 0 139 5 178 0 142 5 178 0 143 5 178 0 144 5 178 0 153 5 178 0 156 5 178 0 158 25 81 2 95 5 178 2 126] 
#[1 24 13 0 15 14 66 0 146 14 66 0 149] 
#[1 25 85 0 57 25 89 0 99 5 65 0 100 5 77 0 125 25 93 0 126 25 97 0 137 5 93 0 158 1 141 0 193 25 101 0 195 1 141 0 196 25 105 0 212 25 109 0 213 25 113 1 208 25 117 1 215 25 121 1 216 25 125 1 217 25 129 1 218 25 133 1 219] 
#[0 25 137 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 14 70 0 156 0 10 0 158 25 141 0 192 25 141 1 203 25 141 1 223 25 141 1 224 25 141 1 227 25 141 1 231 4 1 1 232 4 5 1 233 25 141 1 249 25 141 2 8 25 141 2 12 25 141 2 16 25 141 2 25 25 141 2 30 25 141 2 33 25 141 2 44 25 141 2 59 25 141 2 67 4 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78 25 141 2 100] 
#[0 14 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158] 
#[0 14 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 82 0 15 0 146 0 149] 
#[0 14 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 90 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 25 145 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 14 94 0 156 0 10 0 158 25 149 1 249 25 149 2 12 25 149 2 55 25 149 2 56 25 149 2 58 24 217 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 14 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 102 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 3 7 0 8 0 74 0 41 0 74 0 46 3 7 0 49 3 7 0 52 3 7 0 55 3 7 0 60 3 7 0 65 3 7 0 66 14 110 0 70 0 74 0 72 3 7 0 77 3 7 0 87 0 74 0 89 3 7 0 95 3 11 0 99 3 7 0 100 0 74 0 105 0 74 0 109 0 74 0 111 0 74 0 112 0 74 0 113 3 7 0 114 3 7 0 117 0 74 0 118 3 7 0 121 0 74 0 124 3 7 0 125 3 7 0 134 3 7 0 135 0 74 0 138 3 7 0 139 0 74 0 142 3 7 0 143 0 74 0 144 3 7 0 158 25 157 1 204 25 161 2 96] 
#[0 14 114 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 118 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 138 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 142 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 146 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 150 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 154 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 25 165 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 14 158 0 156 0 10 0 158 25 169 0 192 25 169 1 203 25 169 1 224 25 169 1 227 25 169 1 231 4 1 1 232 4 5 1 233 25 169 1 249 25 169 2 8 25 169 2 12 25 169 2 16 25 169 2 25 25 169 2 30 25 169 2 33 25 169 2 39 25 169 2 44 25 169 2 59 25 169 2 67 25 21 2 75 0 93 2 76 0 97 2 77 0 101 2 78 25 169 2 115] 
#[0 14 162 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 0 74 0 8 1 63 0 41 1 67 0 46 0 74 0 49 0 74 0 52 0 74 0 55 0 74 0 57 0 74 0 58 0 74 0 60 0 74 0 62 0 74 0 65 0 74 0 66 0 74 0 68 0 74 0 70 3 15 0 72 0 74 0 76 0 74 0 77 0 74 0 87 0 74 0 88 1 75 0 89 0 74 0 95 1 79 0 99 0 74 0 100 1 83 0 105 0 74 0 108 1 87 0 109 1 91 0 111 1 95 0 112 1 99 0 113 0 74 0 114 0 74 0 117 1 103 0 118 0 74 0 121 1 107 0 124 0 74 0 125 0 74 0 126 0 74 0 134 0 74 0 135 3 19 0 138 0 74 0 139 1 115 0 142 0 74 0 143 1 119 0 144 0 74 0 158 25 177 1 204 8 113 2 17 8 117 2 31 25 181 2 102 8 129 2 125] 
#[0 14 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 174 0 9 0 15 0 38] 
#[1 14 178 0 80 14 178 0 83 25 185 0 90 14 178 0 92 14 178 0 93 14 178 0 103 14 178 0 119 14 178 0 146] 
#[0 25 189 0 9] 
#[0 25 193 0 9] 
#[0 14 182 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 186 0 25 0 32 0 149] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 25 197 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 25 197 1 75 25 197 1 76 25 197 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 25 197 1 92 3 209 1 93 25 197 1 112 25 197 1 115 25 197 1 116 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 14 190 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[0 14 194 0 25 0 32 0 149] 
#[0 14 198 0 25 0 32 0 149] 
#[0 14 202 0 15 0 154] 
#[0 14 206 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 210 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 214 0 15 0 25 0 32 0 146 0 149] 
#[0 25 201 0 8] 
#[0 14 218 0 15 0 25 0 32 0 146 0 149] 
#[0 14 222 0 15 0 25 0 32 0 146 0 149] 
#[0 3 23 0 15 0 25 0 32 0 146 0 149] 
#[0 14 226 0 15 0 25 0 32 0 146 0 149] 
#[0 14 230 0 15 0 25 0 32 0 146 0 149] 
#[0 14 234 0 15 0 25 0 32 0 146 0 149] 
#[0 14 238 0 25 0 32 0 146 0 149] 
#[1 25 205 0 15 14 242 0 25 14 242 0 32 14 242 0 146 14 242 0 149] 
#[1 25 209 0 15 14 246 0 25 14 246 0 32 14 246 0 146 14 246 0 149] 
#[0 14 250 0 15 0 25 0 32 0 146 0 149] 
#[0 14 254 0 25 0 32 0 146 0 149] 
#[0 15 2 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 6 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158] 
#[0 15 10 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 14 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 15 18 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 29 0 8 8 241 0 41 8 241 0 46 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 8 241 0 72 1 169 0 77 1 169 0 87 8 241 0 89 1 169 0 95 8 241 0 99 5 65 0 100 8 241 0 105 8 241 0 109 8 241 0 111 8 241 0 112 8 241 0 113 1 1 0 114 1 169 0 117 8 241 0 118 1 169 0 121 8 241 0 124 5 77 0 125 1 169 0 134 1 169 0 135 8 241 0 138 1 169 0 139 8 241 0 142 1 81 0 143 8 241 0 144 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 25 213 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 25 213 0 211 1 189 0 212 25 213 0 214 1 197 0 215 25 217 1 140 3 13 1 208 12 89 2 13 8 241 2 102 3 29 2 104 3 53 2 124 8 241 2 125] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 25 221 0 70 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 1 0 114 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 25 229 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 25 229 0 211 1 189 0 212 25 229 0 214 1 197 0 215 25 225 1 140 3 13 1 208 25 229 1 234 3 29 2 104 7 13 2 124] 
#[0 15 22 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 26 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 5 74 0 8 5 74 0 41 5 74 0 46 5 74 0 49 5 74 0 52 5 74 0 55 5 74 0 60 5 74 0 65 5 74 0 66 5 74 0 71 5 74 0 72 5 74 0 77 5 74 0 85 5 74 0 87 5 74 0 89 5 74 0 95 5 74 0 99 5 74 0 100 5 74 0 105 5 74 0 109 5 74 0 111 5 74 0 112 5 74 0 113 5 74 0 117 5 74 0 118 5 74 0 121 1 171 0 124 5 74 0 125 5 74 0 134 5 74 0 135 3 27 0 138 5 74 0 139 5 74 0 142 5 74 0 143 5 74 0 144 5 74 0 158 12 53 2 102] 
#[1 1 191 0 8 8 241 0 41 8 241 0 46 1 195 0 49 1 199 0 52 1 203 0 55 3 174 0 57 12 65 0 58 1 207 0 60 8 209 0 62 1 211 0 65 1 215 0 66 8 213 0 68 12 69 0 70 8 241 0 72 25 233 0 76 1 219 0 77 1 223 0 87 3 174 0 88 8 241 0 89 1 227 0 95 8 241 0 99 1 231 0 100 8 241 0 105 12 97 0 108 8 241 0 109 8 241 0 111 8 241 0 112 8 241 0 113 12 73 0 114 1 235 0 117 8 241 0 118 1 239 0 121 8 241 0 124 1 243 0 125 3 174 0 126 1 247 0 134 1 251 0 135 8 241 0 138 1 255 0 139 8 241 0 142 2 3 0 143 8 241 0 144 2 7 0 158 1 141 0 193 1 137 0 195 1 141 0 196 12 81 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 12 81 0 211 1 189 0 212 12 81 0 214 1 197 0 215 12 85 1 140 3 13 1 208 12 89 2 13 12 93 2 26 12 97 2 97 8 241 2 102 3 29 2 104 3 53 2 124 8 241 2 125] 
#[1 5 130 0 8 5 130 0 41 5 130 0 46 5 130 0 49 5 130 0 52 5 130 0 55 5 130 0 60 5 130 0 65 5 130 0 66 5 130 0 71 3 31 0 72 5 130 0 77 5 130 0 85 5 130 0 87 5 130 0 89 5 130 0 95 5 130 0 99 5 130 0 100 5 130 0 105 5 130 0 109 5 130 0 111 5 130 0 112 5 130 0 113 5 130 0 117 5 130 0 118 5 130 0 121 2 15 0 124 5 130 0 125 5 130 0 134 5 130 0 135 5 130 0 138 5 130 0 139 5 130 0 142 5 130 0 143 5 130 0 144 5 130 0 158] 
#[0 25 241 0 158] 
#[0 15 30 0 25 0 32 0 149] 
#[0 15 34 0 25 0 32 0 149] 
#[0 25 245 0 25] 
#[0 25 249 0 9] 
#[1 25 89 0 99 5 93 0 158 1 141 0 193 25 109 0 195 1 141 0 196 25 109 0 213 25 113 1 208 25 253 1 217 25 129 1 218 26 1 1 219] 
#[1 25 89 0 99 5 93 0 158 1 141 0 193 25 109 0 195 1 141 0 196 25 109 0 213 26 5 1 208 26 9 1 218 26 13 1 219] 
#[1 15 149 0 128 18 25 0 158 1 141 0 193 15 161 0 195 1 141 0 196 15 161 0 213 15 173 1 236] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 26 17 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 26 17 0 211 1 189 0 212 26 17 0 214 1 197 0 215 3 13 1 208 15 185 2 13 3 29 2 104 3 53 2 124] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 26 21 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 26 21 0 211 1 189 0 212 26 21 0 214 1 197 0 215 3 13 1 208 3 29 2 104 3 53 2 124] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 26 25 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 26 25 0 211 1 189 0 212 26 25 0 214 1 197 0 215 3 13 1 208 26 25 1 235 3 29 2 104 3 53 2 124] 
#[1 26 29 0 158 26 33 2 57] 
#[1 5 29 0 8 5 33 0 49 1 169 0 52 1 169 0 55 1 169 0 60 1 169 0 65 0 201 0 66 1 169 0 77 1 169 0 87 1 169 0 95 5 65 0 100 1 169 0 117 1 169 0 121 5 77 0 125 1 169 0 134 1 169 0 135 1 169 0 139 1 81 0 143 5 93 0 158 1 141 0 193 1 137 0 195 1 141 0 196 26 41 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 26 41 0 211 1 189 0 212 26 41 0 214 1 197 0 215 3 13 1 208 3 29 2 104 26 41 2 116 3 53 2 124] 
#[0 16 5 0 124] 
#[0 15 38 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 15 42 0 156] 
#[0 15 46 0 25 0 32 0 146 0 149] 
#[1 26 45 0 15 15 50 0 25 15 50 0 32 15 50 0 146 15 50 0 149] 
#[0 15 54 0 25 0 32 0 146 0 149] 
#[0 15 58 0 15 0 25 0 32 0 146 0 149] 
#[0 15 62 0 15 0 25 0 32 0 146 0 149] 
#[0 15 66 0 25 0 32 0 146 0 149] 
#[1 15 149 0 128 18 25 0 158 1 141 0 193 15 161 0 195 1 141 0 196 15 161 0 213 18 29 1 236] 
#[0 26 49 0 158] 
#[1 26 29 0 158 26 53 2 57] 
#[1 9 194 0 8 14 229 0 26 26 57 1 205 26 57 1 206] 
#[0 15 70 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 15 74 0 158] 
#[1 26 61 0 158 26 65 2 117 26 69 2 118] 
#[1 25 89 0 99 5 93 0 158 1 141 0 193 25 109 0 195 1 141 0 196 25 109 0 213 26 5 1 208 26 9 1 218 26 73 1 219] 
#[0 26 77 0 25] 
#[0 15 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 26 81 0 8] 
#[0 26 85 0 37] 
#[1 26 89 0 25 26 61 0 158 26 93 2 118] 
#[0 15 82 0 25 0 158] 
#[0 15 86 0 25 0 32 0 146 0 149] 
#[0 15 90 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 0 10 0 8 8 242 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 26 97 1 239 17 129 1 240 17 133 1 241 17 137 1 242 17 141 1 248 17 145 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 105 0 1 0 109 0 5 3 57 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 61 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 65 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 21 0 73 0 213 0 77 3 69 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 25 0 125 1 33 0 128 3 73 0 129 3 21 0 130 1 49 0 133 1 53 0 134 1 57 0 135 3 77 0 136 1 69 0 139 1 77 0 141 1 81 0 143 1 97 0 153 3 81 0 158 1 105 0 159 1 109 0 160 1 113 0 161 1 117 0 162 0 22 0 163 1 121 0 166 0 26 0 167 1 125 0 170 1 129 0 171 1 133 0 193 1 137 0 195 1 141 0 196 3 225 0 198 1 149 0 199 1 149 0 200 1 181 0 201 1 181 0 202 1 181 0 206 1 169 0 207 1 169 0 208 1 169 0 209 1 181 0 210 3 225 0 211 1 189 0 212 3 225 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 105 1 52 1 205 1 53 1 205 1 58 3 105 1 59 3 105 1 60 3 105 1 61 3 105 1 62 3 129 1 63 3 133 1 64 3 137 1 65 3 141 1 66 3 145 1 67 3 149 1 68 3 153 1 69 3 157 1 70 3 161 1 71 3 165 1 72 3 169 1 73 3 169 1 74 26 101 1 75 26 101 1 76 26 101 1 77 1 205 1 78 3 189 1 79 3 193 1 81 3 197 1 87 3 201 1 89 26 101 1 92 3 209 1 93 26 101 1 112 26 101 1 115 26 101 1 116 26 101 1 117 3 225 1 151 3 229 1 152 3 13 1 208 1 205 2 93 3 21 2 94 3 29 2 104 3 105 2 107 1 205 2 108 3 105 2 109 1 205 2 110 3 53 2 124] 
#[0 15 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 15 98 0 25 0 158] 
#[0 26 105 0 9] 
#[0 26 109 0 38] 
#[1 12 170 0 25 12 170 0 32 22 249 0 146 12 170 0 149 26 113 1 212 23 1 1 213 23 5 1 214] 
#[0 15 102 0 25 0 158] 
#[1 8 37 0 25 8 41 0 32 1 93 0 149 8 45 1 121 26 117 1 237] 
#[0 15 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158]
	).
]

{ #category : #private }
CSharpParser >> actionsForCurrentToken [
	| actions |
	actions := super actionsForCurrentToken.
	actions isEmpty
		ifTrue: [ (currentToken ids includes: scanner rightBraceId)
				ifTrue: [ | i scannerState stackItem |
					i := nodeStack size.
					scannerState := nil.
					[ i > 0 and: [ scannerState isNil ] ]
						whileTrue: [ stackItem := nodeStack at: i.
							(stackItem = #interpolatedString or: [ stackItem = #interpolatedVerbatimString ])
								ifTrue: [ scannerState := stackItem ].
							i := i - 1 ].
					scannerState notNil
						ifTrue: [ self scope: scannerState.
							self position: currentToken startPosition - 1.
							currentToken := nil.
							self getNextToken.
							self scope: #default.
							(currentToken ids includes: scanner rightBraceId)
								ifTrue: [ ^ actions ].
							^ self actionsForCurrentToken ] ].
			(currentToken ids includes: scanner gtgtId)
				ifTrue: [ currentToken := currentToken class value: '>' start: currentToken startPosition ids: (Array with: scanner gtId).
					self position: currentToken startPosition.
					actions := super actionsForCurrentToken ] ].
	^ actions
]

{ #category : #accessing }
CSharpParser >> duplicateState [
	Transcript
		print: currentToken;
		cr;
		flush.
	^ super duplicateState
]

{ #category : #accessing }
CSharpParser >> parse [
	| node |
	node := super parse.
	(node isKindOf: SmaCCParseNode)
		ifTrue: [ node
				attributeNamed: #preprocessorDirectives
				put: scanner preprocessorDirectives ].
	^ node
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForLocalFunctionHeader1: nodes [
	| result |
	result := nodes at: 3.
	result addFirstTokens: (nodes at: 1) to: result modifiers.
	result returnType: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForRefExpression1: nodes [
	| result |
	result := CSRefExpressionNode new.
	result refToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForRefLocalFunctionHeader1: nodes [
	| result |
	result := nodes at: 4.
	result addFirstTokens: (nodes at: 1) to: result modifiers.
	result refToken: ((nodes at: 2) at: 1).
	result readonlyToken: ((nodes at: 2) at: 2).
	result returnType: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForRefMethodHeader1: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result returnType: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result typeParameters: (nodes at: 6).
	result leftParenToken: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result parameters.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParenToken: (nodes at: 9).
	result addNodes: (nodes at: 10) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForScanFormat1: nodes [
	^ self scanFormat
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForStartInterpolatedString1: nodes [
	^ #interpolatedString
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForStartInterpolatedVerbatimString1: nodes [
	^ #interpolatedVerbatimString
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForVarType1: nodes [
	| result |
	result := CSVarTypeNode new.
	result varToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor______Identifier___type_argument_list__typeArguments__1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor______Identifier___type_argument_list__typeArguments___1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor______Identifier___type_argument_list__typeArguments___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_____tuple_type_element__element___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_____tuple_type_element__element___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_attribute_arguments1: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_attribute_arguments2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 4).
	result at: 2 put: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_attribute_target_specifier1: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_class_base1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_explicit_anonymous_function_paramenter_list1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_extern_alias_directives1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_extern_alias_directives2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_generic_dimension_specifier1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_interface_base1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_property_initializer1: nodes [
	| result |
	result := Array new: 3.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_query_body_clauses1: nodes [
	| result |
	result := Array new: 19.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFor_query_continuation1: nodes [
	| result |
	result := Array new: 24.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 20 put: (OrderedCollection new: 2).
	result at: 21 put: (OrderedCollection new: 2).
	result at: 22 put: (OrderedCollection new: 2).
	result at: 23 put: (OrderedCollection new: 2).
	result at: 24 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForaccessor_declarations2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForaccessor_modifiers5: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForadd_accessor_declaration1: nodes [
	| result |
	result := CSAddAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addToken: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_method_expression1: nodes [
	| result |
	result := CSAnonymousMethodExpressionNode new.
	result delegateToken: (nodes at: 1).
	result signature: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_method_expression2: nodes [
	| result |
	result := CSAnonymousMethodExpressionNode new.
	result asyncToken: (nodes at: 1).
	result delegateToken: (nodes at: 2).
	result signature: (nodes at: 3).
	result block: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_object_creation_expression1: nodes [
	| result |
	result := CSAnonymousObjectCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result leftBraceToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result declarators.
	result addTokens: ((nodes at: 2) at: 3) to: result commaTokens.
	result rightBraceToken: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForanonymous_object_initializer2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument1: nodes [
	| result |
	result := CSArgumentNode new.
	result identifier: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result expression: ((nodes at: 2) at: 1).
	result inToken: ((nodes at: 2) at: 2).
	result refToken: ((nodes at: 2) at: 3).
	result outToken: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForargument_value4: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_creation_expression1: nodes [
	| result |
	result := CSArrayCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracketToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result rankSpecifiers.
	result arrayInitializer: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_creation_expression2: nodes [
	| result |
	result := CSArrayCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result arrayInitializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_creation_expression3: nodes [
	| result |
	result := CSArrayCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result rankSpecifiers.
	result arrayInitializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_initializer1: nodes [
	| result |
	result := CSArrayInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_initializer2: nodes [
	| result |
	result := CSArrayInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result commaTokens.
	result rightBraceToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForarray_type1: nodes [
	| result |
	result := CSArrayTypeNode new.
	result type: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result rankSpecifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForassignment1: nodes [
	| result |
	result := CSAssignmentNode new.
	result lhs: (nodes at: 1).
	result operator: ((nodes at: 2) at: 1).
	result refToken: ((nodes at: 2) at: 2).
	result rhs: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute1: nodes [
	| result |
	result := CSAttributeValueNode new.
	result name: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result rightParen: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 2) at: 3) to: result arguments.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute_arguments2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute_section1: nodes [
	| result |
	result := CSAttributeNode new.
	result leftBracket: (nodes at: 1).
	result target: ((nodes at: 2) at: 1).
	result colon: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result attributeValues.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForattribute_section2: nodes [
	| result |
	result := CSAttributeNode new.
	result leftBracket: (nodes at: 1).
	result target: ((nodes at: 2) at: 1).
	result colon: ((nodes at: 2) at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result attributeValues.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result commas.
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForawait_expression1: nodes [
	| result |
	result := CSAwaitExpressionNode new.
	result awaitToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbase_access1: nodes [
	| result |
	result := CSBaseAccessNode new.
	result baseToken: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result identifier: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbase_access2: nodes [
	| result |
	result := CSBaseAccessNode new.
	result baseToken: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbinary_operator_declarator1: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	self add: (nodes at: 5) to: (result at: 5).
	result at: 6 put: (nodes at: 6).
	self add: (nodes at: 7) to: (result at: 5).
	result at: 7 put: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForblock1: nodes [
	| result |
	result := CSBlockStatementNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForbreak_statement1: nodes [
	| result |
	result := CSBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcast_expression1: nodes [
	| result |
	result := CSCastExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result type: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForchecked_expression1: nodes [
	| result |
	result := CSCheckedExpressionNode new.
	result checkedToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForchecked_statement1: nodes [
	| result |
	result := CSCheckedStatementNode new.
	result checkedToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_base1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_base2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForclass_declaration1: nodes [
	| result |
	result := CSClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result classToken: (nodes at: 4).
	result name: (nodes at: 5).
	result typeParameters: (nodes at: 6).
	result colonToken: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result supertypes.
	result commaToken: ((nodes at: 7) at: 3).
	result addTokens: ((nodes at: 7) at: 4) to: result commas.
	result addNodes: (nodes at: 8) to: result constraintClauses.
	result leftBraceToken: ((nodes at: 9) at: 1).
	result addNodes: ((nodes at: 9) at: 2) to: result declarations.
	result rightBraceToken: ((nodes at: 9) at: 3).
	result semicolon: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcollection_initializer1: nodes [
	| result |
	result := CSCollectionInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcollection_initializer2: nodes [
	| result |
	result := CSCollectionInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result commaTokens.
	result rightBraceToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcompilation_unit1: nodes [
	| result |
	result := CSCompilationUnitNode new.
	result addNodes: (nodes at: 1) to: result directives.
	result addNodes: (nodes at: 2) to: result directives.
	result addNodes: (nodes at: 3) to: result _attributes.
	result addNodes: (nodes at: 4) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconditional_expression3: nodes [
	| result |
	result := CSConditionalExpressionNode new.
	result booleanExpression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colonToken: (nodes at: 4).
	result falseExpression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconst_declarator1: nodes [
	| result |
	result := CSConstantDeclaratorNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstant_declaration1: nodes [
	| result |
	result := CSConstantDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result constToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result declarators.
	result addTokens: ((nodes at: 5) at: 2) to: result commaTokens.
	result semicolonToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstant_declarator1: nodes [
	| result |
	result := CSConstantDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_constraint1: nodes [
	| result |
	result := CSConstructorConstraintNode new.
	result newToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_declaration1: nodes [
	| result |
	result := CSConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result identifierToken: ((nodes at: 3) at: 1).
	result leftParenToken: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result parameters.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result rightParenToken: ((nodes at: 3) at: 5).
	result initializer: ((nodes at: 3) at: 6).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_declarator1: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 4).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_initializer1: nodes [
	| result |
	result := CSConstructorInitializerNode new.
	result colonToken: (nodes at: 1).
	result baseToken: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconstructor_initializer2: nodes [
	| result |
	result := CSConstructorInitializerNode new.
	result colonToken: (nodes at: 1).
	result thisToken: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForcontinue_statement1: nodes [
	| result |
	result := CSContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconversion_operator_declarator1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForconversion_operator_declarator2: nodes [
	| result |
	result := Array new: 7.
	result at: 7 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordeclaration_expression1: nodes [
	| result |
	result := CSDeclarationExpressionNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordeclaration_statement1: nodes [
	| result |
	result := CSDeclarationStatementNode new.
	result declaration: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordeconstruction_element2: nodes [
	| result |
	result := CSVariableDeclaratorNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordeconstruction_expression1: nodes [
	| result |
	result := CSDeconstructionExpressionNode new.
	result type: (nodes at: 1).
	result tuple: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordeconstruction_tuple1: nodes [
	| result |
	result := CSDeconstructionTupleNode new.
	result leftParen: (nodes at: 1).
	result addNode: (nodes at: 2) to: result elements.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result elements.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordefault_value_expression1: nodes [
	| result |
	result := CSDefaultValueExpressionNode new.
	result defaultToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordefault_value_expression2: nodes [
	| result |
	result := CSDefaultValueExpressionNode new.
	result defaultToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_creation_expression1: nodes [
	| result |
	result := CSDelegateCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result expression: (nodes at: 4).
	result rightParenToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_declaration1: nodes [
	| result |
	result := CSDelegateDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result delegateToken: (nodes at: 3).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result leftParen: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result parameters.
	result addTokens: ((nodes at: 5) at: 4) to: result commas.
	result rightParen: ((nodes at: 5) at: 5).
	result semicolon: ((nodes at: 5) at: 6).
	result typeParameters: ((nodes at: 5) at: 7).
	result addNodes: ((nodes at: 5) at: 8) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_declaration2: nodes [
	| result |
	result := CSDelegateDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result delegateToken: (nodes at: 3).
	result refToken: ((nodes at: 4) at: 1).
	result readonlyToken: ((nodes at: 4) at: 2).
	result type: (nodes at: 5).
	result name: ((nodes at: 6) at: 1).
	result leftParen: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result parameters.
	result addTokens: ((nodes at: 6) at: 4) to: result commas.
	result rightParen: ((nodes at: 6) at: 5).
	result semicolon: ((nodes at: 6) at: 6).
	result typeParameters: ((nodes at: 6) at: 7).
	result addNodes: ((nodes at: 6) at: 8) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_header1: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 4).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordelegate_header2: nodes [
	| result |
	result := Array new: 8.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 7 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 8).
	result at: 6 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordependent_access1: nodes [
	| result |
	result := CSMemberAccessNode new.
	result periodToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeArguments: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordependent_access2: nodes [
	| result |
	result := CSElementAccessNode new.
	result leftBracket: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordependent_access3: nodes [
	| result |
	result := CSInvocationAccessNode new.
	result leftParen: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result arguments.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFordo_statement1: nodes [
	| result |
	result := CSDoStatementNode new.
	result doToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result whileToken: (nodes at: 3).
	result leftParenToken: (nodes at: 4).
	result expression: (nodes at: 5).
	result rightParenToken: (nodes at: 6).
	result semicolonToken: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForelement_access1: nodes [
	| result |
	result := CSElementAccessNode new.
	result baseExpression: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForelement_initializer1: nodes [
	| result |
	result := CSElementInitializerNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForelement_initializer2: nodes [
	| result |
	result := CSElementInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result expressions.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForempty_statement1: nodes [
	| result |
	result := CSEmptyStatementNode new.
	result semicolonToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForenum_declaration1: nodes [
	| result |
	result := CSEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result enumToken: (nodes at: 3).
	result name: (nodes at: 4).
	result colonToken: ((nodes at: 5) at: 1).
	result typeToken: ((nodes at: 5) at: 2).
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result declarations.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result rightBrace: ((nodes at: 6) at: 4).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForenum_member_declaration1: nodes [
	| result |
	result := CSEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForenum_member_declaration2: nodes [
	| result |
	result := CSEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result name: (nodes at: 2).
	result equal: (nodes at: 3).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForevent_declaration1: nodes [
	| result |
	result := CSEventDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result eventToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result declarators.
	result addTokens: ((nodes at: 5) at: 2) to: result commaTokens.
	result semicolonToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForevent_declaration2: nodes [
	| result |
	result := CSEventDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result eventToken: (nodes at: 3).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result leftBraceToken: (nodes at: 6).
	result addDeclaration: ((nodes at: 7) at: 1).
	result removeDeclaration: ((nodes at: 7) at: 2).
	result rightBraceToken: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexception_filter1: nodes [
	| result |
	result := CSExceptionFilterNode new.
	result whenToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicit_anonymous_function_paramenter1: nodes [
	| result |
	result := CSAnonymousFunctionParameterNode new.
	result modifier: (nodes at: 1).
	result type: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicit_anonymous_function_paramenter_list2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicit_anonymous_function_signature1: nodes [
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
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declaration1: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result type: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result declarators.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declarator1: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declarator2: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexplicitly_typed_local_variable_declarators1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForexpression_statement1: nodes [
	| result |
	result := CSExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForextern_alias_directive1: nodes [
	| result |
	result := CSExternAliasDirectiveNode new.
	result externToken: (nodes at: 1).
	result aliasToken: (nodes at: 2).
	result identifierToken: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForextern_alias_directives1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForextern_alias_directives2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfield_declaration1: nodes [
	| result |
	result := CSFieldDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result type: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result declarators.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result semicolonToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfinalizer_declaration1: nodes [
	| result |
	result := CSFinalizerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addToken: (nodes at: 2) to: result modifiers.
	result tildeToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result leftParenToken: (nodes at: 5).
	result rightParenToken: (nodes at: 6).
	result body: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfinalizer_declaration2: nodes [
	| result |
	result := CSFinalizerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addToken: (nodes at: 2) to: result modifiers.
	result addToken: (nodes at: 3) to: result modifiers.
	result tildeToken: (nodes at: 4).
	result identifierToken: (nodes at: 5).
	result leftParenToken: (nodes at: 6).
	result rightParenToken: (nodes at: 7).
	result body: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfinally_clause1: nodes [
	| result |
	result := CSFinallyClauseNode new.
	result finallyToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_parameter1: nodes [
	| result |
	result := CSFixedParameterNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result type: (nodes at: 3).
	result name: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result expression: ((nodes at: 5) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_pointer_declarator1: nodes [
	| result |
	result := CSFixedPointerDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result andToken: ((nodes at: 3) at: 1).
	result expression: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_size_buffer_declaration1: nodes [
	| result |
	result := CSFixedSizeBufferDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result fixedToken: (nodes at: 3).
	result type: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result declarators.
	result semicolonToken: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_size_buffer_declarator1: nodes [
	| result |
	result := CSFixedSizeBufferDeclaratorNode new.
	result name: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracketToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfixed_statement1: nodes [
	| result |
	result := CSFixedStatementNode new.
	result fixedToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result declarators.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	result statement: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfor_initializer2: nodes [
	| result |
	result := CSStatementListNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result expressions.
	result addTokens: ((nodes at: 1) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfor_statement1: nodes [
	| result |
	result := CSForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result initializer: (nodes at: 3).
	result addToken: (nodes at: 4) to: result semicolonTokens.
	result condition: (nodes at: 5).
	result addToken: (nodes at: 6) to: result semicolonTokens.
	result iterator: (nodes at: 7).
	result rightParenToken: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForforeach_statement1: nodes [
	| result |
	result := CSForeachStatementNode new.
	result foreachToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result name: (nodes at: 4).
	result inToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result rightParenToken: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForforeach_statement2: nodes [
	| result |
	result := CSForeachStatementNode new.
	result foreachToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result name: (nodes at: 5).
	result inToken: (nodes at: 6).
	result expression: (nodes at: 7).
	result rightParenToken: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForfrom_clause1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgeneral_catch_clause1: nodes [
	| result |
	result := CSCatchClauseNode new.
	result catchToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgeneric_dimension_specifier1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForget_accessor_declaration1: nodes [
	| result |
	result := CSGetAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result getToken: (nodes at: 3).
	result body: ((nodes at: 4) at: 1).
	result equalGreaterThanToken: ((nodes at: 4) at: 2).
	result expression: ((nodes at: 4) at: 3).
	result semicolonToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgoto_statement1: nodes [
	| result |
	result := CSGotoStatementNode new.
	result gotoToken: (nodes at: 1).
	result identifierToken: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgoto_statement2: nodes [
	| result |
	result := CSGotoStatementNode new.
	result gotoToken: (nodes at: 1).
	result caseToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForgoto_statement3: nodes [
	| result |
	result := CSGotoStatementNode new.
	result gotoToken: (nodes at: 1).
	result defaultToken: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForif_statement1: nodes [
	| result |
	result := CSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result thenStatement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForif_statement2: nodes [
	| result |
	result := CSIfStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result thenStatement: (nodes at: 5).
	result elseToken: (nodes at: 6).
	result elseStatement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicit_anonymous_function_parameter1: nodes [
	| result |
	result := CSAnonymousFunctionParameterNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicit_anonymous_function_signature2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicitly_typed_local_variable_declaration1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForimplicitly_typed_local_variable_declaration2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: ((nodes at: 1) at: 1).
	result at: 4 put: ((nodes at: 1) at: 2).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_body1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_body2: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	result at: 7 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declaration1: nodes [
	| result |
	result := CSIndexerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result returnType: ((nodes at: 3) at: 1).
	result thisToken: ((nodes at: 3) at: 2).
	result leftBracketToken: ((nodes at: 3) at: 3).
	result addNodes: ((nodes at: 3) at: 4) to: result parameters.
	result addTokens: ((nodes at: 3) at: 5) to: result commas.
	result rightBracketToken: ((nodes at: 3) at: 6).
	result type: ((nodes at: 3) at: 7).
	result periodToken: ((nodes at: 3) at: 8).
	result leftBraceToken: ((nodes at: 4) at: 1).
	result getAccessor: ((nodes at: 4) at: 2).
	result setAccessor: ((nodes at: 4) at: 3).
	result rightBraceToken: ((nodes at: 4) at: 4).
	result equalGreaterThanToken: ((nodes at: 4) at: 5).
	result expression: ((nodes at: 4) at: 6).
	result semicolonToken: ((nodes at: 4) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declaration2: nodes [
	| result |
	result := CSIndexerDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result addToken: ((nodes at: 3) at: 1) to: result refTokens.
	result readonlyToken: ((nodes at: 3) at: 2).
	result returnType: ((nodes at: 4) at: 1).
	result thisToken: ((nodes at: 4) at: 2).
	result leftBracketToken: ((nodes at: 4) at: 3).
	result addNodes: ((nodes at: 4) at: 4) to: result parameters.
	result addTokens: ((nodes at: 4) at: 5) to: result commas.
	result rightBracketToken: ((nodes at: 4) at: 6).
	result type: ((nodes at: 4) at: 7).
	result periodToken: ((nodes at: 4) at: 8).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result getAccessor: ((nodes at: 5) at: 2).
	result rightBraceToken: ((nodes at: 5) at: 3).
	result equalGreaterThanToken: ((nodes at: 5) at: 4).
	result addToken: ((nodes at: 5) at: 5) to: result refTokens.
	result expression: ((nodes at: 5) at: 6).
	result semicolonToken: ((nodes at: 5) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declarator1: nodes [
	| result |
	result := Array new: 8.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForindexer_declarator2: nodes [
	| result |
	result := Array new: 8.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 7 put: (nodes at: 2).
	result at: 8 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	self addAll: ((nodes at: 6) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 6) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinitializer_target1: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinitializer_target2: nodes [
	| result |
	result := Array new: 5.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 2 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_base1: nodes [
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
CSharpParser >> reduceActionForinterface_declaration1: nodes [
	| result |
	result := CSInterfaceDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result interfaceToken: (nodes at: 4).
	result name: (nodes at: 5).
	result typeParameters: (nodes at: 6).
	result colon: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result supertypes.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result addNodes: (nodes at: 8) to: result constraintClauses.
	result leftBrace: ((nodes at: 9) at: 1).
	result addNodes: ((nodes at: 9) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 9) at: 3).
	result semicolon: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_event_declaration1: nodes [
	| result |
	result := CSInterfaceEventDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result eventToken: (nodes at: 3).
	result type: (nodes at: 4).
	result name: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_method_declaration1: nodes [
	| result |
	result := CSInterfaceMethodDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result type: (nodes at: 3).
	result name: ((nodes at: 4) at: 1).
	result typeParameters: ((nodes at: 4) at: 2).
	result leftParen: ((nodes at: 4) at: 3).
	result addNodes: ((nodes at: 4) at: 4) to: result parameters.
	result addTokens: ((nodes at: 4) at: 5) to: result commas.
	result rightParen: ((nodes at: 4) at: 6).
	result addNodes: ((nodes at: 4) at: 7) to: result constraintClauses.
	result body: ((nodes at: 4) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_method_declaration2: nodes [
	| result |
	result := CSInterfaceMethodDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result modifier: (nodes at: 2).
	result refToken: ((nodes at: 3) at: 1).
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result typeParameters: ((nodes at: 5) at: 2).
	result leftParen: ((nodes at: 5) at: 3).
	result addNodes: ((nodes at: 5) at: 4) to: result parameters.
	result addTokens: ((nodes at: 5) at: 5) to: result commas.
	result rightParen: ((nodes at: 5) at: 6).
	result addNodes: ((nodes at: 5) at: 7) to: result constraintClauses.
	result body: ((nodes at: 5) at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterface_method_header1: nodes [
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
	result at: 6 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 7).
	result at: 8 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_regular_string1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_regular_string2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 2) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolated_string_expression1: nodes [
	| result |
	result := CSInterpolatedStringExpressionNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result stringParts.
	result addNodes: ((nodes at: 1) at: 2) to: result interpolations.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation1: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation2: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	result format: ((nodes at: 2) at: 1).
	result colon: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation3: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result constant: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinterpolation4: nodes [
	| result |
	result := CSInterpolationNode new.
	result expression: (nodes at: 1).
	result commaToken: (nodes at: 2).
	result constant: (nodes at: 3).
	result format: ((nodes at: 4) at: 1).
	result colon: ((nodes at: 4) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForinvocation_expression1: nodes [
	| result |
	result := CSInvocationExpressionNode new.
	result expression: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForjoin_clause1: nodes [
	| result |
	result := Array new: 9.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
	result at: 8 put: (nodes at: 8).
	result at: 9 put: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForjoin_into_clause1: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	result at: 6 put: (nodes at: 6).
	result at: 7 put: (nodes at: 7).
	result at: 8 put: (nodes at: 8).
	result at: 9 put: (nodes at: 9).
	result at: 10 put: (nodes at: 10).
	self add: (nodes at: 11) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlabeled_statement1: nodes [
	| result |
	result := CSLabeledStatementNode new.
	result identifierToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlambda_expression1: nodes [
	| result |
	result := CSLambdaExpressionNode new.
	result leftParenToken: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result parameters.
	result addTokens: ((nodes at: 1) at: 3) to: result commaTokens.
	result rightParenToken: ((nodes at: 1) at: 4).
	result equalGreaterThanToken: (nodes at: 2).
	result body: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlambda_expression2: nodes [
	| result |
	result := CSLambdaExpressionNode new.
	result asyncToken: (nodes at: 1).
	result leftParenToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result parameters.
	result addTokens: ((nodes at: 2) at: 3) to: result commaTokens.
	result rightParenToken: ((nodes at: 2) at: 4).
	result equalGreaterThanToken: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlet_clause1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral1: nodes [
	| result |
	result := CSBooleanLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral2: nodes [
	| result |
	result := CSIntegerLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral3: nodes [
	| result |
	result := CSRealLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral4: nodes [
	| result |
	result := CSCharacterLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral5: nodes [
	| result |
	result := CSStringLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForliteral6: nodes [
	| result |
	result := CSNullLiteralExpressionNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_constant_declaration1: nodes [
	| result |
	result := CSLocalConstantDeclarationNode new.
	result constToken: (nodes at: 1).
	result type: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result declarators.
	result addTokens: ((nodes at: 3) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_body2: nodes [
	| result |
	result := CSMethodBodyNode new.
	result equalGreaterThanToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_declaration2: nodes [
	| result |
	result := CSLocalFunctionDeclarationStatementNode new.
	result header: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_header1: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_function_header2: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result name: (nodes at: 1).
	result typeParameters: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result parameters.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_declaration1: nodes [
	| result |
	result := CSLocalVariableDeclarationNode new.
	result type: ((nodes at: 1) at: 1).
	result addNode: ((nodes at: 1) at: 2) to: result declarators.
	result refToken: ((nodes at: 1) at: 3).
	result readonlyToken: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlocal_variable_declaration3: nodes [
	| result |
	result := CSLocalVariableDeclarationNode new.
	result refToken: ((nodes at: 1) at: 1).
	result readonlyToken: ((nodes at: 1) at: 2).
	result type: ((nodes at: 1) at: 3).
	result addNodes: ((nodes at: 1) at: 4) to: result declarators.
	result addTokens: ((nodes at: 1) at: 5) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForlock_statement1: nodes [
	| result |
	result := CSLockStatementNode new.
	result lockToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_access1: nodes [
	| result |
	result := CSMemberAccessNode new.
	result expression: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result identifier: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_declarator1: nodes [
	| result |
	result := CSMemberDeclaratorNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_declarator2: nodes [
	| result |
	result := CSMemberDeclaratorNode new.
	result access: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_declarator5: nodes [
	| result |
	result := CSMemberDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_initializer1: nodes [
	| result |
	result := CSMemberInitializerNode new.
	result identifier: ((nodes at: 1) at: 1).
	result leftBracketToken: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result arguments.
	result addTokens: ((nodes at: 1) at: 4) to: result commaTokens.
	result rightBracketToken: ((nodes at: 1) at: 5).
	result equalToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_name1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormember_name2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_declaration2: nodes [
	| result |
	result := CSMethodDeclarationNode new.
	result header: (nodes at: 1).
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormethod_header1: nodes [
	| result |
	result := CSMethodHeaderNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result returnType: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result typeParameters: (nodes at: 6).
	result leftParenToken: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result parameters.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParenToken: (nodes at: 9).
	result addNodes: (nodes at: 10) to: result constraintClauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFormultiplicative_expression4: nodes [
	| result |
	result := CSBinaryExpressionNode new.
	result left: (nodes at: 1).
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamed_argument1: nodes [
	| result |
	result := CSNamedArgumentNode new.
	result name: (nodes at: 1).
	result equal: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamed_entity1: nodes [
	| result |
	result := CSNamedEntityNode new.
	result target: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result identifierTokens.
	result addNodes: ((nodes at: 2) at: 3) to: result typeArgumentses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamed_entity_target3: nodes [
	| result |
	result := CSBaseExpressionNode new.
	result baseToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornameof_expression1: nodes [
	| result |
	result := CSNameofExpressionNode new.
	result nameofToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result name: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_body1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	self addAll: (nodes at: 3) to: (result at: 2).
	self addAll: (nodes at: 4) to: (result at: 3).
	result at: 4 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_declaration1: nodes [
	| result |
	result := CSNamespaceDeclarationNode new.
	result namespaceToken: (nodes at: 1).
	result identifier: (nodes at: 2).
	result leftBraceToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result directives.
	result addNodes: ((nodes at: 3) at: 3) to: result declarations.
	result rightBraceToken: ((nodes at: 3) at: 4).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_or_type_name1: nodes [
	| result |
	result := CSTypeNameNode new.
	result name: (nodes at: 1).
	result typeArguments: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornamespace_or_type_name2: nodes [
	| result |
	result := CSTypeNameNode new.
	result namespace: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_element_access1: nodes [
	| result |
	result := CSElementAccessNode new.
	result baseExpression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result leftBracketToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_member_access1: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result expression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result periodToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result typeArguments: (nodes at: 5).
	result addNodes: (nodes at: 6) to: result accesses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornull_conditional_projection_initializer1: nodes [
	| result |
	result := CSNullConditionalMemberAccessNode new.
	result expression: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	result periodToken: (nodes at: 3).
	result identifierToken: (nodes at: 4).
	result typeArguments: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFornullable_value_type1: nodes [
	| result |
	result := CSNullableTypeNode new.
	result type: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_creation_expression1: nodes [
	| result |
	result := CSObjectCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 5).
	result initializer: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_creation_expression2: nodes [
	| result |
	result := CSObjectCreationExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_initializer1: nodes [
	| result |
	result := CSObjectInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBraceToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForobject_initializer2: nodes [
	| result |
	result := CSObjectInitializerNode new.
	result leftBraceToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result addToken: (nodes at: 3) to: result commaTokens.
	result rightBraceToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declaration1: nodes [
	| result |
	result := CSOperatorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result returnType: ((nodes at: 3) at: 1).
	result operatorToken: ((nodes at: 3) at: 2).
	result operator: ((nodes at: 3) at: 3).
	result leftParenToken: ((nodes at: 3) at: 4).
	result addNodes: ((nodes at: 3) at: 5) to: result parameters.
	result rightParenToken: ((nodes at: 3) at: 6).
	result commaToken: ((nodes at: 3) at: 7).
	result implicitToken: ((nodes at: 3) at: 8).
	result explicitToken: ((nodes at: 3) at: 9).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator1: nodes [
	| result |
	result := Array new: 9.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 6 put: ((nodes at: 1) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator2: nodes [
	| result |
	result := Array new: 9.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 7 put: ((nodes at: 1) at: 6).
	result at: 6 put: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForoperator_declarator3: nodes [
	| result |
	result := Array new: 9.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 1 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	result at: 6 put: ((nodes at: 1) at: 6).
	result at: 9 put: ((nodes at: 1) at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFororderby_clause1: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForordering1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForordering_direction2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFororderings1: nodes [
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
CSharpParser >> reduceActionFororderings2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	self add: ((nodes at: 3) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForparameter_array1: nodes [
	| result |
	result := CSArrayParameterNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result paramsToken: (nodes at: 2).
	result type: (nodes at: 3).
	result name: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForparenthesized_expression1: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result _leftParens.
	result addToken: (nodes at: 3) to: result _rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpointer_member_access1: nodes [
	| result |
	result := CSPointerMemberAccessNode new.
	result expression: (nodes at: 1).
	result arrowToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpointer_type1: nodes [
	| result |
	result := CSPointerTypeNode new.
	result type: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result timesTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpositional_argument1: nodes [
	| result |
	result := CSArgumentNode new.
	result identifier: ((nodes at: 1) at: 1).
	result colonToken: ((nodes at: 1) at: 2).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForpost_increment_expression1: nodes [
	| result |
	result := CSPostExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint1: nodes [
	| result |
	result := CSTypeConstraintNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint2: nodes [
	| result |
	result := CSPrimaryConstraintNode new.
	result classToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint3: nodes [
	| result |
	result := CSPrimaryConstraintNode new.
	result structToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForprimary_constraint4: nodes [
	| result |
	result := CSPrimaryConstraintNode new.
	result unmanagedToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_body1: nodes [
	| result |
	result := Array new: 9.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	result at: 3 put: ((nodes at: 2) at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 5 put: ((nodes at: 4) at: 1).
	result at: 6 put: ((nodes at: 4) at: 2).
	result at: 7 put: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_body2: nodes [
	| result |
	result := Array new: 9.
	result at: 8 put: (nodes at: 1).
	result at: 9 put: (nodes at: 2).
	result at: 7 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_declaration1: nodes [
	| result |
	result := CSPropertyDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result type: (nodes at: 3).
	result name: ((nodes at: 4) at: 1).
	result interface: ((nodes at: 4) at: 2).
	result periodToken: ((nodes at: 4) at: 3).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result getAccessor: ((nodes at: 5) at: 2).
	result setAccessor: ((nodes at: 5) at: 3).
	result rightBraceToken: ((nodes at: 5) at: 4).
	result equalToken: ((nodes at: 5) at: 5).
	result initializer: ((nodes at: 5) at: 6).
	result semicolon: ((nodes at: 5) at: 7).
	result equalGreaterThanToken: ((nodes at: 5) at: 8).
	result expression: ((nodes at: 5) at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForproperty_declaration2: nodes [
	| result |
	result := CSPropertyDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result addToken: ((nodes at: 3) at: 1) to: result refTokens.
	result readonlyToken: ((nodes at: 3) at: 2).
	result type: (nodes at: 4).
	result name: ((nodes at: 5) at: 1).
	result interface: ((nodes at: 5) at: 2).
	result periodToken: ((nodes at: 5) at: 3).
	result leftBraceToken: ((nodes at: 6) at: 1).
	result getAccessor: ((nodes at: 6) at: 2).
	result rightBraceToken: ((nodes at: 6) at: 3).
	result equalToken: ((nodes at: 6) at: 4).
	result initializer: ((nodes at: 6) at: 5).
	result semicolon: ((nodes at: 6) at: 6).
	result equalGreaterThanToken: ((nodes at: 6) at: 7).
	result addToken: ((nodes at: 6) at: 8) to: result refTokens.
	result expression: ((nodes at: 6) at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_alias_member1: nodes [
	| result |
	result := CSQualifiedAliasMemberNode new.
	result global: (nodes at: 1).
	result colonColonToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeArguments: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_alias_member_expression1: nodes [
	| result |
	result := CSTypeExpressionNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_identifier1: nodes [
	| result |
	result := CSQualifiedIdentifierNode new.
	result addToken: (nodes at: 1) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForqualified_identifier2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result periodTokens.
	result addToken: (nodes at: 3) to: result names.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body1: nodes [
	| result |
	result := Array new: 24.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 20 put: (OrderedCollection new: 2).
	result at: 21 put: (OrderedCollection new: 2).
	result at: 22 put: (OrderedCollection new: 2).
	result at: 23 put: (OrderedCollection new: 2).
	result at: 24 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 6) to: (result at: 6).
	self addAll: ((nodes at: 1) at: 7) to: (result at: 7).
	self addAll: ((nodes at: 1) at: 8) to: (result at: 8).
	self addAll: ((nodes at: 1) at: 9) to: (result at: 9).
	self addAll: ((nodes at: 1) at: 10) to: (result at: 10).
	self addAll: ((nodes at: 1) at: 11) to: (result at: 11).
	self addAll: ((nodes at: 1) at: 12) to: (result at: 12).
	self addAll: ((nodes at: 1) at: 13) to: (result at: 13).
	self addAll: ((nodes at: 1) at: 14) to: (result at: 14).
	self addAll: ((nodes at: 1) at: 15) to: (result at: 15).
	self addAll: ((nodes at: 1) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 1) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 1) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 1) at: 19) to: (result at: 19).
	self add: ((nodes at: 2) at: 1) to: (result at: 20).
	self add: ((nodes at: 2) at: 2) to: (result at: 5).
	self add: ((nodes at: 2) at: 3) to: (result at: 21).
	self add: ((nodes at: 2) at: 4) to: (result at: 22).
	self add: ((nodes at: 2) at: 5) to: (result at: 23).
	self add: ((nodes at: 2) at: 6) to: (result at: 24).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 15).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 5) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 6) to: (result at: 5).
	self addAll: ((nodes at: 3) at: 7) to: (result at: 6).
	self addAll: ((nodes at: 3) at: 8) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 9) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 10) to: (result at: 9).
	self addAll: ((nodes at: 3) at: 11) to: (result at: 10).
	self addAll: ((nodes at: 3) at: 12) to: (result at: 11).
	self addAll: ((nodes at: 3) at: 13) to: (result at: 12).
	self addAll: ((nodes at: 3) at: 14) to: (result at: 13).
	self addAll: ((nodes at: 3) at: 15) to: (result at: 14).
	self addAll: ((nodes at: 3) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 3) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 3) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 3) at: 19) to: (result at: 19).
	self addAll: ((nodes at: 3) at: 20) to: (result at: 20).
	self addAll: ((nodes at: 3) at: 21) to: (result at: 21).
	self addAll: ((nodes at: 3) at: 22) to: (result at: 22).
	self addAll: ((nodes at: 3) at: 23) to: (result at: 23).
	self addAll: ((nodes at: 3) at: 24) to: (result at: 24).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause1: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause2: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 6 put: ((nodes at: 1) at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 3).
	result at: 7 put: ((nodes at: 1) at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause3: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 8 put: ((nodes at: 1) at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause4: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 9 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 10 put: ((nodes at: 1) at: 5).
	result at: 11 put: ((nodes at: 1) at: 6).
	result at: 12 put: ((nodes at: 1) at: 7).
	result at: 13 put: ((nodes at: 1) at: 8).
	result at: 14 put: ((nodes at: 1) at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause5: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 9 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 1) at: 4).
	result at: 10 put: ((nodes at: 1) at: 5).
	result at: 11 put: ((nodes at: 1) at: 6).
	result at: 12 put: ((nodes at: 1) at: 7).
	result at: 13 put: ((nodes at: 1) at: 8).
	result at: 14 put: ((nodes at: 1) at: 9).
	result at: 15 put: ((nodes at: 1) at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clause6: nodes [
	| result |
	result := Array new: 19.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 16 put: ((nodes at: 1) at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 17).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 18).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 19).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clauses1: nodes [
	| result |
	result := Array new: 19.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 1) at: 5) to: (result at: 5).
	self add: ((nodes at: 1) at: 6) to: (result at: 6).
	self add: ((nodes at: 1) at: 7) to: (result at: 7).
	self add: ((nodes at: 1) at: 8) to: (result at: 8).
	self add: ((nodes at: 1) at: 9) to: (result at: 9).
	self add: ((nodes at: 1) at: 10) to: (result at: 10).
	self add: ((nodes at: 1) at: 11) to: (result at: 11).
	self add: ((nodes at: 1) at: 12) to: (result at: 12).
	self add: ((nodes at: 1) at: 13) to: (result at: 13).
	self add: ((nodes at: 1) at: 14) to: (result at: 14).
	self add: ((nodes at: 1) at: 15) to: (result at: 15).
	self add: ((nodes at: 1) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 1) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 1) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 1) at: 19) to: (result at: 19).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_body_clauses2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 5).
	self add: ((nodes at: 2) at: 6) to: (result at: 6).
	self add: ((nodes at: 2) at: 7) to: (result at: 7).
	self add: ((nodes at: 2) at: 8) to: (result at: 8).
	self add: ((nodes at: 2) at: 9) to: (result at: 9).
	self add: ((nodes at: 2) at: 10) to: (result at: 10).
	self add: ((nodes at: 2) at: 11) to: (result at: 11).
	self add: ((nodes at: 2) at: 12) to: (result at: 12).
	self add: ((nodes at: 2) at: 13) to: (result at: 13).
	self add: ((nodes at: 2) at: 14) to: (result at: 14).
	self add: ((nodes at: 2) at: 15) to: (result at: 15).
	self add: ((nodes at: 2) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 2) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 2) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 2) at: 19) to: (result at: 19).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_continuation1: nodes [
	| result |
	result := Array new: 24.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 20 put: (OrderedCollection new: 2).
	result at: 21 put: (OrderedCollection new: 2).
	result at: 22 put: (OrderedCollection new: 2).
	result at: 23 put: (OrderedCollection new: 2).
	result at: 24 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 5).
	self addAll: ((nodes at: 3) at: 5) to: (result at: 6).
	self addAll: ((nodes at: 3) at: 6) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 7) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 8) to: (result at: 9).
	self addAll: ((nodes at: 3) at: 9) to: (result at: 10).
	self addAll: ((nodes at: 3) at: 10) to: (result at: 11).
	self addAll: ((nodes at: 3) at: 11) to: (result at: 12).
	self addAll: ((nodes at: 3) at: 12) to: (result at: 13).
	self addAll: ((nodes at: 3) at: 13) to: (result at: 14).
	self addAll: ((nodes at: 3) at: 14) to: (result at: 15).
	self addAll: ((nodes at: 3) at: 15) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 16) to: (result at: 16).
	self addAll: ((nodes at: 3) at: 17) to: (result at: 17).
	self addAll: ((nodes at: 3) at: 18) to: (result at: 18).
	self addAll: ((nodes at: 3) at: 19) to: (result at: 19).
	self addAll: ((nodes at: 3) at: 20) to: (result at: 20).
	self addAll: ((nodes at: 3) at: 21) to: (result at: 21).
	self addAll: ((nodes at: 3) at: 22) to: (result at: 22).
	self addAll: ((nodes at: 3) at: 23) to: (result at: 23).
	self addAll: ((nodes at: 3) at: 24) to: (result at: 24).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForquery_expression1: nodes [
	| result |
	result := CSQueryExpressionNode new.
	result addToken: ((nodes at: 1) at: 1) to: result fromTokens.
	result addNode: ((nodes at: 1) at: 2) to: result types.
	result addToken: ((nodes at: 1) at: 3) to: result identifierTokens.
	result addToken: ((nodes at: 1) at: 4) to: result inTokens.
	result addNode: ((nodes at: 1) at: 5) to: result expressions.
	result addTokens: ((nodes at: 2) at: 1) to: result fromTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result types.
	result addTokens: ((nodes at: 2) at: 3) to: result identifierTokens.
	result addTokens: ((nodes at: 2) at: 4) to: result inTokens.
	result addNodes: ((nodes at: 2) at: 5) to: result expressions.
	result addTokens: ((nodes at: 2) at: 6) to: result letTokens.
	result addTokens: ((nodes at: 2) at: 7) to: result equalTokens.
	result addTokens: ((nodes at: 2) at: 8) to: result whereTokens.
	result addTokens: ((nodes at: 2) at: 9) to: result joinTokens.
	result addNodes: ((nodes at: 2) at: 10) to: result joinInExpressions.
	result addTokens: ((nodes at: 2) at: 11) to: result onTokens.
	result addNodes: ((nodes at: 2) at: 12) to: result joinOnExpressions.
	result addTokens: ((nodes at: 2) at: 13) to: result equalsTokens.
	result addNodes: ((nodes at: 2) at: 14) to: result joinEqualsExpressions.
	result addTokens: ((nodes at: 2) at: 15) to: result intoTokens.
	result addTokens: ((nodes at: 2) at: 16) to: result orderbyTokens.
	result addTokens: ((nodes at: 2) at: 17) to: result ascendingTokens.
	result addTokens: ((nodes at: 2) at: 18) to: result descendingTokens.
	result addTokens: ((nodes at: 2) at: 19) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 20) to: result selectTokens.
	result addTokens: ((nodes at: 2) at: 21) to: result groupTokens.
	result addNodes: ((nodes at: 2) at: 22) to: result groupExpressions.
	result addTokens: ((nodes at: 2) at: 23) to: result byTokens.
	result addNodes: ((nodes at: 2) at: 24) to: result groupByExpressions.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForrank_specifier1: nodes [
	| result |
	result := CSRankSpecifierNode new.
	result leftBracketToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_accessor_body1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_accessor_body2: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	result at: 5 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_accessor_body3: nodes [
	| result |
	result := Array new: 5.
	result at: 5 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_get_accessor_declaration1: nodes [
	| result |
	result := CSGetAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result getToken: (nodes at: 3).
	result body: ((nodes at: 4) at: 1).
	result equalGreaterThanToken: ((nodes at: 4) at: 2).
	result refToken: ((nodes at: 4) at: 3).
	result expression: ((nodes at: 4) at: 4).
	result semicolonToken: ((nodes at: 4) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_indexer_body1: nodes [
	| result |
	result := Array new: 7.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_indexer_body2: nodes [
	| result |
	result := Array new: 7.
	result at: 4 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	result at: 6 put: (nodes at: 3).
	result at: 7 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_kind1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_kind2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_function_body1: nodes [
	| result |
	result := CSMethodBodyNode new.
	result block: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_function_body2: nodes [
	| result |
	result := CSMethodBodyNode new.
	result equalGreaterThanToken: (nodes at: 1).
	result refToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_variable_declaration1: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: (nodes at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_local_variable_declarator1: nodes [
	| result |
	result := CSLocalVariableDeclaratorNode new.
	result name: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result refToken: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_method_body2: nodes [
	| result |
	result := CSMethodBodyNode new.
	result equalGreaterThanToken: (nodes at: 1).
	result refToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_method_body3: nodes [
	| result |
	result := CSMethodBodyNode new.
	result semicolonToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_property_body1: nodes [
	| result |
	result := Array new: 9.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: ((nodes at: 4) at: 1).
	result at: 5 put: ((nodes at: 4) at: 2).
	result at: 6 put: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForref_property_body2: nodes [
	| result |
	result := Array new: 9.
	result at: 7 put: (nodes at: 1).
	result at: 8 put: (nodes at: 2).
	result at: 9 put: (nodes at: 3).
	result at: 6 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForremove_accessor_declaration1: nodes [
	| result |
	result := CSRemoveAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result removeToken: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForreturn_statement1: nodes [
	| result |
	result := CSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForreturn_statement2: nodes [
	| result |
	result := CSReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result refToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForselect_or_group_clause1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForselect_or_group_clause2: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: ((nodes at: 1) at: 1).
	result at: 4 put: ((nodes at: 1) at: 2).
	result at: 5 put: ((nodes at: 1) at: 3).
	result at: 6 put: ((nodes at: 1) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForset_accessor_declaration1: nodes [
	| result |
	result := CSSetAccessorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result setToken: (nodes at: 3).
	result body: ((nodes at: 4) at: 1).
	result equalGreaterThanToken: ((nodes at: 4) at: 2).
	result expression: ((nodes at: 4) at: 3).
	result semicolonToken: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForsimple_name1: nodes [
	| result |
	result := CSSimpleNameNode new.
	result identifierToken: (nodes at: 1).
	result typeArguments: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForsimple_type2: nodes [
	| result |
	result := CSSimpleTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForsizeof_expression1: nodes [
	| result |
	result := CSSizeofExpressionNode new.
	result sizeofToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForspecific_catch_clause1: nodes [
	| result |
	result := CSCatchClauseNode new.
	result catchToken: (nodes at: 1).
	result leftParenToken: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	result name: ((nodes at: 2) at: 3).
	result rightParenToken: ((nodes at: 2) at: 4).
	result filter: (nodes at: 3).
	result block: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForspecific_catch_clause2: nodes [
	| result |
	result := CSCatchClauseNode new.
	result catchToken: (nodes at: 1).
	result filter: (nodes at: 2).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstackalloc_expression1: nodes [
	| result |
	result := CSStackallocExpressionNode new.
	result stackallocToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result expression: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstackalloc_expression2: nodes [
	| result |
	result := CSStackallocExpressionNode new.
	result stackallocToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result expression: (nodes at: 4).
	result rightBracket: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result initializers.
	result addTokens: ((nodes at: 6) at: 3) to: result commaTokens.
	result rightBrace: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_body2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_body3: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_declaration1: nodes [
	| result |
	result := CSStaticConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result staticToken: ((nodes at: 2) at: 1).
	result addTokens: ((nodes at: 2) at: 2) to: result modifiers.
	result identifierToken: (nodes at: 3).
	result leftParenToken: (nodes at: 4).
	result rightParenToken: (nodes at: 5).
	result block: ((nodes at: 6) at: 1).
	result equalGreaterThanToken: ((nodes at: 6) at: 2).
	result expression: ((nodes at: 6) at: 3).
	result semicolonToken: ((nodes at: 6) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers3: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers5: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers6: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstatic_constructor_modifiers7: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 2) to: (result at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstruct_declaration1: nodes [
	| result |
	result := CSStructDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result partialToken: (nodes at: 3).
	result structToken: (nodes at: 4).
	result identifierToken: (nodes at: 5).
	result typeParameters: (nodes at: 6).
	result colonToken: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result supertypes.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result addNodes: (nodes at: 8) to: result constraintClauses.
	result leftBraceToken: ((nodes at: 9) at: 1).
	result addNodes: ((nodes at: 9) at: 2) to: result declarations.
	result rightBraceToken: ((nodes at: 9) at: 3).
	result semicolon: (nodes at: 10).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForstruct_declaration2: nodes [
	| result |
	result := CSStructDeclarationNode new.
	result addNodes: (nodes at: 1) to: result _attributes.
	result addTokens: (nodes at: 2) to: result modifiers.
	result refToken: (nodes at: 3).
	result partialToken: (nodes at: 4).
	result structToken: (nodes at: 5).
	result identifierToken: (nodes at: 6).
	result typeParameters: (nodes at: 7).
	result colonToken: ((nodes at: 8) at: 1).
	result addNodes: ((nodes at: 8) at: 2) to: result supertypes.
	result addTokens: ((nodes at: 8) at: 3) to: result commas.
	result addNodes: (nodes at: 9) to: result constraintClauses.
	result leftBraceToken: ((nodes at: 10) at: 1).
	result addNodes: ((nodes at: 10) at: 2) to: result declarations.
	result rightBraceToken: ((nodes at: 10) at: 3).
	result semicolon: (nodes at: 11).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_label1: nodes [
	| result |
	result := CSSwitchLabelNode new.
	result caseToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result colonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_label2: nodes [
	| result |
	result := CSSwitchLabelNode new.
	result caseToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result whenToken: ((nodes at: 3) at: 1).
	result whenExpression: ((nodes at: 3) at: 2).
	result colonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_label3: nodes [
	| result |
	result := CSSwitchLabelNode new.
	result defaultToken: (nodes at: 1).
	result colonToken: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_section1: nodes [
	| result |
	result := CSSwitchSectionNode new.
	result addNodes: (nodes at: 1) to: result labels.
	result addNodes: (nodes at: 2) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForswitch_statement1: nodes [
	| result |
	result := CSSwitchStatementNode new.
	result switchToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result sections.
	result rightBraceToken: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForthis_access1: nodes [
	| result |
	result := CSThisAccessNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForthrow_expression1: nodes [
	| result |
	result := CSThrowExpressionNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForthrow_statement1: nodes [
	| result |
	result := CSThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortry_statement1: nodes [
	| result |
	result := CSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result clauses.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortry_statement2: nodes [
	| result |
	result := CSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result finally: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortry_statement3: nodes [
	| result |
	result := CSTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result clauses.
	result finally: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_element1: nodes [
	| result |
	result := CSTupleElementNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_element2: nodes [
	| result |
	result := CSTupleElementNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_expression1: nodes [
	| result |
	result := CSTupleExpressionNode new.
	result leftParen: (nodes at: 1).
	result addNode: (nodes at: 2) to: result elements.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result elements.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_type1: nodes [
	| result |
	result := CSTupleTypeNode new.
	result leftParen: (nodes at: 1).
	result addNode: (nodes at: 2) to: result elements.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result elements.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_type_element1: nodes [
	| result |
	result := CSTupleTypeElementNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortuple_type_element2: nodes [
	| result |
	result := CSTupleTypeElementNode new.
	result type: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_argument_list1: nodes [
	| result |
	result := CSTypeArgumentListNode new.
	result lessThanToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result greaterThanToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter1: nodes [
	| result |
	result := CSTypeNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints4: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints5: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints7: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 2).
	self add: (nodes at: 5) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_constraints_clause1: nodes [
	| result |
	result := CSTypeParameterConstraintsClauseNode new.
	result whereToken: (nodes at: 1).
	result parameter: (nodes at: 2).
	result colon: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result constraints.
	result addTokens: ((nodes at: 4) at: 2) to: result commaTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameter_list1: nodes [
	| result |
	result := CSTypeParameterListNode new.
	result lessThan: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result _attributes.
	result addNodes: ((nodes at: 2) at: 2) to: result parameters.
	result addTokens: ((nodes at: 2) at: 3) to: result commaTokens.
	result greaterThan: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameters1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortype_parameters2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self addAll: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionFortypeof_expression1: nodes [
	| result |
	result := CSTypeofExpressionNode new.
	result typeofToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result type: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunary_expression4: nodes [
	| result |
	result := CSPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunary_operator_declarator1: nodes [
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
CSharpParser >> reduceActionForunbound_type_name1: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result addToken: (nodes at: 1) to: result identifierTokens.
	result lessThanToken: ((nodes at: 2) at: 1).
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result gtToken: ((nodes at: 2) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name2: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result addToken: (nodes at: 1) to: result identifierTokens.
	result colonColonToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result identifierTokens.
	result lessThanToken: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result gtToken: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunbound_type_name3: nodes [
	| result |
	result := CSUnboundTypeNameNode new.
	result type: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result identifierTokens.
	result lessThanToken: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result gtToken: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunchecked_expression1: nodes [
	| result |
	result := CSUncheckedExpressionNode new.
	result uncheckedToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunchecked_statement1: nodes [
	| result |
	result := CSUncheckedStatementNode new.
	result uncheckedToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForunsafe_statement1: nodes [
	| result |
	result := CSUnsafeStatementNode new.
	result unsafeToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_alias_directive1: nodes [
	| result |
	result := CSUsingAliasDirectiveNode new.
	result usingToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result namespace: (nodes at: 4).
	result semicolonToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_namespace_directive1: nodes [
	| result |
	result := CSUsingNamespaceDirectiveNode new.
	result usingToken: (nodes at: 1).
	result namespace: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_statement1: nodes [
	| result |
	result := CSUsingStatementNode new.
	result usingToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForusing_static_directive1: nodes [
	| result |
	result := CSUsingStaticDirectiveNode new.
	result usingToken: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result namespace: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariable_declarator1: nodes [
	| result |
	result := CSVariableDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariable_declarator2: nodes [
	| result |
	result := CSVariableDeclaratorNode new.
	result identifierToken: (nodes at: 1).
	result equalToken: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariant_type_parameter_list1: nodes [
	| result |
	result := CSVariantTypeParameterListNode new.
	result lessThan: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result _attributes.
	result addTokens: ((nodes at: 2) at: 2) to: result annotations.
	result addNodes: ((nodes at: 2) at: 3) to: result parameters.
	result addTokens: ((nodes at: 2) at: 4) to: result commaTokens.
	result greaterThan: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariant_type_parameters1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvariant_type_parameters2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 4).
	self addAll: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	self add: (nodes at: 5) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForvoid_type1: nodes [
	| result |
	result := CSVoidTypeNode new.
	result voidToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForwhile_statement1: nodes [
	| result |
	result := CSWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForyield_statement1: nodes [
	| result |
	result := CSYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result returnToken: (nodes at: 2).
	result expression: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForyield_statement2: nodes [
	| result |
	result := CSYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result breakToken: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result
]

{ #category : #private }
CSharpParser >> scanFormat [
	| token |
	token := scanner scanFormat.
	self position: scanner position.
	^ token
]

{ #category : #private }
CSharpParser >> tryAllTokens [
	| id ids |
	id := scanner IdentifierId.
	ids := currentToken ids.
	^ (ids includes: id)
		ifTrue:
			[ ids first = id
				ifTrue: [ ^ false ].
			^ (self class keywords includes: currentToken value) not ]
		ifFalse: [ ^ false ]
]
