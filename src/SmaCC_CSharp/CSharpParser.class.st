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
#[ 0 14 1 1] 
#[ 0 14 1 25] 
#[ 0 14 1 69] 
#[ 0 29 0 30] 
#[ 0 126 5 129] 
#[ 1 54 1 58] 
#[ 1 66 6 81] 
#[ 1 70 6 85] 
#[ 1 74 6 97] 
#[ 1 110 6 105] 
#[ 1 122 6 117] 
#[ 1 122 6 121] 
#[ 1 122 6 125] 
#[ 1 122 6 137] 
#[ 1 126 6 141] 
#[ 1 246 6 213] 
#[ 1 254 6 217] 
#[ 2 214 3 69] 
#[ 0 153 2 214] 
#[ 0 161 2 214] 
#[ 0 165 2 214] 
#[ 0 181 2 214] 
#[ 0 197 2 214] 
#[ 0 201 2 214] 
#[ 0 213 2 214] 
#[ 0 233 2 214] 
#[ 0 241 2 214] 
#[ 0 253 2 214] 
#[ 1 9 2 214] 
#[ 1 13 2 214] 
#[ 1 29 2 214] 
#[ 1 57 2 214] 
#[ 1 61 2 214] 
#[ 1 73 2 214] 
#[ 1 85 2 214] 
#[ 2 214 4 237] 
#[ 2 222 5 113] 
#[ 1 22 6 69] 
#[ 2 238 7 137] 
#[ 2 242 7 145] 
#[ 2 242 7 149] 
#[ 2 250 7 161] 
#[ 2 250 7 165] 
#[ 2 250 7 169] 
#[ 2 250 7 173] 
#[ 2 250 7 177] 
#[ 2 250 7 181] 
#[ 2 254 7 185] 
#[ 2 254 7 189] 
#[ 3 2 7 193] 
#[ 3 6 7 197] 
#[ 3 10 7 201] 
#[ 3 14 7 205] 
#[ 3 18 7 209] 
#[ 3 18 7 213] 
#[ 3 22 7 217] 
#[ 0 70 8 61] 
#[ 0 70 8 65] 
#[ 0 70 8 69] 
#[ 0 70 8 73] 
#[ 0 70 8 77] 
#[ 0 70 8 81] 
#[ 0 70 8 85] 
#[ 0 70 8 89] 
#[ 0 70 8 93] 
#[ 0 70 8 97] 
#[ 0 70 8 101] 
#[ 0 70 8 105] 
#[ 0 70 3 114 6 233] 
#[ 0 70 8 109] 
#[ 0 70 8 113] 
#[ 3 122 8 161] 
#[ 1 22 2 226] 
#[ 2 230 9 13] 
#[ 1 62 4 6] 
#[ 1 118 10 17] 
#[ 4 30 10 65] 
#[ 4 58 4 62] 
#[ 4 82 10 185] 
#[ 4 98 10 193] 
#[ 4 206 10 185] 
#[ 2 214 7 109] 
#[ 5 62 12 69] 
#[ 5 62 5 66 6 233] 
#[ 5 102 12 77] 
#[ 5 102 6 233] 
#[ 5 102 5 106] 
#[ 3 186 5 49] 
#[ 3 186 5 53] 
#[ 3 186 5 57] 
#[ 3 186 5 61] 
#[ 3 186 5 65] 
#[ 3 186 5 69] 
#[ 0 201 3 186] 
#[ 3 186 5 73] 
#[ 3 186 5 77] 
#[ 3 186 5 81] 
#[ 3 186 5 85] 
#[ 3 186 5 89] 
#[ 3 186 5 93] 
#[ 3 186 5 97] 
#[ 3 186 5 101] 
#[ 3 186 5 105] 
#[ 3 186 5 109] 
#[ 1 85 3 186] 
#[ 3 186 12 97] 
#[ 5 118 12 165] 
#[ 5 118 12 169] 
#[ 5 138 8 161] 
#[ 1 22 6 102] 
#[ 2 230 6 85] 
#[ 3 70 7 33] 
#[ 6 238 7 137] 
#[ 6 242 7 137] 
#[ 6 246 7 145] 
#[ 6 246 7 149] 
#[ 6 250 7 145] 
#[ 6 250 7 149] 
#[ 2 230 7 14 15 69] 
#[ 3 70 15 69] 
#[ 7 42 7 161] 
#[ 7 42 7 165] 
#[ 7 42 7 169] 
#[ 7 42 7 173] 
#[ 7 42 7 177] 
#[ 7 42 7 181] 
#[ 7 46 7 161] 
#[ 7 46 7 165] 
#[ 7 46 7 169] 
#[ 7 46 7 173] 
#[ 7 46 7 177] 
#[ 7 46 7 181] 
#[ 7 50 7 185] 
#[ 7 50 7 189] 
#[ 7 54 7 193] 
#[ 7 58 7 197] 
#[ 7 62 7 201] 
#[ 7 70 7 205] 
#[ 7 110 15 137] 
#[ 4 98 16 93] 
#[ 5 66 9 98] 
#[ 6 186 18 93] 
#[ 5 66 9 154] 
#[ 9 234 19 153] 
#[ 10 1 10 2] 
#[ 10 26 19 229] 
#[ 8 58 10 74] 
#[ 6 69 9 110] 
#[ 11 2 11 6] 
#[ 11 14 11 18] 
#[ 10 17 11 214] 
#[ 12 14 22 17] 
#[ 12 14 22 21] 
#[ 12 14 22 25] 
#[ 2 234 3 198] 
#[ 3 198 6 165] 
#[ 3 198 6 169] 
#[ 3 198 6 173] 
#[ 3 198 6 177] 
#[ 3 198 6 181] 
#[ 3 198 6 185] 
#[ 3 198 6 189] 
#[ 3 198 6 193] 
#[ 3 198 6 197] 
#[ 3 198 6 201] 
#[ 3 198 6 205] 
#[ 2 230 15 69] 
#[ 0 185 12 234] 
#[ 0 70 14 118] 
#[ 0 70 25 173] 
#[ 0 70 25 193] 
#[ 0 70 6 233] 
#[ 1 22 10 178] 
#[ 9 114 13 122] 
#[ 5 62 6 233] 
#[ 5 118 26 1]
	).
]

{ #category : #'generated-accessing' }
CSharpParser class >> cacheId [
	^'2024-07-01T12:30:36.48843-05:00'
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
#	| type_parameter	# handled in reference_type
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
	: # class_type## expanding to eliminate ambiguities
		  ""object"" 'token' {{SimpleType}}
		| ""string"" 'token' {{SimpleType}}
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
#	| class_type	## expanding to eliminate ambiguities
		| ""object"" 'token' {{SimpleType}}
		| ""string"" 'token' {{SimpleType}}
#	| interface_type	## handled by class_type
#	| delegate_type	## handled by class_type
	| ""dynamic"" 'token' {{SimpleType}}
#	| delegate_type	## handled by class_type
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
	: local_function_modifier+? return_type 'returnType' local_function_header {{MethodHeader}}
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
	#(587 0 #reduceActionFor_extern_alias_directives1: 56600577 false) 
	#(385 0 #reduceActionFor_extern_alias_directives1: 29721601 false) 
	#(243 0 #reduceActionForStartInterpolatedString1: 12552193 true) 
	#(249 0 #reduceActionForStartInterpolatedVerbatimString1: 13264897 true) 
	#(183 0 #reduceActionFor_extern_alias_directives1: 6788097 false) 
	#(180 1 #reduceActionFor_extern_alias_directives2: 6529026 false) 
	#(181 1 #reduceActionForextern_alias_directives1: 6588417 false) 
	#(591 0 #reduceActionFor_attribute_target_specifier1: 57012225 false) 
	#(191 1 #liftFirstValue: 7530497 false) 
	#(191 1 #liftFirstValue: 7530498 false) 
	#(192 1 #liftFirstValue: 7609345 false) 
	#(192 1 #liftFirstValue: 7609346 false) 
	#(192 1 #liftFirstValue: 7609347 false) 
	#(192 1 #liftFirstValue: 7609348 false) 
	#(192 1 #liftFirstValue: 7609349 false) 
	#(460 0 #reduceActionFor_extern_alias_directives1: 37093377 false) 
	#(587 1 #reduceActionFor_extern_alias_directives2: 56600578 false) 
	#(588 1 #reduceActionFor_extern_alias_directives2: 56633345 false) 
	#(589 1 #reduceActionForextern_alias_directives1: 56670209 false) 
	#(380 1 #reduceActionForempty_statement1: 29182977 false) 
	#(389 1 #liftFirstValue: 30257154 false) 
	#(206 1 #reduceActionForsimple_type2: 8717314 false) 
	#(266 1 #reduceActionForsimple_type2: 14825473 false) 
	#(208 1 #liftFirstValue: 8856578 false) 
	#(266 1 #reduceActionForsimple_type2: 14825474 false) 
	#(208 1 #liftFirstValue: 8856585 false) 
	#(266 1 #reduceActionForsimple_type2: 14825475 false) 
	#(207 1 #liftFirstValue: 8785923 false) 
	#(266 1 #reduceActionForsimple_type2: 14825476 false) 
	#(301 1 #reduceActionFordefault_value_expression1: 19062785 false) 
	#(336 0 #nil 25027585 false) 
	#(209 1 #liftFirstValue: 8970242 false) 
	#(266 1 #reduceActionForsimple_type2: 14825477 false) 
	#(211 1 #reduceActionForsimple_type2: 9131012 false) 
	#(215 1 #reduceActionForsimple_type2: 9610244 false) 
	#(606 1 #liftFirstValue: 58739714 false) 
	#(209 1 #liftFirstValue: 8970241 false) 
	#(266 1 #reduceActionForsimple_type2: 14825478 false) 
	#(208 1 #liftFirstValue: 8856581 false) 
	#(266 1 #reduceActionForsimple_type2: 14825479 false) 
	#(208 1 #liftFirstValue: 8856583 false) 
	#(266 1 #reduceActionForsimple_type2: 14825480 false) 
	#(211 1 #reduceActionForsimple_type2: 9131009 false) 
	#(266 1 #reduceActionForsimple_type2: 14825481 false) 
	#(215 1 #reduceActionForsimple_type2: 9610242 false) 
	#(396 1 #reduceActionForref_kind1: 31248385 false) 
	#(370 0 #nil 28316673 false) 
	#(208 1 #liftFirstValue: 8856577 false) 
	#(266 1 #reduceActionForsimple_type2: 14825482 false) 
	#(208 1 #liftFirstValue: 8856579 false) 
	#(266 1 #reduceActionForsimple_type2: 14825483 false) 
	#(390 1 #liftFirstValue: 30339073 false) 
	#(211 1 #reduceActionForsimple_type2: 9131010 false) 
	#(266 1 #reduceActionForsimple_type2: 14825484 false) 
	#(215 1 #reduceActionForsimple_type2: 9610243 false) 
	#(270 1 #reduceActionForthis_access1: 15657985 false) 
	#(606 1 #liftFirstValue: 58739713 false) 
	#(208 1 #liftFirstValue: 8856582 false) 
	#(266 1 #reduceActionForsimple_type2: 14825485 false) 
	#(208 1 #liftFirstValue: 8856584 false) 
	#(266 1 #reduceActionForsimple_type2: 14825486 false) 
	#(614 1 #liftFirstValue: 59765761 false) 
	#(208 1 #liftFirstValue: 8856580 false) 
	#(266 1 #reduceActionForsimple_type2: 14825487 false) 
	#(408 1 #reduceActionForVarType1: 32143361 false) 
	#(636 1 #reduceActionForvoid_type1: 62612481 false) 
	#(378 0 #reduceActionFor_extern_alias_directives1: 29056001 false) 
	#(252 0 #nil 13594625 false) 
	#(605 1 #reduceActionForliteral2: 58389506 false) 
	#(605 1 #reduceActionForliteral3: 58389507 false) 
	#(605 1 #reduceActionForliteral4: 58389508 false) 
	#(242 1 #reduceActionForinterpolated_regular_string1: 12316673 false) 
	#(248 1 #reduceActionForinterpolated_regular_string1: 13014017 false) 
	#(605 1 #reduceActionForliteral5: 58389509 false) 
	#(605 1 #reduceActionForliteral6: 58389510 false) 
	#(196 1 #liftFirstValue: 7958531 false) 
	#(264 1 #reduceActionForqualified_alias_member_expression1: 14657537 false) 
	#(201 1 #liftFirstValue: 8471553 false) 
	#(195 1 #liftFirstValue: 7918593 false) 
	#(490 1 #liftFirstValue: 41742337 false) 
	#(198 1 #liftFirstValue: 8237057 false) 
	#(215 1 #liftFirstValue: 9610241 false) 
	#(199 1 #liftFirstValue: 8326146 false) 
	#(210 1 #liftFirstValue: 9017345 false) 
	#(201 1 #liftFirstValue: 8471555 false) 
	#(201 1 #liftFirstValue: 8471554 false) 
	#(206 1 #reduceActionForsimple_type2: 8717313 false) 
	#(207 1 #liftFirstValue: 8785921 false) 
	#(207 1 #liftFirstValue: 8785922 false) 
	#(199 1 #liftFirstValue: 8326145 false) 
	#(198 1 #liftFirstValue: 8237058 false) 
	#(211 1 #liftFirstValue: 9131011 false) 
	#(308 1 #liftFirstValue: 19738625 false) 
	#(239 1 #liftFirstValue: 11419649 false) 
	#(240 1 #liftFirstValue: 11512834 false) 
	#(241 1 #reduceActionForinterpolated_string_expression1: 12207105 false) 
	#(241 1 #reduceActionForinterpolated_string_expression1: 12207106 false) 
	#(240 1 #liftFirstValue: 11512835 false) 
	#(240 1 #liftFirstValue: 11512836 false) 
	#(240 1 #liftFirstValue: 11512837 false) 
	#(254 1 #liftFirstValue: 13739010 false) 
	#(240 1 #liftFirstValue: 11512838 false) 
	#(265 1 #reduceActionForqualified_alias_member_expression1: 14748673 false) 
	#(240 1 #liftFirstValue: 11512840 false) 
	#(414 1 #liftFirstValue: 32980994 false) 
	#(240 1 #liftFirstValue: 11512841 false) 
	#(240 1 #liftFirstValue: 11512843 false) 
	#(240 1 #liftFirstValue: 11512844 false) 
	#(240 1 #liftFirstValue: 11512845 false) 
	#(414 1 #liftFirstValue: 32980997 false) 
	#(240 1 #liftFirstValue: 11512846 false) 
	#(414 1 #liftFirstValue: 32980998 false) 
	#(240 1 #liftFirstValue: 11512847 false) 
	#(414 1 #liftFirstValue: 32980995 false) 
	#(239 1 #liftFirstValue: 11419650 false) 
	#(240 1 #liftFirstValue: 11512848 false) 
	#(240 1 #liftFirstValue: 11512849 false) 
	#(240 1 #liftFirstValue: 11512850 false) 
	#(240 1 #liftFirstValue: 11512852 false) 
	#(240 1 #liftFirstValue: 11512853 false) 
	#(240 1 #liftFirstValue: 11512854 false) 
	#(240 1 #liftFirstValue: 11512857 false) 
	#(240 1 #liftFirstValue: 11512855 false) 
	#(240 1 #liftFirstValue: 11512839 false) 
	#(414 1 #liftFirstValue: 32980993 false) 
	#(240 1 #liftFirstValue: 11512842 false) 
	#(308 1 #liftFirstValue: 19738630 false) 
	#(414 1 #liftFirstValue: 32980999 false) 
	#(308 1 #liftFirstValue: 19738631 false) 
	#(414 1 #liftFirstValue: 32981000 false) 
	#(308 1 #liftFirstValue: 19738632 false) 
	#(308 1 #liftFirstValue: 19738633 false) 
	#(414 1 #liftFirstValue: 32981001 false) 
	#(240 1 #liftFirstValue: 11512856 false) 
	#(414 1 #liftFirstValue: 32980996 false) 
	#(375 1 #liftFirstValue: 28646403 false) 
	#(376 1 #liftFirstValue: 28729345 false) 
	#(376 1 #liftFirstValue: 28729346 false) 
	#(375 1 #liftFirstValue: 28646401 false) 
	#(375 1 #liftFirstValue: 28646402 false) 
	#(382 1 #liftFirstValue: 29284355 false) 
	#(387 1 #reduceActionForextern_alias_directives1: 29862913 false) 
	#(389 1 #liftFirstValue: 30257153 false) 
	#(393 1 #reduceActionForlocal_variable_declaration1: 30742529 false) 
	#(393 1 #liftFirstValue: 30742530 false) 
	#(393 1 #reduceActionForlocal_variable_declaration3: 30742531 false) 
	#(376 1 #liftFirstValue: 28729347 false) 
	#(376 1 #liftFirstValue: 28729348 false) 
	#(415 1 #liftFirstValue: 33256449 false) 
	#(415 1 #liftFirstValue: 33256450 false) 
	#(376 1 #liftFirstValue: 28729349 false) 
	#(425 1 #liftFirstValue: 34113537 false) 
	#(425 1 #liftFirstValue: 34113538 false) 
	#(425 1 #liftFirstValue: 34113539 false) 
	#(425 1 #liftFirstValue: 34113540 false) 
	#(376 1 #liftFirstValue: 28729350 false) 
	#(437 1 #liftFirstValue: 35227649 false) 
	#(437 1 #liftFirstValue: 35227650 false) 
	#(437 1 #liftFirstValue: 35227651 false) 
	#(437 1 #liftFirstValue: 35227652 false) 
	#(437 1 #liftFirstValue: 35227653 false) 
	#(376 1 #liftFirstValue: 28729351 false) 
	#(376 1 #liftFirstValue: 28729352 false) 
	#(376 1 #liftFirstValue: 28729353 false) 
	#(376 1 #liftFirstValue: 28729354 false) 
	#(376 1 #liftFirstValue: 28729355 false) 
	#(376 1 #liftFirstValue: 28729356 false) 
	#(240 1 #liftFirstValue: 11512833 false) 
	#(605 1 #reduceActionForliteral1: 58389505 false) 
	#(390 1 #liftFirstValue: 30339074 false) 
	#(376 1 #liftFirstValue: 28729357 false) 
	#(198 1 #liftFirstValue: 8237059 false) 
	#(215 1 #liftFirstValue: 9610245 false) 
	#(308 1 #liftFirstValue: 19738634 false) 
	#(240 1 #liftFirstValue: 11512858 false) 
	#(308 1 #liftFirstValue: 19738635 false) 
	#(240 1 #liftFirstValue: 11512851 false) 
	#(376 1 #liftFirstValue: 28729358 false) 
	#(490 1 #liftFirstValue: 41742338 false) 
	#(341 0 #nil 25674753 false) 
	#(338 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 25214977 false) 
	#(197 0 #nil 8209409 false) 
	#(345 1 #reduceActionForimplicit_anonymous_function_parameter1: 26199041 false) 
	#(407 1 #liftFirstValue: 32100353 false) 
	#(319 1 #liftFirstValue: 21471233 false) 
	#(320 1 #liftFirstValue: 21819393 false) 
	#(321 1 #liftFirstValue: 22077441 false) 
	#(322 1 #liftFirstValue: 22311937 false) 
	#(323 1 #liftFirstValue: 22996993 false) 
	#(324 1 #liftFirstValue: 23244801 false) 
	#(325 1 #liftFirstValue: 23377921 false) 
	#(326 1 #liftFirstValue: 23519233 false) 
	#(327 1 #liftFirstValue: 23678977 false) 
	#(328 1 #liftFirstValue: 23845889 false) 
	#(329 1 #liftFirstValue: 24016897 false) 
	#(332 1 #liftFirstValue: 24369153 false) 
	#(329 1 #liftFirstValue: 24016899 false) 
	#(372 1 #liftFirstValue: 28423169 false) 
	#(372 1 #liftFirstValue: 28423170 false) 
	#(372 1 #liftFirstValue: 28423171 false) 
	#(335 1 #reduceActionFor_extern_alias_directives2: 24910849 false) 
	#(335 1 #reduceActionFor_extern_alias_directives2: 24910850 false) 
	#(343 1 #reduceActionForimplicit_anonymous_function_signature2: 25843714 false) 
	#(372 1 #liftFirstValue: 28423172 false) 
	#(351 0 #reduceActionFor_query_body_clauses1: 26682369 false) 
	#(371 1 #liftFirstValue: 28362754 false) 
	#(371 1 #liftFirstValue: 28362753 false) 
	#(407 1 #liftFirstValue: 32100354 false) 
	#(479 1 #liftFirstValue: 39668747 false) 
	#(479 1 #liftFirstValue: 39668737 false) 
	#(479 1 #liftFirstValue: 39668738 false) 
	#(479 1 #liftFirstValue: 39668739 false) 
	#(479 1 #liftFirstValue: 39668740 false) 
	#(479 1 #liftFirstValue: 39668741 false) 
	#(479 1 #liftFirstValue: 39668742 false) 
	#(479 1 #liftFirstValue: 39668743 false) 
	#(479 1 #liftFirstValue: 39668744 false) 
	#(479 1 #liftFirstValue: 39668746 false) 
	#(610 0 #nil 58890241 false) 
	#(479 1 #liftFirstValue: 39668745 false) 
	#(581 0 #reduceActionFor_extern_alias_directives1: 55981057 false) 
	#(183 1 #reduceActionFor_extern_alias_directives2: 6788098 false) 
	#(184 1 #reduceActionForextern_alias_directives1: 6833153 false) 
	#(185 1 #liftFirstValue: 6934529 false) 
	#(185 1 #liftFirstValue: 6934530 false) 
	#(185 1 #liftFirstValue: 6934531 false) 
	#(181 2 #reduceActionForextern_alias_directives2: 6588418 false) 
	#(593 1 #liftFirstValue: 57151490 false) 
	#(593 1 #liftFirstValue: 57151489 false) 
	#(593 1 #liftFirstValue: 57151491 false) 
	#(593 1 #liftFirstValue: 57151492 false) 
	#(593 1 #liftFirstValue: 57151493 false) 
	#(593 1 #liftFirstValue: 57151494 false) 
	#(593 1 #liftFirstValue: 57151495 false) 
	#(591 1 #reduceActionFor_extern_alias_directives2: 57012226 false) 
	#(178 1 #reduceActionForqualified_identifier1: 6306817 false) 
	#(609 0 #nil 58846209 false) 
	#(589 2 #reduceActionForextern_alias_directives2: 56670210 false) 
	#(308 2 #reduceActionForunary_expression4: 19738628 false) 
	#(621 2 #reduceActionForunary_expression4: 60967937 false) 
	#(205 1 #reduceActionFortuple_type_element1: 8652801 false) 
	#(257 1 #reduceActionFortuple_element1: 13887489 false) 
	#(619 2 #reduceActionForunary_expression4: 60592129 false) 
	#(308 2 #reduceActionForunary_expression4: 19738626 false) 
	#(315 2 #reduceActionForunary_expression4: 21124097 false) 
	#(308 2 #reduceActionForunary_expression4: 19738627 false) 
	#(316 2 #reduceActionForunary_expression4: 21224449 false) 
	#(318 2 #reduceActionForawait_expression1: 21403649 false) 
	#(438 2 #reduceActionForbreak_statement1: 35346433 false) 
	#(453 2 #reduceActionForchecked_statement1: 36526081 false) 
	#(439 2 #reduceActionForcontinue_statement1: 35386369 false) 
	#(336 1 #liftFirstValue: 25027586 false) 
	#(429 0 #nil 34562049 false) 
	#(219 0 #reduceActionFor_extern_alias_directives1: 10167297 false) 
	#(290 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 17943553 false) 
	#(221 1 #liftFirstValue: 10257409 false) 
	#(288 2 #reduceActionForanonymous_object_creation_expression1: 17732609 false) 
	#(396 2 #reduceActionForref_kind2: 31248386 false) 
	#(370 1 #liftFirstValue: 28316674 false) 
	#(618 1 #liftFirstValue: 60340225 false) 
	#(618 1 #liftFirstValue: 60340226 false) 
	#(446 0 #reduceActionFor_extern_alias_directives1: 35976193 false) 
	#(454 2 #reduceActionForunchecked_statement1: 36580353 false) 
	#(615 2 #reduceActionForunsafe_statement1: 60169217 false) 
	#(379 1 #reduceActionForextern_alias_directives1: 29097985 false) 
	#(378 1 #reduceActionFor_extern_alias_directives2: 29056002 false) 
	#(308 2 #reduceActionForunary_expression4: 19738629 false) 
	#(252 1 #liftFirstValue: 13594626 false) 
	#(251 2 #reduceActionForsimple_name1: 13520897 false) 
	#(196 2 #reduceActionFornamespace_or_type_name1: 7958529 false) 
	#(402 1 #reduceActionForexplicitly_typed_local_variable_declarator1: 31728641 false) 
	#(398 2 #reduceActionForexplicitly_typed_local_variable_declaration1: 31418369 false) 
	#(401 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 31661057 false) 
	#(617 1 #reduceActionForextern_alias_directives1: 60296193 false) 
	#(616 2 #reduceActionForpointer_type1: 60261377 false) 
	#(200 2 #reduceActionFornullable_value_type1: 8391681 false) 
	#(214 2 #reduceActionForarray_type1: 9548801 false) 
	#(217 1 #reduceActionForextern_alias_directives1: 10010625 false) 
	#(236 0 #reduceActionFor_attribute_target_specifier1: 11155457 false) 
	#(233 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 10973185 false) 
	#(272 2 #reduceActionForpost_increment_expression1: 15826945 false) 
	#(273 2 #reduceActionForpost_increment_expression1: 15928321 false) 
	#(369 1 #reduceActionForref_kind1: 28070919 false) 
	#(369 1 #reduceActionForref_kind1: 28070920 false) 
	#(369 1 #reduceActionForref_kind1: 28070917 false) 
	#(369 1 #reduceActionForref_kind1: 28070915 false) 
	#(369 1 #reduceActionForref_kind1: 28070916 false) 
	#(369 1 #reduceActionForref_kind1: 28070918 false) 
	#(369 1 #reduceActionForref_kind1: 28070923 false) 
	#(369 1 #reduceActionForref_kind1: 28070913 false) 
	#(369 1 #reduceActionForref_kind1: 28070924 false) 
	#(369 1 #reduceActionForref_kind1: 28070922 false) 
	#(369 1 #reduceActionForref_kind1: 28070921 false) 
	#(392 1 #reduceActionForref_local_function_body1: 30603265 false) 
	#(383 2 #reduceActionForlocal_function_declaration2: 29449218 false) 
	#(385 2 #reduceActionForextern_alias_directives2: 29721602 false) 
	#(391 1 #reduceActionForref_local_function_body1: 30413825 false) 
	#(383 2 #reduceActionForlocal_function_declaration2: 29449217 false) 
	#(387 2 #reduceActionForextern_alias_directives2: 29862914 false) 
	#(382 2 #reduceActionFordeclaration_statement1: 29284353 false) 
	#(258 2 #reduceActionFordeconstruction_expression1: 13968385 false) 
	#(394 2 #reduceActionForimplicitly_typed_local_variable_declaration1: 30920705 false) 
	#(382 2 #reduceActionFordeclaration_statement1: 29284354 false) 
	#(413 2 #reduceActionForexpression_statement1: 32909313 false) 
	#(386 2 #reduceActionForLocalFunctionHeader1: 29839361 false) 
	#(616 2 #reduceActionForpointer_type1: 60261378 false) 
	#(342 1 #liftFirstValue: 25775107 false) 
	#(342 1 #liftFirstValue: 25775106 false) 
	#(342 1 #liftFirstValue: 25775105 false) 
	#(338 1 #reduceActionFor_extern_alias_directives2: 25214978 false) 
	#(339 1 #reduceActionForinterpolated_regular_string1: 25316353 false) 
	#(341 1 #liftFirstValue: 25674754 false) 
	#(344 1 #reduceActionForinterpolated_regular_string1: 25995265 false) 
	#(197 1 #liftFirstValue: 8209410 false) 
	#(330 2 #reduceActionForthrow_expression1: 24208385 false) 
	#(353 1 #reduceActionForquery_body_clause1: 26817537 false) 
	#(348 2 #reduceActionForquery_expression1: 26473473 false) 
	#(351 1 #reduceActionFor_extern_alias_directives2: 26682370 false) 
	#(352 1 #reduceActionForquery_body_clauses1: 26732545 false) 
	#(353 1 #reduceActionForquery_body_clause2: 26817538 false) 
	#(353 1 #reduceActionForquery_body_clause3: 26817539 false) 
	#(353 1 #reduceActionForquery_body_clause4: 26817540 false) 
	#(353 1 #reduceActionForquery_body_clause5: 26817541 false) 
	#(353 1 #reduceActionForquery_body_clause6: 26817542 false) 
	#(331 2 #reduceActionFordeclaration_expression1: 24286209 false) 
	#(494 1 #reduceActionForref_method_body3: 42063875 false) 
	#(494 1 #reduceActionForref_local_function_body1: 42063873 false) 
	#(487 2 #reduceActionFormethod_declaration2: 40971266 false) 
	#(493 1 #reduceActionForref_method_body3: 41901060 false) 
	#(493 1 #reduceActionForref_local_function_body1: 41901057 false) 
	#(487 2 #reduceActionFormethod_declaration2: 40971265 false) 
	#(637 1 #liftFirstValue: 62641158 false) 
	#(637 1 #liftFirstValue: 62641163 false) 
	#(637 1 #liftFirstValue: 62641167 false) 
	#(610 1 #liftFirstValue: 58890242 false) 
	#(637 1 #liftFirstValue: 62641156 false) 
	#(637 1 #liftFirstValue: 62641153 false) 
	#(637 1 #liftFirstValue: 62641166 false) 
	#(637 1 #liftFirstValue: 62641157 false) 
	#(637 1 #liftFirstValue: 62641155 false) 
	#(637 1 #liftFirstValue: 62641154 false) 
	#(637 1 #liftFirstValue: 62641161 false) 
	#(637 1 #liftFirstValue: 62641159 false) 
	#(637 1 #liftFirstValue: 62641160 false) 
	#(543 1 #reduceActionForstatic_constructor_modifiers1: 48784385 false) 
	#(637 1 #liftFirstValue: 62641164 false) 
	#(637 1 #liftFirstValue: 62641162 false) 
	#(637 1 #liftFirstValue: 62641168 false) 
	#(529 1 #reduceActionForextern_alias_directives1: 46769153 false) 
	#(194 1 #liftFirstValue: 7873537 false) 
	#(189 0 #reduceActionFor_extern_alias_directives1: 7299073 false) 
	#(581 1 #reduceActionFor_extern_alias_directives2: 55981058 false) 
	#(582 1 #reduceActionFor_extern_alias_directives2: 56028161 false) 
	#(583 1 #reduceActionForextern_alias_directives1: 56079361 false) 
	#(184 2 #reduceActionForextern_alias_directives2: 6833154 false) 
	#(596 1 #liftFirstValue: 57475073 false) 
	#(594 1 #reduceActionForinterpolated_regular_string1: 57287681 false) 
	#(597 0 #reduceActionFor_attribute_arguments1: 57506817 false) 
	#(592 2 #reduceActionForref_kind2: 57078785 false) 
	#(607 0 #nil 58788865 false) 
	#(609 1 #liftFirstValue: 58846210 false) 
	#(460 2 #reduceActionForextern_alias_directives2: 37093378 false) 
	#(205 2 #reduceActionFortuple_type_element2: 8652802 false) 
	#(204 1 #reduceActionFor_____tuple_type_element__element___1: 8590337 false) 
	#(256 1 #reduceActionFor_____tuple_type_element__element___1: 13800449 false) 
	#(253 3 #reduceActionForparenthesized_expression1: 13644801 false) 
	#(269 1 #reduceActionForinterpolated_regular_string1: 15562753 false) 
	#(410 3 #reduceActionForlocal_constant_declaration1: 32613377 false) 
	#(411 1 #reduceActionForinterpolated_regular_string1: 32691201 false) 
	#(334 3 #reduceActionForanonymous_method_expression1: 24783873 false) 
	#(430 1 #liftFirstValue: 34620417 false) 
	#(435 1 #reduceActionForinterpolated_regular_string1: 34923521 false) 
	#(429 1 #liftFirstValue: 34562050 false) 
	#(430 1 #reduceActionForfor_initializer2: 34620418 false) 
	#(373 1 #liftFirstValue: 28551169 false) 
	#(440 3 #reduceActionForgoto_statement3: 35432451 false) 
	#(440 3 #reduceActionForgoto_statement1: 35432449 false) 
	#(374 1 #liftFirstValue: 28589057 false) 
	#(307 1 #reduceActionFornamed_entity_target3: 19574787 false) 
	#(307 1 #reduceActionForthis_access1: 19574786 false) 
	#(307 1 #liftFirstValue: 19574785 false) 
	#(307 1 #liftFirstValue: 19574789 false) 
	#(307 1 #liftFirstValue: 19574788 false) 
	#(306 0 #reduceActionFor______Identifier___type_argument_list__typeArguments___1: 19509249 false) 
	#(220 1 #reduceActionForextern_alias_directives1: 10209281 false) 
	#(219 1 #reduceActionFor_extern_alias_directives2: 10167298 false) 
	#(292 1 #reduceActionFormember_declarator1: 18125825 false) 
	#(292 1 #reduceActionFormember_declarator2: 18125826 false) 
	#(292 1 #reduceActionFormember_declarator2: 18125828 false) 
	#(290 1 #reduceActionFor_extern_alias_directives2: 17943554 false) 
	#(291 1 #reduceActionForinterpolated_regular_string1: 18001921 false) 
	#(292 1 #reduceActionFormember_declarator2: 18125827 false) 
	#(278 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 16526337 false) 
	#(274 3 #reduceActionForobject_creation_expression2: 16029698 false) 
	#(276 1 #liftFirstValue: 16312321 false) 
	#(276 1 #liftFirstValue: 16312322 false) 
	#(554 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 50633729 false) 
	#(286 3 #reduceActionForarray_creation_expression2: 17329154 false) 
	#(286 3 #reduceActionForarray_creation_expression3: 17329155 false) 
	#(441 3 #reduceActionForreturn_statement2: 35573762 false) 
	#(225 1 #liftFirstValue: 10494977 false) 
	#(441 3 #reduceActionForreturn_statement1: 35573761 false) 
	#(442 3 #reduceActionForthrow_statement1: 35684353 false) 
	#(443 3 #reduceActionFortry_statement1: 35736577 false) 
	#(444 1 #reduceActionFor_extern_alias_directives2: 35919873 false) 
	#(445 1 #reduceActionForextern_alias_directives1: 35937281 false) 
	#(443 3 #reduceActionFortry_statement2: 35736578 false) 
	#(295 0 #reduceActionFor_generic_dimension_specifier1: 18716673 false) 
	#(457 1 #liftFirstValue: 36847618 false) 
	#(457 1 #liftFirstValue: 36847617 false) 
	#(458 3 #reduceActionForyield_statement2: 36917250 false) 
	#(377 3 #reduceActionForblock1: 28990465 false) 
	#(379 2 #reduceActionForextern_alias_directives2: 29097986 false) 
	#(381 3 #reduceActionForlabeled_statement1: 29214721 false) 
	#(224 1 #liftFirstValue: 10449921 false) 
	#(223 1 #reduceActionForinterpolated_regular_string1: 10362881 false) 
	#(399 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31555585 false) 
	#(617 2 #reduceActionForextern_alias_directives2: 60296194 false) 
	#(217 2 #reduceActionForextern_alias_directives2: 10010626 false) 
	#(233 1 #reduceActionFor_extern_alias_directives2: 10973186 false) 
	#(234 1 #reduceActionForinterpolated_regular_string1: 11021313 false) 
	#(236 1 #reduceActionFor_extern_alias_directives2: 11155458 false) 
	#(244 1 #reduceActionForinterpolated_regular_string1: 12605441 false) 
	#(247 0 #reduceActionForScanFormat1: 12978177 true) 
	#(245 1 #reduceActionForinterpolation1: 12788737 false) 
	#(250 1 #reduceActionForinterpolated_regular_string1: 13334529 false) 
	#(369 2 #reduceActionForref_kind2: 28070914 false) 
	#(368 3 #reduceActionForassignment1: 27986945 false) 
	#(491 1 #liftFirstValue: 41779201 false) 
	#(386 3 #reduceActionForLocalFunctionHeader2: 29839362 false) 
	#(406 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 32046081 false) 
	#(403 3 #reduceActionForref_local_variable_declaration1: 31876097 false) 
	#(394 3 #reduceActionForimplicitly_typed_local_variable_declaration2: 30920706 false) 
	#(262 1 #reduceActionFordeconstruction_element2: 14192642 false) 
	#(262 1 #liftFirstValue: 14192641 false) 
	#(495 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 42205185 false) 
	#(337 3 #reduceActionForexplicit_anonymous_function_signature1: 25115649 false) 
	#(343 3 #reduceActionForexplicit_anonymous_function_signature1: 25843713 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 21471236 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 21471234 false) 
	#(319 3 #reduceActionFormultiplicative_expression4: 21471235 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 21819394 false) 
	#(320 3 #reduceActionFormultiplicative_expression4: 21819395 false) 
	#(321 3 #reduceActionFormultiplicative_expression4: 22077442 false) 
	#(321 3 #reduceActionFormultiplicative_expression4: 22077443 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22311938 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22311940 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22311941 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22311944 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22311942 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22311943 false) 
	#(226 1 #liftFirstValue: 10531843 false) 
	#(226 1 #liftFirstValue: 10531842 false) 
	#(226 1 #liftFirstValue: 10531841 false) 
	#(229 1 #liftFirstValue: 10713089 false) 
	#(322 3 #reduceActionFormultiplicative_expression4: 22311939 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22996995 false) 
	#(323 3 #reduceActionFormultiplicative_expression4: 22996994 false) 
	#(324 3 #reduceActionFormultiplicative_expression4: 23244802 false) 
	#(325 3 #reduceActionFormultiplicative_expression4: 23377922 false) 
	#(326 3 #reduceActionFormultiplicative_expression4: 23519234 false) 
	#(327 3 #reduceActionFormultiplicative_expression4: 23678978 false) 
	#(329 3 #reduceActionFormultiplicative_expression4: 24016898 false) 
	#(328 3 #reduceActionFormultiplicative_expression4: 23845890 false) 
	#(346 1 #liftFirstValue: 26296321 false) 
	#(333 3 #reduceActionForlambda_expression1: 24678401 false) 
	#(346 1 #liftFirstValue: 26296323 false) 
	#(346 1 #liftFirstValue: 26296322 false) 
	#(346 1 #liftFirstValue: 26296324 false) 
	#(358 2 #reduceActionFororderby_clause1: 27411457 false) 
	#(359 1 #reduceActionFororderings1: 27453441 false) 
	#(361 0 #reduceActionFor_attribute_target_specifier1: 27566081 false) 
	#(355 2 #reduceActionForref_kind2: 27004929 false) 
	#(366 0 #reduceActionFor_query_continuation1: 27879425 false) 
	#(363 1 #reduceActionForselect_or_group_clause1: 27670529 false) 
	#(363 1 #reduceActionForselect_or_group_clause2: 27670530 false) 
	#(352 2 #reduceActionForquery_body_clauses2: 26732546 false) 
	#(543 2 #reduceActionForstatic_constructor_modifiers5: 48784389 false) 
	#(543 2 #reduceActionForstatic_constructor_modifiers2: 48784386 false) 
	#(530 1 #reduceActionForoperator_declarator1: 46926849 false) 
	#(530 1 #reduceActionForoperator_declarator2: 46926850 false) 
	#(530 1 #reduceActionForoperator_declarator3: 46926851 false) 
	#(529 2 #reduceActionForextern_alias_directives2: 46769154 false) 
	#(182 4 #reduceActionForextern_alias_directive1: 6718465 false) 
	#(187 3 #reduceActionForusing_namespace_directive1: 7142401 false) 
	#(586 1 #liftFirstValue: 56556545 false) 
	#(176 4 #reduceActionForcompilation_unit1: 6075393 false) 
	#(189 1 #reduceActionFor_extern_alias_directives2: 7299074 false) 
	#(190 1 #reduceActionForextern_alias_directives1: 7371777 false) 
	#(583 2 #reduceActionForextern_alias_directives2: 56079362 false) 
	#(590 4 #reduceActionForattribute_section1: 56779777 false) 
	#(599 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 57798657 false) 
	#(595 2 #reduceActionForattribute1: 57395201 false) 
	#(597 1 #reduceActionFor_attribute_arguments2: 57506818 false) 
	#(178 3 #reduceActionForqualified_identifier2: 6306818 false) 
	#(607 1 #liftFirstValue: 58788866 false) 
	#(177 4 #reduceActionFornamespace_declaration1: 6199297 false) 
	#(572 0 #reduceActionFor_attribute_target_specifier1: 54476801 false) 
	#(257 3 #reduceActionFortuple_element2: 13887490 false) 
	#(317 4 #reduceActionForcast_expression1: 21324801 false) 
	#(203 2 #reduceActionForref_kind2: 8590337 false) 
	#(202 4 #reduceActionFortuple_type1: 8529921 false) 
	#(204 2 #reduceActionFor_____tuple_type_element__element___2: 8590338 false) 
	#(255 2 #reduceActionForref_kind2: 13800449 false) 
	#(254 4 #reduceActionFortuple_expression1: 13739009 false) 
	#(256 2 #reduceActionFor_____tuple_type_element__element___2: 13800450 false) 
	#(334 4 #reduceActionForanonymous_method_expression2: 24783874 false) 
	#(271 4 #reduceActionForbase_access1: 15688705 false) 
	#(271 4 #reduceActionForbase_access2: 15688706 false) 
	#(299 4 #reduceActionForchecked_expression1: 18911233 false) 
	#(301 4 #reduceActionFordefault_value_expression2: 19062786 false) 
	#(624 1 #reduceActionForinterpolated_regular_string1: 61297665 false) 
	#(431 0 #nil 34718721 false) 
	#(440 4 #reduceActionForgoto_statement2: 35432450 false) 
	#(303 4 #reduceActionFornameof_expression1: 19395585 false) 
	#(304 2 #reduceActionFornamed_entity1: 19463169 false) 
	#(218 3 #reduceActionForrank_specifier1: 10116097 false) 
	#(220 2 #reduceActionForextern_alias_directives2: 10209282 false) 
	#(289 3 #reduceActionForexplicit_anonymous_function_signature1: 17817601 false) 
	#(281 1 #reduceActionForinitializer_target1: 16797697 false) 
	#(278 1 #reduceActionFor_extern_alias_directives2: 16526338 false) 
	#(279 1 #reduceActionForinterpolated_regular_string1: 16586753 false) 
	#(284 1 #reduceActionForinterpolated_regular_string1: 17081345 false) 
	#(285 1 #reduceActionForelement_initializer1: 17215489 false) 
	#(486 1 #liftFirstValue: 40910849 false) 
	#(555 1 #reduceActionForinterpolated_regular_string1: 50697217 false) 
	#(486 1 #liftFirstValue: 40910850 false) 
	#(554 1 #reduceActionFor_extern_alias_directives2: 50633730 false) 
	#(622 4 #reduceActionForsizeof_expression1: 61063169 false) 
	#(449 0 #nil 36277249 false) 
	#(452 2 #reduceActionForfinally_clause1: 36474881 false) 
	#(443 4 #reduceActionFortry_statement3: 35736579 false) 
	#(445 2 #reduceActionForextern_alias_directives2: 35937282 false) 
	#(446 2 #reduceActionForextern_alias_directives2: 35976194 false) 
	#(444 2 #reduceActionForextern_alias_directives2: 35919874 false) 
	#(297 0 #reduceActionFor_extern_alias_directives1: 18837505 false) 
	#(294 2 #reduceActionForunbound_type_name1: 18493441 false) 
	#(295 1 #reduceActionFor_extern_alias_directives2: 18716674 false) 
	#(293 4 #reduceActionFortypeof_expression1: 18339841 false) 
	#(293 4 #reduceActionFortypeof_expression1: 18339842 false) 
	#(293 4 #reduceActionFortypeof_expression1: 18339843 false) 
	#(300 4 #reduceActionForunchecked_expression1: 18984961 false) 
	#(458 4 #reduceActionForyield_statement1: 36917249 false) 
	#(193 4 #reduceActionForqualified_alias_member1: 7744513 false) 
	#(222 3 #reduceActionFortype_argument_list1: 10288129 false) 
	#(196 4 #reduceActionFornamespace_or_type_name2: 7958530 false) 
	#(409 1 #liftFirstValue: 32546817 false) 
	#(402 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31728642 false) 
	#(409 1 #liftFirstValue: 32546818 false) 
	#(409 1 #liftFirstValue: 32546819 false) 
	#(401 2 #reduceActionFor_____tuple_type_element__element___2: 31661058 false) 
	#(237 2 #reduceActionForref_kind2: 11194369 false) 
	#(267 4 #reduceActionForinvocation_expression1: 15366145 false) 
	#(235 2 #reduceActionForargument1: 11104257 false) 
	#(238 1 #reduceActionForargument_value1: 11245569 false) 
	#(620 4 #reduceActionForpointer_member_access1: 60697601 false) 
	#(263 4 #reduceActionFormember_access1: 14290945 false) 
	#(268 4 #reduceActionForelement_access1: 15456257 false) 
	#(242 4 #reduceActionForinterpolated_regular_string2: 12316674 false) 
	#(245 2 #reduceActionForinterpolation2: 12788738 false) 
	#(248 4 #reduceActionForinterpolated_regular_string2: 13014018 false) 
	#(263 4 #reduceActionFormember_access1: 14290947 false) 
	#(263 4 #reduceActionFormember_access1: 14290946 false) 
	#(313 4 #reduceActionForinvocation_expression1: 20744193 false) 
	#(313 4 #reduceActionForinvocation_expression1: 20744194 false) 
	#(384 4 #reduceActionForRefLocalFunctionHeader1: 29694977 false) 
	#(391 3 #reduceActionForlocal_function_body2: 30413826 false) 
	#(391 3 #reduceActionForlocal_function_body2: 30413827 false) 
	#(404 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 31967233 false) 
	#(261 1 #reduceActionFor_____tuple_type_element__element___1: 14126081 false) 
	#(397 3 #reduceActionForexplicitly_typed_local_variable_declarator2: 31290369 false) 
	#(495 1 #reduceActionFor_extern_alias_directives2: 42205186 false) 
	#(496 1 #reduceActionFor_extern_alias_directives2: 42263553 false) 
	#(497 1 #reduceActionForinterpolated_regular_string1: 42403841 false) 
	#(496 1 #reduceActionForinterpolated_regular_string1: 42263555 false) 
	#(501 0 #nil 42740737 false) 
	#(339 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25316354 false) 
	#(340 3 #reduceActionForexplicit_anonymous_function_paramenter1: 25524225 false) 
	#(344 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 25995266 false) 
	#(333 4 #reduceActionForlambda_expression2: 24678402 false) 
	#(232 1 #liftFirstValue: 10896385 false) 
	#(230 2 #reduceActionFordeclaration_expression1: 10757121 false) 
	#(231 1 #liftFirstValue: 10842113 false) 
	#(227 2 #reduceActionFordeclaration_expression1: 10602497 false) 
	#(228 1 #liftFirstValue: 10675201 false) 
	#(347 2 #reduceActionForRefExpression1: 26408961 false) 
	#(362 1 #reduceActionForref_kind1: 27616257 false) 
	#(362 1 #reduceActionForordering_direction2: 27616258 false) 
	#(360 2 #reduceActionForordering1: 27505665 false) 
	#(361 1 #reduceActionFor_extern_alias_directives2: 27566082 false) 
	#(364 2 #reduceActionForref_kind2: 27730945 false) 
	#(350 3 #reduceActionForquery_body1: 26600449 false) 
	#(366 1 #reduceActionFor_extern_alias_directives2: 27879426 false) 
	#(493 3 #reduceActionForlocal_function_body2: 41901058 false) 
	#(493 3 #reduceActionForlocal_function_body2: 41901059 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers6: 48784390 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers7: 48784391 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers3: 48784387 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers3: 48784388 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers3: 48784397 false) 
	#(485 1 #reduceActionForvariable_declarator1: 40804353 false) 
	#(492 1 #reduceActionFormember_name1: 41806849 false) 
	#(213 1 #liftFirstValue: 9517057 false) 
	#(484 1 #reduceActionForinterpolated_regular_string1: 40680449 false) 
	#(524 4 #reduceActionForindexer_declaration1: 45889537 false) 
	#(541 1 #reduceActionForref_method_body3: 48490499 false) 
	#(541 1 #reduceActionForref_local_function_body1: 48490497 false) 
	#(537 4 #reduceActionForconstructor_declaration1: 47935489 false) 
	#(536 1 #reduceActionForref_method_body3: 47810563 false) 
	#(536 1 #reduceActionForref_local_function_body1: 47810561 false) 
	#(528 4 #reduceActionForoperator_declaration1: 46708737 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers7: 48784393 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers6: 48784392 false) 
	#(543 3 #reduceActionForstatic_constructor_modifiers6: 48784401 false) 
	#(188 4 #reduceActionForusing_static_directive1: 7220225 false) 
	#(585 2 #reduceActionForref_kind2: 56469505 false) 
	#(190 2 #reduceActionForextern_alias_directives2: 7371778 false) 
	#(590 5 #reduceActionForattribute_section2: 56779778 false) 
	#(594 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 57287682 false) 
	#(599 1 #reduceActionFor_extern_alias_directives2: 57798658 false) 
	#(600 1 #reduceActionForinterpolated_regular_string1: 57860097 false) 
	#(602 1 #reduceActionForinterpolated_regular_string1: 58095617 false) 
	#(579 5 #reduceActionFordelegate_declaration1: 55244801 false) 
	#(572 1 #reduceActionFor_extern_alias_directives2: 54476802 false) 
	#(461 0 #nil 37404673 false) 
	#(557 0 #nil 51294209 false) 
	#(269 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 15562754 false) 
	#(412 3 #reduceActionForconst_declarator1: 32803841 false) 
	#(411 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 32691202 false) 
	#(432 1 #liftFirstValue: 34769921 false) 
	#(431 1 #liftFirstValue: 34718722 false) 
	#(435 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 34923522 false) 
	#(416 5 #reduceActionForif_statement1: 33316865 false) 
	#(455 5 #reduceActionForlock_statement1: 36638721 false) 
	#(306 2 #reduceActionFor______Identifier___type_argument_list__typeArguments___2: 19509250 false) 
	#(292 3 #reduceActionFormember_declarator5: 18125829 false) 
	#(289 4 #reduceActionForanonymous_object_initializer2: 17817602 false) 
	#(291 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 18001922 false) 
	#(275 0 #nil 16234497 false) 
	#(277 3 #reduceActionForobject_initializer1: 16398337 false) 
	#(283 3 #reduceActionForcollection_initializer1: 16948225 false) 
	#(553 3 #reduceActionForarray_initializer1: 50502657 false) 
	#(216 0 #reduceActionFor_extern_alias_directives1: 9966593 false) 
	#(287 5 #reduceActionFordelegate_creation_expression1: 17631233 false) 
	#(302 5 #reduceActionForstackalloc_expression1: 19133441 false) 
	#(419 0 #reduceActionFor_extern_alias_directives1: 33694721 false) 
	#(417 5 #reduceActionForswitch_statement1: 33556481 false) 
	#(611 0 #nil 58928129 false) 
	#(449 1 #liftFirstValue: 36277250 false) 
	#(447 3 #reduceActionForspecific_catch_clause2: 36042754 false) 
	#(451 2 #reduceActionForgeneral_catch_clause1: 36408321 false) 
	#(298 1 #reduceActionForextern_alias_directives1: 18863105 false) 
	#(297 1 #reduceActionFor_extern_alias_directives2: 18837506 false) 
	#(456 5 #reduceActionForusing_statement1: 36737025 false) 
	#(426 5 #reduceActionForwhile_statement1: 34211841 false) 
	#(223 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 10362882 false) 
	#(635 1 #liftFirstValue: 62536705 false) 
	#(634 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 62494721 false) 
	#(400 2 #reduceActionForref_kind2: 31661057 false) 
	#(234 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 11021314 false) 
	#(238 2 #reduceActionForargument_value2: 11245570 false) 
	#(238 2 #reduceActionForargument_value4: 11245572 false) 
	#(238 2 #reduceActionForargument_value3: 11245571 false) 
	#(310 0 #reduceActionFor_extern_alias_directives1: 20287489 false) 
	#(314 5 #reduceActionFornull_conditional_element_access1: 20982785 false) 
	#(244 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 12605442 false) 
	#(245 3 #reduceActionForinterpolation3: 12788739 false) 
	#(246 2 #reduceActionForref_kind2: 12908545 false) 
	#(250 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 13334530 false) 
	#(392 4 #reduceActionForref_local_function_body2: 30603266 false) 
	#(406 2 #reduceActionFor_____tuple_type_element__element___2: 32046082 false) 
	#(260 2 #reduceActionForref_kind2: 14126081 false) 
	#(259 4 #reduceActionFordeconstruction_tuple1: 14051329 false) 
	#(261 2 #reduceActionFor_____tuple_type_element__element___2: 14126082 false) 
	#(388 4 #reduceActionForlocal_function_header1: 29958145 false) 
	#(503 1 #liftFirstValue: 42861571 false) 
	#(503 1 #liftFirstValue: 42861570 false) 
	#(503 1 #liftFirstValue: 42861569 false) 
	#(502 1 #liftFirstValue: 42801154 false) 
	#(501 1 #liftFirstValue: 42740738 false) 
	#(502 1 #liftFirstValue: 42801153 false) 
	#(462 3 #reduceActionFortype_parameter_list1: 37474305 false) 
	#(464 1 #reduceActionFortype_parameter1: 37683201 false) 
	#(463 2 #reduceActionFortype_parameters1: 37557249 false) 
	#(349 5 #reduceActionForfrom_clause1: 26525697 false) 
	#(332 5 #reduceActionForconditional_expression3: 24369155 false) 
	#(332 5 #reduceActionForconditional_expression3: 24369154 false) 
	#(354 4 #reduceActionForlet_clause1: 26939393 false) 
	#(359 3 #reduceActionFororderings2: 27453442 false) 
	#(494 4 #reduceActionForref_method_body2: 42063874 false) 
	#(481 1 #reduceActionForinterpolated_regular_string1: 40199169 false) 
	#(483 5 #reduceActionForfield_declaration1: 40406017 false) 
	#(505 5 #reduceActionForproperty_declaration1: 43033601 false) 
	#(524 5 #reduceActionForindexer_declaration2: 45889538 false) 
	#(513 0 #nil 44264449 false) 
	#(511 0 #nil 44112897 false) 
	#(515 0 #reduceActionFor_extern_alias_directives1: 44416001 false) 
	#(532 1 #liftFirstValue: 47184899 false) 
	#(534 1 #liftFirstValue: 47457292 false) 
	#(534 1 #liftFirstValue: 47457285 false) 
	#(534 1 #liftFirstValue: 47457286 false) 
	#(534 1 #liftFirstValue: 47457283 false) 
	#(532 1 #liftFirstValue: 47184897 false) 
	#(534 1 #liftFirstValue: 47457281 false) 
	#(532 1 #liftFirstValue: 47184901 false) 
	#(532 1 #liftFirstValue: 47184898 false) 
	#(534 1 #liftFirstValue: 47457282 false) 
	#(532 1 #liftFirstValue: 47184902 false) 
	#(534 1 #liftFirstValue: 47457284 false) 
	#(534 1 #liftFirstValue: 47457294 false) 
	#(534 1 #liftFirstValue: 47457289 false) 
	#(534 1 #liftFirstValue: 47457296 false) 
	#(534 1 #liftFirstValue: 47457291 false) 
	#(534 1 #liftFirstValue: 47457295 false) 
	#(534 1 #liftFirstValue: 47457288 false) 
	#(532 1 #liftFirstValue: 47184904 false) 
	#(532 1 #liftFirstValue: 47184903 false) 
	#(534 1 #liftFirstValue: 47457287 false) 
	#(532 1 #liftFirstValue: 47184900 false) 
	#(534 1 #liftFirstValue: 47457293 false) 
	#(534 1 #liftFirstValue: 47457290 false) 
	#(186 5 #reduceActionForusing_alias_directive1: 7035905 false) 
	#(584 4 #reduceActionForattribute_section1: 56217601 false) 
	#(604 1 #liftFirstValue: 58322945 false) 
	#(601 2 #reduceActionForpositional_argument1: 57996289 false) 
	#(598 3 #reduceActionForexplicit_anonymous_function_signature1: 57559041 false) 
	#(598 3 #reduceActionForexplicit_anonymous_function_signature1: 57559043 false) 
	#(579 6 #reduceActionFordelegate_declaration2: 55244802 false) 
	#(574 1 #liftFirstValue: 54593537 false) 
	#(573 2 #reduceActionForref_kind2: 54507521 false) 
	#(573 2 #reduceActionForref_kind2: 54507522 false) 
	#(576 0 #reduceActionFor_explicit_anonymous_function_paramenter_list1: 54884353 false) 
	#(465 0 #reduceActionFor_class_base1: 37739521 false) 
	#(461 1 #liftFirstValue: 37404674 false) 
	#(562 0 #reduceActionFor_interface_base1: 51769345 false) 
	#(557 1 #liftFirstValue: 51294210 false) 
	#(546 0 #reduceActionFor_interface_base1: 49756161 false) 
	#(626 1 #reduceActionForordering_direction2: 61522946 false) 
	#(625 3 #reduceActionForfixed_pointer_declarator1: 61442049 false) 
	#(623 6 #reduceActionForfixed_statement1: 61174785 false) 
	#(624 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 61297666 false) 
	#(433 0 #nil 34809857 false) 
	#(274 6 #reduceActionForobject_creation_expression1: 16029697 false) 
	#(275 1 #liftFirstValue: 16234498 false) 
	#(281 3 #reduceActionForinitializer_target2: 16797698 false) 
	#(285 3 #reduceActionForelement_initializer2: 17215490 false) 
	#(277 4 #reduceActionForobject_initializer2: 16398338 false) 
	#(279 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 16586754 false) 
	#(282 1 #liftFirstValue: 16875522 false) 
	#(280 3 #reduceActionFormember_initializer1: 16716801 false) 
	#(282 1 #liftFirstValue: 16875521 false) 
	#(283 4 #reduceActionForcollection_initializer2: 16948226 false) 
	#(284 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 17081346 false) 
	#(553 4 #reduceActionForarray_initializer2: 50502658 false) 
	#(555 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 50697218 false) 
	#(552 0 #nil 50455553 false) 
	#(216 1 #reduceActionFor_extern_alias_directives2: 9966594 false) 
	#(302 6 #reduceActionForstackalloc_expression2: 19133442 false) 
	#(419 1 #reduceActionFor_extern_alias_directives2: 33694722 false) 
	#(420 1 #reduceActionForextern_alias_directives1: 33737729 false) 
	#(422 1 #reduceActionForextern_alias_directives1: 33887233 false) 
	#(611 1 #liftFirstValue: 58928130 false) 
	#(447 4 #reduceActionForspecific_catch_clause1: 36042753 false) 
	#(294 4 #reduceActionForunbound_type_name2: 18493442 false) 
	#(296 3 #reduceActionForgeneric_dimension_specifier1: 18785281 false) 
	#(298 2 #reduceActionForextern_alias_directives2: 18863106 false) 
	#(294 4 #reduceActionForunbound_type_name3: 18493443 false) 
	#(631 3 #reduceActionForexplicit_anonymous_function_signature1: 62313473 false) 
	#(632 2 #reduceActionForexplicitly_typed_local_variable_declarators1: 62423041 false) 
	#(309 6 #reduceActionFornull_conditional_member_access1: 20161537 false) 
	#(245 4 #reduceActionForinterpolation4: 12788740 false) 
	#(395 4 #reduceActionForref_local_variable_declarator1: 31119361 false) 
	#(405 2 #reduceActionForref_kind2: 32046081 false) 
	#(497 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 42403842 false) 
	#(496 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 42263554 false) 
	#(468 0 #reduceActionFor_extern_alias_directives1: 38043649 false) 
	#(365 4 #reduceActionForlet_clause1: 27785217 false) 
	#(367 3 #reduceActionForquery_continuation1: 27929601 false) 
	#(480 6 #reduceActionForconstant_declaration1: 39968769 false) 
	#(520 6 #reduceActionForevent_declaration1: 45054977 false) 
	#(539 0 #nil 48302081 false) 
	#(485 3 #reduceActionForvariable_declarator2: 40804354 false) 
	#(492 3 #reduceActionFormember_name2: 41806850 false) 
	#(484 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 40680450 false) 
	#(505 6 #reduceActionForproperty_declaration2: 43033602 false) 
	#(526 3 #reduceActionForindexer_body2: 46476290 false) 
	#(526 3 #reduceActionForindexer_body1: 46476289 false) 
	#(510 2 #reduceActionForref_kind2: 43919361 false) 
	#(513 1 #liftFirstValue: 44264450 false) 
	#(510 2 #reduceActionForaccessor_declarations2: 43919362 false) 
	#(511 1 #liftFirstValue: 44112898 false) 
	#(516 1 #reduceActionForextern_alias_directives1: 44465154 false) 
	#(516 1 #reduceActionForextern_alias_directives1: 44465155 false) 
	#(516 1 #reduceActionForextern_alias_directives1: 44465153 false) 
	#(515 1 #reduceActionFor_extern_alias_directives2: 44416002 false) 
	#(541 3 #reduceActionForlocal_function_body2: 48490498 false) 
	#(536 3 #reduceActionForlocal_function_body2: 47810562 false) 
	#(544 1 #reduceActionForstatic_constructor_body3: 49126403 false) 
	#(544 1 #reduceActionForargument_value1: 49126401 false) 
	#(542 6 #reduceActionForstatic_constructor_declaration1: 48618497 false) 
	#(584 5 #reduceActionForattribute_section2: 56217602 false) 
	#(603 3 #reduceActionFornamed_argument1: 58211329 false) 
	#(600 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 57860098 false) 
	#(602 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 58095618 false) 
	#(179 5 #reduceActionFornamespace_body1: 6414337 false) 
	#(560 0 #nil 51663873 false) 
	#(576 1 #reduceActionFor_extern_alias_directives2: 54884354 false) 
	#(577 1 #reduceActionForinterpolated_regular_string1: 54945793 false) 
	#(571 7 #reduceActionForenum_declaration1: 54318081 false) 
	#(465 1 #reduceActionFor_extern_alias_directives2: 37739522 false) 
	#(562 1 #reduceActionFor_extern_alias_directives2: 51769346 false) 
	#(546 1 #reduceActionFor_extern_alias_directives2: 49756162 false) 
	#(427 7 #reduceActionFordo_statement1: 34320385 false) 
	#(626 2 #reduceActionForref_kind2: 61522945 false) 
	#(433 1 #liftFirstValue: 34809858 false) 
	#(434 1 #reduceActionForfor_initializer2: 34859009 false) 
	#(416 7 #reduceActionForif_statement2: 33316866 false) 
	#(305 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 19509249 false) 
	#(312 5 #reduceActionFornull_conditional_projection_initializer1: 20573185 false) 
	#(286 7 #reduceActionForarray_creation_expression1: 17329153 false) 
	#(552 1 #liftFirstValue: 50455554 false) 
	#(423 2 #reduceActionForswitch_label3: 33968131 false) 
	#(418 3 #reduceActionForgeneric_dimension_specifier1: 33640449 false) 
	#(420 2 #reduceActionForextern_alias_directives2: 33737730 false) 
	#(421 2 #reduceActionForswitch_section1: 33830913 false) 
	#(422 2 #reduceActionForextern_alias_directives2: 33887234 false) 
	#(448 4 #reduceActionForlet_clause1: 36217857 false) 
	#(450 4 #reduceActionForexception_filter1: 36331521 false) 
	#(634 2 #reduceActionFor_____tuple_type_element__element___2: 62494722 false) 
	#(310 2 #reduceActionForextern_alias_directives2: 20287490 false) 
	#(504 4 #reduceActionForparameter_array1: 42916865 false) 
	#(499 0 #reduceActionFor_attribute_target_specifier1: 42643457 false) 
	#(463 4 #reduceActionFortype_parameters2: 37557250 false) 
	#(388 6 #reduceActionForlocal_function_header2: 29958146 false) 
	#(468 1 #reduceActionFor_extern_alias_directives2: 38043650 false) 
	#(469 1 #reduceActionForextern_alias_directives1: 38126593 false) 
	#(482 3 #reduceActionForconstant_declarator1: 40323073 false) 
	#(481 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 40199170 false) 
	#(538 5 #reduceActionForconstructor_declarator1: 48200705 false) 
	#(539 1 #liftFirstValue: 48302082 false) 
	#(525 5 #reduceActionForindexer_declarator1: 46306305 false) 
	#(506 3 #reduceActionForproperty_body2: 43479042 false) 
	#(507 0 #reduceActionFor_property_initializer1: 43611137 false) 
	#(527 3 #reduceActionForref_indexer_body1: 46572545 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44465157 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44465159 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44465156 false) 
	#(516 2 #reduceActionForaccessor_modifiers5: 44465158 false) 
	#(613 1 #reduceActionForref_method_body3: 59639811 false) 
	#(613 1 #reduceActionForref_local_function_body1: 59639809 false) 
	#(612 7 #reduceActionForfinalizer_declaration1: 59355137 false) 
	#(598 5 #reduceActionForattribute_arguments2: 57559042 false) 
	#(558 3 #reduceActionForvariant_type_parameter_list1: 51379201 false) 
	#(561 1 #liftFirstValue: 51728385 false) 
	#(561 1 #liftFirstValue: 51728386 false) 
	#(560 1 #liftFirstValue: 51663874 false) 
	#(575 3 #reduceActionForexplicit_anonymous_function_signature1: 54629377 false) 
	#(578 2 #reduceActionForenum_member_declaration1: 55096321 false) 
	#(212 1 #reduceActionForsimple_type2: 9417730 false) 
	#(212 1 #reduceActionForsimple_type2: 9417731 false) 
	#(212 1 #liftFirstValue: 9417729 false) 
	#(466 2 #reduceActionForclass_base1: 37773313 false) 
	#(467 1 #reduceActionForinterpolated_regular_string1: 37925889 false) 
	#(563 2 #reduceActionForinterface_base1: 51811329 false) 
	#(547 2 #reduceActionForinterface_base1: 49803265 false) 
	#(436 8 #reduceActionForforeach_statement1: 35059713 false) 
	#(423 3 #reduceActionForswitch_label1: 33968129 false) 
	#(633 2 #reduceActionForref_kind2: 62494721 false) 
	#(498 5 #reduceActionForfixed_parameter1: 42517505 false) 
	#(499 1 #reduceActionFor_extern_alias_directives2: 42643458 false) 
	#(469 2 #reduceActionForextern_alias_directives2: 38126594 false) 
	#(520 8 #reduceActionForevent_declaration2: 45054978 false) 
	#(521 2 #reduceActionForref_kind2: 45521921 false) 
	#(521 2 #reduceActionForaccessor_declarations2: 45521922 false) 
	#(506 4 #reduceActionForproperty_body1: 43479041 false) 
	#(507 1 #reduceActionFor_extern_alias_directives2: 43611138 false) 
	#(527 4 #reduceActionForref_indexer_body2: 46572546 false) 
	#(517 1 #reduceActionForstatic_constructor_body3: 44759043 false) 
	#(517 1 #reduceActionForargument_value1: 44759041 false) 
	#(512 4 #reduceActionForget_accessor_declaration1: 44174337 false) 
	#(514 4 #reduceActionForset_accessor_declaration1: 44325889 false) 
	#(535 6 #reduceActionForconversion_operator_declarator2: 47613954 false) 
	#(535 6 #reduceActionForconversion_operator_declarator1: 47613953 false) 
	#(531 6 #reduceActionForunary_operator_declarator1: 47045633 false) 
	#(544 3 #reduceActionForstatic_constructor_body2: 49126402 false) 
	#(612 8 #reduceActionForfinalizer_declaration2: 59355138 false) 
	#(612 8 #reduceActionForfinalizer_declaration2: 59355139 false) 
	#(580 5 #reduceActionFordelegate_header1: 55550977 false) 
	#(559 3 #reduceActionForvariant_type_parameters1: 51478529 false) 
	#(575 4 #reduceActionForanonymous_object_initializer2: 54629378 false) 
	#(577 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 54945794 false) 
	#(477 0 #reduceActionFor_extern_alias_directives1: 39461889 false) 
	#(565 0 #reduceActionFor_extern_alias_directives1: 51961857 false) 
	#(549 0 #reduceActionFor_extern_alias_directives1: 49916929 false) 
	#(428 9 #reduceActionForfor_statement1: 34435073 false) 
	#(436 9 #reduceActionForforeach_statement2: 35059714 false) 
	#(424 2 #reduceActionForref_kind2: 34060289 false) 
	#(423 4 #reduceActionForswitch_label2: 33968130 false) 
	#(311 3 #reduceActionFordependent_access3: 20323331 false) 
	#(311 3 #reduceActionFordependent_access1: 20323329 false) 
	#(311 3 #reduceActionFordependent_access2: 20323330 false) 
	#(500 2 #reduceActionForref_kind2: 42688513 false) 
	#(522 3 #reduceActionForadd_accessor_declaration1: 45744129 false) 
	#(523 3 #reduceActionForremove_accessor_declaration1: 45813761 false) 
	#(525 7 #reduceActionForindexer_declarator2: 46306306 false) 
	#(509 4 #reduceActionForref_property_body2: 43748354 false) 
	#(509 4 #reduceActionForref_property_body1: 43748353 false) 
	#(519 1 #reduceActionForref_accessor_body3: 44957699 false) 
	#(519 1 #reduceActionForref_accessor_body1: 44957697 false) 
	#(518 4 #reduceActionForref_get_accessor_declaration1: 44836865 false) 
	#(613 3 #reduceActionForlocal_function_body2: 59639810 false) 
	#(578 4 #reduceActionForenum_member_declaration2: 55096322 false) 
	#(466 4 #reduceActionForclass_base2: 37773314 false) 
	#(477 1 #reduceActionFor_extern_alias_directives2: 39461890 false) 
	#(478 1 #reduceActionForextern_alias_directives1: 39526401 false) 
	#(459 10 #reduceActionForclass_declaration1: 37038081 false) 
	#(467 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 37925890 false) 
	#(567 1 #liftFirstValue: 52192258 false) 
	#(567 1 #liftFirstValue: 52192260 false) 
	#(565 1 #reduceActionFor_extern_alias_directives2: 51961858 false) 
	#(566 1 #reduceActionForextern_alias_directives1: 52033537 false) 
	#(567 1 #liftFirstValue: 52192257 false) 
	#(567 1 #liftFirstValue: 52192259 false) 
	#(608 0 #nil 58825729 false) 
	#(556 10 #reduceActionForinterface_declaration1: 50917377 false) 
	#(551 1 #liftFirstValue: 50129930 false) 
	#(551 1 #liftFirstValue: 50129921 false) 
	#(551 1 #liftFirstValue: 50129922 false) 
	#(551 1 #liftFirstValue: 50129923 false) 
	#(551 1 #liftFirstValue: 50129924 false) 
	#(551 1 #liftFirstValue: 50129925 false) 
	#(551 1 #liftFirstValue: 50129926 false) 
	#(551 1 #liftFirstValue: 50129927 false) 
	#(551 1 #liftFirstValue: 50129928 false) 
	#(551 1 #liftFirstValue: 50129929 false) 
	#(549 1 #reduceActionFor_extern_alias_directives2: 49916930 false) 
	#(550 1 #reduceActionForextern_alias_directives1: 49983489 false) 
	#(551 1 #liftFirstValue: 50129931 false) 
	#(545 10 #reduceActionForstruct_declaration1: 49402881 false) 
	#(472 1 #reduceActionForprimary_constraint2: 38893570 false) 
	#(472 1 #reduceActionForprimary_constraint3: 38893571 false) 
	#(472 1 #reduceActionForprimary_constraint4: 38893572 false) 
	#(472 1 #reduceActionForprimary_constraint1: 38893569 false) 
	#(474 1 #reduceActionForprimary_constraint1: 39275521 false) 
	#(473 1 #reduceActionForinterpolated_regular_string1: 39011330 false) 
	#(470 4 #reduceActionFortype_parameter_constraints_clause1: 38316033 false) 
	#(471 1 #reduceActionForinterpolated_regular_string1: 38451201 false) 
	#(471 1 #reduceActionFor_extern_alias_directives2: 38451202 false) 
	#(473 1 #reduceActionForinterpolated_regular_string1: 39011329 false) 
	#(471 1 #reduceActionForinterpolated_regular_string1: 38451203 false) 
	#(356 9 #reduceActionForjoin_clause1: 27065345 false) 
	#(508 3 #reduceActionFor______Identifier___type_argument_list__typeArguments__1: 43664385 false) 
	#(488 10 #reduceActionForRefMethodHeader1: 41102337 false) 
	#(517 3 #reduceActionForstatic_constructor_body2: 44759042 false) 
	#(489 10 #reduceActionFormethod_header1: 41347073 false) 
	#(533 8 #reduceActionForbinary_operator_declarator1: 47283201 false) 
	#(559 5 #reduceActionForvariant_type_parameters2: 51478530 false) 
	#(580 7 #reduceActionFordelegate_header2: 55550978 false) 
	#(545 11 #reduceActionForstruct_declaration2: 49402882 false) 
	#(476 3 #reduceActionForgeneric_dimension_specifier1: 39399425 false) 
	#(478 2 #reduceActionForextern_alias_directives2: 39526402 false) 
	#(564 3 #reduceActionForgeneric_dimension_specifier1: 51865601 false) 
	#(566 2 #reduceActionForextern_alias_directives2: 52033538 false) 
	#(608 1 #liftFirstValue: 58825730 false) 
	#(548 3 #reduceActionForgeneric_dimension_specifier1: 49852417 false) 
	#(550 2 #reduceActionForextern_alias_directives2: 49983490 false) 
	#(540 5 #reduceActionForconstructor_initializer1: 48376833 false) 
	#(540 5 #reduceActionForconstructor_initializer2: 48376834 false) 
	#(475 3 #reduceActionForconstructor_constraint1: 39350273 false) 
	#(471 3 #reduceActionFortype_parameter_constraints4: 38451204 false) 
	#(471 3 #reduceActionFortype_parameter_constraints5: 38451205 false) 
	#(473 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 39011332 false) 
	#(473 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 39011331 false) 
	#(471 3 #reduceActionForexplicit_anonymous_function_paramenter_list2: 38451206 false) 
	#(357 11 #reduceActionForjoin_into_clause1: 27225089 false) 
	#(519 4 #reduceActionForref_accessor_body2: 44957698 false) 
	#(568 4 #reduceActionForinterface_method_declaration1: 52382721 false) 
	#(628 1 #liftFirstValue: 61964289 false) 
	#(568 5 #reduceActionForinterface_method_declaration2: 52382722 false) 
	#(629 1 #reduceActionForextern_alias_directives1: 61996033 false) 
	#(471 5 #reduceActionFortype_parameter_constraints7: 38451207 false) 
	#(570 6 #reduceActionForinterface_event_declaration1: 53723137 false) 
	#(627 6 #reduceActionForfixed_size_buffer_declaration1: 61683713 false) 
	#(629 2 #reduceActionForextern_alias_directives2: 61996034 false) 
	#(630 4 #reduceActionForfixed_size_buffer_declarator1: 62152705 false) 
	#(569 7 #reduceActionForinterface_method_header1: 52590593 false)
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>="' '"?"' '"??"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"add"' '"alias"' '"as"' '"ascending"' '"async"' '"await"' '"base"' '"bool"' '"break"' '"by"' '"byte"' '"case"' '"catch"' '"char"' '"checked"' '"class"' '"const"' '"continue"' '"decimal"' '"default"' '"delegate"' '"descending"' '"do"' '"double"' '"dynamic"' '"else"' '"enum"' '"equals"' '"event"' '"explicit"' '"extern"' '"false"' '"field"' '"finally"' '"fixed"' '"float"' '"for"' '"foreach"' '"from"' '"get"' '"goto"' '"group"' '"if"' '"implicit"' '"in"' '"int"' '"interface"' '"internal"' '"into"' '"is"' '"join"' '"let"' '"lock"' '"long"' '"method"' '"nameof"' '"namespace"' '"new"' '"object"' '"on"' '"operator"' '"orderby"' '"out"' '"override"' '"param"' '"params"' '"partial"' '"private"' '"property"' '"protected"' '"public"' '"readonly"' '"ref"' '"remove"' '"return"' '"sbyte"' '"sealed"' '"select"' '"set"' '"short"' '"sizeof"' '"stackalloc"' '"static"' '"string"' '"struct"' '"switch"' '"this"' '"throw"' '"true"' '"try"' '"type"' '"typeof"' '"uint"' '"ulong"' '"unchecked"' '"unmanaged"' '"unsafe"' '"ushort"' '"using"' '"var"' '"virtual"' '"void"' '"volatile"' '"when"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"~"' '<gt>' '<gtgt>' '<rightBrace>' '<comment>' '<Identifier>' '<IntegerLiteral>' '<RealLiteral>' '<CharacterLiteral>' '<InterpolatedRegularStringWhole>' '<InterpolatedRegularStringStart>' '<InterpolatedRegularStringEnd>' '<InterpolatedRegularStringMid>' '<InterpolatedVerbatimStringLiteral>' '<InterpolatedVerbatimStringStart>' '<InterpolatedVerbatimStringEnd>' '<InterpolatedVerbatimStringMid>' '<StringLiteral>' '<NullLiteral>' '<whitespace>' '<preprocessorDirective>' '<patternToken>' 'B e g i n' 'compilation_unit' 'namespace_declaration' 'qualified_identifier' 'namespace_body' '_extern_alias_directives' 'extern_alias_directives' 'extern_alias_directive' '_using_directives' 'using_directives' 'using_directive' 'using_alias_directive' 'using_namespace_directive' 'using_static_directive' '_namespace_member_declarations' 'namespace_member_declarations' 'namespace_member_declaration' 'type_declaration' 'qualified_alias_member' 'namespace_name' 'type_name' 'namespace_or_type_name' '_type' 'type' 'value_type' 'nullable_value_type' 'struct_type' 'tuple_type' '("," tuple_type_element ''element'')' '("," tuple_type_element ''element'')+' 'tuple_type_element' 'simple_type' 'numeric_type' 'integral_type' 'floating_point_type' 'non_nullable_value_type' 'reference_type' 'class_type' 'interface_type' 'array_type' 'non_array_type' '_rank_specifiers' 'rank_specifiers' 'rank_specifier' '_dim_separators' 'dim_separators' 'delegate_type' 'type_argument_list' 'type_arguments' 'type_argument' 'variable_reference' 'pattern' 'var_pattern' 'designation' 'constant_pattern' 'declaration_pattern' 'simple_designation' 'single_variable_designation' '_argument_list' 'argument_list' 'argument' '_argument_name' 'argument_name' 'argument_value' 'primary_expression' 'primary_no_array_creation_expression' 'interpolated_string_expression' 'interpolated_regular_string' 'StartInterpolatedString' 'interpolated_regular_string_body' 'interpolation' 'Regular_Interpolation_Format' 'ScanFormat' 'interpolated_verbatim_string' 'StartInterpolatedVerbatimString' 'interpolated_verbatim_string_body' 'simple_name' '_type_argument_list' 'parenthesized_expression' 'tuple_expression' '("," tuple_element ''element'')' '("," tuple_element ''element'')+' 'tuple_element' 'deconstruction_expression' 'deconstruction_tuple' '("," deconstruction_element ''element'')' '("," deconstruction_element ''element'')+' 'deconstruction_element' 'member_access' 'qualified_alias_member_expression' 'predefined_type_expression' 'predefined_type' 'invocation_expression' 'element_access' 'expression_list' 'this_access' 'base_access' 'post_increment_expression' 'post_decrement_expression' 'object_creation_expression' '_object_or_collection_initializer' 'object_or_collection_initializer' 'object_initializer' '_member_initializer_list' 'member_initializer_list' 'member_initializer' 'initializer_target' 'initializer_value' 'collection_initializer' 'element_initializer_list' 'element_initializer' 'array_creation_expression' 'delegate_creation_expression' 'anonymous_object_creation_expression' 'anonymous_object_initializer' '_member_declarator_list' 'member_declarator_list' 'member_declarator' 'typeof_expression' 'unbound_type_name' '_generic_dimension_specifier' 'generic_dimension_specifier' '_commas' 'commas' 'checked_expression' 'unchecked_expression' 'default_value_expression' 'stackalloc_expression' 'nameof_expression' 'named_entity' '("." <Identifier> _type_argument_list ''typeArguments'')' '("." <Identifier> _type_argument_list ''typeArguments'')*' 'named_entity_target' 'unary_expression' 'null_conditional_member_access' 'dependent_access ''access''*' 'dependent_access' 'null_conditional_projection_initializer' 'null_conditional_invocation_expression' 'null_conditional_element_access' 'pre_increment_expression' 'pre_decrement_expression' 'cast_expression' 'await_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'null_coalescing_expression' 'throw_expression' 'declaration_expression' 'conditional_expression' 'lambda_expression' 'anonymous_method_expression' 'anonymous_function_signature' '_explicit_anonymous_function_signature' 'explicit_anonymous_function_signature' '_explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter_list' 'explicit_anonymous_function_paramenter' '_anonymous_function_parameter_modifier' 'anonymous_function_parameter_modifier' 'implicit_anonymous_function_signature' 'implicit_anonymous_function_parameter_list' 'implicit_anonymous_function_parameter' 'anonymous_function_body' 'RefExpression' 'query_expression' 'from_clause' 'query_body' '_query_body_clauses' 'query_body_clauses' 'query_body_clause' 'let_clause' 'where_clause' 'join_clause' 'join_into_clause' 'orderby_clause' 'orderings' 'ordering' '_ordering_direction' 'ordering_direction' 'select_or_group_clause' 'select_clause' 'group_clause' '_query_continuation' 'query_continuation' 'assignment' 'assignment_operator' '_expression' 'expression' 'non_assignment_expression' 'constant_expression' 'boolean_expression' 'statement' 'embedded_statement' 'block' '_statement_list' 'statement_list' 'empty_statement' 'labeled_statement' 'declaration_statement' 'local_function_declaration' 'RefLocalFunctionHeader' 'ref_local_function_modifier*' 'LocalFunctionHeader' 'local_function_modifier+' 'local_function_header' 'local_function_modifier' 'ref_local_function_modifier' 'local_function_body' 'ref_local_function_body' 'local_variable_declaration' 'implicitly_typed_local_variable_declaration' 'ref_local_variable_declarator' 'ref_kind' 'implicitly_typed_local_variable_declarator' 'explicitly_typed_local_variable_declaration' 'explicitly_typed_local_variable_declarators' '("," explicitly_typed_local_variable_declarator ''declarator'')' '("," explicitly_typed_local_variable_declarator ''declarator'')*' 'explicitly_typed_local_variable_declarator' 'ref_local_variable_declaration' 'ref_local_variable_declarators' '("," ref_local_variable_declarator ''declarator'')' '("," ref_local_variable_declarator ''declarator'')*' 'local_variable_type' 'VarType' 'local_variable_initializer' 'local_constant_declaration' 'const_declarators' 'const_declarator' 'expression_statement' 'statement_expression' 'selection_statement' 'if_statement' 'switch_statement' 'switch_block' '_switch_sections' 'switch_sections' 'switch_section' 'switch_labels' 'switch_label' 'case_guard' 'iteration_statement' 'while_statement' 'do_statement' 'for_statement' '_for_initializer' 'for_initializer' '_for_condition' 'for_condition' '_for_iterator' 'for_iterator' 'statement_expression_list' 'foreach_statement' 'jump_statement' 'break_statement' 'continue_statement' 'goto_statement' 'return_statement' 'throw_statement' 'try_statement' 'catch_clauses' 'specific_catch_clause ''clause''+' 'specific_catch_clause ''clause''*' 'specific_catch_clause' 'exception_specifier' '_exception_filter' 'exception_filter' 'general_catch_clause' 'finally_clause' 'checked_statement' 'unchecked_statement' 'lock_statement' 'using_statement' 'resource_acquisition' 'yield_statement' 'class_declaration' 'any_modifier ''modifier''*' '_type_parameter_list' 'type_parameter_list' 'type_parameters' 'type_parameter' '_class_base' 'class_base' 'interface_type_list' '_type_parameter_constraints_clauses' 'type_parameter_constraints_clauses' 'type_parameter_constraints_clause' 'type_parameter_constraints' 'primary_constraint' 'secondary_constraints' 'interface_type_constraint' 'constructor_constraint' 'class_body' '_class_member_declarations' 'class_member_declarations' 'class_member_declaration' 'constant_declaration' 'constant_declarators' 'constant_declarator' 'field_declaration' 'variable_declarators' 'variable_declarator' 'variable_initializer' 'method_declaration' 'RefMethodHeader' 'method_header' 'return_type' 'ref_return_type' 'member_name' 'method_body' 'ref_method_body' '_formal_parameters_list' 'formal_parameters_list' 'fixed_parameters' 'fixed_parameter' '_default_argument' 'default_argument' '_parameter_modifier' 'parameter_modifier' 'parameter_mode_modifier' 'parameter_array' 'property_declaration' 'property_body' '_property_initializer' 'property_initializer' 'ref_property_body' 'accessor_declarations' '_get_accessor_declaration' 'get_accessor_declaration' '_set_accessor_declaration' 'set_accessor_declaration' '_accessor_modifiers' 'accessor_modifiers' 'accessor_body' 'ref_get_accessor_declaration' 'ref_accessor_body' 'event_declaration' 'event_accessor_declarations' 'add_accessor_declaration' 'remove_accessor_declaration' 'indexer_declaration' 'indexer_declarator' 'indexer_body' 'ref_indexer_body' 'operator_declaration' 'any_modifier ''modifier''+' 'operator_declarator' 'unary_operator_declarator' 'overloadable_unary_operator' 'binary_operator_declarator' 'overloadable_binary_operator' 'conversion_operator_declarator' 'operator_body' 'constructor_declaration' 'constructor_declarator' '_constructor_initializer' 'constructor_initializer' 'constructor_body' 'static_constructor_declaration' 'static_constructor_modifiers' 'static_constructor_body' 'struct_declaration' '_struct_interfaces' 'struct_interfaces' 'struct_body' '_struct_member_declarations' 'struct_member_declarations' 'struct_member_declaration' '_array_initializer' 'array_initializer' '_variable_initializer_list' 'variable_initializer_list' 'interface_declaration' '_variant_type_parameter_list' 'variant_type_parameter_list' 'variant_type_parameters' '_variance_annotation' 'variance_annotation' '_interface_base' 'interface_base' 'interface_body' '_interface_member_declarations' 'interface_member_declarations' 'interface_member_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_event_declaration' 'enum_declaration' '_enum_base' 'enum_base' 'integral_type_name' 'enum_body' '_enum_member_declarations' 'enum_member_declarations' 'enum_member_declaration' 'delegate_declaration' 'delegate_header' '_global_attributes' 'global_attributes' 'global_attribute_sections' 'global_attribute_section' 'global_attribute_target_specifier' 'global_attribute_target' '_attributes' 'attributes' 'attribute_sections' 'attribute_section' '_attribute_target_specifier' 'attribute_target_specifier' 'attribute_target' 'attribute_list' 'attribute' 'attribute_name' '_attribute_arguments' 'attribute_arguments' '_positional_argument_list' 'positional_argument_list' 'positional_argument' 'named_argument_list' 'named_argument' 'attribute_argument_expression' 'literal' 'boolean_literal' '_semicolon' '_new' '_partial' '_extern' '_identifier' 'finalizer_declaration' 'finalizer_body' 'unsafe_modifier' 'unsafe_statement' 'pointer_type' '"*"+' 'unmanaged_type' 'pointer_indirection_expression' 'pointer_member_access' 'addressof_expression' 'sizeof_expression' 'fixed_statement' 'fixed_pointer_declarators' 'fixed_pointer_declarator' 'fixed_pointer_initializer' 'fixed_size_buffer_declaration' 'buffer_element_type' 'fixed_size_buffer_declarators' 'fixed_size_buffer_declarator' 'stackalloc_initializer' 'stackalloc_initializer_element_list' '("," stackalloc_element_initializer)' '("," stackalloc_element_initializer)*' 'stackalloc_element_initializer' 'void_type' 'any_modifier' 'E O F' 'error')
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
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 157 0 50 0 161 0 52 0 165 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 181 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 197 0 65 0 201 0 66 3 29 0 73 0 209 0 76 0 213 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 233 0 87 0 237 0 94 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 0 11 0 114 1 5 0 116 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 0 15 0 124 1 29 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 1 57 0 134 1 61 0 135 1 65 0 136 0 19 0 138 1 73 0 139 1 77 0 140 1 81 0 141 1 85 0 143 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 1 105 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 1 149 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 1 149 0 211 1 149 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 2 109 1 119 2 109 1 120 2 109 1 121 2 109 1 124 2 109 1 125 2 109 1 126 2 109 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 133 2 153 1 134 2 161 1 137 2 165 1 138 2 169 1 140 2 161 1 142 2 177 1 147 2 181 1 152 2 185 1 154 2 109 1 157 2 193 1 158 2 109 1 159 2 109 1 160 2 109 1 161 2 109 1 169 2 109 1 170 2 109 1 171 2 109 1 172 2 109 1 180 2 109 1 181 2 109 1 182 2 109 1 183 2 109 1 184 2 109 1 185 2 109 1 186 2 109 1 187 2 109 1 197 2 109 1 198 2 109 1 199 2 109 1 200 2 109 1 202 3 21 1 234 1 205 2 93 3 29 2 94 2 153 2 102 2 109 2 103 3 41 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 2 109 2 111 3 65 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 3 229 1 75 3 229 1 76 3 229 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 3 229 1 92 3 221 1 93 3 229 1 112 3 229 1 115 3 229 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 1 97 0 149 3 249 1 121] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 0 10 0 158 4 1 0 192 4 1 1 203 4 1 1 223 4 1 1 224 4 1 1 227 4 1 1 231 4 17 1 232 4 21 1 233 4 1 1 249 4 1 2 8 4 1 2 12 4 1 2 16 4 1 2 25 4 1 2 30 4 1 2 33 4 1 2 44 4 1 2 59 4 1 2 67 4 49 2 75 0 93 2 76 0 97 2 77 0 101 2 78 4 1 2 100] 
#[0 4 57 0 43] 
#[0 0 0 2 126] 
#[1 0 26 0 37 0 26 0 41 0 26 0 46 0 26 0 57 0 26 0 62 0 26 0 68 0 26 0 72 0 26 0 88 0 26 0 89 0 26 0 98 0 26 0 99 0 26 0 105 0 26 0 108 0 26 0 109 0 26 0 111 0 26 0 112 0 26 0 113 0 26 0 114 0 26 0 118 0 26 0 124 0 26 0 126 0 26 0 138 4 61 0 140 0 26 0 142 0 26 0 144 4 65 0 183 4 69 0 184 4 73 0 185 4 73 0 186 4 73 0 187 4 73 0 188 0 26 2 126] 
#[1 0 30 0 37 0 30 0 41 0 30 0 46 0 30 0 57 0 30 0 62 0 30 0 68 0 23 0 72 0 30 0 88 0 30 0 89 0 30 0 98 0 30 0 99 0 30 0 105 0 30 0 108 0 30 0 109 0 30 0 111 0 30 0 112 0 30 0 113 0 30 0 114 0 30 0 118 0 30 0 124 0 30 0 126 0 30 0 138 0 30 0 140 0 30 0 142 0 30 0 144 0 30 0 156 4 89 0 182 0 30 2 126] 
#[0 0 34 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[1 4 129 0 70 4 129 0 74 4 129 0 96 4 129 0 106 4 129 0 110 4 129 0 116 4 129 0 132 0 38 0 158 4 121 2 79 4 125 2 80 4 129 2 81] 
#[1 4 133 0 158 4 137 0 178] 
#[0 0 42 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 0 0 2 126] 
#[0 0 46 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 0 50 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 54 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 58 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 62 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 70 0 41 0 70 0 46 0 70 0 57 0 70 0 62 0 70 0 68 0 70 0 72 0 70 0 88 0 70 0 89 0 70 0 99 0 70 0 105 0 70 0 108 0 70 0 109 0 70 0 111 0 70 0 112 0 70 0 113 0 70 0 114 0 70 0 118 0 70 0 124 0 70 0 126 0 70 0 138 0 70 0 142 0 70 0 144 4 141 1 204] 
#[0 0 74 0 8 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 78 0 8 0 49 0 37 0 78 0 41 0 78 0 42 0 78 0 46 0 78 0 49 0 78 0 52 0 78 0 55 0 78 0 57 0 78 0 58 0 78 0 60 0 78 0 62 0 78 0 65 0 78 0 66 0 78 0 68 0 78 0 70 0 78 0 72 0 78 0 76 0 78 0 77 0 78 0 81 0 78 0 86 0 78 0 87 0 78 0 88 0 78 0 89 0 78 0 95 0 78 0 99 0 78 0 100 0 78 0 104 0 78 0 105 0 78 0 107 0 78 0 108 0 78 0 109 0 78 0 111 0 78 0 112 0 78 0 113 0 78 0 114 0 78 0 115 0 78 0 117 0 78 0 118 0 78 0 120 0 78 0 121 0 78 0 124 0 78 0 125 0 78 0 126 0 78 0 128 0 78 0 134 0 78 0 135 0 78 0 138 0 78 0 139 0 78 0 142 0 78 0 143 0 78 0 144 0 78 0 153 0 78 0 158 4 145 2 78] 
#[0 0 82 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 225 1 52 1 205 1 53 1 205 1 58 4 225 1 59 4 225 1 60 4 225 1 61 4 225 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 4 225 2 107 1 205 2 108 4 225 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 4 233 1 52 1 205 1 53 1 205 1 58 4 233 1 59 4 233 1 60 4 233 1 61 4 233 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 4 233 2 107 1 205 2 108 4 233 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 4 237 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 4 241 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 4 245 0 205 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 4 241 0 211 4 241 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 249 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 4 253 1 75 4 253 1 76 4 253 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 4 253 1 92 3 221 1 93 4 253 1 112 4 253 1 115 4 253 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 5 1 1 52 1 205 1 53 1 205 1 58 5 1 1 59 5 1 1 60 5 1 1 61 5 1 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 5 1 2 107 1 205 2 108 5 1 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 5 5 1 52 1 205 1 53 1 205 1 58 5 5 1 59 5 5 1 60 5 5 1 61 5 5 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 5 5 2 107 1 205 2 108 5 5 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 5 9 1 52 1 205 1 53 1 205 1 58 5 9 1 59 5 9 1 60 5 9 1 61 5 9 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 5 9 2 107 1 205 2 108 5 9 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 5 13 1 52 1 205 1 53 1 205 1 58 5 13 1 59 5 13 1 60 5 13 1 61 5 13 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 5 13 2 107 1 205 2 108 5 13 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 5 17 1 52 1 205 1 53 1 205 1 58 5 17 1 59 5 17 1 60 5 17 1 61 5 17 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 5 17 2 107 1 205 2 108 5 17 2 109 1 205 2 110] 
#[0 0 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 90 0 8 0 90 0 46 0 90 0 49 0 90 0 52 0 90 0 55 0 90 0 60 5 21 0 62 0 90 0 65 0 90 0 66 0 90 0 77 0 90 0 87 0 90 0 95 0 90 0 100 0 90 0 117 0 90 0 121 0 90 0 124 0 90 0 125 0 90 0 134 0 90 0 135 0 90 0 138 0 90 0 139 0 90 0 143 0 90 0 158] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 5 25 1 52 1 205 1 53 1 205 1 58 5 25 1 59 5 25 1 60 5 25 1 61 5 25 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 5 25 2 107 1 205 2 108 5 25 2 109 1 205 2 110] 
#[1 5 29 0 20 5 33 0 37] 
#[1 0 94 0 1 0 94 0 2 0 94 0 5 0 94 0 6 0 94 0 8 0 94 0 9 0 94 0 10 0 94 0 12 0 94 0 13 0 94 0 15 0 94 0 16 0 94 0 17 0 98 0 20 0 94 0 23 0 94 0 25 0 94 0 26 0 94 0 29 0 94 0 31 0 94 0 33 0 94 0 35 0 94 0 36 0 94 0 37 0 94 0 38 0 94 0 39 0 94 0 44 0 94 0 45 0 94 0 46 0 94 0 47 0 94 0 48 0 94 0 49 0 94 0 50 0 94 0 51 0 94 0 52 0 94 0 53 0 94 0 55 0 94 0 56 0 94 0 58 0 94 0 59 0 94 0 60 0 94 0 61 0 94 0 62 0 94 0 63 0 94 0 64 0 94 0 65 0 94 0 66 0 94 0 67 0 94 0 69 0 94 0 73 0 94 0 76 0 94 0 77 0 94 0 78 0 94 0 79 0 94 0 80 0 94 0 82 0 94 0 83 0 94 0 84 0 94 0 87 0 94 0 90 0 94 0 91 0 94 0 92 0 94 0 93 0 94 0 94 0 94 0 95 0 94 0 97 0 94 0 99 0 94 0 100 0 94 0 101 0 94 0 103 0 94 0 114 0 94 0 116 0 94 0 117 0 94 0 119 0 94 0 121 0 94 0 122 0 94 0 123 0 94 0 124 0 94 0 125 0 94 0 127 0 94 0 128 0 94 0 129 0 94 0 130 0 94 0 131 0 94 0 133 0 94 0 134 0 94 0 135 0 94 0 136 0 94 0 138 0 94 0 139 0 94 0 140 0 94 0 141 0 94 0 143 0 94 0 145 0 94 0 146 0 94 0 147 0 94 0 148 0 94 0 149 0 94 0 150 0 94 0 152 0 94 0 153 0 94 0 154 0 94 0 156 0 94 0 158 0 94 0 159 0 94 0 160 0 94 0 161 0 94 0 162 0 94 0 163 0 94 0 164 0 94 0 165 0 94 0 166 0 94 0 167 0 94 0 168 0 94 0 169 0 94 0 170 0 94 0 171 0 94 2 126] 
#[0 5 37 0 25] 
#[1 0 102 0 1 0 102 0 2 0 102 0 5 0 102 0 6 0 102 0 8 0 102 0 9 0 102 0 10 0 102 0 12 0 102 0 13 0 102 0 15 0 102 0 16 0 102 0 17 0 106 0 20 0 102 0 23 0 102 0 25 0 102 0 26 0 102 0 29 0 102 0 31 0 102 0 33 0 102 0 35 0 102 0 36 0 102 0 37 0 102 0 38 0 102 0 39 0 102 0 44 0 102 0 45 0 102 0 46 0 102 0 47 0 102 0 48 0 102 0 49 0 102 0 50 0 102 0 51 0 102 0 52 0 102 0 53 0 102 0 55 0 102 0 56 0 102 0 58 0 102 0 59 0 102 0 60 0 102 0 61 0 102 0 62 0 102 0 63 0 102 0 64 0 102 0 65 0 102 0 66 0 102 0 67 0 102 0 69 0 102 0 73 0 102 0 76 0 102 0 77 0 102 0 78 0 102 0 79 0 102 0 80 0 102 0 82 0 102 0 83 0 102 0 84 0 102 0 87 0 102 0 90 0 102 0 91 0 102 0 92 0 102 0 93 0 102 0 94 0 102 0 95 0 102 0 97 0 102 0 99 0 102 0 100 0 102 0 101 0 102 0 103 0 102 0 114 0 102 0 116 0 102 0 117 0 102 0 119 0 102 0 121 0 102 0 122 0 102 0 123 0 102 0 124 0 102 0 125 0 102 0 127 0 102 0 128 0 102 0 129 0 102 0 130 0 102 0 131 0 102 0 133 0 102 0 134 0 102 0 135 0 102 0 136 0 102 0 138 0 102 0 139 0 102 0 140 0 102 0 141 0 102 0 143 0 102 0 145 0 102 0 146 0 102 0 147 0 102 0 148 0 102 0 149 0 102 0 150 0 102 0 152 0 102 0 153 0 102 0 154 0 102 0 156 0 102 0 158 0 102 0 159 0 102 0 160 0 102 0 161 0 102 0 162 0 102 0 163 0 102 0 164 0 102 0 165 0 102 0 166 0 102 0 167 0 102 0 168 0 102 0 169 0 102 0 170 0 102 0 171 0 102 2 126] 
#[1 0 110 0 1 0 110 0 2 0 110 0 5 0 110 0 6 0 110 0 8 0 110 0 9 0 110 0 10 0 110 0 12 0 110 0 13 0 110 0 15 0 110 0 16 0 110 0 17 0 114 0 20 0 110 0 23 0 110 0 25 0 110 0 26 0 110 0 29 0 110 0 31 0 110 0 33 0 110 0 35 0 110 0 36 0 110 0 37 0 110 0 38 0 110 0 39 0 110 0 44 0 110 0 45 0 110 0 46 0 110 0 47 0 110 0 48 0 110 0 49 0 110 0 50 0 110 0 51 0 110 0 52 0 110 0 53 0 110 0 55 0 110 0 56 0 110 0 58 0 110 0 59 0 110 0 60 0 110 0 61 0 110 0 62 0 110 0 63 0 110 0 64 0 110 0 65 0 110 0 66 0 110 0 67 0 110 0 69 0 110 0 73 0 110 0 76 0 110 0 77 0 110 0 78 0 110 0 79 0 110 0 80 0 110 0 82 0 110 0 83 0 110 0 84 0 110 0 87 0 110 0 90 0 110 0 91 0 110 0 92 0 110 0 93 0 110 0 94 0 110 0 95 0 110 0 97 0 110 0 99 0 110 0 100 0 110 0 101 0 110 0 103 0 110 0 114 0 110 0 116 0 110 0 117 0 110 0 119 0 110 0 121 0 110 0 122 0 110 0 123 0 110 0 124 0 110 0 125 0 110 0 127 0 110 0 128 0 110 0 129 0 110 0 130 0 110 0 131 0 110 0 133 0 110 0 134 0 110 0 135 0 110 0 136 0 110 0 138 0 110 0 139 0 110 0 140 0 110 0 141 0 110 0 143 0 110 0 145 0 110 0 146 0 110 0 147 0 110 0 148 0 110 0 149 0 110 0 150 0 110 0 152 0 110 0 153 0 110 0 154 0 110 0 156 0 110 0 158 0 110 0 159 0 110 0 160 0 110 0 161 0 110 0 162 0 110 0 163 0 110 0 164 0 110 0 165 0 110 0 166 0 110 0 167 0 110 0 168 0 110 0 169 0 110 0 170 0 110 0 171 0 110 2 126] 
#[1 5 41 0 8 1 97 0 149 5 45 1 121] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 5 121 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 5 121 0 211 5 121 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[0 5 125 0 25] 
#[1 0 118 0 1 0 118 0 2 0 118 0 5 0 118 0 6 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 12 0 118 0 13 0 118 0 15 0 118 0 16 0 118 0 17 0 122 0 20 0 118 0 23 0 118 0 25 0 118 0 26 0 118 0 29 0 118 0 31 0 118 0 33 0 118 0 35 0 118 0 36 0 118 0 37 0 118 0 38 0 118 0 39 0 118 0 44 0 118 0 45 0 118 0 46 0 118 0 47 0 118 0 48 0 118 0 49 0 118 0 50 0 118 0 51 0 118 0 52 0 118 0 53 0 118 0 55 0 118 0 56 0 118 0 58 0 118 0 59 0 118 0 60 0 118 0 61 0 118 0 62 0 118 0 63 0 118 0 64 0 118 0 65 0 118 0 66 0 118 0 67 0 118 0 69 0 118 0 73 0 118 0 76 0 118 0 77 0 118 0 78 0 118 0 79 0 118 0 80 0 118 0 82 0 118 0 83 0 118 0 84 0 118 0 87 0 118 0 90 0 118 0 91 0 118 0 92 0 118 0 93 0 118 0 94 0 118 0 95 0 118 0 97 0 118 0 99 0 118 0 100 0 118 0 101 0 118 0 103 0 118 0 114 0 118 0 116 0 118 0 117 0 118 0 119 0 118 0 121 0 118 0 122 0 118 0 123 0 118 0 124 0 118 0 125 0 118 0 127 0 118 0 128 0 118 0 129 0 118 0 130 0 118 0 131 0 118 0 133 0 118 0 134 0 118 0 135 0 118 0 136 0 118 0 138 0 118 0 139 0 118 0 140 0 118 0 141 0 118 0 143 0 118 0 145 0 118 0 146 0 118 0 147 0 118 0 148 0 118 0 149 0 118 0 150 0 118 0 152 0 118 0 153 0 118 0 154 0 118 0 156 0 118 0 158 0 118 0 159 0 118 0 160 0 118 0 161 0 118 0 162 0 118 0 163 0 118 0 164 0 118 0 165 0 118 0 166 0 118 0 167 0 118 0 168 0 118 0 169 0 118 0 170 0 118 0 171 0 118 2 126] 
#[1 0 126 0 1 0 126 0 2 0 126 0 3 0 126 0 4 0 126 0 5 0 126 0 6 0 126 0 7 0 27 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 126 0 19 0 126 0 20 0 126 0 21 0 126 0 22 0 126 0 23 0 126 0 25 0 126 0 26 0 126 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 126 0 37 0 126 0 38 0 126 0 39 0 126 0 40 0 126 0 44 0 126 0 45 0 126 0 46 0 126 0 47 0 126 0 48 0 126 0 49 0 126 0 50 0 126 0 51 0 126 0 52 0 126 0 53 0 126 0 55 0 126 0 56 0 126 0 58 0 126 0 59 0 126 0 60 0 126 0 61 0 126 0 62 0 126 0 63 0 126 0 64 0 126 0 65 0 126 0 66 0 126 0 67 0 126 0 69 0 126 0 73 0 126 0 76 0 126 0 77 0 126 0 78 0 126 0 79 0 126 0 80 0 126 0 82 0 126 0 83 0 126 0 84 0 126 0 87 0 126 0 90 0 126 0 91 0 126 0 92 0 126 0 93 0 126 0 94 0 126 0 95 0 126 0 97 0 126 0 99 0 126 0 100 0 126 0 101 0 126 0 103 0 126 0 114 0 126 0 116 0 126 0 117 0 126 0 119 0 126 0 121 0 126 0 122 0 126 0 123 0 126 0 124 0 126 0 125 0 126 0 127 0 126 0 128 0 126 0 129 0 126 0 130 0 126 0 131 0 126 0 133 0 126 0 134 0 126 0 135 0 126 0 136 0 126 0 138 0 126 0 139 0 126 0 140 0 126 0 141 0 126 0 143 0 126 0 145 0 126 0 146 0 126 0 147 0 126 0 148 0 126 0 149 0 126 0 150 0 126 0 151 0 126 0 152 0 126 0 153 0 126 0 154 0 126 0 155 0 126 0 156 0 126 0 158 0 126 0 159 0 126 0 160 0 126 0 161 0 126 0 162 0 126 0 163 0 126 0 164 0 126 0 165 0 126 0 166 0 126 0 167 0 126 0 168 0 126 0 169 0 126 0 170 0 126 0 171 0 126 2 126] 
#[1 5 133 0 8 0 130 0 149 5 137 1 80 5 137 1 81] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 5 149 1 120 5 149 1 121 5 149 1 124 4 229 1 152 5 149 1 157 2 193 1 158 5 149 1 159 5 149 1 160 5 149 1 161 5 149 1 169 5 149 1 170 5 149 1 171 5 149 1 172 5 149 1 180 5 149 1 181 5 149 1 182 5 149 1 183 5 149 1 184 5 149 1 185 5 149 1 186 5 149 1 187 5 149 1 197 5 149 1 198 5 149 1 199 5 149 1 200 5 149 1 202 1 205 2 93 3 29 2 94 5 149 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 5 149 2 111] 
#[1 0 134 0 1 0 134 0 2 0 134 0 5 0 134 0 6 0 134 0 8 0 134 0 9 0 134 0 10 0 134 0 12 0 134 0 13 0 134 0 15 0 134 0 16 0 134 0 17 0 138 0 20 0 134 0 23 0 134 0 25 0 134 0 26 0 134 0 29 0 134 0 31 0 134 0 33 0 134 0 35 0 134 0 36 0 134 0 37 0 134 0 38 0 134 0 39 0 134 0 44 0 134 0 45 0 134 0 46 0 134 0 47 0 134 0 48 0 134 0 49 0 134 0 50 0 134 0 51 0 134 0 52 0 134 0 53 0 134 0 55 0 134 0 56 0 134 0 58 0 134 0 59 0 134 0 60 0 134 0 61 0 134 0 62 0 134 0 63 0 134 0 64 0 134 0 65 0 134 0 66 0 134 0 67 0 134 0 69 0 134 0 73 0 134 0 76 0 134 0 77 0 134 0 78 0 134 0 79 0 134 0 80 0 134 0 82 0 134 0 83 0 134 0 84 0 134 0 87 0 134 0 90 0 134 0 91 0 134 0 92 0 134 0 93 0 134 0 94 0 134 0 95 0 134 0 97 0 134 0 99 0 134 0 100 0 134 0 101 0 134 0 103 0 134 0 114 0 134 0 116 0 134 0 117 0 134 0 119 0 134 0 121 0 134 0 122 0 134 0 123 0 134 0 124 0 134 0 125 0 134 0 127 0 134 0 128 0 134 0 129 0 134 0 130 0 134 0 131 0 134 0 133 0 134 0 134 0 134 0 135 0 134 0 136 0 134 0 138 0 134 0 139 0 134 0 140 0 134 0 141 0 134 0 143 0 134 0 145 0 134 0 146 0 134 0 147 0 134 0 148 0 134 0 149 0 134 0 150 0 134 0 152 0 134 0 153 0 134 0 154 0 134 0 156 0 134 0 158 0 134 0 159 0 134 0 160 0 134 0 161 0 134 0 162 0 134 0 163 0 134 0 164 0 134 0 165 0 134 0 166 0 134 0 167 0 134 0 168 0 134 0 169 0 134 0 170 0 134 0 171 0 134 2 126] 
#[1 0 142 0 1 0 142 0 2 0 142 0 5 0 142 0 6 0 142 0 8 0 142 0 9 0 142 0 10 0 142 0 12 0 142 0 13 0 142 0 15 0 142 0 16 0 142 0 17 0 142 0 23 0 142 0 25 0 142 0 26 0 142 0 29 0 142 0 31 0 142 0 33 0 142 0 35 0 142 0 36 0 146 0 37 0 142 0 38 0 142 0 39 0 142 0 44 0 142 0 45 0 142 0 46 0 142 0 47 0 142 0 48 0 142 0 49 0 142 0 50 0 142 0 51 0 142 0 52 0 142 0 53 0 142 0 55 0 142 0 56 0 142 0 58 0 142 0 59 0 142 0 60 0 142 0 61 0 142 0 62 0 142 0 63 0 142 0 64 0 142 0 65 0 142 0 66 0 142 0 67 0 142 0 69 0 142 0 73 0 142 0 76 0 142 0 77 0 142 0 78 0 142 0 79 0 142 0 80 0 142 0 82 0 142 0 83 0 142 0 84 0 142 0 87 0 142 0 90 0 142 0 91 0 142 0 92 0 142 0 93 0 142 0 94 0 142 0 95 0 142 0 97 0 142 0 99 0 142 0 100 0 142 0 101 0 142 0 102 0 142 0 103 0 142 0 114 0 142 0 116 0 142 0 117 0 142 0 119 0 142 0 121 0 142 0 122 0 142 0 123 0 142 0 124 0 142 0 125 0 142 0 127 0 142 0 128 0 142 0 129 0 142 0 130 0 142 0 131 0 142 0 133 0 142 0 134 0 142 0 135 0 142 0 136 0 142 0 138 0 142 0 139 0 142 0 140 0 142 0 141 0 142 0 143 0 142 0 145 0 142 0 146 0 142 0 147 0 142 0 148 0 142 0 149 0 142 0 150 0 142 0 152 0 142 0 153 0 142 0 154 0 142 0 156 0 142 0 158 0 142 0 159 0 142 0 160 0 142 0 161 0 142 0 162 0 142 0 163 0 142 0 164 0 142 0 165 0 142 0 166 0 142 0 167 0 142 0 168 0 142 0 169 0 142 0 170 0 142 0 171 0 142 2 126] 
#[0 0 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 5 153 0 8] 
#[1 0 154 0 1 0 154 0 2 0 154 0 5 0 154 0 6 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 12 0 154 0 13 0 154 0 15 0 154 0 16 0 154 0 17 0 158 0 20 0 154 0 23 0 154 0 25 0 154 0 26 0 154 0 29 0 154 0 31 0 154 0 33 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 47 0 154 0 48 0 154 0 49 0 154 0 50 0 154 0 51 0 154 0 52 0 154 0 53 0 154 0 55 0 154 0 56 0 154 0 58 0 154 0 59 0 154 0 60 0 154 0 61 0 154 0 62 0 154 0 63 0 154 0 64 0 154 0 65 0 154 0 66 0 154 0 67 0 154 0 69 0 154 0 73 0 154 0 76 0 154 0 77 0 154 0 78 0 154 0 79 0 154 0 80 0 154 0 82 0 154 0 83 0 154 0 84 0 154 0 87 0 154 0 90 0 154 0 91 0 154 0 92 0 154 0 93 0 154 0 94 0 154 0 95 0 154 0 97 0 154 0 99 0 154 0 100 0 154 0 101 0 154 0 103 0 154 0 114 0 154 0 116 0 154 0 117 0 154 0 119 0 154 0 121 0 154 0 122 0 154 0 123 0 154 0 124 0 154 0 125 0 154 0 127 0 154 0 128 0 154 0 129 0 154 0 130 0 154 0 131 0 154 0 133 0 154 0 134 0 154 0 135 0 154 0 136 0 154 0 138 0 154 0 139 0 154 0 140 0 154 0 141 0 154 0 143 0 154 0 145 0 154 0 146 0 154 0 147 0 154 0 148 0 154 0 149 0 154 0 150 0 154 0 152 0 154 0 153 0 154 0 154 0 154 0 156 0 154 0 158 0 154 0 159 0 154 0 160 0 154 0 161 0 154 0 162 0 154 0 163 0 154 0 164 0 154 0 165 0 154 0 166 0 154 0 167 0 154 0 168 0 154 0 169 0 154 0 170 0 154 0 171 0 154 2 126] 
#[0 5 157 0 8] 
#[0 5 161 0 8] 
#[1 5 165 0 53 5 169 0 61 5 173 0 158] 
#[0 5 177 0 8] 
#[1 0 162 0 1 0 162 0 2 0 162 0 5 0 162 0 6 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 12 0 162 0 13 0 162 0 15 0 162 0 16 0 162 0 17 0 166 0 20 0 162 0 23 0 162 0 25 0 162 0 26 0 162 0 29 0 162 0 31 0 162 0 33 0 162 0 35 0 162 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 162 0 49 0 162 0 50 0 162 0 51 0 162 0 52 0 162 0 53 0 162 0 55 0 162 0 56 0 162 0 58 0 162 0 59 0 162 0 60 0 162 0 61 0 162 0 62 0 162 0 63 0 162 0 64 0 162 0 65 0 162 0 66 0 162 0 67 0 162 0 69 0 162 0 73 0 162 0 76 0 162 0 77 0 162 0 78 0 162 0 79 0 162 0 80 0 162 0 82 0 162 0 83 0 162 0 84 0 162 0 87 0 162 0 90 0 162 0 91 0 162 0 92 0 162 0 93 0 162 0 94 0 162 0 95 0 162 0 97 0 162 0 99 0 162 0 100 0 162 0 101 0 162 0 103 0 162 0 114 0 162 0 116 0 162 0 117 0 162 0 119 0 162 0 121 0 162 0 122 0 162 0 123 0 162 0 124 0 162 0 125 0 162 0 127 0 162 0 128 0 162 0 129 0 162 0 130 0 162 0 131 0 162 0 133 0 162 0 134 0 162 0 135 0 162 0 136 0 162 0 138 0 162 0 139 0 162 0 140 0 162 0 141 0 162 0 143 0 162 0 145 0 162 0 146 0 162 0 147 0 162 0 148 0 162 0 149 0 162 0 150 0 162 0 152 0 162 0 153 0 162 0 154 0 162 0 156 0 162 0 158 0 162 0 159 0 162 0 160 0 162 0 161 0 162 0 162 0 162 0 163 0 162 0 164 0 162 0 165 0 162 0 166 0 162 0 167 0 162 0 168 0 162 0 169 0 162 0 170 0 162 0 171 0 162 2 126] 
#[0 5 181 0 8] 
#[1 0 170 0 1 0 170 0 2 0 170 0 5 0 170 0 6 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 12 0 170 0 13 0 170 0 15 0 170 0 16 0 170 0 17 0 174 0 20 0 170 0 23 0 170 0 25 0 170 0 26 0 170 0 29 0 170 0 31 0 170 0 33 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 47 0 170 0 48 0 170 0 49 0 170 0 50 0 170 0 51 0 170 0 52 0 170 0 53 0 170 0 55 0 170 0 56 0 170 0 58 0 170 0 59 0 170 0 60 0 170 0 61 0 170 0 62 0 170 0 63 0 170 0 64 0 170 0 65 0 170 0 66 0 170 0 67 0 170 0 69 0 170 0 73 0 170 0 76 0 170 0 77 0 170 0 78 0 170 0 79 0 170 0 80 0 170 0 82 0 170 0 83 0 170 0 84 0 170 0 87 0 170 0 90 0 170 0 91 0 170 0 92 0 170 0 93 0 170 0 94 0 170 0 95 0 170 0 97 0 170 0 99 0 170 0 100 0 170 0 101 0 170 0 103 0 170 0 114 0 170 0 116 0 170 0 117 0 170 0 119 0 170 0 121 0 170 0 122 0 170 0 123 0 170 0 124 0 170 0 125 0 170 0 127 0 170 0 128 0 170 0 129 0 170 0 130 0 170 0 131 0 170 0 133 0 170 0 134 0 170 0 135 0 170 0 136 0 170 0 138 0 170 0 139 0 170 0 140 0 170 0 141 0 170 0 143 0 170 0 145 0 170 0 146 0 170 0 147 0 170 0 148 0 170 0 149 0 170 0 150 0 170 0 152 0 170 0 153 0 170 0 154 0 170 0 156 0 170 0 158 0 170 0 159 0 170 0 160 0 170 0 161 0 170 0 162 0 170 0 163 0 170 0 164 0 170 0 165 0 170 0 166 0 170 0 167 0 170 0 168 0 170 0 169 0 170 0 170 0 170 0 171 0 170 2 126] 
#[0 5 185 0 8] 
#[1 5 49 0 8 5 189 0 37 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 193 0 149 5 113 0 158 1 145 0 193 5 197 0 195 1 145 0 196 5 201 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 5 201 0 211 5 205 0 214 5 209 0 215 5 213 0 218 5 217 0 221 5 221 1 33 3 41 2 104 3 245 2 124] 
#[1 0 178 0 1 0 178 0 2 0 178 0 5 0 178 0 6 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 12 0 178 0 13 0 178 0 15 0 178 0 16 0 178 0 17 0 182 0 20 0 178 0 23 0 178 0 25 0 178 0 26 0 178 0 29 0 178 0 31 0 178 0 33 0 178 0 35 0 178 0 36 0 186 0 37 0 178 0 38 0 178 0 39 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 47 0 178 0 48 0 178 0 49 0 178 0 50 0 178 0 51 0 178 0 52 0 178 0 53 0 178 0 55 0 178 0 56 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 63 0 178 0 64 0 178 0 65 0 178 0 66 0 178 0 67 0 178 0 69 0 178 0 73 0 178 0 76 0 178 0 77 0 178 0 78 0 178 0 79 0 178 0 80 0 178 0 82 0 178 0 83 0 178 0 84 0 178 0 87 0 178 0 90 0 178 0 91 0 178 0 92 0 178 0 93 0 178 0 94 0 178 0 95 0 178 0 97 0 178 0 99 0 178 0 100 0 178 0 101 0 178 0 103 0 178 0 114 0 178 0 116 0 178 0 117 0 178 0 119 0 178 0 121 0 178 0 122 0 178 0 123 0 178 0 124 0 178 0 125 0 178 0 127 0 178 0 128 0 178 0 129 0 178 0 130 0 178 0 131 0 178 0 133 0 178 0 134 0 178 0 135 0 178 0 136 0 178 0 138 0 178 0 139 0 178 0 140 0 178 0 141 0 178 0 143 0 178 0 145 0 178 0 146 0 178 0 147 0 178 0 148 0 178 0 149 0 178 0 150 0 178 0 152 0 178 0 153 0 178 0 154 0 178 0 156 0 178 0 158 0 178 0 159 0 178 0 160 0 178 0 161 0 178 0 162 0 178 0 163 0 178 0 164 0 178 0 165 0 178 0 166 0 178 0 167 0 178 0 168 0 178 0 169 0 178 0 170 0 178 0 171 0 178 2 126] 
#[1 0 190 0 8 0 190 0 49 0 190 0 52 0 190 0 55 0 190 0 60 0 190 0 65 0 190 0 66 0 190 0 77 0 190 0 87 0 190 0 95 0 190 0 100 5 225 0 113 0 190 0 117 0 190 0 121 0 190 0 125 0 190 0 134 0 190 0 135 0 190 0 139 0 190 0 141 0 190 0 143 0 190 0 158] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 194 0 25 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 5 229 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 5 233 1 75 5 233 1 76 5 233 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 5 233 1 92 3 221 1 93 5 233 1 112 5 233 1 114 5 233 1 115 5 233 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 198 0 1 0 198 0 2 0 198 0 5 0 198 0 6 0 198 0 8 0 198 0 9 0 198 0 10 0 198 0 12 0 198 0 13 0 198 0 15 0 198 0 16 0 198 0 17 0 202 0 20 0 198 0 23 0 198 0 25 0 198 0 26 0 198 0 29 0 198 0 31 0 198 0 33 0 198 0 35 0 198 0 36 0 198 0 37 0 198 0 38 0 198 0 39 0 198 0 44 0 198 0 45 0 198 0 46 0 198 0 47 0 198 0 48 0 198 0 49 0 198 0 50 0 198 0 51 0 198 0 52 0 198 0 53 0 198 0 55 0 198 0 56 0 198 0 58 0 198 0 59 0 198 0 60 0 198 0 61 0 198 0 62 0 198 0 63 0 198 0 64 0 198 0 65 0 198 0 66 0 198 0 67 0 198 0 69 0 198 0 73 0 198 0 76 0 198 0 77 0 198 0 78 0 198 0 79 0 198 0 80 0 198 0 82 0 198 0 83 0 198 0 84 0 198 0 87 0 198 0 90 0 198 0 91 0 198 0 92 0 198 0 93 0 198 0 94 0 198 0 95 0 198 0 97 0 198 0 99 0 198 0 100 0 198 0 101 0 198 0 103 0 198 0 114 0 198 0 116 0 198 0 117 0 198 0 119 0 198 0 121 0 198 0 122 0 198 0 123 0 198 0 124 0 198 0 125 0 198 0 127 0 198 0 128 0 198 0 129 0 198 0 130 0 198 0 131 0 198 0 133 0 198 0 134 0 198 0 135 0 198 0 136 0 198 0 138 0 198 0 139 0 198 0 140 0 198 0 141 0 198 0 143 0 198 0 145 0 198 0 146 0 198 0 147 0 198 0 148 0 198 0 149 0 198 0 150 0 198 0 152 0 198 0 153 0 198 0 154 0 198 0 156 0 198 0 158 0 198 0 159 0 198 0 160 0 198 0 161 0 198 0 162 0 198 0 163 0 198 0 164 0 198 0 165 0 198 0 166 0 198 0 167 0 198 0 168 0 198 0 169 0 198 0 170 0 198 0 171 0 198 2 126] 
#[1 0 206 0 1 0 206 0 2 0 206 0 5 0 206 0 6 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 12 0 206 0 13 0 206 0 15 0 206 0 16 0 206 0 17 0 210 0 20 0 206 0 23 0 206 0 25 0 206 0 26 0 206 0 29 0 206 0 31 0 206 0 33 0 206 0 35 0 206 0 36 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 48 0 206 0 49 0 206 0 50 0 206 0 51 0 206 0 52 0 206 0 53 0 206 0 55 0 206 0 56 0 206 0 58 0 206 0 59 0 206 0 60 0 206 0 61 0 206 0 62 0 206 0 63 0 206 0 64 0 206 0 65 0 206 0 66 0 206 0 67 0 206 0 69 0 206 0 73 0 206 0 76 0 206 0 77 0 206 0 78 0 206 0 79 0 206 0 80 0 206 0 82 0 206 0 83 0 206 0 84 0 206 0 87 0 206 0 90 0 206 0 91 0 206 0 92 0 206 0 93 0 206 0 94 0 206 0 95 0 206 0 97 0 206 0 99 0 206 0 100 0 206 0 101 0 206 0 103 0 206 0 114 0 206 0 116 0 206 0 117 0 206 0 119 0 206 0 121 0 206 0 122 0 206 0 123 0 206 0 124 0 206 0 125 0 206 0 127 0 206 0 128 0 206 0 129 0 206 0 130 0 206 0 131 0 206 0 133 0 206 0 134 0 206 0 135 0 206 0 136 0 206 0 138 0 206 0 139 0 206 0 140 0 206 0 141 0 206 0 143 0 206 0 145 0 206 0 146 0 206 0 147 0 206 0 148 0 206 0 149 0 206 0 150 0 206 0 152 0 206 0 153 0 206 0 154 0 206 0 156 0 206 0 158 0 206 0 159 0 206 0 160 0 206 0 161 0 206 0 162 0 206 0 163 0 206 0 164 0 206 0 165 0 206 0 166 0 206 0 167 0 206 0 168 0 206 0 169 0 206 0 170 0 206 0 171 0 206 2 126] 
#[0 5 241 0 8] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 1 173 0 77 1 173 0 87 1 173 0 95 1 173 0 117 1 173 0 121 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 5 245 0 199 5 245 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 5 253 2 104 5 253 2 106 3 245 2 124] 
#[0 0 214 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 0 218 0 1 0 218 0 2 0 218 0 5 0 218 0 6 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 16 0 218 0 17 0 222 0 20 0 218 0 23 0 218 0 25 0 218 0 26 0 218 0 29 0 218 0 31 0 218 0 33 0 218 0 35 0 218 0 36 0 226 0 37 0 218 0 38 0 218 0 39 0 218 0 44 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 48 0 218 0 49 0 218 0 50 0 218 0 51 0 218 0 52 0 218 0 53 0 218 0 55 0 218 0 56 0 218 0 58 0 218 0 59 0 218 0 60 0 218 0 61 0 218 0 62 0 218 0 63 0 218 0 64 0 218 0 65 0 218 0 66 0 218 0 67 0 218 0 69 0 218 0 73 0 218 0 76 0 218 0 77 0 218 0 78 0 218 0 79 0 218 0 80 0 218 0 82 0 218 0 83 0 218 0 84 0 218 0 87 0 218 0 90 0 218 0 91 0 218 0 92 0 218 0 93 0 218 0 94 0 218 0 95 0 218 0 97 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 103 0 218 0 114 0 218 0 116 0 218 0 117 0 218 0 119 0 218 0 121 0 218 0 122 0 218 0 123 0 218 0 124 0 218 0 125 0 218 0 127 0 218 0 128 0 218 0 129 0 218 0 130 0 218 0 131 0 218 0 133 0 218 0 134 0 218 0 135 0 218 0 136 0 218 0 138 0 218 0 139 0 218 0 140 0 218 0 141 0 218 0 143 0 218 0 145 0 218 0 146 0 218 0 147 0 218 0 148 0 218 0 149 0 218 0 150 0 218 0 152 0 218 0 153 0 218 0 154 0 218 0 156 0 218 0 158 0 218 0 159 0 218 0 160 0 218 0 161 0 218 0 162 0 218 0 163 0 218 0 164 0 218 0 165 0 218 0 166 0 218 0 167 0 218 0 168 0 218 0 169 0 218 0 170 0 218 0 171 0 218 2 126] 
#[0 6 1 0 8] 
#[0 0 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 194 0 25 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 6 5 1 75 6 5 1 76 6 5 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 6 5 1 92 3 221 1 93 6 5 1 112 6 5 1 114 6 5 1 115 6 5 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 0 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 97 0 149 6 9 1 121] 
#[0 6 13 0 8] 
#[1 0 238 0 1 0 238 0 2 0 238 0 5 0 238 0 6 0 238 0 8 0 238 0 9 0 238 0 10 0 238 0 12 0 238 0 13 0 238 0 15 0 238 0 16 0 238 0 17 0 242 0 20 0 238 0 23 0 238 0 25 0 238 0 26 0 238 0 29 0 238 0 31 0 238 0 33 0 238 0 35 0 238 0 36 0 238 0 37 0 238 0 38 0 238 0 39 0 238 0 44 0 238 0 45 0 238 0 46 0 238 0 47 0 238 0 48 0 238 0 49 0 238 0 50 0 238 0 51 0 238 0 52 0 238 0 53 0 238 0 55 0 238 0 56 0 238 0 58 0 238 0 59 0 238 0 60 0 238 0 61 0 238 0 62 0 238 0 63 0 238 0 64 0 238 0 65 0 238 0 66 0 238 0 67 0 238 0 69 0 238 0 73 0 238 0 76 0 238 0 77 0 238 0 78 0 238 0 79 0 238 0 80 0 238 0 82 0 238 0 83 0 238 0 84 0 238 0 87 0 238 0 90 0 238 0 91 0 238 0 92 0 238 0 93 0 238 0 94 0 238 0 95 0 238 0 97 0 238 0 99 0 238 0 100 0 238 0 101 0 238 0 103 0 238 0 114 0 238 0 116 0 238 0 117 0 238 0 119 0 238 0 121 0 238 0 122 0 238 0 123 0 238 0 124 0 238 0 125 0 238 0 127 0 238 0 128 0 238 0 129 0 238 0 130 0 238 0 131 0 238 0 133 0 238 0 134 0 238 0 135 0 238 0 136 0 238 0 138 0 238 0 139 0 238 0 140 0 238 0 141 0 238 0 143 0 238 0 145 0 238 0 146 0 238 0 147 0 238 0 148 0 238 0 149 0 238 0 150 0 238 0 152 0 238 0 153 0 238 0 154 0 238 0 156 0 238 0 158 0 238 0 159 0 238 0 160 0 238 0 161 0 238 0 162 0 238 0 163 0 238 0 164 0 238 0 165 0 238 0 166 0 238 0 167 0 238 0 168 0 238 0 169 0 238 0 170 0 238 0 171 0 238 2 126] 
#[1 0 246 0 1 0 246 0 2 0 246 0 5 0 246 0 6 0 246 0 8 0 246 0 9 0 246 0 10 0 246 0 12 0 246 0 13 0 246 0 15 0 246 0 16 0 246 0 17 0 250 0 20 0 246 0 23 0 246 0 25 0 246 0 26 0 246 0 29 0 246 0 31 0 246 0 33 0 246 0 35 0 246 0 36 0 246 0 37 0 246 0 38 0 246 0 39 0 246 0 44 0 246 0 45 0 246 0 46 0 246 0 47 0 246 0 48 0 246 0 49 0 246 0 50 0 246 0 51 0 246 0 52 0 246 0 53 0 246 0 55 0 246 0 56 0 246 0 58 0 246 0 59 0 246 0 60 0 246 0 61 0 246 0 62 0 246 0 63 0 246 0 64 0 246 0 65 0 246 0 66 0 246 0 67 0 246 0 69 0 246 0 73 0 246 0 76 0 246 0 77 0 246 0 78 0 246 0 79 0 246 0 80 0 246 0 82 0 246 0 83 0 246 0 84 0 246 0 87 0 246 0 90 0 246 0 91 0 246 0 92 0 246 0 93 0 246 0 94 0 246 0 95 0 246 0 97 0 246 0 99 0 246 0 100 0 246 0 101 0 246 0 103 0 246 0 114 0 246 0 116 0 246 0 117 0 246 0 119 0 246 0 121 0 246 0 122 0 246 0 123 0 246 0 124 0 246 0 125 0 246 0 127 0 246 0 128 0 246 0 129 0 246 0 130 0 246 0 131 0 246 0 133 0 246 0 134 0 246 0 135 0 246 0 136 0 246 0 138 0 246 0 139 0 246 0 140 0 246 0 141 0 246 0 143 0 246 0 145 0 246 0 146 0 246 0 147 0 246 0 148 0 246 0 149 0 246 0 150 0 246 0 152 0 246 0 153 0 246 0 154 0 246 0 156 0 246 0 158 0 246 0 159 0 246 0 160 0 246 0 161 0 246 0 162 0 246 0 163 0 246 0 164 0 246 0 165 0 246 0 166 0 246 0 167 0 246 0 168 0 246 0 169 0 246 0 170 0 246 0 171 0 246 2 126] 
#[1 6 17 0 8 1 97 0 149 6 21 1 121] 
#[1 0 254 0 8 0 254 0 46 0 254 0 49 0 254 0 52 0 254 0 55 0 254 0 60 0 254 0 65 0 254 0 66 0 254 0 77 0 254 0 87 0 254 0 95 0 254 0 100 0 254 0 117 0 254 0 121 0 254 0 124 0 254 0 125 0 254 0 134 0 254 0 135 0 254 0 138 0 254 0 139 0 254 0 143 1 97 0 149 0 254 0 158 6 25 1 121] 
#[1 1 2 0 1 1 2 0 2 1 2 0 5 1 2 0 6 1 2 0 8 1 2 0 9 1 2 0 10 1 2 0 12 1 2 0 13 1 2 0 15 1 2 0 16 1 2 0 17 1 6 0 20 1 2 0 23 1 2 0 25 1 2 0 26 1 2 0 29 1 2 0 31 1 2 0 33 1 2 0 35 1 2 0 36 1 2 0 37 1 2 0 38 1 2 0 39 1 2 0 44 1 2 0 45 1 2 0 46 1 2 0 47 1 2 0 48 1 2 0 49 1 2 0 50 1 2 0 51 1 2 0 52 1 2 0 53 1 2 0 55 1 2 0 56 1 2 0 58 1 2 0 59 1 2 0 60 1 2 0 61 1 2 0 62 1 2 0 63 1 2 0 64 1 2 0 65 1 2 0 66 1 2 0 67 1 2 0 69 1 2 0 73 1 2 0 76 1 2 0 77 1 2 0 78 1 2 0 79 1 2 0 80 1 2 0 82 1 2 0 83 1 2 0 84 1 2 0 87 1 2 0 90 1 2 0 91 1 2 0 92 1 2 0 93 1 2 0 94 1 2 0 95 1 2 0 97 1 2 0 99 1 2 0 100 1 2 0 101 1 2 0 103 1 2 0 114 1 2 0 116 1 2 0 117 1 2 0 119 1 2 0 121 1 2 0 122 1 2 0 123 1 2 0 124 1 2 0 125 1 2 0 127 1 2 0 128 1 2 0 129 1 2 0 130 1 2 0 131 1 2 0 133 1 2 0 134 1 2 0 135 1 2 0 136 1 2 0 138 1 2 0 139 1 2 0 140 1 2 0 141 1 2 0 143 1 2 0 145 1 2 0 146 1 2 0 147 1 2 0 148 1 2 0 149 1 2 0 150 1 2 0 152 1 2 0 153 1 2 0 154 1 2 0 156 1 2 0 158 1 2 0 159 1 2 0 160 1 2 0 161 1 2 0 162 1 2 0 163 1 2 0 164 1 2 0 165 1 2 0 166 1 2 0 167 1 2 0 168 1 2 0 169 1 2 0 170 1 2 0 171 1 2 2 126] 
#[0 6 29 0 8] 
#[0 1 10 0 8 0 158] 
#[0 1 14 0 9 0 10 0 158] 
#[0 6 33 0 8] 
#[1 6 37 0 50 6 41 0 116] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 157 0 50 0 161 0 52 0 165 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 181 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 197 0 65 0 201 0 66 3 29 0 73 0 209 0 76 0 213 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 233 0 87 0 237 0 94 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 0 11 0 114 1 5 0 116 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 0 15 0 124 1 29 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 1 57 0 134 1 61 0 135 1 65 0 136 0 19 0 138 1 73 0 139 1 77 0 140 1 81 0 141 1 85 0 143 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 1 18 0 156 1 105 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 1 149 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 1 149 0 211 1 149 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 6 45 1 119 6 45 1 120 6 45 1 121 6 49 1 122 6 53 1 123 6 45 1 124 6 45 1 125 6 45 1 126 6 45 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 133 2 153 1 134 2 161 1 137 2 165 1 138 2 169 1 140 2 161 1 142 2 177 1 147 2 181 1 152 2 185 1 154 6 45 1 157 2 193 1 158 6 45 1 159 6 45 1 160 6 45 1 161 6 45 1 169 6 45 1 170 6 45 1 171 6 45 1 172 6 45 1 180 6 45 1 181 6 45 1 182 6 45 1 183 6 45 1 184 6 45 1 185 6 45 1 186 6 45 1 187 6 45 1 197 6 45 1 198 6 45 1 199 6 45 1 200 6 45 1 202 3 21 1 234 1 205 2 93 3 29 2 94 2 153 2 102 6 45 2 103 3 41 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 6 45 2 111 3 65 2 124] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 6 57 1 52 1 205 1 53 1 205 1 58 6 57 1 59 6 57 1 60 6 57 1 61 6 57 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 6 57 2 107 1 205 2 108 6 57 2 109 1 205 2 110] 
#[1 1 22 0 4 1 22 0 7 1 22 0 8 1 22 0 10 1 22 0 11 1 22 0 13 1 22 0 14 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 22 6 61 0 23 6 65 0 24 6 69 0 26 1 22 0 28 1 22 0 30 1 22 0 34 1 22 0 35 1 22 0 37 1 22 0 40 1 22 0 151 1 22 0 158 6 77 0 222 6 77 0 252] 
#[0 1 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 54 0 1 1 54 0 2 1 54 0 5 1 54 0 6 1 54 0 8 1 54 0 9 1 54 0 10 1 54 0 12 1 54 0 13 1 54 0 15 1 54 0 16 1 54 0 17 0 31 0 20 1 54 0 23 1 54 0 25 1 54 0 26 1 54 0 29 1 54 0 31 1 54 0 33 1 54 0 35 1 54 0 36 1 54 0 37 1 54 0 38 1 54 0 39 1 54 0 44 1 54 0 45 1 54 0 46 1 54 0 47 1 54 0 48 1 54 0 49 1 54 0 50 1 54 0 51 1 54 0 52 1 54 0 53 1 54 0 55 1 54 0 56 1 54 0 58 1 54 0 59 1 54 0 60 1 54 0 61 1 54 0 62 1 54 0 63 1 54 0 64 1 54 0 65 1 54 0 66 1 54 0 67 1 54 0 69 1 54 0 73 1 54 0 76 1 54 0 77 1 54 0 78 1 54 0 79 1 54 0 80 1 54 0 82 1 54 0 83 1 54 0 84 1 54 0 87 1 54 0 90 1 54 0 91 1 54 0 92 1 54 0 93 1 54 0 94 1 54 0 95 1 54 0 97 1 54 0 99 1 54 0 100 1 54 0 101 1 54 0 103 1 54 0 114 1 54 0 116 1 54 0 117 1 54 0 119 1 54 0 121 1 54 0 122 1 54 0 123 1 54 0 124 1 54 0 125 1 54 0 127 1 54 0 128 1 54 0 129 1 54 0 130 1 54 0 131 1 54 0 133 1 54 0 134 1 54 0 135 1 54 0 136 1 54 0 138 1 54 0 139 1 54 0 140 1 54 0 141 1 54 0 143 1 54 0 145 1 54 0 146 1 54 0 147 1 54 0 148 1 54 0 149 1 54 0 150 1 54 0 152 1 54 0 153 1 54 0 154 1 54 0 156 1 54 0 158 1 54 0 159 1 54 0 160 1 54 0 161 1 54 0 162 1 54 0 163 1 54 0 164 1 54 0 165 1 54 0 166 1 54 0 167 1 54 0 168 1 54 0 169 1 54 0 170 1 54 0 171 1 54 2 126] 
#[0 1 62 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 66 0 1 1 66 0 2 1 66 0 5 1 66 0 6 1 66 0 8 1 66 0 9 1 66 0 10 1 66 0 12 1 66 0 13 1 66 0 15 1 66 0 16 1 66 0 17 0 35 0 20 1 66 0 23 1 66 0 25 1 66 0 26 1 66 0 29 1 66 0 31 1 66 0 32 1 66 0 33 1 66 0 35 1 66 0 36 1 66 0 37 1 66 0 38 1 66 0 39 1 66 0 44 1 66 0 45 1 66 0 46 1 66 0 47 1 66 0 48 1 66 0 49 1 66 0 50 1 66 0 51 1 66 0 52 1 66 0 53 1 66 0 55 1 66 0 56 1 66 0 58 1 66 0 59 1 66 0 60 1 66 0 61 1 66 0 62 1 66 0 63 1 66 0 64 1 66 0 65 1 66 0 66 1 66 0 67 1 66 0 69 1 66 0 73 1 66 0 76 1 66 0 77 1 66 0 78 1 66 0 79 1 66 0 80 1 66 0 82 1 66 0 83 1 66 0 84 1 66 0 87 1 66 0 90 1 66 0 91 1 66 0 92 1 66 0 93 1 66 0 94 1 66 0 95 1 66 0 97 1 66 0 99 1 66 0 100 1 66 0 101 1 66 0 102 1 66 0 103 1 66 0 114 1 66 0 116 1 66 0 117 1 66 0 119 1 66 0 121 1 66 0 122 1 66 0 123 1 66 0 124 1 66 0 125 1 66 0 127 1 66 0 128 1 66 0 129 1 66 0 130 1 66 0 131 1 66 0 133 1 66 0 134 1 66 0 135 1 66 0 136 1 66 0 138 1 66 0 139 1 66 0 140 1 66 0 141 1 66 0 143 1 66 0 145 1 66 0 146 1 66 0 147 1 66 0 148 1 66 0 149 1 66 0 150 1 66 0 152 1 66 0 153 1 66 0 154 1 66 0 156 1 66 0 158 1 66 0 159 1 66 0 160 1 66 0 161 1 66 0 162 1 66 0 163 1 66 0 164 1 66 0 165 1 66 0 166 1 66 0 167 1 66 0 168 1 66 0 169 1 66 0 170 1 66 0 171 1 66 2 126] 
#[1 0 39 0 158 6 89 1 143 6 93 1 146] 
#[1 1 74 0 1 1 74 0 2 1 74 0 5 1 74 0 6 1 74 0 8 1 74 0 9 0 43 0 10 1 74 0 12 1 74 0 13 1 74 0 15 1 74 0 16 1 74 0 17 1 74 0 23 1 74 0 25 1 74 0 26 1 74 0 29 1 74 0 31 1 74 0 33 1 74 0 35 1 74 0 36 1 78 0 37 1 74 0 38 1 74 0 39 1 74 0 44 1 74 0 45 1 74 0 46 1 74 0 47 1 74 0 48 1 74 0 49 1 74 0 50 1 74 0 51 1 74 0 52 1 74 0 53 1 74 0 55 1 74 0 56 1 74 0 58 1 74 0 59 1 74 0 60 1 74 0 61 1 74 0 62 1 74 0 63 1 74 0 64 1 74 0 65 1 74 0 66 1 74 0 67 1 74 0 69 1 74 0 73 1 74 0 76 1 74 0 77 1 74 0 78 1 74 0 79 1 74 0 80 1 74 0 82 1 74 0 83 1 74 0 84 1 74 0 87 1 74 0 90 1 74 0 91 1 74 0 92 1 74 0 93 1 74 0 94 1 74 0 95 1 74 0 97 1 74 0 99 1 74 0 100 1 74 0 101 1 74 0 102 1 74 0 103 1 74 0 114 1 74 0 116 1 74 0 117 1 74 0 119 1 74 0 121 1 74 0 122 1 74 0 123 1 74 0 124 1 74 0 125 1 74 0 127 1 74 0 128 1 74 0 129 1 74 0 130 1 74 0 131 1 74 0 133 1 74 0 134 1 74 0 135 1 74 0 136 1 74 0 138 1 74 0 139 1 74 0 140 1 74 0 141 1 74 0 143 1 74 0 145 1 74 0 146 1 74 0 147 1 74 0 148 1 74 0 149 1 74 0 150 1 74 0 152 1 74 0 153 1 74 0 154 1 74 0 156 1 74 0 158 1 74 0 159 1 74 0 160 1 74 0 161 1 74 0 162 1 74 0 163 1 74 0 164 1 74 0 165 1 74 0 166 1 74 0 167 1 74 0 168 1 74 0 169 1 74 0 170 1 74 0 171 6 101 2 105 1 74 2 126] 
#[0 1 82 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 98 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 106 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 110 0 1 1 110 0 2 1 110 0 5 1 110 0 6 1 110 0 8 1 110 0 9 1 110 0 10 1 110 0 12 1 110 0 13 1 110 0 15 1 110 0 16 1 110 0 17 1 110 0 23 1 110 0 25 1 110 0 26 1 110 0 29 1 110 0 31 1 110 0 33 0 47 0 35 1 110 0 36 1 110 0 37 1 110 0 38 1 110 0 39 1 110 0 44 1 110 0 45 1 110 0 46 1 110 0 47 1 110 0 48 1 110 0 49 1 110 0 50 1 110 0 51 1 110 0 52 1 110 0 53 1 110 0 55 1 110 0 56 1 110 0 58 1 110 0 59 1 110 0 60 1 110 0 61 1 110 0 62 1 110 0 63 1 110 0 64 1 110 0 65 1 110 0 66 1 110 0 67 1 110 0 69 1 110 0 73 1 110 0 76 1 110 0 77 1 110 0 78 1 110 0 79 1 110 0 80 1 110 0 82 1 110 0 83 1 110 0 84 1 110 0 87 1 110 0 90 1 110 0 91 1 110 0 92 1 110 0 93 1 110 0 94 1 110 0 95 1 110 0 97 1 110 0 99 1 110 0 100 1 110 0 101 1 110 0 102 1 110 0 103 1 110 0 114 1 110 0 116 1 110 0 117 1 110 0 119 1 110 0 121 1 110 0 122 1 110 0 123 1 110 0 124 1 110 0 125 1 110 0 127 1 110 0 128 1 110 0 129 1 110 0 130 1 110 0 131 1 110 0 133 1 110 0 134 1 110 0 135 1 110 0 136 1 110 0 138 1 110 0 139 1 110 0 140 1 110 0 141 1 110 0 143 1 110 0 145 1 110 0 146 1 110 0 147 1 110 0 148 1 110 0 149 1 110 0 150 1 110 0 152 1 110 0 153 1 110 0 154 1 110 0 156 1 110 0 158 1 110 0 159 1 110 0 160 1 110 0 161 1 110 0 162 1 110 0 163 1 110 0 164 1 110 0 165 1 110 0 166 1 110 0 167 1 110 0 168 1 110 0 169 1 110 0 170 1 110 0 171 1 110 2 126] 
#[0 1 114 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 5 189 0 37 6 109 0 217 6 113 0 218] 
#[1 1 122 0 1 1 122 0 2 1 122 0 3 1 122 0 4 1 122 0 5 1 122 0 6 1 122 0 7 0 51 0 8 1 122 0 9 1 122 0 10 1 122 0 11 1 122 0 12 0 55 0 13 1 122 0 14 1 122 0 15 1 122 0 16 0 59 0 17 1 122 0 18 6 129 0 19 6 133 0 20 1 122 0 21 1 122 0 22 1 122 0 23 1 122 0 25 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 33 1 122 0 34 0 63 0 35 1 122 0 36 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 48 1 122 0 49 1 122 0 50 1 122 0 51 1 122 0 52 1 122 0 53 1 122 0 55 1 122 0 56 1 122 0 58 1 122 0 59 1 122 0 60 1 122 0 61 1 122 0 62 1 122 0 63 1 122 0 64 1 122 0 65 1 122 0 66 1 122 0 67 1 122 0 69 1 122 0 73 1 122 0 76 1 122 0 77 1 122 0 78 1 122 0 79 1 122 0 80 1 122 0 82 1 122 0 83 1 122 0 84 1 122 0 87 1 122 0 90 1 122 0 91 1 122 0 92 1 122 0 93 1 122 0 94 1 122 0 95 1 122 0 97 1 122 0 99 1 122 0 100 1 122 0 101 1 122 0 103 1 122 0 114 1 122 0 116 1 122 0 117 1 122 0 119 1 122 0 121 1 122 0 122 1 122 0 123 1 122 0 124 1 122 0 125 1 122 0 127 1 122 0 128 1 122 0 129 1 122 0 130 1 122 0 131 1 122 0 133 1 122 0 134 1 122 0 135 1 122 0 136 1 122 0 138 1 122 0 139 1 122 0 140 1 122 0 141 1 122 0 143 1 122 0 145 1 122 0 146 1 122 0 147 1 122 0 148 1 122 0 149 1 122 0 150 1 122 0 151 1 122 0 152 1 122 0 153 1 122 0 154 1 122 0 155 1 122 0 156 1 122 0 158 1 122 0 159 1 122 0 160 1 122 0 161 1 122 0 162 1 122 0 163 1 122 0 164 1 122 0 165 1 122 0 166 1 122 0 167 1 122 0 168 1 122 0 169 1 122 0 170 1 122 0 171 1 122 2 126] 
#[1 1 126 0 1 1 126 0 2 1 126 0 3 1 126 0 4 1 126 0 5 1 126 0 6 1 126 0 7 1 126 0 8 1 126 0 9 1 126 0 10 1 126 0 11 1 126 0 12 1 126 0 13 1 126 0 14 1 126 0 15 1 126 0 16 1 126 0 17 1 126 0 18 1 126 0 19 1 126 0 20 1 126 0 21 1 126 0 22 1 126 0 23 1 126 0 25 1 126 0 26 1 126 0 27 1 126 0 28 1 126 0 29 1 126 0 30 1 126 0 31 1 126 0 33 1 126 0 34 0 67 0 35 1 126 0 36 6 145 0 37 1 126 0 38 1 126 0 39 1 126 0 40 1 126 0 44 1 126 0 45 1 126 0 46 1 126 0 47 1 126 0 48 1 126 0 49 1 126 0 50 1 126 0 51 1 126 0 52 1 126 0 53 1 126 0 55 1 126 0 56 1 126 0 58 1 126 0 59 1 126 0 60 1 126 0 61 1 126 0 62 1 126 0 63 1 126 0 64 1 126 0 65 1 126 0 66 1 126 0 67 1 126 0 69 1 126 0 73 1 126 0 76 1 126 0 77 1 126 0 78 1 126 0 79 1 126 0 80 1 126 0 82 1 126 0 83 1 126 0 84 1 126 0 87 1 126 0 90 1 126 0 91 1 126 0 92 1 126 0 93 1 126 0 94 1 126 0 95 1 126 0 97 1 126 0 99 1 126 0 100 1 126 0 101 1 126 0 103 1 126 0 114 1 126 0 116 1 126 0 117 1 126 0 119 1 126 0 121 1 126 0 122 1 126 0 123 1 126 0 124 1 126 0 125 1 126 0 127 1 126 0 128 1 126 0 129 1 126 0 130 1 126 0 131 1 126 0 133 1 126 0 134 1 126 0 135 1 126 0 136 1 126 0 138 1 126 0 139 1 126 0 140 1 126 0 141 1 126 0 143 1 126 0 145 1 126 0 146 1 126 0 147 1 126 0 148 1 126 0 149 1 126 0 150 1 126 0 151 1 126 0 152 1 126 0 153 1 126 0 154 1 126 0 155 1 126 0 156 1 126 0 158 1 126 0 159 1 126 0 160 1 126 0 161 1 126 0 162 1 126 0 163 1 126 0 164 1 126 0 165 1 126 0 166 1 126 0 167 1 126 0 168 1 126 0 169 1 126 0 170 1 126 0 171 1 126 2 126] 
#[0 1 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 149 0 163] 
#[0 1 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 153 0 167] 
#[0 1 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 157 0 20] 
#[0 6 161 0 20] 
#[0 1 162 0 9 0 20] 
#[1 1 166 0 4 1 166 0 7 1 166 0 8 1 170 0 9 1 166 0 11 1 166 0 13 1 166 0 14 1 170 0 15 1 166 0 17 1 166 0 18 1 166 0 19 1 166 0 20 1 166 0 22 1 170 0 25 1 166 0 28 1 166 0 30 1 166 0 34 1 166 0 35 1 166 0 37 1 166 0 40 1 166 0 151] 
#[0 1 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 186 0 4 1 186 0 7 1 186 0 8 1 190 0 9 1 186 0 11 1 186 0 13 1 186 0 14 1 190 0 15 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 20 1 186 0 22 1 190 0 25 1 186 0 28 1 186 0 30 1 186 0 34 1 186 0 35 1 186 0 37 1 186 0 40 1 186 0 151] 
#[1 1 194 0 4 1 194 0 7 1 194 0 8 1 198 0 9 1 194 0 11 1 194 0 13 1 194 0 14 1 198 0 15 1 194 0 17 1 194 0 18 1 194 0 19 1 194 0 20 1 194 0 22 1 198 0 25 1 194 0 28 1 194 0 30 1 194 0 34 1 194 0 35 1 194 0 37 1 194 0 40 1 194 0 151] 
#[1 1 202 0 4 1 202 0 7 1 202 0 8 1 206 0 9 1 202 0 11 1 202 0 13 1 202 0 14 1 206 0 15 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 22 1 206 0 25 1 202 0 28 1 202 0 30 1 202 0 34 1 202 0 35 1 202 0 37 1 202 0 40 1 202 0 151] 
#[0 1 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 6 165 0 4 6 169 0 7 6 173 0 11 6 177 0 14 6 181 0 18 6 185 0 22 6 189 0 28 6 193 0 30 6 197 0 34 6 201 0 40 6 205 0 151 6 209 1 113] 
#[1 1 246 0 1 1 246 0 2 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 0 71 0 8 1 246 0 9 1 246 0 10 1 246 0 11 1 246 0 12 1 246 0 13 1 246 0 14 1 246 0 15 1 246 0 16 1 246 0 17 1 246 0 18 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 22 1 246 0 23 1 246 0 25 1 246 0 26 1 246 0 27 1 246 0 28 1 246 0 29 1 246 0 30 1 246 0 31 1 246 0 33 1 246 0 34 1 246 0 35 1 246 0 36 1 246 0 37 1 246 0 38 1 246 0 39 1 246 0 40 1 246 0 44 1 246 0 45 1 246 0 46 1 246 0 47 1 246 0 48 1 246 0 49 1 246 0 50 1 246 0 51 1 246 0 52 1 246 0 53 1 246 0 55 1 246 0 56 1 246 0 58 1 246 0 59 1 246 0 60 1 246 0 61 1 246 0 62 1 246 0 63 1 246 0 64 1 246 0 65 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 73 1 246 0 76 1 246 0 77 1 246 0 78 1 246 0 79 1 246 0 80 1 246 0 82 1 246 0 83 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 91 1 246 0 92 1 246 0 93 1 246 0 94 1 246 0 95 1 246 0 97 1 246 0 99 1 246 0 100 1 246 0 101 1 246 0 103 1 246 0 114 1 246 0 116 1 246 0 117 1 246 0 119 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 124 1 246 0 125 1 246 0 127 1 246 0 128 1 246 0 129 1 246 0 130 1 246 0 131 1 246 0 133 1 246 0 134 1 246 0 135 1 246 0 136 1 246 0 138 1 246 0 139 1 246 0 140 1 246 0 141 1 246 0 143 1 246 0 145 1 246 0 146 1 246 0 147 1 246 0 148 1 246 0 149 1 246 0 150 1 246 0 151 1 246 0 152 1 246 0 153 1 246 0 154 1 246 0 155 1 246 0 156 1 246 0 158 1 246 0 159 1 246 0 160 1 246 0 161 1 246 0 162 1 246 0 163 1 246 0 164 1 246 0 165 1 246 0 166 1 246 0 167 1 246 0 168 1 246 0 169 1 246 0 170 1 246 0 171 1 246 2 126] 
#[0 1 250 0 9 0 15 0 25] 
#[1 1 254 0 1 1 254 0 2 1 254 0 3 1 254 0 4 1 254 0 5 1 254 0 6 1 254 0 7 0 75 0 8 1 254 0 9 1 254 0 10 1 254 0 11 1 254 0 12 1 254 0 13 1 254 0 14 1 254 0 15 1 254 0 16 1 254 0 17 1 254 0 18 1 254 0 19 1 254 0 20 1 254 0 21 1 254 0 22 1 254 0 23 1 254 0 25 1 254 0 26 1 254 0 27 1 254 0 28 1 254 0 29 1 254 0 30 1 254 0 31 1 254 0 33 1 254 0 34 1 254 0 35 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 40 1 254 0 44 1 254 0 45 1 254 0 46 1 254 0 47 1 254 0 48 1 254 0 49 1 254 0 50 1 254 0 51 1 254 0 52 1 254 0 53 1 254 0 55 1 254 0 56 1 254 0 58 1 254 0 59 1 254 0 60 1 254 0 61 1 254 0 62 1 254 0 63 1 254 0 64 1 254 0 65 1 254 0 66 1 254 0 67 1 254 0 69 1 254 0 73 1 254 0 76 1 254 0 77 1 254 0 78 1 254 0 79 1 254 0 80 1 254 0 82 1 254 0 83 1 254 0 84 1 254 0 87 1 254 0 90 1 254 0 91 1 254 0 92 1 254 0 93 1 254 0 94 1 254 0 95 1 254 0 97 1 254 0 99 1 254 0 100 1 254 0 101 1 254 0 103 1 254 0 114 1 254 0 116 1 254 0 117 1 254 0 119 1 254 0 121 1 254 0 122 1 254 0 123 1 254 0 124 1 254 0 125 1 254 0 127 1 254 0 128 1 254 0 129 1 254 0 130 1 254 0 131 1 254 0 133 1 254 0 134 1 254 0 135 1 254 0 136 1 254 0 138 1 254 0 139 1 254 0 140 1 254 0 141 1 254 0 143 1 254 0 145 1 254 0 146 1 254 0 147 1 254 0 148 1 254 0 149 1 254 0 150 1 254 0 151 1 254 0 152 1 254 0 153 1 254 0 154 1 254 0 155 1 254 0 156 1 254 0 158 1 254 0 159 1 254 0 160 1 254 0 161 1 254 0 162 1 254 0 163 1 254 0 164 1 254 0 165 1 254 0 166 1 254 0 167 1 254 0 168 1 254 0 169 1 254 0 170 1 254 0 171 1 254 2 126] 
#[1 2 2 0 4 2 2 0 7 2 6 0 9 2 2 0 11 2 2 0 14 2 6 0 15 2 2 0 18 2 2 0 22 2 6 0 25 2 2 0 28 2 2 0 30 2 2 0 34 2 2 0 40 2 2 0 151] 
#[1 2 10 0 4 2 10 0 7 2 14 0 9 2 10 0 11 2 10 0 14 2 14 0 15 2 10 0 18 2 10 0 22 2 14 0 25 2 10 0 28 2 10 0 30 2 10 0 34 2 10 0 40 2 10 0 151] 
#[0 2 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 2 22 0 4 2 22 0 7 2 26 0 9 2 22 0 11 2 22 0 14 2 26 0 15 2 22 0 18 2 22 0 22 2 26 0 25 2 22 0 28 2 22 0 30 2 22 0 34 2 22 0 40 2 22 0 151] 
#[0 2 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 34 0 9 0 15 0 25] 
#[0 0 0 2 126] 
#[0 2 38 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 54 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 58 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 6 221 0 32 1 97 0 149 6 225 1 121 6 229 1 136] 
#[1 1 1 0 114 6 237 0 124 6 237 0 138 6 237 1 134 6 241 1 140 6 237 2 102] 
#[1 6 245 0 32 1 97 0 149 6 249 1 121 6 253 1 135] 
#[1 5 49 0 8 7 9 0 46 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 7 9 0 124 5 97 0 125 1 173 0 134 1 173 0 135 7 9 0 138 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 7 13 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 7 13 0 211 7 13 0 214 1 197 0 215 7 9 1 133 7 9 1 134 7 13 1 234 7 9 2 102 3 41 2 104 3 65 2 124] 
#[0 2 62 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 2 66 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 7 17 0 25] 
#[0 2 70 0 9 0 25] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 81 0 141 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 7 21 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 7 21 0 211 7 21 0 214 1 197 0 215 7 25 1 152 3 41 2 104 3 245 2 124] 
#[0 2 74 0 9 0 25] 
#[0 2 78 0 9 0 25] 
#[1 7 29 0 8 7 33 0 158 7 37 1 3 7 41 1 141] 
#[0 7 45 0 25] 
#[0 2 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 7 49 0 25] 
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
#[0 2 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 2 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 7 53 0 158 7 57 1 132] 
#[0 2 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 174 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 2 178 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 2 182 0 1 2 182 0 2 2 182 0 5 2 182 0 6 2 182 0 8 2 182 0 9 2 182 0 10 2 182 0 12 2 182 0 13 2 182 0 15 2 182 0 16 2 182 0 17 2 182 0 23 2 182 0 25 2 182 0 26 2 182 0 29 2 182 0 31 2 182 0 33 2 182 0 35 2 182 0 36 2 186 0 37 2 182 0 38 2 182 0 39 2 182 0 44 2 182 0 45 2 182 0 46 2 182 0 47 2 182 0 48 2 182 0 49 2 182 0 50 2 182 0 51 2 182 0 52 2 182 0 53 2 182 0 55 2 182 0 56 2 182 0 58 2 182 0 59 2 182 0 60 2 182 0 61 2 182 0 62 2 182 0 63 2 182 0 64 2 182 0 65 2 182 0 66 2 182 0 67 2 182 0 69 2 182 0 73 2 182 0 76 2 182 0 77 2 182 0 78 2 182 0 79 2 182 0 80 2 182 0 82 2 182 0 83 2 182 0 84 2 182 0 87 2 182 0 90 2 182 0 91 2 182 0 92 2 182 0 93 2 182 0 94 2 182 0 95 2 182 0 97 2 182 0 99 2 182 0 100 2 182 0 101 2 182 0 102 2 182 0 103 2 182 0 114 2 182 0 116 2 182 0 117 2 182 0 119 2 182 0 121 2 182 0 122 2 182 0 123 2 182 0 124 2 182 0 125 2 182 0 127 2 182 0 128 2 182 0 129 2 182 0 130 2 182 0 131 2 182 0 133 2 182 0 134 2 182 0 135 2 182 0 136 2 182 0 138 2 182 0 139 2 182 0 140 2 182 0 141 2 182 0 143 2 182 0 145 2 182 0 146 2 182 0 147 2 182 0 148 2 182 0 149 2 182 0 150 2 182 0 152 2 182 0 153 2 182 0 154 2 182 0 156 2 182 0 158 2 182 0 159 2 182 0 160 2 182 0 161 2 182 0 162 2 182 0 163 2 182 0 164 2 182 0 165 2 182 0 166 2 182 0 167 2 182 0 168 2 182 0 169 2 182 0 170 2 182 0 171 2 182 2 126] 
#[0 2 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 206 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 6 97 0 10 2 210 0 158 7 61 2 105] 
#[1 0 105 0 1 0 109 0 5 0 79 0 8 2 218 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 83 0 49 0 87 0 52 0 91 0 55 3 77 0 56 0 95 0 60 0 185 0 61 0 189 0 62 0 99 0 65 0 103 0 66 3 29 0 73 0 107 0 77 3 81 0 80 7 89 0 86 0 111 0 87 0 115 0 95 0 245 0 97 0 249 0 99 0 119 0 100 7 89 0 104 7 89 0 114 0 123 0 117 0 127 0 121 1 17 0 122 1 21 0 123 0 131 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 0 135 0 134 0 139 0 135 3 89 0 136 0 143 0 139 1 81 0 141 0 147 0 143 1 101 0 153 0 151 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 4 241 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 4 245 0 205 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 4 241 0 211 4 241 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 249 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 4 253 1 75 4 253 1 76 4 253 1 77 1 205 1 78 3 201 1 79 3 205 1 81 7 77 1 82 7 81 1 83 7 85 1 84 7 89 1 85 7 89 1 86 3 209 1 87 7 97 1 88 7 101 1 89 4 253 1 92 3 221 1 93 4 253 1 112 4 253 1 115 4 253 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 7 105 0 8 5 21 0 62 7 109 0 158 7 113 1 79 3 205 1 81 3 209 1 87 3 213 1 89] 
#[0 5 41 0 8] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 0 155 0 158 1 145 0 193 1 185 0 195 1 145 0 196 7 117 0 197 7 117 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 7 117 0 211 7 117 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 7 129 1 73 7 129 1 74 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[0 6 17 0 8] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 6 65 0 24 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 2 226 0 32 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 6 77 0 222 6 77 0 252 1 22 2 126] 
#[0 2 230 0 158] 
#[0 1 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 2 234 0 1 2 234 0 2 2 234 0 3 6 165 0 4 2 234 0 5 2 234 0 6 6 169 0 7 2 234 0 8 2 234 0 9 2 234 0 10 6 173 0 11 2 234 0 12 2 234 0 13 6 177 0 14 2 234 0 15 2 234 0 16 2 234 0 17 6 181 0 18 2 234 0 21 6 185 0 22 2 234 0 23 2 234 0 25 2 234 0 26 2 234 0 27 6 189 0 28 2 234 0 29 6 193 0 30 2 234 0 31 2 234 0 33 6 197 0 34 2 234 0 35 2 234 0 36 2 234 0 38 2 234 0 39 6 201 0 40 2 234 0 44 2 234 0 45 2 234 0 46 2 234 0 47 2 234 0 48 2 234 0 49 2 234 0 50 2 234 0 51 2 234 0 52 2 234 0 53 2 234 0 55 2 234 0 56 2 234 0 58 2 234 0 59 2 234 0 60 2 234 0 61 2 234 0 62 2 234 0 63 2 234 0 64 2 234 0 65 2 234 0 66 2 234 0 67 2 234 0 69 2 234 0 73 2 234 0 76 2 234 0 77 2 234 0 78 2 234 0 79 2 234 0 80 2 234 0 82 2 234 0 83 2 234 0 84 2 234 0 87 2 234 0 90 2 234 0 91 2 234 0 92 2 234 0 93 2 234 0 94 2 234 0 95 2 234 0 97 2 234 0 99 2 234 0 100 2 234 0 101 2 234 0 103 2 234 0 114 2 234 0 116 2 234 0 117 2 234 0 119 2 234 0 121 2 234 0 122 2 234 0 123 2 234 0 124 2 234 0 125 2 234 0 127 2 234 0 128 2 234 0 129 2 234 0 130 2 234 0 131 2 234 0 133 2 234 0 134 2 234 0 135 2 234 0 136 2 234 0 138 2 234 0 139 2 234 0 140 2 234 0 141 2 234 0 143 2 234 0 145 2 234 0 146 2 234 0 147 2 234 0 148 2 234 0 149 2 234 0 150 6 205 0 151 2 234 0 152 2 234 0 153 2 234 0 154 2 234 0 155 2 234 0 156 2 234 0 158 2 234 0 159 2 234 0 160 2 234 0 161 2 234 0 162 2 234 0 163 2 234 0 164 2 234 0 165 2 234 0 166 2 234 0 167 2 234 0 168 2 234 0 169 2 234 0 170 2 234 0 171 6 209 1 113 2 234 2 126] 
#[0 1 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 2 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 2 238 0 1 2 238 0 2 7 133 0 3 2 238 0 5 2 238 0 6 2 238 0 8 2 238 0 9 0 163 0 10 2 238 0 12 2 238 0 13 2 238 0 15 2 238 0 16 2 238 0 17 7 141 0 21 2 238 0 23 2 238 0 25 2 238 0 26 2 238 0 27 2 238 0 29 2 238 0 31 2 238 0 33 2 238 0 35 2 238 0 36 2 238 0 38 2 238 0 39 2 238 0 44 2 238 0 45 2 238 0 46 2 238 0 47 2 238 0 48 2 238 0 49 2 238 0 50 2 238 0 51 2 238 0 52 2 238 0 53 2 238 0 55 2 238 0 56 2 238 0 58 2 238 0 59 2 238 0 60 2 238 0 61 2 238 0 62 2 238 0 63 2 238 0 64 2 238 0 65 2 238 0 66 2 238 0 67 2 238 0 69 2 238 0 73 2 238 0 76 2 238 0 77 2 238 0 78 2 238 0 79 2 238 0 80 2 238 0 82 2 238 0 83 2 238 0 84 2 238 0 87 2 238 0 90 2 238 0 91 2 238 0 92 2 238 0 93 2 238 0 94 2 238 0 95 2 238 0 97 2 238 0 99 2 238 0 100 2 238 0 101 2 238 0 103 2 238 0 114 2 238 0 116 2 238 0 117 2 238 0 119 2 238 0 121 2 238 0 122 2 238 0 123 2 238 0 124 2 238 0 125 2 238 0 127 2 238 0 128 2 238 0 129 2 238 0 130 2 238 0 131 2 238 0 133 2 238 0 134 2 238 0 135 2 238 0 136 2 238 0 138 2 238 0 139 2 238 0 140 2 238 0 141 2 238 0 143 2 238 0 145 2 238 0 146 2 238 0 147 2 238 0 148 2 238 0 149 2 238 0 150 2 238 0 152 2 238 0 153 2 238 0 154 2 238 0 155 2 238 0 156 2 238 0 158 2 238 0 159 2 238 0 160 2 238 0 161 2 238 0 162 2 238 0 163 2 238 0 164 2 238 0 165 2 238 0 166 2 238 0 167 2 238 0 168 2 238 0 169 2 238 0 170 2 238 0 171 2 238 2 126] 
#[1 2 242 0 1 2 242 0 2 2 242 0 5 2 242 0 6 2 242 0 8 2 242 0 9 2 242 0 10 0 167 0 12 2 242 0 13 2 242 0 15 0 171 0 16 2 242 0 17 2 242 0 23 2 242 0 25 2 242 0 26 2 242 0 27 2 242 0 29 2 242 0 31 2 242 0 33 2 242 0 35 2 242 0 36 2 242 0 38 2 242 0 39 2 242 0 44 2 242 0 45 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 49 2 242 0 50 2 242 0 51 2 242 0 52 2 242 0 53 2 242 0 55 2 242 0 56 2 242 0 58 2 242 0 59 2 242 0 60 2 242 0 61 2 242 0 62 2 242 0 63 2 242 0 64 2 242 0 65 2 242 0 66 2 242 0 67 2 242 0 69 2 242 0 73 2 242 0 76 2 242 0 77 2 242 0 78 2 242 0 79 2 242 0 80 2 242 0 82 2 242 0 83 2 242 0 84 2 242 0 87 2 242 0 90 2 242 0 91 2 242 0 92 2 242 0 93 2 242 0 94 2 242 0 95 2 242 0 97 2 242 0 99 2 242 0 100 2 242 0 101 2 242 0 103 2 242 0 114 2 242 0 116 2 242 0 117 2 242 0 119 2 242 0 121 2 242 0 122 2 242 0 123 2 242 0 124 2 242 0 125 2 242 0 127 2 242 0 128 2 242 0 129 2 242 0 130 2 242 0 131 2 242 0 133 2 242 0 134 2 242 0 135 2 242 0 136 2 242 0 138 2 242 0 139 2 242 0 140 2 242 0 141 2 242 0 143 2 242 0 145 2 242 0 146 2 242 0 147 2 242 0 148 2 242 0 149 2 242 0 150 2 242 0 152 2 242 0 153 2 242 0 154 2 242 0 155 2 242 0 156 2 242 0 158 2 242 0 159 2 242 0 160 2 242 0 161 2 242 0 162 2 242 0 163 2 242 0 164 2 242 0 165 2 242 0 166 2 242 0 167 2 242 0 168 2 242 0 169 2 242 0 170 2 242 0 171 2 242 2 126] 
#[1 2 246 0 1 2 246 0 2 2 246 0 5 2 246 0 6 2 246 0 8 2 246 0 9 2 246 0 10 2 246 0 12 2 246 0 13 2 246 0 15 2 246 0 16 2 246 0 17 2 246 0 23 2 246 0 25 2 246 0 26 7 153 0 27 2 246 0 29 2 246 0 31 2 246 0 33 2 246 0 35 2 246 0 36 2 246 0 38 2 246 0 39 2 246 0 44 2 246 0 45 2 246 0 46 2 246 0 47 2 246 0 48 2 246 0 49 2 246 0 50 2 246 0 51 2 246 0 52 2 246 0 53 2 246 0 55 2 246 0 56 2 246 0 58 2 246 0 59 2 246 0 60 2 246 0 61 2 246 0 62 2 246 0 63 2 246 0 64 2 246 0 65 2 246 0 66 2 246 0 67 2 246 0 69 2 246 0 73 2 246 0 76 2 246 0 77 2 246 0 78 2 246 0 79 2 246 0 80 2 246 0 82 2 246 0 83 2 246 0 84 2 246 0 87 2 246 0 90 2 246 0 91 2 246 0 92 2 246 0 93 2 246 0 94 2 246 0 95 2 246 0 97 2 246 0 99 2 246 0 100 2 246 0 101 2 246 0 103 2 246 0 114 2 246 0 116 2 246 0 117 2 246 0 119 2 246 0 121 2 246 0 122 2 246 0 123 2 246 0 124 2 246 0 125 2 246 0 127 2 246 0 128 2 246 0 129 2 246 0 130 2 246 0 131 2 246 0 133 2 246 0 134 2 246 0 135 2 246 0 136 2 246 0 138 2 246 0 139 2 246 0 140 2 246 0 141 2 246 0 143 2 246 0 145 2 246 0 146 2 246 0 147 2 246 0 148 2 246 0 149 2 246 0 150 2 246 0 152 2 246 0 153 2 246 0 154 7 157 0 155 2 246 0 156 2 246 0 158 2 246 0 159 2 246 0 160 2 246 0 161 2 246 0 162 2 246 0 163 2 246 0 164 2 246 0 165 2 246 0 166 2 246 0 167 2 246 0 168 2 246 0 169 2 246 0 170 2 246 0 171 2 246 2 126] 
#[1 2 250 0 1 2 250 0 2 2 250 0 5 2 250 0 6 2 250 0 8 2 250 0 9 2 250 0 10 2 250 0 12 2 250 0 13 2 250 0 15 2 250 0 16 2 250 0 17 2 250 0 23 2 250 0 25 0 175 0 26 0 179 0 29 2 250 0 31 0 183 0 33 2 250 0 35 2 250 0 36 2 250 0 38 2 250 0 39 0 187 0 44 2 250 0 45 2 250 0 46 2 250 0 47 2 250 0 48 2 250 0 49 2 250 0 50 2 250 0 51 2 250 0 52 2 250 0 53 2 250 0 55 2 250 0 56 2 250 0 58 2 250 0 59 2 250 0 60 2 250 0 61 2 250 0 62 2 250 0 63 2 250 0 64 2 250 0 65 2 250 0 66 2 250 0 67 2 250 0 69 2 250 0 73 2 250 0 76 2 250 0 77 2 250 0 78 2 250 0 79 2 250 0 80 2 250 0 82 2 250 0 83 2 250 0 84 2 250 0 87 2 250 0 90 0 191 0 91 2 250 0 92 2 250 0 93 2 250 0 94 2 250 0 95 2 250 0 97 2 250 0 99 2 250 0 100 2 250 0 101 2 250 0 103 2 250 0 114 2 250 0 116 2 250 0 117 2 250 0 119 2 250 0 121 2 250 0 122 2 250 0 123 2 250 0 124 2 250 0 125 2 250 0 127 2 250 0 128 2 250 0 129 2 250 0 130 2 250 0 131 2 250 0 133 2 250 0 134 2 250 0 135 2 250 0 136 2 250 0 138 2 250 0 139 2 250 0 140 2 250 0 141 2 250 0 143 2 250 0 145 2 250 0 146 2 250 0 147 2 250 0 148 2 250 0 149 2 250 0 150 2 250 0 152 2 250 0 153 0 195 0 154 2 250 0 156 2 250 0 158 2 250 0 159 2 250 0 160 2 250 0 161 2 250 0 162 2 250 0 163 2 250 0 164 2 250 0 165 2 250 0 166 2 250 0 167 2 250 0 168 2 250 0 169 2 250 0 170 2 250 0 171 2 250 2 126] 
#[1 2 254 0 1 0 199 0 2 2 254 0 5 2 254 0 6 2 254 0 8 2 254 0 9 2 254 0 10 2 254 0 12 2 254 0 13 2 254 0 15 2 254 0 16 2 254 0 17 2 254 0 23 2 254 0 25 2 254 0 26 2 254 0 29 0 203 0 31 2 254 0 33 2 254 0 35 2 254 0 36 2 254 0 38 2 254 0 39 2 254 0 44 2 254 0 45 2 254 0 46 2 254 0 47 2 254 0 48 2 254 0 49 2 254 0 50 2 254 0 51 2 254 0 52 2 254 0 53 2 254 0 55 2 254 0 56 2 254 0 58 2 254 0 59 2 254 0 60 2 254 0 61 2 254 0 62 2 254 0 63 2 254 0 64 2 254 0 65 2 254 0 66 2 254 0 67 2 254 0 69 2 254 0 73 2 254 0 76 2 254 0 77 2 254 0 78 2 254 0 79 2 254 0 80 2 254 0 82 2 254 0 83 2 254 0 84 2 254 0 87 2 254 0 90 2 254 0 91 2 254 0 92 2 254 0 93 2 254 0 94 2 254 0 95 2 254 0 97 2 254 0 99 2 254 0 100 2 254 0 101 2 254 0 103 2 254 0 114 2 254 0 116 2 254 0 117 2 254 0 119 2 254 0 121 2 254 0 122 2 254 0 123 2 254 0 124 2 254 0 125 2 254 0 127 2 254 0 128 2 254 0 129 2 254 0 130 2 254 0 131 2 254 0 133 2 254 0 134 2 254 0 135 2 254 0 136 2 254 0 138 2 254 0 139 2 254 0 140 2 254 0 141 2 254 0 143 2 254 0 145 2 254 0 146 2 254 0 147 2 254 0 148 2 254 0 149 2 254 0 150 2 254 0 152 2 254 0 153 2 254 0 154 2 254 0 156 2 254 0 158 2 254 0 159 2 254 0 160 2 254 0 161 2 254 0 162 2 254 0 163 2 254 0 164 2 254 0 165 2 254 0 166 2 254 0 167 2 254 0 168 2 254 0 169 2 254 0 170 2 254 0 171 2 254 2 126] 
#[1 3 2 0 1 3 2 0 2 0 207 0 5 3 2 0 6 3 2 0 8 3 2 0 9 3 2 0 10 3 2 0 12 3 2 0 13 3 2 0 15 3 2 0 16 3 2 0 17 3 2 0 23 3 2 0 25 3 2 0 26 3 2 0 29 3 2 0 31 3 2 0 33 3 2 0 35 3 2 0 36 3 2 0 38 3 2 0 39 3 2 0 44 3 2 0 45 3 2 0 46 3 2 0 47 3 2 0 48 3 2 0 49 3 2 0 50 3 2 0 51 3 2 0 52 3 2 0 53 3 2 0 55 3 2 0 56 3 2 0 58 3 2 0 59 3 2 0 60 3 2 0 61 3 2 0 62 3 2 0 63 3 2 0 64 3 2 0 65 3 2 0 66 3 2 0 67 3 2 0 69 3 2 0 73 3 2 0 76 3 2 0 77 3 2 0 78 3 2 0 79 3 2 0 80 3 2 0 82 3 2 0 83 3 2 0 84 3 2 0 87 3 2 0 90 3 2 0 91 3 2 0 92 3 2 0 93 3 2 0 94 3 2 0 95 3 2 0 97 3 2 0 99 3 2 0 100 3 2 0 101 3 2 0 103 3 2 0 114 3 2 0 116 3 2 0 117 3 2 0 119 3 2 0 121 3 2 0 122 3 2 0 123 3 2 0 124 3 2 0 125 3 2 0 127 3 2 0 128 3 2 0 129 3 2 0 130 3 2 0 131 3 2 0 133 3 2 0 134 3 2 0 135 3 2 0 136 3 2 0 138 3 2 0 139 3 2 0 140 3 2 0 141 3 2 0 143 3 2 0 145 3 2 0 146 3 2 0 147 3 2 0 148 3 2 0 149 3 2 0 150 3 2 0 152 3 2 0 153 3 2 0 154 3 2 0 156 3 2 0 158 3 2 0 159 3 2 0 160 3 2 0 161 3 2 0 162 3 2 0 163 3 2 0 164 3 2 0 165 3 2 0 166 3 2 0 167 3 2 0 168 3 2 0 169 3 2 0 170 3 2 0 171 3 2 2 126] 
#[1 3 6 0 1 3 6 0 2 3 6 0 5 3 6 0 6 3 6 0 8 3 6 0 9 3 6 0 10 3 6 0 12 3 6 0 13 3 6 0 15 3 6 0 16 3 6 0 17 3 6 0 23 3 6 0 25 3 6 0 26 3 6 0 29 3 6 0 31 3 6 0 33 3 6 0 35 3 6 0 36 3 6 0 38 0 211 0 39 3 6 0 44 3 6 0 45 3 6 0 46 3 6 0 47 3 6 0 48 3 6 0 49 3 6 0 50 3 6 0 51 3 6 0 52 3 6 0 53 3 6 0 55 3 6 0 56 3 6 0 58 3 6 0 59 3 6 0 60 3 6 0 61 3 6 0 62 3 6 0 63 3 6 0 64 3 6 0 65 3 6 0 66 3 6 0 67 3 6 0 69 3 6 0 73 3 6 0 76 3 6 0 77 3 6 0 78 3 6 0 79 3 6 0 80 3 6 0 82 3 6 0 83 3 6 0 84 3 6 0 87 3 6 0 90 3 6 0 91 3 6 0 92 3 6 0 93 3 6 0 94 3 6 0 95 3 6 0 97 3 6 0 99 3 6 0 100 3 6 0 101 3 6 0 103 3 6 0 114 3 6 0 116 3 6 0 117 3 6 0 119 3 6 0 121 3 6 0 122 3 6 0 123 3 6 0 124 3 6 0 125 3 6 0 127 3 6 0 128 3 6 0 129 3 6 0 130 3 6 0 131 3 6 0 133 3 6 0 134 3 6 0 135 3 6 0 136 3 6 0 138 3 6 0 139 3 6 0 140 3 6 0 141 3 6 0 143 3 6 0 145 3 6 0 146 3 6 0 147 3 6 0 148 3 6 0 149 3 6 0 150 3 6 0 152 3 6 0 153 3 6 0 154 3 6 0 156 3 6 0 158 3 6 0 159 3 6 0 160 3 6 0 161 3 6 0 162 3 6 0 163 3 6 0 164 3 6 0 165 3 6 0 166 3 6 0 167 3 6 0 168 3 6 0 169 3 6 0 170 3 6 0 171 3 6 2 126] 
#[1 3 10 0 1 3 10 0 2 3 10 0 5 3 10 0 6 3 10 0 8 3 10 0 9 3 10 0 10 3 10 0 12 3 10 0 13 3 10 0 15 3 10 0 16 3 10 0 17 3 10 0 23 3 10 0 25 3 10 0 26 3 10 0 29 3 10 0 31 3 10 0 33 3 10 0 35 3 10 0 36 3 10 0 38 3 10 0 39 3 10 0 44 3 10 0 45 3 10 0 46 3 10 0 47 3 10 0 48 3 10 0 49 3 10 0 50 3 10 0 51 3 10 0 52 3 10 0 53 3 10 0 55 3 10 0 56 3 10 0 58 3 10 0 59 3 10 0 60 3 10 0 61 3 10 0 62 3 10 0 63 3 10 0 64 3 10 0 65 3 10 0 66 3 10 0 67 3 10 0 69 3 10 0 73 3 10 0 76 3 10 0 77 3 10 0 78 3 10 0 79 3 10 0 80 3 10 0 82 3 10 0 83 3 10 0 84 3 10 0 87 3 10 0 90 3 10 0 91 3 10 0 92 3 10 0 93 3 10 0 94 3 10 0 95 3 10 0 97 3 10 0 99 3 10 0 100 3 10 0 101 3 10 0 103 3 10 0 114 3 10 0 116 3 10 0 117 3 10 0 119 3 10 0 121 3 10 0 122 3 10 0 123 3 10 0 124 3 10 0 125 3 10 0 127 3 10 0 128 3 10 0 129 3 10 0 130 3 10 0 131 3 10 0 133 3 10 0 134 3 10 0 135 3 10 0 136 3 10 0 138 3 10 0 139 3 10 0 140 3 10 0 141 3 10 0 143 3 10 0 145 3 10 0 146 3 10 0 147 3 10 0 148 3 10 0 149 0 215 0 150 3 10 0 152 3 10 0 153 3 10 0 154 3 10 0 156 3 10 0 158 3 10 0 159 3 10 0 160 3 10 0 161 3 10 0 162 3 10 0 163 3 10 0 164 3 10 0 165 3 10 0 166 3 10 0 167 3 10 0 168 3 10 0 169 3 10 0 170 3 10 0 171 3 10 2 126] 
#[1 3 14 0 1 3 14 0 2 3 14 0 5 0 219 0 6 3 14 0 8 3 14 0 9 3 14 0 10 3 14 0 12 3 14 0 13 3 14 0 15 3 14 0 16 3 14 0 17 3 14 0 23 3 14 0 25 3 14 0 26 3 14 0 29 3 14 0 31 3 14 0 33 3 14 0 35 3 14 0 36 3 14 0 38 3 14 0 39 3 14 0 44 3 14 0 45 3 14 0 46 3 14 0 47 3 14 0 48 3 14 0 49 3 14 0 50 3 14 0 51 3 14 0 52 3 14 0 53 3 14 0 55 3 14 0 56 3 14 0 58 3 14 0 59 3 14 0 60 3 14 0 61 3 14 0 62 3 14 0 63 3 14 0 64 3 14 0 65 3 14 0 66 3 14 0 67 3 14 0 69 3 14 0 73 3 14 0 76 3 14 0 77 3 14 0 78 3 14 0 79 3 14 0 80 3 14 0 82 3 14 0 83 3 14 0 84 3 14 0 87 3 14 0 90 3 14 0 91 3 14 0 92 3 14 0 93 3 14 0 94 3 14 0 95 3 14 0 97 3 14 0 99 3 14 0 100 3 14 0 101 3 14 0 103 3 14 0 114 3 14 0 116 3 14 0 117 3 14 0 119 3 14 0 121 3 14 0 122 3 14 0 123 3 14 0 124 3 14 0 125 3 14 0 127 3 14 0 128 3 14 0 129 3 14 0 130 3 14 0 131 3 14 0 133 3 14 0 134 3 14 0 135 3 14 0 136 3 14 0 138 3 14 0 139 3 14 0 140 3 14 0 141 3 14 0 143 3 14 0 145 3 14 0 146 3 14 0 147 3 14 0 148 3 14 0 149 3 14 0 150 3 14 0 152 3 14 0 153 3 14 0 154 3 14 0 156 3 14 0 158 3 14 0 159 3 14 0 160 3 14 0 161 3 14 0 162 3 14 0 163 3 14 0 164 3 14 0 165 3 14 0 166 3 14 0 167 3 14 0 168 3 14 0 169 3 14 0 170 3 14 0 171 3 14 2 126] 
#[1 3 18 0 1 3 18 0 2 3 18 0 5 3 18 0 6 3 18 0 8 3 18 0 9 3 18 0 10 3 18 0 12 3 18 0 13 3 18 0 15 3 18 0 16 3 18 0 17 3 18 0 23 3 18 0 25 3 18 0 26 3 18 0 29 3 18 0 31 3 18 0 33 3 18 0 35 0 223 0 36 3 18 0 38 3 18 0 39 3 18 0 44 3 18 0 45 3 18 0 46 3 18 0 47 3 18 0 48 3 18 0 49 3 18 0 50 3 18 0 51 3 18 0 52 3 18 0 53 3 18 0 55 3 18 0 56 3 18 0 58 3 18 0 59 3 18 0 60 3 18 0 61 3 18 0 62 3 18 0 63 3 18 0 64 3 18 0 65 3 18 0 66 3 18 0 67 3 18 0 69 3 18 0 73 3 18 0 76 3 18 0 77 3 18 0 78 3 18 0 79 3 18 0 80 3 18 0 82 3 18 0 83 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 91 3 18 0 92 3 18 0 93 3 18 0 94 3 18 0 95 3 18 0 97 3 18 0 99 3 18 0 100 3 18 0 101 3 18 0 103 3 18 0 114 3 18 0 116 3 18 0 117 3 18 0 119 3 18 0 121 3 18 0 122 3 18 0 123 3 18 0 124 3 18 0 125 3 18 0 127 3 18 0 128 3 18 0 129 3 18 0 130 3 18 0 131 3 18 0 133 3 18 0 134 3 18 0 135 3 18 0 136 3 18 0 138 3 18 0 139 3 18 0 140 3 18 0 141 3 18 0 143 3 18 0 145 3 18 0 146 3 18 0 147 3 18 0 148 3 18 0 149 3 18 0 150 0 227 0 152 3 18 0 153 3 18 0 154 3 18 0 156 3 18 0 158 3 18 0 159 3 18 0 160 3 18 0 161 3 18 0 162 3 18 0 163 3 18 0 164 3 18 0 165 3 18 0 166 3 18 0 167 3 18 0 168 3 18 0 169 3 18 0 170 3 18 0 171 3 18 2 126] 
#[1 3 22 0 1 3 22 0 2 3 22 0 5 3 22 0 6 3 22 0 8 3 22 0 9 3 22 0 10 3 22 0 12 3 22 0 13 3 22 0 15 3 22 0 16 3 22 0 17 3 22 0 23 3 22 0 25 3 22 0 26 3 22 0 29 3 22 0 31 3 22 0 33 0 231 0 35 3 22 0 36 3 22 0 38 3 22 0 39 3 22 0 44 3 22 0 45 3 22 0 46 3 22 0 47 3 22 0 48 3 22 0 49 3 22 0 50 3 22 0 51 3 22 0 52 3 22 0 53 3 22 0 55 3 22 0 56 3 22 0 58 3 22 0 59 3 22 0 60 3 22 0 61 3 22 0 62 3 22 0 63 3 22 0 64 3 22 0 65 3 22 0 66 3 22 0 67 3 22 0 69 3 22 0 73 3 22 0 76 3 22 0 77 3 22 0 78 3 22 0 79 3 22 0 80 3 22 0 82 3 22 0 83 3 22 0 84 3 22 0 87 3 22 0 90 3 22 0 91 3 22 0 92 3 22 0 93 3 22 0 94 3 22 0 95 3 22 0 97 3 22 0 99 3 22 0 100 3 22 0 101 3 22 0 103 3 22 0 114 3 22 0 116 3 22 0 117 3 22 0 119 3 22 0 121 3 22 0 122 3 22 0 123 3 22 0 124 3 22 0 125 3 22 0 127 3 22 0 128 3 22 0 129 3 22 0 130 3 22 0 131 3 22 0 133 3 22 0 134 3 22 0 135 3 22 0 136 3 22 0 138 3 22 0 139 3 22 0 140 3 22 0 141 3 22 0 143 3 22 0 145 3 22 0 146 3 22 0 147 3 22 0 148 3 22 0 149 3 22 0 150 3 22 0 152 3 22 0 153 3 22 0 154 3 22 0 156 3 22 0 158 3 22 0 159 3 22 0 160 3 22 0 161 3 22 0 162 3 22 0 163 3 22 0 164 3 22 0 165 3 22 0 166 3 22 0 167 3 22 0 168 3 22 0 169 3 22 0 170 3 22 0 171 3 22 2 126] 
#[0 3 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 30 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 221 0 32] 
#[0 3 42 0 32] 
#[0 3 46 0 32] 
#[0 3 50 0 32] 
#[0 3 54 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 3 81 0 80 3 58 0 83 7 225 0 92 7 229 0 93 7 233 0 103 3 58 0 119 7 237 0 146 7 241 1 93 7 245 1 94 7 249 1 95 7 253 1 96 8 1 1 97 8 5 1 98 8 9 1 99 8 13 1 100 8 17 1 101 8 21 1 102] 
#[0 3 62 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 0 2 126] 
#[0 3 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 25 0 158] 
#[1 7 29 0 8 3 70 0 158 7 37 1 3] 
#[1 6 97 0 10 7 61 2 105] 
#[0 0 0 2 126] 
#[0 3 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 0 0 2 126] 
#[0 3 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 8 29 0 25 8 33 0 32 1 97 0 149 8 37 1 121 8 41 1 238] 
#[1 8 45 0 25 8 49 0 32 1 97 0 149 8 53 1 121 8 57 1 237] 
#[0 3 90 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 102 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 3 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 70 0 8 0 235 0 41 0 239 0 46 0 70 0 49 0 70 0 52 0 70 0 55 0 70 0 57 0 70 0 58 0 70 0 60 0 70 0 62 0 70 0 65 0 70 0 66 0 70 0 68 0 70 0 70 0 243 0 72 0 70 0 77 0 70 0 87 0 70 0 88 0 247 0 89 0 70 0 95 0 251 0 99 0 70 0 100 0 255 0 105 0 70 0 108 1 3 0 109 1 7 0 111 1 11 0 112 1 15 0 113 0 70 0 114 0 70 0 117 1 19 0 118 0 70 0 121 1 23 0 124 0 70 0 125 0 70 0 126 0 70 0 134 0 70 0 135 1 27 0 138 0 70 0 139 1 31 0 142 0 70 0 143 1 35 0 144 3 114 0 153 0 70 0 158 8 117 1 204 8 121 2 17 8 125 2 31 8 129 2 98 8 133 2 102 8 137 2 125] 
#[0 3 118 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 8 141 0 158] 
#[1 8 145 0 124 8 149 0 158 8 157 0 193 8 153 0 194 8 157 0 196] 
#[1 1 39 0 37 3 122 0 41 3 122 0 46 3 122 0 57 3 122 0 62 3 122 0 68 3 122 0 72 3 122 0 88 3 122 0 89 3 122 0 98 3 122 0 99 3 122 0 105 3 122 0 108 3 122 0 109 3 122 0 111 3 122 0 112 3 122 0 113 3 122 0 114 3 122 0 118 3 122 0 124 3 122 0 126 3 122 0 138 3 122 0 142 3 122 0 144 8 165 2 69 8 169 2 70 8 173 2 71 8 177 2 72 3 122 2 126] 
#[1 3 126 0 37 3 126 0 41 3 126 0 46 3 126 0 57 3 126 0 62 3 126 0 68 3 126 0 72 3 126 0 88 3 126 0 89 3 126 0 98 3 126 0 99 3 126 0 105 3 126 0 108 3 126 0 109 3 126 0 111 3 126 0 112 3 126 0 113 3 126 0 114 3 126 0 118 3 126 0 124 3 126 0 126 3 126 0 138 4 61 0 140 3 126 0 142 3 126 0 144 3 126 0 156 8 181 0 185 8 181 0 186 8 181 0 187 8 181 0 188 3 126 2 126] 
#[0 3 130 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 134 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 138 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 142 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 146 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 3 150 0 23] 
#[0 3 154 0 23] 
#[0 3 158 0 23] 
#[0 3 162 0 23] 
#[0 3 166 0 23] 
#[0 3 170 0 23] 
#[0 3 174 0 23] 
#[1 5 113 0 158 1 145 0 193 8 197 0 195 1 145 0 196 8 189 2 82 8 193 2 83 8 197 2 84] 
#[0 3 178 0 158] 
#[0 8 201 0 23] 
#[0 3 182 0 20 0 149] 
#[1 8 205 0 20 8 209 0 149 8 213 0 179] 
#[1 8 249 0 41 8 249 0 46 3 186 0 57 8 217 0 62 8 221 0 68 8 249 0 72 3 186 0 88 8 249 0 89 8 249 0 99 8 249 0 105 8 241 0 108 8 249 0 109 8 249 0 111 8 249 0 112 8 249 0 113 8 233 0 114 8 249 0 118 8 249 0 124 3 186 0 126 8 249 0 138 8 249 0 142 8 249 0 144 8 241 2 97 8 249 2 102 8 249 2 125] 
#[0 3 190 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 4 237 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 8 253 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 8 253 0 211 8 253 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 249 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 4 253 1 75 4 253 1 76 4 253 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 4 253 1 92 3 221 1 93 4 253 1 112 4 253 1 115 4 253 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 5 21 0 62] 
#[0 0 98 0 9 0 20] 
#[0 0 106 0 9 0 20] 
#[0 0 114 0 9 0 20] 
#[0 0 122 0 9 0 20] 
#[0 0 138 0 9 0 20] 
#[0 0 158 0 9 0 20] 
#[0 0 166 0 9 0 20] 
#[0 0 174 0 9 0 20] 
#[0 0 182 0 9 0 20] 
#[0 0 202 0 9 0 20] 
#[0 0 210 0 9 0 20] 
#[0 0 222 0 9 0 20] 
#[0 0 242 0 9 0 20] 
#[0 0 250 0 9 0 20] 
#[0 1 6 0 9 0 20] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 6 65 0 24 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 9 1 0 222 9 1 0 252 1 22 2 126] 
#[0 1 58 0 9 0 20] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 29 0 8 7 37 1 3] 
#[0 3 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 43 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 43 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 9 5 0 23 6 65 0 24 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 2 226 0 32 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 91 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 154 1 22 0 155 1 22 0 158 6 77 0 222 6 77 0 252] 
#[1 9 9 0 9 3 202 0 15 1 47 0 158] 
#[1 9 17 0 15 9 21 0 203 9 25 0 204] 
#[1 9 29 0 15 9 33 0 255 9 37 1 0] 
#[1 9 41 0 9 3 206 0 15] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 5 133 0 8 0 130 0 149 9 45 1 80 9 45 1 81] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 49 0 158] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 9 53 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 57 1 75 9 57 1 76 9 57 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 57 1 92 3 221 1 93 9 57 1 112 9 57 1 115 9 57 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 3 234 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 61 1 75 9 61 1 76 9 61 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 61 1 92 3 221 1 93 9 61 1 112 9 61 1 115 9 61 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 3 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 9 65 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 4 245 0 205 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 9 65 0 211 9 65 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[0 0 94 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 102 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 110 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 134 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 154 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 162 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 170 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 178 0 1 0 178 0 2 0 178 0 5 0 178 0 6 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 12 0 178 0 13 0 178 0 15 0 178 0 16 0 178 0 17 0 178 0 23 0 178 0 25 0 178 0 26 0 178 0 29 0 178 0 31 0 178 0 33 0 178 0 35 0 178 0 36 0 186 0 37 0 178 0 38 0 178 0 39 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 47 0 178 0 48 0 178 0 49 0 178 0 50 0 178 0 51 0 178 0 52 0 178 0 53 0 178 0 55 0 178 0 56 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 63 0 178 0 64 0 178 0 65 0 178 0 66 0 178 0 67 0 178 0 69 0 178 0 73 0 178 0 76 0 178 0 77 0 178 0 78 0 178 0 79 0 178 0 80 0 178 0 82 0 178 0 83 0 178 0 84 0 178 0 87 0 178 0 90 0 178 0 91 0 178 0 92 0 178 0 93 0 178 0 94 0 178 0 95 0 178 0 97 0 178 0 99 0 178 0 100 0 178 0 101 0 178 0 102 0 178 0 103 0 178 0 114 0 178 0 116 0 178 0 117 0 178 0 119 0 178 0 121 0 178 0 122 0 178 0 123 0 178 0 124 0 178 0 125 0 178 0 127 0 178 0 128 0 178 0 129 0 178 0 130 0 178 0 131 0 178 0 133 0 178 0 134 0 178 0 135 0 178 0 136 0 178 0 138 0 178 0 139 0 178 0 140 0 178 0 141 0 178 0 143 0 178 0 145 0 178 0 146 0 178 0 147 0 178 0 148 0 178 0 149 0 178 0 150 0 178 0 152 0 178 0 153 0 178 0 154 0 178 0 156 0 178 0 158 0 178 0 159 0 178 0 160 0 178 0 161 0 178 0 162 0 178 0 163 0 178 0 164 0 178 0 165 0 178 0 166 0 178 0 167 0 178 0 168 0 178 0 169 0 178 0 170 0 178 0 171 0 178 2 126] 
#[0 0 198 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 206 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 218 0 1 0 218 0 2 0 218 0 5 0 218 0 6 0 218 0 8 0 218 0 9 0 218 0 10 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 16 0 218 0 17 0 218 0 23 0 218 0 25 0 218 0 26 0 218 0 29 0 218 0 31 0 218 0 33 0 218 0 35 0 218 0 36 0 226 0 37 0 218 0 38 0 218 0 39 0 218 0 44 0 218 0 45 0 218 0 46 0 218 0 47 0 218 0 48 0 218 0 49 0 218 0 50 0 218 0 51 0 218 0 52 0 218 0 53 0 218 0 55 0 218 0 56 0 218 0 58 0 218 0 59 0 218 0 60 0 218 0 61 0 218 0 62 0 218 0 63 0 218 0 64 0 218 0 65 0 218 0 66 0 218 0 67 0 218 0 69 0 218 0 73 0 218 0 76 0 218 0 77 0 218 0 78 0 218 0 79 0 218 0 80 0 218 0 82 0 218 0 83 0 218 0 84 0 218 0 87 0 218 0 90 0 218 0 91 0 218 0 92 0 218 0 93 0 218 0 94 0 218 0 95 0 218 0 97 0 218 0 99 0 218 0 100 0 218 0 101 0 218 0 102 0 218 0 103 0 218 0 114 0 218 0 116 0 218 0 117 0 218 0 119 0 218 0 121 0 218 0 122 0 218 0 123 0 218 0 124 0 218 0 125 0 218 0 127 0 218 0 128 0 218 0 129 0 218 0 130 0 218 0 131 0 218 0 133 0 218 0 134 0 218 0 135 0 218 0 136 0 218 0 138 0 218 0 139 0 218 0 140 0 218 0 141 0 218 0 143 0 218 0 145 0 218 0 146 0 218 0 147 0 218 0 148 0 218 0 149 0 218 0 150 0 218 0 152 0 218 0 153 0 218 0 154 0 218 0 156 0 218 0 158 0 218 0 159 0 218 0 160 0 218 0 161 0 218 0 162 0 218 0 163 0 218 0 164 0 218 0 165 0 218 0 166 0 218 0 167 0 218 0 168 0 218 0 169 0 218 0 170 0 218 0 171 0 218 2 126] 
#[0 0 238 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 0 246 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 1 2 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 22 0 1 1 22 0 2 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 20 1 22 0 23 6 65 0 24 1 22 0 25 0 159 0 26 1 22 0 29 1 22 0 31 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 102 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 9 69 0 222 9 69 0 252 1 22 2 126] 
#[0 1 54 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 9 73 0 158 9 77 1 155 9 81 1 156] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 9 85 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 9 85 0 211 9 85 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 2 214 0 8 2 218 0 9 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 77 7 89 0 86 2 214 0 87 2 214 0 95 2 214 0 100 7 89 0 104 7 89 0 114 2 214 0 117 2 214 0 121 2 214 0 125 2 214 0 134 2 214 0 135 2 214 0 139 2 214 0 143 2 214 0 158 7 77 1 82 7 81 1 83 7 85 1 84 7 89 1 85 7 89 1 86] 
#[1 1 97 0 149 9 89 1 121] 
#[0 3 246 0 149] 
#[1 1 97 0 149 6 25 1 121] 
#[0 9 93 0 147] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 1 173 0 77 1 173 0 87 1 173 0 95 1 173 0 117 1 173 0 121 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 9 97 0 199 9 97 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 9 101 2 104 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 250 0 25 4 153 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 1 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 9 105 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 9 109 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 9 109 0 211 9 109 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 9 117 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 9 117 1 112 9 121 1 137 2 165 1 138 2 169 1 140 9 121 1 142 2 177 1 147 2 181 1 152 9 117 1 158 9 121 1 173 9 121 1 174 9 129 1 179 1 205 2 93 3 29 2 94 3 41 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 3 245 2 124] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 1 0 114 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 81 0 141 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 9 137 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 9 137 0 211 9 137 0 214 1 197 0 215 9 133 1 140 9 137 1 151 9 137 1 152 3 41 2 104 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 149 1 75 9 149 1 76 9 149 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 149 1 92 3 221 1 93 9 149 1 112 9 149 1 115 9 149 1 116 9 149 1 117 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 9 153 0 25] 
#[0 9 157 0 25] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 165 1 75 9 165 1 76 9 165 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 165 1 92 3 221 1 93 9 165 1 112 9 165 1 115 9 165 1 116 9 165 1 118 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 169 1 75 9 169 1 76 9 169 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 169 1 92 3 221 1 93 9 169 1 112 9 169 1 115 9 169 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 9 173 0 48 4 157 0 49 4 161 0 52 4 165 0 55 4 169 0 60 4 173 0 65 4 177 0 77 4 181 0 87 4 185 0 95 4 189 0 100 4 193 0 117 4 197 0 121 4 201 0 125 9 177 0 128 4 205 0 134 4 209 0 135 4 213 0 139 4 217 0 158 4 221 0 193 9 197 0 251 9 197 1 8 9 197 1 9 2 1 1 10 9 193 1 48 9 197 1 51] 
#[1 9 201 0 15 3 254 0 38 9 205 0 219 9 209 0 220] 
#[1 9 213 0 8 4 153 0 46 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 4 2 0 156 9 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 9 221 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 9 225 0 251 1 205 0 253 1 205 0 254 1 205 1 2 9 229 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 9 233 1 15 1 205 1 16 1 205 1 17 1 205 1 18 9 221 1 30 1 205 1 31 1 205 1 32 9 237 1 34 9 241 1 35 9 245 1 36 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 53 9 249 1 56 1 205 1 58 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 1 205 2 108 1 205 2 110] 
#[1 1 51 0 8 1 62 0 10 1 62 0 35 1 62 0 37 1 62 0 149] 
#[1 9 253 0 8 10 1 0 149 10 5 1 20 10 5 1 21 10 5 1 27] 
#[1 1 118 0 8 1 55 0 149 10 21 2 41] 
#[1 10 25 0 37 6 109 0 217 6 113 0 218] 
#[1 10 17 0 149 10 29 2 41] 
#[0 10 33 0 8] 
#[0 4 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 14 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 141 0 143 0 158] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 10 37 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 37 1 75 10 37 1 76 10 37 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 37 1 92 3 221 1 93 10 37 1 112 10 37 1 115 10 37 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 10 45 0 25] 
#[0 4 18 0 25] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 1 173 0 77 1 173 0 87 1 173 0 95 1 173 0 117 1 173 0 121 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 5 245 0 199 5 245 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 10 49 2 104 10 49 2 106 3 245 2 124] 
#[1 4 22 0 9 6 97 0 10 4 22 0 37 6 101 2 105] 
#[0 4 26 0 9 0 37] 
#[0 10 53 0 37] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 57 1 75 10 57 1 76 10 57 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 57 1 92 3 221 1 93 10 57 1 112 10 57 1 115 10 57 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 10 61 0 25] 
#[1 1 59 0 54 10 69 0 75 10 73 1 188 10 77 1 189 10 81 1 190 10 85 1 191 10 89 1 196] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 10 93 0 158 1 145 0 193 1 185 0 195 1 145 0 196 10 97 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 10 97 0 211 10 97 0 214 1 197 0 215 10 101 1 38 3 41 2 104 10 105 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 109 1 75 10 109 1 76 10 109 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 109 1 92 3 221 1 93 10 109 1 112 10 109 1 115 10 109 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 4 34 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 38 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 1 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 10 113 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 10 113 0 211 10 113 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 129 1 75 10 129 1 76 10 129 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 129 1 92 3 221 1 93 10 129 1 112 10 129 1 115 10 129 1 116 10 129 1 137 2 165 1 138 2 169 1 140 10 129 1 142 2 177 1 147 3 237 1 151 10 125 1 152 10 129 1 201 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 133 1 75 10 133 1 76 10 133 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 133 1 92 3 221 1 93 10 133 1 112 10 133 1 115 10 133 1 116 10 133 1 118 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 10 137 0 25] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 141 1 75 10 141 1 76 10 141 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 141 1 92 3 221 1 93 10 141 1 112 10 141 1 115 10 141 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 4 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 10 145 0 156] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 157 0 50 0 161 0 52 0 165 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 181 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 197 0 65 0 201 0 66 3 29 0 73 0 209 0 76 0 213 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 233 0 87 0 237 0 94 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 0 11 0 114 1 5 0 116 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 0 15 0 124 1 29 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 1 57 0 134 1 61 0 135 1 65 0 136 0 19 0 138 1 73 0 139 1 77 0 140 1 81 0 141 1 85 0 143 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 46 0 156 1 105 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 1 149 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 1 149 0 211 1 149 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 10 149 1 119 10 149 1 120 10 149 1 121 10 149 1 124 10 149 1 125 10 149 1 126 10 149 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 133 2 153 1 134 2 161 1 137 2 165 1 138 2 169 1 140 2 161 1 142 2 177 1 147 2 181 1 152 2 185 1 154 10 149 1 157 2 193 1 158 10 149 1 159 10 149 1 160 10 149 1 161 10 149 1 169 10 149 1 170 10 149 1 171 10 149 1 172 10 149 1 180 10 149 1 181 10 149 1 182 10 149 1 183 10 149 1 184 10 149 1 185 10 149 1 186 10 149 1 187 10 149 1 197 10 149 1 198 10 149 1 199 10 149 1 200 10 149 1 202 3 21 1 234 1 205 2 93 3 29 2 94 2 153 2 102 10 149 2 103 3 41 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 10 149 2 111 3 65 2 124] 
#[0 4 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 157 0 50 0 161 0 52 0 165 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 181 0 60 0 185 0 61 0 189 0 62 0 193 0 64 0 197 0 65 0 201 0 66 3 29 0 73 0 209 0 76 0 213 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 233 0 87 0 237 0 94 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 0 11 0 114 1 5 0 116 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 0 15 0 124 1 29 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 1 57 0 134 1 61 0 135 1 65 0 136 0 19 0 138 1 73 0 139 1 77 0 140 1 81 0 141 1 85 0 143 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 1 105 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 1 149 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 1 149 0 211 1 149 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 10 153 1 119 10 153 1 120 10 153 1 121 10 153 1 124 10 153 1 125 10 153 1 126 10 153 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 133 2 153 1 134 2 161 1 137 2 165 1 138 2 169 1 140 2 161 1 142 2 177 1 147 2 181 1 152 2 185 1 154 10 153 1 157 2 193 1 158 10 153 1 159 10 153 1 160 10 153 1 161 10 153 1 169 10 153 1 170 10 153 1 171 10 153 1 172 10 153 1 180 10 153 1 181 10 153 1 182 10 153 1 183 10 153 1 184 10 153 1 185 10 153 1 186 10 153 1 187 10 153 1 197 10 153 1 198 10 153 1 199 10 153 1 200 10 153 1 202 3 21 1 234 1 205 2 93 3 29 2 94 2 153 2 102 10 153 2 103 3 41 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 10 153 2 111 3 65 2 124] 
#[0 10 157 0 158] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 10 169 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 10 169 0 211 10 169 0 214 1 197 0 215 10 165 0 223 10 169 0 224 3 41 2 104 3 245 2 124] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 63 0 1 1 63 0 2 4 58 0 3 4 58 0 4 1 63 0 5 1 63 0 6 4 58 0 7 1 63 0 8 1 63 0 9 1 63 0 10 4 58 0 11 1 63 0 12 1 63 0 13 4 58 0 14 1 63 0 15 1 63 0 16 1 63 0 17 4 58 0 18 4 58 0 19 1 63 0 20 4 58 0 21 4 58 0 22 1 63 0 23 1 63 0 25 1 63 0 26 4 58 0 27 4 58 0 28 1 63 0 29 4 58 0 30 1 63 0 31 1 63 0 33 4 58 0 34 1 63 0 35 1 63 0 36 1 63 0 37 1 63 0 38 1 63 0 39 4 58 0 40 1 63 0 44 1 63 0 45 1 63 0 46 1 63 0 47 1 63 0 48 1 63 0 49 1 63 0 50 1 63 0 51 1 63 0 52 1 63 0 53 1 63 0 55 1 63 0 56 1 63 0 58 1 63 0 59 1 63 0 60 1 63 0 61 1 63 0 62 1 63 0 63 1 63 0 64 1 63 0 65 1 63 0 66 1 63 0 67 1 63 0 69 1 63 0 73 1 63 0 76 1 63 0 77 1 63 0 78 1 63 0 79 1 63 0 80 1 63 0 82 1 63 0 83 1 63 0 84 1 63 0 87 1 63 0 90 1 63 0 91 1 63 0 92 1 63 0 93 1 63 0 94 1 63 0 95 1 63 0 97 1 63 0 99 1 63 0 100 1 63 0 101 1 63 0 103 1 63 0 114 1 63 0 116 1 63 0 117 1 63 0 119 1 63 0 121 1 63 0 122 1 63 0 123 1 63 0 124 1 63 0 125 1 63 0 127 1 63 0 128 1 63 0 129 1 63 0 130 1 63 0 131 1 63 0 133 1 63 0 134 1 63 0 135 1 63 0 136 1 63 0 138 1 63 0 139 1 63 0 140 1 63 0 141 1 63 0 143 1 63 0 145 1 63 0 146 1 63 0 147 1 63 0 148 1 63 0 149 1 63 0 150 4 58 0 151 1 63 0 152 1 63 0 153 1 63 0 154 4 58 0 155 1 63 0 156 1 63 0 158 1 63 0 159 1 63 0 160 1 63 0 161 1 63 0 162 1 63 0 163 1 63 0 164 1 63 0 165 1 63 0 166 1 63 0 167 1 63 0 168 1 63 0 169 1 63 0 170 1 63 0 171 1 63 2 126] 
#[0 10 173 0 158] 
#[1 4 66 0 9 4 66 0 15 4 66 0 25 10 177 0 30] 
#[0 4 70 0 9 0 25] 
#[1 4 74 0 9 4 74 0 15 4 74 0 25 10 181 1 145] 
#[0 4 78 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 82 0 1 4 82 0 2 4 82 0 5 4 82 0 6 4 82 0 8 4 82 0 9 1 67 0 10 4 82 0 12 4 82 0 13 4 82 0 15 4 82 0 16 4 82 0 17 4 82 0 23 4 82 0 25 4 82 0 26 4 82 0 29 4 82 0 31 4 82 0 33 4 82 0 35 4 82 0 36 4 82 0 37 4 82 0 38 4 82 0 39 4 82 0 44 4 82 0 45 4 82 0 46 4 82 0 47 4 82 0 48 4 82 0 49 4 82 0 50 4 82 0 51 4 82 0 52 4 82 0 53 4 82 0 55 4 82 0 56 4 82 0 58 4 82 0 59 4 82 0 60 4 82 0 61 4 82 0 62 4 82 0 63 4 82 0 64 4 82 0 65 4 82 0 66 4 82 0 67 4 82 0 69 4 82 0 73 4 82 0 76 4 82 0 77 4 82 0 78 4 82 0 79 4 82 0 80 4 82 0 82 4 82 0 83 4 82 0 84 4 82 0 87 4 82 0 90 4 82 0 91 4 82 0 92 4 82 0 93 4 82 0 94 4 82 0 95 4 82 0 97 4 82 0 99 4 82 0 100 4 82 0 101 4 82 0 102 4 82 0 103 4 82 0 114 4 82 0 116 4 82 0 117 4 82 0 119 4 82 0 121 4 82 0 122 4 82 0 123 4 82 0 124 4 82 0 125 4 82 0 127 4 82 0 128 4 82 0 129 4 82 0 130 4 82 0 131 4 82 0 133 4 82 0 134 4 82 0 135 4 82 0 136 4 82 0 138 4 82 0 139 4 82 0 140 4 82 0 141 4 82 0 143 4 82 0 145 4 82 0 146 4 82 0 147 4 82 0 148 4 82 0 149 4 82 0 150 4 82 0 152 4 82 0 153 4 82 0 154 4 82 0 156 4 82 0 158 4 82 0 159 4 82 0 160 4 82 0 161 4 82 0 162 4 82 0 163 4 82 0 164 4 82 0 165 4 82 0 166 4 82 0 167 4 82 0 168 4 82 0 169 4 82 0 170 4 82 0 171 4 82 2 126] 
#[0 4 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 90 0 1 4 90 0 2 4 90 0 5 4 90 0 6 4 90 0 8 4 90 0 9 4 90 0 10 4 90 0 12 4 90 0 13 4 90 0 15 4 90 0 16 4 90 0 17 4 90 0 23 4 90 0 25 4 90 0 26 4 90 0 29 4 90 0 31 4 90 0 33 4 90 0 35 4 90 0 36 5 189 0 37 4 90 0 38 4 90 0 39 4 90 0 44 4 90 0 45 4 90 0 46 4 90 0 47 4 90 0 48 4 90 0 49 4 90 0 50 4 90 0 51 4 90 0 52 4 90 0 53 4 90 0 55 4 90 0 56 4 90 0 58 4 90 0 59 4 90 0 60 4 90 0 61 4 90 0 62 4 90 0 63 4 90 0 64 4 90 0 65 4 90 0 66 4 90 0 67 4 90 0 69 4 90 0 73 4 90 0 76 4 90 0 77 4 90 0 78 4 90 0 79 4 90 0 80 4 90 0 82 4 90 0 83 4 90 0 84 4 90 0 87 4 90 0 90 4 90 0 91 4 90 0 92 4 90 0 93 4 90 0 94 4 90 0 95 4 90 0 97 4 90 0 99 4 90 0 100 4 90 0 101 4 90 0 102 4 90 0 103 4 90 0 114 4 90 0 116 4 90 0 117 4 90 0 119 4 90 0 121 4 90 0 122 4 90 0 123 4 90 0 124 4 90 0 125 4 90 0 127 4 90 0 128 4 90 0 129 4 90 0 130 4 90 0 131 4 90 0 133 4 90 0 134 4 90 0 135 4 90 0 136 4 90 0 138 4 90 0 139 4 90 0 140 4 90 0 141 4 90 0 143 4 90 0 145 4 90 0 146 4 90 0 147 4 90 0 148 4 90 0 149 4 90 0 150 4 90 0 152 4 90 0 153 4 90 0 154 4 90 0 156 4 90 0 158 4 90 0 159 4 90 0 160 4 90 0 161 4 90 0 162 4 90 0 163 4 90 0 164 4 90 0 165 4 90 0 166 4 90 0 167 4 90 0 168 4 90 0 169 4 90 0 170 4 90 0 171 10 189 0 218 4 90 2 126] 
#[0 4 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 102 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 10 197 0 233 10 201 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[0 4 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 217 0 158] 
#[0 10 221 0 158] 
#[0 10 225 0 20] 
#[0 10 229 0 37] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 10 233 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 57 1 75 9 57 1 76 9 57 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 57 1 92 3 221 1 93 9 57 1 112 9 57 1 115 9 57 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 10 237 0 244 10 241 0 245 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 245 1 75 10 245 1 76 10 245 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 245 1 92 3 221 1 93 10 245 1 112 10 245 1 115 10 245 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 10 249 0 245 1 221 0 248 1 225 0 249 10 253 0 250 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 245 1 75 10 245 1 76 10 245 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 245 1 92 3 221 1 93 10 245 1 112 10 245 1 115 10 245 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 11 1 0 158] 
#[0 11 5 0 158] 
#[0 4 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 4 142 0 1 4 142 0 5 4 142 0 8 4 142 0 10 4 142 0 12 4 142 0 13 4 142 0 16 4 142 0 17 4 142 0 46 4 142 0 47 4 142 0 48 4 142 0 49 4 142 0 52 4 142 0 55 4 142 0 56 4 142 0 60 4 142 0 61 4 142 0 62 4 142 0 65 4 142 0 66 4 142 0 73 4 142 0 77 4 142 0 80 4 142 0 87 4 142 0 95 4 142 0 97 4 142 0 99 4 142 0 100 11 9 0 114 4 142 0 117 4 142 0 121 4 142 0 122 4 142 0 123 4 142 0 125 4 142 0 128 4 142 0 129 4 142 0 130 4 142 0 133 4 142 0 134 4 142 0 135 4 142 0 136 4 142 0 139 4 142 0 141 4 142 0 143 4 142 0 153 4 142 0 158 4 142 0 159 4 142 0 160 4 142 0 161 4 142 0 162 4 142 0 163 4 142 0 166 4 142 0 167 4 142 0 170 4 142 0 171] 
#[0 4 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 4 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 11 13 1 75 11 13 1 76 11 13 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 11 13 1 92 3 221 1 93 11 13 1 112 11 13 1 115 11 13 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 102 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 11 17 0 233 10 201 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 102 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 11 21 0 233 10 201 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[0 11 25 0 114] 
#[0 4 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 162 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 0 254 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[0 4 166 0 114 0 124 0 138] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 11 33 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 11 33 0 211 11 33 0 214 1 197 0 215 11 33 1 235 3 41 2 104 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 2 73 1 53 11 37 1 57 2 81 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 11 41 1 75 11 41 1 76 11 41 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 11 41 1 92 3 221 1 93 11 41 1 112 11 41 1 115 11 41 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 4 170 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 174 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 0 90 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[0 1 70 0 158] 
#[0 4 178 0 8 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 143 0 158] 
#[1 7 53 0 158 11 45 1 132] 
#[0 4 182 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 11 49 0 158 11 53 1 139 11 57 1 148] 
#[1 11 49 0 158 11 61 1 139] 
#[1 7 29 0 8 11 65 0 158 11 73 1 3 11 73 1 6] 
#[0 11 77 0 30] 
#[0 4 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 190 0 9 0 25] 
#[0 4 194 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 4 198 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 11 81 0 8 11 85 0 26 11 89 1 206] 
#[0 4 202 0 32 0 149] 
#[1 4 206 0 1 4 206 0 2 4 206 0 5 4 206 0 6 4 206 0 8 4 206 0 9 1 75 0 10 4 206 0 12 4 206 0 13 4 206 0 15 4 206 0 16 4 206 0 17 4 206 0 23 4 206 0 25 4 206 0 26 4 206 0 29 4 206 0 31 4 206 0 33 4 206 0 35 4 206 0 36 4 206 0 37 4 206 0 38 4 206 0 39 4 206 0 44 4 206 0 45 4 206 0 46 4 206 0 47 4 206 0 48 4 206 0 49 4 206 0 50 4 206 0 51 4 206 0 52 4 206 0 53 4 206 0 55 4 206 0 56 4 206 0 58 4 206 0 59 4 206 0 60 4 206 0 61 4 206 0 62 4 206 0 63 4 206 0 64 4 206 0 65 4 206 0 66 4 206 0 67 4 206 0 69 4 206 0 73 4 206 0 76 4 206 0 77 4 206 0 78 4 206 0 79 4 206 0 80 4 206 0 82 4 206 0 83 4 206 0 84 4 206 0 87 4 206 0 90 4 206 0 91 4 206 0 92 4 206 0 93 4 206 0 94 4 206 0 95 4 206 0 97 4 206 0 99 4 206 0 100 4 206 0 101 4 206 0 102 4 206 0 103 4 206 0 114 4 206 0 116 4 206 0 117 4 206 0 119 4 206 0 121 4 206 0 122 4 206 0 123 4 206 0 124 4 206 0 125 4 206 0 127 4 206 0 128 4 206 0 129 4 206 0 130 4 206 0 131 4 206 0 133 4 206 0 134 4 206 0 135 4 206 0 136 4 206 0 138 4 206 0 139 4 206 0 140 4 206 0 141 4 206 0 143 4 206 0 145 4 206 0 146 4 206 0 147 4 206 0 148 4 206 0 149 4 206 0 150 4 206 0 152 4 206 0 153 4 206 0 154 4 206 0 156 4 206 0 158 4 206 0 159 4 206 0 160 4 206 0 161 4 206 0 162 4 206 0 163 4 206 0 164 4 206 0 165 4 206 0 166 4 206 0 167 4 206 0 168 4 206 0 169 4 206 0 170 4 206 0 171 4 206 2 126] 
#[0 4 210 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 4 214 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 4 218 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 11 93 0 9] 
#[1 4 222 0 9 11 97 0 15] 
#[0 4 226 0 9 0 15] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 11 101 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 11 101 0 211 11 101 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[0 4 230 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 11 105 0 9 11 109 0 15] 
#[1 4 234 0 9 4 234 0 15 3 50 0 32] 
#[1 2 214 0 8 2 218 0 9 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 77 7 89 0 86 2 214 0 87 2 214 0 95 2 214 0 100 7 89 0 104 7 89 0 114 2 214 0 117 2 214 0 121 2 214 0 125 2 214 0 134 2 214 0 135 2 214 0 139 2 214 0 143 1 79 0 158 7 77 1 82 7 81 1 83 7 85 1 84 7 89 1 85 7 89 1 86 7 97 1 88 11 113 1 89] 
#[0 2 226 0 9 0 15 0 32] 
#[0 11 117 0 32] 
#[0 11 121 0 158] 
#[0 4 238 0 158] 
#[0 2 234 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 4 242 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 125 1 52 1 205 1 53 1 205 1 58 11 125 1 59 11 125 1 60 11 125 1 61 11 125 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 11 125 2 107 1 205 2 108 11 125 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 129 1 52 1 205 1 53 1 205 1 58 11 129 1 59 11 129 1 60 11 129 1 61 11 129 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 11 129 2 107 1 205 2 108 11 129 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 133 1 52 1 205 1 53 1 205 1 58 11 133 1 59 11 133 1 60 11 133 1 61 11 133 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 11 133 2 107 1 205 2 108 11 133 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 137 1 52 1 205 1 53 1 205 1 58 11 137 1 59 11 137 1 60 11 137 1 61 11 137 1 62 11 137 1 63 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 11 137 2 107 1 205 2 108 11 137 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 11 141 1 52 1 205 1 53 1 205 1 58 11 141 1 59 11 141 1 60 11 141 1 61 11 141 1 62 11 141 1 63 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 11 141 2 107 1 205 2 108 11 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 11 145 1 64 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 11 149 1 64 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 11 153 1 65 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 11 157 1 65 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 11 161 1 65 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 11 165 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 11 165 0 211 11 165 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 11 169 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 11 169 0 211 11 169 0 214 1 197 0 215 11 173 0 226 11 173 0 227 11 173 0 229 11 173 0 230 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 11 173 1 75 11 173 1 76 11 173 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 11 173 1 92 3 221 1 93 11 173 1 112 11 173 1 115 11 173 1 116 11 173 1 117 3 237 1 151 11 193 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 11 197 1 65 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 11 201 1 66 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 11 205 1 66 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 11 209 1 67 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 11 213 1 68 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 11 217 1 69 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 11 221 1 70 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 11 225 1 73 11 225 1 74 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 11 229 1 71 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 11 233 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 11 241 1 75 11 241 1 76 11 241 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 11 237 1 91 11 241 1 92 3 221 1 93 11 241 1 112 11 241 1 115 11 241 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 11 233 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 97 0 149 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 2 73 1 53 11 249 1 57 2 81 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 11 249 1 75 11 249 1 76 11 249 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 11 249 1 90 11 249 1 91 11 249 1 92 3 221 1 93 11 249 1 112 11 249 1 115 11 249 1 116 11 249 1 121 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 0 155 0 158 1 145 0 193 1 185 0 195 1 145 0 196 12 9 0 197 12 9 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 12 9 0 211 12 9 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[0 12 13 0 158] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 12 25 1 75 12 25 1 76 12 25 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 12 25 1 92 3 221 1 93 12 17 1 103 12 21 1 104 12 25 1 112 12 25 1 115 12 25 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 12 29 1 75 12 29 1 76 12 29 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 12 29 1 92 3 221 1 93 12 29 1 112 12 29 1 115 12 29 1 116 12 29 1 118 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 4 246 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 4 250 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 12 33 0 83 12 37 0 119 12 41 1 107 12 45 1 108 12 49 1 109] 
#[1 3 81 0 80 4 254 0 83 7 225 0 92 7 229 0 93 7 233 0 103 4 254 0 119 7 237 0 146 7 241 1 93 12 53 1 97 8 5 1 98 8 9 1 99 8 13 1 100 8 17 1 101 8 21 1 102] 
#[0 5 2 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 6 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 10 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 14 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 18 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 22 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 5 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 5 30 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 57 0 114] 
#[0 5 34 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 38 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 42 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 2 73 1 53 12 61 1 57 2 81 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 12 65 1 75 12 65 1 76 12 65 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 12 65 1 92 3 221 1 93 12 65 1 112 12 65 1 115 12 65 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 5 46 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 50 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 5 54 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 58 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 5 62 0 8 5 62 0 41 5 62 0 46 5 62 0 49 5 62 0 52 5 62 0 55 5 62 0 60 5 62 0 65 5 62 0 66 5 62 0 71 5 62 0 72 5 62 0 77 5 62 0 85 5 62 0 87 5 62 0 89 5 62 0 95 5 62 0 99 5 62 0 100 5 62 0 105 5 62 0 109 5 62 0 111 5 62 0 112 5 62 0 113 5 62 0 117 5 62 0 118 5 62 0 121 1 83 0 124 5 62 0 125 5 62 0 134 5 62 0 135 1 87 0 138 5 62 0 139 5 62 0 142 5 62 0 143 5 62 0 144 5 66 0 153 5 62 0 158 12 73 2 102] 
#[0 5 70 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 74 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 78 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 82 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 86 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 90 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 94 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 98 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 5 102 0 8 5 102 0 41 5 102 0 46 5 102 0 49 5 102 0 52 5 102 0 55 5 102 0 60 5 102 0 65 5 102 0 66 5 102 0 71 1 91 0 72 5 102 0 77 5 102 0 85 5 102 0 87 5 102 0 89 5 102 0 95 5 102 0 99 5 102 0 100 5 102 0 105 5 102 0 109 5 102 0 111 5 102 0 112 5 102 0 113 5 102 0 117 5 102 0 118 5 102 0 121 5 102 0 124 5 102 0 125 5 102 0 134 5 102 0 135 1 95 0 138 5 102 0 139 5 102 0 142 5 102 0 143 5 102 0 144 1 99 0 158 12 81 2 102] 
#[0 5 110 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 114 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 1 103 0 8 8 249 0 41 8 249 0 46 1 107 0 49 1 111 0 52 1 115 0 55 3 186 0 57 12 85 0 58 1 119 0 60 8 217 0 62 1 123 0 65 1 127 0 66 8 221 0 68 12 89 0 70 8 249 0 72 1 131 0 77 1 135 0 87 3 186 0 88 8 249 0 89 1 139 0 95 8 249 0 99 1 143 0 100 8 249 0 105 12 117 0 108 8 249 0 109 8 249 0 111 8 249 0 112 8 249 0 113 12 93 0 114 1 147 0 117 8 249 0 118 1 151 0 121 8 249 0 124 1 155 0 125 3 186 0 126 1 159 0 134 1 163 0 135 8 249 0 138 1 167 0 139 8 249 0 142 1 171 0 143 8 249 0 144 1 175 0 158 1 145 0 193 1 185 0 195 1 145 0 196 12 101 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 12 101 0 211 12 101 0 214 1 197 0 215 12 105 1 140 12 109 2 13 12 113 2 26 12 117 2 97 8 249 2 102 3 41 2 104 3 245 2 124 8 249 2 125] 
#[1 5 49 0 8 12 149 0 41 12 149 0 46 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 12 121 0 71 12 149 0 72 1 173 0 77 12 125 0 85 1 173 0 87 12 149 0 89 1 173 0 95 12 149 0 99 5 85 0 100 12 149 0 105 12 149 0 109 12 149 0 111 12 149 0 112 12 149 0 113 1 173 0 117 12 149 0 118 1 173 0 121 12 149 0 124 5 97 0 125 1 173 0 134 1 173 0 135 12 149 0 138 1 173 0 139 12 149 0 142 1 85 0 143 12 149 0 144 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 12 129 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 12 129 0 211 12 129 0 214 1 197 0 215 12 133 2 18 12 137 2 19 12 141 2 21 12 145 2 23 12 149 2 102 3 41 2 104 3 245 2 124 12 149 2 125] 
#[0 12 153 0 158] 
#[1 12 161 0 138 12 157 0 153 12 161 2 102] 
#[1 5 118 0 8 5 118 0 41 5 118 0 46 5 118 0 49 5 118 0 52 5 118 0 55 5 118 0 60 5 118 0 65 5 118 0 66 5 118 0 71 1 179 0 72 5 118 0 77 5 118 0 85 5 118 0 87 5 118 0 89 5 118 0 95 5 118 0 99 5 118 0 100 5 118 0 105 5 118 0 109 5 118 0 111 5 118 0 112 5 118 0 113 5 118 0 117 5 118 0 118 5 118 0 121 1 183 0 124 5 118 0 125 5 118 0 134 5 118 0 135 5 118 0 138 5 118 0 139 5 118 0 142 5 118 0 143 5 118 0 144 3 114 0 153 5 118 0 158 12 173 2 98] 
#[0 5 122 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 12 177 0 25] 
#[1 5 113 0 158 1 145 0 193 12 181 0 195 1 145 0 196] 
#[1 1 22 0 20 6 65 0 24 1 22 0 25 6 69 0 26 12 185 0 30 9 69 0 222 9 69 0 252] 
#[0 12 189 0 25] 
#[1 6 81 0 20 5 126 0 25] 
#[1 12 201 0 158 12 197 2 73 12 201 2 74] 
#[1 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 72 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 10 0 142 0 10 0 144 12 213 0 177 12 205 0 189 12 209 0 190 12 213 0 191 12 213 0 192 12 213 1 203 12 213 2 33 12 213 2 44 12 213 2 59 12 213 2 67 0 89 2 75 0 93 2 76 0 97 2 77 0 101 2 78 5 130 2 126] 
#[0 5 134 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[1 1 187 0 37 5 138 0 41 5 138 0 46 5 138 0 57 5 138 0 62 5 138 0 68 5 138 0 72 5 138 0 88 5 138 0 89 5 138 0 98 5 138 0 99 5 138 0 105 5 138 0 108 5 138 0 109 5 138 0 111 5 138 0 112 5 138 0 113 5 138 0 114 5 138 0 118 5 138 0 124 5 138 0 126 5 138 0 138 5 138 0 142 5 138 0 144 12 217 2 72 5 138 2 126] 
#[0 5 142 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[0 5 146 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 5 150 0 8 0 15 0 38] 
#[1 12 221 0 15 12 225 0 38] 
#[0 5 154 0 15 0 38] 
#[1 12 229 0 8 5 158 0 15 5 158 0 38 12 233 2 85 12 237 2 86] 
#[0 5 162 0 158] 
#[0 12 241 0 158] 
#[1 0 6 0 37 0 6 0 41 0 6 0 46 0 6 0 57 0 6 0 62 0 6 0 68 0 7 0 72 0 6 0 88 0 6 0 89 0 6 0 98 0 6 0 99 0 6 0 105 0 6 0 108 0 6 0 109 0 6 0 111 0 6 0 112 0 6 0 113 0 6 0 114 0 6 0 118 0 6 0 124 0 6 0 126 0 6 0 138 0 6 0 140 0 6 0 142 0 6 0 144 0 6 0 156 12 245 0 180 0 41 0 181 0 45 0 182] 
#[1 12 253 0 25 5 166 0 37 5 166 0 41 5 166 0 46 5 166 0 57 5 166 0 62 5 166 0 68 5 166 0 72 5 166 0 88 5 166 0 89 5 166 0 98 5 166 0 99 5 166 0 105 5 166 0 108 5 166 0 109 5 166 0 111 5 166 0 112 5 166 0 113 5 166 0 114 5 166 0 118 5 166 0 124 5 166 0 126 5 166 0 138 5 166 0 142 5 166 0 144 5 166 0 156 12 253 2 95 5 166 2 126] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 1 0 114 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 13 5 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 13 5 0 211 13 5 0 214 1 197 0 215 13 1 1 140 13 5 1 234 3 41 2 104 3 65 2 124] 
#[0 13 9 0 158] 
#[0 5 62 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 170 0 8 0 49 0 52 0 55 0 57 0 60 0 65 0 66 0 77 0 87 0 88 0 95 0 100 0 117 0 121 0 125 0 126 0 134 0 135 0 139 0 143 0 158] 
#[1 13 13 0 108 3 186 0 126 13 13 2 97] 
#[0 5 102 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 13 17 0 57 13 21 0 88 13 25 0 126] 
#[0 5 118 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 71 0 72 0 76 0 77 0 85 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 5 174 0 8 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[1 9 9 0 9 2 230 0 158] 
#[0 4 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 13 29 1 75 13 29 1 76 13 29 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 13 29 1 92 3 221 1 93 13 29 1 112 13 29 1 115 13 29 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 13 33 1 52 1 205 1 53 1 205 1 58 13 33 1 59 13 33 1 60 13 33 1 61 13 33 1 62 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 13 33 2 107 1 205 2 108 13 33 2 109 1 205 2 110] 
#[0 5 178 0 9 0 15] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 9 65 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 13 37 0 205 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 9 65 0 211 9 65 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[0 5 182 0 9 0 15] 
#[1 13 41 0 9 9 17 0 15 13 45 0 203] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 4 237 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 13 49 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 13 53 1 75 13 53 1 76 13 53 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 13 53 1 92 3 221 1 93 13 53 1 112 13 53 1 115 13 53 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 5 186 0 9 0 15] 
#[1 13 57 0 9 9 29 0 15 13 61 0 255] 
#[0 5 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 97 0 149 13 65 1 121] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 13 69 0 222 13 69 0 252 1 22 2 126] 
#[1 13 73 0 15 13 77 0 38] 
#[0 5 194 0 15 0 38 0 156] 
#[0 13 81 0 9] 
#[1 3 202 0 9 3 202 0 15 9 13 0 158] 
#[0 4 62 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 85 0 30] 
#[1 13 89 0 15 5 198 0 25] 
#[0 5 202 0 15 0 25] 
#[0 13 93 0 9] 
#[0 5 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 97 0 8] 
#[1 6 97 0 10 6 101 2 105] 
#[1 13 101 0 158 13 105 2 112 13 109 2 113] 
#[1 1 22 0 4 1 22 0 7 1 22 0 8 1 22 0 10 1 22 0 11 1 22 0 13 1 22 0 14 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 22 6 65 0 24 6 69 0 26 1 22 0 28 1 22 0 30 1 22 0 34 1 22 0 35 1 22 0 37 1 22 0 40 1 22 0 151 1 22 0 158 6 77 0 222 6 77 0 252] 
#[1 6 85 0 158 6 89 1 143 6 93 1 146] 
#[0 5 210 0 25] 
#[0 5 214 0 9 0 15 0 25] 
#[0 13 113 0 25] 
#[0 5 218 0 25] 
#[1 13 117 0 15 5 222 0 25] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 81 0 141 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 13 121 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 13 121 0 211 13 121 0 214 1 197 0 215 13 121 1 151 13 121 1 152 3 41 2 104 3 245 2 124] 
#[0 13 125 0 158] 
#[0 3 70 0 158] 
#[0 5 226 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 129 0 25] 
#[0 5 230 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 5 234 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 5 238 0 9 0 25 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 13 133 0 9] 
#[0 13 137 0 9] 
#[0 5 242 0 9 0 20] 
#[0 5 246 0 9 0 20] 
#[0 5 250 0 9 0 20] 
#[0 5 254 0 9 0 20] 
#[0 6 2 0 9 0 20] 
#[0 13 141 0 9] 
#[1 6 6 0 9 6 6 0 20 13 145 1 50] 
#[0 6 10 0 15 0 38] 
#[0 13 149 0 38] 
#[1 13 153 0 15 6 14 0 38] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 4 237 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 4 249 1 1 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 4 253 1 75 4 253 1 76 4 253 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 4 253 1 92 3 221 1 93 4 253 1 112 4 253 1 115 4 253 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 1 22 0 8 1 22 0 13 1 22 0 15 1 22 0 17 1 22 0 19 1 22 0 20 6 65 0 24 6 69 0 26 13 157 0 30 1 22 0 35 1 22 0 37 1 22 0 156 9 1 0 222 9 1 0 252] 
#[1 6 117 0 8 6 121 0 13 6 125 0 17 6 129 0 19 6 133 0 20 13 161 0 35] 
#[1 1 142 0 8 1 142 0 13 6 18 0 15 1 142 0 17 1 142 0 19 1 142 0 20 1 142 0 35 1 142 0 37 6 18 0 156] 
#[1 1 158 0 8 1 158 0 13 6 22 0 15 1 158 0 17 1 158 0 19 1 158 0 20 1 158 0 35 1 158 0 37 6 22 0 156] 
#[1 1 182 0 8 1 182 0 13 6 26 0 15 1 182 0 17 1 182 0 19 1 182 0 20 1 182 0 35 1 182 0 37 6 26 0 156] 
#[0 13 165 0 156] 
#[1 13 169 0 15 6 30 0 156] 
#[0 6 34 0 15 0 156] 
#[0 6 38 0 15 0 156] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 102 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 13 173 0 233 10 201 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 13 177 0 37 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 13 181 0 149 1 101 0 153 6 42 0 156 13 185 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 13 189 1 22 13 193 1 23 13 197 1 24 13 201 1 25 13 205 1 28 13 209 1 29 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 13 213 1 75 13 213 1 76 13 213 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 13 213 1 92 3 221 1 93 13 213 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110 3 245 2 124] 
#[0 6 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 10 17 0 149 1 101 0 153 6 58 0 156 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 13 221 1 75 13 221 1 76 13 221 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 13 221 1 92 3 221 1 93 13 221 1 112 13 221 1 115 13 221 1 116 3 237 1 151 3 241 1 152 13 221 1 230 13 221 2 41 13 229 2 42 13 233 2 43 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 6 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 9 201 0 15 0 129 0 16 0 133 0 17 3 254 0 38 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 9 205 0 219 9 209 0 220 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 13 237 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 57 1 75 9 57 1 76 9 57 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 57 1 92 3 221 1 93 9 57 1 112 9 57 1 115 9 57 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 6 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 13 241 1 75 13 241 1 76 13 241 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 13 241 1 92 3 221 1 93 13 241 1 112 13 241 1 115 13 241 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 6 70 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 6 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 13 245 0 9] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 13 249 1 75 13 249 1 76 13 249 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 13 249 1 92 3 221 1 93 13 249 1 112 13 249 1 115 13 249 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 13 253 0 9] 
#[0 6 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 14 1 0 8 14 5 0 145 14 9 1 192 14 13 1 194] 
#[1 1 97 0 149 14 17 1 121] 
#[1 6 86 0 1 6 86 0 5 6 86 0 8 6 86 0 10 6 86 0 12 6 86 0 13 6 86 0 16 6 86 0 17 6 86 0 25 6 86 0 46 6 86 0 47 6 86 0 48 6 86 0 49 6 86 0 50 6 86 0 52 6 86 0 53 6 86 0 55 6 86 0 56 6 86 0 58 6 86 0 59 6 86 0 60 6 86 0 61 6 86 0 62 6 86 0 64 6 86 0 65 6 86 0 66 6 86 0 67 6 86 0 73 10 69 0 75 6 86 0 76 6 86 0 77 6 86 0 78 6 86 0 79 6 86 0 82 6 86 0 84 6 86 0 87 6 86 0 94 6 86 0 95 6 86 0 97 6 86 0 99 6 86 0 100 6 86 0 114 6 86 0 116 6 86 0 117 6 86 0 121 6 86 0 122 6 86 0 123 6 86 0 124 6 86 0 125 6 86 0 127 6 86 0 128 6 86 0 129 6 86 0 130 6 86 0 131 6 86 0 133 6 86 0 134 6 86 0 135 6 86 0 136 6 86 0 138 6 86 0 139 6 86 0 140 6 86 0 141 6 86 0 143 6 86 0 147 6 86 0 148 6 86 0 149 6 86 0 153 6 86 0 156 6 86 0 158 6 86 0 159 6 86 0 160 6 86 0 161 6 86 0 162 6 86 0 163 6 86 0 166 6 86 0 167 6 86 0 170 6 86 0 171 14 21 1 196 6 86 2 126] 
#[1 6 90 0 1 6 90 0 5 6 90 0 8 6 90 0 10 6 90 0 12 6 90 0 13 6 90 0 16 6 90 0 17 6 90 0 25 6 90 0 46 6 90 0 47 6 90 0 48 6 90 0 49 6 90 0 50 6 90 0 52 6 90 0 53 10 65 0 54 6 90 0 55 6 90 0 56 6 90 0 58 6 90 0 59 6 90 0 60 6 90 0 61 6 90 0 62 6 90 0 64 6 90 0 65 6 90 0 66 6 90 0 67 6 90 0 73 6 90 0 75 6 90 0 76 6 90 0 77 6 90 0 78 6 90 0 79 6 90 0 82 6 90 0 84 6 90 0 87 6 90 0 94 6 90 0 95 6 90 0 97 6 90 0 99 6 90 0 100 6 90 0 114 6 90 0 116 6 90 0 117 6 90 0 121 6 90 0 122 6 90 0 123 6 90 0 124 6 90 0 125 6 90 0 127 6 90 0 128 6 90 0 129 6 90 0 130 6 90 0 131 6 90 0 133 6 90 0 134 6 90 0 135 6 90 0 136 6 90 0 138 6 90 0 139 6 90 0 140 6 90 0 141 6 90 0 143 6 90 0 147 6 90 0 148 6 90 0 149 6 90 0 153 6 90 0 156 6 90 0 158 6 90 0 159 6 90 0 160 6 90 0 161 6 90 0 162 6 90 0 163 6 90 0 166 6 90 0 167 6 90 0 170 6 90 0 171 14 25 1 191 6 90 2 126] 
#[1 14 29 0 54 14 33 1 191 14 37 1 195] 
#[0 6 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 6 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 1 191 0 9 1 22 0 10 1 191 0 20 14 41 0 24 14 45 0 26 1 22 0 35 1 22 0 37 9 69 0 222 9 69 0 252 14 49 1 39 14 53 1 40] 
#[0 14 57 0 9] 
#[1 14 61 0 9 14 65 0 20] 
#[1 14 69 0 9 6 97 0 10 7 61 2 105] 
#[0 14 73 0 9] 
#[1 1 195 0 158 6 89 1 143 6 93 1 146] 
#[0 6 106 0 9] 
#[0 6 110 0 9] 
#[1 7 29 0 8 1 199 0 158 7 37 1 3 7 41 1 141] 
#[0 14 77 0 9] 
#[0 14 81 0 9] 
#[0 6 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 14 85 0 25] 
#[0 6 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 142 0 143 0 144 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 6 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 1 22 0 1 1 22 0 2 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 20 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 29 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 102 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 14 89 0 222 14 89 0 252 1 22 2 126] 
#[0 6 130 0 15 0 154] 
#[1 14 93 0 15 14 97 0 154] 
#[0 6 134 0 15 0 154] 
#[1 1 22 0 1 1 22 0 2 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 20 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 29 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 102 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 14 101 0 222 14 101 0 252 1 22 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 14 105 0 149 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 14 113 1 75 14 113 1 76 14 113 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 14 113 1 92 3 221 1 93 14 113 1 112 14 113 1 115 14 113 1 116 3 237 1 151 3 241 1 152 14 113 1 153 14 113 2 41 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 14 113 2 119 3 245 2 124] 
#[1 6 138 0 9 14 125 0 15 6 138 0 25 14 129 1 144] 
#[0 6 142 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 133 0 23] 
#[0 14 137 0 9] 
#[1 6 150 0 9 14 141 0 15] 
#[0 6 154 0 9 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 14 145 0 86 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 14 149 0 104 14 153 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 14 157 0 238 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 14 161 1 75 14 161 1 76 14 161 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 14 161 1 92 3 221 1 93 14 161 1 112 14 161 1 115 14 161 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 6 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 86 0 87 0 95 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 14 165 0 222 14 165 0 252 1 22 2 126] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 14 169 0 222 14 169 0 252 1 22 2 126] 
#[0 14 173 0 158] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 14 177 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 57 1 75 9 57 1 76 9 57 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 57 1 92 3 221 1 93 9 57 1 112 9 57 1 115 9 57 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 13 73 0 15 14 181 0 38] 
#[1 14 185 0 164 14 189 0 165] 
#[0 6 162 0 164 0 165] 
#[1 14 193 0 15 6 166 0 23 6 170 0 164 6 170 0 165 6 170 0 168 6 170 0 169 14 197 0 246 14 201 0 247] 
#[0 6 174 0 168 0 169] 
#[1 14 205 0 168 14 209 0 169] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 14 213 0 222 14 213 0 252 1 22 2 126] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 14 217 0 222 14 217 0 252 1 22 2 126] 
#[0 6 178 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 87 0 95 0 97 0 99 0 100 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 6 182 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 221 0 9] 
#[0 14 225 0 9] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 14 229 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 14 229 1 75 14 229 1 76 14 229 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 14 229 1 92 3 221 1 93 14 229 1 112 14 229 1 115 14 229 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 6 186 0 158] 
#[1 7 53 0 158 14 233 1 132] 
#[0 14 237 0 25] 
#[0 14 241 0 25] 
#[0 6 190 0 32 0 149] 
#[0 14 245 0 30] 
#[1 6 194 0 9 6 194 0 15 6 194 0 25 14 249 1 150] 
#[0 6 198 0 9 0 25] 
#[0 6 202 0 9 0 25] 
#[0 6 206 0 9 0 15] 
#[0 6 210 0 9 0 15] 
#[1 14 253 0 15 15 1 1 4 15 5 1 5] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 15 9 1 75 15 9 1 76 15 9 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 15 9 1 92 3 221 1 93 15 9 1 112 15 9 1 115 15 9 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 15 13 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 158 15 37 1 207 15 41 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 15 45 0 8] 
#[0 6 218 0 32 0 149] 
#[1 2 214 0 8 2 214 0 49 2 214 0 52 2 214 0 55 2 214 0 60 2 214 0 65 2 214 0 66 2 214 0 77 7 89 0 86 2 214 0 87 2 214 0 95 2 214 0 100 7 89 0 104 7 89 0 114 2 214 0 117 2 214 0 121 2 214 0 125 2 214 0 134 2 214 0 135 2 214 0 139 2 214 0 143 2 214 0 158 15 49 1 84 7 89 1 85 7 89 1 86] 
#[0 15 53 0 158] 
#[0 6 222 0 32] 
#[1 7 109 0 158 15 57 1 89] 
#[0 4 234 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 11 233 0 114 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 97 0 149 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 2 73 1 53 15 61 1 57 2 81 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 15 61 1 75 15 61 1 76 15 61 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 15 61 1 90 15 61 1 91 15 61 1 92 3 221 1 93 15 61 1 112 15 61 1 115 15 61 1 116 15 61 1 121 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 15 65 0 86] 
#[0 6 226 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 230 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 6 234 0 1 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 21 0 23 0 25 0 26 0 27 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 6 238 0 1 6 238 0 2 7 133 0 3 6 238 0 5 6 238 0 6 6 238 0 8 6 238 0 9 1 203 0 10 6 238 0 12 6 238 0 13 6 238 0 15 6 238 0 16 6 238 0 17 7 141 0 21 6 238 0 23 6 238 0 25 6 238 0 26 6 238 0 27 6 238 0 29 6 238 0 31 6 238 0 33 6 238 0 35 6 238 0 36 6 238 0 38 6 238 0 39 6 238 0 44 6 238 0 45 6 238 0 46 6 238 0 47 6 238 0 48 6 238 0 49 6 238 0 50 6 238 0 51 6 238 0 52 6 238 0 53 6 238 0 55 6 238 0 56 6 238 0 58 6 238 0 59 6 238 0 60 6 238 0 61 6 238 0 62 6 238 0 63 6 238 0 64 6 238 0 65 6 238 0 66 6 238 0 67 6 238 0 69 6 238 0 73 6 238 0 76 6 238 0 77 6 238 0 78 6 238 0 79 6 238 0 80 6 238 0 82 6 238 0 83 6 238 0 84 6 238 0 87 6 238 0 90 6 238 0 91 6 238 0 92 6 238 0 93 6 238 0 94 6 238 0 95 6 238 0 97 6 238 0 99 6 238 0 100 6 238 0 101 6 238 0 103 6 238 0 114 6 238 0 116 6 238 0 117 6 238 0 119 6 238 0 121 6 238 0 122 6 238 0 123 6 238 0 124 6 238 0 125 6 238 0 127 6 238 0 128 6 238 0 129 6 238 0 130 6 238 0 131 6 238 0 133 6 238 0 134 6 238 0 135 6 238 0 136 6 238 0 138 6 238 0 139 6 238 0 140 6 238 0 141 6 238 0 143 6 238 0 145 6 238 0 146 6 238 0 147 6 238 0 148 6 238 0 149 6 238 0 150 6 238 0 152 6 238 0 153 6 238 0 154 6 238 0 155 6 238 0 156 6 238 0 158 6 238 0 159 6 238 0 160 6 238 0 161 6 238 0 162 6 238 0 163 6 238 0 164 6 238 0 165 6 238 0 166 6 238 0 167 6 238 0 168 6 238 0 169 6 238 0 170 6 238 0 171 6 238 2 126] 
#[1 6 242 0 1 6 242 0 2 7 133 0 3 6 242 0 5 6 242 0 6 6 242 0 8 6 242 0 9 1 207 0 10 6 242 0 12 6 242 0 13 6 242 0 15 6 242 0 16 6 242 0 17 7 141 0 21 6 242 0 23 6 242 0 25 6 242 0 26 6 242 0 27 6 242 0 29 6 242 0 31 6 242 0 33 6 242 0 35 6 242 0 36 6 242 0 38 6 242 0 39 6 242 0 44 6 242 0 45 6 242 0 46 6 242 0 47 6 242 0 48 6 242 0 49 6 242 0 50 6 242 0 51 6 242 0 52 6 242 0 53 6 242 0 55 6 242 0 56 6 242 0 58 6 242 0 59 6 242 0 60 6 242 0 61 6 242 0 62 6 242 0 63 6 242 0 64 6 242 0 65 6 242 0 66 6 242 0 67 6 242 0 69 6 242 0 73 6 242 0 76 6 242 0 77 6 242 0 78 6 242 0 79 6 242 0 80 6 242 0 82 6 242 0 83 6 242 0 84 6 242 0 87 6 242 0 90 6 242 0 91 6 242 0 92 6 242 0 93 6 242 0 94 6 242 0 95 6 242 0 97 6 242 0 99 6 242 0 100 6 242 0 101 6 242 0 103 6 242 0 114 6 242 0 116 6 242 0 117 6 242 0 119 6 242 0 121 6 242 0 122 6 242 0 123 6 242 0 124 6 242 0 125 6 242 0 127 6 242 0 128 6 242 0 129 6 242 0 130 6 242 0 131 6 242 0 133 6 242 0 134 6 242 0 135 6 242 0 136 6 242 0 138 6 242 0 139 6 242 0 140 6 242 0 141 6 242 0 143 6 242 0 145 6 242 0 146 6 242 0 147 6 242 0 148 6 242 0 149 6 242 0 150 6 242 0 152 6 242 0 153 6 242 0 154 6 242 0 155 6 242 0 156 6 242 0 158 6 242 0 159 6 242 0 160 6 242 0 161 6 242 0 162 6 242 0 163 6 242 0 164 6 242 0 165 6 242 0 166 6 242 0 167 6 242 0 168 6 242 0 169 6 242 0 170 6 242 0 171 6 242 2 126] 
#[1 6 246 0 1 6 246 0 2 6 246 0 5 6 246 0 6 6 246 0 8 6 246 0 9 6 246 0 10 1 211 0 12 6 246 0 13 6 246 0 15 1 215 0 16 6 246 0 17 6 246 0 23 6 246 0 25 6 246 0 26 6 246 0 27 6 246 0 29 6 246 0 31 6 246 0 33 6 246 0 35 6 246 0 36 6 246 0 38 6 246 0 39 6 246 0 44 6 246 0 45 6 246 0 46 6 246 0 47 6 246 0 48 6 246 0 49 6 246 0 50 6 246 0 51 6 246 0 52 6 246 0 53 6 246 0 55 6 246 0 56 6 246 0 58 6 246 0 59 6 246 0 60 6 246 0 61 6 246 0 62 6 246 0 63 6 246 0 64 6 246 0 65 6 246 0 66 6 246 0 67 6 246 0 69 6 246 0 73 6 246 0 76 6 246 0 77 6 246 0 78 6 246 0 79 6 246 0 80 6 246 0 82 6 246 0 83 6 246 0 84 6 246 0 87 6 246 0 90 6 246 0 91 6 246 0 92 6 246 0 93 6 246 0 94 6 246 0 95 6 246 0 97 6 246 0 99 6 246 0 100 6 246 0 101 6 246 0 103 6 246 0 114 6 246 0 116 6 246 0 117 6 246 0 119 6 246 0 121 6 246 0 122 6 246 0 123 6 246 0 124 6 246 0 125 6 246 0 127 6 246 0 128 6 246 0 129 6 246 0 130 6 246 0 131 6 246 0 133 6 246 0 134 6 246 0 135 6 246 0 136 6 246 0 138 6 246 0 139 6 246 0 140 6 246 0 141 6 246 0 143 6 246 0 145 6 246 0 146 6 246 0 147 6 246 0 148 6 246 0 149 6 246 0 150 6 246 0 152 6 246 0 153 6 246 0 154 6 246 0 155 6 246 0 156 6 246 0 158 6 246 0 159 6 246 0 160 6 246 0 161 6 246 0 162 6 246 0 163 6 246 0 164 6 246 0 165 6 246 0 166 6 246 0 167 6 246 0 168 6 246 0 169 6 246 0 170 6 246 0 171 6 246 2 126] 
#[1 6 250 0 1 6 250 0 2 6 250 0 5 6 250 0 6 6 250 0 8 6 250 0 9 6 250 0 10 1 219 0 12 6 250 0 13 6 250 0 15 1 223 0 16 6 250 0 17 6 250 0 23 6 250 0 25 6 250 0 26 6 250 0 27 6 250 0 29 6 250 0 31 6 250 0 33 6 250 0 35 6 250 0 36 6 250 0 38 6 250 0 39 6 250 0 44 6 250 0 45 6 250 0 46 6 250 0 47 6 250 0 48 6 250 0 49 6 250 0 50 6 250 0 51 6 250 0 52 6 250 0 53 6 250 0 55 6 250 0 56 6 250 0 58 6 250 0 59 6 250 0 60 6 250 0 61 6 250 0 62 6 250 0 63 6 250 0 64 6 250 0 65 6 250 0 66 6 250 0 67 6 250 0 69 6 250 0 73 6 250 0 76 6 250 0 77 6 250 0 78 6 250 0 79 6 250 0 80 6 250 0 82 6 250 0 83 6 250 0 84 6 250 0 87 6 250 0 90 6 250 0 91 6 250 0 92 6 250 0 93 6 250 0 94 6 250 0 95 6 250 0 97 6 250 0 99 6 250 0 100 6 250 0 101 6 250 0 103 6 250 0 114 6 250 0 116 6 250 0 117 6 250 0 119 6 250 0 121 6 250 0 122 6 250 0 123 6 250 0 124 6 250 0 125 6 250 0 127 6 250 0 128 6 250 0 129 6 250 0 130 6 250 0 131 6 250 0 133 6 250 0 134 6 250 0 135 6 250 0 136 6 250 0 138 6 250 0 139 6 250 0 140 6 250 0 141 6 250 0 143 6 250 0 145 6 250 0 146 6 250 0 147 6 250 0 148 6 250 0 149 6 250 0 150 6 250 0 152 6 250 0 153 6 250 0 154 6 250 0 155 6 250 0 156 6 250 0 158 6 250 0 159 6 250 0 160 6 250 0 161 6 250 0 162 6 250 0 163 6 250 0 164 6 250 0 165 6 250 0 166 6 250 0 167 6 250 0 168 6 250 0 169 6 250 0 170 6 250 0 171 6 250 2 126] 
#[1 6 254 0 1 6 254 0 2 6 254 0 5 6 254 0 6 6 254 0 8 6 254 0 9 6 254 0 10 6 254 0 12 6 254 0 13 6 254 0 15 6 254 0 16 6 254 0 17 6 254 0 23 6 254 0 25 6 254 0 26 7 153 0 27 6 254 0 29 6 254 0 31 6 254 0 33 6 254 0 35 6 254 0 36 6 254 0 38 6 254 0 39 6 254 0 44 6 254 0 45 6 254 0 46 6 254 0 47 6 254 0 48 6 254 0 49 6 254 0 50 6 254 0 51 6 254 0 52 6 254 0 53 6 254 0 55 6 254 0 56 6 254 0 58 6 254 0 59 6 254 0 60 6 254 0 61 6 254 0 62 6 254 0 63 6 254 0 64 6 254 0 65 6 254 0 66 6 254 0 67 6 254 0 69 6 254 0 73 6 254 0 76 6 254 0 77 6 254 0 78 6 254 0 79 6 254 0 80 6 254 0 82 6 254 0 83 6 254 0 84 6 254 0 87 6 254 0 90 6 254 0 91 6 254 0 92 6 254 0 93 6 254 0 94 6 254 0 95 6 254 0 97 6 254 0 99 6 254 0 100 6 254 0 101 6 254 0 103 6 254 0 114 6 254 0 116 6 254 0 117 6 254 0 119 6 254 0 121 6 254 0 122 6 254 0 123 6 254 0 124 6 254 0 125 6 254 0 127 6 254 0 128 6 254 0 129 6 254 0 130 6 254 0 131 6 254 0 133 6 254 0 134 6 254 0 135 6 254 0 136 6 254 0 138 6 254 0 139 6 254 0 140 6 254 0 141 6 254 0 143 6 254 0 145 6 254 0 146 6 254 0 147 6 254 0 148 6 254 0 149 6 254 0 150 6 254 0 152 6 254 0 153 6 254 0 154 7 157 0 155 6 254 0 156 6 254 0 158 6 254 0 159 6 254 0 160 6 254 0 161 6 254 0 162 6 254 0 163 6 254 0 164 6 254 0 165 6 254 0 166 6 254 0 167 6 254 0 168 6 254 0 169 6 254 0 170 6 254 0 171 6 254 2 126] 
#[1 7 2 0 1 7 2 0 2 7 2 0 5 7 2 0 6 7 2 0 8 7 2 0 9 7 2 0 10 7 2 0 12 7 2 0 13 7 2 0 15 7 2 0 16 7 2 0 17 7 2 0 23 7 2 0 25 7 2 0 26 7 153 0 27 7 2 0 29 7 2 0 31 7 2 0 33 7 2 0 35 7 2 0 36 7 2 0 38 7 2 0 39 7 2 0 44 7 2 0 45 7 2 0 46 7 2 0 47 7 2 0 48 7 2 0 49 7 2 0 50 7 2 0 51 7 2 0 52 7 2 0 53 7 2 0 55 7 2 0 56 7 2 0 58 7 2 0 59 7 2 0 60 7 2 0 61 7 2 0 62 7 2 0 63 7 2 0 64 7 2 0 65 7 2 0 66 7 2 0 67 7 2 0 69 7 2 0 73 7 2 0 76 7 2 0 77 7 2 0 78 7 2 0 79 7 2 0 80 7 2 0 82 7 2 0 83 7 2 0 84 7 2 0 87 7 2 0 90 7 2 0 91 7 2 0 92 7 2 0 93 7 2 0 94 7 2 0 95 7 2 0 97 7 2 0 99 7 2 0 100 7 2 0 101 7 2 0 103 7 2 0 114 7 2 0 116 7 2 0 117 7 2 0 119 7 2 0 121 7 2 0 122 7 2 0 123 7 2 0 124 7 2 0 125 7 2 0 127 7 2 0 128 7 2 0 129 7 2 0 130 7 2 0 131 7 2 0 133 7 2 0 134 7 2 0 135 7 2 0 136 7 2 0 138 7 2 0 139 7 2 0 140 7 2 0 141 7 2 0 143 7 2 0 145 7 2 0 146 7 2 0 147 7 2 0 148 7 2 0 149 7 2 0 150 7 2 0 152 7 2 0 153 7 2 0 154 7 157 0 155 7 2 0 156 7 2 0 158 7 2 0 159 7 2 0 160 7 2 0 161 7 2 0 162 7 2 0 163 7 2 0 164 7 2 0 165 7 2 0 166 7 2 0 167 7 2 0 168 7 2 0 169 7 2 0 170 7 2 0 171 7 2 2 126] 
#[1 7 6 0 1 7 6 0 2 7 6 0 5 7 6 0 6 7 6 0 8 7 6 0 9 7 6 0 10 7 6 0 12 7 6 0 13 7 6 0 15 7 6 0 16 7 6 0 17 7 6 0 23 7 6 0 25 7 6 0 26 7 153 0 27 7 6 0 29 7 6 0 31 7 6 0 33 7 6 0 35 7 6 0 36 7 6 0 38 7 6 0 39 7 6 0 44 7 6 0 45 7 6 0 46 7 6 0 47 7 6 0 48 7 6 0 49 7 6 0 50 7 6 0 51 7 6 0 52 7 6 0 53 7 6 0 55 7 6 0 56 7 6 0 58 7 6 0 59 7 6 0 60 7 6 0 61 7 6 0 62 7 6 0 63 7 6 0 64 7 6 0 65 7 6 0 66 7 6 0 67 7 6 0 69 7 6 0 73 7 6 0 76 7 6 0 77 7 6 0 78 7 6 0 79 7 6 0 80 7 6 0 82 7 6 0 83 7 6 0 84 7 6 0 87 7 6 0 90 7 6 0 91 7 6 0 92 7 6 0 93 7 6 0 94 7 6 0 95 7 6 0 97 7 6 0 99 7 6 0 100 7 6 0 101 7 6 0 103 7 6 0 114 7 6 0 116 7 6 0 117 7 6 0 119 7 6 0 121 7 6 0 122 7 6 0 123 7 6 0 124 7 6 0 125 7 6 0 127 7 6 0 128 7 6 0 129 7 6 0 130 7 6 0 131 7 6 0 133 7 6 0 134 7 6 0 135 7 6 0 136 7 6 0 138 7 6 0 139 7 6 0 140 7 6 0 141 7 6 0 143 7 6 0 145 7 6 0 146 7 6 0 147 7 6 0 148 7 6 0 149 7 6 0 150 7 6 0 152 7 6 0 153 7 6 0 154 7 157 0 155 7 6 0 156 7 6 0 158 7 6 0 159 7 6 0 160 7 6 0 161 7 6 0 162 7 6 0 163 7 6 0 164 7 6 0 165 7 6 0 166 7 6 0 167 7 6 0 168 7 6 0 169 7 6 0 170 7 6 0 171 7 6 2 126] 
#[0 7 10 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 14 0 1 7 14 0 2 7 14 0 5 7 14 0 6 7 14 0 8 7 14 0 9 7 14 0 10 7 14 0 12 7 14 0 13 7 14 0 15 7 14 0 16 7 14 0 17 7 14 0 23 7 14 0 25 7 14 0 26 7 14 0 29 7 14 0 31 7 14 0 33 7 14 0 35 7 14 0 36 7 14 0 38 7 14 0 39 7 14 0 44 7 14 0 45 7 14 0 46 7 14 0 47 7 14 0 48 7 14 0 49 7 14 0 50 7 14 0 51 7 14 0 52 7 14 0 53 7 14 0 55 7 14 0 56 7 14 0 58 7 14 0 59 7 14 0 60 7 14 0 61 7 14 0 62 7 14 0 63 7 14 0 64 7 14 0 65 7 14 0 66 7 14 0 67 7 14 0 69 7 14 0 73 7 14 0 76 7 14 0 77 7 14 0 78 7 14 0 79 7 14 0 80 7 14 0 82 7 14 0 83 7 14 0 84 7 14 0 87 7 14 0 90 7 14 0 91 7 14 0 92 7 14 0 93 7 14 0 94 7 14 0 95 7 14 0 97 7 14 0 99 7 14 0 100 7 14 0 101 7 14 0 103 7 14 0 114 7 14 0 116 7 14 0 117 7 14 0 119 7 14 0 121 7 14 0 122 7 14 0 123 7 14 0 124 7 14 0 125 7 14 0 127 7 14 0 128 7 14 0 129 7 14 0 130 7 14 0 131 7 14 0 133 7 14 0 134 7 14 0 135 7 14 0 136 7 14 0 138 7 14 0 139 7 14 0 140 7 14 0 141 7 14 0 143 7 14 0 145 7 14 0 146 7 14 0 147 7 14 0 148 7 14 0 149 7 14 0 150 7 14 0 152 7 14 0 153 7 14 0 154 7 14 0 156 1 227 0 158 7 14 0 159 7 14 0 160 7 14 0 161 7 14 0 162 7 14 0 163 7 14 0 164 7 14 0 165 7 14 0 166 7 14 0 167 7 14 0 168 7 14 0 169 7 14 0 170 7 14 0 171 15 73 0 231 15 73 0 232 7 14 2 126] 
#[0 7 18 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 22 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 30 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 29 0 8 1 231 0 158 15 81 0 228 15 81 0 231 15 81 0 232 7 37 1 3] 
#[1 7 38 0 1 7 38 0 2 7 38 0 5 7 38 0 6 7 38 0 8 7 38 0 9 7 38 0 10 7 38 0 12 7 38 0 13 7 38 0 15 7 38 0 16 7 38 0 17 7 38 0 23 7 38 0 25 7 38 0 26 7 153 0 27 7 38 0 29 7 38 0 31 7 38 0 33 7 38 0 35 7 38 0 36 7 38 0 38 7 38 0 39 7 38 0 44 7 38 0 45 7 38 0 46 7 38 0 47 7 38 0 48 7 38 0 49 7 38 0 50 7 38 0 51 7 38 0 52 7 38 0 53 7 38 0 55 7 38 0 56 7 38 0 58 7 38 0 59 7 38 0 60 7 38 0 61 7 38 0 62 7 38 0 63 7 38 0 64 7 38 0 65 7 38 0 66 7 38 0 67 7 38 0 69 7 38 0 73 7 38 0 76 7 38 0 77 7 38 0 78 7 38 0 79 7 38 0 80 7 38 0 82 7 38 0 83 7 38 0 84 7 38 0 87 7 38 0 90 7 38 0 91 7 38 0 92 7 38 0 93 7 38 0 94 7 38 0 95 7 38 0 97 7 38 0 99 7 38 0 100 7 38 0 101 7 38 0 103 7 38 0 114 7 38 0 116 7 38 0 117 7 38 0 119 7 38 0 121 7 38 0 122 7 38 0 123 7 38 0 124 7 38 0 125 7 38 0 127 7 38 0 128 7 38 0 129 7 38 0 130 7 38 0 131 7 38 0 133 7 38 0 134 7 38 0 135 7 38 0 136 7 38 0 138 7 38 0 139 7 38 0 140 7 38 0 141 7 38 0 143 7 38 0 145 7 38 0 146 7 38 0 147 7 38 0 148 7 38 0 149 7 38 0 150 7 38 0 152 7 38 0 153 7 38 0 154 7 157 0 155 7 38 0 156 7 38 0 158 7 38 0 159 7 38 0 160 7 38 0 161 7 38 0 162 7 38 0 163 7 38 0 164 7 38 0 165 7 38 0 166 7 38 0 167 7 38 0 168 7 38 0 169 7 38 0 170 7 38 0 171 7 38 2 126] 
#[1 7 42 0 1 7 42 0 2 7 42 0 5 7 42 0 6 7 42 0 8 7 42 0 9 7 42 0 10 7 42 0 12 7 42 0 13 7 42 0 15 7 42 0 16 7 42 0 17 7 42 0 23 7 42 0 25 1 235 0 26 1 239 0 29 7 42 0 31 1 243 0 33 7 42 0 35 7 42 0 36 7 42 0 38 7 42 0 39 1 247 0 44 7 42 0 45 7 42 0 46 7 42 0 47 7 42 0 48 7 42 0 49 7 42 0 50 7 42 0 51 7 42 0 52 7 42 0 53 7 42 0 55 7 42 0 56 7 42 0 58 7 42 0 59 7 42 0 60 7 42 0 61 7 42 0 62 7 42 0 63 7 42 0 64 7 42 0 65 7 42 0 66 7 42 0 67 7 42 0 69 7 42 0 73 7 42 0 76 7 42 0 77 7 42 0 78 7 42 0 79 7 42 0 80 7 42 0 82 7 42 0 83 7 42 0 84 7 42 0 87 7 42 0 90 1 251 0 91 7 42 0 92 7 42 0 93 7 42 0 94 7 42 0 95 7 42 0 97 7 42 0 99 7 42 0 100 7 42 0 101 7 42 0 103 7 42 0 114 7 42 0 116 7 42 0 117 7 42 0 119 7 42 0 121 7 42 0 122 7 42 0 123 7 42 0 124 7 42 0 125 7 42 0 127 7 42 0 128 7 42 0 129 7 42 0 130 7 42 0 131 7 42 0 133 7 42 0 134 7 42 0 135 7 42 0 136 7 42 0 138 7 42 0 139 7 42 0 140 7 42 0 141 7 42 0 143 7 42 0 145 7 42 0 146 7 42 0 147 7 42 0 148 7 42 0 149 7 42 0 150 7 42 0 152 7 42 0 153 1 255 0 154 7 42 0 156 7 42 0 158 7 42 0 159 7 42 0 160 7 42 0 161 7 42 0 162 7 42 0 163 7 42 0 164 7 42 0 165 7 42 0 166 7 42 0 167 7 42 0 168 7 42 0 169 7 42 0 170 7 42 0 171 7 42 2 126] 
#[1 7 46 0 1 7 46 0 2 7 46 0 5 7 46 0 6 7 46 0 8 7 46 0 9 7 46 0 10 7 46 0 12 7 46 0 13 7 46 0 15 7 46 0 16 7 46 0 17 7 46 0 23 7 46 0 25 2 3 0 26 2 7 0 29 7 46 0 31 2 11 0 33 7 46 0 35 7 46 0 36 7 46 0 38 7 46 0 39 2 15 0 44 7 46 0 45 7 46 0 46 7 46 0 47 7 46 0 48 7 46 0 49 7 46 0 50 7 46 0 51 7 46 0 52 7 46 0 53 7 46 0 55 7 46 0 56 7 46 0 58 7 46 0 59 7 46 0 60 7 46 0 61 7 46 0 62 7 46 0 63 7 46 0 64 7 46 0 65 7 46 0 66 7 46 0 67 7 46 0 69 7 46 0 73 7 46 0 76 7 46 0 77 7 46 0 78 7 46 0 79 7 46 0 80 7 46 0 82 7 46 0 83 7 46 0 84 7 46 0 87 7 46 0 90 2 19 0 91 7 46 0 92 7 46 0 93 7 46 0 94 7 46 0 95 7 46 0 97 7 46 0 99 7 46 0 100 7 46 0 101 7 46 0 103 7 46 0 114 7 46 0 116 7 46 0 117 7 46 0 119 7 46 0 121 7 46 0 122 7 46 0 123 7 46 0 124 7 46 0 125 7 46 0 127 7 46 0 128 7 46 0 129 7 46 0 130 7 46 0 131 7 46 0 133 7 46 0 134 7 46 0 135 7 46 0 136 7 46 0 138 7 46 0 139 7 46 0 140 7 46 0 141 7 46 0 143 7 46 0 145 7 46 0 146 7 46 0 147 7 46 0 148 7 46 0 149 7 46 0 150 7 46 0 152 7 46 0 153 2 23 0 154 7 46 0 156 7 46 0 158 7 46 0 159 7 46 0 160 7 46 0 161 7 46 0 162 7 46 0 163 7 46 0 164 7 46 0 165 7 46 0 166 7 46 0 167 7 46 0 168 7 46 0 169 7 46 0 170 7 46 0 171 7 46 2 126] 
#[1 7 50 0 1 2 27 0 2 7 50 0 5 7 50 0 6 7 50 0 8 7 50 0 9 7 50 0 10 7 50 0 12 7 50 0 13 7 50 0 15 7 50 0 16 7 50 0 17 7 50 0 23 7 50 0 25 7 50 0 26 7 50 0 29 2 31 0 31 7 50 0 33 7 50 0 35 7 50 0 36 7 50 0 38 7 50 0 39 7 50 0 44 7 50 0 45 7 50 0 46 7 50 0 47 7 50 0 48 7 50 0 49 7 50 0 50 7 50 0 51 7 50 0 52 7 50 0 53 7 50 0 55 7 50 0 56 7 50 0 58 7 50 0 59 7 50 0 60 7 50 0 61 7 50 0 62 7 50 0 63 7 50 0 64 7 50 0 65 7 50 0 66 7 50 0 67 7 50 0 69 7 50 0 73 7 50 0 76 7 50 0 77 7 50 0 78 7 50 0 79 7 50 0 80 7 50 0 82 7 50 0 83 7 50 0 84 7 50 0 87 7 50 0 90 7 50 0 91 7 50 0 92 7 50 0 93 7 50 0 94 7 50 0 95 7 50 0 97 7 50 0 99 7 50 0 100 7 50 0 101 7 50 0 103 7 50 0 114 7 50 0 116 7 50 0 117 7 50 0 119 7 50 0 121 7 50 0 122 7 50 0 123 7 50 0 124 7 50 0 125 7 50 0 127 7 50 0 128 7 50 0 129 7 50 0 130 7 50 0 131 7 50 0 133 7 50 0 134 7 50 0 135 7 50 0 136 7 50 0 138 7 50 0 139 7 50 0 140 7 50 0 141 7 50 0 143 7 50 0 145 7 50 0 146 7 50 0 147 7 50 0 148 7 50 0 149 7 50 0 150 7 50 0 152 7 50 0 153 7 50 0 154 7 50 0 156 7 50 0 158 7 50 0 159 7 50 0 160 7 50 0 161 7 50 0 162 7 50 0 163 7 50 0 164 7 50 0 165 7 50 0 166 7 50 0 167 7 50 0 168 7 50 0 169 7 50 0 170 7 50 0 171 7 50 2 126] 
#[1 7 54 0 1 7 54 0 2 2 35 0 5 7 54 0 6 7 54 0 8 7 54 0 9 7 54 0 10 7 54 0 12 7 54 0 13 7 54 0 15 7 54 0 16 7 54 0 17 7 54 0 23 7 54 0 25 7 54 0 26 7 54 0 29 7 54 0 31 7 54 0 33 7 54 0 35 7 54 0 36 7 54 0 38 7 54 0 39 7 54 0 44 7 54 0 45 7 54 0 46 7 54 0 47 7 54 0 48 7 54 0 49 7 54 0 50 7 54 0 51 7 54 0 52 7 54 0 53 7 54 0 55 7 54 0 56 7 54 0 58 7 54 0 59 7 54 0 60 7 54 0 61 7 54 0 62 7 54 0 63 7 54 0 64 7 54 0 65 7 54 0 66 7 54 0 67 7 54 0 69 7 54 0 73 7 54 0 76 7 54 0 77 7 54 0 78 7 54 0 79 7 54 0 80 7 54 0 82 7 54 0 83 7 54 0 84 7 54 0 87 7 54 0 90 7 54 0 91 7 54 0 92 7 54 0 93 7 54 0 94 7 54 0 95 7 54 0 97 7 54 0 99 7 54 0 100 7 54 0 101 7 54 0 103 7 54 0 114 7 54 0 116 7 54 0 117 7 54 0 119 7 54 0 121 7 54 0 122 7 54 0 123 7 54 0 124 7 54 0 125 7 54 0 127 7 54 0 128 7 54 0 129 7 54 0 130 7 54 0 131 7 54 0 133 7 54 0 134 7 54 0 135 7 54 0 136 7 54 0 138 7 54 0 139 7 54 0 140 7 54 0 141 7 54 0 143 7 54 0 145 7 54 0 146 7 54 0 147 7 54 0 148 7 54 0 149 7 54 0 150 7 54 0 152 7 54 0 153 7 54 0 154 7 54 0 156 7 54 0 158 7 54 0 159 7 54 0 160 7 54 0 161 7 54 0 162 7 54 0 163 7 54 0 164 7 54 0 165 7 54 0 166 7 54 0 167 7 54 0 168 7 54 0 169 7 54 0 170 7 54 0 171 7 54 2 126] 
#[1 7 58 0 1 7 58 0 2 7 58 0 5 7 58 0 6 7 58 0 8 7 58 0 9 7 58 0 10 7 58 0 12 7 58 0 13 7 58 0 15 7 58 0 16 7 58 0 17 7 58 0 23 7 58 0 25 7 58 0 26 7 58 0 29 7 58 0 31 7 58 0 33 7 58 0 35 7 58 0 36 7 58 0 38 2 39 0 39 7 58 0 44 7 58 0 45 7 58 0 46 7 58 0 47 7 58 0 48 7 58 0 49 7 58 0 50 7 58 0 51 7 58 0 52 7 58 0 53 7 58 0 55 7 58 0 56 7 58 0 58 7 58 0 59 7 58 0 60 7 58 0 61 7 58 0 62 7 58 0 63 7 58 0 64 7 58 0 65 7 58 0 66 7 58 0 67 7 58 0 69 7 58 0 73 7 58 0 76 7 58 0 77 7 58 0 78 7 58 0 79 7 58 0 80 7 58 0 82 7 58 0 83 7 58 0 84 7 58 0 87 7 58 0 90 7 58 0 91 7 58 0 92 7 58 0 93 7 58 0 94 7 58 0 95 7 58 0 97 7 58 0 99 7 58 0 100 7 58 0 101 7 58 0 103 7 58 0 114 7 58 0 116 7 58 0 117 7 58 0 119 7 58 0 121 7 58 0 122 7 58 0 123 7 58 0 124 7 58 0 125 7 58 0 127 7 58 0 128 7 58 0 129 7 58 0 130 7 58 0 131 7 58 0 133 7 58 0 134 7 58 0 135 7 58 0 136 7 58 0 138 7 58 0 139 7 58 0 140 7 58 0 141 7 58 0 143 7 58 0 145 7 58 0 146 7 58 0 147 7 58 0 148 7 58 0 149 7 58 0 150 7 58 0 152 7 58 0 153 7 58 0 154 7 58 0 156 7 58 0 158 7 58 0 159 7 58 0 160 7 58 0 161 7 58 0 162 7 58 0 163 7 58 0 164 7 58 0 165 7 58 0 166 7 58 0 167 7 58 0 168 7 58 0 169 7 58 0 170 7 58 0 171 7 58 2 126] 
#[1 7 62 0 1 7 62 0 2 7 62 0 5 7 62 0 6 7 62 0 8 7 62 0 9 7 62 0 10 7 62 0 12 7 62 0 13 7 62 0 15 7 62 0 16 7 62 0 17 7 62 0 23 7 62 0 25 7 62 0 26 7 62 0 29 7 62 0 31 7 62 0 33 7 62 0 35 7 62 0 36 7 62 0 38 7 62 0 39 7 62 0 44 7 62 0 45 7 62 0 46 7 62 0 47 7 62 0 48 7 62 0 49 7 62 0 50 7 62 0 51 7 62 0 52 7 62 0 53 7 62 0 55 7 62 0 56 7 62 0 58 7 62 0 59 7 62 0 60 7 62 0 61 7 62 0 62 7 62 0 63 7 62 0 64 7 62 0 65 7 62 0 66 7 62 0 67 7 62 0 69 7 62 0 73 7 62 0 76 7 62 0 77 7 62 0 78 7 62 0 79 7 62 0 80 7 62 0 82 7 62 0 83 7 62 0 84 7 62 0 87 7 62 0 90 7 62 0 91 7 62 0 92 7 62 0 93 7 62 0 94 7 62 0 95 7 62 0 97 7 62 0 99 7 62 0 100 7 62 0 101 7 62 0 103 7 62 0 114 7 62 0 116 7 62 0 117 7 62 0 119 7 62 0 121 7 62 0 122 7 62 0 123 7 62 0 124 7 62 0 125 7 62 0 127 7 62 0 128 7 62 0 129 7 62 0 130 7 62 0 131 7 62 0 133 7 62 0 134 7 62 0 135 7 62 0 136 7 62 0 138 7 62 0 139 7 62 0 140 7 62 0 141 7 62 0 143 7 62 0 145 7 62 0 146 7 62 0 147 7 62 0 148 7 62 0 149 2 43 0 150 7 62 0 152 7 62 0 153 7 62 0 154 7 62 0 156 7 62 0 158 7 62 0 159 7 62 0 160 7 62 0 161 7 62 0 162 7 62 0 163 7 62 0 164 7 62 0 165 7 62 0 166 7 62 0 167 7 62 0 168 7 62 0 169 7 62 0 170 7 62 0 171 7 62 2 126] 
#[0 7 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 7 70 0 1 7 70 0 2 7 70 0 5 2 47 0 6 7 70 0 8 7 70 0 9 7 70 0 10 7 70 0 12 7 70 0 13 7 70 0 15 7 70 0 16 7 70 0 17 7 70 0 23 7 70 0 25 7 70 0 26 7 70 0 29 7 70 0 31 7 70 0 33 7 70 0 35 7 70 0 36 7 70 0 38 7 70 0 39 7 70 0 44 7 70 0 45 7 70 0 46 7 70 0 47 7 70 0 48 7 70 0 49 7 70 0 50 7 70 0 51 7 70 0 52 7 70 0 53 7 70 0 55 7 70 0 56 7 70 0 58 7 70 0 59 7 70 0 60 7 70 0 61 7 70 0 62 7 70 0 63 7 70 0 64 7 70 0 65 7 70 0 66 7 70 0 67 7 70 0 69 7 70 0 73 7 70 0 76 7 70 0 77 7 70 0 78 7 70 0 79 7 70 0 80 7 70 0 82 7 70 0 83 7 70 0 84 7 70 0 87 7 70 0 90 7 70 0 91 7 70 0 92 7 70 0 93 7 70 0 94 7 70 0 95 7 70 0 97 7 70 0 99 7 70 0 100 7 70 0 101 7 70 0 103 7 70 0 114 7 70 0 116 7 70 0 117 7 70 0 119 7 70 0 121 7 70 0 122 7 70 0 123 7 70 0 124 7 70 0 125 7 70 0 127 7 70 0 128 7 70 0 129 7 70 0 130 7 70 0 131 7 70 0 133 7 70 0 134 7 70 0 135 7 70 0 136 7 70 0 138 7 70 0 139 7 70 0 140 7 70 0 141 7 70 0 143 7 70 0 145 7 70 0 146 7 70 0 147 7 70 0 148 7 70 0 149 7 70 0 150 7 70 0 152 7 70 0 153 7 70 0 154 7 70 0 156 7 70 0 158 7 70 0 159 7 70 0 160 7 70 0 161 7 70 0 162 7 70 0 163 7 70 0 164 7 70 0 165 7 70 0 166 7 70 0 167 7 70 0 168 7 70 0 169 7 70 0 170 7 70 0 171 7 70 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 15 89 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 15 89 1 75 15 89 1 76 15 89 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 15 89 1 92 3 221 1 93 15 89 1 112 15 89 1 115 15 89 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 15 93 0 23] 
#[0 15 97 0 23] 
#[0 7 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 78 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 82 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 86 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 90 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 15 101 0 158] 
#[0 15 105 0 30] 
#[1 15 109 0 15 7 94 0 80 7 94 0 83 7 94 0 92 7 94 0 93 7 94 0 103 7 94 0 119 7 94 0 146] 
#[0 7 98 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 7 102 0 15 15 113 0 45 15 117 0 63 7 102 0 80 7 102 0 83 7 102 0 92 7 102 0 93 7 102 0 103 7 102 0 119 7 102 0 146 15 121 1 105 15 125 1 106] 
#[0 7 106 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 15 129 1 75 15 129 1 76 15 129 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 15 129 1 92 3 221 1 93 15 129 1 112 15 129 1 115 15 129 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 15 133 1 75 15 133 1 76 15 133 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 15 133 1 92 3 221 1 93 15 133 1 112 15 133 1 115 15 133 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 7 110 0 1 7 110 0 2 7 110 0 5 7 110 0 6 7 110 0 8 7 110 0 9 7 110 0 10 7 110 0 12 7 110 0 13 7 110 0 15 7 110 0 16 7 110 0 17 7 110 0 23 7 110 0 25 7 110 0 26 7 110 0 29 7 110 0 31 7 110 0 33 7 110 0 35 7 110 0 36 7 110 0 38 7 110 0 39 7 110 0 44 7 110 0 45 7 110 0 46 7 110 0 47 7 110 0 48 7 110 0 49 7 110 0 50 7 110 0 51 7 110 0 52 7 110 0 53 7 110 0 55 7 110 0 56 7 110 0 58 7 110 0 59 7 110 0 60 7 110 0 61 7 110 0 62 7 110 0 63 7 110 0 64 7 110 0 65 7 110 0 66 7 110 0 67 7 110 0 69 7 110 0 73 7 110 0 76 7 110 0 77 7 110 0 78 7 110 0 79 7 110 0 80 7 110 0 82 7 110 0 83 7 110 0 84 7 110 0 87 2 51 0 90 7 110 0 91 7 110 0 92 7 110 0 93 7 110 0 94 7 110 0 95 7 110 0 97 7 110 0 99 7 110 0 100 7 110 0 101 7 110 0 103 7 110 0 114 7 110 0 116 7 110 0 117 7 110 0 119 7 110 0 121 7 110 0 122 7 110 0 123 7 110 0 124 7 110 0 125 7 110 0 127 7 110 0 128 7 110 0 129 7 110 0 130 7 110 0 131 7 110 0 133 7 110 0 134 7 110 0 135 7 110 0 136 7 110 0 138 7 110 0 139 7 110 0 140 7 110 0 141 7 110 0 143 7 110 0 145 7 110 0 146 7 110 0 147 7 110 0 148 7 110 0 149 7 110 0 150 7 110 0 152 7 110 0 153 7 110 0 154 7 110 0 156 7 110 0 158 7 110 0 159 7 110 0 160 7 110 0 161 7 110 0 162 7 110 0 163 7 110 0 164 7 110 0 165 7 110 0 166 7 110 0 167 7 110 0 168 7 110 0 169 7 110 0 170 7 110 0 171 15 141 1 110 15 145 1 111 7 110 2 126] 
#[0 7 114 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 118 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 122 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 15 149 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 15 149 1 75 15 149 1 76 15 149 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 15 149 1 92 3 221 1 93 15 149 1 112 15 149 1 115 15 149 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 15 153 0 25] 
#[0 15 157 0 25] 
#[1 15 161 0 138 7 126 0 158 15 161 2 102] 
#[0 15 165 0 124] 
#[1 15 169 0 138 7 130 0 158 15 169 2 102] 
#[1 15 173 0 72 3 114 0 158 15 177 2 98] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 15 181 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 15 181 0 211 15 181 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 15 185 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 15 185 0 211 15 185 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 0 190 0 8 0 190 0 49 0 190 0 52 0 190 0 55 0 190 0 60 0 190 0 65 0 190 0 66 0 190 0 77 0 190 0 87 0 190 0 95 0 190 0 100 13 13 0 108 5 225 0 113 0 190 0 117 0 190 0 121 0 190 0 125 3 186 0 126 0 190 0 134 0 190 0 135 0 190 0 139 0 190 0 143 0 190 0 158 13 13 2 97] 
#[1 15 189 0 8 1 22 0 10 1 22 0 20 6 65 0 24 6 69 0 26 1 22 0 35 1 22 0 37 1 22 0 128 1 22 0 158 9 69 0 222 9 69 0 252] 
#[1 15 193 0 128 15 197 0 158 1 145 0 193 15 205 0 195 1 145 0 196 15 205 0 213 15 209 1 228 15 213 1 229 15 217 1 236] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 15 221 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 15 221 0 211 15 221 0 214 1 197 0 215 15 225 1 235 15 229 2 13 3 41 2 104 3 245 2 124] 
#[1 15 233 0 32 15 237 0 149 15 241 2 14] 
#[1 15 245 0 25 15 249 0 32 1 97 0 149 15 253 1 121 16 1 2 29] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 13 17 0 57 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 13 21 0 88 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 13 25 0 126 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 16 5 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 16 5 0 211 16 5 0 214 1 197 0 215 16 5 1 234 3 41 2 104 3 65 2 124] 
#[0 16 9 0 102] 
#[0 16 13 0 102] 
#[0 16 17 0 102] 
#[1 16 21 0 25 16 25 0 32 1 97 0 149 16 29 1 121 16 33 2 24] 
#[0 7 134 0 25 0 32 0 149] 
#[0 7 138 0 25 0 32 0 149] 
#[0 7 142 0 25 0 32 0 149] 
#[0 7 146 0 8 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 71 0 72 0 77 0 85 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 158] 
#[0 16 37 0 8] 
#[0 16 41 0 158] 
#[0 16 45 0 153] 
#[1 16 49 0 124 5 66 0 153] 
#[1 16 53 0 72 3 114 0 158 16 57 2 98] 
#[0 16 61 0 153] 
#[0 7 150 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 16 65 0 25] 
#[1 5 113 0 158 16 69 0 193 16 69 0 196] 
#[0 7 154 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[0 7 158 0 23] 
#[1 5 113 0 158 1 145 0 193 8 197 0 195 1 145 0 196 16 73 2 82 8 193 2 83 8 197 2 84] 
#[0 16 77 0 23] 
#[0 7 162 2 126] 
#[1 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 72 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 10 0 142 0 10 0 144 7 166 0 156 16 81 0 177 16 81 0 191 16 81 0 192 16 81 1 203 16 81 2 33 16 81 2 44 16 81 2 59 16 81 2 67 0 89 2 75 0 93 2 76 0 97 2 77 0 101 2 78 7 166 2 126] 
#[0 7 170 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 7 174 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[1 16 85 0 38 5 113 0 158 1 145 0 193 8 197 0 195 1 145 0 196 16 89 2 83 8 197 2 84] 
#[0 7 178 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 7 182 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 2 55 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 16 97 0 236 10 213 0 237 16 101 2 87 16 105 2 88 16 109 2 89 16 113 2 90 16 117 2 91] 
#[0 7 186 0 15 0 38] 
#[0 7 190 0 15 0 38] 
#[0 7 194 0 20 0 149] 
#[1 0 26 0 37 0 26 0 41 0 26 0 46 0 26 0 57 0 26 0 62 0 26 0 68 0 26 0 72 0 26 0 88 0 26 0 89 0 26 0 98 0 26 0 99 0 26 0 105 0 26 0 108 0 26 0 109 0 26 0 111 0 26 0 112 0 26 0 113 0 26 0 114 0 26 0 118 0 26 0 124 0 26 0 126 0 26 0 138 4 61 0 140 0 26 0 142 0 26 0 144 0 26 0 156 16 121 0 183 4 69 0 184 4 73 0 185 4 73 0 186 4 73 0 187 4 73 0 188] 
#[0 7 198 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 7 202 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 16 125 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 16 125 0 211 16 125 0 214 1 197 0 215 16 125 1 235 3 41 2 104 3 245 2 124] 
#[1 16 129 0 158 16 133 2 68] 
#[1 16 137 0 23 7 206 0 149 16 141 2 60 16 145 2 61] 
#[0 16 149 0 126] 
#[0 16 153 0 158] 
#[0 16 157 0 158] 
#[0 16 161 0 158] 
#[0 7 210 0 9 0 15] 
#[0 7 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 218 0 9 0 15] 
#[0 7 222 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 226 0 9 0 15] 
#[0 7 230 0 9 0 15] 
#[0 3 206 0 9 0 15] 
#[0 7 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 238 0 9 0 15] 
#[0 7 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 16 165 1 75 16 165 1 76 16 165 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 16 165 1 92 3 221 1 93 16 165 1 112 16 165 1 115 16 165 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 7 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 7 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 16 169 1 75 16 169 1 76 16 169 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 16 169 1 92 3 221 1 93 16 169 1 112 16 169 1 115 16 169 1 116 16 169 1 117 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 9 73 0 158 16 173 1 156] 
#[0 8 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 16 177 1 75 16 177 1 76 16 177 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 16 177 1 92 3 221 1 93 16 177 1 112 16 177 1 115 16 177 1 116 16 177 1 118 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 16 181 0 30] 
#[1 16 185 0 9 16 189 0 15] 
#[0 8 6 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 8 10 0 25 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 16 197 1 75 16 197 1 76 16 197 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 16 197 1 92 3 221 1 93 16 197 1 112 16 197 1 115 16 197 1 116 16 197 1 118 3 237 1 151 3 241 1 152 16 197 1 175 16 197 1 176 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 16 205 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 16 205 1 112 4 229 1 152 16 205 1 158 1 205 2 93 3 29 2 94 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110] 
#[0 16 209 0 158] 
#[0 16 213 0 86] 
#[0 8 14 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 16 217 1 120 16 217 1 121 16 217 1 124 4 229 1 152 16 217 1 157 2 193 1 158 16 217 1 159 16 217 1 160 16 217 1 161 16 217 1 169 16 217 1 170 16 217 1 171 16 217 1 172 16 217 1 180 16 217 1 181 16 217 1 182 16 217 1 183 16 217 1 184 16 217 1 185 16 217 1 186 16 217 1 187 16 217 1 197 16 217 1 198 16 217 1 199 16 217 1 200 16 217 1 202 1 205 2 93 3 29 2 94 16 217 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 16 217 2 111] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 16 221 1 120 16 221 1 121 16 221 1 124 4 229 1 152 16 221 1 157 2 193 1 158 16 221 1 159 16 221 1 160 16 221 1 161 16 221 1 169 16 221 1 170 16 221 1 171 16 221 1 172 16 221 1 180 16 221 1 181 16 221 1 182 16 221 1 183 16 221 1 184 16 221 1 185 16 221 1 186 16 221 1 187 16 221 1 197 16 221 1 198 16 221 1 199 16 221 1 200 16 221 1 202 1 205 2 93 3 29 2 94 16 221 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 16 221 2 111] 
#[0 8 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 8 22 0 9 16 225 0 20 16 229 1 49] 
#[0 8 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 30 0 15 0 38] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 16 233 1 75 16 233 1 76 16 233 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 16 233 1 92 3 221 1 93 16 233 1 112 16 233 1 115 16 233 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 16 237 0 20] 
#[0 8 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 9 213 0 8 4 153 0 46 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 16 241 0 156 9 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 9 221 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 9 225 0 251 1 205 0 253 1 205 0 254 1 205 1 2 9 229 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 9 233 1 15 1 205 1 16 1 205 1 17 1 205 1 18 9 221 1 30 1 205 1 31 1 205 1 32 16 245 1 36 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 1 205 1 53 9 249 1 56 1 205 1 58 1 205 1 78 4 229 1 152 1 205 2 93 3 29 2 94 1 205 2 108 1 205 2 110] 
#[0 16 249 0 9] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 16 253 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 17 1 1 13 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 9 57 1 75 9 57 1 76 9 57 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 9 57 1 92 3 221 1 93 9 57 1 112 9 57 1 115 9 57 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 1 22 0 2 1 22 0 3 1 22 0 5 1 22 0 6 1 22 0 8 1 22 0 10 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 19 1 22 0 20 1 22 0 21 6 65 0 24 0 159 0 26 1 22 0 27 1 22 0 29 8 38 0 30 1 22 0 31 2 226 0 32 1 22 0 33 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 39 1 22 0 44 1 22 0 91 1 22 0 150 1 22 0 152 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 6 77 0 222 6 77 0 252] 
#[0 17 5 0 156] 
#[1 17 9 0 15 8 42 0 156] 
#[0 8 46 0 15 0 156] 
#[0 17 13 0 30] 
#[1 17 17 0 15 17 21 0 156] 
#[0 8 50 0 15 0 156] 
#[0 8 54 0 15 0 156] 
#[0 8 58 0 15 0 25 0 156] 
#[0 8 62 0 15 0 156] 
#[0 8 66 0 15 0 25 0 156] 
#[0 17 25 0 156] 
#[1 17 29 0 15 8 70 0 156] 
#[1 13 73 0 15 17 33 0 38] 
#[0 17 37 0 9] 
#[0 8 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 17 41 0 38] 
#[1 17 45 0 149 17 49 1 162] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 17 53 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 17 53 0 211 17 53 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[0 17 57 0 8] 
#[1 14 5 0 145 8 78 0 149 17 61 1 193 17 61 1 194] 
#[1 1 97 0 149 17 69 1 121] 
#[0 8 82 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 14 1 0 8 14 5 0 145 1 97 0 149 17 73 1 121 14 9 1 192 14 13 1 194] 
#[0 8 94 0 54] 
#[0 8 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 17 77 0 158] 
#[1 5 49 0 8 17 81 0 15 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 8 102 0 154 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 10 169 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 10 169 0 211 10 169 0 214 1 197 0 215 10 165 0 223 10 169 0 224 17 85 1 41 17 89 1 42 3 41 2 104 3 245 2 124] 
#[0 8 106 0 9 0 20] 
#[0 8 110 0 9 0 20] 
#[0 8 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 17 93 0 158] 
#[0 8 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 17 97 1 120 17 97 1 121 17 97 1 124 4 229 1 152 17 97 1 157 2 193 1 158 17 97 1 159 17 97 1 160 17 97 1 161 17 97 1 169 17 97 1 170 17 97 1 171 17 97 1 172 17 97 1 180 17 97 1 181 17 97 1 182 17 97 1 183 17 97 1 184 17 97 1 185 17 97 1 186 17 97 1 187 17 97 1 197 17 97 1 198 17 97 1 199 17 97 1 200 17 97 1 202 1 205 2 93 3 29 2 94 17 97 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 17 97 2 111] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 17 101 1 120 17 101 1 121 17 101 1 124 4 229 1 152 17 101 1 157 2 193 1 158 17 101 1 159 17 101 1 160 17 101 1 161 17 101 1 169 17 101 1 170 17 101 1 171 17 101 1 172 17 101 1 180 17 101 1 181 17 101 1 182 17 101 1 183 17 101 1 184 17 101 1 185 17 101 1 186 17 101 1 187 17 101 1 197 17 101 1 198 17 101 1 199 17 101 1 200 17 101 1 202 1 205 2 93 3 29 2 94 17 101 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 17 101 2 111] 
#[0 8 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 134 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 17 105 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 17 105 0 211 17 105 0 214 1 197 0 215 17 105 0 224 3 41 2 104 3 245 2 124] 
#[0 8 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 142 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 23 0 25 0 26 0 29 0 31 0 32 0 33 0 35 0 36 0 37 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 102 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 10 17 0 149 1 101 0 153 6 58 0 156 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 17 109 1 75 17 109 1 76 17 109 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 17 109 1 92 3 221 1 93 17 109 1 112 17 109 1 115 17 109 1 116 3 237 1 151 3 241 1 152 13 221 1 230 13 221 2 41 13 229 2 42 13 233 2 43 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 17 113 2 120 17 117 2 123 3 245 2 124] 
#[0 8 146 0 9 0 15 0 25] 
#[0 8 150 0 9 0 15 0 25] 
#[0 8 154 0 9 0 15 0 25] 
#[0 8 158 0 9 0 15 0 25] 
#[1 6 85 0 158 17 121 1 146] 
#[0 8 162 0 9 0 15 0 25] 
#[0 8 166 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 46 0 47 0 48 0 49 0 52 0 55 0 56 0 60 0 61 0 62 0 65 0 66 0 73 0 77 0 80 0 86 0 87 0 95 0 97 0 99 0 100 0 104 0 114 0 117 0 121 0 122 0 123 0 125 0 128 0 129 0 130 0 133 0 134 0 135 0 136 0 139 0 141 0 143 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 8 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 17 125 0 235 10 209 0 236 10 213 0 237] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 17 129 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 17 129 1 75 17 129 1 76 17 129 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 17 129 1 92 3 221 1 93 17 129 1 112 17 129 1 115 17 129 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 17 133 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 17 133 1 75 17 133 1 76 17 133 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 17 133 1 92 3 221 1 93 17 133 1 112 17 133 1 115 17 133 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 17 137 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 17 137 1 75 17 137 1 76 17 137 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 17 137 1 92 3 221 1 93 17 137 1 112 17 137 1 115 17 137 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 8 174 0 9 0 15 0 38] 
#[0 8 178 0 9 0 15 0 38] 
#[0 8 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 17 141 0 222 17 141 0 252 1 22 2 126] 
#[1 13 73 0 15 17 145 0 38] 
#[0 8 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 17 149 0 245 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 245 1 75 10 245 1 76 10 245 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 245 1 92 3 221 1 93 10 245 1 112 10 245 1 115 10 245 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 17 153 1 75 17 153 1 76 17 153 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 17 153 1 92 3 221 1 93 17 153 1 112 17 153 1 115 17 153 1 116 17 153 1 117 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 8 198 0 164 0 165 0 168 0 169] 
#[0 17 157 0 23] 
#[0 8 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 17 161 0 245 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 10 245 1 75 10 245 1 76 10 245 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 10 245 1 92 3 221 1 93 10 245 1 112 10 245 1 115 10 245 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 8 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 214 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 218 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 17 165 0 25] 
#[0 8 222 0 32 0 149] 
#[0 8 226 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 8 230 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 17 169 0 114] 
#[1 8 234 0 9 17 173 0 15 8 234 0 25 17 177 1 149] 
#[1 7 29 0 8 11 65 0 158 17 181 1 3 17 181 1 6] 
#[0 8 238 0 9 0 15] 
#[1 17 185 0 9 14 253 0 15 17 189 1 4] 
#[0 8 242 0 9 0 25] 
#[0 17 193 0 9] 
#[0 8 246 0 9] 
#[1 8 250 0 9 17 197 0 15 8 250 0 38] 
#[0 8 254 0 9 0 15 0 38] 
#[0 9 2 0 9 0 38] 
#[1 9 6 0 8 9 6 0 49 9 6 0 52 9 6 0 55 9 6 0 60 9 6 0 65 9 6 0 66 9 6 0 77 17 221 0 86 9 6 0 87 9 6 0 95 9 6 0 100 17 221 0 104 17 209 0 107 17 221 0 114 9 6 0 117 9 6 0 121 9 6 0 125 17 221 0 128 9 6 0 134 9 6 0 135 9 6 0 139 9 6 0 143 9 6 0 158 17 221 1 245 17 221 1 246 17 221 1 247] 
#[1 17 233 0 15 17 237 0 154] 
#[1 17 241 0 158 17 245 1 208] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 17 249 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 9 10 0 9 0 15] 
#[0 9 14 0 9 0 15] 
#[0 9 18 0 9 0 15] 
#[0 9 22 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 17 253 1 75 17 253 1 76 17 253 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 17 253 1 92 3 221 1 93 17 253 1 112 17 253 1 115 17 253 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 9 26 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 30 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 34 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 38 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 46 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 11 233 0 114 18 1 1 91] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 18 5 1 75 18 5 1 76 18 5 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 18 5 1 92 3 221 1 93 18 5 1 112 18 5 1 115 18 5 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 18 9 0 86] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 18 13 1 75 18 13 1 76 18 13 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 18 13 1 92 3 221 1 93 18 13 1 112 18 13 1 115 18 13 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 12 25 1 75 12 25 1 76 12 25 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 12 25 1 92 3 221 1 93 18 17 1 104 12 25 1 112 12 25 1 115 12 25 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 9 50 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 9 54 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 9 58 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 9 62 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 18 21 0 51] 
#[0 9 66 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 18 25 0 158] 
#[0 9 70 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 74 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 18 29 0 25] 
#[0 9 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 86 0 158] 
#[0 9 90 0 158] 
#[0 9 94 0 158] 
#[0 2 59 0 158] 
#[0 9 102 0 158] 
#[1 18 33 0 158 18 37 1 225 18 41 1 226] 
#[1 15 197 0 158 1 145 0 193 18 45 0 195 1 145 0 196 18 45 0 213 18 49 1 228 15 213 1 229 18 53 1 236] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 18 57 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 18 61 0 37] 
#[1 9 106 0 15 1 22 0 20 6 65 0 24 9 106 0 25 6 69 0 26 18 65 0 30 9 110 0 32 9 110 0 149 9 69 0 222 9 69 0 252] 
#[0 9 114 0 15 0 20 0 25 0 32 0 146 0 149] 
#[0 18 69 0 20] 
#[1 18 73 0 15 18 77 0 25] 
#[0 9 118 0 15 0 25] 
#[1 18 81 0 32 18 85 0 149 18 89 1 250] 
#[1 15 193 0 128 2 63 0 158 1 145 0 193 15 205 0 195 1 145 0 196 15 205 0 213 18 97 1 236] 
#[1 18 93 0 158 1 145 0 193 18 45 0 195 1 145 0 196 18 45 0 213 18 101 1 236] 
#[1 18 105 0 32 18 109 0 149 18 113 2 15] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 18 117 1 75 18 117 1 76 18 117 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 18 117 1 92 3 221 1 93 18 117 1 112 18 117 1 115 18 117 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 18 121 1 254 18 125 2 0 18 129 2 2 18 133 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 9 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 18 137 1 75 18 137 1 76 18 137 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 18 137 1 92 3 221 1 93 18 137 1 112 18 137 1 115 18 137 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 9 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 18 93 0 158 1 145 0 193 18 45 0 195 1 145 0 196 18 45 0 213 18 141 1 236] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 18 145 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 18 145 0 211 18 145 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 18 149 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 18 149 0 211 18 149 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 18 241 0 1 18 245 0 2 18 245 0 3 18 245 0 5 18 245 0 10 18 173 0 12 18 241 0 13 18 181 0 16 18 241 0 17 18 245 0 21 18 245 0 26 18 245 0 27 18 245 0 29 18 245 0 31 18 245 0 33 18 245 0 39 18 241 0 73 18 241 0 130 18 245 0 150 18 241 0 153 18 245 0 154 18 245 0 155 18 241 2 20 18 245 2 22] 
#[0 9 138 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 18 249 1 75 18 249 1 76 18 249 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 18 249 1 92 3 221 1 93 18 249 1 112 18 249 1 115 18 249 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 9 142 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 9 146 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 18 253 0 9] 
#[0 19 1 0 8] 
#[0 19 5 0 158] 
#[0 9 150 0 158] 
#[0 2 67 0 158] 
#[0 9 158 0 158] 
#[0 19 9 0 158] 
#[0 9 162 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[1 6 81 0 20 19 13 0 25] 
#[1 19 17 0 15 19 21 0 38] 
#[0 9 166 0 158] 
#[0 9 170 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 9 174 0 8 0 37 0 41 0 42 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 81 0 86 0 87 0 88 0 89 0 95 0 99 0 100 0 104 0 105 0 107 0 108 0 109 0 111 0 112 0 113 0 114 0 115 0 117 0 118 0 120 0 121 0 124 0 125 0 126 0 128 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 158] 
#[0 9 178 0 15 0 38] 
#[1 14 133 0 23 19 25 0 30] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 19 33 1 75 19 33 1 76 19 33 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 19 33 1 92 3 221 1 93 19 33 1 112 19 33 1 115 19 33 1 116 3 237 1 151 3 241 1 152 19 33 2 92 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 19 37 0 9] 
#[1 9 182 0 9 19 41 0 15] 
#[0 9 186 0 9 0 15] 
#[1 19 45 0 9 19 49 0 15] 
#[0 9 190 0 9 0 15] 
#[1 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 57 0 10 0 62 0 10 0 68 0 10 0 72 0 10 0 88 0 10 0 89 0 53 0 98 0 10 0 99 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 118 0 10 0 124 0 10 0 126 0 10 0 138 0 10 0 142 0 10 0 144 5 130 0 156 12 213 0 177 19 53 0 189 12 209 0 190 12 213 0 191 12 213 0 192 12 213 1 203 12 213 2 33 12 213 2 44 12 213 2 59 12 213 2 67 0 89 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 16 129 0 158 19 57 2 68] 
#[1 19 61 0 8 19 65 0 26 19 69 2 46] 
#[0 9 194 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 19 77 0 52 19 77 0 55 19 77 0 87 19 77 0 95 19 77 0 117 19 77 0 121 19 77 0 134 19 77 0 135 19 77 0 139 5 113 0 158 1 145 0 193 19 81 0 195 1 145 0 196 19 77 0 208 19 81 2 62] 
#[1 19 85 0 149 19 89 2 63] 
#[0 9 198 0 149] 
#[0 19 93 0 158] 
#[1 9 202 0 23 11 85 0 26 9 202 0 146 9 202 0 149 19 97 1 205 19 97 1 206] 
#[1 9 206 0 23 19 65 0 26 9 206 0 146 9 206 0 149 19 105 2 45 19 105 2 46] 
#[1 9 202 0 23 11 85 0 26 9 202 0 146 9 202 0 149 19 113 1 205 19 113 1 206] 
#[0 9 210 0 15 0 38 0 156] 
#[0 9 214 0 15 0 25] 
#[0 9 218 0 15 0 25] 
#[0 19 117 0 9] 
#[1 0 105 0 1 19 121 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 19 125 1 75 19 125 1 76 19 125 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 19 125 1 92 3 221 1 93 19 125 1 112 19 125 1 115 19 125 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 19 129 2 114 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 19 133 1 120 19 133 1 121 19 133 1 124 4 229 1 152 19 133 1 157 2 193 1 158 19 133 1 159 19 133 1 160 19 133 1 161 19 133 1 169 19 133 1 170 19 133 1 171 19 133 1 172 19 133 1 180 19 133 1 181 19 133 1 182 19 133 1 183 19 133 1 184 19 133 1 185 19 133 1 186 19 133 1 187 19 133 1 197 19 133 1 198 19 133 1 199 19 133 1 200 19 133 1 202 1 205 2 93 3 29 2 94 19 133 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 19 133 2 111] 
#[1 13 101 0 158 19 137 2 113] 
#[0 9 222 0 25] 
#[0 19 141 0 25] 
#[0 9 226 0 25] 
#[0 9 230 0 9 0 15 0 25] 
#[0 19 145 0 86] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 19 149 1 75 19 149 1 76 19 149 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 19 149 1 92 3 221 1 93 19 149 1 112 19 149 1 115 19 149 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 9 234 0 1 9 234 0 5 9 234 0 8 9 234 0 10 9 234 0 12 9 234 0 13 9 234 0 16 9 234 0 17 9 234 0 25 9 234 0 46 9 234 0 47 9 234 0 48 9 234 0 49 9 234 0 50 9 234 0 52 9 234 0 53 9 234 0 55 9 234 0 56 9 234 0 58 9 234 0 59 9 234 0 60 9 234 0 61 9 234 0 62 9 234 0 64 9 234 0 65 9 234 0 66 2 71 0 67 9 234 0 73 9 234 0 76 9 234 0 77 9 234 0 78 9 234 0 79 9 234 0 82 9 234 0 84 9 234 0 87 9 234 0 94 9 234 0 95 9 234 0 97 9 234 0 99 9 234 0 100 9 234 0 114 9 234 0 116 9 234 0 117 9 234 0 121 9 234 0 122 9 234 0 123 9 234 0 124 9 234 0 125 9 234 0 127 9 234 0 128 9 234 0 129 9 234 0 130 9 234 0 131 9 234 0 133 9 234 0 134 9 234 0 135 9 234 0 136 9 234 0 138 9 234 0 139 9 234 0 140 9 234 0 141 9 234 0 143 9 234 0 147 9 234 0 148 9 234 0 149 9 234 0 153 9 234 0 156 9 234 0 158 9 234 0 159 9 234 0 160 9 234 0 161 9 234 0 162 9 234 0 163 9 234 0 166 9 234 0 167 9 234 0 170 9 234 0 171 9 234 2 126] 
#[0 9 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 19 157 0 158] 
#[0 9 242 0 9 0 20] 
#[0 9 246 0 15 0 156] 
#[0 19 161 0 158] 
#[0 9 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 9 254 0 15 0 156] 
#[1 10 2 0 1 10 2 0 2 10 2 0 3 10 2 0 4 10 2 0 5 10 2 0 6 10 2 0 7 10 2 0 8 10 2 0 9 10 2 0 10 10 2 0 11 10 2 0 12 10 2 0 13 10 2 0 14 10 2 0 15 10 2 0 16 10 2 0 17 10 2 0 18 10 2 0 19 10 2 0 20 10 2 0 21 10 2 0 22 10 2 0 23 10 2 0 25 10 2 0 26 10 2 0 27 10 2 0 28 10 2 0 29 10 2 0 30 10 2 0 31 10 2 0 33 10 2 0 34 10 2 0 35 10 2 0 36 10 2 0 37 10 2 0 38 10 2 0 39 10 2 0 40 10 2 0 44 10 2 0 45 10 2 0 46 10 2 0 47 10 2 0 48 10 2 0 49 10 2 0 50 10 2 0 51 10 2 0 52 10 2 0 53 10 2 0 55 10 2 0 56 10 2 0 58 10 2 0 59 10 2 0 60 10 2 0 61 10 2 0 62 10 2 0 63 10 2 0 64 10 2 0 65 10 2 0 66 10 2 0 67 10 2 0 69 10 2 0 73 10 2 0 76 10 2 0 77 10 2 0 78 10 2 0 79 10 2 0 80 10 2 0 82 10 2 0 83 10 2 0 84 10 2 0 87 10 2 0 90 10 2 0 91 10 2 0 92 10 2 0 93 10 2 0 94 10 2 0 95 10 2 0 97 10 2 0 99 10 2 0 100 10 2 0 101 10 2 0 103 10 2 0 114 10 2 0 116 10 2 0 117 10 2 0 119 10 2 0 121 10 2 0 122 10 2 0 123 10 2 0 124 10 2 0 125 10 2 0 127 10 2 0 128 10 2 0 129 10 2 0 130 10 2 0 131 10 2 0 133 10 2 0 134 10 2 0 135 10 2 0 136 10 2 0 138 10 2 0 139 10 2 0 140 10 2 0 141 10 2 0 143 10 2 0 145 10 2 0 146 10 2 0 147 10 2 0 148 2 75 0 149 10 2 0 150 10 2 0 151 10 2 0 152 10 2 0 153 10 2 0 154 10 2 0 155 10 2 0 156 10 2 0 158 10 2 0 159 10 2 0 160 10 2 0 161 10 2 0 162 10 2 0 163 10 2 0 164 10 2 0 165 10 2 0 166 10 2 0 167 10 2 0 168 10 2 0 169 10 2 0 170 10 2 0 171 19 165 1 19 19 165 1 20 19 165 1 21 19 165 1 27 10 2 2 126] 
#[1 14 141 0 15 19 173 0 38] 
#[1 13 73 0 15 19 177 0 156] 
#[0 10 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 13 177 0 37 19 181 0 156 19 185 0 158 19 189 1 24 13 201 1 25] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 10 1 0 149 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 19 197 1 20 19 197 1 21 19 197 1 26 19 197 1 27 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 19 197 1 75 19 197 1 76 19 197 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 19 197 1 92 3 221 1 93 19 197 1 112 19 197 1 115 19 197 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 13 181 0 149 1 101 0 153 19 205 0 156 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 19 209 1 29 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 141 1 52 1 205 1 53 1 205 1 58 3 141 1 59 3 141 1 60 3 141 1 61 3 141 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 13 213 1 75 13 213 1 76 13 213 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 13 213 1 92 3 221 1 93 13 213 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 141 2 107 1 205 2 108 3 141 2 109 1 205 2 110 3 245 2 124] 
#[0 10 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 10 17 0 149 1 101 0 153 19 213 0 156 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 19 217 1 75 19 217 1 76 19 217 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 19 217 1 92 3 221 1 93 19 217 1 112 19 217 1 115 19 217 1 116 3 237 1 151 3 241 1 152 19 217 1 230 19 217 2 41 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 10 18 0 1 10 18 0 2 10 18 0 3 10 18 0 4 10 18 0 5 10 18 0 6 10 18 0 7 10 18 0 8 10 18 0 9 10 18 0 10 10 18 0 11 10 18 0 12 10 18 0 13 10 18 0 14 10 18 0 15 10 18 0 16 10 18 0 17 10 18 0 18 10 18 0 19 10 18 0 20 10 18 0 21 10 18 0 22 10 18 0 23 10 18 0 25 10 18 0 26 10 18 0 27 10 18 0 28 10 18 0 29 10 18 0 30 10 18 0 31 10 18 0 33 10 18 0 34 10 18 0 35 10 18 0 36 5 189 0 37 10 18 0 38 10 18 0 39 10 18 0 40 10 18 0 44 10 18 0 45 10 18 0 46 10 18 0 47 10 18 0 48 10 18 0 49 10 18 0 50 10 18 0 51 10 18 0 52 10 18 0 53 10 18 0 55 10 18 0 56 10 18 0 58 10 18 0 59 10 18 0 60 10 18 0 61 10 18 0 62 10 18 0 63 10 18 0 64 10 18 0 65 10 18 0 66 10 18 0 67 10 18 0 69 10 18 0 73 10 18 0 76 10 18 0 77 10 18 0 78 10 18 0 79 10 18 0 80 10 18 0 82 10 18 0 83 10 18 0 84 10 18 0 87 10 18 0 90 10 18 0 91 10 18 0 92 10 18 0 93 10 18 0 94 10 18 0 95 10 18 0 97 10 18 0 99 10 18 0 100 10 18 0 101 10 18 0 103 10 18 0 114 10 18 0 116 10 18 0 117 10 18 0 119 10 18 0 121 10 18 0 122 10 18 0 123 10 18 0 124 10 18 0 125 10 18 0 127 10 18 0 128 10 18 0 129 10 18 0 130 10 18 0 131 10 18 0 133 10 18 0 134 10 18 0 135 10 18 0 136 10 18 0 138 10 18 0 139 10 18 0 140 10 18 0 141 10 18 0 143 10 18 0 145 10 18 0 146 10 18 0 147 10 18 0 148 10 18 0 149 10 18 0 150 10 18 0 151 10 18 0 152 10 18 0 153 10 18 0 154 10 18 0 155 10 18 0 156 10 18 0 158 10 18 0 159 10 18 0 160 10 18 0 161 10 18 0 162 10 18 0 163 10 18 0 164 10 18 0 165 10 18 0 166 10 18 0 167 10 18 0 168 10 18 0 169 10 18 0 170 10 18 0 171 19 221 0 216 19 225 0 217 6 113 0 218 10 18 2 126] 
#[0 10 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 10 26 0 1 10 26 0 2 10 26 0 3 10 26 0 4 10 26 0 5 10 26 0 6 10 26 0 7 10 26 0 8 10 26 0 9 10 26 0 10 10 26 0 11 10 26 0 12 10 26 0 13 10 26 0 14 10 26 0 15 10 26 0 16 10 26 0 17 10 26 0 18 10 26 0 19 10 26 0 20 10 26 0 21 10 26 0 22 10 26 0 23 10 26 0 25 10 26 0 26 10 26 0 27 10 26 0 28 10 26 0 29 10 26 0 30 10 26 0 31 10 26 0 33 10 26 0 34 10 26 0 35 10 26 0 36 10 26 0 37 10 26 0 38 10 26 0 39 10 26 0 40 10 26 0 44 10 26 0 45 10 26 0 46 10 26 0 47 10 26 0 48 10 26 0 49 10 26 0 50 10 26 0 51 10 26 0 52 10 26 0 53 10 26 0 55 10 26 0 56 10 26 0 58 10 26 0 59 10 26 0 60 10 26 0 61 10 26 0 62 10 26 0 63 10 26 0 64 10 26 0 65 10 26 0 66 10 26 0 67 10 26 0 69 10 26 0 73 10 26 0 76 10 26 0 77 10 26 0 78 10 26 0 79 10 26 0 80 10 26 0 82 10 26 0 83 10 26 0 84 10 26 0 87 10 26 0 90 10 26 0 91 10 26 0 92 10 26 0 93 10 26 0 94 10 26 0 95 10 26 0 97 10 26 0 99 10 26 0 100 10 26 0 101 10 26 0 103 10 26 0 114 10 26 0 116 10 26 0 117 10 26 0 119 10 26 0 121 10 26 0 122 10 26 0 123 10 26 0 124 10 26 0 125 10 26 0 127 10 26 0 128 10 26 0 129 10 26 0 130 10 26 0 131 10 26 0 133 10 26 0 134 10 26 0 135 10 26 0 136 10 26 0 138 10 26 0 139 10 26 0 140 10 26 0 141 10 26 0 143 10 26 0 145 10 26 0 146 10 26 0 147 10 26 0 148 2 79 0 149 10 26 0 150 10 26 0 151 10 26 0 152 10 26 0 153 10 26 0 154 10 26 0 155 10 26 0 156 10 26 0 158 10 26 0 159 10 26 0 160 10 26 0 161 10 26 0 162 10 26 0 163 10 26 0 164 10 26 0 165 10 26 0 166 10 26 0 167 10 26 0 168 10 26 0 169 10 26 0 170 10 26 0 171 19 233 2 119 10 26 2 126] 
#[1 19 237 0 53 19 241 0 61 10 30 0 156 19 245 1 163 19 249 1 164 19 253 1 165 20 1 1 166 20 5 1 167] 
#[0 10 34 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 10 38 0 9 20 13 0 158 20 13 2 99] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 20 17 1 75 20 17 1 76 20 17 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 20 17 1 92 3 221 1 93 20 17 1 112 20 17 1 115 20 17 1 116 20 17 1 118 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 1 97 0 149 20 21 1 121] 
#[0 10 42 0 149] 
#[0 10 46 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 10 50 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 1 191 0 9 1 22 0 10 1 191 0 20 14 45 0 26 1 22 0 35 1 22 0 37 14 89 0 222 14 89 0 252 20 25 1 39 14 53 1 40] 
#[0 10 54 0 15 0 154] 
#[0 20 29 0 154] 
#[1 20 33 0 15 10 58 0 154] 
#[1 6 102 0 9 6 102 0 20 20 37 0 26 20 41 1 39 14 53 1 40] 
#[0 10 62 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 10 66 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 10 70 0 15 0 154] 
#[0 2 83 0 15 0 156] 
#[0 20 45 0 156] 
#[1 10 78 0 15 10 78 0 156 20 49 2 122] 
#[0 10 82 0 9 0 15 0 25] 
#[0 10 86 0 9 0 15 0 38] 
#[0 10 90 0 9 0 15 0 38] 
#[0 10 94 0 9 0 15 0 38] 
#[0 10 98 0 9 0 15 0 38] 
#[1 10 102 0 1 10 102 0 2 10 102 0 3 10 102 0 4 10 102 0 5 10 102 0 6 10 102 0 7 10 102 0 8 10 102 0 9 10 102 0 10 10 102 0 11 10 102 0 12 10 102 0 13 10 102 0 14 10 102 0 15 10 102 0 16 10 102 0 17 10 102 0 18 10 102 0 19 10 102 0 20 10 102 0 21 10 102 0 22 10 102 0 23 10 102 0 25 10 102 0 26 10 102 0 27 10 102 0 28 10 102 0 29 10 102 0 30 10 102 0 31 10 102 0 33 10 102 0 34 10 102 0 35 10 102 0 36 10 102 0 37 10 102 0 38 10 102 0 39 10 102 0 40 10 102 0 44 10 102 0 45 10 102 0 46 10 102 0 47 10 102 0 48 10 102 0 49 10 102 0 50 10 102 0 51 10 102 0 52 10 102 0 53 10 102 0 55 10 102 0 56 10 102 0 58 10 102 0 59 10 102 0 60 10 102 0 61 10 102 0 62 10 102 0 63 10 102 0 64 10 102 0 65 10 102 0 66 10 102 0 67 10 102 0 69 10 102 0 73 10 102 0 76 10 102 0 77 10 102 0 78 10 102 0 79 10 102 0 80 10 102 0 82 10 102 0 83 10 102 0 84 10 102 0 87 10 102 0 90 10 102 0 91 10 102 0 92 10 102 0 93 10 102 0 94 10 102 0 95 10 102 0 97 10 102 0 99 10 102 0 100 10 102 0 101 10 102 0 103 10 102 0 114 10 102 0 116 10 102 0 117 10 102 0 119 10 102 0 121 10 102 0 122 10 102 0 123 10 102 0 124 10 102 0 125 10 102 0 127 10 102 0 128 10 102 0 129 10 102 0 130 10 102 0 131 10 102 0 133 10 102 0 134 10 102 0 135 10 102 0 136 10 102 0 138 10 102 0 139 10 102 0 140 10 102 0 141 10 102 0 143 10 102 0 145 10 102 0 146 10 102 0 147 10 102 0 148 10 102 0 149 10 102 0 150 10 102 0 151 10 102 0 152 10 102 0 153 10 102 0 154 10 102 0 155 10 102 0 156 10 102 0 158 10 102 0 159 10 102 0 160 10 102 0 161 10 102 0 162 10 102 0 163 10 102 0 164 10 102 0 165 10 102 0 166 10 102 0 167 10 102 0 168 10 102 0 169 10 102 0 170 10 102 0 171 20 53 1 54 10 102 2 126] 
#[0 10 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 110 0 164 0 165] 
#[1 6 166 0 23 10 114 0 164 10 114 0 165 10 114 0 168 10 114 0 169 20 57 0 246 14 201 0 247] 
#[0 10 118 0 164 0 165 0 168 0 169] 
#[0 10 122 0 168 0 169] 
#[0 10 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 20 61 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 20 61 1 75 20 61 1 76 20 61 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 20 61 1 92 3 221 1 93 20 61 1 112 20 61 1 115 20 61 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 11 49 0 158 20 65 1 139] 
#[0 10 130 0 9 0 15 0 25] 
#[0 10 134 0 9 0 15] 
#[0 10 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 142 0 9 0 15] 
#[0 10 146 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 20 69 1 242 20 73 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 10 150 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 10 154 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 20 77 0 66 1 173 0 77 1 173 0 87 1 173 0 95 20 81 0 100 1 173 0 117 1 173 0 121 20 85 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 20 89 0 199 20 89 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 20 93 0 214 1 197 0 215 1 197 2 104 3 245 2 124] 
#[0 10 158 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 10 162 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 20 101 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 20 101 0 211 20 101 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[0 10 166 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[0 10 170 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 77 0 87 0 95 0 100 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 0 49 0 37 0 10 0 158 20 105 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 10 174 0 8 0 23 0 146 0 149] 
#[0 10 178 0 15 0 23 0 154] 
#[0 10 182 0 15 0 154] 
#[0 20 109 0 9] 
#[0 10 186 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 10 190 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 194 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 20 113 1 75 20 113 1 76 20 113 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 20 113 1 92 3 221 1 93 20 113 1 112 20 113 1 115 20 113 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 10 198 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 10 202 0 15 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 20 117 1 75 20 117 1 76 20 117 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 20 117 1 92 3 221 1 93 20 117 1 112 20 117 1 115 20 117 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 3 81 0 80 3 58 0 83 7 225 0 92 7 229 0 93 7 233 0 103 3 58 0 119 7 237 0 146 7 241 1 93 20 121 1 94 7 249 1 95 7 253 1 96 8 1 1 97 8 5 1 98 8 9 1 99 8 13 1 100 8 17 1 101 8 21 1 102] 
#[0 10 206 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 20 125 0 30] 
#[1 20 129 0 15 20 133 0 25] 
#[0 10 210 0 15 0 25] 
#[0 20 137 0 20] 
#[1 18 73 0 15 20 141 0 25] 
#[0 20 145 0 149] 
#[0 20 149 0 9] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 20 153 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 10 17 0 149 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 20 157 1 75 20 157 1 76 20 157 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 20 157 1 92 3 221 1 93 20 157 1 112 20 157 1 115 20 157 1 116 3 237 1 151 3 241 1 152 20 157 1 230 20 157 2 41 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 20 161 0 128 20 165 0 158] 
#[1 20 169 0 158 20 173 1 229] 
#[0 10 214 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 20 177 1 75 20 177 1 76 20 177 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 20 177 1 92 3 221 1 93 20 177 1 112 20 177 1 115 20 177 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 20 181 1 254 18 125 2 0 18 129 2 2 18 133 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 10 218 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 9 110 0 8 1 22 0 20 6 65 0 24 2 87 0 26 9 110 0 32 9 110 0 149 9 69 0 222 9 69 0 252] 
#[1 20 185 0 32 20 189 0 149 20 193 1 253] 
#[1 9 202 0 8 11 85 0 26 20 197 1 205 20 197 1 206] 
#[0 20 201 0 114] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 20 205 2 6 20 209 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 10 222 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 20 213 0 25] 
#[0 20 217 0 156] 
#[1 0 49 0 37 0 10 0 89 0 10 0 109 0 10 0 111 0 10 0 120 10 226 0 156 20 221 2 1 20 221 2 2 20 229 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 10 230 0 156 20 233 1 255 20 233 2 0 20 241 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 10 234 0 81 20 245 0 89 20 249 0 109 20 253 0 111 10 234 0 120 21 1 2 3 21 5 2 4] 
#[0 21 9 0 25] 
#[1 9 202 0 8 11 85 0 26 21 13 1 205 21 13 1 206] 
#[0 21 17 0 8] 
#[0 21 21 0 8] 
#[0 10 238 0 8] 
#[0 10 242 0 8] 
#[0 10 246 0 8] 
#[0 10 250 0 8] 
#[0 10 254 0 8] 
#[0 2 91 0 8] 
#[0 11 10 0 8] 
#[0 2 95 0 8] 
#[0 11 22 0 8] 
#[0 11 26 0 8] 
#[0 11 30 0 8] 
#[0 11 34 0 8] 
#[0 11 38 0 8] 
#[0 11 42 0 8] 
#[0 11 46 0 8] 
#[0 11 50 0 8] 
#[0 11 54 0 8] 
#[0 11 58 0 8] 
#[0 11 62 0 8] 
#[0 11 66 0 8] 
#[0 11 70 0 8] 
#[0 11 74 0 8] 
#[0 21 25 0 8] 
#[0 21 29 0 8] 
#[0 21 33 0 25] 
#[1 21 37 0 25 21 41 0 32 1 97 0 149 21 45 1 121 21 49 2 32] 
#[0 21 53 0 9] 
#[0 21 57 0 8] 
#[0 21 61 0 8] 
#[0 11 78 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 140 0 142 0 144 0 156 2 126] 
#[1 21 65 0 38 5 113 0 158 1 145 0 193 8 197 0 195 1 145 0 196 16 89 2 83 8 197 2 84] 
#[0 11 82 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 21 69 1 75 21 69 1 76 21 69 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 21 69 1 92 3 221 1 93 21 69 1 112 21 69 1 115 21 69 1 116 3 237 1 151 3 241 1 152 21 69 2 92 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 11 86 0 9 0 15] 
#[0 11 90 0 9 0 15] 
#[0 11 94 0 15 0 38] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 2 55 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 16 97 0 236 10 213 0 237 21 73 2 89 21 77 2 90 16 117 2 91] 
#[0 11 98 0 15 0 38] 
#[1 21 81 0 158 21 85 2 91] 
#[0 21 89 0 156] 
#[0 11 102 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 21 93 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 86 0 10 0 104 0 10 0 158 21 97 2 47 21 101 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 21 105 0 8] 
#[0 11 106 0 149] 
#[0 11 110 0 149] 
#[0 11 114 0 149] 
#[1 0 49 0 37 11 118 0 156 0 10 0 158 21 109 2 64 21 113 2 65 21 117 2 66 21 121 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 5 166 0 8 21 125 0 25 5 166 0 37 5 166 0 41 5 166 0 46 5 166 0 49 5 166 0 52 5 166 0 55 5 166 0 57 5 166 0 58 5 166 0 60 5 166 0 62 5 166 0 65 5 166 0 66 5 166 0 68 5 166 0 70 5 166 0 72 5 166 0 76 5 166 0 77 5 166 0 87 5 166 0 88 5 166 0 89 5 166 0 95 5 166 0 98 5 166 0 99 5 166 0 100 5 166 0 105 5 166 0 108 5 166 0 109 5 166 0 111 5 166 0 112 5 166 0 113 5 166 0 114 5 166 0 117 5 166 0 118 5 166 0 121 5 166 0 124 5 166 0 125 5 166 0 126 5 166 0 134 5 166 0 135 5 166 0 138 5 166 0 139 5 166 0 142 5 166 0 143 5 166 0 144 5 166 0 153 5 166 0 156 5 166 0 158 21 125 2 95 5 166 2 126] 
#[1 9 202 0 23 11 85 0 26 9 202 0 146 9 202 0 149 21 129 1 205 21 129 1 206] 
#[1 21 133 0 23 11 122 0 146 11 122 0 149 21 137 1 209 21 141 1 210] 
#[0 11 126 0 8 0 23 0 146 0 149] 
#[1 21 145 0 23 11 130 0 146 11 130 0 149 21 149 2 50 21 153 2 51] 
#[0 11 134 0 23 0 146 0 149] 
#[1 21 157 0 23 11 138 0 146 11 138 0 149 21 161 2 34 21 165 2 35] 
#[0 21 169 0 25] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 21 173 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 21 177 1 52 1 205 1 53 1 205 1 58 21 177 1 59 21 177 1 60 21 177 1 61 21 177 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 21 173 1 75 21 173 1 76 21 173 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 21 173 1 92 3 221 1 93 21 173 1 112 21 173 1 115 21 173 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 21 177 2 107 1 205 2 108 21 177 2 109 1 205 2 110 3 245 2 124] 
#[0 11 142 0 9 0 15] 
#[0 11 146 0 9 0 15] 
#[0 11 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 11 154 0 9 0 15] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 11 158 0 9 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 4 161 0 52 4 165 0 55 3 77 0 56 4 169 0 60 0 185 0 61 0 189 0 62 4 173 0 65 3 29 0 73 4 177 0 77 4 181 0 87 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 37 0 128 3 29 0 130 1 53 0 133 4 205 0 134 4 209 0 135 3 89 0 136 4 213 0 139 1 81 0 141 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 9 117 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 9 117 1 112 4 229 1 152 9 117 1 158 21 181 1 177 21 181 1 178 21 189 1 179 1 205 2 93 3 29 2 94 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 21 193 1 75 21 193 1 76 21 193 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 21 193 1 92 3 221 1 93 21 193 1 112 21 193 1 115 21 193 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 21 197 0 9] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 21 201 1 120 21 201 1 121 21 201 1 124 4 229 1 152 21 201 1 157 2 193 1 158 21 201 1 159 21 201 1 160 21 201 1 161 21 201 1 169 21 201 1 170 21 201 1 171 21 201 1 172 21 201 1 180 21 201 1 181 21 201 1 182 21 201 1 183 21 201 1 184 21 201 1 185 21 201 1 186 21 201 1 187 21 201 1 197 21 201 1 198 21 201 1 199 21 201 1 200 21 201 1 202 1 205 2 93 3 29 2 94 21 201 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 21 201 2 111] 
#[1 1 22 0 9 1 22 0 20 6 69 0 26 21 205 0 222 21 205 0 252] 
#[1 1 22 0 8 1 22 0 13 1 22 0 15 1 22 0 17 1 22 0 19 1 22 0 20 6 69 0 26 1 22 0 35 1 22 0 37 1 22 0 156 21 209 0 222 21 209 0 252] 
#[0 11 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 170 0 30] 
#[0 11 174 0 15 0 156] 
#[0 11 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 8 38 0 30] 
#[0 11 182 0 15 0 156] 
#[0 11 186 0 15 0 156] 
#[0 11 190 0 15 0 156] 
#[0 11 194 0 15 0 156] 
#[0 11 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 202 0 15 0 156] 
#[0 11 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 11 210 0 15 0 156] 
#[1 11 214 0 1 11 214 0 2 11 214 0 3 11 214 0 4 11 214 0 5 11 214 0 6 11 214 0 7 11 214 0 8 11 214 0 9 11 214 0 10 11 214 0 11 11 214 0 12 11 214 0 13 11 214 0 14 11 214 0 15 11 214 0 16 11 214 0 17 11 214 0 18 11 214 0 19 11 214 0 20 11 214 0 21 11 214 0 22 11 214 0 23 11 214 0 25 11 214 0 26 11 214 0 27 11 214 0 28 11 214 0 29 11 214 0 30 11 214 0 31 11 214 0 33 11 214 0 34 11 214 0 35 11 214 0 36 11 214 0 38 11 214 0 39 11 214 0 40 11 214 0 44 11 214 0 45 11 214 0 46 11 214 0 47 11 214 0 48 11 214 0 49 11 214 0 50 11 214 0 51 11 214 0 52 11 214 0 53 11 214 0 55 11 214 0 56 11 214 0 58 11 214 0 59 11 214 0 60 11 214 0 61 11 214 0 62 11 214 0 63 11 214 0 64 11 214 0 65 11 214 0 66 11 214 0 67 11 214 0 69 11 214 0 73 11 214 0 76 11 214 0 77 11 214 0 78 11 214 0 79 11 214 0 80 11 214 0 82 11 214 0 83 11 214 0 84 11 214 0 87 11 214 0 90 11 214 0 91 11 214 0 92 11 214 0 93 11 214 0 94 11 214 0 95 11 214 0 97 11 214 0 99 11 214 0 100 11 214 0 101 11 214 0 103 11 214 0 114 11 214 0 116 11 214 0 117 11 214 0 119 11 214 0 121 11 214 0 122 11 214 0 123 11 214 0 124 11 214 0 125 11 214 0 127 11 214 0 128 11 214 0 129 11 214 0 130 11 214 0 131 11 214 0 133 11 214 0 134 11 214 0 135 11 214 0 136 11 214 0 138 11 214 0 139 11 214 0 140 11 214 0 141 11 214 0 143 11 214 0 145 11 214 0 146 11 214 0 147 11 214 0 148 2 99 0 149 11 214 0 150 11 214 0 151 11 214 0 152 11 214 0 153 11 214 0 154 11 214 0 155 11 214 0 156 11 214 0 158 11 214 0 159 11 214 0 160 11 214 0 161 11 214 0 162 11 214 0 163 11 214 0 164 11 214 0 165 11 214 0 166 11 214 0 167 11 214 0 168 11 214 0 169 11 214 0 170 11 214 0 171 21 213 2 40 21 213 2 41 11 214 2 126] 
#[1 11 218 0 1 11 218 0 2 11 218 0 3 11 218 0 4 11 218 0 5 11 218 0 6 11 218 0 7 11 218 0 8 11 218 0 9 11 218 0 10 11 218 0 11 11 218 0 12 11 218 0 13 11 218 0 14 11 218 0 15 11 218 0 16 11 218 0 17 11 218 0 18 11 218 0 19 11 218 0 20 11 218 0 21 11 218 0 22 11 218 0 23 11 218 0 25 11 218 0 26 11 218 0 27 11 218 0 28 11 218 0 29 11 218 0 30 11 218 0 31 11 218 0 33 11 218 0 34 11 218 0 35 11 218 0 36 5 189 0 37 11 218 0 38 11 218 0 39 11 218 0 40 11 218 0 44 11 218 0 45 11 218 0 46 11 218 0 47 11 218 0 48 11 218 0 49 11 218 0 50 11 218 0 51 11 218 0 52 11 218 0 53 11 218 0 55 11 218 0 56 11 218 0 58 11 218 0 59 11 218 0 60 11 218 0 61 11 218 0 62 11 218 0 63 11 218 0 64 11 218 0 65 11 218 0 66 11 218 0 67 11 218 0 69 11 218 0 73 11 218 0 76 11 218 0 77 11 218 0 78 11 218 0 79 11 218 0 80 11 218 0 82 11 218 0 83 11 218 0 84 11 218 0 87 11 218 0 90 11 218 0 91 11 218 0 92 11 218 0 93 11 218 0 94 11 218 0 95 11 218 0 97 11 218 0 99 11 218 0 100 11 218 0 101 11 218 0 103 11 218 0 114 11 218 0 116 11 218 0 117 11 218 0 119 11 218 0 121 11 218 0 122 11 218 0 123 11 218 0 124 11 218 0 125 11 218 0 127 11 218 0 128 11 218 0 129 11 218 0 130 11 218 0 131 11 218 0 133 11 218 0 134 11 218 0 135 11 218 0 136 11 218 0 138 11 218 0 139 11 218 0 140 11 218 0 141 11 218 0 143 11 218 0 145 11 218 0 146 11 218 0 147 11 218 0 148 11 218 0 149 11 218 0 150 11 218 0 151 11 218 0 152 11 218 0 153 11 218 0 154 11 218 0 155 11 218 0 156 11 218 0 158 11 218 0 159 11 218 0 160 11 218 0 161 11 218 0 162 11 218 0 163 11 218 0 164 11 218 0 165 11 218 0 166 11 218 0 167 11 218 0 168 11 218 0 169 11 218 0 170 11 218 0 171 10 189 0 218 11 218 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 17 117 1 75 17 117 1 76 17 117 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 17 117 1 92 3 221 1 93 17 117 1 112 17 117 1 115 17 117 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 17 113 2 120 17 117 2 123 3 245 2 124] 
#[0 11 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 21 225 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 21 225 0 211 21 225 0 214 1 197 0 215 21 229 0 226 21 229 0 227 21 229 0 229 21 229 0 230 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 21 229 1 75 21 229 1 76 21 229 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 21 229 1 92 3 221 1 93 21 229 1 112 21 229 1 115 21 229 1 116 21 229 1 117 3 237 1 151 11 193 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 21 233 0 23] 
#[0 21 237 0 156] 
#[1 19 237 0 53 19 241 0 61 11 226 0 156 21 241 1 165 20 1 1 166 20 5 1 167] 
#[0 11 230 0 53 0 61 0 156] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 157 0 50 0 161 0 52 19 237 0 53 0 165 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 181 0 60 21 245 0 61 0 189 0 62 0 193 0 64 0 197 0 65 0 201 0 66 3 29 0 73 0 209 0 76 0 213 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 233 0 87 0 237 0 94 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 0 11 0 114 1 5 0 116 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 0 15 0 124 1 29 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 1 57 0 134 1 61 0 135 1 65 0 136 0 19 0 138 1 73 0 139 1 77 0 140 1 81 0 141 1 85 0 143 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 1 105 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 1 149 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 1 149 0 211 1 149 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 6 45 1 119 6 45 1 120 6 45 1 121 21 249 1 123 6 45 1 124 6 45 1 125 6 45 1 126 6 45 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 133 2 153 1 134 2 161 1 137 2 165 1 138 2 169 1 140 2 161 1 142 2 177 1 147 2 181 1 152 2 185 1 154 6 45 1 157 2 193 1 158 6 45 1 159 6 45 1 160 6 45 1 161 21 253 1 167 6 45 1 169 6 45 1 170 6 45 1 171 6 45 1 172 6 45 1 180 6 45 1 181 6 45 1 182 6 45 1 183 6 45 1 184 6 45 1 185 6 45 1 186 6 45 1 187 6 45 1 197 6 45 1 198 6 45 1 199 6 45 1 200 6 45 1 202 3 21 1 234 1 205 2 93 3 29 2 94 2 153 2 102 6 45 2 103 3 41 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 6 45 2 111 3 65 2 124] 
#[0 11 234 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 11 238 0 9] 
#[0 22 1 0 9] 
#[0 22 5 0 9] 
#[0 11 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 75 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 11 246 0 9 0 20] 
#[0 11 250 0 9 0 20] 
#[0 11 254 0 15 0 154] 
#[1 17 81 0 15 8 102 0 154 17 85 1 41 17 89 1 42] 
#[0 12 2 0 9 0 20] 
#[0 12 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 22 9 0 15 12 10 0 156 22 13 2 121] 
#[1 12 14 0 1 12 14 0 2 12 14 0 3 12 14 0 4 12 14 0 5 12 14 0 6 12 14 0 7 2 103 0 8 12 14 0 9 12 14 0 10 12 14 0 11 12 14 0 12 12 14 0 13 12 14 0 14 12 14 0 15 12 14 0 16 12 14 0 17 12 14 0 18 12 14 0 19 2 107 0 20 12 14 0 21 12 14 0 22 12 14 0 23 12 14 0 25 12 14 0 26 12 14 0 27 12 14 0 28 12 14 0 29 12 14 0 30 12 14 0 31 12 14 0 33 12 14 0 34 12 14 0 35 12 14 0 36 2 111 0 37 12 14 0 38 12 14 0 39 12 14 0 40 12 14 0 44 12 14 0 45 12 14 0 46 12 14 0 47 12 14 0 48 12 14 0 49 12 14 0 50 12 14 0 51 12 14 0 52 12 14 0 53 12 14 0 55 12 14 0 56 12 14 0 58 12 14 0 59 12 14 0 60 12 14 0 61 12 14 0 62 12 14 0 63 12 14 0 64 12 14 0 65 12 14 0 66 12 14 0 67 12 14 0 69 12 14 0 73 12 14 0 76 12 14 0 77 12 14 0 78 12 14 0 79 12 14 0 80 12 14 0 82 12 14 0 83 12 14 0 84 12 14 0 87 12 14 0 90 12 14 0 91 12 14 0 92 12 14 0 93 12 14 0 94 12 14 0 95 12 14 0 97 12 14 0 99 12 14 0 100 12 14 0 101 12 14 0 103 12 14 0 114 12 14 0 116 12 14 0 117 12 14 0 119 12 14 0 121 12 14 0 122 12 14 0 123 12 14 0 124 12 14 0 125 12 14 0 127 12 14 0 128 12 14 0 129 12 14 0 130 12 14 0 131 12 14 0 133 12 14 0 134 12 14 0 135 12 14 0 136 12 14 0 138 12 14 0 139 12 14 0 140 12 14 0 141 12 14 0 143 12 14 0 145 12 14 0 146 12 14 0 147 12 14 0 148 12 14 0 149 12 14 0 150 12 14 0 151 12 14 0 152 12 14 0 153 12 14 0 154 12 14 0 155 12 14 0 156 12 14 0 158 12 14 0 159 12 14 0 160 12 14 0 161 12 14 0 162 12 14 0 163 12 14 0 164 12 14 0 165 12 14 0 166 12 14 0 167 12 14 0 168 12 14 0 169 12 14 0 170 12 14 0 171 22 29 1 55 12 14 2 126] 
#[0 12 18 0 164 0 165 0 168 0 169] 
#[0 12 22 0 9 0 15 0 25] 
#[0 12 26 0 9 0 15 0 25] 
#[0 12 30 0 9 0 15 0 38] 
#[0 12 34 0 9 0 38] 
#[0 0 146 0 37] 
#[0 0 186 0 37] 
#[0 0 226 0 37] 
#[1 6 97 0 10 1 78 0 37 6 101 2 105] 
#[0 22 33 0 158] 
#[0 2 186 0 37] 
#[0 22 37 0 158] 
#[1 17 241 0 158 22 41 1 208] 
#[1 12 38 0 32 22 45 0 146 12 38 0 149 22 49 1 212 22 53 1 213 22 57 1 214] 
#[0 22 61 0 101] 
#[0 12 42 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 12 46 0 1 0 2 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 23 0 25 0 26 0 29 0 31 0 33 0 35 0 36 0 38 0 39 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 152 0 153 0 154 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 22 65 1 75 22 65 1 76 22 65 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 22 65 1 92 3 221 1 93 22 65 1 112 22 65 1 115 22 65 1 116 22 65 1 117 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 18 33 0 158 22 69 1 226] 
#[0 12 50 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 20 165 0 158] 
#[0 12 54 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 49 0 37 0 10 0 42 0 10 0 115 22 73 2 9 22 77 2 10 22 81 2 11 22 85 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 22 89 0 23 12 58 0 25 12 58 0 32 12 58 0 149 22 93 2 27 22 93 2 28] 
#[0 22 101 0 38] 
#[0 12 62 0 15 0 25] 
#[0 22 105 0 37] 
#[0 12 66 0 8 0 26 0 32 0 149] 
#[1 9 106 0 15 9 106 0 25 18 65 0 30] 
#[0 12 70 0 15 0 25] 
#[0 22 109 0 25] 
#[0 22 113 0 156] 
#[0 22 117 0 114] 
#[1 0 49 0 37 0 10 0 81 0 10 0 89 0 10 0 109 0 10 0 111 22 121 2 6 20 209 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 12 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 22 125 0 8] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 22 129 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 22 129 1 75 22 129 1 76 22 129 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 22 129 1 92 3 221 1 93 22 129 1 112 22 129 1 115 22 129 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 22 133 0 156] 
#[1 10 234 0 81 20 245 0 89 20 249 0 109 20 253 0 111 22 137 2 3 21 5 2 4] 
#[0 12 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 86 0 156] 
#[0 12 90 0 156] 
#[1 20 245 0 89 20 249 0 109 20 253 0 111 10 234 0 120 22 141 2 3 21 5 2 4] 
#[0 12 94 0 156] 
#[0 12 98 0 156] 
#[1 10 234 0 81 20 245 0 89 20 249 0 109 20 253 0 111 22 145 2 3 21 5 2 4] 
#[1 12 102 0 81 22 149 0 111 12 102 0 120] 
#[1 12 106 0 81 22 153 0 111 12 106 0 120] 
#[1 12 110 0 81 22 157 0 89 22 161 0 109 12 110 0 120] 
#[1 22 165 0 81 22 169 0 120] 
#[0 12 114 0 81 0 120] 
#[0 12 118 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 22 173 0 8] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 177 1 242 22 181 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 185 1 242 22 181 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 189 1 242 22 181 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 22 193 1 242 22 181 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 12 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 22 197 1 75 22 197 1 76 22 197 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 22 197 1 92 3 221 1 93 22 197 1 112 22 197 1 115 22 197 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 12 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 12 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 22 201 0 25 22 205 0 32 1 97 0 149 22 209 1 121 22 213 2 101] 
#[0 22 217 0 9] 
#[0 22 221 0 9] 
#[0 12 138 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 2 126] 
#[0 12 142 0 9 0 15] 
#[0 12 146 0 9 0 15] 
#[1 22 225 0 9 19 49 0 15] 
#[0 19 25 0 30] 
#[0 12 150 0 9 0 15] 
#[0 12 154 0 25 0 37 0 41 0 46 0 57 0 62 0 68 0 72 0 88 0 89 0 98 0 99 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 118 0 124 0 126 0 138 0 142 0 144 0 156 2 126] 
#[0 22 229 0 9] 
#[1 22 233 0 15 22 237 0 154] 
#[1 22 249 0 86 22 249 0 104 12 158 0 158 22 249 2 48 22 249 2 49] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 1 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 23 5 0 156] 
#[1 23 9 0 15 12 162 0 156] 
#[0 12 166 0 15 0 156] 
#[0 23 13 0 158] 
#[0 12 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 21 157 0 23 11 138 0 146 11 138 0 149 23 17 2 34 21 165 2 35] 
#[1 23 21 0 100 23 25 0 125 5 113 0 158 1 145 0 193 23 33 0 195 1 145 0 196 23 33 0 212] 
#[1 22 45 0 146 12 38 0 149 23 37 1 212 22 53 1 213 22 57 1 214] 
#[0 12 174 0 146 0 149] 
#[1 5 113 0 158 1 145 0 193 23 41 0 195 1 145 0 196 23 41 0 213 23 45 1 211] 
#[1 22 45 0 146 12 38 0 149 23 49 1 212 22 53 1 213 22 57 1 214] 
#[0 12 178 0 146 0 149] 
#[1 5 113 0 158 1 145 0 193 23 41 0 195 1 145 0 196 23 41 0 213 23 53 1 211] 
#[1 22 45 0 146 12 38 0 149 23 57 1 212 22 53 1 213 22 57 1 214] 
#[0 12 182 0 146 0 149] 
#[0 12 186 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 12 190 0 9 0 15] 
#[1 2 115 0 2 2 115 0 3 2 119 0 4 2 115 0 5 2 115 0 6 2 123 0 7 2 115 0 9 2 115 0 10 2 127 0 11 2 115 0 12 2 131 0 14 2 115 0 15 2 115 0 16 2 135 0 18 2 115 0 21 2 139 0 22 2 115 0 26 2 115 0 27 2 143 0 28 2 115 0 29 2 147 0 30 2 115 0 31 2 115 0 33 2 151 0 34 2 115 0 35 2 115 0 36 2 115 0 39 2 155 0 40 2 115 0 44 2 115 0 91 2 115 0 150 2 159 0 151 2 115 0 152 2 115 0 154 2 115 0 155 6 209 1 113] 
#[0 23 61 0 9] 
#[0 12 194 0 9] 
#[1 12 198 0 9 13 117 0 15] 
#[0 23 65 0 9] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 23 69 1 120 23 69 1 121 23 69 1 124 4 229 1 152 23 69 1 157 2 193 1 158 23 69 1 159 23 69 1 160 23 69 1 161 23 69 1 169 23 69 1 170 23 69 1 171 23 69 1 172 23 69 1 180 23 69 1 181 23 69 1 182 23 69 1 183 23 69 1 184 23 69 1 185 23 69 1 186 23 69 1 187 23 69 1 197 23 69 1 198 23 69 1 199 23 69 1 200 23 69 1 202 1 205 2 93 3 29 2 94 23 69 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 23 69 2 111] 
#[0 12 202 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 12 206 0 9 0 20] 
#[1 10 102 0 8 10 102 0 13 12 210 0 15 10 102 0 17 10 102 0 19 10 102 0 20 10 102 0 35 10 102 0 37 12 210 0 156 20 53 1 54] 
#[0 12 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 12 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 10 74 0 15 0 156] 
#[1 2 163 0 158 15 73 0 231 15 73 0 232] 
#[1 23 73 0 23 23 77 0 145 23 81 1 168] 
#[0 12 222 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 12 226 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 12 230 0 53 0 61 0 156] 
#[1 0 126 0 4 0 126 0 7 0 27 0 8 0 126 0 11 0 126 0 13 0 126 0 14 0 126 0 17 0 126 0 18 0 126 0 19 0 126 0 20 0 126 0 22 21 233 0 23 0 126 0 28 0 126 0 30 0 126 0 34 0 126 0 35 0 126 0 37 0 126 0 40 0 126 0 151] 
#[1 0 105 0 1 0 109 0 5 0 113 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 0 141 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 157 0 50 0 161 0 52 12 234 0 53 0 165 0 55 0 169 0 56 0 173 0 58 0 177 0 59 0 181 0 60 2 167 0 61 0 189 0 62 0 193 0 64 0 197 0 65 0 201 0 66 3 29 0 73 0 209 0 76 0 213 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 0 233 0 87 0 237 0 94 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 0 11 0 114 1 5 0 116 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 0 15 0 124 1 29 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 1 57 0 134 1 61 0 135 1 65 0 136 0 19 0 138 1 73 0 139 1 77 0 140 1 81 0 141 1 85 0 143 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 12 234 0 156 1 105 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 1 149 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 1 149 0 211 1 149 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 10 149 1 119 10 149 1 120 10 149 1 121 10 149 1 124 10 149 1 125 10 149 1 126 10 149 1 127 2 137 1 128 2 141 1 129 2 145 1 130 2 149 1 131 2 153 1 133 2 153 1 134 2 161 1 137 2 165 1 138 2 169 1 140 2 161 1 142 2 177 1 147 2 181 1 152 2 185 1 154 10 149 1 157 2 193 1 158 10 149 1 159 10 149 1 160 10 149 1 161 10 149 1 169 10 149 1 170 10 149 1 171 10 149 1 172 10 149 1 180 10 149 1 181 10 149 1 182 10 149 1 183 10 149 1 184 10 149 1 185 10 149 1 186 10 149 1 187 10 149 1 197 10 149 1 198 10 149 1 199 10 149 1 200 10 149 1 202 3 21 1 234 1 205 2 93 3 29 2 94 2 153 2 102 10 149 2 103 3 41 2 104 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 10 149 2 111 3 65 2 124] 
#[0 12 238 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 12 242 0 145 0 149] 
#[0 12 246 0 149] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 23 85 1 75 23 85 1 76 23 85 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 23 85 1 92 3 221 1 93 23 85 1 112 23 85 1 115 23 85 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 23 85 2 123 3 245 2 124] 
#[0 12 250 0 15 0 156] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 102 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 23 89 0 233 10 201 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[0 23 93 0 158] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 23 97 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[0 12 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 13 2 0 9 0 38] 
#[1 13 6 0 9 13 6 0 15 23 101 0 30 13 6 0 38 23 105 1 243 23 109 1 244] 
#[0 13 10 0 15 0 154] 
#[1 17 241 0 158 23 113 1 208] 
#[0 13 14 0 32 0 149] 
#[1 13 18 0 25 13 18 0 32 22 45 0 146 13 18 0 149 23 117 1 214] 
#[0 13 22 0 25 0 32 0 146 0 149] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 23 121 1 75 23 121 1 76 23 121 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 23 121 1 92 3 221 1 93 23 121 1 112 23 121 1 115 23 121 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 13 26 0 15 0 25] 
#[0 13 30 0 15 0 25] 
#[0 23 125 0 156] 
#[1 0 49 0 37 0 10 0 115 23 129 2 11 23 133 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 49 0 37 0 10 0 42 23 137 2 10 23 141 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 23 145 0 42 23 149 0 115] 
#[1 23 153 0 48 23 157 0 128] 
#[0 13 34 0 25 0 32 0 149] 
#[0 13 38 0 25 0 32 0 149] 
#[0 13 42 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 161 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 13 46 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 13 50 0 8 23 165 0 30 13 50 0 37 13 50 0 41 13 50 0 46 13 50 0 49 13 50 0 52 13 50 0 55 13 50 0 57 13 50 0 58 13 50 0 60 13 50 0 62 13 50 0 65 13 50 0 66 13 50 0 68 13 50 0 70 13 50 0 72 13 50 0 76 13 50 0 77 13 50 0 87 13 50 0 88 13 50 0 89 13 50 0 95 13 50 0 99 13 50 0 100 13 50 0 105 13 50 0 108 13 50 0 109 13 50 0 111 13 50 0 112 13 50 0 113 13 50 0 114 13 50 0 117 13 50 0 118 13 50 0 121 13 50 0 124 13 50 0 125 13 50 0 126 13 50 0 134 13 50 0 135 13 50 0 138 13 50 0 139 13 50 0 142 13 50 0 143 13 50 0 144 13 50 0 153 13 50 0 156 13 50 0 158 23 169 1 251 23 173 1 252 13 50 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 23 177 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 23 177 1 75 23 177 1 76 23 177 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 23 177 1 92 3 221 1 93 23 177 1 112 23 177 1 115 23 177 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 23 181 0 156] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 185 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 23 189 0 25] 
#[0 13 54 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 23 193 0 81] 
#[0 22 169 0 120] 
#[0 22 165 0 81] 
#[0 13 58 0 81 0 120] 
#[0 13 62 0 81 0 120] 
#[0 13 66 0 81 0 120] 
#[0 13 70 0 81 0 120] 
#[1 23 197 0 25 23 201 0 32 1 97 0 149 23 205 1 121 23 209 2 5] 
#[1 23 197 0 25 23 201 0 32 1 97 0 149 23 205 1 121 23 213 2 5] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 23 217 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 23 221 0 9] 
#[1 9 6 0 8 9 6 0 49 9 6 0 52 9 6 0 55 9 6 0 60 9 6 0 65 9 6 0 66 9 6 0 77 17 221 0 86 9 6 0 87 9 6 0 95 9 6 0 100 17 221 0 104 17 221 0 114 9 6 0 117 9 6 0 121 9 6 0 125 17 221 0 128 9 6 0 134 9 6 0 135 9 6 0 139 9 6 0 143 9 6 0 158 17 221 1 245 17 221 1 246 17 221 1 247] 
#[0 23 225 0 9] 
#[0 23 229 0 9] 
#[0 23 233 0 15] 
#[0 23 237 0 25] 
#[0 13 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 23 241 1 75 23 241 1 76 23 241 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 23 241 1 92 3 221 1 93 23 241 1 112 23 241 1 115 23 241 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 13 78 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 22 201 0 25 22 205 0 32 1 97 0 149 22 209 1 121 23 245 2 101] 
#[1 22 201 0 25 22 205 0 32 1 97 0 149 22 209 1 121 23 249 2 101] 
#[0 13 86 0 15 0 38] 
#[0 23 253 0 25] 
#[1 0 49 0 37 0 10 0 86 0 10 0 104 0 10 0 158 24 1 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 13 90 0 8 0 23 0 146 0 149] 
#[0 13 94 0 158] 
#[0 13 98 0 158] 
#[1 17 241 0 158 24 5 1 208] 
#[0 13 102 0 158] 
#[0 24 9 0 9] 
#[0 13 106 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 0 49 0 37 24 13 0 156 0 10 0 158 24 17 2 66 21 121 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 13 110 0 15 24 21 0 30 13 110 0 156] 
#[1 22 45 0 146 12 38 0 149 24 25 1 212 22 53 1 213 22 57 1 214] 
#[0 13 114 0 15 0 25 0 32 0 146 0 149] 
#[0 13 118 0 15 0 25 0 32 0 146 0 149] 
#[0 13 122 0 15 0 146 0 149] 
#[1 24 29 0 15 13 126 0 146 13 126 0 149] 
#[1 24 33 0 149 24 37 1 220] 
#[0 13 130 0 15 0 146 0 149] 
#[1 24 41 0 15 13 134 0 146 13 134 0 149] 
#[1 24 45 0 149 24 49 2 52] 
#[1 24 41 0 15 13 138 0 146 13 138 0 149] 
#[1 24 53 0 149 24 57 2 36] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 24 61 1 120 24 61 1 121 24 61 1 124 4 229 1 152 24 61 1 157 2 193 1 158 24 61 1 159 24 61 1 160 24 61 1 161 24 61 1 169 24 61 1 170 24 61 1 171 24 61 1 172 24 61 1 180 24 61 1 181 24 61 1 182 24 61 1 183 24 61 1 184 24 61 1 185 24 61 1 186 24 61 1 187 24 61 1 197 24 61 1 198 24 61 1 199 24 61 1 200 24 61 1 202 1 205 2 93 3 29 2 94 24 61 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 24 61 2 111] 
#[1 0 105 0 1 0 109 0 5 4 149 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 0 137 0 25 4 153 0 46 0 145 0 47 0 149 0 48 4 157 0 49 0 157 0 50 4 161 0 52 4 165 0 55 0 169 0 56 0 177 0 59 4 169 0 60 0 185 0 61 0 189 0 62 0 193 0 64 4 173 0 65 3 29 0 73 0 209 0 76 4 177 0 77 0 217 0 78 0 221 0 79 0 225 0 82 0 229 0 84 4 181 0 87 0 237 0 94 4 185 0 95 0 245 0 97 0 249 0 99 4 189 0 100 1 5 0 116 4 193 0 117 4 197 0 121 1 17 0 122 1 21 0 123 4 201 0 125 1 33 0 127 1 37 0 128 1 41 0 129 3 29 0 130 1 49 0 131 1 53 0 133 4 205 0 134 4 209 0 135 1 65 0 136 5 145 0 138 4 213 0 139 1 77 0 140 1 81 0 141 1 89 0 147 1 93 0 148 1 97 0 149 1 101 0 153 4 217 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 4 221 0 193 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 2 5 1 11 1 205 1 12 1 205 1 14 1 205 1 15 2 21 1 16 2 25 1 17 2 29 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 2 69 1 52 2 73 1 53 2 193 1 57 2 81 1 58 2 85 1 59 2 89 1 60 2 69 1 61 2 97 1 62 1 205 1 78 2 193 1 112 24 65 1 120 24 65 1 121 24 65 1 124 4 229 1 152 24 65 1 157 2 193 1 158 24 65 1 159 24 65 1 160 24 65 1 161 24 65 1 169 24 65 1 170 24 65 1 171 24 65 1 172 24 65 1 180 24 65 1 181 24 65 1 182 24 65 1 183 24 65 1 184 24 65 1 185 24 65 1 186 24 65 1 187 24 65 1 197 24 65 1 198 24 65 1 199 24 65 1 200 24 65 1 202 1 205 2 93 3 29 2 94 24 65 2 103 2 69 2 107 1 205 2 108 2 69 2 109 1 205 2 110 24 65 2 111] 
#[0 13 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 13 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 24 69 1 75 24 69 1 76 24 69 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 24 69 1 92 3 221 1 93 24 69 1 112 24 69 1 115 24 69 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 24 73 0 23] 
#[0 13 150 0 15 0 156] 
#[0 24 77 0 9] 
#[1 1 22 0 1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 9 1 22 0 10 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 25 0 159 0 26 1 22 0 27 1 22 0 28 1 22 0 29 1 22 0 30 1 22 0 31 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 37 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 44 1 22 0 45 1 22 0 46 1 22 0 47 1 22 0 48 1 22 0 49 1 22 0 50 1 22 0 51 1 22 0 52 1 22 0 53 1 22 0 55 1 22 0 56 1 22 0 58 1 22 0 59 1 22 0 60 1 22 0 61 1 22 0 62 1 22 0 63 1 22 0 64 1 22 0 65 1 22 0 66 1 22 0 67 1 22 0 69 1 22 0 73 1 22 0 76 1 22 0 77 1 22 0 78 1 22 0 79 1 22 0 80 1 22 0 82 1 22 0 83 1 22 0 84 1 22 0 87 1 22 0 90 1 22 0 91 1 22 0 92 1 22 0 93 1 22 0 94 1 22 0 95 1 22 0 97 1 22 0 99 1 22 0 100 1 22 0 101 1 22 0 103 1 22 0 114 1 22 0 116 1 22 0 117 1 22 0 119 1 22 0 121 1 22 0 122 1 22 0 123 1 22 0 124 1 22 0 125 1 22 0 127 1 22 0 128 1 22 0 129 1 22 0 130 1 22 0 131 1 22 0 133 1 22 0 134 1 22 0 135 1 22 0 136 1 22 0 138 1 22 0 139 1 22 0 140 1 22 0 141 1 22 0 143 1 22 0 145 1 22 0 146 1 22 0 147 1 22 0 148 1 22 0 149 1 22 0 150 1 22 0 151 1 22 0 152 1 22 0 153 1 22 0 154 1 22 0 155 1 22 0 156 1 22 0 158 1 22 0 159 1 22 0 160 1 22 0 161 1 22 0 162 1 22 0 163 1 22 0 164 1 22 0 165 1 22 0 166 1 22 0 167 1 22 0 168 1 22 0 169 1 22 0 170 1 22 0 171 24 81 0 222 24 81 0 252 1 22 2 126] 
#[1 14 141 0 15 24 85 0 38] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 24 89 1 75 24 89 1 76 24 89 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 24 89 1 92 3 221 1 93 24 89 1 112 24 89 1 115 24 89 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 13 154 0 9 0 15 0 38] 
#[0 13 158 0 9 0 15 0 38] 
#[0 24 93 0 23] 
#[0 13 162 0 25 0 32 0 146 0 149] 
#[0 24 97 0 69] 
#[0 13 166 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 170 0 156] 
#[0 23 149 0 115] 
#[0 13 174 0 156] 
#[0 23 145 0 42] 
#[1 1 97 0 149 24 101 1 121] 
#[1 1 97 0 149 24 105 1 121] 
#[0 24 109 0 8] 
#[0 24 113 0 8] 
#[0 24 117 0 38] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 10 17 0 149 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 24 121 1 75 24 121 1 76 24 121 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 24 121 1 92 3 221 1 93 24 121 1 112 24 121 1 115 24 121 1 116 3 237 1 151 3 241 1 152 24 121 1 230 24 121 2 41 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 13 178 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 182 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 24 125 0 25] 
#[1 13 50 0 8 23 165 0 30 13 50 0 37 13 50 0 41 13 50 0 46 13 50 0 49 13 50 0 52 13 50 0 55 13 50 0 57 13 50 0 58 13 50 0 60 13 50 0 62 13 50 0 65 13 50 0 66 13 50 0 68 13 50 0 70 13 50 0 72 13 50 0 76 13 50 0 77 13 50 0 87 13 50 0 88 13 50 0 89 13 50 0 95 13 50 0 99 13 50 0 100 13 50 0 105 13 50 0 108 13 50 0 109 13 50 0 111 13 50 0 112 13 50 0 113 13 50 0 114 13 50 0 117 13 50 0 118 13 50 0 121 13 50 0 124 13 50 0 125 13 50 0 126 13 50 0 134 13 50 0 135 13 50 0 138 13 50 0 139 13 50 0 142 13 50 0 143 13 50 0 144 13 50 0 153 13 50 0 156 13 50 0 158 24 129 1 251 23 173 1 252 13 50 2 126] 
#[0 24 133 0 9] 
#[0 13 186 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 24 137 0 25 24 141 0 32 1 97 0 149 24 145 1 121 24 149 2 7] 
#[0 13 190 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 24 153 1 75 24 153 1 76 24 153 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 24 153 1 92 3 221 1 93 24 153 1 112 24 153 1 115 24 153 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 13 194 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[0 13 198 0 37 0 89 0 109 0 111 0 120 0 156] 
#[0 13 202 0 37 0 81 0 89 0 109 0 111 0 156] 
#[0 24 157 0 9] 
#[0 13 206 0 25 0 32 0 149] 
#[0 13 210 0 25 0 32 0 149] 
#[0 13 214 0 25 0 32 0 149] 
#[1 0 10 0 8 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 24 161 1 242 22 181 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 13 218 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 24 165 0 25] 
#[0 13 222 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 226 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 230 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 24 169 0 86 24 169 0 104 12 158 0 158 24 169 2 48 24 169 2 49] 
#[0 13 234 0 15 0 154] 
#[1 12 38 0 25 22 45 0 146 24 173 1 212 22 53 1 213 22 57 1 214] 
#[0 13 238 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 13 242 0 15 0 156] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 24 177 1 75 24 177 1 76 24 177 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 24 177 1 92 3 221 1 93 24 177 1 112 24 177 1 115 24 177 1 116 24 177 1 117 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[1 24 53 0 149 24 181 2 36] 
#[1 5 113 0 158 1 145 0 193 23 41 0 195 1 145 0 196 23 41 0 213 24 185 1 211] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 13 246 0 156 0 10 0 158 24 197 0 192 24 197 1 203 24 189 1 221 24 193 1 222 24 197 1 223 24 197 1 224 24 197 1 227 24 197 1 231 4 17 1 232 4 21 1 233 24 197 1 249 24 197 2 8 24 197 2 12 24 197 2 16 24 197 2 25 24 197 2 30 24 197 2 33 24 197 2 44 24 197 2 59 24 197 2 67 4 49 2 75 0 93 2 76 0 97 2 77 0 101 2 78 24 197 2 100] 
#[1 5 166 0 8 24 201 0 25 5 166 0 37 5 166 0 41 5 166 0 46 5 166 0 49 5 166 0 52 5 166 0 55 5 166 0 57 5 166 0 58 5 166 0 60 5 166 0 62 5 166 0 65 5 166 0 66 5 166 0 68 5 166 0 70 5 166 0 72 5 166 0 76 5 166 0 77 5 166 0 87 5 166 0 88 5 166 0 89 5 166 0 95 5 166 0 98 5 166 0 99 5 166 0 100 5 166 0 105 5 166 0 108 5 166 0 109 5 166 0 111 5 166 0 112 5 166 0 113 5 166 0 114 5 166 0 117 5 166 0 118 5 166 0 121 5 166 0 124 5 166 0 125 5 166 0 126 5 166 0 134 5 166 0 135 5 166 0 138 5 166 0 139 5 166 0 142 5 166 0 143 5 166 0 144 5 166 0 153 5 166 0 156 5 166 0 158 24 201 2 95 5 166 2 126] 
#[1 5 113 0 158 1 145 0 193 24 205 0 195 1 145 0 196 24 205 0 213] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 13 250 0 156 0 10 0 158 24 225 1 249 24 225 2 12 24 217 2 53 24 221 2 54 24 225 2 55 24 225 2 56 24 225 2 58 24 237 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 5 166 0 8 24 241 0 25 5 166 0 37 5 166 0 41 5 166 0 46 5 166 0 49 5 166 0 52 5 166 0 55 5 166 0 57 5 166 0 58 5 166 0 60 5 166 0 62 5 166 0 65 5 166 0 66 5 166 0 68 5 166 0 70 5 166 0 72 5 166 0 76 5 166 0 77 5 166 0 87 5 166 0 88 5 166 0 89 5 166 0 95 5 166 0 98 5 166 0 99 5 166 0 100 5 166 0 105 5 166 0 108 5 166 0 109 5 166 0 111 5 166 0 112 5 166 0 113 5 166 0 114 5 166 0 117 5 166 0 118 5 166 0 121 5 166 0 124 5 166 0 125 5 166 0 126 5 166 0 134 5 166 0 135 5 166 0 138 5 166 0 139 5 166 0 142 5 166 0 143 5 166 0 144 5 166 0 153 5 166 0 156 5 166 0 158 24 241 2 95 5 166 2 126] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 13 254 0 156 0 10 0 158 25 37 0 192 25 37 1 203 25 37 1 224 25 37 1 227 25 37 1 231 4 17 1 232 4 21 1 233 25 37 1 249 25 37 2 8 25 37 2 12 25 37 2 16 25 37 2 25 25 37 2 30 25 37 2 33 25 29 2 37 25 33 2 38 25 37 2 39 25 37 2 44 25 37 2 59 25 37 2 67 25 41 2 75 0 93 2 76 0 97 2 77 0 101 2 78 25 37 2 115] 
#[1 5 166 0 8 25 49 0 25 5 166 0 37 5 166 0 41 5 166 0 46 5 166 0 49 5 166 0 52 5 166 0 55 5 166 0 57 5 166 0 58 5 166 0 60 5 166 0 62 5 166 0 65 5 166 0 66 5 166 0 68 5 166 0 70 5 166 0 72 5 166 0 76 5 166 0 77 5 166 0 87 5 166 0 88 5 166 0 89 5 166 0 95 5 166 0 98 5 166 0 99 5 166 0 100 5 166 0 105 5 166 0 108 5 166 0 109 5 166 0 111 5 166 0 112 5 166 0 113 5 166 0 114 5 166 0 117 5 166 0 118 5 166 0 121 5 166 0 124 5 166 0 125 5 166 0 126 5 166 0 134 5 166 0 135 5 166 0 138 5 166 0 139 5 166 0 142 5 166 0 143 5 166 0 144 5 166 0 153 5 166 0 156 5 166 0 158 25 49 2 95 5 166 2 126] 
#[0 14 2 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 14 6 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 67 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171 2 126] 
#[0 14 10 0 23] 
#[0 14 14 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 25 0 46 0 47 0 48 0 49 0 50 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 64 0 65 0 66 0 73 0 76 0 77 0 78 0 79 0 82 0 84 0 87 0 94 0 95 0 97 0 99 0 100 0 114 0 116 0 117 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 147 0 148 0 149 0 153 0 158 0 159 0 160 0 161 0 162 0 163 0 166 0 167 0 170 0 171] 
#[0 14 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 69 0 73 0 76 0 77 0 78 0 79 0 80 0 82 0 83 0 84 0 87 0 90 0 91 0 92 0 93 0 94 0 95 0 97 0 99 0 100 0 101 0 103 0 114 0 116 0 117 0 119 0 121 0 122 0 123 0 124 0 125 0 127 0 128 0 129 0 130 0 131 0 133 0 134 0 135 0 136 0 138 0 139 0 140 0 141 0 143 0 145 0 146 0 147 0 148 0 149 0 150 0 151 0 152 0 153 0 154 0 155 0 156 0 158 0 159 0 160 0 161 0 162 0 163 0 164 0 165 0 166 0 167 0 168 0 169 0 170 0 171 2 126] 
#[0 14 30 0 9 0 15 0 38] 
#[1 25 53 0 57 25 57 0 99 23 21 0 100 23 25 0 125 25 61 0 126 25 65 0 137 25 69 0 158 1 145 0 193 25 73 0 195 1 145 0 196 25 77 0 212 25 81 0 213 25 85 1 208 25 89 1 215 25 93 1 216 25 97 1 217 25 101 1 218 25 105 1 219] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 25 109 1 75 25 109 1 76 25 109 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 25 109 1 92 3 221 1 93 25 109 1 112 25 109 1 115 25 109 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 14 34 0 37 0 115 0 156] 
#[0 14 38 0 37 0 42 0 156] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 102 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 25 113 0 233 10 201 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[1 4 98 0 1 4 98 0 5 4 98 0 8 4 102 0 9 4 98 0 10 4 98 0 12 4 98 0 13 4 98 0 16 4 98 0 17 4 98 0 46 4 98 0 47 4 98 0 48 4 98 0 49 4 98 0 52 4 98 0 55 4 98 0 56 4 98 0 60 4 98 0 61 4 98 0 62 4 98 0 65 4 98 0 66 4 98 0 73 4 98 0 77 4 98 0 80 4 98 0 86 4 98 0 87 4 98 0 95 4 98 0 97 4 98 0 99 4 98 0 100 4 98 0 104 4 98 0 114 4 98 0 117 4 98 0 121 4 98 0 122 4 98 0 123 4 98 0 125 4 98 0 128 4 98 0 129 4 98 0 130 4 98 0 133 4 98 0 134 4 98 0 135 4 98 0 136 4 98 0 139 4 98 0 141 4 98 0 143 4 98 0 153 1 71 0 158 4 98 0 159 4 98 0 160 4 98 0 161 4 98 0 162 4 98 0 163 4 98 0 166 4 98 0 167 4 98 0 170 4 98 0 171 25 117 0 233 10 201 0 234 10 205 0 235 10 209 0 236 10 213 0 237] 
#[0 14 42 0 32 0 149] 
#[0 25 121 0 25] 
#[0 14 46 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 50 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 12 38 0 25 12 38 0 32 22 45 0 146 12 38 0 149 25 125 1 212 22 53 1 213 22 57 1 214] 
#[0 14 54 0 156] 
#[0 25 129 0 114] 
#[0 14 58 0 156] 
#[0 14 62 0 156] 
#[0 25 133 0 25] 
#[1 12 38 0 25 12 38 0 32 22 45 0 146 12 38 0 149 25 137 1 212 22 53 1 213 22 57 1 214] 
#[0 25 141 0 9] 
#[0 14 66 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[1 17 241 0 158 25 145 1 208] 
#[0 25 149 0 25] 
#[0 14 70 0 15 0 156] 
#[1 5 166 0 8 25 153 0 25 5 166 0 37 5 166 0 41 5 166 0 46 5 166 0 49 5 166 0 52 5 166 0 55 5 166 0 57 5 166 0 58 5 166 0 60 5 166 0 62 5 166 0 65 5 166 0 66 5 166 0 68 5 166 0 70 5 166 0 72 5 166 0 76 5 166 0 77 5 166 0 87 5 166 0 88 5 166 0 89 5 166 0 95 5 166 0 98 5 166 0 99 5 166 0 100 5 166 0 105 5 166 0 108 5 166 0 109 5 166 0 111 5 166 0 112 5 166 0 113 5 166 0 114 5 166 0 117 5 166 0 118 5 166 0 121 5 166 0 124 5 166 0 125 5 166 0 126 5 166 0 134 5 166 0 135 5 166 0 138 5 166 0 139 5 166 0 142 5 166 0 143 5 166 0 144 5 166 0 153 5 166 0 156 5 166 0 158 25 153 2 95 5 166 2 126] 
#[1 24 41 0 15 14 74 0 146 14 74 0 149] 
#[0 25 157 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 0 10 0 153 14 78 0 156 0 10 0 158 25 161 0 192 25 161 1 203 25 161 1 223 25 161 1 224 25 161 1 227 25 161 1 231 4 17 1 232 4 21 1 233 25 161 1 249 25 161 2 8 25 161 2 12 25 161 2 16 25 161 2 25 25 161 2 30 25 161 2 33 25 161 2 44 25 161 2 59 25 161 2 67 4 49 2 75 0 93 2 76 0 97 2 77 0 101 2 78 25 161 2 100] 
#[0 14 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158] 
#[0 14 86 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 90 0 15 0 146 0 149] 
#[0 14 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 25 165 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 70 0 10 0 72 0 10 0 77 0 10 0 87 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 14 102 0 156 0 10 0 158 25 169 1 249 25 169 2 12 25 169 2 55 25 169 2 56 25 169 2 58 24 237 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[0 14 106 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 114 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 2 171 0 8 0 70 0 41 0 70 0 46 2 171 0 49 2 171 0 52 2 171 0 55 2 171 0 60 2 171 0 65 2 171 0 66 14 118 0 70 0 70 0 72 2 171 0 77 2 171 0 87 0 70 0 89 2 171 0 95 2 175 0 99 2 171 0 100 0 70 0 105 0 70 0 109 0 70 0 111 0 70 0 112 0 70 0 113 2 171 0 114 2 171 0 117 0 70 0 118 2 171 0 121 0 70 0 124 2 171 0 125 2 171 0 134 2 171 0 135 0 70 0 138 2 171 0 139 0 70 0 142 2 171 0 143 0 70 0 144 2 171 0 158 25 177 1 204 25 181 2 96] 
#[0 14 122 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 126 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 130 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 134 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 138 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 142 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 146 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 150 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 154 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 158 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 162 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 25 185 0 156] 
#[1 0 10 0 8 0 49 0 37 0 10 0 41 0 10 0 46 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 57 0 10 0 58 0 10 0 60 0 10 0 62 0 10 0 65 0 10 0 66 0 10 0 68 0 10 0 70 0 10 0 72 0 10 0 76 0 10 0 77 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 95 0 10 0 99 0 10 0 100 0 10 0 105 0 10 0 108 0 10 0 109 0 10 0 111 0 10 0 112 0 10 0 113 0 10 0 114 0 10 0 117 0 10 0 118 0 10 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 134 0 10 0 135 0 10 0 138 0 10 0 139 0 10 0 142 0 10 0 143 0 10 0 144 14 166 0 156 0 10 0 158 25 189 0 192 25 189 1 203 25 189 1 224 25 189 1 227 25 189 1 231 4 17 1 232 4 21 1 233 25 189 1 249 25 189 2 8 25 189 2 12 25 189 2 16 25 189 2 25 25 189 2 30 25 189 2 33 25 189 2 39 25 189 2 44 25 189 2 59 25 189 2 67 25 41 2 75 0 93 2 76 0 97 2 77 0 101 2 78 25 189 2 115] 
#[0 14 170 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 0 70 0 8 0 235 0 41 0 239 0 46 0 70 0 49 0 70 0 52 0 70 0 55 0 70 0 57 0 70 0 58 0 70 0 60 0 70 0 62 0 70 0 65 0 70 0 66 0 70 0 68 0 70 0 70 2 179 0 72 0 70 0 76 0 70 0 77 0 70 0 87 0 70 0 88 0 247 0 89 0 70 0 95 0 251 0 99 0 70 0 100 0 255 0 105 0 70 0 108 1 3 0 109 1 7 0 111 1 11 0 112 1 15 0 113 0 70 0 114 0 70 0 117 1 19 0 118 0 70 0 121 1 23 0 124 0 70 0 125 0 70 0 126 0 70 0 134 0 70 0 135 2 183 0 138 0 70 0 139 1 31 0 142 0 70 0 143 1 35 0 144 0 70 0 158 25 197 1 204 8 121 2 17 8 125 2 31 25 201 2 102 8 137 2 125] 
#[0 14 174 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 14 178 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 182 0 15 0 25 0 32 0 146 0 149] 
#[0 25 205 0 8] 
#[0 14 186 0 15 0 25 0 32 0 146 0 149] 
#[0 14 190 0 15 0 25 0 32 0 146 0 149] 
#[1 2 187 0 15 1 22 0 20 6 65 0 24 2 187 0 25 6 69 0 26 2 187 0 32 2 187 0 146 2 187 0 149 9 69 0 222 9 69 0 252] 
#[0 2 191 0 15 0 25 0 32 0 146 0 149] 
#[0 14 194 0 15 0 25 0 32 0 146 0 149] 
#[0 14 198 0 15 0 25 0 32 0 146 0 149] 
#[0 14 202 0 15 0 25 0 32 0 146 0 149] 
#[0 14 206 0 25 0 32 0 146 0 149] 
#[1 25 209 0 15 14 210 0 25 14 210 0 32 14 210 0 146 14 210 0 149] 
#[1 25 213 0 15 14 214 0 25 14 214 0 32 14 214 0 146 14 214 0 149] 
#[0 14 218 0 15 0 25 0 32 0 146 0 149] 
#[0 14 222 0 25 0 32 0 146 0 149] 
#[1 14 226 0 80 14 226 0 83 25 217 0 90 14 226 0 92 14 226 0 93 14 226 0 103 14 226 0 119 14 226 0 146] 
#[0 25 221 0 9] 
#[0 25 225 0 9] 
#[0 14 230 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 14 234 0 25 0 32 0 149] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 25 229 0 225 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 25 229 1 75 25 229 1 76 25 229 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 25 229 1 92 3 221 1 93 25 229 1 112 25 229 1 115 25 229 1 116 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 14 238 0 37 0 81 0 89 0 109 0 111 0 120 0 156] 
#[0 14 242 0 25 0 32 0 149] 
#[0 14 246 0 25 0 32 0 149] 
#[0 14 250 0 15 0 154] 
#[0 14 254 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 2 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 6 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 10 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158] 
#[0 15 14 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 18 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 15 22 0 8 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 77 0 87 0 95 0 100 0 114 0 117 0 121 0 125 0 134 0 135 0 139 0 143 0 158] 
#[1 5 49 0 8 8 249 0 41 8 249 0 46 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 8 249 0 72 1 173 0 77 1 173 0 87 8 249 0 89 1 173 0 95 8 249 0 99 5 85 0 100 8 249 0 105 8 249 0 109 8 249 0 111 8 249 0 112 8 249 0 113 1 1 0 114 1 173 0 117 8 249 0 118 1 173 0 121 8 249 0 124 5 97 0 125 1 173 0 134 1 173 0 135 8 249 0 138 1 173 0 139 8 249 0 142 1 85 0 143 8 249 0 144 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 25 233 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 25 233 0 211 25 233 0 214 1 197 0 215 25 237 1 140 12 109 2 13 8 249 2 102 3 41 2 104 3 245 2 124 8 249 2 125] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 25 241 0 70 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 1 0 114 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 25 249 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 25 249 0 211 25 249 0 214 1 197 0 215 25 245 1 140 25 249 1 234 3 41 2 104 3 65 2 124] 
#[0 15 26 0 8 0 25 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 98 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 153 0 156 0 158 2 126] 
#[0 15 30 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 5 62 0 8 5 62 0 41 5 62 0 46 5 62 0 49 5 62 0 52 5 62 0 55 5 62 0 60 5 62 0 65 5 62 0 66 5 62 0 71 5 62 0 72 5 62 0 77 5 62 0 85 5 62 0 87 5 62 0 89 5 62 0 95 5 62 0 99 5 62 0 100 5 62 0 105 5 62 0 109 5 62 0 111 5 62 0 112 5 62 0 113 5 62 0 117 5 62 0 118 5 62 0 121 1 83 0 124 5 62 0 125 5 62 0 134 5 62 0 135 2 195 0 138 5 62 0 139 5 62 0 142 5 62 0 143 5 62 0 144 5 62 0 158 12 73 2 102] 
#[1 1 103 0 8 8 249 0 41 8 249 0 46 1 107 0 49 1 111 0 52 1 115 0 55 3 186 0 57 12 85 0 58 1 119 0 60 8 217 0 62 1 123 0 65 1 127 0 66 8 221 0 68 12 89 0 70 8 249 0 72 25 253 0 76 1 131 0 77 1 135 0 87 3 186 0 88 8 249 0 89 1 139 0 95 8 249 0 99 1 143 0 100 8 249 0 105 12 117 0 108 8 249 0 109 8 249 0 111 8 249 0 112 8 249 0 113 12 93 0 114 1 147 0 117 8 249 0 118 1 151 0 121 8 249 0 124 1 155 0 125 3 186 0 126 1 159 0 134 1 163 0 135 8 249 0 138 1 167 0 139 8 249 0 142 1 171 0 143 8 249 0 144 1 175 0 158 1 145 0 193 1 185 0 195 1 145 0 196 12 101 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 12 101 0 211 12 101 0 214 1 197 0 215 12 105 1 140 12 109 2 13 12 113 2 26 12 117 2 97 8 249 2 102 3 41 2 104 3 245 2 124 8 249 2 125] 
#[1 5 118 0 8 5 118 0 41 5 118 0 46 5 118 0 49 5 118 0 52 5 118 0 55 5 118 0 60 5 118 0 65 5 118 0 66 5 118 0 71 2 199 0 72 5 118 0 77 5 118 0 85 5 118 0 87 5 118 0 89 5 118 0 95 5 118 0 99 5 118 0 100 5 118 0 105 5 118 0 109 5 118 0 111 5 118 0 112 5 118 0 113 5 118 0 117 5 118 0 118 5 118 0 121 1 183 0 124 5 118 0 125 5 118 0 134 5 118 0 135 5 118 0 138 5 118 0 139 5 118 0 142 5 118 0 143 5 118 0 144 5 118 0 158] 
#[0 26 5 0 9] 
#[1 25 57 0 99 25 69 0 158 1 145 0 193 25 81 0 195 1 145 0 196 25 81 0 213 25 85 1 208 26 9 1 217 25 101 1 218 26 13 1 219] 
#[1 25 57 0 99 25 69 0 158 1 145 0 193 25 81 0 195 1 145 0 196 25 81 0 213 26 17 1 208 26 21 1 218 26 25 1 219] 
#[0 26 29 0 158] 
#[0 15 34 0 25 0 32 0 149] 
#[0 15 38 0 25 0 32 0 149] 
#[0 26 33 0 25] 
#[1 15 193 0 128 18 93 0 158 1 145 0 193 15 205 0 195 1 145 0 196 15 205 0 213 15 217 1 236] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 26 37 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 26 37 0 211 26 37 0 214 1 197 0 215 15 229 2 13 3 41 2 104 3 245 2 124] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 26 41 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 26 41 0 211 26 41 0 214 1 197 0 215 3 41 2 104 3 245 2 124] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 26 45 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 26 45 0 211 26 45 0 214 1 197 0 215 26 45 1 235 3 41 2 104 3 245 2 124] 
#[1 26 49 0 158 26 53 2 57] 
#[1 5 49 0 8 5 53 0 49 1 173 0 52 1 173 0 55 1 173 0 60 1 173 0 65 0 201 0 66 1 173 0 77 1 173 0 87 1 173 0 95 5 85 0 100 1 173 0 117 1 173 0 121 5 97 0 125 1 173 0 134 1 173 0 135 1 173 0 139 1 85 0 143 5 113 0 158 1 145 0 193 1 185 0 195 1 145 0 196 26 61 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 26 61 0 211 26 61 0 214 1 197 0 215 3 41 2 104 26 61 2 116 3 245 2 124] 
#[0 16 49 0 124] 
#[0 15 42 0 25 0 32 0 146 0 149] 
#[1 26 65 0 15 15 46 0 25 15 46 0 32 15 46 0 146 15 46 0 149] 
#[0 15 50 0 25 0 32 0 146 0 149] 
#[0 15 54 0 15 0 25 0 32 0 146 0 149] 
#[0 15 58 0 15 0 25 0 32 0 146 0 149] 
#[0 15 62 0 25 0 32 0 146 0 149] 
#[0 15 66 0 80 0 83 0 92 0 93 0 103 0 119 0 146] 
#[0 15 70 0 156] 
#[1 15 193 0 128 18 93 0 158 1 145 0 193 15 205 0 195 1 145 0 196 15 205 0 213 18 97 1 236] 
#[0 26 69 0 158] 
#[1 26 49 0 158 26 73 2 57] 
#[1 9 202 0 8 11 85 0 26 26 77 1 205 26 77 1 206] 
#[0 15 74 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 15 78 0 158] 
#[1 26 81 0 158 26 85 2 117 26 89 2 118] 
#[1 25 57 0 99 25 69 0 158 1 145 0 193 25 81 0 195 1 145 0 196 25 81 0 213 26 17 1 208 26 21 1 218 26 93 1 219] 
#[0 26 97 0 25] 
#[0 15 82 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 26 101 0 8] 
#[0 26 105 0 37] 
#[1 26 109 0 25 26 81 0 158 26 113 2 118] 
#[0 15 86 0 25 0 158] 
#[0 15 90 0 25 0 32 0 146 0 149] 
#[0 15 94 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[1 0 10 0 8 6 214 0 9 0 49 0 37 0 10 0 49 0 10 0 52 0 10 0 55 0 10 0 60 0 10 0 65 0 10 0 66 0 10 0 77 0 10 0 86 0 10 0 87 0 10 0 95 0 10 0 100 0 10 0 104 0 10 0 107 0 10 0 114 0 10 0 117 0 10 0 121 0 10 0 125 0 10 0 128 0 10 0 134 0 10 0 135 0 10 0 139 0 10 0 143 0 10 0 158 26 117 1 239 15 17 1 240 15 21 1 241 15 25 1 242 15 29 1 248 15 33 2 75 0 93 2 76 0 97 2 77 0 101 2 78] 
#[1 0 105 0 1 0 109 0 5 3 69 0 8 0 117 0 10 0 121 0 12 0 125 0 13 0 129 0 16 0 133 0 17 3 73 0 46 0 145 0 47 0 149 0 48 0 153 0 49 0 161 0 52 0 165 0 55 3 77 0 56 0 181 0 60 0 185 0 61 0 189 0 62 0 197 0 65 0 201 0 66 3 29 0 73 0 213 0 77 3 81 0 80 0 233 0 87 0 241 0 95 0 245 0 97 0 249 0 99 0 253 0 100 1 9 0 117 1 13 0 121 1 17 0 122 1 21 0 123 1 29 0 125 1 37 0 128 3 85 0 129 3 29 0 130 1 53 0 133 1 57 0 134 1 61 0 135 3 89 0 136 1 73 0 139 1 81 0 141 1 85 0 143 1 101 0 153 3 93 0 158 1 109 0 159 1 113 0 160 1 117 0 161 1 121 0 162 0 18 0 163 1 125 0 166 0 22 0 167 1 129 0 170 1 133 0 171 1 137 0 193 1 185 0 195 1 145 0 196 3 237 0 198 1 153 0 199 1 153 0 200 1 185 0 201 1 185 0 202 1 185 0 206 1 173 0 207 1 173 0 208 1 173 0 209 1 185 0 210 3 237 0 211 3 237 0 214 1 197 0 215 1 201 0 239 1 205 0 240 1 205 0 241 1 213 0 242 1 217 0 243 1 221 0 248 1 225 0 249 1 205 0 251 1 205 0 253 1 205 0 254 1 205 1 2 1 205 1 7 1 249 1 8 1 253 1 9 2 1 1 10 1 205 1 11 1 205 1 12 1 205 1 14 1 205 1 15 1 205 1 16 1 205 1 17 1 205 1 18 1 201 1 30 1 205 1 31 1 205 1 32 1 205 1 37 1 205 1 43 1 205 1 44 1 205 1 45 1 205 1 46 1 205 1 47 3 117 1 52 1 205 1 53 1 205 1 58 3 117 1 59 3 117 1 60 3 117 1 61 3 117 1 62 3 141 1 63 3 145 1 64 3 149 1 65 3 153 1 66 3 157 1 67 3 161 1 68 3 165 1 69 3 169 1 70 3 173 1 71 3 177 1 72 3 181 1 73 3 181 1 74 26 121 1 75 26 121 1 76 26 121 1 77 1 205 1 78 3 201 1 79 3 205 1 81 3 209 1 87 3 213 1 89 26 121 1 92 3 221 1 93 26 121 1 112 26 121 1 115 26 121 1 116 26 121 1 117 3 237 1 151 3 241 1 152 1 205 2 93 3 29 2 94 3 41 2 104 3 117 2 107 1 205 2 108 3 117 2 109 1 205 2 110 3 245 2 124] 
#[0 15 98 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 57 0 58 0 60 0 62 0 65 0 66 0 68 0 70 0 72 0 76 0 77 0 87 0 88 0 89 0 95 0 99 0 100 0 105 0 108 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 126 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158] 
#[0 15 102 0 25 0 158] 
#[0 26 125 0 9] 
#[0 26 129 0 38] 
#[1 12 38 0 25 12 38 0 32 22 45 0 146 12 38 0 149 26 133 1 212 22 53 1 213 22 57 1 214] 
#[0 15 106 0 25 0 158] 
#[1 8 45 0 25 8 49 0 32 1 97 0 149 8 53 1 121 26 137 1 237] 
#[0 15 110 0 8 0 37 0 41 0 46 0 49 0 52 0 55 0 60 0 65 0 66 0 70 0 72 0 77 0 87 0 89 0 95 0 99 0 100 0 105 0 109 0 111 0 112 0 113 0 114 0 117 0 118 0 121 0 124 0 125 0 134 0 135 0 138 0 139 0 142 0 143 0 144 0 156 0 158]
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
	result := nodes at: 2.
	result returnType: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CSharpParser >> reduceActionForLocalFunctionHeader2: nodes [
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
